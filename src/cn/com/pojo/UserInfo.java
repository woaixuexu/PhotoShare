package cn.com.pojo;

public class UserInfo {
    private Integer userid;

    private String username;

    private Long usertel;

    private Integer usersex;

    private String email;

    private Long birthday;

    private String profile;

    private Integer level;

    private String location;

    private Long registrationtime;

    private String bloodtype;

    private String userpwd;

    private String edueationinfo;

    private Integer fansnum;

    private Integer attentionnum;

    private Integer dynamicnum;

    private String buddha;

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }

    public Long getUsertel() {
        return usertel;
    }

    public void setUsertel(Long usertel) {
        this.usertel = usertel;
    }

    public Integer getUsersex() {
        return usersex;
    }

    public void setUsersex(Integer usersex) {
        this.usersex = usersex;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email == null ? null : email.trim();
    }

    public Long getBirthday() {
        return birthday;
    }

    public void setBirthday(Long birthday) {
        this.birthday = birthday;
    }

    public String getProfile() {
        return profile;
    }

    public void setProfile(String profile) {
        this.profile = profile == null ? null : profile.trim();
    }
    public Integer getLevel() {
		return level;
	}

	public void setLevel(Integer level) {
		this.level = level;
	}

	public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location == null ? null : location.trim();
    }

    public Long getRegistrationtime() {
        return registrationtime;
    }

    public void setRegistrationtime(Long registrationtime) {
        this.registrationtime = registrationtime;
    }

    public String getBloodtype() {
        return bloodtype;
    }

    public void setBloodtype(String bloodtype) {
        this.bloodtype = bloodtype == null ? null : bloodtype.trim();
    }

    public String getUserpwd() {
        return userpwd;
    }

    public void setUserpwd(String userpwd) {
        this.userpwd = userpwd == null ? null : userpwd.trim();
    }

    public String getEdueationinfo() {
        return edueationinfo;
    }

    public void setEdueationinfo(String edueationinfo) {
        this.edueationinfo = edueationinfo == null ? null : edueationinfo.trim();
    }

    public Integer getFansnum() {
        return fansnum;
    }

    public void setFansnum(Integer fansnum) {
        this.fansnum = fansnum;
    }

    public Integer getAttentionnum() {
        return attentionnum;
    }

    public void setAttentionnum(Integer attentionnum) {
        this.attentionnum = attentionnum;
    }

    public Integer getDynamicnum() {
        return dynamicnum;
    }

    public void setDynamicnum(Integer dynamicnum) {
        this.dynamicnum = dynamicnum;
    }

    public String getBuddha() {
        return buddha;
    }

    public void setBuddha(String buddha) {
        this.buddha = buddha == null ? null : buddha.trim();
    }
}