package com.mindtree.photomanagement.controller;

import java.io.IOException;
import java.util.HashSet;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ByteArrayResource;
import org.springframework.core.io.Resource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.mindtree.photomanagement.entity.CampusMindPhoto;
import com.mindtree.photomanagement.exception.PhotoManagementException;
import com.mindtree.photomanagement.exception.PhotoNotFoundException;
import com.mindtree.photomanagement.service.PhotoManagementService;

@Controller
public class PhotoManagementController {

	@Autowired
	private PhotoManagementService photoManagementService;

	
	
	@RequestMapping(value = "/admin/login")
    public String loginPage(@RequestParam(value = "error", required = false) String error,
            @RequestParam(value = "logout", required = false) String logout, Model model) {
        String errorMessge = null;
        if (error != null) {
            errorMessge = "Username or Password is incorrect !!";
        }
        if (logout != null) {
            errorMessge = "You have been successfully logged out !!";
        }
        model.addAttribute("errorMessge", errorMessge);
        return "adminlogin";
    }
	
	
	

	@GetMapping("/admin/home")
	public String demo() {
		return "admin";

	}

	@GetMapping("/admin/photos")
	public String getCampusMinds(Model model) {
		Set<String> campusMinds = new HashSet<String>();
		campusMinds = photoManagementService.fetchAllCampusMinds();
		model.addAttribute("campusMindPhotos", campusMinds);
		return "admin";

	}

	@GetMapping("/viewcampusmind")
	public String getCampusmindPhotoViewPage() {
		return "viewcampusmindphoto";

	}

	@GetMapping("/downloadcampusmind")
	public String getCampusmindPhotoDownloadPage() {
		return "downloadcampusmindphoto";

	}
	
	@GetMapping("/photo")
	public String getCampusmindPhotoUploadPage() {
		return "uploadphoto";

	}

	@GetMapping(value = "/admin/photo/view/", produces = MediaType.IMAGE_JPEG_VALUE)
	public @ResponseBody byte[] showPhoto(@RequestParam("MID") String MID) throws PhotoManagementException {
		CampusMindPhoto campusMindPhoto = null;
		try {
			campusMindPhoto = photoManagementService.fetchPhotoByMID(MID);
		} catch (PhotoNotFoundException e) {
			throw new PhotoManagementException(e.getLocalizedMessage());
		}
		return campusMindPhoto.getPhoto();
	}

	@GetMapping("/admin/photo/download/{MID}")
	public ResponseEntity<Resource> downloadCampusMindPhoto(@PathVariable("MID") String MID)
			throws PhotoManagementException {
		CampusMindPhoto campusMindPhoto = null;
		try {
			campusMindPhoto = photoManagementService.fetchPhotoByMID(MID);
		} catch (PhotoNotFoundException e) {
			throw new PhotoManagementException(e.getLocalizedMessage());
		}

		System.out.println(campusMindPhoto.getMID());
		return ResponseEntity.ok().contentType(MediaType.parseMediaType("image/jpeg"))
				.header(HttpHeaders.CONTENT_DISPOSITION, "attachment; filename=" + MID + ".JPEG")
				.body(new ByteArrayResource(campusMindPhoto.getPhoto()));
	}

	@PostMapping("/user/photo")
	public String uploadCampusMindPhoto(@RequestParam("MID") String MID,
			@RequestParam("photo") MultipartFile file, Model model) throws IOException {

		String statusMessage = null;

		statusMessage = photoManagementService.uploadCampusMindPhoto(MID, file);
		model.addAttribute("status", statusMessage);
		return "uploadphoto";
	}

	
}
