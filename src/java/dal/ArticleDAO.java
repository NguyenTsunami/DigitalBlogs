/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import modal.Article;

/**
 *
 * @author thuy
 */
public class ArticleDAO extends BaseDAO {

    public ArrayList<Article> getList() {
        ArrayList<Article> list = new ArrayList<>();

        String sql = "select id, title, images, content, writer, datepub"
                + " from [Article]";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Article c = new Article(rs.getInt("id"),
                        rs.getString("title"),
                        rs.getString("images"),
                        rs.getString("content"),
                        rs.getString("writer"),
                        rs.getTimestamp("datepub"));
                list.add(c);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ArticleDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public ArrayList<Article> getTop5RecentNews() {
        ArrayList<Article> list = new ArrayList<>();

        String sql = "select top 5 id, title, images, content, writer, datepub"
                + " from [Article]"
                + " order by datepub desc";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Article c = new Article(rs.getInt("id"),
                        rs.getString("title"),
                        rs.getString("images"),
                        rs.getString("content"),
                        rs.getString("writer"),
                        rs.getTimestamp("datepub"));
                list.add(c);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ArticleDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public Article getNewsByID(int id) {
        Article news = new Article();

        String sql = "select id, title, images, content, writer, datepub"
                + " from [Article]"
                + " where id = ?";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, id);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                news = new Article(rs.getInt("id"),
                        rs.getString("title"),
                        rs.getString("images"),
                        rs.getString("content"),
                        rs.getString("writer"),
                        rs.getTimestamp("datepub"));

            }
        } catch (SQLException ex) {
            Logger.getLogger(ArticleDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return news;
    }

    public ArrayList<Article> getNewsByTitle(String keyword, int begin, int end) {
        ArrayList<Article> list = new ArrayList<>();

        String sql = "select id, title, images, content, writer, datepub from "
                + " ("
                + "     select *, ROW_NUMBER() over (order by datepub) as rownum"
                + "     from Article"
                + "     where title like ? "
                + " ) as [DataFound]"
                + " where rownum between ? and ?";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, "%" + keyword + "%");
            statement.setInt(2, begin);
            statement.setInt(3, end);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Article c = new Article(rs.getInt("id"),
                        rs.getString("title"),
                        rs.getString("images"),
                        rs.getString("content"),
                        rs.getString("writer"),
                        rs.getTimestamp("datepub"));
                list.add(c);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ArticleDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public int getAmountNewsByTitle(String keyword) {
        int amount = 0;

        String sql = "select *"
                + "     from Article"
                + "     where title like ? ";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, "%" + keyword + "%");
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                amount++;
            }
        } catch (SQLException ex) {
            Logger.getLogger(ArticleDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return amount;
    }
}
