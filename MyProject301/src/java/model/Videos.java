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
public class Videos {
    private int idVideo;
    private String name;
    private int postIdVideo;

    public Videos() {
    }

    public Videos(int idVideo, String name, int postIdVideo) {
        this.idVideo = idVideo;
        this.name = name;
        this.postIdVideo = postIdVideo;
    }

    public int getIdVideo() {
        return idVideo;
    }

    public void setIdVideo(int idVideo) {
        this.idVideo = idVideo;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getPostIdVideo() {
        return postIdVideo;
    }

    public void setPostIdVideo(int postIdVideo) {
        this.postIdVideo = postIdVideo;
    }
    
    
}
