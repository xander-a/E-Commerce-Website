package ph.pup.itech.metrothrift.dao;

import ph.pup.itech.metrothrift.model.formModel;

public class formDao {
    
 public formModel getformDetails(formModel form) {
        formModel formDetails;
        int productID = form.getproductID();
        String productName = form.getproductName();
        String productDescription = form.getproductDescription();
        String productSize = form.getproductSize();
        double productPrice = form.getproductPrice();
        int productQuantity = form.getproductQuantity();
        formDetails = new formModel(productID, productName, productDescription, productSize, productPrice, productQuantity);
        System.out.println("formDetails: " + formDetails);
        return formDetails;
    }
    
     public String getproductID(){
        return null;
    }
}

