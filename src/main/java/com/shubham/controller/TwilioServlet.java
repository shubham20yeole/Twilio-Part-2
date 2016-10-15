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

    public void service(HttpServletRequest request, HttpServletResponse response, String bodyd) throws IOException {
        String body = request.getParameter("Body");
        String message = "Found Nothing";
        if (body == "hello") {
            // Use a generic message
            message = "Hi there!";
        } else if (body == "bye") {
            // Use the caller's name
            message = "Goodbye!";
        }

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
			ex.SMS("2018875323", "Hello sent from twilio "+message+" "+bodyd);
		} catch (TwilioRestException e) {
			e.printStackTrace();
		}
        response.setContentType("application/xml");
        response.getWriter().print(twiml.toXML());
    }
}