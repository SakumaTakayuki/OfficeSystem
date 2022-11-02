package G_T.OfficeSystem.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import G_T.OfficeSystem.model.FindConditionModel;
import G_T.OfficeSystem.model.FindModel;

@Controller
public class ChangePassController {

	@Autowired
	FindModel findModel;
	
	@RequestMapping(value="/ChangePass", method = RequestMethod.GET)
	public String ChangePass(Model model){
		return "ChangePass";
	}
	
	@RequestMapping(value="/ChangePass", method = RequestMethod.POST)
	String ChangePass(FindConditionModel condition, Model model) {
		
	Integer checkCount = findModel.ChangePassCheck(condition);
	
	if (checkCount == 0) {
		model.addAttribute("message", "ユーザーID、メールアドレスもしくは電話番号が違います。");
		return "ChangePass";
	}
	
	Integer changeCount = findModel.ChangePass(condition);
	
	if (changeCount == 0) {
		model.addAttribute("message", "パスワードを変更に失敗しました。");
		return "ChangePass";
	}
	
		model.addAttribute("message", "パスワードを変更しました。");
		return "Login";
		
	}

}
