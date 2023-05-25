package g;

import java.util.Hashtable;
import d.dao;

public class bean {
	private String accountno;
	private String taccountno;
	private String username;
	 
	  private String password;
	  private String repassword;
	  private String address,phone;
	  private String amount;
	  private Hashtable errors;

	  public boolean validate() {
			 boolean bool=true;			 
			 if (accountno.equals("")) {
			        errors.put("accountno","Please enter a no"); 
			        bool=false;
			     }
		    if (username.equals(""))  {
		      errors.put("username","Please enter your user name");
		      //username="";
		      bool=false;
		    }
		    
		   
		    if (password.equals("") ) {
		        errors.put("password","Please enter a valid password");
		        password="";
		        bool=false;
		      }
		      if (!password.equals("") && (repassword.equals("") || !repassword.equals(password))) {
		    //if (repassword.equals("") ) {
		        errors.put("repassword","Please confirm your password");
		        repassword="";
		        bool=false;
		      }
		    
		      
		      if (address.equals(""))  {
			        errors.put("address","Please enter your address");
			       // address="";
			        bool=false;
			      }
			    
		      if (amount.equals("")) {
		          errors.put("amount","Please enter a amount");
		          amount="";
		          bool=false;
		        } 
		      
		      if (phone.equals("")) {
		          errors.put("phone","Please enter a phone");
		          //phone="";
		          bool=false;
		        }
		      
		      if(dao.CheckUsernameExists(accountno)) {
		      	errors.put("accountno","accountno already exist");
		          
		          bool=false;
		      }
		      return bool;
	  }
	  public String getErrorMsg(String s) {
		    String errorMsg =(String)errors.get(s.trim());
		    return (errorMsg == null) ? "":errorMsg;
		  }

	  
	  public bean() {
		  accountno="";
		  taccountno="";
		  username="";	  
		  password="";
		  repassword="";
		  address="";
		  amount="";
		  phone="";
		  
		  errors = new Hashtable(); 
		  }

	  public String getAccountno() {
			
			return accountno;
		}
		public void setAccountno(String accountno) {
			this.accountno = accountno;
		}
		
		
public String getTaccountno() {
			
			return taccountno;
		}
		public void setTaccountno(String taccountno) {
			this.taccountno = taccountno;
		}
		
		
		public String getUsername() {
			return username;
		}
		public void setUsername(String username) {
			this.username = username;
		}
		public String getPassword() {
			return password;
		}
		public void setPassword(String password) {
			this.password = password;
		}
		public String getRepassword() {
			return repassword;
		}
		public void setRepassword(String repassword) {
			this.repassword = repassword;
		}
		public String getAmount() {
			return amount;
		}
		public void setAmount(String amount) {
			this.amount = amount;
		}
		public String getAddress() {
			
			return  address;
		}
		public void setAddress(String  address) {
			this. address =  address;
		}
		
		public String getPhone() {
			return phone;
		}
		public void setPhone(String phone) {
			this.phone = phone;
		}

		

		
		public Hashtable getErrors() {
			return errors;
		}
		public void setErrors(Hashtable errors) {
			this.errors = errors;
		}	  
}
