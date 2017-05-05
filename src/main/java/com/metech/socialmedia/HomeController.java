package com.metech.socialmedia;

import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.metech.socialmedia.domain.Product;
import com.metech.socialmedia.domain.User;
import com.metech.socialmedia.repository.ProductRepository;
import com.metech.socialmedia.repository.UserRepository;

@Controller
public class HomeController
{
	@Autowired
	ProductRepository productRepository;
	
	@Autowired
	UserRepository userRepository;
	
	@Autowired
	HttpSession httpSession;
	
	/**
	 * Get the login page
	 * @param model
	 * @return Returns the login page
	 */
	@RequestMapping("/login")
	public String getLoginPage(Model model)
	{
		System.out.println("HomeController.getLoginPage()");
		return "loginpage";
	}
	
	/**
	 * Get the Sign Up/Registration page
	 * @return Returns the User creation page
	 */
	@RequestMapping("/signup")
	public String getSignupPage()
	{
		System.out.println("HomeController.getSignupPage()");
		return "registration";
	}
	
	/**
	 * Register/Create user 
	 * @param file
	 * @param user
	 * @param model
	 * @return Creates the user and returns the login page to login
	 */
	@RequestMapping(value ="/signup", method = RequestMethod.POST)
	public String registerUser(@RequestParam("file") MultipartFile file,@ModelAttribute User user, Model model)
	{
		System.out.println("HomeController.registerUser()");
		try {

			user = userRepository.save(user);
            // Get the file and save it somewhere
            byte[] bytes = file.getBytes();
            
            FileOutputStream fos = new FileOutputStream("src/main/webapp/images/"+user.getId()+".jpeg");
            fos.write(bytes);
            fos.close();
            

        } catch (IOException e) {
            e.printStackTrace();
        }

		
		return "loginpage";
	}
	
	/**
	 * Login
	 * @param user
	 * @param model
	 * @return Returns Home page if login is success or if login is failed returns the login page back with error
	 * If the user and password is admin then login to the E-commerce
	 */
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String Login(@ModelAttribute User user, Model model)
	{
		if(user.getUsername().equalsIgnoreCase("admin") && user.getPassword().equalsIgnoreCase("admin"))
		{
			httpSession.setAttribute("userid", user.getId());
			httpSession.setAttribute("userName", user.getUsername());
			return addProduct(model);
		}
		else
		{
			User userFromDB = userRepository.findByUsernameAndPassword(user.getUsername(), user.getPassword());
			if(userFromDB != null)
			{
				httpSession.setAttribute("userid", userFromDB.getId());
				httpSession.setAttribute("userName", user.getUsername());
				return getHomePage(model,userFromDB);
				
			}
			else
			{
				model.addAttribute("errormessage", "Invalid Username or Password");
				return "loginpage";
			}
		}
		
	}
	
	/**
	 * Logout from the application
	 * @return
	 */
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String Logout()
	{
		httpSession.removeAttribute("userid");
		httpSession.removeAttribute("userName");
		return "loginpage";
	}
	
	/**
	 * Get home page for Social Media
	 * @param model
	 * @param user
	 * @return
	 */
	@RequestMapping(value = "/socialmediahome", method = RequestMethod.GET)
	public String getHomePage(Model model,User user)
	{
		int userId = (Integer)httpSession.getAttribute("userid");
		model.addAttribute("dp", userId+".jpeg");
		return "socialmediahome";
	}
	
	@RequestMapping(value = "/getAd", method = RequestMethod.GET)
	public String getAd(Model model)
	{
		int userId = (Integer)httpSession.getAttribute("userid");
		User user = userRepository.findOne(userId);
		model.addAttribute("dp", userId+".jpeg");
		List<Product> products = productRepository.findProduct(user.getAge(), user.getAge(), user.getInterest(), user.getMiddleName());
		model.addAttribute("products", products);
		return "advertisementpage";
	}
	
	@RequestMapping(value = "/addproduct", method = RequestMethod.POST)
	public String addProduct(@ModelAttribute Product product, Model model)
	{
		System.out.println("::::::::::::::::; "+product.getName());
		System.out.println("::::::::::::::::; "+product.getDescription());
		
		productRepository.save(product);
		
		return addProduct(model);
	}
	
	@RequestMapping(value = "/addproduct", method = RequestMethod.GET)
	public String getAddProduct()
	{
		return "addproduct";
	}
	
	@RequestMapping(value = "/products", method = RequestMethod.GET)
	public String addProduct(Model model)
	{
		List<Product> products = productRepository.findAll();
		
		model.addAttribute("products", products);
		
		return "listproduct";
	}
	
	
}
