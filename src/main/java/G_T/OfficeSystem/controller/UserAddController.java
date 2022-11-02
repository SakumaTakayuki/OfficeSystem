package G_T.OfficeSystem.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import G_T.OfficeSystem.model.FindConditionModel;
import G_T.OfficeSystem.model.FindModel;																					

@Controller
public class UserAddController {
	@Autowired
	FindModel findModel;
	
	@RequestMapping(value="/UserAdd", method = RequestMethod.GET)
	public String UserAdd() {
		return "UserAdd";
	}
	
	@RequestMapping(value="/UserAdd", method = RequestMethod.POST)
	public String UserAdd(FindConditionModel condition,  Model model){
		
		Integer count = findModel.IdCheck(condition);
		
		if (count >= 1) {
			model.addAttribute("message", "ユーザーIDがすでに使われています");
			return "UserAdd";
		}
		
		findModel.UserAdd(condition);

		model.addAttribute("message", "新規登録完了しました");
		return "Login";
	}
}