package org.example.productmanagement.service;

import org.example.productmanagement.model.Product;

import java.util.*;

public class ProductServiceImpl implements ProductService {
    private static Map<Integer, Product> products;
    static {
        products = new HashMap<>();
        products.put(1, new Product(1, "M16", 2000, "No", "US"));
        products.put(2, new Product(2, "Car15", 2000, "No", "US"));
        products.put(3, new Product(3, "M4A1", 2000, "No", "US"));
        products.put(4, new Product(4, "M4A4", 2000, "No", "US"));
        products.put(5, new Product(5, "M60", 2000, "No", "US"));
    }
    @Override
    public List<Product> findAll() {
        return new ArrayList<>(products.values());
    }

    @Override
    public void save(Product product) {
        products.put(product.getId(), product);
    }

    @Override
    public Product findById(int id) {
        return products.get(id);
    }

    @Override
    public void update(int id, Product product) {
       products.put(id, product);
    }

    @Override
    public void delete(int id) {
        products.remove(id);
    }
}
