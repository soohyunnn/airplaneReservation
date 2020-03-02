package co.kr.airplane.board.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import org.springframework.stereotype.Controller;
import org.apache.commons.lang3.StringUtils;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.google.gson.JsonObject;



@Controller
public class FileController {

	
	@ResponseBody
	@RequestMapping(value="/fileupload", method=RequestMethod.POST)
	public String fileUpload(HttpServletRequest req, HttpServletResponse resp, 
                 MultipartHttpServletRequest multiFile,@RequestParam MultipartFile upload) throws Exception {
		
		System.out.println("fileUpload()");
		JsonObject json = new JsonObject();
		PrintWriter printWriter = null;
		OutputStream out = null;
		MultipartFile file = multiFile.getFile("upload");
		if(file != null){
			if(file.getSize() > 0 && StringUtils.isNotBlank(file.getName())){
				if(file.getContentType().toLowerCase().startsWith("image/")){
					try{
						String fileName = file.getName();
						//String fileName=upload.getOriginalFilename();
						
						byte[] bytes = file.getBytes();
						
						/*C:\airplane\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\airplanereservation\resources\img*/
						String uploadPath = req.getServletContext().getRealPath("/resources/img/");		//현재 프로젝트에서는 이미지 파일들을 resources아래의 파일로 관리를 하기 때문에 이와 같이 폴더를 생성하여 저장되게 해야 함
						File uploadFile = new File(uploadPath);
						if(!uploadFile.exists()){
							uploadFile.mkdirs();
						}
						fileName = UUID.randomUUID().toString();
						uploadPath = uploadPath + fileName;
						out = new FileOutputStream(new File(uploadPath));
                        out.write(bytes);
                        
                        printWriter = resp.getWriter();
                        resp.setContentType("text/html");
                        String fileUrl = req.getContextPath()+ "/resources/img/" + fileName;	//위에 생성한 경로에서 불러오도록 해줘야 함
                      
                        
                        // json 데이터로 등록
                        // {"uploaded" : 1, "fileName" : "test.jpg", "url" : "/img/test.jpg"}
                        // 이런 형태로 리턴이 나가야함.
                        json.addProperty("uploaded", 1);
                        json.addProperty("fileName", fileName);
                        json.addProperty("url", fileUrl);
                        
                        printWriter.println(json);
                        
                        System.out.println("uploadPath : "+uploadPath);
                        System.out.println("fileUrl : "+fileUrl);
                        
                    }catch(IOException e){
                        e.printStackTrace();
                    }finally{
                        if(out != null){
                            out.close();
                        }
                        if(printWriter != null){
                            printWriter.close();
                        }		
					}
				}
			}
		}
		return null;
	}	

}

	

