package dpr.AHP.connection;

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
 * database changes related to the AHP DPR 
 */


public class DPR_AHP_connection {
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
    public DPR_AHP_connection (){
      
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
    * This function inserts the data of a new AHP DPR
    * into the data base.
    * 
    * It is executed by the ULB only!
    * 
    * @param 
    */
    public void ahp_DPR_Insert ( String STATE, String DISTRICT, String CITY, String PORJECT_NM, 
            String SLNA_NM, String IA_NAME, float HOUSING_COST, float INFRA_COST, float OTHER_COST, 
            int EWS_GEN, int EWS_SC, int ESW_ST, int EWS_OBC, int EWS_MINORITY, byte PMAY_GUIDELINES, 
            float COST_EWS_UNIT, byte PROJECT_DURATION, byte STATE_SALES_PRICE, float CARPET_AREA_EWS, 
            int EWS_UNIT, int LIG_UNIT, int MIG_UNIT, int HIG_UNIT, int COMMERCIAL_UNIT, byte PROCEDURE_PPP, 
            int ELIGIBLE_EWS, double CENTRAL_GRANT, float STATE_GRANT, float LAND_COST, float CASH_GRANT, 
            float IA_SHARE, float BEN_SHARE, byte TECH_SPECIFICATION, byte TRUNK_INFRA, byte WATER, byte SEWERAGE, 
            byte ROAD, byte WATER_DRAIN, byte ELECTRIFICATION, byte WASTE_MANAGEMENT, String OTHER_INFRA, byte SOCIAL_INFRA, 
            byte DESASTER_RESISTANT, byte QUALITY_ASSURANCE, byte Q_N_M, byte ENCUMB_FREE_LAND, byte GREEN_TECH, 
            String SLAC_COMMENT, String OTHER_INFO, String ULB_DIGITAL_SIGN){
        
        sql = "INSERT INTO AHP_DPR (STATE, DISTRICT,CITY, PORJECT_NM, SLNA_NM, IA_NAME,"
            +"  HOUSING_COST, INFRA_COST, OTHER_COST, EWS_GEN, EWS_SC, ESW_ST,EWS_OBC, EWS_MINORITY, "
            +"  PMAY_GUIDELINES, COST_EWS_UNIT, PROJECT_DURATION, STATE_SALES_PRICE, CARPET_AREA_EWS, "
            +"  EWS_UNIT, LIG_UNIT, MIG_UNIT, HIG_UNIT, COMMERCIAL_UNIT, PROCEDURE_PPP,"
            +"  ELIGIBLE_EWS, CENTRAL_GRANT, STATE_GRANT, LAND_COST, CASH_GRANT, IA_SHARE, BEN_SHARE,"
            +"  TECH_SPECIFICATION, TRUNK_INFRA, WATER, SEWERAGE, ROAD, WATER_DRAIN, ELECTRIFICATION, "
            +"  WASTE_MANAGEMENT, OTHER_INFRA, SOCIAL_INFRA, DESASTER_RESISTANT, QUALITY_ASSURANCE,"
            +"  Q_N_M, ENCUMB_FREE_LAND, GREEN_TECH, SLAC_COMMENT, OTHER_INFO, ULB_DIGITAL_SIGN) VALUES"
            +"  (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?);";
        try {
            pstmt = conn.prepareStatement(sql);

            pstmt.setString(1, STATE);
            pstmt.setString(2, DISTRICT);
            pstmt.setString(3, CITY);
            pstmt.setString(4, PORJECT_NM);
            pstmt.setString(5, SLNA_NM);
            pstmt.setString(6, IA_NAME);
            pstmt.setFloat(7, HOUSING_COST);
            pstmt.setFloat(8, INFRA_COST);
            pstmt.setFloat(9, OTHER_COST);
            pstmt.setInt(10, EWS_GEN);
            pstmt.setInt(11, EWS_SC);
            pstmt.setInt(12, ESW_ST);
            pstmt.setInt(13, EWS_OBC);
            pstmt.setInt(14, EWS_MINORITY);
            pstmt.setByte(15, PMAY_GUIDELINES);
            pstmt.setFloat(16, COST_EWS_UNIT);
            pstmt.setByte(17, PROJECT_DURATION);
            pstmt.setByte(18, STATE_SALES_PRICE);
            pstmt.setFloat(19, CARPET_AREA_EWS);
            pstmt.setInt(20, EWS_UNIT);
            pstmt.setInt(21, LIG_UNIT);
            pstmt.setInt(22, MIG_UNIT);
            pstmt.setInt(23, HIG_UNIT);
            pstmt.setInt(24, COMMERCIAL_UNIT);
            pstmt.setByte(25, PROCEDURE_PPP);
            pstmt.setInt(26, ELIGIBLE_EWS);
            pstmt.setDouble(27, CENTRAL_GRANT);
            pstmt.setFloat(28, STATE_GRANT);
            pstmt.setFloat(29, LAND_COST);
            pstmt.setFloat(30, CASH_GRANT);
            pstmt.setFloat(31, IA_SHARE);
            pstmt.setFloat(32, BEN_SHARE);
            pstmt.setByte(33, TECH_SPECIFICATION);
            pstmt.setByte(34, TRUNK_INFRA);
            pstmt.setByte(35, WATER);
            pstmt.setByte(36, SEWERAGE);
            pstmt.setByte(37, ROAD);
            pstmt.setByte(38, WATER_DRAIN);
            pstmt.setByte(39, ELECTRIFICATION);
            pstmt.setByte(40, WASTE_MANAGEMENT);
            pstmt.setString(41, OTHER_INFRA);
            pstmt.setByte(42, SOCIAL_INFRA);
            pstmt.setByte(43, DESASTER_RESISTANT);
            pstmt.setByte(44, QUALITY_ASSURANCE);
            pstmt.setByte(45, Q_N_M);
            pstmt.setByte(46, ENCUMB_FREE_LAND);
            pstmt.setByte(47, GREEN_TECH);
            pstmt.setString(48, SLAC_COMMENT);
            pstmt.setString(49, OTHER_INFO);
            pstmt.setString(50, ULB_DIGITAL_SIGN);

            
            counter = pstmt.executeUpdate();

            System.out.println(counter);
            
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        
    }//end of ahp_DPR_Insert
    
    /////////////////////////////////////Retrieve data from database////////////////////////////////
    /**
     * 
     * This function is used to retrieve the data from the AHP_DPR table
     * to edit it
     * 
     * @param AHP_PROJECT_NO
     * @return Object Of Type ResultSet
     */
    
    public ResultSet selectRecord7bEdit(int AHP_PROJECT_NO){

        sql = "SELECT * FROM AHP_DPR WHERE AHP_PROJECT_NO = ?;";
        
        try {
           
            pstmt = conn.prepareStatement(sql);
            
                   
            pstmt.setInt(1, AHP_PROJECT_NO);

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
     * This function update the data of a AHP DPR
     * into the database.
     * 
     * It is executed by the ULB only!
     * 
     * @param 
     */

    

}
