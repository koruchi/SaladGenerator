package com.example.demo.model;

public class Category {
    private String type;
    private String origin;

    public Category(String type, String origin) {
        this.type = type;
        this.origin = origin;
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
