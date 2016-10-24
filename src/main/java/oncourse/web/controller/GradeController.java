package oncourse.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import oncourse.model.User;
import oncourse.model.dao.GradeRecordDao;
import oncourse.security.SecurityUtils;

@Controller
public class GradeController {

    @Autowired
    private GradeRecordDao gradeRecordDao;

    @RequestMapping("/grade/list.html")
    public String list( ModelMap models )
    {
        User user = SecurityUtils.getUser();
        models.put( "user", user );
        models.put( "gradeRecords", gradeRecordDao.getGradeRecords( user ) );
        return "grade/list";
    }

}
