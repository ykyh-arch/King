package org.king.project.flower.enums;

public enum Thumbsup {
    NOTHUMBSUP(0, "未赞"),
    THUMBSUPED(1, "已赞"),
    UNKNOWN(2, "未知");

    private final Integer code;
    private final String info;

    Thumbsup(Integer code, String info) {
        this.code = code;
        this.info = info;
    }

    public Integer getCode() {
        return code;
    }

    public String getInfo() {
        return info;
    }

}
