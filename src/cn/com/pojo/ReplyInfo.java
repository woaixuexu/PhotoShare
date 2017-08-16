package cn.com.pojo;

public class ReplyInfo {
    private Integer replyid;

    private Integer commentid;

    private Integer userid;

    private Integer aimuserid;

    private String replycomment;

    private Integer anonymity;

    private Integer anonymityaim;

    private Long replydate;

    private Integer replystate;

    public Integer getReplyid() {
        return replyid;
    }

    public void setReplyid(Integer replyid) {
        this.replyid = replyid;
    }

    public Integer getCommentid() {
        return commentid;
    }

    public void setCommentid(Integer commentid) {
        this.commentid = commentid;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public Integer getAimuserid() {
        return aimuserid;
    }

    public void setAimuserid(Integer aimuserid) {
        this.aimuserid = aimuserid;
    }

    public String getReplycomment() {
        return replycomment;
    }

    public void setReplycomment(String replycomment) {
        this.replycomment = replycomment == null ? null : replycomment.trim();
    }

    public Integer getAnonymity() {
        return anonymity;
    }

    public void setAnonymity(Integer anonymity) {
        this.anonymity = anonymity;
    }

    public Integer getAnonymityaim() {
        return anonymityaim;
    }

    public void setAnonymityaim(Integer anonymityaim) {
        this.anonymityaim = anonymityaim;
    }

    public Long getReplydate() {
        return replydate;
    }

    public void setReplydate(Long replydate) {
        this.replydate = replydate;
    }

    public Integer getReplystate() {
        return replystate;
    }

    public void setReplystate(Integer replystate) {
        this.replystate = replystate;
    }
}