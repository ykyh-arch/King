package org.king.project.peotry.enums;

/**
 * 古诗词-朝代枚举
 *
 * @author Ykyh
 */
public enum Dynasty {
        //朝代（1-先秦；2-两汉；3-魏晋；4-南北朝；5-隋朝；6-唐朝；7-宋朝；8-元朝；9-明朝；10-清朝）
       //参考：http://www.haoshiwen.org/，https://www.gushiwen.cn/，https://www.xzslx.net/，https://www.gushiwen.org/
        PREQIN(1, "先秦"),
        Han(2, "两汉"),
        WEIJIN(3, "魏晋"),
        SOUTHERNANDNORTHERN(4, "南北朝"),
        SUI(5, "隋朝"),
        TANG(6, "唐朝"),
        SONG(7, "宋朝"),
        YUAN(8, "元朝"),
        MING(9, "明朝"),
        QING(10, "清朝");

        private final int code;
        private final String info;

        Dynasty(int code, String info) {
            this.code = code;
            this.info = info;
        }

        public int getCode() {
            return code;
        }

        public String getInfo() {
            return info;
        }

}
