package beneficiary.InSitu.connection;

import java.math.BigDecimal;
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
 * InSitu-BENEFICIARY related data in the database 
 */


public class BEN_InSitu_Register {
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
    public BEN_InSitu_Register() {
        
        try{
            //STEP 1 - Load the Driver
            Class.forName (DRIVER);
            
            //STEP 2 - Establish the connection
            conn = DriverManager.getConnection(CON_URL, USER, PWD);
            
        }catch (Exception e){
            e.printStackTrace();
        }
        
    }
    

    
     /////////////////////////////////////// INSERT QUERIES ON DATABASE ////////////////////////////////
    
    
    /**
     * @author rishabhojha
     * 
     * This function inserts the data of a NEW BENEFICIARY 
     * into the BEN_SURVEY_INSITU table
     * 
     * @param 
     */
    public int beneficiaryInSituInsert (String STATE, String DISTRICT, String CITY, String WARD, String SLUM_NAME, String AREA_NAME, 
            String HFA_VERTICAL, String FMLY_HEAD_NM, String SEX, String FATHERS_NAME, int fMLY_HEAD_AGE, String HOUSE_NO, String STREET, 
            String MOBILE_NO, String AADHAR_CARD, String rELIGION, String cASTE, byte dISABLE, String mARITAL_STATUS, byte oWNS_HOUSE_LAND, 
            String OWNERSHIP_DETAILS, BigDecimal AVG_MONTHLY_INC, String FMLY_HEAD_IMG_PATH, String DGTL_SIGN_ULB){
        
        sql = " INSERT INTO BEN_SURVEY_INSITU ("
             +" STATE, DISTRICT, CITY, WARD, SLUM_NAME, AREA_NAME, HFA_VERTICAL, FMLY_HEAD_NM, SEX, FATHERS_NAME, FMLY_HEAD_AGE,"
             +" HOUSE_NO, STREET, MOBILE_NO, AADHAR_CARD, RELIGION, CASTE, DISABLE, MARITAL_STATUS, OWNS_HOUSE_LAND, OWNERSHIP_DETAILS,"
             +" AVG_MONTHLY_INC, FMLY_HEAD_IMG_PATH, DGTL_SIGN_ULB"
             +"  ) VALUES ("
             +" ?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?"
             +" );";
        
        try {
            pstmt = conn.prepareStatement(sql);
            
            pstmt.setString(1, STATE);
            pstmt.setString(2, DISTRICT);
            pstmt.setString(3, CITY);
            pstmt.setString(4, WARD);
            pstmt.setString(5, SLUM_NAME);
            pstmt.setString(6, AREA_NAME);
            pstmt.setString(7, HFA_VERTICAL);
            pstmt.setString(8, FMLY_HEAD_NM);
            pstmt.setString(9, SEX);
            pstmt.setString(10, FATHERS_NAME);
            pstmt.setInt(11, fMLY_HEAD_AGE);
            pstmt.setString(12, HOUSE_NO);
            pstmt.setString(13, STREET);
            pstmt.setString(14, MOBILE_NO);
            pstmt.setString(15, AADHAR_CARD);
            pstmt.setString(16, rELIGION);
            pstmt.setString(17, cASTE);
            pstmt.setByte(18, dISABLE);
            pstmt.setString(19, mARITAL_STATUS);
            pstmt.setByte(20, oWNS_HOUSE_LAND);
            pstmt.setString(21, OWNERSHIP_DETAILS);
            pstmt.setBigDecimal(22, AVG_MONTHLY_INC);
            pstmt.setString(23, FMLY_HEAD_IMG_PATH);
            pstmt.setString(24, DGTL_SIGN_ULB);
            
            counter = pstmt.executeUpdate();
            System.out.println(counter);
            return counter;
            
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return counter;
    }//end of beneficiaryInSituInsert
    
    /**
     * @author rishabhojha
     * 
     * This function inserts the data of new beneficiary family
     * member into the BEN_FAMILY_INSITU table
     * 
     * @parm
     */
    public void BeneficiaryFamilyInsert (String BEN_AADHAR, String fmlyName, String fmlyGender, String fmlyRelation,
                                        int fmlyAge, String fmlyAadhar){
        
        sql = "INSERT INTO BEN_FAMILY_INSITU VALUES (?, ?, ?, ?, ?, ?)";
        
        try {
            pstmt = conn.prepareStatement(sql);
            
            pstmt.setString(1, BEN_AADHAR);
            pstmt.setString(2, fmlyName);
            pstmt.setString(3, fmlyGender);
            pstmt.setString(4, fmlyRelation);
            pstmt.setInt(5, fmlyAge);
            pstmt.setString(6, fmlyAadhar);
            
            counter = pstmt.executeUpdate();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }//end of BeneficiaryFamilyInsert
    
    /////////////////////////////////////Retrieve data from database////////////////////////////////
    /**
     * 
     * This function is used to retrieve the data from the BEN_SURVEY_INSITU table
     * to edit it
     * 
     * @param AADHAR_CARD
     * @return Object Of Type ResultSet
     */
    
    public ResultSet selectRecord4AEdit(String AADHAR_CARD){

        sql = "SELECT * FROM BEN_SURVEY_INSITU WHERE AADHAR_CARD = ?;";
        
        try {
           
            pstmt = conn.prepareStatement(sql);
            
                   
            pstmt.setString(1, AADHAR_CARD);

            rs = pstmt.executeQuery();
            
            return rs;
            
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return rs;
    }//end of selectRecord4AEdit
    
    /**
     * This function is used to retrieve the details of the family of the 
     * InSitu_beneficiary from the database
     * 
     * @param AADHAR_CARD
     * @return ResultSet
     */
    public ResultSet selectRecord4AFamilyEdit (String AADHAR_CARD){
        
        sql  = "SELECT * FROM BEN_FAMILY_INSITU WHERE BEN_AADHAR = ?";
        
        try {
            pstmt = conn.prepareStatement(sql);
            
            pstmt.setString(1, AADHAR_CARD);
            
            rs = pstmt.executeQuery();
            
            return rs;
            
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        
        return rs;
        
    }//end of selectRecord4AFamilyEdit
    
   
    ///////////////////////////////////////Update Data in Database//////////////////////////////////
    /**
     * @author rishabhojha
     * 
     * This function update the data of a BEN_SURVEY_INSITU
     * into the database.
     * 
     * It is executed by the ULB only!
     * 
     * @param 
     */
    public int beneficiaryInSituUpdate_IA (String STATE, String DISTRICT, String CITY, String WARD, String SLUM_NAME, String AREA_NAME, 
            String HFA_VERTICAL, String FMLY_HEAD_NM, String SEX, String FATHERS_NAME, int fMLY_HEAD_AGE, String HOUSE_NO, String STREET, 
            String MOBILE_NO, String AADHAR_CARD, String rELIGION, String cASTE, byte dISABLE, String mARITAL_STATUS, byte oWNS_HOUSE_LAND, 
            String OWNERSHIP_DETAILS, BigDecimal AVG_MONTHLY_INC, String DGTL_SIGN_ULB, String OLD_AADHAR){
        
        sql = "  UPDATE BEN_SURVEY_INSITU SET "
            +"  STATE = ?, DISTRICT = ?, CITY = ?, WARD = ?, SLUM_NAME = ?, AREA_NAME = ?, "
            +"  HFA_VERTICAL = ?, FMLY_HEAD_NM = ?, SEX = ?, FATHERS_NAME = ?, FMLY_HEAD_AGE = ?, "
            +"  HOUSE_NO = ?, STREET = ?, MOBILE_NO = ?, AADHAR_CARD = ?, RELIGION = ?, CASTE = ?, "
            +"  DISABLE = ?, MARITAL_STATUS = ?, OWNS_HOUSE_LAND = ?, OWNERSHIP_DETAILS = ?, "
            +"  AVG_MONTHLY_INC = ?, DGTL_SIGN_ULB = ? WHERE AADHAR_CARD = ?;";
        
        try {
            pstmt = conn.prepareStatement(sql);
            
            pstmt.setString(1, STATE);
            pstmt.setString(2, DISTRICT);
            pstmt.setString(3, CITY);
            pstmt.setString(4, WARD);
            pstmt.setString(5, SLUM_NAME);
            pstmt.setString(6, AREA_NAME);
            pstmt.setString(7, HFA_VERTICAL);
            pstmt.setString(8, FMLY_HEAD_NM);
            pstmt.setString(9, SEX);
            pstmt.setString(10, FATHERS_NAME);
            pstmt.setInt(11, fMLY_HEAD_AGE);
            pstmt.setString(12, HOUSE_NO);
            pstmt.setString(13, STREET);
            pstmt.setString(14, MOBILE_NO);
            pstmt.setString(15, AADHAR_CARD);
            pstmt.setString(16, rELIGION);
            pstmt.setString(17, cASTE);
            pstmt.setByte(18, dISABLE);
            pstmt.setString(19, mARITAL_STATUS);
            pstmt.setByte(20, oWNS_HOUSE_LAND);
            pstmt.setString(21, OWNERSHIP_DETAILS);
            pstmt.setBigDecimal(22, AVG_MONTHLY_INC);
            pstmt.setString(23, DGTL_SIGN_ULB);
            pstmt.setString(24, OLD_AADHAR);
            
           
            
            counter = pstmt.executeUpdate();
            
            System.out.println(counter);
            return counter;
            
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return counter;
    }//end of beneficiaryInSituUpdate_IA
    
    /**
     * @author rishabhojha
     * 
     * This function update the data of a BEN_SURVEY_INSITU with image
     * into the database.
     * 
     * It is executed by the ULB only!
     * 
     * @param 
     */
    public int beneficiaryInSituUpdate_IA_Img (String STATE, String DISTRICT, String CITY, String WARD, String SLUM_NAME, String AREA_NAME, 
            String HFA_VERTICAL, String FMLY_HEAD_NM, String SEX, String FATHERS_NAME, int fMLY_HEAD_AGE, String HOUSE_NO, String STREET, 
            String MOBILE_NO, String AADHAR_CARD, String rELIGION, String cASTE, byte dISABLE, String mARITAL_STATUS, byte oWNS_HOUSE_LAND, 
            String OWNERSHIP_DETAILS, BigDecimal AVG_MONTHLY_INC, String FMLY_HEAD_IMG_PATH, String DGTL_SIGN_ULB, String OLD_AADHAR){
        
        sql = "  UPDATE BEN_SURVEY_INSITU SET "
            +"  STATE = ?, DISTRICT = ?, CITY = ?, WARD = ?, SLUM_NAME = ?, AREA_NAME = ?, "
            +"  HFA_VERTICAL = ?, FMLY_HEAD_NM = ?, SEX = ?, FATHERS_NAME = ?, FMLY_HEAD_AGE = ?, "
            +"  HOUSE_NO = ?, STREET = ?, MOBILE_NO = ?, AADHAR_CARD = ?, RELIGION = ?, CASTE = ?, "
            +"  DISABLE = ?, MARITAL_STATUS = ?, OWNS_HOUSE_LAND = ?, OWNERSHIP_DETAILS = ?, "
            +"  AVG_MONTHLY_INC = ?, FMLY_HEAD_IMG_PATH = ?, DGTL_SIGN_ULB = ? WHERE AADHAR_CARD = ?;";
        
        try {
            pstmt = conn.prepareStatement(sql);
            
            pstmt.setString(1, STATE);
            pstmt.setString(2, DISTRICT);
            pstmt.setString(3, CITY);
            pstmt.setString(4, WARD);
            pstmt.setString(5, SLUM_NAME);
            pstmt.setString(6, AREA_NAME);
            pstmt.setString(7, HFA_VERTICAL);
            pstmt.setString(8, FMLY_HEAD_NM);
            pstmt.setString(9, SEX);
            pstmt.setString(10, FATHERS_NAME);
            pstmt.setInt(11, fMLY_HEAD_AGE);
            pstmt.setString(12, HOUSE_NO);
            pstmt.setString(13, STREET);
            pstmt.setString(14, MOBILE_NO);
            pstmt.setString(15, AADHAR_CARD);
            pstmt.setString(16, rELIGION);
            pstmt.setString(17, cASTE);
            pstmt.setByte(18, dISABLE);
            pstmt.setString(19, mARITAL_STATUS);
            pstmt.setByte(20, oWNS_HOUSE_LAND);
            pstmt.setString(21, OWNERSHIP_DETAILS);
            pstmt.setBigDecimal(22, AVG_MONTHLY_INC);
            pstmt.setString(23, FMLY_HEAD_IMG_PATH);
            pstmt.setString(24, DGTL_SIGN_ULB);
            pstmt.setString(25, OLD_AADHAR);
            
            counter = pstmt.executeUpdate();
            
            System.out.println(counter);
            return counter;
            
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return counter;
    }//end of beneficiaryInSituUpdate_IA
    

    
    
    
    /////////////////////////////////////// DELETE QUERIES ON DATABASE ////////////////////////////////
    
    /**
     * The given query deletes the table of the ben_insitu_family
     * before new family data for that beneficiary can be inserted
     * 
     * @param BEN_AADHAR
     * @return
     */
    public int beneficiaryInSituFamily_Delete (String BEN_AADHAR){
        sql = "DELETE FROM BEN_FAMILY_INSITU WHERE BEN_AADHAR = ?;";
        
        try {
            pstmt = conn.prepareStatement(sql);
            
            pstmt.setString(1, BEN_AADHAR);
            
            counter = pstmt.executeUpdate();
            
            return counter;
            
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return counter;
        
    }//end of beneficiaryInSituFamily_Delete
    




}//end of class
