package com.mindtree.photomanagement.utilities;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

@Service
public class MultiPartFileUtility {

	public MultipartFile getMultipartFile() {
		MultipartFile file = new MultipartFile() {

			@Override
			public void transferTo(File dest) throws IOException, IllegalStateException {

			}

			@Override
			public boolean isEmpty() {
				return false;
			}

			@Override
			public long getSize() {
				return 0;
			}

			@Override
			public String getOriginalFilename() {
				return null;
			}

			@Override
			public String getName() {
				return null;
			}

			@Override
			public InputStream getInputStream() throws IOException {
				return null;
			}

			@Override
			public String getContentType() {
				return null;
			}

			@Override
			public byte[] getBytes() throws IOException {
				return null;
			}
		};

		return file;
	}
}
