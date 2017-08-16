package cn.com.pojo;

public class CommentInfo {
    private Integer commentid;

    private Integer messageid;

    private Integer userid;

    private String comments;

    private Integer anonymity;

    private Long commentdata;

    private Integer commentstate;

    public Integer getCommentid() {
        return commentid;
    }

    public void setCommentid(Integer commentid) {
        this.commentid = commentid;
    }

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

    public String getComments() {
        return comments;
    }

    public void setComments(String comments) {
        this.comments = comments == null ? null : comments.trim();
    }

    public Integer getAnonymity() {
        return anonymity;
    }

    public void setAnonymity(Integer anonymity) {
        this.anonymity = anonymity;
    }

    public Long getCommentdata() {
        return commentdata;
    }

    public void setCommentdata(Long commentdata) {
        this.commentdata = commentdata;
    }

    public Integer getCommentstate() {
        return commentstate;
    }

    public void setCommentstate(Integer commentstate) {
        this.commentstate = commentstate;
    }
}