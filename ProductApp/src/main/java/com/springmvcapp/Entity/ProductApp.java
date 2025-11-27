package com.springmvcapp.Entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
public class ProductApp {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int productId;
	@Column(nullable = false)
	private String productName;
	@Column(nullable = false)
	private String productDescription;
	@Column(nullable = false)
	private long productPrice;
}
