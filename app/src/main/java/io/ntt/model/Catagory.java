package io.ntt.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "_Catagory")
public class Catagory {
  
  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private Long id;
  
  @Column(name = "_name", nullable = false)
  private String anem;
  
  @Column(name = "_id_catagory", nullable = false)
  private String idCatagory;
  
  public Catagory(Long id, String anem, String idCatagory) {
    this.id = id;
    this.anem = anem;
    this.idCatagory = idCatagory;
  }

  public Long getId() {
    return id;
  }

  public void setId(Long id) {
    this.id = id;
  }

  public String getAnem() {
    return anem;
  }

  public void setAnem(String anem) {
    this.anem = anem;
  }

  public String getIdCatagory() {
    return idCatagory;
  }

  public void setIdCatagory(String idCatagory) {
    this.idCatagory = idCatagory;
  }
}
