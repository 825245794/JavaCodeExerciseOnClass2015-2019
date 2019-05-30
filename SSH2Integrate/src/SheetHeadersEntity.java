// default package



/**
 * SheetHeadersEntity entity. @author MyEclipse Persistence Tools
 */

public class SheetHeadersEntity  implements java.io.Serializable {


    // Fields    

     private SheetHeadersEntityId id;
     private String sheettemplatename;
     private String comments;
     private String colname;


    // Constructors

    /** default constructor */
    public SheetHeadersEntity() {
    }

	/** minimal constructor */
    public SheetHeadersEntity(SheetHeadersEntityId id, String colname) {
        this.id = id;
        this.colname = colname;
    }
    
    /** full constructor */
    public SheetHeadersEntity(SheetHeadersEntityId id, String sheettemplatename, String comments, String colname) {
        this.id = id;
        this.sheettemplatename = sheettemplatename;
        this.comments = comments;
        this.colname = colname;
    }

   
    // Property accessors

    public SheetHeadersEntityId getId() {
        return this.id;
    }
    
    public void setId(SheetHeadersEntityId id) {
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