package ra.controller;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.PropertySource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import ra.model.entity.*;
import ra.model.service.cartItem.CartItemServiceIMPL;
import ra.model.service.catalog.CatalogServiceIMPL;
import ra.model.service.product.ProductServiceIMPL;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

@Controller
@RequestMapping("/productController")
@PropertySource({"classpath:application.properties"})
public class ProductController {
    @Value("${upload-path}")
    private String uploadPath;
    ProductServiceIMPL productServiceIMPL = new ProductServiceIMPL();
    CatalogServiceIMPL catalogServiceIMPL = new CatalogServiceIMPL();
    CartItemServiceIMPL cartItemServiceIMPL = new CartItemServiceIMPL();
    @GetMapping("/getAll")
    public String getAll(Model model){
        List<Product> productList = productServiceIMPL.findAll();
        model.addAttribute("listProduct",productList);
        return "product/product";
    }
    @GetMapping("/create")
    public ModelAndView create(){
        ModelAndView modelAndView = new ModelAndView("product/createProduct");
        modelAndView.addObject("listCatalog",catalogServiceIMPL.findAll());
        return modelAndView;
    }
    @GetMapping("/delete")
    public String delete(@RequestParam int id){
        productServiceIMPL.deleteById(id);
        return "redirect:getAll";
    }
    @GetMapping("/edit")
    public ModelAndView edit(@RequestParam int id){
        ModelAndView modelAndView = new ModelAndView("product/editProduct");
        modelAndView.addObject("editProduct",productServiceIMPL.findById(id));
        modelAndView.addObject("listCatalog",catalogServiceIMPL.findAll());
        return modelAndView;
    }
    @PostMapping("/add")
    public String add(@ModelAttribute("newProduct") FakeProduct fakeProduct) throws IOException {
        String fileName = fakeProduct.getImage().getOriginalFilename();
        File uploadPro = new File(uploadPath);
        if (!uploadPro.exists()) {
            uploadPro.mkdirs();
        }
        try {FileCopyUtils.copy(fakeProduct.getImage().getBytes(),new File(uploadPath+fileName) );
        }catch (IOException e){
        }
        String imgPro= String.valueOf(fileName);
        Product product = new Product(fakeProduct.getProductId(), fakeProduct.getProductName(),fakeProduct.getPrice(), fakeProduct.getQuantity(), fakeProduct.getDescription(),imgPro,fakeProduct.getCatalogId(), fakeProduct.isStatus(), fakeProduct.getHeart());
        productServiceIMPL.save(product);
        return "redirect:/productController/getAll";
    }
    @PostMapping("/update")
    public String update(@ModelAttribute("editProduct") FakeProduct fakeProduct) throws IOException {
        String fileName = fakeProduct.getImage().getOriginalFilename();
        File fileUpdate = new File(uploadPath);
        if (!fileUpdate.exists()) {
            fileUpdate.mkdirs();
        }
        try {FileCopyUtils.copy(fakeProduct.getImage().getBytes(),new File(uploadPath+File.separator+fileName) );
        }catch (IOException ignored){
        }

        String imgUpdate = String.valueOf(fileName);
        Product product = new Product(fakeProduct.getProductId(), fakeProduct.getProductName(),
                    fakeProduct.getPrice(),fakeProduct.getQuantity(), fakeProduct.getDescription(),imgUpdate,fakeProduct.getCatalogId(),fakeProduct.getHeart());
        productServiceIMPL.update(product);
        return "redirect:getAll";
    }
@RequestMapping("searchByCatalogId")
    public String searchByCatalogId(@RequestParam("catalogId") int catalogId,Model model){
     List<Product> list =  productServiceIMPL.searchByCatalogId(catalogId);
     model.addAttribute("listProduct",list);
     return "home";
}
@RequestMapping("showListProduct")
public String showListProduct(@RequestParam("userId") int userId,Model model){
    List<CartItem> cartItemList = cartItemServiceIMPL.showAll(userId);
    int count = 0;
    for (int i = 0; i < cartItemList.size(); i++) {
        count ++;
    }
    List<Catalog> catalogList = catalogServiceIMPL.findAll();
    List<Product> productList = productServiceIMPL.findAll();

    model.addAttribute("count",count);
    model.addAttribute("listCatalog",catalogList);
    model.addAttribute("listProduct",productList);
    return "home";
}
@RequestMapping("setHeart")
    public String setHeart(@RequestParam("userId") int userId,@RequestParam("productId") int productId,Model model){
        productServiceIMPL.setHeart(productId);
        return "redirect:/homeController/getAll?userId=" + userId;
}
@RequestMapping("showDetail")
    public String showDetail(@RequestParam("productId") int productId,@RequestParam("userId") int userId,Model model){
      Product product =  productServiceIMPL.findById(productId);
    Catalog catalog = catalogServiceIMPL.findById(product.getCatalogId());
    model.addAttribute("product",product);
    model.addAttribute("catalog",catalog);
    model.addAttribute("userId",userId);
    return "product/detail";
}
}
