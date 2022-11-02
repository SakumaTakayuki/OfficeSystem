package G_T.OfficeSystem.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Service;
import org.springframework.web.context.WebApplicationContext;

@Service
@Scope(value = WebApplicationContext.SCOPE_SESSION, proxyMode = ScopedProxyMode.TARGET_CLASS)
public class FindModel {
	private List<UserInfoModel> allUserList;

	@Autowired
	private UserInfoModelDAO userInfoModelDAO;

	public FindModel() {

	}

	public List<UserInfoModel> getAllUserList() {
		return allUserList;
	}
	public void setAllUserList(List<UserInfoModel> allUserList) {
		this.allUserList = allUserList;
	}
	
	public void FindUser(FindConditionModel condition) {
		setAllUserList(userInfoModelDAO.FindUser(condition));
	}

	public int UserAdd(FindConditionModel condition) {
		return userInfoModelDAO.UserAdd(condition);
	}
	
	public int UserDelete(String userId) {
		return userInfoModelDAO.UserDelete(userId);
	}

	public void FindUser(String userId) {
		setAllUserList(userInfoModelDAO.FindUser(userId));
		
	}

	public int UserUpdate(FindConditionModel condition) {
		return userInfoModelDAO.UserUpdate(condition);
		
	}

	public int IdCheck(FindConditionModel condition) {
		
		return userInfoModelDAO.IdCheck(condition);
	}

	public int ChangePassCheck(FindConditionModel condition) {
		return userInfoModelDAO.ChangePassCheck(condition);
	}

	public int ChangePass(FindConditionModel condition) {
		return userInfoModelDAO.ChangePass(condition);
	}


	
	
}
