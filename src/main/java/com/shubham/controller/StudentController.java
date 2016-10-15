package com.shubham.controller;

import java.util.Date;
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

import com.shubham.model.Student;
import com.shubham.controller.Example;
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

	@RequestMapping(value="studentlogin.do", method = RequestMethod.POST)
	public ModelAndView loginfunction(	
			@RequestParam(required=false, value="loginemail") String loginemail,
			@RequestParam(required=false, value="logoinpassword") String logoinpassword,
			HttpServletRequest request){
		ModelAndView mav = new ModelAndView("login");

		Student login = studentService.login(loginemail,logoinpassword);
		if(login!=null) System.out.println("loginemail = "+login.getEmail()+" "+login.getFirstname());
		else System.out.println("Found Nothing");
		return mav;
	}
	
	@RequestMapping(value="saveNewAppartmentPost.do", method=RequestMethod.GET)
	public ModelAndView saveNewAdd(
			@RequestParam(required=false,  value="postTitle") String postTitle,
			HttpServletRequest request){
		ModelAndView mav = new ModelAndView("homepage");
		return mav;
	}
	
	@RequestMapping(value="requestacces.do", method = RequestMethod.GET)
	public ModelAndView studentRegister(
			@RequestParam(required=false, value="regEmail") String regEmail,
			@RequestParam(required=false, value="subject") String subject,
			@RequestParam(required=false, value="head") String head,
			@RequestParam(required=false, value="name") String name,
			@RequestParam(required=false, value="profile") String profile,
			@RequestParam(required=false, value="email") String email,
			@RequestParam(required=false, value="data1") String data1,
			@RequestParam(required=false, value="data3") String data3,
			@RequestParam(required=false, value="announcement") String announcement,
			@RequestParam(required=false, value="bottomsign") String bottomsign,
			@RequestParam(required=false, value="owner") String owner,
			@RequestParam(required=false, value="from") String from,
			@RequestParam(required=false, value="password") String password,
			@RequestParam(required=false, value="message") String message,
			@RequestParam(required=false, value="url") String url,
			@RequestParam(required=false, value="sendCopy") boolean sendCopy,
			HttpServletRequest request){
		ModelAndView mav =  new ModelAndView("requestaccess");
		
		regEmail = regEmail.replace("[owner]", owner);
		regEmail = regEmail.replace("[head]", head);
		regEmail = 	regEmail.replace("[name]", name);
		regEmail = regEmail.replace("[data1]", data1);
		regEmail = regEmail.replace("[data3]", data3);
		regEmail = regEmail.replace("[announcement]", announcement);
		regEmail = regEmail.replace("[bottomsign]", bottomsign);
				
		try {
			sendMail(from, email, subject, regEmail);
			sendMail(from, from, name+" emailed you from your portfolio...", "<b>"+name+"'s message</b><br><br>"+message);
			if(sendCopy==true){
				System.out.println("true");
				sendMail(from, from, "You emailed Shubham from his portfolio...", "<b>"+name+"'s message</b><br><br>"+message);
			}
		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		mav.addObject("succmsg", "Registered Successfully");
		return new ModelAndView(url);
	}  
	@RequestMapping(value="aboutme", method = RequestMethod.GET)
	public ModelAndView aboutme(HttpServletRequest request){
		ModelAndView mav = new ModelAndView("aboutme");
		System.out.println("aboutme");
		mav.addObject("date", new Date());
		return mav;
	}

	@RequestMapping(value="contactme", method = RequestMethod.GET)
	public ModelAndView contactme(HttpServletRequest request){
		ModelAndView mav = new ModelAndView("contactme");
		System.out.println("contactme");
		return mav;
	}

	@RequestMapping(value="home", method = RequestMethod.GET)
	public ModelAndView home(HttpServletRequest request){
		ModelAndView mav = new ModelAndView("dashboard");
		System.out.println("dashboard");
		return mav;
	}
	
	@RequestMapping(value="sms", method = RequestMethod.GET)
	public ModelAndView sms(HttpServletRequest request){
		ModelAndView mav = new ModelAndView("sendsms");
		System.out.println("sms");
		return mav;
	}

	@RequestMapping(value="smsservice", method = RequestMethod.GET)
	public String smsservice(@RequestParam(required=false, value="from") String from,
			@RequestParam(required=false, value="msg") String msg,
			HttpServletRequest request){
		System.out.println(from);
		ModelAndView mav = new ModelAndView("sendsms");
		System.out.println("sms");
		return "hello";
	}

	
	@RequestMapping(value="resume", method = RequestMethod.GET)
	public ModelAndView resume(HttpServletRequest request){
		ModelAndView mav = new ModelAndView("resume");
		System.out.println("resume");
		return mav;
	}

	@RequestMapping(value="profile", method = RequestMethod.GET)
	public ModelAndView profile(HttpServletRequest request){
		ModelAndView mav = new ModelAndView("index");
		System.out.println("index");
		return mav;
	}

	@RequestMapping(value="studentRegister.do", method = RequestMethod.GET)
	public ModelAndView studentRegister(
			@RequestParam(required=false, value="firstname") String firstname,
			@RequestParam(required=false, value="lastname") String lastname,
			@RequestParam(required=false, value="email") String email,
			@RequestParam(required=false, value="passcode") String passcode,
			HttpServletRequest request){
		System.out.println("Login "+firstname);
		Student signup = new Student();
		signup.setCreatedOn(new Date());
		signup.setFirstname(firstname);
		signup.setLastname(lastname);
		signup.setEmail(email);
		signup.setPasscode(passcode);
		studentService.add(signup);
		String body ="<div style='margin: auto; background-color: #ffffe6; width: 90%; padding: 4%; color: #006666; font-weight: bold; border: 3px solid #0099e6;'><img src='http://www.logoground.com/uploads/z3398999s-logo.jpg' alt='Logo' height='41' width='41'><font size='8' color='#0077b3'> Hello "+firstname+" "+lastname+",</font> <hr>"+
				"<h3>My name is Shubham Yeole from Pace University Computer Science major.<br> I really appriciate you created an account to my website.</h3><br><br><br>"
						+ "<div style='padding: 4%;	 background-color: #f2f2f2; width: 80%; color: red; font-weight: bold; border: 3px solid red;padding: 10px;'><table><td><img src='http://www.logoground.com/uploads/z3398999s-logo.jpg' alt='Logo' height='42' width='42'></td><td>This is automatically generated email from <font size='5' color='#0077b3'>shubhamwebapp</font> website.<br> If you did not make this request, please ignore this email.</td></table></div><h3>Thanks and regards,</h3><h3>Shubham Yeole</h3><h3>+(201)-887-5323</h3><img src='http://client69.com/client69.com/workappy/uploads/user/144/profile/Shubham.jpg' alt='Profile Picture' height='180' width='145'><br><a href='https://www.linkedin.com/in/shubhamyeole' target='_blank'><img width='220' height='50' border='0' align='center'  src='http://exechunter.com/wp-content/uploads/my-linkedin-profile-button.png' alt='View my LinkedIn'/></a><h1>Thank you for visiting shubhamwebapp.com. I appreciate your business.</h1></div></div>";

		try {
			sendMail( email, "Registration Successfull...!", body, body);
		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return new ModelAndView("redirect:/");
	}

	@RequestMapping("/")
	public String setupForm(Map<String, Object> map){
		Student student = new Student();
	
//		map.put("studentList", studentService.getAllStudent());
		return "dashboard";
	}
	
	@RequestMapping(value="emailAction.do", method = RequestMethod.GET)
	public ModelAndView emailAction(
			@RequestParam(required=false, value="email") String email,
			HttpServletRequest request){
		
		ModelAndView mav = new ModelAndView("smsIndex");
		
		 String data1 = "Thank you for visiting <b>Shubham CS 643 Project</b>.<br><br>My name is Shubham Yeole from Pace University <b>Computer Science Major (UID: #U01248378)</b>. I am a full stack developer and currently it is my 3rd semester in Pace University.<br><br>";
		 String data3 = "Email sending testing successful";
		 String announcement = "You received this mandatory automated email service announcement to update you about your action done on Shubham CS 643 Project.";
			
		 String	bottomsign=" 2016 shubhamwebapp, 10 Front Street, Jersey City, New Jersey, 07302, USA";
		 String	owner="Shubham Yeole";
		 String	from="shubham20.yeole@gmail.com" ;
		 String regEmail="<div style='background-color: #f9f9f9; margin: auto;    width: 70%;    padding: 3%;    border: 3px solid #d7d7d7;    padding: 10px;'> <img src='[profile]' alt='logo' width='142' height='42'>	<div style='background-color: #ac2435; color: white;'>	<p style='padding: 15% 0% 3% 2%; font-weight: bold; font-size: 18px; font-family: Roboto-Regular,Helvetica,Arial,sans-serif;'>[head]</div><div style='padding: 3%; font-family: Roboto-Regular,Helvetica,Arial,sans-serif;'>	Hello [name]<br><br>[data1]</div><div style='padding: 3%; font-family: Roboto-Regular,Helvetica,Arial,sans-serif;'>[data3]<br><br><p style='font-weight:bold;'>Thanks,<br>[owner]</p>	<br><br><hr>	<div style='hidden-align: center;'><h4>[announcement]</h4><p style='color: #a8a8a8; font-weight: bold;'>[bottomsign]</p></div></div></div>" ;
		 String	url="redirect:file:///C:/Users/sy067/Desktop/HTML_Tests/emailcheck.html";

		 String	head="Automated email project demo: CS-643 Class";
		 String	profile="http://client69.com/client69.com/workappy/uploads/company/63/profile/company_0.jpg";
		 regEmail = regEmail.replace("[owner]", owner);
			regEmail = regEmail.replace("[head]", head);
			regEmail = 	regEmail.replace("[name]", " ,");
			regEmail = regEmail.replace("[data1]", data1);
			regEmail = regEmail.replace("[data3]", data3);
			regEmail = regEmail.replace("[announcement]", announcement);
			regEmail = regEmail.replace("[bottomsign]", bottomsign);
		try {
			sendMail("shubham20.yeole@gmail.com", email, "Email sent from Shubham CS 643 Project", regEmail);
		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String message1 = "<i class='material-icons' style='font-size:48px; color: #4dff4d'>check_circle</i>Email sent Successfully";
		String message = "Sent to "+email+".";
		String message2 = "<div style='color: #0077b3;  background-color: black; text-align: center; font-size: 30px; font-weight: bold; padding: 2%;'><table width='100%'><tr><td>"+message1+"</td><td>"+message+"</td></tr></table></div>";

		mav.addObject("message2", message2);
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
	
	
	@RequestMapping(value="bothAction.do", method = RequestMethod.GET)
	public ModelAndView emailAction(
			@RequestParam(required=false, value="email") String email,
			@RequestParam(required=false, value="phone") String phone,
			HttpServletRequest request){
		
		ModelAndView mav = new ModelAndView("smsIndex");
		
		 String data1 = "Thank you for visiting <b>Shubham CS 643 Project</b>.<br><br>My name is Shubham Yeole from Pace University <b>Computer Science Major (UID: #U01248378)</b>. I am a full stack developer and currently it is my 3rd semester in Pace University.<br><br>";
		 String data3 = "Email sending testing successful";
		 String announcement = "You received this mandatory automated email service announcement to update you about your action done on Shubham CS 643 Project.";
			
		 String	bottomsign="j 2016 shubhamwebapp, 10 Front Street, Jersey City, New Jersey, 07302, USA";
		 String	owner="Shubham Yeole";
		 String	from="shubham20.yeole@gmail.com" ;
		 String regEmail="<div style='background-color: #f9f9f9; margin: auto;    width: 70%;    padding: 3%;    border: 3px solid #d7d7d7;    padding: 10px;'> <img src='[profile]' alt='logo' width='142' height='42'>	<div style='background-color: #ac2435; color: white;'>	<p style='padding: 15% 0% 3% 2%; font-weight: bold; font-size: 18px; font-family: Roboto-Regular,Helvetica,Arial,sans-serif;'>[head]</div><div style='padding: 3%; font-family: Roboto-Regular,Helvetica,Arial,sans-serif;'>	Hello [name]<br><br>[data1]</div><div style='padding: 3%; font-family: Roboto-Regular,Helvetica,Arial,sans-serif;'>[data3]<br><br><p style='font-weight:bold;'>Thanks,<br>[owner]</p>	<br><br><hr>	<div style='hidden-align: center;'><h4>[announcement]</h4><p style='color: #a8a8a8; font-weight: bold;'>[bottomsign]</p></div></div></div>" ;
		 String	url="redirect:file:///C:/Users/sy067/Desktop/HTML_Tests/emailcheck.html";

		 String	head="Automated email project demo: CS-643 Class";
		 String	profile="http://client69.com/client69.com/workappy/uploads/company/63/profile/company_0.jpg";
		 regEmail = regEmail.replace("[owner]", owner);
			regEmail = regEmail.replace("[head]", head);
			regEmail = 	regEmail.replace("[name]", " ,");
			regEmail = regEmail.replace("[data1]", data1);
			regEmail = regEmail.replace("[data3]", data3);
			regEmail = regEmail.replace("[announcement]", announcement);
			regEmail = regEmail.replace("[bottomsign]", bottomsign);
		Example ex = new Example();
//		try {
//			ex.SMS(phone);
//		} catch (TwilioRestException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
		try {
			sendMail("shubham20.yeole@gmail.com", email, "Email sent from Shubham CS 643 Project", regEmail);
		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String message1 = "<i class='material-icons' style='font-size:48px; color: #4dff4d'>check_circle</i>Email sent Successfully";
		String message = "Sent to "+email+".";
		String message2 = "<div style='color: #0077b3;  background-color: black; text-align: center; font-size: 30px; font-weight: bold; padding: 2%;'><table width='100%'><tr><td width='50%'>"+message1+"</td><td width='50%'>"+message+"</td></tr></table></div>";

		String message3 = "<i class='material-icons' style='font-size:48px; color: #4dff4d'>check_circle</i>SMS sent Successfully";
		String message4 = "Sent to "+phone+".";
		String message5 = "<div style='color: #0077b3;  background-color: black; text-align: center; font-size: 30px; font-weight: bold; padding: 2%;'><table width='100%'><tr><td width='50%'>"+message3+"</td><td width='50%'>"+message4+"</td></tr></table></div>";

		mav.addObject("message2", message2);
		mav.addObject("message5", message5);
		return mav;
	}
	
	
	@RequestMapping(value="blogme.do", method = RequestMethod.GET)
	public ModelAndView blogme(
			@RequestParam(required=false, value="firstname") String firstname,
			@RequestParam(required=false, value="lastname") String lastname,
			@RequestParam(required=false, value="yearLevel") int yearLevel,
			@RequestParam(required=false, value="email") String email,
			@RequestParam(required=false, value="passcode") String passcode,
			HttpServletRequest request){
		
		ModelAndView mav = new ModelAndView("smsIndex");
		
		Student st = new Student();
		st.setFirstname(firstname);
		st.setLastname(lastname);
		st.setYearLevel(yearLevel);
		st.setEmail(email);
		st.setPasscode(passcode);
		st.setCreatedOn(new Date());
		
		studentService.add(st);
		
		mav.addObject("msg", "Blog posted to shubham website");
		return mav;
	}

	@RequestMapping(value="/student.do", method=RequestMethod.POST)
	public String doActions(@ModelAttribute Student student, BindingResult result, @RequestParam String action, Map<String, Object> map){
		Student studentResult = new Student();
		System.out.println("in student.do");
		switch(action.toLowerCase()){	//only in Java7 you can put String in switch
		case "add":
			studentService.add(student);
			studentResult = student;
			break;
		case "edit":
			studentService.edit(student);
			studentResult = student;
			break;
		case "delete":
			studentService.delete(student.getStudentId());
			studentResult = new Student();
			break;
		case "search":
			Student searchedStudent = studentService.getStudent(student.getStudentId());
			studentResult = searchedStudent!=null ? searchedStudent : new Student();
			break;
		}
		map.put("student", studentResult);
		map.put("studentList", studentService.getAllStudent());
		return "student";
	}

	@RequestMapping(value = "/emailVerification.do/{index}", method = RequestMethod.GET)
	public @ResponseBody boolean searchTemplatesItems(@PathVariable("index") String index, HttpServletRequest request) {
		System.out.println("Email = "+index);
		return true;
	}
	
	private void sendMail(String from, String to, String subject, String emailBody) throws MessagingException{
		final String username = from;
		final String password = "Shubham4194";

		Properties props = new Properties();
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.port", "587");

		Session session = Session.getInstance(props,
				new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(username, password);
			}
		});

		try {

			Message message = new MimeMessage(session);
			message.setFrom(new InternetAddress(from));
			message.setRecipients(Message.RecipientType.TO,
					InternetAddress.parse(to));
			message.setSubject(subject);
			message.setContent(emailBody, "text/html; charset=utf-8");

			Transport.send(message);

			System.out.println("Done");

		} catch (MessagingException e) {
			throw new RuntimeException(e);
		}
	}
}
