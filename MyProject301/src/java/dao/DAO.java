/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import context.BDContext;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import model.Authur;
import model.CategoryNews;
import model.Images;
import model.Post;
import model.Videos;

/**
 *
 * @author hp
 */
public class DAO {

    Connection con = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    public String status;
    
    public ArrayList<Authur> loadAuthur() {
        ArrayList<Authur> authurList = new ArrayList<>();
        String sql = "select * from Authur_HE153664_SE1606";
        try {
            con = new BDContext().getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            
            while (rs.next()) {                
               authurList.add(new Authur(rs.getInt(1), rs.getString(2)));
            }
        } catch (Exception e) {
            status = "Loi khi load authur " + e.getMessage();
        }
        return authurList;
    }
    
    public ArrayList<CategoryNews> loadCategoryNews() {
        ArrayList<CategoryNews> categoryList = new ArrayList<>();
        String sql = "select * from CategoryNews_HE153664_SE1606";
        try {
            con = new BDContext().getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            
            while (rs.next()) {                
               categoryList.add(new CategoryNews(rs.getInt(1), rs.getString(2), 
                       rs.getString(3), rs.getString(4)));
            }
        } catch (Exception e) {
            status = "Loi khi load category news " + e.getMessage();
        }
        return categoryList;
    }
    
    public ArrayList<Images> loadImage() {
        ArrayList<Images> imageList = new ArrayList<>();
        String sql = "select * from Images_HE153664_SE1606";
        try {
            con = new BDContext().getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            
            while (rs.next()) {                
               imageList.add(new Images(rs.getInt(1), rs.getString(2), rs.getInt(3)));
            }
        } catch (Exception e) {
            
        }
        return imageList;
    }
    
    public ArrayList<Videos> loadVideo() {
        ArrayList<Videos> videoList = new ArrayList<>();
        String sql = "select * from Videos_HE153664_SE1606";
        try {
            con = new BDContext().getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            
            while (rs.next()) {                
               videoList.add(new Videos(rs.getInt(1), rs.getString(2), rs.getInt(3)));
            }
        } catch (Exception e) {
            status = "Loi khi load video " + e.getMessage();
        }
        return videoList;
    }
    
    public ArrayList<Post> loadPost() {
        ArrayList<Post> postList = new ArrayList<>();
        String sql = "select * from Post_HE153664_SE1606";
        try {
            con = new BDContext().getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            
            while (rs.next()) {                
               postList.add(new Post(rs.getInt(1), rs.getString(2), rs.getString(3),
                       rs.getString(4), rs.getString(5), rs.getString(6), rs.getInt(7), 
                       rs.getInt(8)));
            }
        } catch (Exception e) {
            status = "Loi khi load post " + e.getMessage();
        }
        return postList;
    }
    
    public void loadAuthurForPost() {
       
        String sql = "select p.idPost, p.title, p.datePost, p.concept, p.description, "
                + "p.urlImg from Post_HE153664_SE1606 p "
                + "inner join Authur_HE153664_SE1606 a "
                + "on a.idAuthur= p.idAuthur";
        try {
            con = new BDContext().getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            
            while (rs.next()) {                
               rs.getInt(1);
               rs.getString(2);
               rs.getString(3);
               rs.getString(4);
               rs.getString(5);
               rs.getString(6);
            }
        } catch (Exception e) {
            status = "Loi khi load video " + e.getMessage();
        }
    }
    
    public Post getPostById(int id) {
        String sql = "select * from Post_HE153664_SE1606 where idPost = ?";
        try {
            con = new BDContext().getConnection();
            ps = con.prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();
             while (rs.next()) {                
                return new Post(rs.getInt(1), rs.getString(2), rs.getString(3),
                       rs.getString(4), rs.getString(5), rs.getString(6), rs.getInt(7), 
                       rs.getInt(8));
            }
        } catch (Exception e) {
            status = "Loi khi load video " + e.getMessage();
        }
        return null;
    }
    
    public ArrayList<Post> loadPostCN() {
        ArrayList<Post> postList = new ArrayList<>();
        String sql = "select top 3 * from Post_HE153664_SE1606 " 
                + "where idConcept = 7 or idConcept = 8";
        try {
            con = new BDContext().getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            
            while (rs.next()) {                
               postList.add(new Post(rs.getInt(1), rs.getString(2), rs.getString(3),
                       rs.getString(4), rs.getString(5), rs.getString(6), rs.getInt(7), 
                       rs.getInt(8)));
            }
        } catch (Exception e) {
            status = "Loi khi load post " + e.getMessage();
        }
        return postList;
    }
    
    public ArrayList<Post> loadPostCN1() {
        ArrayList<Post> postList = new ArrayList<>();
        String sql = "select * from Post_HE153664_SE1606 " 
                + "where idConcept = 7 or idConcept = 8";
        try {
            con = new BDContext().getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            
            while (rs.next()) {                
               postList.add(new Post(rs.getInt(1), rs.getString(2), rs.getString(3),
                       rs.getString(4), rs.getString(5), rs.getString(6), rs.getInt(7), 
                       rs.getInt(8)));
            }
        } catch (Exception e) {
            status = "Loi khi load post " + e.getMessage();
        }
        return postList;
    }
    
    public ArrayList<Post> loadPostBĐVN() {
        ArrayList<Post> postList = new ArrayList<>();
        String sql = "select top 3 * from Post_HE153664_SE1606 where idConcept between 3 and 7";
        try {
            con = new BDContext().getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            
            while (rs.next()) {                
               postList.add(new Post(rs.getInt(1), rs.getString(2), rs.getString(3),
                       rs.getString(4), rs.getString(5), rs.getString(6), rs.getInt(7), 
                       rs.getInt(8)));
            }
        } catch (Exception e) {
            status = "Loi khi load post " + e.getMessage();
        }
        return postList;
    }
    
    public ArrayList<Post> loadPostBĐVN1() {
        ArrayList<Post> postList = new ArrayList<>();
        String sql = "select * from Post_HE153664_SE1606 where idConcept between 3 and 7";
        try {
            con = new BDContext().getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            
            while (rs.next()) {                
               postList.add(new Post(rs.getInt(1), rs.getString(2), rs.getString(3),
                       rs.getString(4), rs.getString(5), rs.getString(6), rs.getInt(7), 
                       rs.getInt(8)));
            }
        } catch (Exception e) {
            status = "Loi khi load post " + e.getMessage();
        }
        return postList;
    }
    
    public ArrayList<Post> loadPostPreLeg() {
        ArrayList<Post> postList = new ArrayList<>();
            String sql = "select top 3 * from Post_HE153664_SE1606 where idConcept=9";
        try {
            con = new BDContext().getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            
            while (rs.next()) {                
               postList.add(new Post(rs.getInt(1), rs.getString(2), rs.getString(3),
                       rs.getString(4), rs.getString(5), rs.getString(6), rs.getInt(7), 
                       rs.getInt(8)));
            }
        } catch (Exception e) {
            status = "Loi khi load post " + e.getMessage();
        }
        return postList;
    }
    
    public ArrayList<Post> loadPostPreLeg1() {
        ArrayList<Post> postList = new ArrayList<>();
            String sql = "select * from Post_HE153664_SE1606 where idConcept=9";
        try {
            con = new BDContext().getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            
            while (rs.next()) {                
               postList.add(new Post(rs.getInt(1), rs.getString(2), rs.getString(3),
                       rs.getString(4), rs.getString(5), rs.getString(6), rs.getInt(7), 
                       rs.getInt(8)));
            }
        } catch (Exception e) {
            status = "Loi khi load post " + e.getMessage();
        }
        return postList;
    }
    
    public ArrayList<Post> loadPostLaLiga() {
        ArrayList<Post> postList = new ArrayList<>();
            String sql = "select top 3 * from Post_HE153664_SE1606 where idConcept=10";
        try {
            con = new BDContext().getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            
            while (rs.next()) {                
               postList.add(new Post(rs.getInt(1), rs.getString(2), rs.getString(3),
                       rs.getString(4), rs.getString(5), rs.getString(6), rs.getInt(7), 
                       rs.getInt(8)));
            }
        } catch (Exception e) {
            status = "Loi khi load post " + e.getMessage();
        }
        return postList;
    }
    
    public ArrayList<Post> loadPostLaLiga1() {
        ArrayList<Post> postList = new ArrayList<>();
            String sql = "select * from Post_HE153664_SE1606 where idConcept=10";
        try {
            con = new BDContext().getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            
            while (rs.next()) {                
               postList.add(new Post(rs.getInt(1), rs.getString(2), rs.getString(3),
                       rs.getString(4), rs.getString(5), rs.getString(6), rs.getInt(7), 
                       rs.getInt(8)));
            }
        } catch (Exception e) {
            status = "Loi khi load post " + e.getMessage();
        }
        return postList;
    }
    
    public ArrayList<Post> loadPostSerieA() {
        ArrayList<Post> postList = new ArrayList<>();
            String sql = "select top 3 * from Post_HE153664_SE1606 where idConcept=11";
        try {
            con = new BDContext().getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            
            while (rs.next()) {                
               postList.add(new Post(rs.getInt(1), rs.getString(2), rs.getString(3),
                       rs.getString(4), rs.getString(5), rs.getString(6), rs.getInt(7), 
                       rs.getInt(8)));
            }
        } catch (Exception e) {
            status = "Loi khi load post " + e.getMessage();
        }
        return postList;
    }
    
    public ArrayList<Post> loadPostSerieA1() {
        ArrayList<Post> postList = new ArrayList<>();
            String sql = "select * from Post_HE153664_SE1606 where idConcept=11";
        try {
            con = new BDContext().getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            
            while (rs.next()) {                
               postList.add(new Post(rs.getInt(1), rs.getString(2), rs.getString(3),
                       rs.getString(4), rs.getString(5), rs.getString(6), rs.getInt(7), 
                       rs.getInt(8)));
            }
        } catch (Exception e) {
            status = "Loi khi load post " + e.getMessage();
        }
        return postList;
    }
    
    public ArrayList<Post> loadPostLig1() {
        ArrayList<Post> postList = new ArrayList<>();
            String sql = "select top 3 * from Post_HE153664_SE1606 where idConcept=12";
        try {
            con = new BDContext().getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            
            while (rs.next()) {                
               postList.add(new Post(rs.getInt(1), rs.getString(2), rs.getString(3),
                       rs.getString(4), rs.getString(5), rs.getString(6), rs.getInt(7), 
                       rs.getInt(8)));
            }
        } catch (Exception e) {
            status = "Loi khi load post " + e.getMessage();
        }
        return postList;
    }
    
    public ArrayList<Post> loadPostLig11() {
        ArrayList<Post> postList = new ArrayList<>();
            String sql = "select * from Post_HE153664_SE1606 where idConcept=12";
        try {
            con = new BDContext().getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            
            while (rs.next()) {                
               postList.add(new Post(rs.getInt(1), rs.getString(2), rs.getString(3),
                       rs.getString(4), rs.getString(5), rs.getString(6), rs.getInt(7), 
                       rs.getInt(8)));
            }
        } catch (Exception e) {
            status = "Loi khi load post " + e.getMessage();
        }
        return postList;
    }
    
    public ArrayList<Post> loadPostBun() {
        ArrayList<Post> postList = new ArrayList<>();
            String sql = "select top 3 * from Post_HE153664_SE1606 where idConcept=13";
        try {
            con = new BDContext().getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            
            while (rs.next()) {                
               postList.add(new Post(rs.getInt(1), rs.getString(2), rs.getString(3),
                       rs.getString(4), rs.getString(5), rs.getString(6), rs.getInt(7), 
                       rs.getInt(8)));
            }
        } catch (Exception e) {
            status = "Loi khi load post " + e.getMessage();
        }
        return postList;
    }
    
    public ArrayList<Post> loadPostBun1() {
        ArrayList<Post> postList = new ArrayList<>();
            String sql = "select * from Post_HE153664_SE1606 where idConcept=13";
        try {
            con = new BDContext().getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            
            while (rs.next()) {                
               postList.add(new Post(rs.getInt(1), rs.getString(2), rs.getString(3),
                       rs.getString(4), rs.getString(5), rs.getString(6), rs.getInt(7), 
                       rs.getInt(8)));
            }
        } catch (Exception e) {
            status = "Loi khi load post " + e.getMessage();
        }
        return postList;
    }
    
    public ArrayList<Images> loadImage1() {
        ArrayList<Images> imageList = new ArrayList<>();
        String sql = "select * from Images_HE153664_SE1606 where idImg = 175";
        try {
            con = new BDContext().getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            
            while (rs.next()) {                
               imageList.add(new Images(rs.getInt(1), rs.getString(2), rs.getInt(3)));
            }
        } catch (Exception e) {
            
        }
        return imageList;
    }
    
    
    public static void main(String[] args) {
        DAO d = new DAO();
        
        //d.loadAuthurForPost();
        System.out.println(d.loadPostCN1());
    }

}
