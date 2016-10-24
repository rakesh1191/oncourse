package oncourse.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import oncourse.model.dao.DepartmentDao;

@Controller
public class DepartmentController {

    @Autowired
    private DepartmentDao departmentDao;

    @RequestMapping("/department/list.html")
    public String list( ModelMap models )
    {
        models.put( "departments", departmentDao.getDepartments() );
        return "department/list";
    }

}
