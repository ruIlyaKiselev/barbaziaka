package com.example.demo.domain;

import javax.persistence.*;

@Entity
public class QuizGame {
    @Id
    @GeneratedValue(strategy= GenerationType.AUTO)
    private Integer id;

    private String title;
    private String description;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "user_id")
    private User author;

    private String filename;

    public QuizGame() {
    }

    public QuizGame(String description, String title, User user) {
        this.author = user;
        this.description = description;
        this.title = title;
    }

    public String getAuthorName() {
        return author != null ? author.getUsername() : "<none>";
    }

    public User getAuthor() {
        return author;
    }

    public void setAuthor(User author) {
        this.author = author;
    }

    public void setDescription(String text) {
        this.description = text;
    }

    public String getDescription() {
        return description;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String tag) {
        this.title = tag;
    }

    public String getFilename() {
        return filename;
    }

    public void setFilename(String filename) {
        this.filename = filename;
    }


}