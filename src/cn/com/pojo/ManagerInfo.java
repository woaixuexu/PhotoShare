package cn.com.pojo;

public class ManagerInfo {
    private Integer managerid;

    private String managername;

    private String managerpwd;

    private Integer managerlevel;

    public Integer getManagerid() {
        return managerid;
    }

    public void setManagerid(Integer managerid) {
        this.managerid = managerid;
    }

    public String getManagername() {
        return managername;
    }

    public void setManagername(String managername) {
        this.managername = managername == null ? null : managername.trim();
    }

    public String getManagerpwd() {
        return managerpwd;
    }

    public void setManagerpwd(String managerpwd) {
        this.managerpwd = managerpwd == null ? null : managerpwd.trim();
    }

    public Integer getManagerlevel() {
        return managerlevel;
    }

    public void setManagerlevel(Integer managerlevel) {
        this.managerlevel = managerlevel;
    }
}