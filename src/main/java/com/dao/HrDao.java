package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.bean.HrBean;
import com.bean.ResourceBean;
import com.dbConnection.DbConnection;

public class HrDao {

	public HrBean authenticate(String hremail, String hrpassword) {
		HrBean hrBean = null;

		Connection con = DbConnection.getConnection();
		try {
			PreparedStatement ps = con.prepareStatement("select * from Hr where HrEmail=? and HrPass=?");

			ps.setString(1, hremail);
			ps.setString(2, hrpassword);

			ResultSet rs = ps.executeQuery();

			if (rs.next()) {
				hrBean = new HrBean();
				hrBean.setHremail(rs.getString("HrEmail"));
				hrBean.setHrpassword(rs.getString("HrPass"));

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		return hrBean;
	}

//	public res addResource(ResourceBean resourceBean)
//	{
//		int id =0;
//		
//		Connection con = DbConnection.getConnection();
//		try {
//			PreparedStatement ps = con.prepareStatement("insert into Resource values(?,?,?,?,?,?,?)");
//		    
//			ps.setString(1, resourceBean.getName());
//			ps.setString(2, resourceBean.getEmail());
//			ps.setString(3, resourceBean.getMobno());
//			ps.setString(4, resourceBean.getGender());
//			ps.setString(5, resourceBean.getExperience());
//			ps.setString(6, resourceBean.getResumeurl());
//			ps.setString(7, resourceBean.getQualification());
//			
//			 ps.executeUpdate();
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		
//		return resourceBean;
//		
//	}

	public ArrayList<ResourceBean> getAllResources() {

		ArrayList<ResourceBean> resourceBeanAL = new ArrayList<ResourceBean>();
		ResourceBean resourceBean = null;
		Connection con = DbConnection.getConnection();

		try {
			PreparedStatement ps = con.prepareStatement("select * from Resource");

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				resourceBean = new ResourceBean();
				resourceBean.setId(rs.getInt("Id"));
				resourceBean.setName(rs.getString("Name"));
				resourceBean.setEmail(rs.getString("Email"));
				resourceBean.setMobno(rs.getString("Mobno"));
				resourceBean.setGender(rs.getString("Gender"));
				resourceBean.setExperience(rs.getString("Experience"));
				resourceBean.setResumeurl(rs.getString("Resumeurl"));
				resourceBean.setQualification(rs.getString("Qualification"));

				resourceBeanAL.add(resourceBean);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return resourceBeanAL;

	}

	public ResourceBean getresourceInfo(String id) {
		ResourceBean resourceBean = null;
		Connection con = DbConnection.getConnection();
		try {
			PreparedStatement ps = con.prepareStatement("select * from Resource where id = ?");

			ps.setInt(1, Integer.valueOf(id));

			ResultSet rs = ps.executeQuery();

			if (rs.next()) {
				resourceBean = new ResourceBean();
				resourceBean.setId(rs.getInt("Id"));
				resourceBean.setName(rs.getString("Name"));
				resourceBean.setEmail(rs.getString("Email"));
				resourceBean.setMobno(rs.getString("Mobno"));
				resourceBean.setGender(rs.getString("Gender"));
				resourceBean.setExperience(rs.getString("Experience"));
				resourceBean.setResumeurl(rs.getString("Resumeurl"));
				resourceBean.setQualification(rs.getString("Qualification"));
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return resourceBean;

	}

	public void updateResource(ResourceBean resourceBean) {

		Connection con = DbConnection.getConnection();
		try {
			PreparedStatement ps = con.prepareStatement(
					"update Resource set Name=?, Email=?, Mobno=?, Gender=?, Experience=?, Resumeurl=?, Qualification=? where id=?");

			ps.setString(1, (resourceBean.getName()));
			ps.setString(2, (resourceBean.getEmail()));
			ps.setString(3, (resourceBean.getMobno()));
			ps.setString(4, (resourceBean.getGender()));
			ps.setString(5, (resourceBean.getExperience()));
			ps.setString(6, (resourceBean.getResumeurl()));
			ps.setString(7, (resourceBean.getQualification()));
			ps.setInt(8, (resourceBean.getId()));

			ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

	}

	public void deleteResource(String id) {
		Connection con = DbConnection.getConnection();
		try {
			PreparedStatement ps;

			ps = con.prepareStatement("delete from Res_DB where id = ?");
			ps.setInt(1, Integer.valueOf(id));
			ps.executeUpdate();

			ps = con.prepareStatement("delete from Res_Lng where id = ?");
			ps.setInt(1, Integer.valueOf(id));
			ps.executeUpdate();

			ps = con.prepareStatement("delete from Res_Tech where id = ?");
			ps.setInt(1, Integer.valueOf(id));
			ps.executeUpdate();

			ps = con.prepareStatement("delete from Resource where id=?");
			ps.setInt(1, Integer.valueOf(id));
			ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

	}

	public ArrayList<ResourceBean> searchResource(String name) {
		ArrayList<ResourceBean> resourceBeanAL = new ArrayList<ResourceBean>();
		ResourceBean resourceBean = null;

		Connection con = DbConnection.getConnection();
		try {
			PreparedStatement ps = con.prepareStatement("select * from Resource where name like ?");

			ps.setString(1, name + "%");

			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				resourceBean = new ResourceBean();
				resourceBean.setId(rs.getInt("Id"));
				resourceBean.setName(rs.getString("Name"));
				resourceBean.setEmail(rs.getString("Email"));
				resourceBean.setMobno(rs.getString("Mobno"));
				resourceBean.setGender(rs.getString("Gender"));
				resourceBean.setExperience(rs.getString("Experience"));
				resourceBean.setResumeurl(rs.getString("Resumeurl"));
				resourceBean.setQualification(rs.getString("Qualification"));

				resourceBeanAL.add(resourceBean);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		return resourceBeanAL;
	}

	public void addLanguage(int id, String[] language) {

		Connection con = DbConnection.getConnection();
		int lngid[] = new int[language.length];

		for (int i = 0; i < language.length; i++) {
			String lng = language[i];

			PreparedStatement ps;
			try {
				ps = con.prepareStatement("select LngId from Language where LngName = ?");

				ps.setString(1, lng);

				ResultSet rs = ps.executeQuery();
				int tempid = 0;
				if (rs.next()) {
					tempid = rs.getInt("LngId");

				}

				ps = con.prepareStatement("insert into Res_Lng values(?,?)");

				ps.setInt(1, tempid);
				ps.setInt(2, id);

				ps.executeUpdate();

			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} finally {
				try {
					con.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}

		}

	}

	public int addResource(String name, String email, String mobno, String gender, String experience, String resumeurl,
			String qualification) {
		// ResourceBean resourceBean = null;
		int id = 0;

		Connection con = DbConnection.getConnection();
		try {
			PreparedStatement ps;
			ps = con.prepareStatement("insert into Resource values(?,?,?,?,?,?,?)");

			ps.setString(1, name);
			ps.setString(2, email);
			ps.setString(3, mobno);
			ps.setString(4, gender);
			ps.setString(5, experience);
			ps.setString(6, resumeurl);
			ps.setString(7, qualification);

			ps.executeUpdate();

			ps = con.prepareStatement("select id from Resource where email=?");
			ps.setString(1, email);

			ResultSet rs = ps.executeQuery();

			if (rs.next()) {
				id = rs.getInt("Id");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		return id;

	}

	public void addDatabase(int id, String[] database) {
		Connection con = DbConnection.getConnection();

		for (int i = 0; i < database.length; i++) {
			String db = database[i];

			PreparedStatement ps;
			try {
				ps = con.prepareStatement("select DBId from DBName where DbName = ?");

				ps.setString(1, db);

				ResultSet rs = ps.executeQuery();
				int tempDbid = 0;
				if (rs.next()) {
					tempDbid = rs.getInt("DBId");

				}

				ps = con.prepareStatement("insert into Res_DB values(?,?)");

				ps.setInt(1, tempDbid);
				ps.setInt(2, id);

				ps.executeUpdate();

			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} finally {
				try {
					con.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}

		}

	}

	public void addTechnology(int id, String[] technology) {
		Connection con = DbConnection.getConnection();

		for (int i = 0; i < technology.length; i++) {
			String tech = technology[i];

			PreparedStatement ps;
			try {
				ps = con.prepareStatement("select TechId from Technology where TechName = ?");

				ps.setString(1, tech);

				ResultSet rs = ps.executeQuery();
				int tempTechid = 0;
				if (rs.next()) {
					tempTechid = rs.getInt("TechId");

				}

				ps = con.prepareStatement("insert into Res_Tech values(?,?)");

				ps.setInt(1, tempTechid);
				ps.setInt(2, id);

				ps.executeUpdate();

			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} finally {
				try {
					con.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}

		}

	}

	public ArrayList viewLanguage(String id) {
		ArrayList languageAL = new ArrayList();

		Connection con = DbConnection.getConnection();

		try {
			PreparedStatement ps = con.prepareStatement(
					"select LngName from Language where LngId in (select LngId from Res_Lng where Id in(select Id from Resource where Id=?))");

			ps.setInt(1, Integer.valueOf(id));
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				languageAL.add(rs.getString("LngName"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return languageAL;
	}

	public ArrayList viewDatabase(String id) {

		ArrayList databaseAL = new ArrayList();

		Connection con = DbConnection.getConnection();

		try {
			PreparedStatement ps = con.prepareStatement(
					"select DbName from DBName where DBId in (select DBId from Res_DB where Id in(select Id from Resource where Id=?))");

			ps.setInt(1, Integer.valueOf(id));
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				databaseAL.add(rs.getString("DbName"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return databaseAL;
	}

	public ArrayList viewTechnology(String id) {
		ArrayList technologyAL = new ArrayList();

		Connection con = DbConnection.getConnection();

		try {
			PreparedStatement ps = con.prepareStatement(
					"select TechName from Technology where TechId in (select TechId from Res_Tech where Id in(select Id from Resource where Id=?))");

			ps.setInt(1, Integer.valueOf(id));
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				technologyAL.add(rs.getString("TechName"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return technologyAL;
	}

}