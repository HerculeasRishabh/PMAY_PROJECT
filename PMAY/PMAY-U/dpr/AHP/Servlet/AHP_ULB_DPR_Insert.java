package dpr.AHP.Servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dpr.AHP.connection.*;
/**
 * Servlet implementation class AHP_ULB_DPR_Insert
 */
@WebServlet("/AHP_ULB_DPR_Insert")
public class AHP_ULB_DPR_Insert extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AHP_ULB_DPR_Insert() {
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
	    String IA_NAME = request.getParameter ("implementingAgency");
	    float HOUSING_COST = Float.parseFloat(request.getParameter ("projectCostHousing"));
	    float INFRA_COST = Float.parseFloat(request.getParameter ("projectInfrastructure"));
	    float OTHER_COST = Float.parseFloat(request.getParameter ("othersCost"));
	    int EWS_GEN = Integer.parseInt(request.getParameter ("ewsBeneficiariesGeneral"));
	    int EWS_SC = Integer.parseInt(request.getParameter ("ewsBeneficiariesSC"));
	    int ESW_ST = Integer.parseInt(request.getParameter ("ewsBeneficiariesST"));
	    int EWS_OBC = Integer.parseInt(request.getParameter ("ewsBeneficiariesOBC"));
	    int EWS_MINORITY = Integer.parseInt(request.getParameter ("ewsBeneficiariesMinority"));
	    byte PMAY_GUIDELINES = Byte.parseByte(request.getParameter ("pmayGuidelines"));
	    float COST_EWS_UNIT = Float.parseFloat(request.getParameter ("constructionCost"));
	    byte PROJECT_DURATION = Byte.parseByte(request.getParameter ("projectDuration"));
	    byte STATE_SALES_PRICE = Byte.parseByte(request.getParameter ("salesPriceProvided"));
	    float CARPET_AREA_EWS = Float.parseFloat(request.getParameter ("carpetArea"));
	    int EWS_UNIT = Integer.parseInt(request.getParameter ("houseProposedEWS"));
	    int LIG_UNIT = Integer.parseInt(request.getParameter ("houseProposedLIG"));
	    int MIG_UNIT = Integer.parseInt(request.getParameter ("houseProposedMIG"));
	    int HIG_UNIT = Integer.parseInt(request.getParameter ("houseProposedHIG"));
	    int COMMERCIAL_UNIT = Integer.parseInt(request.getParameter ("houseProposedCommercial"));
	    byte PROCEDURE_PPP = Byte.parseByte(request.getParameter ("transparentProcedure"));
	    int ELIGIBLE_EWS = Integer.parseInt(request.getParameter ("eligibleHousesEWS"));
	    float STATE_GRANT = Float.parseFloat(request.getParameter ("stateGrant"));
	    float LAND_COST = Float.parseFloat(request.getParameter ("landCost"));
	    float CASH_GRANT = Float.parseFloat(request.getParameter ("cashGrant"));
	    float IA_SHARE = Float.parseFloat(request.getParameter ("implementingAgencyShare"));
	    float BEN_SHARE = Float.parseFloat(request.getParameter ("beneficiaryShare"));
	    byte TECH_SPECIFICATION = Byte.parseByte(request.getParameter ("technicalSpecification"));
	    byte TRUNK_INFRA = Byte.parseByte(request.getParameter ("trunkInfrastructure"));
	    byte WATER = Byte.parseByte(request.getParameter ("waterSupply"));
	    byte SEWERAGE = Byte.parseByte(request.getParameter ("sewrage"));
	    byte ROAD = Byte.parseByte(request.getParameter ("road"));
	    byte WATER_DRAIN = Byte.parseByte(request.getParameter ("stormWaterDrain"));
	    byte ELECTRIFICATION = Byte.parseByte(request.getParameter ("externalElectrification"));
	    byte WASTE_MANAGEMENT = Byte.parseByte(request.getParameter ("solidWasteManagement"));
	    String OTHER_INFRA = request.getParameter ("anyOtherRequirement");
	    byte SOCIAL_INFRA = Byte.parseByte(request.getParameter ("socialInfrastructure"));
	    byte DESASTER_RESISTANT = Byte.parseByte(request.getParameter ("disasterManagement"));
	    byte QUALITY_ASSURANCE = Byte.parseByte(request.getParameter ("qualityAssurance"));
	    byte Q_N_M = Byte.parseByte(request.getParameter ("partOnm"));
	    byte ENCUMB_FREE_LAND = Byte.parseByte(request.getParameter ("encumbanceFreeLand"));
	    byte GREEN_TECH = Byte.parseByte(request.getParameter ("projectInnovation"));
	    String SLAC_COMMENT = request.getParameter ("commentSLAC");
	    String OTHER_INFO = request.getParameter ("projectBrief");
	    
	    HttpSession session = request.getSession();
        
        String ULB_DIGITAL_SIGN = (String) session.getAttribute("ULB_SIGN");
	    
	    
	    double CENTRAL_GRANT = ELIGIBLE_EWS * 1.5;
	    
	    DPR_AHP_connection obj = new DPR_AHP_connection ();
	    
	    obj.ahp_DPR_Insert(STATE, DISTRICT, CITY, PORJECT_NM, SLNA_NM, IA_NAME, HOUSING_COST, 
	            INFRA_COST, OTHER_COST, EWS_GEN, EWS_SC, ESW_ST, EWS_OBC, EWS_MINORITY, PMAY_GUIDELINES, 
	            COST_EWS_UNIT, PROJECT_DURATION, STATE_SALES_PRICE, CARPET_AREA_EWS, EWS_UNIT, LIG_UNIT, 
	            MIG_UNIT, HIG_UNIT, COMMERCIAL_UNIT, PROCEDURE_PPP, ELIGIBLE_EWS, CENTRAL_GRANT, STATE_GRANT, 
	            LAND_COST, CASH_GRANT, IA_SHARE, BEN_SHARE, TECH_SPECIFICATION, TRUNK_INFRA, WATER, SEWERAGE, 
	            ROAD, WATER_DRAIN, ELECTRIFICATION, WASTE_MANAGEMENT, OTHER_INFRA, SOCIAL_INFRA, DESASTER_RESISTANT, 
	            QUALITY_ASSURANCE, Q_N_M, ENCUMB_FREE_LAND, GREEN_TECH, SLAC_COMMENT, OTHER_INFO, ULB_DIGITAL_SIGN);
	    
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
