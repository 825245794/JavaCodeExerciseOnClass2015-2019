package com.ssh2.entity;

/**
 * TForecastReferencesId entity. @author MyEclipse Persistence Tools
 */

public class TForecastReferencesId implements java.io.Serializable {

    // Fields

    private String year;
    private Integer month;
    private String school;
    private String level;

    // Constructors

    /** default constructor */
    public TForecastReferencesId() {
    }

    /** full constructor */
    public TForecastReferencesId(String year, Integer month, String school, String level) {
        this.year = year;
        this.month = month;
        this.school = school;
        this.level = level;
    }

    // Property accessors

    public String getYear() {
        return this.year;
    }

    public void setYear(String year) {
        this.year = year;
    }

    public Integer getMonth() {
        return this.month;
    }

    public void setMonth(Integer month) {
        this.month = month;
    }

    public String getSchool() {
        return this.school;
    }

    public void setSchool(String school) {
        this.school = school;
    }

    public String getLevel() {
        return this.level;
    }

    public void setLevel(String level) {
        this.level = level;
    }

    public boolean equals(Object other) {
        if ((this == other))
            return true;
        if ((other == null))
            return false;
        if (!(other instanceof TForecastReferencesId))
            return false;
        TForecastReferencesId castOther = (TForecastReferencesId) other;

        return ((this.getYear() == castOther.getYear()) || (this.getYear() != null && castOther.getYear() != null
                && this.getYear().equals(castOther.getYear())))
                && ((this.getMonth() == castOther.getMonth()) || (this.getMonth() != null
                        && castOther.getMonth() != null && this.getMonth().equals(castOther.getMonth())))
                && ((this.getSchool() == castOther.getSchool()) || (this.getSchool() != null
                        && castOther.getSchool() != null && this.getSchool().equals(castOther.getSchool())))
                && ((this.getLevel() == castOther.getLevel()) || (this.getLevel() != null
                        && castOther.getLevel() != null && this.getLevel().equals(castOther.getLevel())));
    }

    public int hashCode() {
        int result = 17;

        result = 37 * result + (getYear() == null ? 0 : this.getYear().hashCode());
        result = 37 * result + (getMonth() == null ? 0 : this.getMonth().hashCode());
        result = 37 * result + (getSchool() == null ? 0 : this.getSchool().hashCode());
        result = 37 * result + (getLevel() == null ? 0 : this.getLevel().hashCode());
        return result;
    }

}