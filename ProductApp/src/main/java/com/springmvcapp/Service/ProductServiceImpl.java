package com.springmvcapp.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springmvcapp.Dao.ProductDao;
import com.springmvcapp.Entity.ProductApp;

@Service
public class ProductServiceImpl implements ProductService {

	@Autowired
	private ProductDao productDao;
	
	@Override
	public ProductApp saveProduct(ProductApp product) {
		return productDao.createProduct(product);
		
	}

	@Override
	public ProductApp updateProduct(ProductApp product) {
		return productDao.updateProduct(product);
	}

	@Override
	public boolean removeProduct(int productId) {
		return productDao.deleteProduct(productId);
	}

	@Override
	public ProductApp findProductById(int productId) {
		return productDao.findProductById(productId);
	}

	@Override
	public List<ProductApp> findAllProduct() {
		return productDao.findAll();
	}

}
