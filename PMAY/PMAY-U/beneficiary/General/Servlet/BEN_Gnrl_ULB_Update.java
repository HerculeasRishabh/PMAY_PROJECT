package beneficiary.General.Servlet;

import java.io.File;




import java.io.IOException;
import java.math.BigDecimal;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import beneficiary.General.connection.*;

/**
 * Servlet implementation class BEN_Gnrl_ULB_Update
 */
@WebServlet("/BEN_Gnrl_ULB_Update")
@MultipartConfig(fileSizeThreshold=1024*1024*2,
maxFileSize=1024*1024*5)
public class BEN_Gnrl_ULB_Update extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String SAVE_DIR="ImagesBeneficiary";
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BEN_Gnrl_ULB_Update() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	    response.setContentType("text/html");
	    
        String savePath = "/Users/rishabhojha/git/PMAY_PROJECT/PMAY/WebContent/PMAY-U" + File.separator + SAVE_DIR;
        File fileSaveDir=new File(savePath);
        if(!fileSaveDir.exists()){
            fileSaveDir.mkdir();
        }
        
        String STATE = request.getParameter ("stateName");
        String DISTRICT = request.getParameter ("districtName");
        String CITY = request.getParameter ("cityName");
        String WARD = request.getParameter ("wardName");
        String SLUM_NAME = request.getParameter ("slumName");
        String AREA_NAME = request.getParameter ("areaName");
        String HFA_VERTICAL = request.getParameter("compName"); 
        String FMLY_HEAD_NM = request.getParameter ("famHeadName");
        String SEX = request.getParameter ("gender");
        String FATHERS_NAME = request.getParameter ("fathersName");
        String FMLY_HEAD_AGE = request.getParameter ("headAge");
        String HOUSE_NO = request.getParameter ("addressHouseNumber");
        String STREET = request.getParameter ("addressStreetName");
        String MOBILE_NO = request.getParameter ("mobileNumber");
        String OWNERSHIP = request.getParameter ("ownershipDetails");
        String HOUSE_TYPE = request.getParameter ("houseType");
        String NO_ROOMS = request.getParameter ("noOfRooms");
        String AADHAR_CARD = request.getParameter ("aadharNumber");
        String RELIGION = request.getParameter ("religionName");
        String CASTE = request.getParameter ("casteName");
        String BANK_NM = request.getParameter ("bankName");
        String BANK_ACC_NO = request.getParameter ("accountNumber");
        String BRANCH_NM = request.getParameter ("branchName");
        String YEARS_STAY = request.getParameter ("yearStay");
        String SIZE_DU = request.getParameter ("dwellingUnits");
        String DISABLE = request.getParameter ("disability");
        String MARITAL_STATUS = request.getParameter ("maritalStatus");
        String OWNS_HOUSE_LAND = request.getParameter ("ownsHouseLand");
        String EMPLOYMENT = request.getParameter ("employmentStatus");
        String AVG_MONTHLY_INC = request.getParameter ("monthlyIncome");
        String BPL_CARD_NO = request.getParameter ("BLP_Card_No");
        String HOUSING_REQ = request.getParameter ("housingRequirement");
        
        HttpSession session = request.getSession();
        
        String DGTL_SIGN_ULB = (String) session.getAttribute("ULB_SIGN");
        String OLD_AADHAR = request.getParameter("old_aadhar");
        String img = request.getParameter("img");
        
        int run = -1;
        
        BEN_GNRL_Registration obj = new BEN_GNRL_Registration();
        
        if (Integer.parseInt(img)== 1){

            Part IMG_PATH = request.getPart ("imageBeneficiary");
            
            String time = new SimpleDateFormat("yyyy.MM.dd.HH.mm.ss").format(new Timestamp(System.currentTimeMillis()));
            IMG_PATH.write(savePath + File.separator + time + ".jpg" );
            String FMLY_HEAD_IMG_PATH= savePath + File.separator + time + ".jpg"; 
            
            run = obj.beneficiaryGeneralUpdate_IA_Img(STATE, DISTRICT, CITY, WARD, SLUM_NAME, AREA_NAME, HFA_VERTICAL, FMLY_HEAD_NM, SEX, FATHERS_NAME,
                    Byte.parseByte(FMLY_HEAD_AGE), HOUSE_NO, STREET, MOBILE_NO, OWNERSHIP, HOUSE_TYPE, Byte.parseByte(NO_ROOMS), AADHAR_CARD, RELIGION, CASTE, BANK_NM, 
                    BANK_ACC_NO, BRANCH_NM, YEARS_STAY, new BigDecimal (SIZE_DU), Byte.parseByte(DISABLE), MARITAL_STATUS, Byte.parseByte(OWNS_HOUSE_LAND), EMPLOYMENT, new BigDecimal (AVG_MONTHLY_INC), 
                    BPL_CARD_NO, HOUSING_REQ, FMLY_HEAD_IMG_PATH, DGTL_SIGN_ULB, OLD_AADHAR);
            
        }else{
            
            run = obj.beneficiaryGeneralUpdate_IA(STATE, DISTRICT, CITY, WARD, SLUM_NAME, AREA_NAME, HFA_VERTICAL, FMLY_HEAD_NM, SEX, FATHERS_NAME,
                    Byte.parseByte(FMLY_HEAD_AGE), HOUSE_NO, STREET, MOBILE_NO, OWNERSHIP, HOUSE_TYPE, Byte.parseByte(NO_ROOMS), AADHAR_CARD, RELIGION, CASTE, BANK_NM, 
                    BANK_ACC_NO, BRANCH_NM, YEARS_STAY, new BigDecimal (SIZE_DU), Byte.parseByte(DISABLE), MARITAL_STATUS, Byte.parseByte(OWNS_HOUSE_LAND), EMPLOYMENT, new BigDecimal (AVG_MONTHLY_INC), 
                    BPL_CARD_NO, HOUSING_REQ, DGTL_SIGN_ULB, OLD_AADHAR);
            
        }
        
        
        if (run != -1 ){
            obj.beneficiaryGeneralFamily_Delete(AADHAR_CARD);
            
            String [] fmlyNames = request.getParameterValues("nameFam");
            String [] fmlyGender  = request.getParameterValues("memberGenderFam");
            String [] fmlyRelation = request.getParameterValues("memberRelationFam");
            String [] fmlyAge = request.getParameterValues("memberAgeFam");
            String [] fmlyAadhar = request.getParameterValues("memberAadharFam"); 
            
            for (int i = 0; i < fmlyNames.length; i++){
                
                obj.BeneficiaryFamilyInsert(AADHAR_CARD, fmlyNames[i], fmlyRelation[i], fmlyGender[i],
                                        Byte.parseByte(fmlyAge[i]), fmlyAadhar[i]);
            }
            
        }       
        
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
