package ra.model.entity;

public class Product {
    private int productId;
    private String productName;
    private float price;
    private int quantity;
    private String description;
    private String image;
    private int catalogId;
    private boolean status;
    private int heart;

    public Product(int productId, String productName, float price, int quantity, String description, String imgUpdate, int catalogId, int heart) {
        this.productId = productId;
        this.productName = productName;
        this.price = price;
        this.quantity = quantity;
        this.description = description;
        this.image = imgUpdate;
        this.catalogId = catalogId;
        this.heart = heart;
    }

    public Product() {
    }

    public Product(int productId, String productName, float price, int quantity, String description, String image, int catalogId, boolean status, int heart) {
        this.productId = productId;
        this.productName = productName;
        this.price = price;
        this.quantity = quantity;
        this.description = description;
        this.image = image;
        this.catalogId = catalogId;
        this.status = status;
        this.heart = heart;
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public int getCatalogId() {
        return catalogId;
    }

    public void setCatalogId(int catalogId) {
        this.catalogId = catalogId;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    public int getHeart() {
        return heart;
    }

    public void setHeart(int heart) {
        this.heart = heart;
    }
}
