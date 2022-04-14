package com.example.demo.model;

import java.util.Objects;
import javax.persistence.*;

@Entity
@Table(name = "CATEGORIES")
public class Category {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)//.IDENTITY, SEQUENCE, TABLE?
    private Long id;
    private String type;
    private String origin;

    public Category(){

    }

    public Category(String type, String origin) {
        this.type = type;
        this.origin = origin;
        this.id = id;
    }
    public Long getId() {
        return id;
    }
    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getOrigin() {
        return origin;
    }

    public void setOrigin(String origin) {
        this.origin = origin;
    }
}
