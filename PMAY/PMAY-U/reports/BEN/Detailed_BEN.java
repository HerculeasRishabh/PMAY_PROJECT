package reports.BEN;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Detailed_BEN {
    
    //References Declaration
    Connection conn = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;
    
    //Constant String for JDBC 
    static final String DRIVER = "com.mysql.jdbc.Driver";
    static final String USER = "root";
    static final String PWD = "root";
    static final String CON_URL = "jdbc:mysql://localhost:3306/PMAY_U";
    
    //Query variables
    String sql = null;
    int counter = 0;
    
    /**
     * @author rishabhojha
     * 
     * Default constructor to establish connection with the database
     */
    public Detailed_BEN () {
        
        try{
            //STEP 1 - Load the Driver
            Class.forName (DRIVER);
            
            //STEP 2 - Establish the connection
            conn = DriverManager.getConnection(CON_URL, USER, PWD);
            
        }catch (Exception e){
            e.printStackTrace();
        }
        
    }//end of Constructor

    /////////////////////////////////////Retrieve data from database////////////////////////////////
    /**
     * 
     * This function is used to retrieve the data from the BEN_SURVEY_GNRL table
     * to display it in the DPR
     * 
     * @param 
     * @return Object Of Type ResultSet
     */
    
    public ResultSet selectBEN_Detailed () {
    
        sql = "SELECT * FROM BEN_SURVEY_GNRL;";
        
        try {
            pstmt = conn.prepareStatement(sql);
            
            rs = pstmt.executeQuery();
            
            return rs;
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        
        return rs;
    }//end of function selectBEN_Detailed
 
    
    


}//end of class
