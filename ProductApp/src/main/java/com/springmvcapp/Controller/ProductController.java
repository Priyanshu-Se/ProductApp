package com.springmvcapp.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.springmvcapp.Entity.ProductApp;
import com.springmvcapp.Service.ProductService;

@Controller
public class ProductController {

	@Autowired
	private ProductService productService;
	
	@RequestMapping("/home")
	public String home(Model model) {
		model.addAttribute("title", "Home Page");
		List<ProductApp> products `= productService.findAllProduct();
		model.addAttribute("products", products);
		return "Home";
	}
	
	@RequestMapping("/add")
	public String addProduct(Model model) {
		model.addAttribute("title", "Add Product");
		return "AddProduct";
	}
	
	@RequestMapping(path="/add" ,method = RequestMethod.POST)
	public String saveProduct(Model model,@ModelAttribute("product") ProductApp product) {
		model.addAttribute("title","Success");		
		productService.saveProduct(product);
		System.out.println(product);		
		return "Success";
	}
	
	@RequestMapping("/delete/{productId}")
	public String delete(@PathVariable("productId") int productId) {
		productService.removeProduct(productId);
		return "Delete";
	}
	
	@RequestMapping("/update/{productId}")
	public String update(@PathVariable("productId") int productId, Model model) {
		model.addAttribute("title","Update");
		ProductApp id = productService.findProductById(productId);
		model.addAttribute("product", id);
		return "Update";
	}
	
	@PostMapping("/update")
	public String update(Model model,@ModelAttribute("product") ProductApp product) {
		ProductApp productById = productService.findProductById(product.getProductId());
		if(productById!=null)
		productService.updateProduct(product);
		return "Success";
	}
	
	
}
