package cn.com.pojo;

public class PushInfo {
    private Integer pushiid;

    private String pushname;

    private String pushintro;

    private String downloadpath;

    private String videopath;

    private Long pushitime;

    public Integer getPushiid() {
        return pushiid;
    }

    public void setPushiid(Integer pushiid) {
        this.pushiid = pushiid;
    }

    public String getPushname() {
        return pushname;
    }

    public void setPushname(String pushname) {
        this.pushname = pushname == null ? null : pushname.trim();
    }

    public String getPushintro() {
        return pushintro;
    }

    public void setPushintro(String pushintro) {
        this.pushintro = pushintro == null ? null : pushintro.trim();
    }

    public String getDownloadpath() {
        return downloadpath;
    }

    public void setDownloadpath(String downloadpath) {
        this.downloadpath = downloadpath == null ? null : downloadpath.trim();
    }

    public String getVideopath() {
        return videopath;
    }

    public void setVideopath(String videopath) {
        this.videopath = videopath == null ? null : videopath.trim();
    }

    public Long getPushitime() {
        return pushitime;
    }

    public void setPushitime(Long pushitime) {
        this.pushitime = pushitime;
    }
}