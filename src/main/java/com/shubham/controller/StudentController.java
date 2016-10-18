package com.shubham.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.cfg.Environment;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.shubham.model.SmsServiceUser;
import com.shubham.model.Student;
import com.shubham.controller.Example;
import com.shubham.service.SmsServiceUserService;
import com.shubham.service.StudentService;
import com.twilio.sdk.TwilioRestException;

import javax.mail.BodyPart;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.SendFailedException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart; 
@Controller
public class StudentController {
	@Autowired
	private StudentService studentService;
	
	@Autowired
	private SmsServiceUserService smsServiceUserService;
	
	@RequestMapping("/")
	public ModelAndView setupForm(Map<String, Object> map){
		Student student = new Student();
		ModelAndView mav = new ModelAndView("twilio");
		List<SmsServiceUser> users = smsServiceUserService.getAllUsers();
		mav.addObject("userSize", users.size());
		mav.addObject("users", users);
		return mav;
	}
	
	@RequestMapping(value="smsservice", method = RequestMethod.GET)
	public ModelAndView smsservice(@RequestParam(required=false, value="From") String From,
			@RequestParam(required=false, value="Body") String Body,
			HttpServletRequest request, HttpServletResponse response){
		
		SmsServiceUser user = new SmsServiceUser();
		String dateAndTime = new SimpleDateFormat("yyyy/MM/dd - h:mm a").format(new Date());
		 String dateString=null, timeString =null; int count = 0;
	      for (String retval: dateAndTime.split("-")) {
	    	  if(count==0) dateString = retval;
	    	  if(count==1) timeString = retval;
	    	  count++;
	      }
		user.setName("Anonymous");
		user.setPhone(From);
		user.setTimeOn(timeString);
		user.setDateOn(dateString);
		smsServiceUserService.add(user);
		
		TwilioServlet hh = new TwilioServlet();
		try {
			hh.service(request, response, Body, From);
		} catch (IOException e) {
			e.printStackTrace();
		}
		ModelAndView mav = new ModelAndView("twilio");
		System.out.println("twilio");
		return mav;
	}
	
	@RequestMapping(value="collectData", method = RequestMethod.POST)
	public ModelAndView serviceUserSubmit(
			@RequestParam(required=false, value="name") String name,
			@RequestParam(required=false, value="phone") String phone,
			HttpServletRequest request){
		ModelAndView mav = new ModelAndView("redirect:/");
		String dateAndTime = new SimpleDateFormat("yyyy/MM/dd - h:mm a").format(new Date());
		 String dateString=null, timeString =null; int count = 0;
	      for (String retval: dateAndTime.split("-")) {
	    	  if(count==0) dateString = retval;
	    	  if(count==1) timeString = retval;
	    	  count++;
	      }
		SmsServiceUser user = new SmsServiceUser();
		user.setName(name);
		user.setPhone(phone);
		user.setTimeOn(timeString);
		user.setDateOn(dateString);
		smsServiceUserService.add(user);
		Example ex = new Example();
		try {
			ex.SMS(phone, "This is the SMS service designed by Shubham Yeole from Pace University Computer Science major. \n\n This SMS service assists guardians of high school students to learn about their children progress reports at school. \n\nIt also inform parents about the new facilities, events and future goals of school. \n\nPlease select the option given below. \n\nA Progress Report.\nB New facilities in school.\nC School future goals.\nD School events. \n\n For example, reply with A or B or C or D to this message");
		} catch (TwilioRestException e) {
			e.printStackTrace();
		}
		List<SmsServiceUser> users = smsServiceUserService.getAllUsers();
		mav.addObject("userSize", users.size());
		mav.addObject("users", users);
		return mav;
	}

	@RequestMapping(value="sms.do", method = RequestMethod.GET)
	public ModelAndView sms(
			@RequestParam(required=false, value="phone") String phone,
			@RequestParam(required=false, value="msg") String msg,
			HttpServletRequest request){
		
		ModelAndView mav = new ModelAndView("sendsms");
		String drmsg = "Hello, My name is Shubham Yeole. This message is to confirm that you visited my project on Heroku Server. I am reachable at +1 (201)-887 5323. Thank you.";
		Example ex = new Example();
		try {
			ex.SMS(phone, drmsg);
			if(msg==null) msg="Message sent to DR Scharff from ";
			ex.SMS("2018875323", msg+" "+phone);
		} catch (TwilioRestException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String message = "<i class='material-icons'>check_circle</i> SMS sent to "+phone+".";

		mav.addObject("message", message);
		return mav;
	}
	
}
