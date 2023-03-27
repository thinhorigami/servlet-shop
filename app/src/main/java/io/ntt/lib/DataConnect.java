package io.ntt.lib;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class DataConnect {
  
  private SessionFactory session_fractory;

  public DataConnect() {
    System.out.println(this.getClass().getResource(""));
    Configuration config = new Configuration()
      .configure(this.getClass()
        .getClassLoader()
        .getResource("hibernate.cfg.xml"));
    this.session_fractory = config.buildSessionFactory();
  }

  public SessionFactory gitSessionFactory() {
    return this.session_fractory;
  }
}
