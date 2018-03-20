package beneficiary.General.Servlet;

import beneficiary.General.connection.*;


import java.io.File;
import java.io.IOException;
import java.math.BigDecimal;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.sql.*;
import java.text.SimpleDateFormat;

import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.Part;

/**
 * Servlet implementation class BEN_Registration
 */
@WebServlet("/BEN_Registration")
@MultipartConfig(fileSizeThreshold=1024*1024*2,
maxFileSize=1024*1024*5)
public class BEN_Registration extends HttpServlet {
    private static final String SAVE_DIR="ImagesBeneficiary";
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BEN_Registration() {
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
         byte HFA_VERTICAL = Byte.parseByte(request.getParameter("compName")); 
         String FMLY_HEAD_NM = request.getParameter ("famHeadName");
         byte SEX = Byte.parseByte(request.getParameter ("gender"));
         String FATHERS_NAME = request.getParameter ("fathersName");
         byte FMLY_HEAD_AGE = Byte.parseByte(request.getParameter ("headAge"));
         String HOUSE_NO = request.getParameter ("addressHouseNumber");
         String STREET = request.getParameter ("addressStreetName");
         String MOBILE_NO = request.getParameter ("mobileNumber");
         byte OWNERSHIP = Byte.parseByte(request.getParameter ("ownershipDetails"));
         byte HOUSE_TYPE = Byte.parseByte(request.getParameter ("houseType"));
         byte NO_ROOMS = Byte.parseByte(request.getParameter ("noOfRooms"));
         String AADHAR_CARD = request.getParameter ("aadharNumber");
         byte RELIGION = Byte.parseByte(request.getParameter ("religionName"));
         byte CASTE = Byte.parseByte(request.getParameter ("casteName"));
         String BANK_NM = request.getParameter ("bankName");
         String BANK_ACC_NO = request.getParameter ("accountNumber");
         String BRANCH_NM = request.getParameter ("branchName");
         byte YEARS_STAY = Byte.parseByte(request.getParameter ("yearStay"));
         BigDecimal SIZE_DU = new BigDecimal (request.getParameter ("dwellingUnits"));
         byte DISABLE = Byte.parseByte(request.getParameter ("disability"));
         byte MARITAL_STATUS = Byte.parseByte(request.getParameter ("maritalStatus"));
         byte OWNS_HOUSE_LAND = Byte.parseByte(request.getParameter ("ownsHouseLand"));
         byte EMPLOYMENT = Byte.parseByte(request.getParameter ("employmentStatus"));;
         BigDecimal AVG_MONTHLY_INC = new BigDecimal (request.getParameter ("monthlyIncome"));
         String BPL_CARD_NO = request.getParameter ("BLP_Card_No");
         byte HOUSING_REQ = Byte.parseByte(request.getParameter ("housingRequirement"));
         Part IMG_PATH = request.getPart ("imageBeneficiary");
         //String DGTL_SIGN_ULB = request.getParameter ("");
         String DGTL_SIGN_ULB = "Test1";
         
         String time = new SimpleDateFormat("yyyy.MM.dd.HH.mm.ss").format(new Timestamp(System.currentTimeMillis()));
         IMG_PATH.write(savePath + File.separator + time + ".jpg" );
         String FMLY_HEAD_IMG_PATH= savePath + File.separator + time + ".jpg";
         
         BEN_GNRL_Registration obj = new BEN_GNRL_Registration();
         
         obj.beneficiaryGeneralInsert(STATE, DISTRICT, CITY, WARD, SLUM_NAME, AREA_NAME, HFA_VERTICAL, FMLY_HEAD_NM, SEX, FATHERS_NAME,
                 FMLY_HEAD_AGE, HOUSE_NO, STREET, MOBILE_NO, OWNERSHIP, HOUSE_TYPE, NO_ROOMS, AADHAR_CARD, RELIGION, CASTE, BANK_NM, 
                 BANK_ACC_NO, BRANCH_NM, YEARS_STAY, SIZE_DU, DISABLE, MARITAL_STATUS, OWNS_HOUSE_LAND, EMPLOYMENT, AVG_MONTHLY_INC, 
                 BPL_CARD_NO, HOUSING_REQ, FMLY_HEAD_IMG_PATH, DGTL_SIGN_ULB);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
