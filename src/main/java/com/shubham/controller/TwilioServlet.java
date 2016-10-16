package com.shubham.controller;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;

import com.twilio.sdk.verbs.TwiMLResponse;
import com.twilio.sdk.verbs.TwiMLException;
import com.twilio.sdk.TwilioRestException;
import com.twilio.sdk.verbs.Message;

public class TwilioServlet extends HttpServlet {

    public void service(HttpServletRequest request, HttpServletResponse response, String bodyd, String From) throws IOException {
        String body = request.getParameter("Body");
        String message = "Found Nothing";
        if (body == "hello") {
            // Use a generic message
            message = "Hi there!";
        } else if (body == "bye") {
            // Use the caller's name
            message = "Goodbye!";
        }
        String result = hashMapClass(bodyd);
        // Create a TwiML response and add our friendly message.
        TwiMLResponse twiml = new TwiMLResponse();
        Message sms = new Message(message);
        try {
            twiml.append(sms);
        } catch (TwiMLException e) {
            e.printStackTrace();
        }
        Example ex = new Example();
		try {
			ex.SMS(From, result);
//			ex.SMS("2018875323", "Tested From "+From+" d"+result);
		} catch (TwilioRestException e) {
			e.printStackTrace();
		}
        response.setContentType("application/xml");
        response.getWriter().print(twiml.toXML());
    }
    @SuppressWarnings({ "unchecked", "rawtypes" })
	public String hashMapClass(String code){
    	String result = "I apologise, please try again with correct option.d";
    	String list ="dList of subject is d1 Biology d2 Geometry d3 Chemistry d4 Algebra. dReply with subject id.";

    	HashMap data = new HashMap();
    	data.put("start" ,"This email service assists guardians to learn about their students progress reports, new facilities and future goal of school. Please select the option from below. dd a Progress Report.d b New facilities in school.d c School future development. d" );
    	data.put("restart" ,"This email service assists guardians to learn about their students’ progress reports, new facilities and future goal of school. Please select the option from below. dd a Progress Report.d b New facilities in school.d c School future development. d" );
    	data.put("end","Thank you for using Shubham Service." );
    	data.put("a","Please select the grade of the student.d(Reply with any one digit of 5, 6, and 7)");
    	data.put("b","New Facility");
    	data.put("c","Future Goal");    	
    	result = (String) data.get(code);
    	if(result==null) result = "I apologise, please try again with correct option.d"+(String) data.get("start");
    	
		return result;
    }
}