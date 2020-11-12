package org.king.project.flower.enums;

public enum Collection {
    NOCOLLECTION(0, "未收藏"),
    COLLECTIONED(1, "已收藏"),
    UNKNOWN(2, "未知");

    private final Integer code;
    private final String info;

    Collection(Integer code, String info) {
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
