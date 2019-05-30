package Test2;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.dhee.jdbc2.Departments;
import com.dhee.util.OracleUtil;

public class DepartmentsDao {
	// 增
	public int insert(Departments dept) throws SQLException {
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		int row = 0;
		try {
			conn = OracleUtil.getConnection();

			String sql = "insert into departments values (?,?,?,?)";

			stmt = conn.prepareStatement(sql);

			stmt.setInt(1, dept.getDepartment_id());
			stmt.setString(2, dept.getDepartment_name());
			stmt.setInt(3, dept.getManager_id());
			stmt.setInt(4, dept.getLocation_id());

			// 4.执行SQL
			row = stmt.executeUpdate();
			System.out.println(row);

		} finally {
			OracleUtil.closeConnection(rs, stmt, conn);

		}
		return row;
	}

	// 删
	public int delete(Departments dept) throws SQLException {
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		int row = 0;
		try {
			conn = OracleUtil.getConnection();

			String sql = "delete departments set department_id= ?)";
			// 双引号里面是没有分号的呀，切记！！！！,问号表示占位符，要赋值
			stmt = conn.prepareStatement(sql);

			stmt.setInt(1, dept.getDepartment_id());

			// 4.执行SQL
			row = stmt.executeUpdate();
			System.out.println(row);

		} finally {
			OracleUtil.closeConnection(rs, stmt, conn);

		}
		return row;
	}

	// 改(根据主键修改其他列的值)
	public int update(Departments dept) throws SQLException {
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		int row = 0;
		try {
			conn = OracleUtil.getConnection();

			String sql = "update departments set department_name= ?,manager=?,location =?where department_id=?)";

			stmt = conn.prepareStatement(sql);

			stmt.setString(1, "开发部");
			stmt.setString(2, "HR");
			stmt.setInt(3, 1700);
			stmt.setInt(4, 500);

			// 4.执行SQL
			row = stmt.executeUpdate();
			System.out.println(row);

		} finally {
			OracleUtil.closeConnection(rs, stmt, conn);

		}
		return row;
	}

	// 查1（根据主键查询一行数据）
	public Departments findById(int id) throws SQLException{
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		Departments departments=new Departments();
		int row = 0;
		try {
			conn = OracleUtil.getConnection();

			String sql = "select * from departments where department_id=?)";

			stmt = conn.prepareStatement(sql);

			stmt.setInt(1, id);

			// 4.执行SQL
			rs= stmt.executeQuery();
			while (rs.next()) {
				   
				   departments.setDepartment_id(rs.getInt("departments_id"));
				   departments.setDepartment_name(rs.getString("department_name"));
				   departments.setLocation_id(rs.getInt("location_id"));
				   departments.setManager_id(rs.getInt("manager_id"));
			}

		} finally {
			OracleUtil.closeConnection(rs, stmt, conn);

		}
		return departments;
		
	}
	
	//查2（查询所有数据，不包括分页，查询条件）
	public List<Departments> findAll() throws SQLException{
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		List<Departments> list=new ArrayList<Departments>();
		int row = 0;
		try {
			conn = OracleUtil.getConnection();

			String sql = "select * from departments)";

			stmt = conn.prepareStatement(sql);

			// 4.执行SQL
			
			rs = stmt.executeQuery();
		    while (rs.next()) {
			   Departments departments=new Departments();
			   departments.setDepartment_id(rs.getInt("departments_id"));
			   departments.setDepartment_name(rs.getString("department_name"));
			   departments.setLocation_id(rs.getInt("location_id"));
			   departments.setManager_id(rs.getInt("manager_id"));
		}

		} finally {
			OracleUtil.closeConnection(rs, stmt, conn);

		}
		return list;
		
	}
}
