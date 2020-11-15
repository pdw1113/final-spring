package com.fp.neezit.user.common;

import java.io.File;
import java.text.SimpleDateFormat;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class UserMasterPic {
	public String saveFile1(MultipartFile file1, HttpServletRequest request) {

		// 파일이 저장될 경로를 설정하기
		// 웹 서버의 contextPath불러와서 폴더의 경로를 가져온다
		// webapp하위의 resources
		String root = request.getSession().getServletContext().getRealPath("resources");

		// 파일 경로
		// \를 문자로 인식시키기 위해서는 "\\"를 사용한다.
		String savePath = root + "\\masterImg";

		File folder = new File(savePath);

		if (!folder.exists()) {
			folder.mkdirs(); // 폴더가 없다면 생성한다.
		}
		
		// 파일명을 rename 과정을 추가--> "년월일시분초.확장자"로 변경
		String originalFileName1 = file1.getOriginalFilename();


		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		String renameFileName1 = sdf.format(new java.sql.Date(System.currentTimeMillis())) + "ProFile" + "."
				+ originalFileName1.substring(originalFileName1.lastIndexOf(".") + 1);
		String renamePath1 = folder + "\\" + renameFileName1;// 실제 저장될 파일 경로 + 파일명

		try {
			file1.transferTo(new File(renamePath1)); // 전달받은 file이 rename명으로 이때 파일이 저장된다.

		} catch (Exception e) {
			System.out.println("파일 정송 에러 " + e.getMessage());
		}

		return renameFileName1;
	}
	
	public String saveFile2(MultipartFile file2, HttpServletRequest request) {

		// 파일이 저장될 경로를 설정하기
		// 웹 서버의 contextPath불러와서 폴더의 경로를 가져온다
		// webapp하위의 resources
		String root = request.getSession().getServletContext().getRealPath("resources");

		// 파일 경로
		// \를 문자로 인식시키기 위해서는 "\\"를 사용한다.
		String savePath = root + "\\masterImg";

		File folder = new File(savePath);

		
		// 파일명을 rename 과정을 추가--> "년월일시분초.확장자"로 변경
		String originalFileName1 = file2.getOriginalFilename();


		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		String renameFileName1 = sdf.format(new java.sql.Date(System.currentTimeMillis())) + "ID" + "."
				+ originalFileName1.substring(originalFileName1.lastIndexOf(".") + 1);
		String renamePath1 = folder + "\\" + renameFileName1;// 실제 저장될 파일 경로 + 파일명

		try {
			file2.transferTo(new File(renamePath1)); // 전달받은 file이 rename명으로 이때 파일이 저장된다.

		} catch (Exception e) {
			System.out.println("파일 정송 에러 " + e.getMessage());
		}

		return renameFileName1;
	}
	
	public String saveFile3(MultipartFile file3, HttpServletRequest request) {

		// 파일이 저장될 경로를 설정하기
		// 웹 서버의 contextPath불러와서 폴더의 경로를 가져온다
		// webapp하위의 resources
		String root = request.getSession().getServletContext().getRealPath("resources");

		// 파일 경로
		// \를 문자로 인식시키기 위해서는 "\\"를 사용한다.
		String savePath = root + "\\masterImg";

		File folder = new File(savePath);

		
		// 파일명을 rename 과정을 추가--> "년월일시분초.확장자"로 변경
		String originalFileName1 = file3.getOriginalFilename();


		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		String renameFileName1 = sdf.format(new java.sql.Date(System.currentTimeMillis())) + "UNIV" +"."
				+ originalFileName1.substring(originalFileName1.lastIndexOf(".") + 1);
		String renamePath1 = folder + "\\" + renameFileName1;// 실제 저장될 파일 경로 + 파일명

		try {
			file3.transferTo(new File(renamePath1)); // 전달받은 file이 rename명으로 이때 파일이 저장된다.

		} catch (Exception e) {
			System.out.println("파일 정송 에러 " + e.getMessage());
		}

		return renameFileName1;
	}
	
	public String saveFile4(MultipartFile file4, HttpServletRequest request) {

		// 파일이 저장될 경로를 설정하기
		// 웹 서버의 contextPath불러와서 폴더의 경로를 가져온다
		// webapp하위의 resources
		String root = request.getSession().getServletContext().getRealPath("resources");

		// 파일 경로
		// \를 문자로 인식시키기 위해서는 "\\"를 사용한다.
		String savePath = root + "\\masterImg";

		File folder = new File(savePath);
		
		// 파일명을 rename 과정을 추가--> "년월일시분초.확장자"로 변경
		String originalFileName1 = file4.getOriginalFilename();


		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		String renameFileName1 = sdf.format(new java.sql.Date(System.currentTimeMillis())) +"UNIV2"+ "."
				+ originalFileName1.substring(originalFileName1.lastIndexOf(".") + 1);
		String renamePath1 = folder + "\\" + renameFileName1;// 실제 저장될 파일 경로 + 파일명

		try {
			file4.transferTo(new File(renamePath1)); // 전달받은 file이 rename명으로 이때 파일이 저장된다.

		} catch (Exception e) {
			System.out.println("파일 정송 에러 " + e.getMessage());
		}

		return renameFileName1;
	}
	
	public String saveFile5(MultipartFile file5, HttpServletRequest request) {

		// 파일이 저장될 경로를 설정하기
		// 웹 서버의 contextPath불러와서 폴더의 경로를 가져온다
		// webapp하위의 resources
		String root = request.getSession().getServletContext().getRealPath("resources");

		// 파일 경로
		// \를 문자로 인식시키기 위해서는 "\\"를 사용한다.
		String savePath = root + "\\masterImg";

		File folder = new File(savePath);

		
		// 파일명을 rename 과정을 추가--> "년월일시분초.확장자"로 변경
		String originalFileName1 = file5.getOriginalFilename();
		System.out.println("file5 : " + originalFileName1);


		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		String renameFileName1 = sdf.format(new java.sql.Date(System.currentTimeMillis())) + "QFA1" + "."
				+ originalFileName1.substring(originalFileName1.lastIndexOf(".") + 1);
		String renamePath1 = folder + "\\" + renameFileName1;// 실제 저장될 파일 경로 + 파일명

		try {
			file5.transferTo(new File(renamePath1)); // 전달받은 file이 rename명으로 이때 파일이 저장된다.

		} catch (Exception e) {
			System.out.println("파일 정송 에러 " + e.getMessage());
		}

		return renameFileName1;
	}
	
	public String saveFile6(MultipartFile file6, HttpServletRequest request) {

		// 파일이 저장될 경로를 설정하기
		// 웹 서버의 contextPath불러와서 폴더의 경로를 가져온다
		// webapp하위의 resources
		String root = request.getSession().getServletContext().getRealPath("resources");

		// 파일 경로
		// \를 문자로 인식시키기 위해서는 "\\"를 사용한다.
		String savePath = root + "\\masterImg";

		File folder = new File(savePath);

		// 파일명을 rename 과정을 추가--> "년월일시분초.확장자"로 변경
		String originalFileName1 = file6.getOriginalFilename();


		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		String renameFileName1 = sdf.format(new java.sql.Date(System.currentTimeMillis())) + "QFA2" + "."
				+ originalFileName1.substring(originalFileName1.lastIndexOf(".") + 1); 
		String renamePath1 = folder + "\\" + renameFileName1;// 실제 저장될 파일 경로 + 파일명

		try {
			file6.transferTo(new File(renamePath1)); // 전달받은 file이 rename명으로 이때 파일이 저장된다.

		} catch (Exception e) {
			System.out.println("파일 정송 에러 " + e.getMessage());
		}

		return renameFileName1;
	}
	
	public String saveFile7(MultipartFile file7, HttpServletRequest request) {

		// 파일이 저장될 경로를 설정하기
		// 웹 서버의 contextPath불러와서 폴더의 경로를 가져온다
		// webapp하위의 resources
		String root = request.getSession().getServletContext().getRealPath("resources");

		// 파일 경로
		// \를 문자로 인식시키기 위해서는 "\\"를 사용한다.
		String savePath = root + "\\masterImg";

		File folder = new File(savePath);

		
		// 파일명을 rename 과정을 추가--> "년월일시분초.확장자"로 변경
		String originalFileName1 = file7.getOriginalFilename();


		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		String renameFileName1 = sdf.format(new java.sql.Date(System.currentTimeMillis())) + "QFA3" + "."
				+ originalFileName1.substring(originalFileName1.lastIndexOf(".") + 1);
		String renamePath1 = folder + "\\" + renameFileName1;// 실제 저장될 파일 경로 + 파일명

		try {
			file7.transferTo(new File(renamePath1)); // 전달받은 file이 rename명으로 이때 파일이 저장된다.

		} catch (Exception e) {
			System.out.println("파일 정송 에러 " + e.getMessage());
		}

		return renameFileName1;
	}
	
	public String saveFile8(MultipartFile file8, HttpServletRequest request) {

		// 파일이 저장될 경로를 설정하기
		// 웹 서버의 contextPath불러와서 폴더의 경로를 가져온다
		// webapp하위의 resources
		String root = request.getSession().getServletContext().getRealPath("resources");

		// 파일 경로
		// \를 문자로 인식시키기 위해서는 "\\"를 사용한다.
		String savePath = root + "\\masterImg";

		File folder = new File(savePath);

		
		// 파일명을 rename 과정을 추가--> "년월일시분초.확장자"로 변경
		String originalFileName1 = file8.getOriginalFilename();


		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		String renameFileName1 = sdf.format(new java.sql.Date(System.currentTimeMillis())) + "QFA4" + "."
				+ originalFileName1.substring(originalFileName1.lastIndexOf(".") + 1);
		String renamePath1 = folder + "\\" + renameFileName1;// 실제 저장될 파일 경로 + 파일명

		try {
			file8.transferTo(new File(renamePath1)); // 전달받은 file이 rename명으로 이때 파일이 저장된다.

		} catch (Exception e) {
			System.out.println("파일 정송 에러 " + e.getMessage());
		}

		return renameFileName1;
	}
	
	public String saveFile9(MultipartFile file9, HttpServletRequest request) {

		// 파일이 저장될 경로를 설정하기
		// 웹 서버의 contextPath불러와서 폴더의 경로를 가져온다
		// webapp하위의 resources
		String root = request.getSession().getServletContext().getRealPath("resources");

		// 파일 경로
		// \를 문자로 인식시키기 위해서는 "\\"를 사용한다.
		String savePath = root + "\\masterImg";

		File folder = new File(savePath);
		
		// 파일명을 rename 과정을 추가--> "년월일시분초.확장자"로 변경
		String originalFileName1 = file9.getOriginalFilename();


		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		String renameFileName1 = sdf.format(new java.sql.Date(System.currentTimeMillis())) + "QFA5" + "."
				+ originalFileName1.substring(originalFileName1.lastIndexOf(".") + 1);
		String renamePath1 = folder + "\\" + renameFileName1;// 실제 저장될 파일 경로 + 파일명

		try {
			file9.transferTo(new File(renamePath1)); // 전달받은 file이 rename명으로 이때 파일이 저장된다.

		} catch (Exception e) {
			System.out.println("파일 정송 에러 " + e.getMessage());
		}

		return renameFileName1;
	}
	
}
