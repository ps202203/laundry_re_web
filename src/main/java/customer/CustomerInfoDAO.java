package customer;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;


	@Repository
	public class CustomerInfoDAO implements CustomerInfoService{
		@Autowired @Qualifier("ateam") private SqlSession sql;

		@Override
		public List<CustomerInfoVO> customer_info(Integer storeid) {
			return sql.selectList("customer.mapper.info", storeid);
		}
		
	}


