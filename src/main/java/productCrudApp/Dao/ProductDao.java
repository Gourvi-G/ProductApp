package productCrudApp.Dao;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import productCrudApp.model.Product;

@Component
public class ProductDao {
      
	@Autowired
	private HibernateTemplate hibernateTemplate;
	@Transactional
	public void createProduct(Product product) {
		this.hibernateTemplate.saveOrUpdate(product);
	}
	//get all product
	public List<Product> getProducts(){
		List<Product> products=this.hibernateTemplate.loadAll(Product.class);
		return products;
	}
	
	//delete the single product
	@Transactional
	public void delete(int pid) {
		Product id =this.hibernateTemplate.load(Product.class, pid);
		this.hibernateTemplate.delete(id);
	}
	
	//get the single product
	public Product getProduct(int pid) {
		return this.hibernateTemplate.get(Product.class, pid);
	}
	
}
