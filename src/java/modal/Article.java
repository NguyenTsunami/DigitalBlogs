/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modal;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 *
 * @author thuy
 */
public class Article {

    private int id;
    private String title;
    private String images;
    private String content;
    private String writer;
    private Timestamp datepub;

    public Article() {
    }

    public Article(int id, String title, String images, String content, String writer, Timestamp datepub) {
        this.id = id;
        this.title = title;
        this.images = images;
        this.content = content;
        this.writer = writer;
        this.datepub = datepub;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getImages() {
        return images;
    }

    public void setImages(String images) {
        this.images = images;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getWriter() {
        return writer;
    }

    public void setWriter(String writer) {
        this.writer = writer;
    }

    public String getDatepub() {
        Date date = new Date();
        date.setTime(this.datepub.getTime());
        String formatDate = new SimpleDateFormat("MMM dd yyyy - h:mm aa").format(date);
        return formatDate;
    }

    public void setDatepub(Timestamp datepub) {
        this.datepub = datepub;
    }

}
