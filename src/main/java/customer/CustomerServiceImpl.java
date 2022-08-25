package customer;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CustomerServiceImpl implements CustomerService {


	@Autowired private CustomerDAO dao;

	@Override
	  public List<CustomerVO> customer_detail(String ownerid) { 
		return dao.customer_detail(ownerid); 
		}
	
	@Override
		public List<UserVO> customer_user(String userid) {
		return dao.customer_user(userid);
	}
	
	
		/*
		 * public List<CustomerVO> customer_graph(String ownerid) { return
		 * dao.customer_graph(ownerid); }
		 */




}
