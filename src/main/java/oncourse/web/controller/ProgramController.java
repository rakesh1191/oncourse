package oncourse.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import oncourse.model.dao.ProgramDao;

@Controller
public class ProgramController {

    @Autowired
    private ProgramDao programDao;

    @RequestMapping("/program/list.html")
    public String list( ModelMap models )
    {
        models.put( "programs", programDao.getPrograms() );
        return "program/list";
    }

}
