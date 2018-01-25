package ch.bbw.addressbook;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;
import javax.annotation.PreDestroy;
import javax.faces.bean.ApplicationScoped;
import javax.inject.Named;

@Named("AddressDAO")
@ApplicationScoped
public class AddressDAO_Database implements AddressDAO {
	
	private Connection connection; // TODO: to be replaced by connection pool
	
	public AddressDAO_Database() {
	}
	
	@PostConstruct
	private void init() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection("jdbc:mysql://localhost/address","root","");
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}		
	}
	@PreDestroy
	private void destroy() {
		try {
			connection.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	
	// CRUD Commands: Create Read Update Delete
	/* (non-Javadoc)
	 * @see ch.bbw.addressbook.AddressDAOInterface#create(ch.bbw.addressbook.Address)
	 */
//	@Override
	public void create(Address address) {
		try {
			String sql = "INSERT INTO address"
					+ "(FIRSTNAME, LASTNAME, PHONENUMBER, REGISTRATIONDATE) VALUES"
					+ "(?,?,?,?)";
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, address.getFirstname());
			preparedStatement.setString(2, address.getLastname());
			preparedStatement.setString(3, address.getPhonenumber());
			
//			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
//			String currentTime = sdf.format(address.getRegistrationDate());
//			preparedStatement.setString(4, currentTime);
			preparedStatement.setDate(4, new java.sql.Date(address.getRegistrationDate().getTime()));
			//—>>> Datenbankfeld umdefinieren auf datetime
			preparedStatement .executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}


	/* (non-Javadoc)
	 * @see ch.bbw.addressbook.AddressDAOInterface#read(int)
	 */
//	@Override
	public Address read(int id) {
		Address address = null;
		ResultSet entries = prepareStatement("SELECT * FROM address WHERE id=" + id + ";");
		try {
			address = new Address(
                        entries.getInt("id"),
                        entries.getString("firstname"),
                        entries.getString("lastname"),
                        entries.getString("phonenumber"),
                        entries.getDate("registrationDate"));
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return address;
	}
	
	/* (non-Javadoc)
	 * @see ch.bbw.addressbook.AddressDAOInterface#readAll()
	 */
//	@Override
	public List<Address> readAll(){
		List<Address> list = new ArrayList<>();
		ResultSet entries = prepareStatement("SELECT * FROM address");
		try {
			while (entries.next()) {
				list.add(new Address(
						entries.getInt("id"),
						entries.getString("firstname"),
						entries.getString("lastname"),
						entries.getString("phonenumber"),
						entries.getDate("registrationDate")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

	/* (non-Javadoc)
	 * @see ch.bbw.addressbook.AddressDAOInterface#update(ch.bbw.addressbook.Address)
	 */
//	@Override
	public void update(Address address) {
		prepareStatement("UPDATE address SET firstname = " + address.getFirstname() + ","
				+ "lastname = " + address.getLastname() + ","
				+ "phnonenumber = " + address.getPhonenumber()
				+ "WHERE id = " + address.getId() + ";");
	}
	
	/* (non-Javadoc)
	 * @see ch.bbw.addressbook.AddressDAOInterface#delete(int)
	 */
//	@Override
	public void delete(int id) {
		prepareStatement("DELETE FROM address" +
				"WHERE id = " + id + ";");
	}

	private ResultSet prepareStatement(String sql){
		try {
			Statement stmt = connection.createStatement();
			ResultSet entries = stmt.executeQuery(sql);
			entries.close();
			stmt.close();
			return entries;
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}

}
