package service.dao.aimpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import service.dao.ApplicantDAO;
import service.dto.MessageBoxCPDTO;
import service.dto.MessageBoxPCDTO;
import service.dto.PersonLoginDTO;
import service.dto.PersonResumeDTO;
import service.dto.ScrapCompanyDTO;
import service.dto.ScrapCompanyInfoDTO;
import service.util.DBUtil;
import service.util.SqlQuerys;

public class ApplicantDAOImpl implements ApplicantDAO {
	private static ApplicantDAO dao = new ApplicantDAOImpl();

	public static ApplicantDAO getInstance() {
		return dao;
	}
	
	@Override//회원 가입
	public int insert(PersonLoginDTO memberData) throws SQLException {
		Connection con=null;//지역변수 초기화 
		PreparedStatement ps=null;
		String sql=SqlQuerys.P_JOIN;
		int rs=0; 
		try { con=DBUtil.getConnection();//로드 후 연결
		  	  ps=con.prepareStatement(sql); 
		  	  ps.setString(1, memberData.getId());
		  	  ps.setString(2, memberData.getPwd());
		  	  ps.setString(3, memberData.getPersonPhone());
		      rs=ps.executeUpdate();//실행
		      System.out.println("ApplicantDAOImpl-insert-result: "+rs);
		} catch(SQLException e) { e.printStackTrace(); throw new SQLException(); 
		} finally { DBUtil.dbClose(ps, con); }//닫기
		return rs;
	}
	
	@Override
	public List<PersonResumeDTO> resumeSelectAll() throws SQLException {

		//필요한 변수 선언
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<PersonResumeDTO> list = new ArrayList<>();
		PersonResumeDTO personResumeDTO = null;
		
		try {
			con = DBUtil.getConnection();
			String sql=SqlQuerys.P_SELECT_RESUME_ALL;
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			
			while(rs.next()) {
				personResumeDTO = new PersonResumeDTO(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4)
						                             ,rs.getString(5), rs.getInt(6), rs.getString(7), rs.getString(8)
						                             ,rs.getString(9), rs.getString(10), rs.getString(11));
				list.add(personResumeDTO);
			}
		} finally {
			//닫기
			DBUtil.dbClose(rs, ps, con);
		}
		return list;
	}

	@Override//회원 정보수정
	public int update(PersonLoginDTO memberData) throws SQLException {
		// TODO Auto-generated method stub
		return 0;
	}
	
	@Override//회원 탈퇴 
	public int delete(PersonLoginDTO idOrOther) throws SQLException {
		// TODO Auto-generated method stub
		return 0;
	}

	
	
	@Override
	public int insertPersonResume(PersonResumeDTO personResumeDTO) throws SQLException {
		
		//필요한 변수 선언
		Connection con = null;
		PreparedStatement ps = null;
		int result = 0;
		String sql = SqlQuerys.P_ADD_RESUME;
		
		try {
			con = DBUtil.getConnection();
			ps = con.prepareStatement(sql);
			
			ps.setString(1, personResumeDTO.getPersonId());
			ps.setString(2, personResumeDTO.getPersonName());
			ps.setString(3, personResumeDTO.getPersonOccupation());
			ps.setString(4, personResumeDTO.getPersonCareer());
			ps.setString(5, personResumeDTO.getPersonImg());
			ps.setInt(6, personResumeDTO.getPersonAge());
			ps.setString(7, personResumeDTO.getPersonSex());
			ps.setString(8, personResumeDTO.getPersonBirth());
			ps.setString(9, personResumeDTO.getPersonEmail());
			ps.setString(10, personResumeDTO.getPersonHopePlace());
			ps.setString(11, personResumeDTO.getPersonJobStatus());

			result = ps.executeUpdate();

		} finally {
			//닫기
			DBUtil.dbClose(ps, con);
		}
		return result;	

	}

	@Override
	public PersonResumeDTO resumeSelectbypersonId(String personId) throws SQLException {
		
		//필요한 변수 선언
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		PersonResumeDTO personResumeDTO = null;
		
		try {
			con = DBUtil.getConnection();
			String sql=SqlQuerys.P_SELECT_RESUME_BY_ID;
			ps = con.prepareStatement(sql);
			ps.setString(1, personId);
			rs = ps.executeQuery();
			
			while(rs.next()) {
				personResumeDTO = new PersonResumeDTO(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4)
						                             ,rs.getString(5), rs.getInt(6), rs.getString(7), rs.getString(8)
						                             ,rs.getString(9), rs.getString(10), rs.getString(11));
			}
		} finally {
			//닫기
			DBUtil.dbClose(rs, ps, con);
		}
		return personResumeDTO;
		
	}

	@Override
	public int sendMessagePtoC(MessageBoxPCDTO messageBoxPCDTO) throws SQLException {
		
		//필요한 변수 선언
		Connection con = null;
		PreparedStatement ps = null;
		int result = 0;
		String sql = SqlQuerys.SEND_MESSAGE_P_C;
		
		try {
			con = DBUtil.getConnection();
			ps = con.prepareStatement(sql);
			
			ps.setString(1, messageBoxPCDTO.getMessageContents());
			ps.setString(2, messageBoxPCDTO.getPersonSendId());
			ps.setString(3, messageBoxPCDTO.getCompanyReceiveId());
			
			result = ps.executeUpdate();

		} finally {
			//닫기
			DBUtil.dbClose(ps, con);
		}
		return result;
	}

	@Override
	public List<MessageBoxPCDTO> companyCheckMessage(String companyReceiveId) throws SQLException {
		
		//필요한 변수 선언
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<MessageBoxPCDTO> list = new ArrayList<MessageBoxPCDTO>();
		MessageBoxPCDTO messageBoxPCDTO = null;
		
		try {
			con = DBUtil.getConnection();
			String sql=SqlQuerys.SELECT_MESSAGE_P_C;
			ps = con.prepareStatement(sql);
			
			ps.setString(1, companyReceiveId);

			rs = ps.executeQuery();
			
			while(rs.next()) {
				messageBoxPCDTO = new MessageBoxPCDTO(rs.getInt(1), rs.getString(2), rs.getString(3)
						               ,rs.getInt(4), rs.getString(5), rs.getString(6));
				list.add(messageBoxPCDTO);
			}
			
		} finally {
			//닫기
			DBUtil.dbClose(rs, ps, con);
		}
		return list;
	}

	@Override
	public int companyCheckedMessage(int messageNo) throws SQLException {
		
		//필요한 변수 선언
		Connection con = null;
		PreparedStatement ps = null;
		int result = 0;
		String sql = SqlQuerys.CHECK_MESSAGE_P_C;
		
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
	public int scrapCompany(ScrapCompanyDTO scrapCompanyDTO) throws SQLException {

	      Connection con = null;
	      PreparedStatement ps = null;
	      int result = 0;
	      String sql = SqlQuerys.SCRAP_C_P;
	      
	      try {
	         con = DBUtil.getConnection();
	         ps = con.prepareStatement(sql);
	         
	         ps.setString(1, scrapCompanyDTO.getPersonScraperId());
	         ps.setString(2, scrapCompanyDTO.getCompanyTargetId());

	         result = ps.executeUpdate();

	      } finally {
	         //닫기
	         DBUtil.dbClose(ps, con);
	      }
	      return result;
		
	}

	 @Override
	   public int scrapCompanyCancel(ScrapCompanyDTO scrapCompanyDTO) throws SQLException {
	      Connection con = null;
	         PreparedStatement ps = null;
	         int result = 0;
	         String sql=SqlQuerys.SCRAP_DELETE_C_P;
	         
	         try {
	            con = DBUtil.getConnection();
	            ps = con.prepareStatement(sql);
	            
	            ps.setString(1, scrapCompanyDTO.getPersonScraperId());
	            ps.setString(2, scrapCompanyDTO.getCompanyTargetId());
	            
	            result = ps.executeUpdate();
	   
	         } finally {
	            //닫기
	            DBUtil.dbClose(ps, con);
	         }
	         return result;
	   }

	@Override
	public List<ScrapCompanyDTO> scrapList() throws SQLException {

		//필요한 변수 선언
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<ScrapCompanyDTO> list = new ArrayList<>();
		ScrapCompanyDTO scrapCompanyDTO = null;
		
		try {
			con = DBUtil.getConnection();
			String sql=SqlQuerys.SCRAP_P_C_LIST;
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			
			while(rs.next()) {
				scrapCompanyDTO = new ScrapCompanyDTO(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4));
				list.add(scrapCompanyDTO);
			}
		} finally {
			//닫기
			DBUtil.dbClose(rs, ps, con);
		}
		return list;
	}

	@Override
	public List<MessageBoxPCDTO> msgBoxPCDTOselectAll() throws SQLException {
		//필요한 변수 선언
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<MessageBoxPCDTO> list = new ArrayList<>();
		MessageBoxPCDTO messageBoxPCDTO = null;
								
		try {
			con = DBUtil.getConnection();
			String sql=SqlQuerys.MESSAGE_P_C_LIST;
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
									
			while(rs.next()) {
				messageBoxPCDTO = new MessageBoxPCDTO(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getString(5), rs.getString(6));
				list.add(messageBoxPCDTO);
			}
			} finally {
								//닫기
			DBUtil.dbClose(rs, ps, con);
		}
		return list;
	}

	@Override
	public List<ScrapCompanyInfoDTO> scrapedCompanyView(String personScraperId) throws SQLException {

		//필요한 변수 선언
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<ScrapCompanyInfoDTO> list = new ArrayList<>();
		ScrapCompanyInfoDTO scrapCompanyInfoDTO = null;
		
		try {
			con = DBUtil.getConnection();
			String sql=SqlQuerys.SCRAP_C_P_LIST_COMPANY_INFO;
			ps = con.prepareStatement(sql);
			ps.setString(1, personScraperId);
			rs = ps.executeQuery();
			
			while(rs.next()) {
				scrapCompanyInfoDTO = new ScrapCompanyInfoDTO(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4)
						, rs.getString(5));
				list.add(scrapCompanyInfoDTO);
			}
		} finally {
			//닫기
			DBUtil.dbClose(rs, ps, con);
		}
		return list;
	}
}
