package G_T.OfficeSystem.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import G_T.OfficeSystem.model.FindConditionModel;
import G_T.OfficeSystem.model.FindModel;

@Controller

public class UserUpdateController {
	
	@Autowired
	FindModel findModel;
	
	@RequestMapping(value = "/UserUpdate", method = RequestMethod.POST)
	public String UserUpdate(FindConditionModel condition,  Model model) {
		
		Integer count = findModel.UserUpdate(condition);
		
		if (count == 1) {
			model.addAttribute("message", "更新しました");
		}
		
		return ("Find");
	}

}
