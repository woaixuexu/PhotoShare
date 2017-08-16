package cn.com.pojo;

public class MessageInfo {
    private Integer messageid;

    private Integer userid;

    private String wmessage;

    private Long addtime;

    private Integer mstate;

    private Integer pageview;

    public Integer getMessageid() {
        return messageid;
    }

    public void setMessageid(Integer messageid) {
        this.messageid = messageid;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public String getWmessage() {
        return wmessage;
    }

    public void setWmessage(String wmessage) {
        this.wmessage = wmessage == null ? null : wmessage.trim();
    }

    public Long getAddtime() {
        return addtime;
    }

    public void setAddtime(Long addtime) {
        this.addtime = addtime;
    }

    public Integer getMstate() {
        return mstate;
    }

    public void setMstate(Integer mstate) {
        this.mstate = mstate;
    }

    public Integer getPageview() {
        return pageview;
    }

    public void setPageview(Integer pageview) {
        this.pageview = pageview;
    }
}