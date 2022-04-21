package com.mindtree.photomanagement.repository;

import java.util.Set;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.mindtree.photomanagement.entity.CampusMindPhoto;



public interface CampusMindPhotoManagementRepository extends JpaRepository<CampusMindPhoto, String> {

	

	@Query("SELECT u.MID  FROM CampusMindPhoto u")
	Set<String> findMids();

}
