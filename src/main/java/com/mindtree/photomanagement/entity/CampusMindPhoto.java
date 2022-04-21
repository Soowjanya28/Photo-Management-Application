package com.mindtree.photomanagement.entity;

import java.util.Arrays;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

import org.springframework.stereotype.Component;

@Entity
@Component
public class CampusMindPhoto {

	@Id
	private String MID;
	@Column(length = 16777215)
	private byte[] photo;

	public CampusMindPhoto() {
	}

	public CampusMindPhoto(String mID, byte[] photo) {
		super();
		MID = mID;
		this.photo = photo;
	}

	public String getMID() {
		return MID;
	}

	public void setMID(String mID) {
		MID = mID;
	}

	public byte[] getPhoto() {
		return photo;
	}

	public void setPhoto(byte[] photo) {
		this.photo = photo;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((MID == null) ? 0 : MID.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		CampusMindPhoto other = (CampusMindPhoto) obj;
		if (MID == null) {
			if (other.MID != null)
				return false;
		} else if (!MID.equals(other.MID))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "CampusMindPhoto [MID=" + MID + ", photo=" + Arrays.toString(photo) + "]";
	}

}
