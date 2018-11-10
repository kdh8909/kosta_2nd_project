package service.dao.aimpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import service.dao.ApplicantDAO;
import service.dao.CompanyDAO;
import service.dto.CompanyInfoDTO;
import service.dto.CompanyLoginDTO;
import service.dto.CompanyRecruitDTO;
import service.dto.MessageBoxCPDTO;
import service.dto.MessageBoxPCDTO;
import service.dto.ScrapCompanyDTO;
import service.dto.ScrapPersonDTO;
import service.util.DBUtil;
import service.util.SqlQuerys;

public class CompanyDAOImpl implements CompanyDAO {
	private static CompanyDAO dao = new CompanyDAOImpl();

	public static CompanyDAO getInstance() {
		return dao;
	}
	
	@Override
	public int insertCompanyRecruit(CompanyRecruitDTO companyRecruitDTO) throws SQLException {
		
		//필요한 변수 선언
		Connection con = null;
		PreparedStatement ps = null;
		int result = 0;
		String sql = SqlQuerys.C_ADD_RECRUIT;
		
		try {
			con = DBUtil.getConnection();
			ps = con.prepareStatement(sql);
			
			ps.setString(1, companyRecruitDTO.getCompanyId());
			ps.setString(2, companyRecruitDTO.getCompanyWorkAddr());
			ps.setString(3, companyRecruitDTO.getCompanyEmploymentType());
			ps.setString(4, companyRecruitDTO.getCompanySalary());
			ps.setString(5, companyRecruitDTO.getCompanyCareer());
			ps.setString(6, companyRecruitDTO.getCompanyEducation());
			ps.setString(7, companyRecruitDTO.getRecruitTilte());
			ps.setString(8, companyRecruitDTO.getRecruitDeadline());

			result = ps.executeUpdate();

		} finally {
			//닫기
			DBUtil.dbClose(ps, con);
		}
		return result;	
	}

	@Override
	   public List<CompanyRecruitDTO> companyRecruitSelectAll() throws SQLException {
	      Connection con = null;
	      PreparedStatement ps = null;
	      ResultSet rs = null;
	      List<CompanyRecruitDTO> list = new ArrayList<>();
	      CompanyRecruitDTO companyRecruitDTO = null;
	      
	      
	      try {
	         con = DBUtil.getConnection();
	         String sql=SqlQuerys.C_SELECT_RECRUIT_ALL;
	         ps = con.prepareStatement(sql);
	         rs = ps.executeQuery();
	         
	         while(rs.next()) {
	            companyRecruitDTO = new CompanyRecruitDTO(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4)
	                                               ,rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8)
	                                               ,rs.getString(9));
	            list.add(companyRecruitDTO);
	         } System.out.println("companyRecruitSelectAll: "+list);
	      } finally {
	         //닫기
	         DBUtil.dbClose(rs, ps, con);
	      }
	      return list;
	   }

	@Override
	public List<CompanyRecruitDTO> companyRecruitSelectByCompanyName(String companyName) throws SQLException {
		
		//필요한 변수 선언
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<CompanyRecruitDTO> list = new ArrayList<>();
		CompanyRecruitDTO companyRecruitDTO = null;
		
		try {
			con = DBUtil.getConnection();
			String sql=SqlQuerys.C_SELECT_RECRUIT_BY_C_NAME;
			ps = con.prepareStatement(sql);
			
			ps.setString(1, "%"+companyName+"%");
			
			rs = ps.executeQuery();
			
			while(rs.next()) {
				companyRecruitDTO = new CompanyRecruitDTO(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4)
						            ,rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9));
				list.add(companyRecruitDTO);
			}
		} finally {
			//닫기
			DBUtil.dbClose(rs, ps, con);
		}		
		return list;
	}

	@Override
	public int updateViews(String companyId) throws SQLException {
		
		//필요한 변수 선언
		Connection con = null;
		PreparedStatement ps = null;
		int result = 0;
		String sql = SqlQuerys.C_ADD_VIEWS;
		
		try {
			con = DBUtil.getConnection();
			ps = con.prepareStatement(sql);
			
			ps.setString(1, companyId);
			
			result = ps.executeUpdate();

		} finally {
			//닫기
			DBUtil.dbClose(ps, con);
		}
		return result;

	}

	@Override
	public int sendMessageCtoP(MessageBoxCPDTO messageBoxCPDTO) throws SQLException {
		
		//필요한 변수 선언
		Connection con = null;
		PreparedStatement ps = null;
		int result = 0;
		String sql = SqlQuerys.SEND_MESSAGE_P_C;
		
		try {
			con = DBUtil.getConnection();
			ps = con.prepareStatement(sql);
			
			ps.setString(1, messageBoxCPDTO.getMessageContents());
			ps.setString(2, messageBoxCPDTO.getCompanySendId());
			ps.setString(3, messageBoxCPDTO.getPersonReceiveId());
			
			result = ps.executeUpdate();

		} finally {
			//닫기
			DBUtil.dbClose(ps, con);
		}
		return result;
	}

	@Override
	public List<MessageBoxCPDTO> personCheckMessage(String personReceiveId) throws SQLException {
		
		//필요한 변수 선언
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<MessageBoxCPDTO> list = new ArrayList<MessageBoxCPDTO>();
		MessageBoxCPDTO messageBoxCPDTO = null;
		
		try {
			con = DBUtil.getConnection();
			String sql=SqlQuerys.SELECT_MESSAGE_C_P;
			ps = con.prepareStatement(sql);
			
			ps.setString(1, personReceiveId);

			rs = ps.executeQuery();
			
			while(rs.next()) {
				messageBoxCPDTO = new MessageBoxCPDTO(rs.getInt(1), rs.getString(2), rs.getString(3)
						               ,rs.getInt(4), rs.getString(5), rs.getString(6));
				list.add(messageBoxCPDTO);
			}
			
		} finally {
			//닫기
			DBUtil.dbClose(rs, ps, con);
		}
		return list;
	}

	@Override
	public int personCheckedMessage(int messageNo) throws SQLException {
		
		//필요한 변수 선언
		Connection con = null;
		PreparedStatement ps = null;
		int result = 0;
		String sql = SqlQuerys.CHECK_MESSAGE_C_P;
		
		try {
			con = DBUtil.getConnection();
			ps = con.prepareStatement(sql);
			
			ps.setInt(1, messageNo);
			
			result = ps.executeUpdate();

		} finally {
			//닫기
			DBUtil.dbClose(ps, con);
		}
		return result;		
	}

	@Override
	public int applicantCompany(String companyReceiveId) throws SQLException {
		
		//필요한 변수 선언
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		int result = 0;
		
		try {
			con = DBUtil.getConnection();
			String sql=SqlQuerys.SELECT_APPLICANT;
			ps = con.prepareStatement(sql);
			ps.setString(1, companyReceiveId);
			rs = ps.executeQuery();
			
			rs.next();
			result = Integer.parseInt(rs.getString(1));
	
		} finally {
			//닫기
			DBUtil.dbClose(rs, ps, con);
		}

		return result;
	}

	@Override
	   public int scrapCompanyCount(String companyTargetId) throws SQLException {
	      Connection con = null;
	      PreparedStatement ps = null;
	      ResultSet rs = null;
	      int result = 0;
	      
	      try {
	         con = DBUtil.getConnection();
	         String sql=SqlQuerys.SCRAP_NUMBERS;
	         ps = con.prepareStatement(sql);
	         
	         ps.setString(1, companyTargetId);
	         rs = ps.executeQuery();
	         
	         rs.next();
	         result = Integer.parseInt(rs.getString(1));
	      } finally {
	         //닫기
	         DBUtil.dbClose(rs, ps, con);
	      }
	      return result;
	   }

	@Override
	   public int scrapPerson(ScrapPersonDTO scrapPersonDTO) throws SQLException {
	      Connection con = null;
	      PreparedStatement ps = null;
	      int result = 0;
	      String sql = SqlQuerys.SCRAP_P_C;
	      
	      try {
	         con = DBUtil.getConnection();
	         ps = con.prepareStatement(sql);
	         
	         ps.setString(1, scrapPersonDTO.getCompanyScraperId());
	         ps.setString(2, scrapPersonDTO.getPersonTargetId());

	         result = ps.executeUpdate();

	      } finally {
	         //닫기
	         DBUtil.dbClose(ps, con);
	      }
	      return result;   
	   }

	@Override
	   public int scrapPersonCancel(ScrapPersonDTO scrapPersonDTO) throws SQLException {
	      
	        Connection con = null;
	         PreparedStatement ps = null;
	         int result = 0;
	         String sql=SqlQuerys.SCRAP_DELETE_P_C;
	         
	         try {
	            con = DBUtil.getConnection();
	            ps = con.prepareStatement(sql);
	            
	            ps.setString(1, scrapPersonDTO.getCompanyScraperId());
	            ps.setString(2, scrapPersonDTO.getPersonTargetId());
	            
	            result = ps.executeUpdate();
	   
	         } finally {
	            //닫기
	            DBUtil.dbClose(ps, con);
	         }
	         return result;
	   }

	@Override
	public List<ScrapPersonDTO> scrapList() throws SQLException {
		//필요한 변수 선언
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<ScrapPersonDTO> list = new ArrayList<>();
		ScrapPersonDTO scrapPersonDTO = null;
				
		try {
			con = DBUtil.getConnection();
			String sql=SqlQuerys.SCRAP_C_P_LIST;
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
					
			while(rs.next()) {
				scrapPersonDTO = new ScrapPersonDTO(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4));
				list.add(scrapPersonDTO);
			}
		} finally {
				//닫기
			DBUtil.dbClose(rs, ps, con);
		}
		return list;
	}

	@Override
	public List<MessageBoxCPDTO> msgBoxCPDTOselectAll() throws SQLException {
		//필요한 변수 선언
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<MessageBoxCPDTO> list = new ArrayList<>();
		MessageBoxCPDTO messageBoxCPDTO = null;
						
		try {
			con = DBUtil.getConnection();
			String sql=SqlQuerys.MESSAGE_C_P_LIST;
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
							
			while(rs.next()) {
				messageBoxCPDTO = new MessageBoxCPDTO(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getString(5), rs.getString(6));
				list.add(messageBoxCPDTO);
			}
			} finally {
						//닫기
			DBUtil.dbClose(rs, ps, con);
		}
		return list;
	}
	
	@Override
	public List<CompanyInfoDTO> selectAllCompanyInfo() throws SQLException {
		//필요한 변수 선언
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<CompanyInfoDTO> list = new ArrayList<>();
		CompanyInfoDTO companyInfoDTO = null;
		
		try {
			con = DBUtil.getConnection();
			String sql=SqlQuerys.SELECT_ALL_COMPANIES;
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			
			while(rs.next()) {
				companyInfoDTO = new CompanyInfoDTO(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4)
						, rs.getString(5), rs.getString(6), rs.getInt(7), rs.getString(8), rs.getString(9)
						, rs.getString(10), rs.getInt(11));
				list.add(companyInfoDTO);
			}
		} finally {
			//닫기
			DBUtil.dbClose(rs, ps, con);
		}
		return list;
	}

}
