package G_T.OfficeSystem.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import G_T.OfficeSystem.model.FindConditionModel;
import G_T.OfficeSystem.model.FindModel;																					

@Controller
public class FindUserController {
	@Autowired
	FindModel findModel;
	
	@RequestMapping(value="/Find", method = RequestMethod.GET)
	public String Find() {
		return "Find";
	}
	
	@RequestMapping(value="/Find", method = RequestMethod.POST)
	public String Find(HttpSession session,  FindConditionModel condition,  Model model){

		findModel.FindUser(condition);
		model.addAttribute("findModel", findModel);

		return ("Find");
	}
}