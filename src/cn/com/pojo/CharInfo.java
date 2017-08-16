package cn.com.pojo;

public class CharInfo {
    private Integer charid;

    private Integer sendid;

    private Integer receiveid;

    private Long chartime;

    private String charcontent;

    private Integer charstates;

    public Integer getCharid() {
        return charid;
    }

    public void setCharid(Integer charid) {
        this.charid = charid;
    }

    public Integer getSendid() {
        return sendid;
    }

    public void setSendid(Integer sendid) {
        this.sendid = sendid;
    }

    public Integer getReceiveid() {
        return receiveid;
    }

    public void setReceiveid(Integer receiveid) {
        this.receiveid = receiveid;
    }

    public Long getChartime() {
        return chartime;
    }

    public void setChartime(Long chartime) {
        this.chartime = chartime;
    }

    public String getCharcontent() {
        return charcontent;
    }

    public void setCharcontent(String charcontent) {
        this.charcontent = charcontent == null ? null : charcontent.trim();
    }

    public Integer getCharstates() {
        return charstates;
    }

    public void setCharstates(Integer charstates) {
        this.charstates = charstates;
    }
}