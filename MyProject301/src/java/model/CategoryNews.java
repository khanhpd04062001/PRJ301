/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author hp
 */
public class CategoryNews {
    private int id;
    private String name;
    private String country;
    private String codeConcept;

    public CategoryNews() {
    }

    public CategoryNews(int id, String name, String country, String codeConcept) {
        this.id = id;
        this.name = name;
        this.country = country;
        this.codeConcept = codeConcept;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getCodeConcept() {
        return codeConcept;
    }

    public void setCodeConcept(String codeConcept) {
        this.codeConcept = codeConcept;
    }

    @Override
    public String toString() {
        return "CategoryNews{" + "id=" + id + ", name=" + name + ", country=" + 
                country + ", codeConcept=" + codeConcept + '}' + "\n";
    }
    
    
}
