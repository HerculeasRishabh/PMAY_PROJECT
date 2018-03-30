package dpr.InSitu.Servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dpr.InSitu.connection.DPR_InSitu_connection;

/**
 * Servlet implementation class InSitu_ULB_DPR_Update
 */
@WebServlet("/InSitu_ULB_DPR_Update")
public class InSitu_ULB_DPR_Update extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InSitu_ULB_DPR_Update() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

        String STATE = request.getParameter("stateName");
        String DISTRICT = request.getParameter("districtName");
        String CITY = request.getParameter("cityName");
        String SLUM = request.getParameter("slumName");
        String PORJECT_NM = request.getParameter("projectName");
        String SLNA_NM = request.getParameter("stateNodal");
        String IA_NAME = request.getParameter("IA_name");
        double PROJECT_COST = Double.parseDouble (request.getParameter("projectCost"));
        byte PROJECT_DURATION = Byte.parseByte (request.getParameter("projectDuration"));
        byte SLUM_STATUS = Byte.parseByte (request.getParameter("slumStatus"));
        float SLUM_AREA = Float.parseFloat (request.getParameter("slumArea"));
        float AREA_REHAB = Float.parseFloat (request.getParameter("rehabilitationArea"));
        int SLUM_POPULATION = Integer.parseInt (request.getParameter("slumPopulation"));
        int GEN_OLD = Integer.parseInt (request.getParameter("general"));
        int SC_OLD = Integer.parseInt (request.getParameter("sc"));
        int ST_OLD = Integer.parseInt (request.getParameter("st"));
        int OBC_OLD = Integer.parseInt (request.getParameter("obc"));
        int MINORITY_OLD = Integer.parseInt (request.getParameter("minority"));
        int GEN_NEW = Integer.parseInt (request.getParameter("general1"));
        int SC_NEW = Integer.parseInt (request.getParameter("sc1"));
        int ST_NEW = Integer.parseInt (request.getParameter("st1"));
        int OBC_NEW = Integer.parseInt (request.getParameter("obc1"));
        int MINORITY_NEW = Integer.parseInt (request.getParameter("minority1"));
        int HOUSE_PROPOSED = Integer.parseInt (request.getParameter("houseProposed"));
        float TOTAL_CAPR_AREA = Float.parseFloat (request.getParameter("carpetArea"));
        byte PMAY_GUIDELINES = Byte.parseByte (request.getParameter("pmayGuidelines"));
        byte OPEN_PPP = Byte.parseByte (request.getParameter("privatePartner"));
        float EXISTING_FSI = Float.parseFloat (request.getParameter("fsiArea"));
        float FSI_PROVIDED = Float.parseFloat (request.getParameter("providedFsi"));
        String OTHER_INCENTIVE = request.getParameter("otherIncentives");
        float STATE_GRANT = Float.parseFloat (request.getParameter("stateGrant"));
        float ULB_GRANT = Float.parseFloat (request.getParameter("ulbGrant"));
        float BEN_SHARE = Float.parseFloat (request.getParameter("beneficiaryShare"));
        byte TECH_SPECIFICATION = Byte.parseByte (request.getParameter("techSpecification"));
        byte TEMP_ARRANGEMENT = Byte.parseByte (request.getParameter("arrangementType"));
        byte TRUNK_INFRA = Byte.parseByte (request.getParameter("trunkInfrastructure"));
        byte WATER = Byte.parseByte (request.getParameter("waterSupply"));
        byte SEWERAGE = Byte.parseByte (request.getParameter("sewerageFacility"));
        byte ROAD = Byte.parseByte (request.getParameter("roadFacility"));
        byte WATER_DRAIN = Byte.parseByte (request.getParameter("stormDrain"));
        byte ELECTRIFICATION = Byte.parseByte (request.getParameter("externalElectrification"));
        byte WASTE_MANAGEMENT = Byte.parseByte (request.getParameter("solidWasteManagement"));
        String OTHER_INFRA = request.getParameter("anyOtherRequirement");
        byte DESASTER_RESISTANT = Byte.parseByte (request.getParameter("disasterResistence"));
        byte QUALITY_ASSURANCE = Byte.parseByte (request.getParameter("qualityAssurance"));
        byte QNM = Byte.parseByte (request.getParameter("onm"));
        byte ENCUMB_FREE = Byte.parseByte (request.getParameter("freeLand"));
        byte GREEN_TECH = Byte.parseByte (request.getParameter("innovativeProject"));
        String SLAC_COMMENT = request.getParameter("comments");
        String OTHER_INFO = request.getParameter("projectBrief");
        HttpSession session = request.getSession();
        
        String DGTL_SIGN_ULB = (String) session.getAttribute("ULB_SIGN");
        int INSITU_PROJECT_NO = Integer.parseInt(request.getParameter("INSITU_PROJECT_NO"));
        

        double CENTRAL_GRANT = (GEN_OLD + SC_OLD + ST_OLD + MINORITY_OLD + GEN_NEW + SC_NEW + ST_NEW + MINORITY_NEW) * 1.0;
        
        DPR_InSitu_connection obj = new DPR_InSitu_connection ();
        
        obj.inSitu_DPR_Update_IA(STATE, DISTRICT, CITY, SLUM, PORJECT_NM, SLNA_NM, IA_NAME, PROJECT_COST, PROJECT_DURATION, 
                SLUM_STATUS, SLUM_AREA, AREA_REHAB, SLUM_POPULATION, GEN_OLD, SC_OLD, ST_OLD, OBC_OLD, MINORITY_OLD, GEN_NEW,
                SC_NEW, ST_NEW, OBC_NEW, MINORITY_NEW, HOUSE_PROPOSED, TOTAL_CAPR_AREA, PMAY_GUIDELINES, OPEN_PPP, EXISTING_FSI, 
                FSI_PROVIDED, OTHER_INCENTIVE, CENTRAL_GRANT, STATE_GRANT, ULB_GRANT, BEN_SHARE, TECH_SPECIFICATION, TEMP_ARRANGEMENT, 
                TRUNK_INFRA, WATER, SEWERAGE, ROAD, WATER_DRAIN, ELECTRIFICATION, WASTE_MANAGEMENT, OTHER_INFRA, DESASTER_RESISTANT, 
                QUALITY_ASSURANCE, QNM, ENCUMB_FREE, GREEN_TECH, SLAC_COMMENT, OTHER_INFO, DGTL_SIGN_ULB, INSITU_PROJECT_NO);
        

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
