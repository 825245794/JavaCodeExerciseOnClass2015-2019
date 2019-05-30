package com.ssh2.entity;

/**
 * TDictionary entity. @author MyEclipse Persistence Tools
 */

public class TDictionary implements java.io.Serializable {

    // Fields

    private Integer id;
    private String category;
    private Integer sequence;
    private String key;
    private String value1;
    private String value2;
    private String comments;

    // Constructors

    /** default constructor */
    public TDictionary() {
    }

    /** minimal constructor */
    public TDictionary(Integer id, String category, Integer sequence, String key) {
        this.id = id;
        this.category = category;
        this.sequence = sequence;
        this.key = key;
    }

    /** full constructor */
    public TDictionary(Integer id, String category, Integer sequence, String key, String value1, String value2,
            String comments) {
        this.id = id;
        this.category = category;
        this.sequence = sequence;
        this.key = key;
        this.value1 = value1;
        this.value2 = value2;
        this.comments = comments;
    }

    // Property accessors

    public Integer getId() {
        return this.id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCategory() {
        return this.category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public Integer getSequence() {
        return this.sequence;
    }

    public void setSequence(Integer sequence) {
        this.sequence = sequence;
    }

    public String getKey() {
        return this.key;
    }

    public void setKey(String key) {
        this.key = key;
    }

    public String getValue1() {
        return this.value1;
    }

    public void setValue1(String value1) {
        this.value1 = value1;
    }

    public String getValue2() {
        return this.value2;
    }

    public void setValue2(String value2) {
        this.value2 = value2;
    }

    public String getComments() {
        return this.comments;
    }

    public void setComments(String comments) {
        this.comments = comments;
    }

}