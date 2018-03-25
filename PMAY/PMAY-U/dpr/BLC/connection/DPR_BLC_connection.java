package dpr.BLC.connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


/**
 * 
 * @author rishabhojha
 *
 * This class contains functions that deal with the
 * database changes related to the BLC DPR 
 */

public class DPR_BLC_connection {
    
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
    public DPR_BLC_connection (){
      
        try{
            //STEP 1 - Load the Driver
            Class.forName (DRIVER);
            
            //STEP 2 - Establish the connection
            conn = DriverManager.getConnection(CON_URL, USER, PWD);
            
        }catch (Exception e){
            e.printStackTrace();
        }
    }//End of constructor

    
    /////////////////////////////////////// INSERT QUERIES ON DATABASE ////////////////////////////////
   
   
   /**
    * @author rishabhojha
    * 
    * This function inserts the data of a new BLC DPR
    * into the data base.
    * 
    * It is executed by the ULB only!
    * 
    * @param 
    */
    
    public void blc_DPR_Insert(String STATE, String DISTRICT, String CITY, String PORJECT_NM, String SLNA_NM, String IA_NAME, double PROJECT_COST, int GEN_OLD, 
            int SC_OLD, int ST_OLD, int OBC_OLD, int MINORITY_OLD, int GEN_NEW, int SC_NEW, int ST_NEW, int OBC_NEW, int MINORITY_NEW, 
            byte PMAY_GUIDELINES, byte OWNERSHIP, byte BUILDING_PLAN, double CENTRAL_GRANT, float STATE_GRANT, float ULB_GRANT, float BEN_SHARE, 
            byte TECH_SPECIFICATION, byte ENSURED_BALANCE_COST, byte WATER, byte SEWERAGE, byte ROAD, byte WATER_DRAIN, byte ELECTRIFICATION,
            byte WASTE_MANAGEMENT, String OTHER_INFRA, byte DESASTER_RESISTANT, byte DEMAND_SURVEY, byte CITY_WIDE_INTEGRATED,
            byte SECC_VALIDATION, byte ENSURE_DBT, byte GEO_TAGGING_DPR, byte GREEN_TECH, String OTHER_INFO, String ULB_DIGITAL_SIGN){

        sql = " INSERT INTO BLC_DPR (STATE, DISTRICT, CITY, PORJECT_NM, SLNA_NM, IA_NAME, PROJECT_COST, GEN_OLD, SC_OLD, ST_OLD, OBC_OLD, "
              +"   MINORITY_OLD, GEN_NEW, SC_NEW, ST_NEW, OBC_NEW, MINORITY_NEW, PMAY_GUIDELINES, OWNERSHIP, BUILDING_PLAN, CENTRAL_GRANT, "
              +"   STATE_GRANT, ULB_GRANT, BEN_SHARE, TECH_SPECIFICATION, ENSURED_BALANCE_COST, WATER, SEWERAGE, ROAD, WATER_DRAIN, ELECTRIFICATION, "
              +"   WASTE_MANAGEMENT, OTHER_INFRA, DESASTER_RESISTANT, DEMAND_SURVEY, CITY_WIDE_INTEGRATED, SECC_VALIDATION, ENSURE_DBT, GEO_TAGGING_DPR, " 
              +"   GREEN_TECH, OTHER_INFO, ULB_DIGITAL_SIGN) "
              +"   VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?);";
        
        try {
            pstmt = conn.prepareStatement(sql);

            pstmt.setString(1, STATE);
            pstmt.setString(2, DISTRICT);
            pstmt.setString(3, CITY);
            pstmt.setString(4, PORJECT_NM);
            pstmt.setString(5, SLNA_NM);
            pstmt.setString(6, IA_NAME);
            pstmt.setDouble(7, PROJECT_COST);
            pstmt.setInt(8, GEN_OLD);
            pstmt.setInt(9, SC_OLD);
            pstmt.setInt(10, ST_OLD);
            pstmt.setInt(11, OBC_OLD);
            pstmt.setInt(12, MINORITY_OLD);
            pstmt.setInt(13, GEN_NEW);
            pstmt.setInt(14, SC_NEW);
            pstmt.setInt(15, ST_NEW);
            pstmt.setInt(16, OBC_NEW);
            pstmt.setInt(17, MINORITY_NEW);
            pstmt.setByte(18, PMAY_GUIDELINES);
            pstmt.setByte(19, OWNERSHIP);
            pstmt.setByte(20, BUILDING_PLAN);
            pstmt.setDouble(21, CENTRAL_GRANT);
            pstmt.setFloat(22, STATE_GRANT);
            pstmt.setFloat(23, ULB_GRANT);
            pstmt.setFloat(24, BEN_SHARE);
            pstmt.setByte(25, TECH_SPECIFICATION);
            pstmt.setByte(26, ENSURED_BALANCE_COST);
            pstmt.setByte(27, WATER);
            pstmt.setByte(28, SEWERAGE);
            pstmt.setByte(29, ROAD);
            pstmt.setByte(30, WATER_DRAIN);
            pstmt.setByte(31, ELECTRIFICATION);
            pstmt.setByte(32, WASTE_MANAGEMENT);
            pstmt.setString(33, OTHER_INFRA);
            pstmt.setByte(34, DESASTER_RESISTANT);
            pstmt.setByte(35, DEMAND_SURVEY);
            pstmt.setByte(36, CITY_WIDE_INTEGRATED);
            pstmt.setByte(37, SECC_VALIDATION);
            pstmt.setByte(38, ENSURE_DBT);
            pstmt.setByte(39, GEO_TAGGING_DPR);
            pstmt.setByte(40, GREEN_TECH);
            pstmt.setString(41, OTHER_INFO);
            pstmt.setString(42, ULB_DIGITAL_SIGN);
            
            counter = pstmt.executeUpdate();

            System.out.println(counter);
            
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        
    }//end of blc_DPR_Insert
    
    
    /////////////////////////////////////Retrieve data from database////////////////////////////////
    /**
     * 
     * This function is used to retrieve the data from the BLC_DPR table
     * to edit it
     * 
     * @param BLC_PROJECT_NO
     * @return Object Of Type ResultSet
     */
    
    public ResultSet selectRecord7cEdit(int BLC_PROJECT_NO){

        sql = "SELECT * FROM BLC_DPR WHERE BLC_PROJECT_NO = ?;";
        
        try {
           
            pstmt = conn.prepareStatement(sql);
            
                   
            pstmt.setInt(1, BLC_PROJECT_NO);

            rs = pstmt.executeQuery();
            
            return rs;
            
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return rs;
    }//end of selectRecord7cEdit
    
   
    ///////////////////////////////////////Update Data in Database//////////////////////////////////
    /**
     * @author rishabhojha
     * 
     * This function update the data of a BLC DPR
     * into the database.
     * 
     * It is executed by the ULB only!
     * 
     * @param 
     */
     
     public void blc_DPR_Update_IA(String STATE, String DISTRICT, String CITY, String PORJECT_NM, String SLNA_NM, String IA_NAME, double PROJECT_COST, int GEN_OLD, 
             int SC_OLD, int ST_OLD, int OBC_OLD, int MINORITY_OLD, int GEN_NEW, int SC_NEW, int ST_NEW, int OBC_NEW, int MINORITY_NEW, 
             byte PMAY_GUIDELINES, byte OWNERSHIP, byte BUILDING_PLAN, double CENTRAL_GRANT, float STATE_GRANT, float ULB_GRANT, float BEN_SHARE, 
             byte TECH_SPECIFICATION, byte ENSURED_BALANCE_COST, byte WATER, byte SEWERAGE, byte ROAD, byte WATER_DRAIN, byte ELECTRIFICATION,
             byte WASTE_MANAGEMENT, String OTHER_INFRA, byte DESASTER_RESISTANT, byte DEMAND_SURVEY, byte CITY_WIDE_INTEGRATED,
             byte SECC_VALIDATION, byte ENSURE_DBT, byte GEO_TAGGING_DPR, byte GREEN_TECH, String OTHER_INFO, String ULB_DIGITAL_SIGN, int BLC_PROJECT_NO){

         sql = "  UPDATE BLC_DPR SET  STATE = ?, DISTRICT = ?, CITY = ?, PORJECT_NM = ?, SLNA_NM = ?, IA_NAME = ?, "
               +"   PROJECT_COST = ?, GEN_OLD = ?, SC_OLD = ?, ST_OLD = ?, OBC_OLD = ?, "
               +"   MINORITY_OLD = ?, GEN_NEW = ?, SC_NEW = ?, ST_NEW = ?, OBC_NEW = ?, MINORITY_NEW = ?, PMAY_GUIDELINES = ?, OWNERSHIP = ?, BUILDING_PLAN = ?, CENTRAL_GRANT = ?, "
               +"   STATE_GRANT = ?, ULB_GRANT = ?, BEN_SHARE = ?, TECH_SPECIFICATION = ?, ENSURED_BALANCE_COST = ?, WATER = ?, SEWERAGE = ?, ROAD = ?, WATER_DRAIN = ?, ELECTRIFICATION = ?, " 
               +"   WASTE_MANAGEMENT = ?, OTHER_INFRA = ?, DESASTER_RESISTANT = ?, DEMAND_SURVEY = ?, CITY_WIDE_INTEGRATED = ?, SECC_VALIDATION = ?, ENSURE_DBT = ?, GEO_TAGGING_DPR = ?,  "
               +"   GREEN_TECH = ?, OTHER_INFO = ?, ULB_DIGITAL_SIGN = ? WHERE BLC_PROJECT_NO = ?;";
         
         try {
             pstmt = conn.prepareStatement(sql);

             pstmt.setString(1, STATE);
             pstmt.setString(2, DISTRICT);
             pstmt.setString(3, CITY);
             pstmt.setString(4, PORJECT_NM);
             pstmt.setString(5, SLNA_NM);
             pstmt.setString(6, IA_NAME);
             pstmt.setDouble(7, PROJECT_COST);
             pstmt.setInt(8, GEN_OLD);
             pstmt.setInt(9, SC_OLD);
             pstmt.setInt(10, ST_OLD);
             pstmt.setInt(11, OBC_OLD);
             pstmt.setInt(12, MINORITY_OLD);
             pstmt.setInt(13, GEN_NEW);
             pstmt.setInt(14, SC_NEW);
             pstmt.setInt(15, ST_NEW);
             pstmt.setInt(16, OBC_NEW);
             pstmt.setInt(17, MINORITY_NEW);
             pstmt.setByte(18, PMAY_GUIDELINES);
             pstmt.setByte(19, OWNERSHIP);
             pstmt.setByte(20, BUILDING_PLAN);
             pstmt.setDouble(21, CENTRAL_GRANT);
             pstmt.setFloat(22, STATE_GRANT);
             pstmt.setFloat(23, ULB_GRANT);
             pstmt.setFloat(24, BEN_SHARE);
             pstmt.setByte(25, TECH_SPECIFICATION);
             pstmt.setByte(26, ENSURED_BALANCE_COST);
             pstmt.setByte(27, WATER);
             pstmt.setByte(28, SEWERAGE);
             pstmt.setByte(29, ROAD);
             pstmt.setByte(30, WATER_DRAIN);
             pstmt.setByte(31, ELECTRIFICATION);
             pstmt.setByte(32, WASTE_MANAGEMENT);
             pstmt.setString(33, OTHER_INFRA);
             pstmt.setByte(34, DESASTER_RESISTANT);
             pstmt.setByte(35, DEMAND_SURVEY);
             pstmt.setByte(36, CITY_WIDE_INTEGRATED);
             pstmt.setByte(37, SECC_VALIDATION);
             pstmt.setByte(38, ENSURE_DBT);
             pstmt.setByte(39, GEO_TAGGING_DPR);
             pstmt.setByte(40, GREEN_TECH);
             pstmt.setString(41, OTHER_INFO);
             pstmt.setString(42, ULB_DIGITAL_SIGN);
             pstmt.setInt(43, BLC_PROJECT_NO);
             
             counter = pstmt.executeUpdate();

             System.out.println(counter);
             
         } catch (SQLException e) {
             // TODO Auto-generated catch block
             e.printStackTrace();
         }
         
     }//end of blc_DPR_Update_IA

    
}//End of class
