package ec.edu.ups.dao;

import java.util.List;

public interface GenericDAO<T, ID> {

    public boolean create(T entity);

    public T findById(ID id);

    public boolean update(T entity);

    public boolean delete(T entity);
    
    public boolean deleteById(ID id);

    public List<T> find();
    
    public List<T> find(String[] attributes, String[] values);
}
