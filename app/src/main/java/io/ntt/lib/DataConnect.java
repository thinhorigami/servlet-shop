package io.ntt.lib;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import io.ntt.model.Book;
import io.ntt.model.BookDetail;
import io.ntt.model.Catagory;
import io.ntt.model.User;

public class DataConnect {
  
  private SessionFactory session_fractory;

  public DataConnect() {
    System.out.println(this.getClass().getResource(""));
    Configuration config = new Configuration()
      .configure(this.getClass()
        .getClassLoader()
        .getResource("hibernate.cfg.xml"))
        .addAnnotatedClass(Book.class)
        .addAnnotatedClass(BookDetail.class)
        .addAnnotatedClass(Catagory.class)
        .addAnnotatedClass(User.class)
        ;
    this.session_fractory = config.buildSessionFactory();
  }

  public SessionFactory gitSessionFactory() {
    return this.session_fractory;
  }
}
