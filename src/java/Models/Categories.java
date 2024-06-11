package Models;

public class Categories {
    private int caID;
    private String categoriesName;
    private String image;

    public Categories() {
        
    }

    public Categories(int caID, String categoriesName, String image) {
        this.caID = caID;
        this.categoriesName = categoriesName;
        this.image = image;
    }

    public Categories(int aInt) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    public int getCaID() {
        return caID;
    }

    public void setCaID(int caID) {
        this.caID = caID;
    }

    public String getCategoriesName() {
        return categoriesName;
    }

    public void setCategoriesName(String categoriesName) {
        this.categoriesName = categoriesName;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    @Override
    public String toString() {
        return "Categories{" + "caID=" + caID + ", categoriesName=" + categoriesName + ", image=" + image + '}';
    }
}
