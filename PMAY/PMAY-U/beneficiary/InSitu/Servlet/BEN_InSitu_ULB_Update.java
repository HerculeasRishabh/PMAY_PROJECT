package beneficiary.InSitu.Servlet;

import java.io.File;
import java.io.IOException;
import java.math.BigDecimal;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import beneficiary.InSitu.connection.BEN_InSitu_Register;

/**
 * Servlet implementation class BEN_InSitu_ULB_Update
 */
@WebServlet("/BEN_InSitu_ULB_Update")
public class BEN_InSitu_ULB_Update extends HttpServlet {
    private static final String SAVE_DIR="ImagesBeneficiaryInSitu";
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BEN_InSitu_ULB_Update() {
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
        String HFA_VERTICAL = request.getParameter ("vertical"); 
        String FMLY_HEAD_NM = request.getParameter ("famHeadName");
        byte SEX = Byte.parseByte(request.getParameter ("gender"));
        String FATHERS_NAME = request.getParameter ("fathersName");
        byte FMLY_HEAD_AGE = Byte.parseByte(request.getParameter ("headAge"));
        String HOUSE_NO = request.getParameter ("addressHouseNumber");
        String STREET = request.getParameter ("addressStreetName");
        String MOBILE_NO = request.getParameter ("mobileNumber");
        String AADHAR_CARD = request.getParameter ("aadharNumber");
        byte RELIGION = Byte.parseByte(request.getParameter ("religionName"));
        byte CASTE = Byte.parseByte(request.getParameter ("casteName"));
        byte DISABLE = Byte.parseByte(request.getParameter ("disability"));
        byte MARITAL_STATUS = Byte.parseByte(request.getParameter ("maritalStatus"));
        byte OWNS_HOUSE_LAND = Byte.parseByte(request.getParameter ("ownsHouseLand"));
        byte OWNERSHIP_DETAILS = Byte.parseByte(request.getParameter ("ownershipDetails"));
        BigDecimal AVG_MONTHLY_INC = new BigDecimal (request.getParameter ("monthlyIncome"));
        Part IMG_PATH = request.getPart ("imageBeneficiary");
        //String DGTL_SIGN_ULB = request.getParameter ("");
        String DGTL_SIGN_ULB = "Test1";
        String OLD_AADHAR = request.getParameter("old_aadhar");
        
        String time = new SimpleDateFormat("yyyy.MM.dd.HH.mm.ss").format(new Timestamp(System.currentTimeMillis()));
        IMG_PATH.write(savePath + File.separator + time + ".jpg" );
        String FMLY_HEAD_IMG_PATH= savePath + File.separator + time + ".jpg";
        
        BEN_InSitu_Register obj = new BEN_InSitu_Register();
        
        int run = obj.beneficiaryInSituUpdate_IA(STATE, DISTRICT, CITY, WARD, SLUM_NAME, AREA_NAME, HFA_VERTICAL, FMLY_HEAD_NM, SEX, FATHERS_NAME, 
                FMLY_HEAD_AGE, HOUSE_NO, STREET, MOBILE_NO, AADHAR_CARD, RELIGION, CASTE, DISABLE, MARITAL_STATUS, OWNS_HOUSE_LAND, OWNERSHIP_DETAILS, 
                AVG_MONTHLY_INC, FMLY_HEAD_IMG_PATH, DGTL_SIGN_ULB, OLD_AADHAR);
        
        if (run != -1 ){
            obj.beneficiaryInSituFamily_Delete(OLD_AADHAR);
            
            String [] fmlyNames = request.getParameterValues("nameFam");
            String [] fmlyGender  = request.getParameterValues("memberGenderFam");
            String [] fmlyRelation = request.getParameterValues("memberRelationFam");
            String [] fmlyAge = request.getParameterValues("memberAgeFam");
            String [] fmlyAadhar = request.getParameterValues("memberAadharFam"); 
            
            for (int i = 0; i < fmlyNames.length; i++){
                
                obj.BeneficiaryFamilyInsert(AADHAR_CARD, fmlyNames[i], Byte.parseByte(fmlyRelation[i]), Byte.parseByte(fmlyGender[i]),
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
