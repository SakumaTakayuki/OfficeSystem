package G_T.OfficeSystem.model;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.support.JdbcDaoSupport;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional 
public class UserInfoModelDAO extends JdbcDaoSupport {

	@Autowired
	public UserInfoModelDAO(DataSource dataSource) {
		this.setDataSource(dataSource);
	}

	public Integer CheckUser(LoginModel model) {
		String sql = "select count(*) from user_master where 1 = 1";

		if(model.getUserId() != "") {
			sql += " and USER_ID = '" + model.getUserId() + " '";
		}

		if(model.getPassword() != "") {
			sql += " and PASSWORD = '" + model.getPassword() + "'";
		}
		
		if(model.getEmail() != "") {
			sql += " and EMAIL = '" + model.getEmail() + "'";
		}

		try {
			return getJdbcTemplate().queryForObject(sql, new Object[] { }, Integer.class);
		} catch (EmptyResultDataAccessException e) {
			return null;
		}
	}
	
	public List<UserInfoModel> FindUser(FindConditionModel condition) {
		String sql = UserInfoModelMapper.BASE_SQL + " and u.TYPE = 2 ";

		if (condition != null) {

			if (condition.getUserId() != null && !condition.getUserId().equals("")) {
				sql += " and u.USER_ID like '%" + condition.getUserId() + "%'";
			}

			if (condition.getEmail() != null && !condition.getEmail().equals("")) {
				sql += " and u.EMAIL like '%" + condition.getEmail() + "%'";
			}

			if (condition.getNickName() != null && !condition.getNickName().equals("")) {
				sql += " and p.NICK_NAME like '%" + condition.getNickName() + "%'";
			}

			if (condition.getUserName() != null && !condition.getUserName().equals("")) {
				sql += " and p.USER_NAME like '%" + condition.getUserName() + "%'";
			}


			if (condition.getSex() != null && !condition.getSex().equals("")) {
				sql += " and p.SEX like '%" + condition.getSex() + "%'";
			}


			if (condition.getBirthday1() == "") {
				sql += "and p.BIRTHDAY like '%" + "___" + condition.getBirthday2() +
						condition.getBirthday3()+ "%'";
			} else if(condition.getBirthday2() == "") {
				sql += "and p.BIRTHDAY like '%" + condition.getBirthday1() + "__" +
						condition.getBirthday3() + "%'";
			} else if(condition.getBirthday3() == "") {
				sql += "and p.BIRTHDAY like '%" + condition.getBirthday1() +
						condition.getBirthday2() + "__" + "%'";
			} else {
				sql += "and p.BIRTHDAY like '%" + condition.getBirthday1() +
						condition.getBirthday2() + condition.getBirthday3() + "%'";
			}

			if (condition.getAge() != null && !condition.getAge().equals("")) {
				sql += " and TIMESTAMPDIFF(YEAR, str_to_date(p.BIRTHDAY,'%Y%m%d'), CURDATE()) = '" + condition.getAge() +"'";
			}

			if (condition.getTel() != null && !condition.getTel().equals("")) {
				sql += " and p.TEL like '%" + condition.getTel() + "%'";
			}

			if (condition.getPostcode() != null && !condition.getPostcode().equals("")) {
				sql += " and p.POSTCODE like '%" + condition.getPostcode() + "%'";
			}

			if (condition.getAddress() != null && !condition.getAddress().equals("")) {
				sql += " and p.ADDRESS like '%" + condition.getAddress() + "%'";
			}


			if (condition.getHireDate1() == "") {
				sql += "and p.HIRE_DATE like '%" + "___" + condition.getHireDate2() +
						condition.getHireDate3()+ "%'";
			} else if(condition.getHireDate2() == "") {
				sql += "and p.HIRE_DATE like '%" + condition.getHireDate1() + "__" +
						condition.getHireDate3() + "%'";
			} else if(condition.getHireDate3() == "") {
				sql += "and p.HIRE_DATE like '%" + condition.getHireDate1() +
						condition.getHireDate2() + "__" + "%'";
			} else {
				sql += "and p.HIRE_DATE like '%" + condition.getHireDate1() +
						condition.getHireDate2() + condition.getHireDate3() + "%'";
			}

			if (condition.getAffiliation() != null && !condition.getAffiliation().equals("")) {
				sql += " and p.AFFILIATION like '%" + condition.getAffiliation() + "%'";
			}

			if (condition.getPosition() != null && !condition.getPosition().equals("")) {
				sql += " and p.POSITION like '%" + condition.getPosition() + "%'";
			}

			if (condition.getHobby() != null && !condition.getHobby().equals("")) {
				sql += " and p.HOBBY like '%" + condition.getHobby() + "%'";
			}

			if (condition.getSpecialSkill() != null && !condition.getSpecialSkill().equals("")) {
				sql += " and p.SPECIAL_SKILL like '%" + condition.getSpecialSkill() + "%'";
			}

			if (condition.getComment() != null && !condition.getComment().equals("")) {
				sql += " and p.COMMENT like '%" + condition.getComment() + "%'";
			}
		}

		UserInfoModelMapper mapper = new UserInfoModelMapper();
		try {
			List<UserInfoModel> list = this.getJdbcTemplate().query(sql, mapper);
			return list;
		} catch (EmptyResultDataAccessException e) {
			return null;
		}
	}
	
	public int UserAdd(FindConditionModel condition) {
		
		getJdbcTemplate().update(
				"insert into user_master (user_id, password, email, type) "
				+ "values (?, ?, ?, ?)",
				condition.getUserId(), condition.getPassword(), condition.getEmail(), "2");
		
		getJdbcTemplate().update(
				"insert into profile_info (user_id, nick_name, user_name, birthday, sex, postcode, address, tel, "
				+ "hire_date, Affiliation, position, hobby, special_skill, comment, image_link) "
				+ "values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)",
				condition.getUserId(), condition.getNickName(), condition.getUserName(), condition.getBirthday(), condition.getSex(), condition.getPostcode(), condition.getAddress(), condition.getTel(), 
				condition.getHireDate(), condition.getAffiliation(), condition.getPosition(), condition.getHobby(), condition.getSpecialSkill(), condition.getComment(), "person.png");
		
		try {
			return 1;
		} catch (EmptyResultDataAccessException e) {
			return 0;
		}
	}

	public int UserDelete(String userId) {
		try {
			getJdbcTemplate().update("delete from user_master where user_id = (?)", userId );
			
			getJdbcTemplate().update("delete from profile_info where user_id = (?)", userId );
			
			return 1;
		} catch (EmptyResultDataAccessException e) {
			return 0;
		}
		
	}

	public List<UserInfoModel> FindUser(String userId) {
		
		String sql = UserInfoModelMapper.BASE_SQL + " and u.TYPE = 2 ";
			sql += " and u.USER_ID = '" + userId + "'";
		
		UserInfoModelMapper mapper = new UserInfoModelMapper();
		
		List<UserInfoModel> list = this.getJdbcTemplate().query(sql, mapper);
		
		return list;
		
	}

	public int UserUpdate(FindConditionModel condition) {
		try {
		getJdbcTemplate().update("update user_master set password = (?), email = (?) where user_id = (?)",
									condition.getPassword(), condition.getEmail(), condition.getUserId()
									);
		getJdbcTemplate().update(
				"update profile_info set nick_name = (?), user_name = (?), sex = (?), "
				+ "tel = (?), postcode = (?), address = (?), affiliation = (?), "
				+ "position = (?), hobby = (?), special_skill = (?), comment = (?) where user_id = (?)",
				condition.getNickName(),condition.getUserName(),condition.getSex(),condition.
				getTel(),condition.getPostcode(),condition.getAddress(),condition.getAffiliation(),
				condition.getPosition(),condition.getHobby(),condition.getSpecialSkill(),condition.getComment(),condition.getUserId()
				);
			return 1;
		} catch (EmptyResultDataAccessException e) {
			return 0;
		}
		
	}

	public Integer IdCheck(FindConditionModel condition) {
		
		String sql = "select count(*) from user_master where ";
		sql += "user_id = '" + condition.getUserId() + "'";
		
		try {
			return getJdbcTemplate().queryForObject(sql, new Object[] { }, Integer.class);
		} catch (EmptyResultDataAccessException e) {
			return null;
		}
	
	}

	public int ChangePassCheck(FindConditionModel condition) {
		try {
			String sql = "select count(*) from user_master u left join Profile_info p on u.user_id = p.user_id where 1=1 ";
			sql += "and u.user_id = '" + condition.getUserId() + "' and email ='" + condition.getEmail() + "' and tel = '" + condition.getTel() + "'";
			return getJdbcTemplate().queryForObject(sql, new Object[] { }, Integer.class);
		} catch (EmptyResultDataAccessException e) {
			return 0;
		}
	}

	public int ChangePass(FindConditionModel condition) {
		try {
			getJdbcTemplate().update("update user_master set password = (?) where user_id = (?)",
					condition.getPassword(), condition.getUserId()
					);
			return 1;
		} catch (EmptyResultDataAccessException e) {
			return 0;
		}
	}



	

	
}