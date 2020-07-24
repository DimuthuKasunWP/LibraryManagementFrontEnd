package lk.ac.cmb.ucsc.LibraryManagementFrontEnd;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/user")
public class BookController {

    @GetMapping(path = "/")
    @CrossOrigin
    public ModelAndView welcome(){
        return new ModelAndView("UserDashboard");
    }
}
