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
            String HFA_VERTICAL, String FMLY_HEAD_NM, String SEX, String FATHERS_NAME, byte fMLY_HEAD_AGE, String HOUSE_NO, String STREET, 
            String MOBILE_NO, String oWNERSHIP, String hOUSE_TYPE, byte nO_ROOMS, String AADHAR_CARD, String rELIGION, String cASTE, String BANK_NM, 
            String BANK_ACC_NO, String BRANCH_NM, String yEARS_STAY, BigDecimal SIZE_DU, byte dISABLE, String mARITAL_STATUS, byte oWNS_HOUSE_LAND, 
            String eMPLOYMENT, BigDecimal AVG_MONTHLY_INC, String BPL_CARD_NO, String hOUSING_REQ, String FMLY_HEAD_IMG_PATH, String DGTL_SIGN_ULB){
        
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
            pstmt.setString(7, HFA_VERTICAL);
            pstmt.setString(8, FMLY_HEAD_NM);
            pstmt.setString(9, SEX);
            pstmt.setString(10, FATHERS_NAME);
            pstmt.setByte(11, fMLY_HEAD_AGE);
            pstmt.setString(12, HOUSE_NO);
            pstmt.setString(13, STREET);
            pstmt.setString(14, MOBILE_NO);
            pstmt.setString(15, oWNERSHIP);
            pstmt.setString(16, hOUSE_TYPE);
            pstmt.setByte(17, nO_ROOMS);
            pstmt.setString(18, AADHAR_CARD);
            pstmt.setString(19, rELIGION);
            pstmt.setString(20, cASTE);
            pstmt.setString(21, BANK_NM);
            pstmt.setString(22, BANK_ACC_NO);
            pstmt.setString(23, BRANCH_NM);
            pstmt.setString(24, yEARS_STAY);
            pstmt.setBigDecimal(25, SIZE_DU);
            pstmt.setByte(26, dISABLE);
            pstmt.setString(27, mARITAL_STATUS);
            pstmt.setByte(28, oWNS_HOUSE_LAND);
            pstmt.setString(29, eMPLOYMENT);
            pstmt.setBigDecimal(30, AVG_MONTHLY_INC);
            pstmt.setString(31, BPL_CARD_NO);
            pstmt.setString(32, hOUSING_REQ);
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
    }//end of beneficiaryGeneralInsert
    
    
    /**
     * @author rishabhojha
     * 
     * This function inserts the data of new beneficiary family
     * member into the BEN_FAMILY_GNRL table
     * 
     * @parm
     */
    public void BeneficiaryFamilyInsert (String BEN_AADHAR, String fmlyName, String fmlyGender, String fmlyRelation,
                                        byte fmlyAge, String fmlyAadhar){
        
        sql = "INSERT INTO BEN_FAMILY_GNRL VALUES (?, ?, ?, ?, ?, ?)";
        
        try {
            pstmt = conn.prepareStatement(sql);
            
            pstmt.setString(1, BEN_AADHAR);
            pstmt.setString(2, fmlyName);
            pstmt.setString(3, fmlyRelation);
            pstmt.setString(4, fmlyGender);
            pstmt.setByte(5, fmlyAge);
            pstmt.setString(6, fmlyAadhar);
            
            counter = pstmt.executeUpdate();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }//end of BeneficiaryFamilyInsert
    
    
    /////////////////////////////////////Retrieve data from database////////////////////////////////
    
    /**
     * This function is used to retrieve the complete data of the beneficiary from the database 
     * @return
     */
    public ResultSet selectAllBEN_Gnrl (){

        sql = "SELECT * FROM BEN_SURVEY_GNRL";
        
        try {
           
            pstmt = conn.prepareStatement(sql);

            rs = pstmt.executeQuery();
            
            return rs;
            
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return rs;
        
    }//end of selectAllBEN_Gnrl
    
    
    /**
     * 
     * This function is used to retrieve the data from the BEN_SURVEY_GNRL table
     * to edit it
     * 
     * @param AADHAR_CARD
     * @return Object Of Type ResultSet
     */
    
    public ResultSet selectRecord4BEdit(String AADHAR_CARD){

        sql = "SELECT * FROM BEN_SURVEY_GNRL WHERE AADHAR_CARD = ?;";
        
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
     * 
     * This function is used to retrieve the data from the BEN_SURVEY_GNRL table
     * to edit it
     * 
     * @param AADHAR_CARD
     * @return Object Of Type ResultSet
     */
    
    public ResultSet selectRecord4B_Aadhar(String AADHAR_CARD){

        sql = "SELECT * FROM BEN_SURVEY_GNRL WHERE AADHAR_CARD LIKE ?;";
        
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
     * GNRL_beneficiary from the database
     * 
     * @param AADHAR_CARD
     * @return ResultSet
     */
    public ResultSet selectRecord4BFamilyEdit (String AADHAR_CARD){
        
        sql  = "SELECT * FROM BEN_FAMILY_GNRL WHERE BEN_AADHAR = ?";
        
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
    public int beneficiaryGeneralUpdate_IA (String STATE, String DISTRICT, String CITY, String WARD, String SLUM_NAME, String AREA_NAME, 
            String HFA_VERTICAL, String FMLY_HEAD_NM, String SEX, String FATHERS_NAME, byte fMLY_HEAD_AGE, String HOUSE_NO, String STREET, 
            String MOBILE_NO, String oWNERSHIP, String hOUSE_TYPE, byte nO_ROOMS, String AADHAR_CARD, String rELIGION, String cASTE, String BANK_NM, 
            String BANK_ACC_NO, String BRANCH_NM, String yEARS_STAY, BigDecimal SIZE_DU, byte dISABLE, String mARITAL_STATUS, byte oWNS_HOUSE_LAND, 
            String eMPLOYMENT, BigDecimal AVG_MONTHLY_INC, String BPL_CARD_NO, String hOUSING_REQ, String DGTL_SIGN_ULB,
            String OLD_AADHAR){
        
        sql = " UPDATE BEN_SURVEY_GNRL SET "
              +"  STATE = ?, DISTRICT = ?, CITY = ?, WARD = ?, SLUM_NAME = ?, AREA_NAME = ?, HFA_VERTICAL = ?,  "
              +"  FMLY_HEAD_NM = ?, SEX = ?, FATHERS_NAME = ?, FMLY_HEAD_AGE = ?,HOUSE_NO = ?, STREET = ?, "
              +"  MOBILE_NO = ?, OWNERSHIP = ?, HOUSE_TYPE = ?, NO_ROOMS = ?, AADHAR_CARD = ?, RELIGION = ?, CASTE = ?, "
              +"  BANK_NM = ?, BANK_ACC_NO = ?, BRANCH_NM = ?, YEARS_STAY = ?, SIZE_DU = ?, DISABLE = ?, MARITAL_STATUS = ?,"
              +"  OWNS_HOUSE_LAND = ?, EMPLOYMENT = ?, AVG_MONTHLY_INC = ?, "
              +"  BPL_CARD_NO = ?, HOUSING_REQ = ?, DGTL_SIGN_ULB = ? WHERE AADHAR_CARD = ?";
        
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
            pstmt.setByte(11, fMLY_HEAD_AGE);
            pstmt.setString(12, HOUSE_NO);
            pstmt.setString(13, STREET);
            pstmt.setString(14, MOBILE_NO);
            pstmt.setString(15, oWNERSHIP);
            pstmt.setString(16, hOUSE_TYPE);
            pstmt.setByte(17, nO_ROOMS);
            pstmt.setString(18, AADHAR_CARD);
            pstmt.setString(19, rELIGION);
            pstmt.setString(20, cASTE);
            pstmt.setString(21, BANK_NM);
            pstmt.setString(22, BANK_ACC_NO);
            pstmt.setString(23, BRANCH_NM);
            pstmt.setString(24, yEARS_STAY);
            pstmt.setBigDecimal(25, SIZE_DU);
            pstmt.setByte(26, dISABLE);
            pstmt.setString(27, mARITAL_STATUS);
            pstmt.setByte(28, oWNS_HOUSE_LAND);
            pstmt.setString(29, eMPLOYMENT);
            pstmt.setBigDecimal(30, AVG_MONTHLY_INC);
            pstmt.setString(31, BPL_CARD_NO);
            pstmt.setString(32, hOUSING_REQ);
            pstmt.setString(33, DGTL_SIGN_ULB);
            pstmt.setString(34, OLD_AADHAR);
           
            
            counter = pstmt.executeUpdate();
            
            System.out.println(counter);
            return counter;
            
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return counter;
    }//end of beneficiaryGnrlUpdate_IA
    
    /**
     * @author rishabhojha
     * 
     * This function update the data of a BEN_SURVEY_GNRL with image
     * into the database.
     * 
     * It is executed by the ULB only!
     * 
     * @param 
     */
    public int beneficiaryGeneralUpdate_IA_Img (String STATE, String DISTRICT, String CITY, String WARD, String SLUM_NAME, String AREA_NAME, 
            String HFA_VERTICAL, String FMLY_HEAD_NM, String SEX, String FATHERS_NAME, byte fMLY_HEAD_AGE, String HOUSE_NO, String STREET, 
            String MOBILE_NO, String oWNERSHIP, String hOUSE_TYPE, byte nO_ROOMS, String AADHAR_CARD, String rELIGION, String cASTE, String BANK_NM, 
            String BANK_ACC_NO, String BRANCH_NM, String yEARS_STAY, BigDecimal SIZE_DU, byte dISABLE, String mARITAL_STATUS, byte oWNS_HOUSE_LAND, 
            String eMPLOYMENT, BigDecimal AVG_MONTHLY_INC, String BPL_CARD_NO, String hOUSING_REQ, String FMLY_HEAD_IMG_PATH, String DGTL_SIGN_ULB,
            String OLD_AADHAR){
        
         sql = " UPDATE BEN_SURVEY_GNRL SET "
                +"  STATE = ?, DISTRICT = ?, CITY = ?, WARD = ?, SLUM_NAME = ?, AREA_NAME = ?, HFA_VERTICAL = ?,  "
                +"  FMLY_HEAD_NM = ?, SEX = ?, FATHERS_NAME = ?, FMLY_HEAD_AGE = ?,HOUSE_NO = ?, STREET = ?, "
                +"  MOBILE_NO = ?, OWNERSHIP = ?, HOUSE_TYPE = ?, NO_ROOMS = ?, AADHAR_CARD = ?, RELIGION = ?, CASTE = ?, "
                +"  BANK_NM = ?, BANK_ACC_NO = ?, BRANCH_NM = ?, YEARS_STAY = ?, SIZE_DU = ?, DISABLE = ?, MARITAL_STATUS = ?,"
                +"  OWNS_HOUSE_LAND = ?, EMPLOYMENT = ?, AVG_MONTHLY_INC = ?, "
                +"  BPL_CARD_NO = ?, HOUSING_REQ = ?, FMLY_HEAD_IMG_PATH = ?, DGTL_SIGN_ULB = ? WHERE AADHAR_CARD = ?";
          
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
              pstmt.setByte(11, fMLY_HEAD_AGE);
              pstmt.setString(12, HOUSE_NO);
              pstmt.setString(13, STREET);
              pstmt.setString(14, MOBILE_NO);
              pstmt.setString(15, oWNERSHIP);
              pstmt.setString(16, hOUSE_TYPE);
              pstmt.setByte(17, nO_ROOMS);
              pstmt.setString(18, AADHAR_CARD);
              pstmt.setString(19, rELIGION);
              pstmt.setString(20, cASTE);
              pstmt.setString(21, BANK_NM);
              pstmt.setString(22, BANK_ACC_NO);
              pstmt.setString(23, BRANCH_NM);
              pstmt.setString(24, yEARS_STAY);
              pstmt.setBigDecimal(25, SIZE_DU);
              pstmt.setByte(26, dISABLE);
              pstmt.setString(27, mARITAL_STATUS);
              pstmt.setByte(28, oWNS_HOUSE_LAND);
              pstmt.setString(29, eMPLOYMENT);
              pstmt.setBigDecimal(30, AVG_MONTHLY_INC);
              pstmt.setString(31, BPL_CARD_NO);
              pstmt.setString(32, hOUSING_REQ);
              pstmt.setString(33, FMLY_HEAD_IMG_PATH);
              pstmt.setString(34, DGTL_SIGN_ULB);
              pstmt.setString(35, OLD_AADHAR);
             
              
              counter = pstmt.executeUpdate();
              
              System.out.println(counter);
              return counter;
                     
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return counter;
    }//end of beneficiaryGnrlUpdate_IA
    

    
    
    
    /////////////////////////////////////// DELETE QUERIES ON DATABASE ////////////////////////////////
    
    /**
     * The given query deletes the table of the ben_general_family
     * before new family data for that beneficiary can be inserted
     * 
     * @param BEN_AADHAR
     * @return
     */
    public int beneficiaryGeneralFamily_Delete (String BEN_AADHAR){
        sql = "DELETE FROM BEN_FAMILY_GNRL WHERE BEN_AADHAR = ?;";
        
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
        
    }//end of beneficiaryGnrlFamily_Delete
    

    
    
}//End of class BEN_GNRL_Registraiton
