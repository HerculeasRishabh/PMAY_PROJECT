package ulb.Login.connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * This class is used to make the ULB Login
 * @author rishabhojha
 *
 */

public class ULB_Login {
    
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
    public ULB_Login () {
        
        try{
            //STEP 1 - Load the Driver
            Class.forName (DRIVER);
            
            //STEP 2 - Establish the connection
            conn = DriverManager.getConnection(CON_URL, USER, PWD);
            
        }catch (Exception e){
            e.printStackTrace();
        }
        
    }//end of constructor
    
    /////////////////////////////////////Retrieve data from database////////////////////////////////
    /**
     * 
     * This function is used to retrieve the data from the ULB_Login table
     * to edit it
     * 
     * @param ULB_ID and ULB_PASS
     * @return Object Of Type ResultSet
     */
    
    public ResultSet ulbLogin(String USER_NAME, String ULB_PASS){

        sql = "SELECT * FROM ULB_LOGIN WHERE ULB_USER_NAME = ? AND ULB_PASS = ?;";
        
        try {
           
            pstmt = conn.prepareStatement(sql);
            
                   
            pstmt.setString(1, USER_NAME);
            pstmt.setString(2, ULB_PASS);

            rs = pstmt.executeQuery();
            
            return rs;
            
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return rs;
    }//end of selectRecord4AEdit


}
