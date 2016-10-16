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
//			ex.SMS("2018875323", "Tested From "+From+" \n"+result);
		} catch (TwilioRestException e) {
			e.printStackTrace();
		}
        response.setContentType("application/xml");
        response.getWriter().print(twiml.toXML());
    }
    @SuppressWarnings({ "unchecked", "rawtypes" })
	public String hashMapClass(String code){
    	String result = "I apologise, please try again with correct option.\n";
    	String list ="\nList of subject is \n1 Biology \n2 Geometry \n3 Chemistry \n4 Algebra. \nReply with subject id.";

    	HashMap data = new HashMap();
    	data.put("start" ,"This email service assists guardians to learn about their students progress reports, new facilities and future goal of school. Please select the option from below. \n\n a Progress Report.\n b New facilities in school.\n c School future development. \n" );
    	data.put("restart" ,"This email service assists guardians to learn about their students’ progress reports, new facilities and future goal of school. Please select the option from below. \n\n a Progress Report.\n b New facilities in school.\n c School future development. \n" );
    	data.put("end","Thank you for using Shubham Service." );
    	data.put("a","Please select the grade of the student.\n(Reply with any one digit of 5, 6, and 7)");
    	data.put("b","New Facility");
    	data.put("c","Future Goal");
    	data.put("5","Following are the names of students enrolled in 5th grade.\n 501 John Cena \n502 Abraham Bond \n503 Noa Capsi. \nPlease reply with the student id." );
    	data.put("6","Following are the names of students enrolled in 6th grade.\n 601 Mich Leriche \n602 David P Perlmutter \n603 Tobias Edstrom. \nPlease reply with the student id." );
    	data.put("7","Following are the names of students enrolled in 7th grade.\n 701 Dave Bush \n702 Daniel Bostos \n703 Ludmila Lupan. \nPlease reply with the student id.");
    	data.put("501","Please reply us with 4-digit pin. This pin code is required to keep students record confidential. (USE PIN 5011 for testing)");
    	data.put("502","Please reply us with 4-digit pin. This pin code is required to keep students record confidential. (USE PIN 5022 for testing)");
    	data.put("503","Please reply us with 4-digit pin. This pin code is required to keep students record confidential. (USE PIN 5033 for testing)");
    	data.put("601","Please reply us with 4-digit pin. This pin code is required to keep students record confidential. (USE PIN 6011 for testing)");
    	data.put("602","Please reply us with 4-digit pin. This pin code is required to keep students record confidential. (USE PIN 6022 for testing)");
    	data.put("603","Please reply us with 4-digit pin. This pin code is required to keep students record confidential. (USE PIN 6033 for testing)");
    	data.put("701","Please reply us with 4-digit pin. This pin code is required to keep students record confidential. (USE PIN 7011 for testing)");
    	data.put("702","Please reply us with 4-digit pin. This pin code is required to keep students record confidential. (USE PIN 7022 for testing)");
    	data.put("703","Please reply us with 4-digit pin. This pin code is required to keep students record confidential. (USE PIN 7033 for testing)");
    	data.put("5011","Mr John Cena is taking 4 different classes in this year. "+list);
    	data.put("5022","Mr Abraham Bond is taking 4 different classes in this year. "+list);
    	data.put("5033","Mr Noa Capsi is taking 4 different classes in this year. "+list);
    	data.put("6011","Mr Mich Leriche is taking 4 different classes in this year."+list);
    	data.put("6022","Mr David P Perlmutter is taking 4 different classes in this year. "+list);
    	data.put("6033","Mr Tobias Edstrom is taking 4 different classes in this year."+list);
    	data.put("7011","Mr Dave Bush is taking 4 different classes in this year. "+list);
    	data.put("7022","Mr Daniel Bostos is taking 4 different classes in this year."+list);
    	data.put("7033","Mr Ludmila Lupan is taking 4 different classes in this year. "+list);
    	data.put("1","He is doing very good in Biology. His GPA in last exam is 3.9/4.0. Techer recommend to concentrate more on Behavioral Biology chapter. ");
    	data.put("2","He is doing fine in Geometry. His GPA in last exam is 3.2/4.0. Teacher recommend concentrate more on Integration sum.");
    	data.put("3","He is doing excellent in Chemistry. His GPA in last exam is 4.0/4.0.");
    	data.put("4","Not so good in Algebra. GPA in last exam is 2.6/4.0. Teacher recommend concentrate more on all chapters before he appear in final exams.");
    	data.put("5011","c");
    	
    	result = (String) data.get(code);
    	if(result==null) result = "I apologise, please try again with correct option.\n"+(String) data.get("start");
    	
		return result;
    }
}