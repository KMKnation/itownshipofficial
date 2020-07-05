package com.itownship.expensemanager;
 
import java.util.List;
 
import org.springframework.web.multipart.MultipartFile;
 
public class FileUploadForm {

    //Getter and setter methods
	
    private List<MultipartFile> files;

	public List<MultipartFile> getFiles() {
		return files;
	}

	public void setFiles(List<MultipartFile> files) {
		this.files = files;
	}


	
     
}