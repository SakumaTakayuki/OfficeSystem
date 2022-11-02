package G_T.OfficeSystem.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import G_T.OfficeSystem.model.FindModel;

@Controller
public class UserDeleteController {
	
	@Autowired
	private FindModel findModel;

	@RequestMapping(value="/UserDelete", method=RequestMethod.POST)
	public String UserDelete(
			@RequestParam(value="userId") String userId, Model model
			) {
		
		Integer count = findModel.UserDelete(userId);
		
		if (count == 0) {
			model.addAttribute("message", "削除出来ませんでした");
		}
		
		model.addAttribute("message", "削除しました");
		return "Find";
		
	}
	
}
