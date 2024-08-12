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
public class Post {
    private int idPost;
    private String title;
    private String datePost;
    private String concept;
    private String description;
    private String urlImg;
    private int idAuthur;
    private int idConcept;

    public Post() {
    }

    public Post(int idPost, String title, String datePost, String concept, String description, String urlImg, int idAuthur, int idConcept) {
        this.idPost = idPost;
        this.title = title;
        this.datePost = datePost;
        this.concept = concept;
        this.description = description;
        this.urlImg = urlImg;
        this.idAuthur = idAuthur;
        this.idConcept = idConcept;
    }

    public int getIdPost() {
        return idPost;
    }

    public void setIdPost(int idPost) {
        this.idPost = idPost;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDatePost() {
        return datePost;
    }

    public void setDatePost(String datePost) {
        this.datePost = datePost;
    }

    public String getConcept() {
        return concept;
    }

    public void setConcept(String concept) {
        this.concept = concept;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getUrlImg() {
        return urlImg;
    }

    public void setUrlImg(String urlImg) {
        this.urlImg = urlImg;
    }

    public int getIdAuthur() {
        return idAuthur;
    }

    public void setIdAuthur(int idAuthur) {
        this.idAuthur = idAuthur;
    }

    public int getIdConcept() {
        return idConcept;
    }

    public void setIdConcept(int idConcept) {
        this.idConcept = idConcept;
    }

    @Override
    public String toString() {
        return "Post{" + "idPost=" + idPost + ", title=" + title + ", datePost=" + 
                datePost + ", concept=" + concept + ", description=" + description 
                + ", urlImg=" + urlImg + ", idAuthur=" + idAuthur + ", idConcept=" + idConcept + '}' +"\n";
    }
    
    
}
