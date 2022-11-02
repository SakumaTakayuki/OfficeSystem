package G_T.OfficeSystem.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import G_T.OfficeSystem.model.FindModel;

@Controller
public class UserEditController {
	
	@Autowired
	private FindModel findModel;
	
	@RequestMapping(value="/UserEdit", method=RequestMethod.POST)
	String UserEdit(
			@RequestParam(value="userId") String userId, Model model
			) {
		
		findModel.FindUser(userId);
		
		model.addAttribute("userId", findModel.getAllUserList().get(0).getUserId());
		model.addAttribute("password", findModel.getAllUserList().get(0).getPassword());
		model.addAttribute("email", findModel.getAllUserList().get(0).getEmail());
		model.addAttribute("nickName", findModel.getAllUserList().get(0).getNickName());
		model.addAttribute("userName", findModel.getAllUserList().get(0).getUserName());
		model.addAttribute("sex", findModel.getAllUserList().get(0).getSex());
		model.addAttribute("tel", findModel.getAllUserList().get(0).getTel());
		model.addAttribute("postcode", findModel.getAllUserList().get(0).getPostcode());
		model.addAttribute("address", findModel.getAllUserList().get(0).getAddress());
		model.addAttribute("affiliation", findModel.getAllUserList().get(0).getAffiliation());
		model.addAttribute("position", findModel.getAllUserList().get(0).getPosition());
		model.addAttribute("hobby", findModel.getAllUserList().get(0).getHobby());
		model.addAttribute("specialSkill", findModel.getAllUserList().get(0).getSpecialSkill());
		model.addAttribute("comment", findModel.getAllUserList().get(0).getComment());		
		
		return "UserEdit";
		
	}

}
