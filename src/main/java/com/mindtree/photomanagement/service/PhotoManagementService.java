package com.mindtree.photomanagement.service;

import java.io.IOException;
import java.util.Set;

import org.springframework.web.multipart.MultipartFile;

import com.mindtree.photomanagement.entity.CampusMindPhoto;
import com.mindtree.photomanagement.exception.PhotoNotFoundException;


public interface PhotoManagementService {
	
	String uploadCampusMindPhoto(String mID, MultipartFile file) throws IOException;

	CampusMindPhoto fetchPhotoByMID(String mID) throws PhotoNotFoundException;

	Set<String> fetchAllCampusMinds();

}
