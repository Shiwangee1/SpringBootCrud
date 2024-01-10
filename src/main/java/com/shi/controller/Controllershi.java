package com.shi.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Base64;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
//import com.becoderCrudDao.EmpDao;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.becoderCrudDao.EmpDao;
import com.becoderCrudEntite.Emp;

@Controller

public class Controllershi {

	@Autowired
	private EmpDao empDao;

	@GetMapping("/home")
	public String Home(Model model) {
		List<Emp> list = empDao.getAllEmp();
		model.addAttribute("emplist", list);
		return "Home";

	}

	@GetMapping("/User")
	public String UserPage(Model model) {

		List<Emp> list = empDao.getAllUser();

		model.addAttribute("emplist", list);
		return "User";

	}

	@RequestMapping("/addEmp")
	public String addEmp(Model model) {
		model.addAttribute("emp", new Emp());

		return "addEmp";

	}

	@GetMapping("/lg")
	public String lg(Model model) {
		Emp emp = new Emp();
		model.addAttribute("emp", emp);

		return "Login";

	}

	@PostMapping("/LgData")
	public String login1(@ModelAttribute("emp") Emp theUser, Model theModel) {
		String email = theUser.getEmail();
		String password = theUser.getPassword();

		System.out.println(" email in lg data" + email);
		System.out.println("password lg data" + password);
		Emp validate = empDao.validate(email, password);

		if (validate != null) {
			String designation = validate.getRole();

			if (designation.equalsIgnoreCase("Admin")) {
				// Redirect to the admin page
				return "redirect:/home";
			} else if (designation.equalsIgnoreCase("User")) {
				// Redirect to the user page
				return "redirect:/User";
			} else {
				// Handle other designations as needed
				return "redirect:/registration";
			}
		} else {
			// Redirect to the login page if validate is null
			return "redirect:/login";
		}
	}

	@RequestMapping(path = "CreateEmp", method = RequestMethod.POST)
	public String CreateEmp(@ModelAttribute("emp") Emp emp, HttpSession session) {

		empDao.saveEmp(emp);

		session.setAttribute("msg", "Done");
		return "Login";

	}

	/* ============Ashish Pal================== */

	@GetMapping("/edit")
	public String editCustomer(@RequestParam("customerId") int theId, Model themodel) {

		Emp theUser = empDao.getCustomer(theId);

		byte[] imageData = theUser.getImage();

		themodel.addAttribute("image", imageData);

		String imageBase64 = Base64.getEncoder().encodeToString(imageData);
		// themodel.addAttribute("imageBase64", theUser.getImageBase64());
		themodel.addAttribute("imageBase64", imageBase64);

		System.out.println(" User Edit controller " + theUser.getImageBase64());
		System.out.println(" User Edit controller imageBase64  " + imageBase64);

		themodel.addAttribute("emp", theUser);

		return "Upload";
	}

	@GetMapping("/editUser")
	public String UserEdit(@RequestParam("customerId") int theId, Model themodel) {

		Emp theUser = empDao.getCustomer(theId);

		themodel.addAttribute("name", theUser.getName());

		byte[] imageData = theUser.getImage();

		themodel.addAttribute("image", imageData);

		String imageBase64 = Base64.getEncoder().encodeToString(imageData);
		// themodel.addAttribute("imageBase64", theUser.getImageBase64());
		themodel.addAttribute("imageBase64", imageBase64);

		System.out.println(" User Edit controller " + theUser.getImageBase64());
		System.out.println(" User Edit controller imageBase64  " + imageBase64);

		themodel.addAttribute("emp", theUser);

		return "User_edit";
	}

	/*
	 * ================================Shiwangee update emp Controller
	 * =======================
	 */

	@PostMapping("/updateEmp")
	public String updateEmp1(@ModelAttribute("emp") Emp theEmp) {

		// Access other form data as before
		String name = theEmp.getName();
		String address = theEmp.getAddress();
		String email = theEmp.getEmail();
		String password = theEmp.getPassword();
		String role = theEmp.getRole();
		byte[] image = theEmp.getImage();
		/*
		 * String base64img = Base64.getEncoder().encodeToString(imageData);
		 * theEmp.setImageBase64(base64img);
		 */
		// Print the form data
		System.out.println("Name: " + name);
		System.out.println("Address: " + address);
		System.out.println("Email: " + email);
		System.out.println("Password: " + password);
		System.out.println("Role: " + role);
		System.out.println("Role: " + image);

		// Process the data as needed (e.g., update the database with the imageBytes).

		return "redirect:/User"; // Redirect to a new page after processing.
	}

	/* =============================================================== */

	
	@PostMapping("/updateEmp55")
	public String updateEmp(@ModelAttribute("emp") Emp theEmp) {

		// System.out.println("updateEmp " + imageFile);
		System.out.println("updateEmp " + theEmp.getEmail());
		System.out.println("updateEmp " + theEmp.getAddress());
		System.out.println("updateEmp " + theEmp.getImageBase64());
		System.out.println("updateEmp " + theEmp.getName());
		System.out.println("updateEmp " + theEmp.getPassword());
		System.out.println("updateEmp " + theEmp.getRole());
		System.out.println("updateEmp " + theEmp.getId());


		return "redirect:/addEmp";
	}

	

	/* ==========================delete============================== */
	@RequestMapping(value = "/DeleteEmp/{id}", method = RequestMethod.GET)
	public String deleteEmp(@PathVariable int id, HttpSession session) {
		// In this example, I'm assuming you have an EmpDao class to delete an employee
		// by ID. You should replace this with your actual logic.
		empDao.Delele(id);

		session.setAttribute("msg", "Deleted Successfully!!");
		return "redirect:/home";
	}

	@GetMapping("/upload")
	public String ImageUpload() {

		return "Upload";

	}

	@PostMapping("/uploadImage")
	public String Imageupload(@RequestParam("image") CommonsMultipartFile file, HttpServletRequest req) {

		System.out.println(file.getContentType());
		System.out.println(file.getSize());
		System.out.println(file.getOriginalFilename());
		byte[] Byte1 = file.getBytes();
		String path = req.getServletContext().getRealPath("/") + "WEB-INF" + "resource" + File.separator + "Image";
		Emp emp = new Emp();

		/*
		 * System.out.println(path); System.out.println("ente the block");
		 */
		try {
			FileOutputStream fos = new FileOutputStream(path);
			fos.write(Byte1);
			fos.close();
			System.out.println(fos);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return "redirect:/home";

	}

	@GetMapping("/uploadImage")
	public String Ram() {
		return "Image";
	}

	@PostMapping("/uploadphoto")
	public String imageUpload(@RequestParam("name") String name, @RequestParam("Address") String Address,
			@RequestParam("Email") String email, @RequestParam("password") String Password,
			@RequestParam("Image") MultipartFile image, @RequestParam("Role") String Role) {
		if (!image.isEmpty()) {
			try {
				byte[] imageData = image.getBytes();

				Emp emp = new Emp();
				emp.setName(name);
				emp.setAddress(Address);
				emp.setEmail(email);

				String base64img = Base64.getEncoder().encodeToString(imageData);
				emp.setImageBase64(base64img);

				emp.setImage(imageData);
				/* emp.setEmail(Role); */
				emp.setRole(Role);
				emp.setPassword(Password);

				empDao.saveEmp(emp);

				return "redirect:/lg";
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		return "redirect:/addEmp";

	}

	/* ========================================== */
	/*
	 * @Controller public class ImageController {
	 * 
	 * @GetMapping("/displayImage") public ResponseEntity<byte[]> displayImage() {
	 * // Replace this with the actual byte array you have byte[] imageBytes = "";
	 * // Retrieve your image byte array
	 * 
	 * HttpHeaders headers = new HttpHeaders(null);
	 * headers.setContentType(MediaType.IMAGE_JPEG); // Adjust content type based on
	 * your image format
	 * 
	 * return new ResponseEntity<>(imageBytes, headers, HttpStatus.OK); } }
	 */

	@GetMapping("/shiwangee")
	public String shiwangee(@RequestParam("id") int theId, Model theModel) {

		Emp theEmp = empDao.getEmpById(theId);

		System.out.println("Shiwnagee page " + theEmp.getAddress());
		System.out.println("Shiwnagee page " + theEmp.getEmail());
//		System.out.println("Shiwnagee page " + theId);
		System.out.println("Shiwnagee page " + theEmp.getImageBase64());
		System.out.println("Shiwnagee page " + theEmp.getName());
		System.out.println("Shiwnagee page " + theEmp.getPassword());
		System.out.println("Shiwnagee page " + theEmp.getRole());
//		System.out.println("Shiwnagee page "+theEmp.getImage());

		String name = theEmp.getName();
		theModel.addAttribute("name", name);

		theModel.addAttribute("emp", theEmp);

		return "userEdit";
	}

}
