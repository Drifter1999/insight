package dto;

public class UserDTO {
    private String userid;
    private String username;
    private String userpw;
    private String useremail;
    private String useraddr;
    private String userphone;

    public String getUserid() {
        return userid;
    }

    public String getUsername() {
        return username;
    }

    public String getUserpw() {
        return userpw;
    }

    public String getUseremail() {
        return useremail;
    }

    public String getUseraddr() {
        return useraddr;
    }

    public String getUserphone() {
        return userphone;
    }

    public void setUserid(String userid) {
        this.userid = userid;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public void setUserpw(String userpw) {
        this.userpw = userpw;
    }

    public void setUseremail(String useremail) {
        this.useremail = useremail;
    }

    public void setUseraddr(String useraddr) {
        this.useraddr = useraddr;
    }

    public void setUserphone(String userphone) {
        this.userphone = userphone;
    }
}
