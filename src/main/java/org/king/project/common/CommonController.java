package org.king.project.common;

import org.king.common.utils.Kings;
import org.king.common.utils.DateUtils;
import org.king.common.utils.StringUtils;
import org.king.common.utils.file.FileUploadUtils;
import org.king.common.utils.file.FileUtils;
import org.king.common.utils.file.MimeTypes;
import org.king.framework.enums.ErrorCodeEnum;
import org.king.framework.model.UploadDTO;
import org.king.framework.utils.ApiAssert;
import org.king.framework.web.controller.WebController;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.mchange.lang.ThrowableUtils;

import lombok.extern.slf4j.Slf4j;

/**
 * 通用请求处理
 *
 * @author King
 */
@Controller
@Slf4j
public class CommonController extends WebController {

    /**
     * 通用下载请求
     *
     * @param fileName 文件名称
     * @param delete   是否删除
     */
    @GetMapping("common/download")
    @ResponseBody
    public void fileDownload(String fileName, Boolean delete) {
        try {
            ApiAssert.isTrue(ErrorCodeEnum.FILE_ILLEGAL_FILENAME.overrideMsg(StringUtils.format("文件名称({})非法，不允许下载。 ", fileName)), FileUtils.isValidFilename(fileName));
            String filePrefix = FileUtils.getFilePrefix(fileName);
            String realFileName = fileName.split("_")[0] + "_" + DateUtils.dateTimeNow() + "." + filePrefix;
            String filePath = Kings.getDownloadPath(fileName);

            response.setCharacterEncoding("utf-8");
            response.setContentType("multipart/form-data");
            response.setHeader("Content-Disposition",
                    "attachment;fileName=" + FileUtils.setFileDownloadHeader(request, realFileName));
            FileUtils.writeBytes(filePath, response.getOutputStream());
            if (delete) {
                FileUtils.deleteFile(filePath);
            }
        } catch (Exception e) {
            log.error("下载文件异常 {}", ThrowableUtils.extractStackTrace(e));
            ApiAssert.failure(ErrorCodeEnum.FILE_DOWNLOAD_FAIL);
        }
    }

    /**
     * 通用上传请求
     */
    @PostMapping("/common/upload")
    @ResponseBody
    public UploadDTO uploadFile(MultipartFile file) {
        try {
            // 上传并返回新文件名称
            String fileName = FileUploadUtils.upload(Kings.getUploadPath(), file, MimeTypes.DEFAULT_ALLOWED_EXTENSION);
            String url = Kings.getUploadUrl(request, fileName);
            return new UploadDTO(url, fileName);
        } catch (Exception e) {
            log.error("上传文件异常 {}", ThrowableUtils.extractStackTrace(e));
            ApiAssert.failure(ErrorCodeEnum.FILE_UPLOAD_FAIL);
        }
        return null;
    }
}
