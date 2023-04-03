package io.ntt.service;

import java.util.Optional;

import io.ntt.model.User;

public class UserService extends ICommonService<User> {
  
  public UserService() {
    super();
  }

  public Optional<User> getByEmail(String _email) {
    try {
      return Optional.ofNullable(super.getSession()
        .createQuery("FROM User WHERE User.email = :email ", User.class)
        .setParameter("enail", _email)
        .getSingleResult());
    } catch (Exception e) {
      return Optional.empty();
    }
  }

  public Optional<User> login(String _email, String _password) {
    try {
      return Optional.ofNullable(super.getSession()
        .createQuery("FROM User user WHERE user.email = :email AND user.password = :password", User.class)
        .setParameter("email", _email)
        .setParameter("password", _password)
        .getSingleResult());
    } catch (Exception e) {
      return Optional.empty();
    }
  }
  
  public Optional<User> Register(User _user) {
      if (this.getByEmail(_user.getEmail()).isPresent()) {
          return Optional.empty();
      }
      return super.add(_user);
  }
}
