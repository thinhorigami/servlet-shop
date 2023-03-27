package io.ntt.model;

import java.util.Collection;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;

@Entity()
@Table(name = "_Book")
public class Book {

  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private Long id;

  @Column(name = "_id_book", unique = true, nullable = false)
  private String isBook;

  @Column(name = "_name", nullable = false)
  private String name;

  @OneToMany(cascade = CascadeType.ALL, mappedBy = "book")
  private Collection<BookDetail> bookDetail;

  public Book() {
  }

  public Book(Long id, String isBook, String name) {
    this.id = id;
    this.isBook = isBook;
    this.name = name;
  }

  public Long getId() {
    return id;
  }

  public void setId(Long id) {
    this.id = id;
  }

  public String getIsBook() {
    return isBook;
  }

  public void setIsBook(String isBook) {
    this.isBook = isBook;
  }

  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

}
