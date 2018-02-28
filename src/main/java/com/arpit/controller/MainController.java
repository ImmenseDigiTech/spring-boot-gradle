package com.arpit.controller;

import com.arpit.commonUtil.Utility;
import com.arpit.constants.URLConstants;
import com.arpit.constants.ViewConstants;
import com.arpit.model.User;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import javax.validation.Valid;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by arpit.khatri on 2/28/2018.
 * Main Controller handling incoming request and give view accordingly .
 */
@Controller
public class MainController {

	/**
	 * Index Page display
	 * @param usrDtls
	 * @param result
	 * @return
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView indexPage(@ModelAttribute("command") final User usrDtls, final BindingResult result) {
		Map<String, Object> map = new HashMap<>();
		try {
			map.put("listOfCountries",Utility.getAllCountries());
		} catch (IOException e) {
			e.printStackTrace();
		}
		return new ModelAndView(ViewConstants.INDEX_PAGE, map);
	}

	/**
	 * Save form data and pass to the next page.
	 * @param userDtls
	 * @return
	 */
	@RequestMapping(value = URLConstants.Main_Page, method = RequestMethod.POST)
	private ModelAndView saveDtls(@Valid @ModelAttribute("command") final User userDtls) {
		Map<String, Object> map = new HashMap<>();
		map.put("user",userDtls);
		return new ModelAndView(ViewConstants.CV_PAGE, map);
	}

}
