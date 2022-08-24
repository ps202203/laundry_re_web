package customer;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

@Repository
public class CustomerDAO implements CustomerService{
	@Autowired @Qualifier("ateam") private SqlSession sql;


	/*
	 * public List<CustomerVO> customer_detail(Integer storeid) { return
	 * sql.selectList("customer.mapper.detail", storeid); }
	 */
	
	  public List<CustomerVO> customer_detail(String ownerid) { 
		  return sql.selectList("customer.mapper.detail", ownerid); 
	}
	  public List<UserVO> customer_user(String userid) {
		  return sql.selectList("customer.mapper.user", userid);
	  }
	 

	/*public List<CustomerVO> customer_graph(String ownerid) {
		return sql.selectOne("customer.mapper.graph", ownerid);
	}*/




	

	
}
