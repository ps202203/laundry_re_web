package customer;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CustomerServiceImpl implements CustomerService {


	@Autowired private CustomerDAO dao;

	@Override
	public List<CustomerVO> customer_detail(Integer storeid) {
		return dao.customer_detail(storeid);
	}




}
