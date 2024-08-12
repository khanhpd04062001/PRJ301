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
public class Authur {
    private int idAuthur;
    private String authurName;

    public Authur() {
    }

    public Authur(int idAuthur, String authurName) {
        this.idAuthur = idAuthur;
        this.authurName = authurName;
    }

    public int getIdAuthur() {
        return idAuthur;
    }

    public void setIdAuthur(int idAuthur) {
        this.idAuthur = idAuthur;
    }

    public String getAuthurName() {
        return authurName;
    }

    public void setAuthurName(String authurName) {
        this.authurName = authurName;
    }

    @Override
    public String toString() {
        return "Authur{" + "idAuthur=" + idAuthur + ", authurName=" + authurName + '}' +"\n";
    }
    
    
}
