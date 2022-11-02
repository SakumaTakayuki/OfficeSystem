package G_T.OfficeSystem.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import G_T.OfficeSystem.model.LoginModel;
import G_T.OfficeSystem.model.UserInfoModelDAO;

@Controller
public class LoginController {

	@Autowired
	private UserInfoModelDAO userInfoModelDAO;

	@RequestMapping(value="/Login", method = RequestMethod.GET)
	public String Login(Model model){
		return "Login";
	}

	@RequestMapping(value="/Login", params = {"userId", "password", "email"}, method = RequestMethod.POST, produces="text/plain;charset=utf-8")
	public String Login(
		@RequestParam(value = "userId") String userId,
		@RequestParam(value = "password") String password,
		@RequestParam(value = "email") String email,
		Model model
			) {

		Integer count = userInfoModelDAO.CheckUser(new LoginModel(userId, password, email));

		if(count == 0) {
			
			model.addAttribute("message", "ユーザーID、パスワードまたはメールアドレスが存在しません");
			return "Login";
		}

		return "Find";
	}
}