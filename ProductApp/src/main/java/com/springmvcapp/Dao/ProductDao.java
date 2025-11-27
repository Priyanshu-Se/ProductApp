package com.springmvcapp.Dao;

import java.util.List;

import com.springmvcapp.Entity.ProductApp;

public interface ProductDao {

	public ProductApp createProduct(ProductApp product);
	public ProductApp updateProduct(ProductApp product);
	public boolean deleteProduct(int productId);
	public ProductApp findProductById(int productId);
	public List<ProductApp> findAll();
	
}
