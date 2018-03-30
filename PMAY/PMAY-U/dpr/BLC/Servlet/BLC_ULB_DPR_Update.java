package dpr.BLC.Servlet;

import dpr.BLC.connection.*;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class BLC_ULB_DPR_Update
 */
@WebServlet("/BLC_ULB_DPR_Update")
public class BLC_ULB_DPR_Update extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BLC_ULB_DPR_Update() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	    String STATE = request.getParameter ("stateName");
        String DISTRICT = request.getParameter ("districtName");
        String CITY = request.getParameter ("cityName");
        String PORJECT_NM = request.getParameter ("projectName");
        String SLNA_NM = request.getParameter ("SLNA_name");
        String IA_NAME = request.getParameter ("IA_name");
        int GEN_OLD = Integer.parseInt (request.getParameter ("oldBenGnrl"));
        int SC_OLD = Integer.parseInt (request.getParameter ("oldBenSC"));
        int ST_OLD = Integer.parseInt (request.getParameter ("oldBenST"));
        int OBC_OLD = Integer.parseInt (request.getParameter ("oldBenOBC"));
        int MINORITY_OLD = Integer.parseInt (request.getParameter ("oldBenMinority"));
        int GEN_NEW = Integer.parseInt (request.getParameter ("newBenGnrl"));
        int SC_NEW = Integer.parseInt (request.getParameter ("newBenSC"));
        int ST_NEW = Integer.parseInt (request.getParameter ("newBenST"));
        int OBC_NEW = Integer.parseInt (request.getParameter ("newBenOBC"));
        int MINORITY_NEW = Integer.parseInt (request.getParameter ("newBenMinority"));
        byte PMAY_GUIDELINES = Byte.parseByte (request.getParameter("pmayGuidelines"));
        byte OWNERSHIP = Byte.parseByte (request.getParameter("ownershipEnsured"));
        byte BUILDING_PLAN = Byte.parseByte (request.getParameter("buildingPlanApproval"));
        float STATE_GRANT = Float.parseFloat (request.getParameter ("stateGrant"));
        float ULB_GRANT = Float.parseFloat (request.getParameter ("ulbGrant"));
        float BEN_SHARE = Float.parseFloat (request.getParameter ("benShare"));
        byte TECH_SPECIFICATION = Byte.parseByte (request.getParameter("techSpecification"));
        byte ENSURED_BALANCE_COST = Byte.parseByte (request.getParameter("ensuredBalanceCost"));
        byte WATER = Byte.parseByte (request.getParameter("waterSupply"));
        byte SEWERAGE = Byte.parseByte (request.getParameter("sewerageFacility"));
        byte ROAD = Byte.parseByte (request.getParameter("roadFacility"));
        byte WATER_DRAIN = Byte.parseByte (request.getParameter("stormDrain"));
        byte ELECTRIFICATION = Byte.parseByte (request.getParameter("externalElectrification"));
        byte WASTE_MANAGEMENT = Byte.parseByte (request.getParameter("solidWasteManagement"));
        String OTHER_INFRA = request.getParameter ("anyOtherRequirement");
        byte DESASTER_RESISTANT = Byte.parseByte (request.getParameter("disasterResistence"));
        byte DEMAND_SURVEY = Byte.parseByte (request.getParameter("demandSurvey"));
        byte CITY_WIDE_INTEGRATED = Byte.parseByte (request.getParameter("cityWideurvey"));
        byte SECC_VALIDATION = Byte.parseByte (request.getParameter("validationWithSECC"));
        byte ENSURE_DBT = Byte.parseByte (request.getParameter("directBenefitTransfer"));
        byte GEO_TAGGING_DPR = Byte.parseByte (request.getParameter("geoTagInDPR"));
        byte GREEN_TECH = Byte.parseByte (request.getParameter("innovativeProject"));
        String OTHER_INFO = request.getParameter ("otherInfo");
        HttpSession session = request.getSession();
        
        String DGTL_SIGN_ULB = (String) session.getAttribute("ULB_SIGN");;
        int BLC_PROJECT_NO = Integer.parseInt(request.getParameter("BLC_PROJECT_NO"));
        
        double CENTRAL_GRANT = (GEN_OLD + SC_OLD + ST_OLD + OBC_OLD + MINORITY_OLD +
                             GEN_NEW + SC_NEW + ST_NEW + OBC_NEW + MINORITY_NEW) * 1.5;
        double PROJECT_COST = CENTRAL_GRANT + STATE_GRANT + ULB_GRANT + BEN_SHARE;
        
        DPR_BLC_connection obj = new DPR_BLC_connection();
        
        obj.blc_DPR_Update_IA(STATE, DISTRICT, CITY, PORJECT_NM, SLNA_NM, IA_NAME, PROJECT_COST, GEN_OLD, SC_OLD, 
                ST_OLD, OBC_OLD, MINORITY_OLD, GEN_NEW, SC_NEW, ST_NEW, OBC_NEW, MINORITY_NEW, PMAY_GUIDELINES, 
                OWNERSHIP, BUILDING_PLAN, CENTRAL_GRANT, STATE_GRANT, ULB_GRANT, BEN_SHARE, TECH_SPECIFICATION, 
                ENSURED_BALANCE_COST, WATER, SEWERAGE, ROAD, WATER_DRAIN, ELECTRIFICATION, WASTE_MANAGEMENT, 
                OTHER_INFRA, DESASTER_RESISTANT, DEMAND_SURVEY, CITY_WIDE_INTEGRATED, SECC_VALIDATION, ENSURE_DBT, 
                GEO_TAGGING_DPR, GREEN_TECH, OTHER_INFO, DGTL_SIGN_ULB, BLC_PROJECT_NO);
        
        
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
