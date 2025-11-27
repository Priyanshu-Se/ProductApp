package com.springmvcapp.Dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.springmvcapp.Entity.ProductApp;

import jakarta.transaction.Transactional;

@Repository
public class ProductDaoImpl implements ProductDao {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	@Transactional
	public ProductApp createProduct(ProductApp product) {
		sessionFactory.getCurrentSession().persist(product);
		System.out.println("The product saved successfully: "+product);
		return product;
	}

	@Override
	@Transactional
	public ProductApp updateProduct(ProductApp product) {
		ProductApp merge = sessionFactory.getCurrentSession().merge(product);
		System.out.println("The product updated successfully: "+merge);
		return merge;
	}

	@Override
	@Transactional
	public boolean deleteProduct(int productId) {
		ProductApp id = sessionFactory.getCurrentSession().get(ProductApp.class, productId);
		if(id!=null) {
		sessionFactory.getCurrentSession().remove(id);
		System.out.println("The product deleted successfully: "+id);
		return true;
		}
	return false;
	}

	@Override
	@Transactional
	public ProductApp findProductById(int productId) {
		ProductApp productApp = sessionFactory.getCurrentSession().get(ProductApp.class, productId);
		System.out.println("The product with id: "+productApp);
		return productApp;
	}

	@Override
	@Transactional
	public List<ProductApp> findAll() {
		String query="from ProductApp";
		List<ProductApp> list = sessionFactory.getCurrentSession().createQuery(query,ProductApp.class).getResultList();
		System.out.println("The products are: "+list);
		return list;
	}
	
	
}
