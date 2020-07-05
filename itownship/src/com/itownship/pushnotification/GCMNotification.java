package com.itownship.pushnotification;

import java.io.BufferedReader;

import java.io.BufferedWriter;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.android.gcm.server.Message;
import com.google.android.gcm.server.MulticastResult;
import com.google.android.gcm.server.Sender;

import databaseConnection.DBConnection;

@WebServlet("/adminpanel/pushnotification/GCMNotification")
public class GCMNotification extends HttpServlet {
	private static final long serialVersionUID = 1L;

	// Put your Google API Server Key here
	private static final String GOOGLE_SERVER_KEY = "AIzaSyDVV-gW-95BuYt4oALIhT1bXg9RQQCEvj8";
	static final String MESSAGE_KEY = "message";
	static final String REG_ID_STORE = "C:/Users/Mayur/workspace/itownship/src/com/itownship/pushnotification/GCMRegId.txt";
	
	static final String [] REG_IDS = new String[10];

	public GCMNotification() {
		super();
	}

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);

	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		MulticastResult result = null;

		String share = request.getParameter("shareRegId");

		// GCM RedgId of Android device to send push notification

		if (share != null && !share.isEmpty()) {
			
			try {
				writeToFile(request.getParameter("regId"));
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				System.out.println(e);
			}
			
			request.setAttribute("pushStatus", "GCM RegId Received.");
			request.getRequestDispatcher("index.jsp")
					.forward(request, response);
		} else {

			try {

				String userMessage = request.getParameter("message");
				Sender sender = new Sender(GOOGLE_SERVER_KEY);
				Message message = new Message.Builder().timeToLive(30)
						.delayWhileIdle(true).addData(MESSAGE_KEY, userMessage)
						.build();
				Set<String> regIdSet = readFromFile();
				System.out.println("regId: " + regIdSet);
				List<String> regIdList = new ArrayList<String>();
				regIdList.addAll(regIdSet);
				result = sender.send(message, regIdList, 1);
				request.setAttribute("pushStatus", result.toString());
			} catch (IOException ioe) {
				ioe.printStackTrace();
				request.setAttribute("pushStatus",
						"RegId required: " + ioe.toString());
			} catch (Exception e) {
				e.printStackTrace();
				request.setAttribute("pushStatus", e.toString());
			}
			request.getRequestDispatcher("index.jsp")
					.forward(request, response);
		}
	}

	private void writeToFile(String regId) throws IOException, ClassNotFoundException, SQLException {
		Set<String> regIdSet = readFromFile();
		System.out.println(regIdSet+"RigdSet");

		if (!regIdSet.contains(regId)) {
			PrintWriter out = new PrintWriter(new BufferedWriter(
					new FileWriter(REG_ID_STORE, true)));
			out.println(regId);
			
			String query = "insert into notification (`regId`) values ('"+regId+"')";
			DBConnection.getPreparedStatement(query).execute();	
			System.out.println("RegId : "+regId+" is added in database");
			out.close();
		}

	}

	private Set<String> readFromFile() throws IOException, ClassNotFoundException, SQLException {
		BufferedReader br = new BufferedReader(new FileReader(REG_ID_STORE));
		String regId = "";
		Set<String> regIdSet = new HashSet<String>();
		while ((regId = br.readLine()) != null) {
			regIdSet.add(regId);
		}
		
		String query = "select * from notification";
		ResultSet rs = DBConnection.getPreparedStatement(query).executeQuery();
		while(rs.next()){
			String reggId = rs.getString("regId");
			regIdSet.add(reggId);
		}
		
		System.out.println("RegId : "+regId+" is added in database");
	
		br.close();
		return regIdSet;
	}
}
