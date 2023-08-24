package ra.controller;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.PropertySource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import ra.model.entity.Catalog;
import ra.model.entity.CatalogFake;
import ra.model.entity.FakeProduct;
import ra.model.entity.Product;
import ra.model.service.catalog.CatalogServiceIMPL;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

@Controller
@RequestMapping("/catalogController")
@PropertySource({"classpath:application.properties"})
public class CatalogController {
    @Value("${upload-path}")
            private String uploadPath;
    CatalogServiceIMPL catalogServiceIMPL = new CatalogServiceIMPL();
    @GetMapping("getAll")
    public String getAll(Model model){
        List<Catalog> catalogList = catalogServiceIMPL.findAll();
        model.addAttribute("listCatalog",catalogList);
        return "catalog/catalog";
    }
    @GetMapping("/create")
    public ModelAndView create(){
        ModelAndView modelAndView = new ModelAndView("catalog/createCatalog");
        modelAndView.addObject("newCatalog",new Catalog());
        return modelAndView;
    }
    @GetMapping("/delete")
    public String delete(@RequestParam int id){
        catalogServiceIMPL.deleteById(id);
        return "redirect:getAll";
    }
    @GetMapping("/edit")
    public ModelAndView edit(@RequestParam int id){
        ModelAndView modelAndView = new ModelAndView("catalog/editCatalog");
        modelAndView.addObject("editCatalog",catalogServiceIMPL.findById(id));
        return modelAndView;
    }
    @PostMapping("/add")
    public String add(@ModelAttribute("newCatalog") CatalogFake catalogFake) throws IOException {

        String fileName = catalogFake.getImage().getOriginalFilename();
        File uploadDir = new File(uploadPath);
        if (!uploadDir.exists()) {
            uploadDir.mkdirs();
        }
        try {FileCopyUtils.copy(catalogFake.getImage().getBytes(),new File(uploadPath+fileName) );
        }catch (IOException e){

        }
        String img= String.valueOf(fileName);
        Catalog catalog = new Catalog( catalogFake.getCatalogName(), catalogFake.getDescription(), catalogFake.getCountry(), img);
        catalogServiceIMPL.save(catalog);
        return "redirect:/catalogController/getAll"; // Đảm bảo URL đúng để chuyển hướng
    }

    @PostMapping("/update")
    public String update(@ModelAttribute("updateCatalog") CatalogFake catalogFake, @RequestParam("image") MultipartFile image,Model model) throws IOException {
        String uploadPath = "C:\\Users\\nvtph\\OneDrive\\Máy tính\\project_modul4-master\\src\\main\\resources\\assets\\images";

        String fileName = image.getOriginalFilename();
        File file = new File(uploadPath);
        FileCopyUtils.copy(image.getBytes(),new File(uploadPath+File.separator + fileName));
        Catalog catalog = new Catalog(catalogFake.getCatalogId(), catalogFake.getCatalogName(),
                catalogFake.getDescription(),catalogFake.getCountry(),fileName);
        catalogServiceIMPL.update(catalog);
        return "redirect:getAll";
    }
}
