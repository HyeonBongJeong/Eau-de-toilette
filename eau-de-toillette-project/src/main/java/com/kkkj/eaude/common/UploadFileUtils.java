package com.kkkj.eaude.common;

import java.io.File;
import java.text.DecimalFormat;
import java.util.Calendar;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.util.FileCopyUtils;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import net.coobird.thumbnailator.Thumbnails;

public class UploadFileUtils {
  
 static final int THUMB_WIDTH = 300;
 static final int THUMB_HEIGHT = 394;
 
 public static String fileUpload(String uploadPath,
         String fileName,
         byte[] fileData,String uploadPath2) throws Exception {
	 System.out.println(uploadPath);

		File Folder = new File(uploadPath);

	  if (!Folder.exists()) {
		  try{
			  Folder.mkdir(); //폴더 생성합니다.
			  System.out.println("폴더가 생성되었습니다.");
		  } 
		  catch(Exception e){
			  e.getStackTrace();
		  }        
	  }else {
		  System.out.println("이미 폴더가 생성되어 있습니다.");
	  }
  UUID uid = UUID.randomUUID();
  
  String newFileName = uid + "_" + fileName;
  String imgPath = uploadPath;

  File target = new File(imgPath, newFileName);
  FileCopyUtils.copy(fileData, target);
  
  String thumbFileName = "s_" + newFileName;
  File image = new File(imgPath + File.separator + newFileName);

  File thumbnail = new File(imgPath + File.separator + "s" + File.separator + thumbFileName);

  if (image.exists()) {
   thumbnail.getParentFile().mkdirs();
   Thumbnails.of(image).size(THUMB_WIDTH, THUMB_HEIGHT).toFile(thumbnail);
  }
  return newFileName;
 }

}