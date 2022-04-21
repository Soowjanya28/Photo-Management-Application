package com.mindtree.photomanagement.service.serviceimpl;

import java.io.IOException;
import java.util.HashSet;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.mindtree.photomanagement.entity.CampusMindPhoto;
import com.mindtree.photomanagement.exception.PhotoNotFoundException;
import com.mindtree.photomanagement.repository.CampusMindPhotoManagementRepository;
import com.mindtree.photomanagement.service.PhotoManagementService;

@Service
public class PhotoManagementServiceImpl implements PhotoManagementService {

	@Autowired
	private CampusMindPhotoManagementRepository campusMindPhotoManagementRepository;

	@Autowired
	private CampusMindPhoto campusMindPhoto;

	

	@Override
	public CampusMindPhoto fetchPhotoByMID(String mID) throws PhotoNotFoundException {
		CampusMindPhoto campusMindPhoto = campusMindPhotoManagementRepository.findById(mID).orElse(null);
		if(campusMindPhoto==null) {
			throw new PhotoNotFoundException("Photo not found in the data base with MID : "+mID+" please check the MID");
		}
		return campusMindPhoto;
	}

	@Override
	public String uploadCampusMindPhoto(String mID, MultipartFile file) throws IOException {

		file.getName().replaceAll(file.getName(), mID);
		campusMindPhoto.setMID(mID);
		campusMindPhoto.setPhoto(file.getBytes());
		campusMindPhotoManagementRepository.save(campusMindPhoto);
		return "Photo upload successfull";
	}

	@Override
	public Set<String> fetchAllCampusMinds() {
		
		Set<String> mIds=new HashSet<String>();
		mIds=campusMindPhotoManagementRepository.findMids();
		return mIds;
	}

}
