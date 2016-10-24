package oncourse.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import oncourse.model.dao.CourseDao;

@Controller
public class CourseController {

    @Autowired
    private CourseDao courseDao;

    @RequestMapping("/course/list.html")
    public String list( ModelMap models )
    {
        models.put( "courses", courseDao.getCourses() );
        return "course/list";
    }

}
