package com.ssh2.entity;

/**
 * TForecastReferences entity. @author MyEclipse Persistence Tools
 */

public class TForecastReferences implements java.io.Serializable {

    // Fields

    private TForecastReferencesId id;
    private String examname;
    private String studentclass;
    private Integer number;
    private String comments;

    // Constructors

    /** default constructor */
    public TForecastReferences() {
    }

    /** minimal constructor */
    public TForecastReferences(TForecastReferencesId id, String examname, String studentclass, Integer number) {
        this.id = id;
        this.examname = examname;
        this.studentclass = studentclass;
        this.number = number;
    }

    /** full constructor */
    public TForecastReferences(TForecastReferencesId id, String examname, String studentclass, Integer number,
            String comments) {
        this.id = id;
        this.examname = examname;
        this.studentclass = studentclass;
        this.number = number;
        this.comments = comments;
    }

    // Property accessors

    public TForecastReferencesId getId() {
        return this.id;
    }

    public void setId(TForecastReferencesId id) {
        this.id = id;
    }

    public String getExamname() {
        return this.examname;
    }

    public void setExamname(String examname) {
        this.examname = examname;
    }

    public String getStudentclass() {
        return this.studentclass;
    }

    public void setStudentclass(String studentclass) {
        this.studentclass = studentclass;
    }

    public Integer getNumber() {
        return this.number;
    }

    public void setNumber(Integer number) {
        this.number = number;
    }

    public String getComments() {
        return this.comments;
    }

    public void setComments(String comments) {
        this.comments = comments;
    }

}