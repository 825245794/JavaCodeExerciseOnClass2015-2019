package Test2;

import java.sql.SQLException;

public class Test {

	public static void main(String[] args) throws SQLException {
		// TODO Auto-generated method stub
		
		//模拟部门信息录入
		Departments dept = new Departments();
		dept.setDepartment_id(301);
		dept.setDepartment_name("财务部");
		dept.setManager_id(107);
		dept.setLocation_id(1700);
		
		//调用dao
		DepartmentsDao dao = new DepartmentsDao();
		int row = dao.insert(dept);
		System.out.println(row);
	}

}
