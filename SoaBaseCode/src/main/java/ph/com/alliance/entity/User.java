package ph.com.alliance.entity;
import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.Id;
/**
* The persistent class for the user database table.
*
*/
@Entity
@Table(name="user")
public class User implements Serializable {
    
    private static final long serialVersionUID = 1L;
    
    @Id
    @Column(name="user_id")
    private String user_id;
    
    private String firstName;
    private String lastName;
    private String email;
    private String password;
    
    public String getLastName() {
        return lastName;
    }
    public void setLastName(String lastName) {
        this.lastName = lastName;
    }
    public String getFirstName() {
        return firstName;
    }
    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }
    public String getUser_id() {
        return user_id;
    }
    public void setUser_id(String user_id) {
        this.user_id = user_id;
    }
    
    public String getEmail()
    { return email; }
    
    public void setEmail(String email)
    { this.email = email;}
    
    public String getPassword() {
        return password;
    }
    public void setPassword(String password) {
        this.password = password;
    }
    
    @Override
    public String toString() {
        return "User {" + "userID=" + user_id +
                ", firstName =" + firstName +
                ", lname=" + lastName +
                ", email = " + email +
                ", password = " + password + '}';
    }
}
