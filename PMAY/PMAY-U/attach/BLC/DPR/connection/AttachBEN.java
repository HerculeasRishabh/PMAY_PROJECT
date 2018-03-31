package attach.BLC.DPR.connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class AttachBEN {
    
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
    public AttachBEN () {
        
        try{
            //STEP 1 - Load the Driver
            Class.forName (DRIVER);
            
            //STEP 2 - Establish the connection
            conn = DriverManager.getConnection(CON_URL, USER, PWD);
            
        }catch (Exception e){
            e.printStackTrace();
        }
        
    }
    
    /////////////////////////////////////Retrieve data from database////////////////////////////////
    
    /**
     * This function is used to retrieve the complete data of the BLC beneficiary from the database 
     * @return
     */
    public ResultSet selectAllBEN_Gnrl (){

        sql = "SELECT * FROM BEN_SURVEY_GNRL WHERE HFA_VERTICAL = 'BLC' AND SURVEY_STATUS = 0; ";
        
        try {
           
            pstmt = conn.prepareStatement(sql);

            rs = pstmt.executeQuery();
            
            return rs;
            
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return rs;
        
    }//end of selectAllBEN_Gnrl
    
    /////////////////////////////////////// Insert Attach Beneficiary ///////////////////////////////
    
    public void attachBEN_BLC (int SURVEY_NO, int BLC_DPR_NO) {
        
        sql = "INSERT INTO BLC_ATTACH_BEN (SURVEY_NUM, BLC_PROJECT_NUM) VALUES (?,?)";
        
        try {
            pstmt = conn.prepareStatement(sql);
            
            pstmt.setInt(1, SURVEY_NO);
            pstmt.setInt(2, BLC_DPR_NO);
            
            pstmt.executeUpdate();
            
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        
    }//end of attachBEN_BLC
    
    ////////////////////////////////////// Update Beneficiary Table ////////////////////////////////////
    
    public void updateBEN_Status_Add (int SURVEY_NO){
        
        sql = "UPDATE BEN_SURVEY_GNRL SET SURVEY_STATUS = 1 WHERE SURVEY_NO = ?;";
        
        try {
            pstmt = conn.prepareStatement(sql);
            
            pstmt.setInt(1, SURVEY_NO);
            
            pstmt.executeUpdate();
            
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }// END OFupdateBEN_Status_Add
    


}//end of class
