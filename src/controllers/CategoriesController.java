package controllers;

import java.io.IOException;
import java.util.ArrayList;
import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import services.ServiceMLA;

@Controller
@RequestMapping()
public class CategoriesController {
	static ServiceMLA service = new ServiceMLA();
	
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String init(Model model) {
	    model.addAttribute("msg", "Please Enter Your Login Details");
	    return "index";
	}
	
	@RequestMapping(value = "/categories", method = RequestMethod.GET)
	public static String allCategories(Model model) throws IOException {
		ArrayList<JSONObject> categories = service.getObjectsCategories();
		model.addAttribute("categories", categories);
		
		//System.out.println(categories);
		//System.out.println(categories.get(0).get("id"));

	    return "index";
	}
		
	@RequestMapping("/category/{someid}")
	public String aCategory(Model model, 
	@PathVariable(value="someid") String cat) throws Exception {          
	    JSONObject category = service.getObjectCategory(cat);
		model.addAttribute("category", category);

		//System.out.println(category);
	    return "category";
	}
}