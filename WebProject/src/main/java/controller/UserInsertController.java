package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UserInsertController {
	
	@RequestMapping("/signUp.html")
	public ModelAndView handleRequest(HttpServletRequest req,
			HttpServletResponse res) throws Exception {
		ModelAndView modelAndView = new ModelAndView();
	
		//View
		modelAndView.setViewName("signUp");  //뷰 이름을 index로 하라는 뜻
		//Model
		return modelAndView;
	}
}




