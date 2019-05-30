package com.ssh2.entity;

/**
 * TSheetheadersId entity. @author MyEclipse Persistence Tools
 */

public class TSheetheadersId implements java.io.Serializable {

    // Fields

    private String sheettemplateid;
    private Integer seq;

    // Constructors

    /** default constructor */
    public TSheetheadersId() {
    }

    /** full constructor */
    public TSheetheadersId(String sheettemplateid, Integer seq) {
        this.sheettemplateid = sheettemplateid;
        this.seq = seq;
    }

    // Property accessors

    public String getSheettemplateid() {
        return this.sheettemplateid;
    }

    public void setSheettemplateid(String sheettemplateid) {
        this.sheettemplateid = sheettemplateid;
    }

    public Integer getSeq() {
        return this.seq;
    }

    public void setSeq(Integer seq) {
        this.seq = seq;
    }

    public boolean equals(Object other) {
        if ((this == other))
            return true;
        if ((other == null))
            return false;
        if (!(other instanceof TSheetheadersId))
            return false;
        TSheetheadersId castOther = (TSheetheadersId) other;

        return ((this.getSheettemplateid() == castOther.getSheettemplateid())
                || (this.getSheettemplateid() != null && castOther.getSheettemplateid() != null
                        && this.getSheettemplateid().equals(castOther.getSheettemplateid())))
                && ((this.getSeq() == castOther.getSeq()) || (this.getSeq() != null && castOther.getSeq() != null
                        && this.getSeq().equals(castOther.getSeq())));
    }

    public int hashCode() {
        int result = 17;

        result = 37 * result + (getSheettemplateid() == null ? 0 : this.getSheettemplateid().hashCode());
        result = 37 * result + (getSeq() == null ? 0 : this.getSeq().hashCode());
        return result;
    }

}