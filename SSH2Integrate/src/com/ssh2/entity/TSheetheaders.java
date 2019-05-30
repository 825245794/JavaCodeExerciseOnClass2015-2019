package com.ssh2.entity;

/**
 * TSheetheaders entity. @author MyEclipse Persistence Tools
 */

public class TSheetheaders implements java.io.Serializable {

    // Fields

    private TSheetheadersId id;
    private String sheettemplatename;
    private String comments;
    private String colname;

    // Constructors

    /** default constructor */
    public TSheetheaders() {
    }

    /** minimal constructor */
    public TSheetheaders(TSheetheadersId id, String colname) {
        this.id = id;
        this.colname = colname;
    }

    /** full constructor */
    public TSheetheaders(TSheetheadersId id, String sheettemplatename, String comments, String colname) {
        this.id = id;
        this.sheettemplatename = sheettemplatename;
        this.comments = comments;
        this.colname = colname;
    }

    // Property accessors

    public TSheetheadersId getId() {
        return this.id;
    }

    public void setId(TSheetheadersId id) {
        this.id = id;
    }

    public String getSheettemplatename() {
        return this.sheettemplatename;
    }

    public void setSheettemplatename(String sheettemplatename) {
        this.sheettemplatename = sheettemplatename;
    }

    public String getComments() {
        return this.comments;
    }

    public void setComments(String comments) {
        this.comments = comments;
    }

    public String getColname() {
        return this.colname;
    }

    public void setColname(String colname) {
        this.colname = colname;
    }

}