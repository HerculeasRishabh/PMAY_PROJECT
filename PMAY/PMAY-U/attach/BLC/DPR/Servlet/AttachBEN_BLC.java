package attach.BLC.DPR.Servlet;

import attach.BLC.DPR.connection.*;


import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class AttachBEN_BLC
 */
@WebServlet("/AttachBEN_BLC")
public class AttachBEN_BLC extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AttachBEN_BLC() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	    
	    AttachBEN obj = new AttachBEN ();
	    
	    ResultSet RS = obj.selectAllBEN_Gnrl();
	    
	    String [] attach = request.getParameterValues("attach");
	    HttpSession session3 = request.getSession();
	    
	    int BLC_DPR_NO = Integer.parseInt((String) session3.getAttribute("blcDPR_name"));
	    
	    for (int i = 0; i < attach.length; i++){
	        
	        try {
                RS.next();
                
                if (Integer.parseInt(attach[i]) == 1){
                    
                    obj.attachBEN_BLC(RS.getInt(1), BLC_DPR_NO);
                    obj.updateBEN_Status_Add(RS.getInt(1));
                    }
            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
	    }
	}//end of doGet

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
