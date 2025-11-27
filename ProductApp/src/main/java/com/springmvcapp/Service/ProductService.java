package com.springmvcapp.Service;

import java.util.List;

import com.springmvcapp.Entity.ProductApp;

public interface ProductService {

	public ProductApp saveProduct(ProductApp product);
	public ProductApp updateProduct(ProductApp product);
	public boolean removeProduct(int productId);
	public ProductApp findProductById(int productId);
	public List<ProductApp> findAllProduct();
}
