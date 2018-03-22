package beneficiary.General.connection;

import java.math.BigDecimal;
import java.sql.*;


/**
 * 
 * @author rishabhojha
 *
 * This class contains functions that deal with the
 * general-BENEFICIARY related data in the database 
 */

public class BEN_GNRL_Registration {
    
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
    public BEN_GNRL_Registration() {
        
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
     * into the BEN_SURVEY_GNRL table
     * 
     * @param 
     */
    public int beneficiaryGeneralInsert (String STATE, String DISTRICT, String CITY, String WARD, String SLUM_NAME, String AREA_NAME, 
            byte HFA_VERTICAL, String FMLY_HEAD_NM, byte SEX, String FATHERS_NAME, byte fMLY_HEAD_AGE, String HOUSE_NO, String STREET, 
            String MOBILE_NO, byte oWNERSHIP, byte hOUSE_TYPE, byte nO_ROOMS, String AADHAR_CARD, byte rELIGION, byte cASTE, String BANK_NM, 
            String BANK_ACC_NO, String BRANCH_NM, byte yEARS_STAY, BigDecimal SIZE_DU, byte dISABLE, byte mARITAL_STATUS, byte oWNS_HOUSE_LAND, 
            byte eMPLOYMENT, BigDecimal AVG_MONTHLY_INC, String BPL_CARD_NO, byte hOUSING_REQ, String FMLY_HEAD_IMG_PATH, String DGTL_SIGN_ULB){
        
        sql = "INSERT INTO BEN_SURVEY_GNRL ( "
                +"STATE, DISTRICT, CITY, WARD, SLUM_NAME, AREA_NAME, HFA_VERTICAL, FMLY_HEAD_NM, SEX, FATHERS_NAME, FMLY_HEAD_AGE,"
                +"HOUSE_NO, STREET, MOBILE_NO, OWNERSHIP, HOUSE_TYPE, NO_ROOMS, AADHAR_CARD, RELIGION, CASTE, BANK_NM, BANK_ACC_NO," 
                +"BRANCH_NM, YEARS_STAY, SIZE_DU, DISABLE, MARITAL_STATUS, OWNS_HOUSE_LAND, EMPLOYMENT, AVG_MONTHLY_INC, "
                +"BPL_CARD_NO, HOUSING_REQ, FMLY_HEAD_IMG_PATH, DGTL_SIGN_ULB"
                +") VALUES ("
                +"?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?"
                +");";
        try {
            pstmt = conn.prepareStatement(sql);
            
            pstmt.setString(1, STATE);
            pstmt.setString(2, DISTRICT);
            pstmt.setString(3, CITY);
            pstmt.setString(4, WARD);
            pstmt.setString(5, SLUM_NAME);
            pstmt.setString(6, AREA_NAME);
            pstmt.setByte(7, HFA_VERTICAL);
            pstmt.setString(8, FMLY_HEAD_NM);
            pstmt.setByte(9, SEX);
            pstmt.setString(10, FATHERS_NAME);
            pstmt.setByte(11, fMLY_HEAD_AGE);
            pstmt.setString(12, HOUSE_NO);
            pstmt.setString(13, STREET);
            pstmt.setString(14, MOBILE_NO);
            pstmt.setByte(15, oWNERSHIP);
            pstmt.setByte(16, hOUSE_TYPE);
            pstmt.setByte(17, nO_ROOMS);
            pstmt.setString(18, AADHAR_CARD);
            pstmt.setByte(19, rELIGION);
            pstmt.setByte(20, cASTE);
            pstmt.setString(21, BANK_NM);
            pstmt.setString(22, BANK_ACC_NO);
            pstmt.setString(23, BRANCH_NM);
            pstmt.setByte(24, yEARS_STAY);
            pstmt.setBigDecimal(25, SIZE_DU);
            pstmt.setByte(26, dISABLE);
            pstmt.setByte(27, mARITAL_STATUS);
            pstmt.setByte(28, oWNS_HOUSE_LAND);
            pstmt.setByte(29, eMPLOYMENT);
            pstmt.setBigDecimal(30, AVG_MONTHLY_INC);
            pstmt.setString(31, BPL_CARD_NO);
            pstmt.setByte(32, hOUSING_REQ);
            pstmt.setString(33, FMLY_HEAD_IMG_PATH);
            pstmt.setString(34, DGTL_SIGN_ULB);
            
            counter = pstmt.executeUpdate();
            System.out.println(counter);
            return counter;
            
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return counter;
    }
    
    /**
     * @author rishabhojha
     * 
     * This function inserts the data of new beneficiary family
     * member into the BEN_FAMILY_GNRL table
     * 
     * @parm
     */
    public void BeneficiaryFamilyInsert (String BEN_AADHAR, String fmlyName, byte fmlyGender, byte fmlyRelation,
                                        byte fmlyAge, String fmlyAadhar){
        
        sql = "INSERT INTO BEN_FAMILY_GNRL VALUES (?, ?, ?, ?, ?, ?)";
        
        try {
            pstmt = conn.prepareStatement(sql);
            
            pstmt.setString(1, BEN_AADHAR);
            pstmt.setString(2, fmlyName);
            pstmt.setByte(3, fmlyRelation);
            pstmt.setByte(4, fmlyGender);
            pstmt.setByte(5, fmlyAge);
            pstmt.setString(6, fmlyAadhar);
            
            counter = pstmt.executeUpdate();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }
    
    
    
    
    
    
    
    
}//End of class BEN_GNRL_Registraiton
