package dpr.InSitu.connection;

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
 * database changes related to the InSitu DPR 
 */

public class DPR_InSitu_connection {
    
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
    public DPR_InSitu_connection (){
      
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
    * This function inserts the data of a new InSitu DPR
    * into the data base.
    * 
    * It is executed by the ULB only!
    * 
    * @param 
    */
    public void inSitu_DPR_Insert (String STATE, String DISTRICT, String CITY, String SLUM, String PORJECT_NM, String SLNA_NM, String IA_NAME, 
            double PROJECT_COST, byte PROJECT_DURATION, byte SLUM_STATUS, float SLUM_AREA, float AREA_REHAB, int SLUM_POPULATION, 
            int GEN_OLD, int SC_OLD, int ST_OLD, int OBC_OLD, int MINORITY_OLD, int GEN_NEW, int SC_NEW, int ST_NEW, int OBC_NEW, 
            int MINORITY_NEW, int HOUSE_PROPOSED, float TOTAL_CAPR_AREA, byte PMAY_GUIDELINES, byte OPEN_PPP, float EXISTING_FSI, 
            float FSI_PROVIDED, String OTHER_INCENTIVE, double CENTRAL_GRANT, float STATE_GRANT, float ULB_GRANT, float BEN_SHARE, 
            byte TECH_SPECIFICATION, byte TEMP_ARRANGEMENT, byte TRUNK_INFRA, byte WATER, byte SEWERAGE, byte ROAD, byte WATER_DRAIN, 
            byte ELECTRIFICATION, byte WASTE_MANAGEMENT, String OTHER_INFRA, byte DESASTER_RESISTANT, byte QUALITY_ASSURANCE, byte QNM, 
            byte ENCUMB_FREE, byte GREEN_TECH, String SLAC_COMMENT, String OTHER_INFO, String ULB_DIGITAL_SIGN ){
        
        sql = "INSERT INTO INSITU_DPR ( "
              +" STATE, DISTRICT, CITY, SLUM, PORJECT_NM, SLNA_NM, "
              +" IA_NAME, PROJECT_COST, PROJECT_DURATION, SLUM_STATUS, SLUM_AREA, AREA_REHAB, SLUM_POPULATION, "
              +" GEN_OLD, SC_OLD, ST_OLD, OBC_OLD, MINORITY_OLD, GEN_NEW, SC_NEW, ST_NEW, OBC_NEW, MINORITY_NEW, "
              +" HOUSE_PROPOSED, TOTAL_CAPR_AREA, PMAY_GUIDELINES, OPEN_PPP, EXISTING_FSI, FSI_PROVIDED, OTHER_INCENTIVE, "
              +" CENTRAL_GRANT, STATE_GRANT, ULB_GRANT, BEN_SHARE, TECH_SPECIFICATION, TEMP_ARRANGEMENT, TRUNK_INFRA, "
              +" WATER, SEWERAGE, ROAD, WATER_DRAIN, ELECTRIFICATION, WASTE_MANAGEMENT, OTHER_INFRA, DESASTER_RESISTANT, "
              +" QUALITY_ASSURANCE, QNM, ENCUMB_FREE, GREEN_TECH, SLAC_COMMENT, OTHER_INFO, ULB_DIGITAL_SIGN) VALUES ( "
              +" ?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?);";
        
         try {
            pstmt = conn.prepareStatement(sql);
            
            pstmt.setString(1, STATE);
            pstmt.setString(2, DISTRICT);
            pstmt.setString(3, CITY);
            pstmt.setString(4, SLUM);
            pstmt.setString(5, PORJECT_NM);
            pstmt.setString(6, SLNA_NM);
            pstmt.setString(7, IA_NAME);
            pstmt.setDouble(8, PROJECT_COST);
            pstmt.setByte(9,  PROJECT_DURATION);
            pstmt.setByte(10,  SLUM_STATUS);
            pstmt.setFloat(11, SLUM_AREA);
            pstmt.setFloat(12, AREA_REHAB);
            pstmt.setInt(13, SLUM_POPULATION);
            pstmt.setInt(14, GEN_OLD);
            pstmt.setInt(15, SC_OLD);
            pstmt.setInt(16, ST_OLD);
            pstmt.setInt(17, OBC_OLD);
            pstmt.setInt(18, MINORITY_OLD);
            pstmt.setInt(19, GEN_NEW);
            pstmt.setInt(20, SC_NEW);
            pstmt.setInt(21, ST_NEW);
            pstmt.setInt(22, OBC_NEW);
            pstmt.setInt(23, MINORITY_NEW);
            pstmt.setInt(24, HOUSE_PROPOSED);
            pstmt.setFloat(25, TOTAL_CAPR_AREA);
            pstmt.setByte(26, PMAY_GUIDELINES);
            pstmt.setByte(27, OPEN_PPP);
            pstmt.setFloat(28, EXISTING_FSI);
            pstmt.setFloat(29, FSI_PROVIDED);
            pstmt.setString(30, OTHER_INCENTIVE);
            pstmt.setDouble(31, CENTRAL_GRANT);
            pstmt.setFloat(32, STATE_GRANT);
            pstmt.setFloat(33, ULB_GRANT);
            pstmt.setFloat(34, BEN_SHARE);
            pstmt.setByte(35, TECH_SPECIFICATION);
            pstmt.setByte(36, TEMP_ARRANGEMENT);
            pstmt.setByte(37, TRUNK_INFRA);
            pstmt.setByte(38, WATER);
            pstmt.setByte(39, SEWERAGE);
            pstmt.setByte(40, ROAD);
            pstmt.setByte(41, WATER_DRAIN);
            pstmt.setByte(42, ELECTRIFICATION);
            pstmt.setByte(43, WASTE_MANAGEMENT);
            pstmt.setString(44, OTHER_INFRA);
            pstmt.setByte(45, DESASTER_RESISTANT);
            pstmt.setByte(46, QUALITY_ASSURANCE);
            pstmt.setByte(47, QNM);
            pstmt.setByte(48, ENCUMB_FREE);
            pstmt.setByte(49, GREEN_TECH);
            pstmt.setString(50, SLAC_COMMENT);
            pstmt.setString(51, OTHER_INFO);
            pstmt.setString(52, ULB_DIGITAL_SIGN);
            
            counter = pstmt.executeUpdate();
            
            System.out.println(counter);
         
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

    }//end of inSitu_DPR_Insert
    
    
    
    /////////////////////////////////////// UPDATE QUERIES ON DATABASE ////////////////////////////////
    
    
   /**
    * @author rishabhojha
    * 
    * This function Updates the data of a new InSitu DPR
    * into the data base.
    * 
    * It is executed by the ULB only!
    * 
    * @param 
    */
    public void inSitu_DPR_Update_IA (String STATE, String DISTRICT, String CITY, String SLUM, String PORJECT_NM, String SLNA_NM, String IA_NAME, 
            double PROJECT_COST, byte PROJECT_DURATION, byte SLUM_STATUS, float SLUM_AREA, float AREA_REHAB, int SLUM_POPULATION, 
            int GEN_OLD, int SC_OLD, int ST_OLD, int OBC_OLD, int MINORITY_OLD, int GEN_NEW, int SC_NEW, int ST_NEW, int OBC_NEW, 
            int MINORITY_NEW, int HOUSE_PROPOSED, float TOTAL_CAPR_AREA, byte PMAY_GUIDELINES, byte OPEN_PPP, float EXISTING_FSI, 
            float FSI_PROVIDED, String OTHER_INCENTIVE, double CENTRAL_GRANT, float STATE_GRANT, float ULB_GRANT, float BEN_SHARE, 
            byte TECH_SPECIFICATION, byte TEMP_ARRANGEMENT, byte TRUNK_INFRA, byte WATER, byte SEWERAGE, byte ROAD, byte WATER_DRAIN, 
            byte ELECTRIFICATION, byte WASTE_MANAGEMENT, String OTHER_INFRA, byte DESASTER_RESISTANT, byte QUALITY_ASSURANCE, byte QNM, 
            byte ENCUMB_FREE, byte GREEN_TECH, String SLAC_COMMENT, String OTHER_INFO, String ULB_DIGITAL_SIGN, int INSITU_PROJECT_NO ){
        
        sql = " UPDATE INSITU_DPR SET "
              +" STATE = ?, DISTRICT = ?, CITY = ?, SLUM = ?, PORJECT_NM = ?, SLNA_NM = ?, "
              +" IA_NAME = ?, PROJECT_COST = ?, PROJECT_DURATION = ?, SLUM_STATUS = ?, SLUM_AREA = ?, "
              +" AREA_REHAB = ?, SLUM_POPULATION = ?, GEN_OLD = ?, SC_OLD = ?, ST_OLD = ?, OBC_OLD = ?, "
              +" MINORITY_OLD = ?, GEN_NEW = ?, SC_NEW = ?, ST_NEW = ?, OBC_NEW = ?, MINORITY_NEW = ?, "
              +" HOUSE_PROPOSED = ?, TOTAL_CAPR_AREA = ?, PMAY_GUIDELINES = ?, OPEN_PPP = ?, EXISTING_FSI = ?, "
              +" FSI_PROVIDED = ?, OTHER_INCENTIVE = ?, CENTRAL_GRANT = ?, STATE_GRANT = ?, ULB_GRANT = ?, "
              +" BEN_SHARE = ?, TECH_SPECIFICATION = ?, TEMP_ARRANGEMENT = ?, TRUNK_INFRA = ?, "
              +" WATER = ?, SEWERAGE = ?, ROAD = ?, WATER_DRAIN = ?, ELECTRIFICATION = ?, WASTE_MANAGEMENT = ?, "
              +" OTHER_INFRA = ?, DESASTER_RESISTANT = ?, QUALITY_ASSURANCE = ?, QNM = ?, ENCUMB_FREE = ?, "
              +" GREEN_TECH = ?, SLAC_COMMENT = ?, OTHER_INFO = ?, ULB_DIGITAL_SIGN = ?"
              +" WHERE INSITU_PROJECT_NO = ?;";
        
         try {
            pstmt = conn.prepareStatement(sql);
            
            pstmt.setString(1, STATE);
            pstmt.setString(2, DISTRICT);
            pstmt.setString(3, CITY);
            pstmt.setString(4, SLUM);
            pstmt.setString(5, PORJECT_NM);
            pstmt.setString(6, SLNA_NM);
            pstmt.setString(7, IA_NAME);
            pstmt.setDouble(8, PROJECT_COST);
            pstmt.setByte(9,  PROJECT_DURATION);
            pstmt.setByte(10,  SLUM_STATUS);
            pstmt.setFloat(11, SLUM_AREA);
            pstmt.setFloat(12, AREA_REHAB);
            pstmt.setInt(13, SLUM_POPULATION);
            pstmt.setInt(14, GEN_OLD);
            pstmt.setInt(15, SC_OLD);
            pstmt.setInt(16, ST_OLD);
            pstmt.setInt(17, OBC_OLD);
            pstmt.setInt(18, MINORITY_OLD);
            pstmt.setInt(19, GEN_NEW);
            pstmt.setInt(20, SC_NEW);
            pstmt.setInt(21, ST_NEW);
            pstmt.setInt(22, OBC_NEW);
            pstmt.setInt(23, MINORITY_NEW);
            pstmt.setInt(24, HOUSE_PROPOSED);
            pstmt.setFloat(25, TOTAL_CAPR_AREA);
            pstmt.setByte(26, PMAY_GUIDELINES);
            pstmt.setByte(27, OPEN_PPP);
            pstmt.setFloat(28, EXISTING_FSI);
            pstmt.setFloat(29, FSI_PROVIDED);
            pstmt.setString(30, OTHER_INCENTIVE);
            pstmt.setDouble(31, CENTRAL_GRANT);
            pstmt.setFloat(32, STATE_GRANT);
            pstmt.setFloat(33, ULB_GRANT);
            pstmt.setFloat(34, BEN_SHARE);
            pstmt.setByte(35, TECH_SPECIFICATION);
            pstmt.setByte(36, TEMP_ARRANGEMENT);
            pstmt.setByte(37, TRUNK_INFRA);
            pstmt.setByte(38, WATER);
            pstmt.setByte(39, SEWERAGE);
            pstmt.setByte(40, ROAD);
            pstmt.setByte(41, WATER_DRAIN);
            pstmt.setByte(42, ELECTRIFICATION);
            pstmt.setByte(43, WASTE_MANAGEMENT);
            pstmt.setString(44, OTHER_INFRA);
            pstmt.setByte(45, DESASTER_RESISTANT);
            pstmt.setByte(46, QUALITY_ASSURANCE);
            pstmt.setByte(47, QNM);
            pstmt.setByte(48, ENCUMB_FREE);
            pstmt.setByte(49, GREEN_TECH);
            pstmt.setString(50, SLAC_COMMENT);
            pstmt.setString(51, OTHER_INFO);
            pstmt.setString(52, ULB_DIGITAL_SIGN);
            pstmt.setInt(53, INSITU_PROJECT_NO);
            
            counter = pstmt.executeUpdate();
            
            System.out.println(counter);
         
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

    }//end of inSitu_DPR_Update_IA
    
    //////////////////////////////////////////////////////// Retrieve Queries //////////////////////////////////////////////////
    
    /**
     * 
     * This function is used to retrieve the data from the BLC_DPR table
     * to edit it
     * 
     * @param BLC_PROJECT_NO
     * @return Object Of Type ResultSet
     */
    
    public ResultSet selectRecord7AEdit(int INSITU_PROJECT_NO){

        sql = "SELECT * FROM INSITU_DPR WHERE INSITU_PROJECT_NO = ?;";
        
        try {
           
            pstmt = conn.prepareStatement(sql);
            
                   
            pstmt.setInt(1, INSITU_PROJECT_NO);

            rs = pstmt.executeQuery();
            
            return rs;
            
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return rs;
    }//end of selectRecord7cEdit
}//end of class
