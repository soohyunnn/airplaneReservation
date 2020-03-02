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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.google.gson.JsonObject;



@Controller
public class FileController {

	
	@ResponseBody
	@RequestMapping(value="/fileupload", method=RequestMethod.POST)
	public String fileUpload(HttpServletRequest req, HttpServletResponse resp, 
                 MultipartHttpServletRequest multiFile) throws Exception {
		
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
						byte[] bytes = file.getBytes();
						String uploadPath = req.getServletContext().getRealPath("/img");
						File uploadFile = new File(uploadPath);
						if(!uploadFile.exists()){
							uploadFile.mkdirs();
						}
						fileName = UUID.randomUUID().toString();
						uploadPath = uploadPath + "/" + fileName;
						out = new FileOutputStream(new File(uploadPath));
                        out.write(bytes);
                        
                        printWriter = resp.getWriter();
                        resp.setContentType("text/html");
                        String fileUrl = req.getContextPath() + "/img/" + fileName;
                        
                        // json 데이터로 등록
                        // {"uploaded" : 1, "fileName" : "test.jpg", "url" : "/img/test.jpg"}
                        // 이런 형태로 리턴이 나가야함.
                        json.addProperty("uploaded", 1);
                        json.addProperty("fileName", fileName);
                        json.addProperty("url", fileUrl);
                        
                        printWriter.println(json);
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



	
	@ResponseBody
	@RequestMapping(value="/imageUpload", method = RequestMethod.POST)
    public void imageUpload(HttpServletRequest request,
            HttpServletResponse response,
            MultipartFile upload) throws Exception {
        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html; charset=utf-8");
        OutputStream out = null;
        PrintWriter printWriter = null;
        JsonObject json = new JsonObject();
        
        try{
        	
        
	        //업로드한 파일 이름
	        String fileName=upload.getOriginalFilename();
	 
	        //파일을 바이트 배열로 변환
	        byte[] bytes=upload.getBytes();
	 
	        //이미지를 업로드할 디렉토리(배포 디렉토리로 설정)
	        String uploadPath="C:\\Users\\sksms\\Desktop\\spring-tool-suite-3.9.5.RELEASE-e4.8.0-win32-x86_64\\sts-bundle\\airplane\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\webapps\\airplanereservation\\image\\";
	        out=new FileOutputStream(new File(uploadPath+fileName));
	 
	        //서버로 업로드
	        out.write(bytes);
	        //클라이언트에 결과 표시
	        String callback=request.getParameter("CKEditorFuncNum");
	 
	        //서버=>클라이언트로 텍스트 전송(자바스크립트 실행)
	        printWriter=response.getWriter();
	 
	        
	        //String fileUrl= request.getContextPath()+"/images/"+fileName;
	        String fileUrl= request.getContextPath()+"/soohyunana/wirteUserCenter/"+fileName;
	        
	        System.out.println("fileName : "+fileName);
	        System.out.println("callback : "+callback);
	        System.out.println("fileUrl : "+fileUrl);
	        json.addProperty("uploaded", 1);
            json.addProperty("fileName", fileName);
            json.addProperty("url", fileUrl);
            
            printWriter.println(json);
	        printWriter.println(
	        			"<script>window.parent.CKEDITOR.tools.callFunction("
	        				+callback+",'"+fileUrl+"','이미지가 업로드되었습니다.')"
	        				+"</script>");
	        printWriter.flush();
        }catch (IOException e) {
        	e.printStackTrace();
		}finally {
            try {
                if (out != null) {
                    out.close();
                }
                if (printWriter != null) {
                    printWriter.close();
                }
            } catch (IOException e) {
                e.printStackTrace();
            }
        }

        return;
    }
 

	
	
	/*@ResponseBody
	@RequestMapping(value = "/ckeditorImageUpload", method = RequestMethod.POST) 
	public String procFileUpload(FileVO filevo,HttpServletRequest request, Model model) { 
		
		System.out.println("procFileUpload()");
		
	    HttpSession session = request.getSession(); 
	    String root_path = session.getServletContext().getRealPath("/"); 
	    String attach_path = "";
	    
	    
	    
	    MultipartFile upload = filevo.getUpload(); 
	    String filename = "";
	    String CKEditorFuncNum = "";
	    
	    
	    
	    if (upload != null) { 
	    	 
	        filename = upload.getOriginalFilename(); 
	        filevo.setFilename(filename); 
	        CKEditorFuncNum = filevo.getCKEditorFuncNum(); 
	        try { 
	            File file = new File(root_path + attach_path + filename); 
	            //log.info(root_path + attach_path + filename); 
	            upload.transferTo(file); 
	           
	        } catch (IOException e) { 
	            e.printStackTrace(); 
	        } 
	    } 
	    
	    String file_path = root_path + attach_path + filename; 
	    model.addAttribute("file_path", file_path); 
	    model.addAttribute("CKEditorFuncNum", CKEditorFuncNum);
	    model.addAttribute("filename", filename);
	    
	    System.out.println("file_path : "+file_path);
	    System.out.println("CKEditorFuncNum : "+CKEditorFuncNum);
	    System.out.println("filename : "+filename);
	    
	    return "soohyunana/wirteUserCenter";
	}*/



}

	

