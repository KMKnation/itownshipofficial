package com.itownship.ilogin;
 
import java.io.File;
import java.sql.PreparedStatement;
import java.util.ArrayList;
import java.util.List;
 


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import databaseConnection.DBConnection;

@Controller
public class PhotoUploadController {
	 private String saveDirectory = "C:/Users/Mayur/workspace/itownship/WebContent/UPLOAD/MemberPhoto/"; //Here I Added
	  
     
    @RequestMapping("show")
    public String displayForm() {
        return "photo_upload_form";
    }
     
    @RequestMapping(value = "save", method = RequestMethod.POST)
    public String save(@ModelAttribute("uploadForm") PhotoUploadForm uploadForm,Model map) {
         
        List<MultipartFile> files = uploadForm.getFiles();
 
        List<String> fileNames = new ArrayList<String>();
         
        if(null != files && files.size() > 0) {
            for (MultipartFile multipartFile : files) {
 
                String fileName = multipartFile.getOriginalFilename();
                fileNames.add(fileName);
                //Handle file content - multipartFile.getInputStream()
                try{
                    multipartFile.transferTo(new File(saveDirectory + multipartFile.getOriginalFilename()));   //Here I Added
             
                }catch(Exception e){
                	System.out.println(e);
                }
            
            }
        }
        
    	
	
        map.addAttribute("files", fileNames);
        return "photo_upload_success";
    }
}