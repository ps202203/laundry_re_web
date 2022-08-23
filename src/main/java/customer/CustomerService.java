package customer;

import java.util.List;

public interface CustomerService {
	//CRUD
	

	//고객상세조회(Read:select)
	List<CustomerVO> customer_detail(Integer storeid);

}
