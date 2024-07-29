package productcrudapp.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import productcrudapp.dao.ProductDao;
import productcrudapp.model.Product;

@Controller
public class Maincontroller {
	@Autowired	
	private ProductDao productDao;
	
	@RequestMapping("/")	
	public String home(Model m) {
		
List<Product> products=productDao.getProducts();
m.addAttribute("products",products);

return "ihome";
	}

	
	//add product form
@RequestMapping("/addproduct")
public String show(Model model) {
	model.addAttribute("title","Add Product");
	
	return "Addproduct";
	
}

//handle add product form
@RequestMapping(value="/submit_product",method=RequestMethod.POST)
public RedirectView  handleproduct(@ModelAttribute Product product,HttpServletRequest request) {
	
	System.out.println(product);
	
	productDao.createProduct(product);
	RedirectView redirectView=new RedirectView();
	redirectView.setUrl(request.getContextPath() + "/");
	return redirectView;
	
}

//the delete handler
@RequestMapping("/delete/{productId}")
public RedirectView deleteproduct(@PathVariable("productId")int productId, HttpServletRequest request) {
	this.productDao.deleteProduct(productId);
	RedirectView redirect=new RedirectView();
	redirect.setUrl(request.getContextPath()+"");
	return redirect;
	
}

@RequestMapping("/update/{productId}")
public String update(@PathVariable("productId") int pid,Model model) {// view return
	Product products= this.productDao.getproduct(pid);
	model.addAttribute("product",products);
	return "update_form";
	
}


}