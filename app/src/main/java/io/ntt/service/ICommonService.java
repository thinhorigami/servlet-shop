package io.ntt.service;

import java.util.Optional;
import java.util.function.Function;

import org.hibernate.Session;

import io.ntt.lib.DataConnect;
import io.ntt.model.User;

public class ICommonService<T> implements IService<T> {
  private DataConnect data_conn;
  private Session session;

  public ICommonService() {
    this.data_conn = new DataConnect();
    this.session = this.data_conn.gitSessionFactory().openSession();  
  }

  @Override
  public Optional<T> add(T _value) {
    
    var tran = this.session.beginTransaction();
    try {
      this.session.persist(_value);
      tran.commit();
      return Optional.of(_value);
    } catch (Exception e) {
      tran.rollback();
      return Optional.empty();
    }
  }

  @Override
  public Iterable<T> getAll() {
    var iter = (Iterable<T>)this.session
      .createQuery("FROM User", User.class)
      .getResultList();
    return iter;
  }

  @Override
  public Optional<T> remove(T _value) {
    this.session.remove(_value);
    return Optional.ofNullable(_value);    
  }

  @Override
  public Optional<T> set(T _value) {
    this.session.merge(_value);
    return Optional.ofNullable(_value);
  }

  @Override
  public Optional<T> transaction(Function<T, Optional<T>> _func, T _arg) {
    return _func.apply(_arg);
  }

  @Override
  public Session getSession() {
    return this.session;
  }
}
