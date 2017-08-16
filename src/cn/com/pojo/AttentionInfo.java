package cn.com.pojo;

public class AttentionInfo {
    private Integer attendid;

    private Integer userid;

    private Integer attenduserid;

    private Long attentiontime;

    private String groupname;

    private Integer istakeoff;

    public Integer getAttendid() {
        return attendid;
    }

    public void setAttendid(Integer attendid) {
        this.attendid = attendid;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public Integer getAttenduserid() {
        return attenduserid;
    }

    public void setAttenduserid(Integer attenduserid) {
        this.attenduserid = attenduserid;
    }

    public Long getAttentiontime() {
        return attentiontime;
    }

    public void setAttentiontime(Long attentiontime) {
        this.attentiontime = attentiontime;
    }

    public String getGroupname() {
        return groupname;
    }

    public void setGroupname(String groupname) {
        this.groupname = groupname == null ? null : groupname.trim();
    }

    public Integer getIstakeoff() {
        return istakeoff;
    }

    public void setIstakeoff(Integer istakeoff) {
        this.istakeoff = istakeoff;
    }
}