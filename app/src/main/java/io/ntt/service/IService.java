package io.ntt.service;

import java.util.Optional;
import java.util.function.Function;

import org.hibernate.Session;

public interface IService<T> {
  public Session getSession();
  public Iterable<T> getAll();
  public Optional<T> add(T _value);
  public Optional<T> set(T _value);
  public Optional<T> remove(T _value);
  public Optional<T> transaction(Function<T, Optional<T>> _func, T _arg);
}