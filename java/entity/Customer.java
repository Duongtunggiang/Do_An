package entity;

public class Customer {
	private int id;
	private int userId;
	private String customerName;
	private String address;
	private int phoneNumber;
	private String email;
	public Customer(int id, int userId, String customerName, String address, int phoneNumber, String email) {
		super();
		this.id = id;
		this.userId = userId;
		this.customerName = customerName;
		this.address = address;
		this.phoneNumber = phoneNumber;
		this.email = email;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getCustomerName() {
		return customerName;
	}
	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public int getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(int phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	@Override
	public String toString() {
		return "Customer [id=" + id + ", userId=" + userId + ", customerName=" + customerName + ", address=" + address
				+ ", phoneNumber=" + phoneNumber + ", email=" + email + "]";
	}
	
}
