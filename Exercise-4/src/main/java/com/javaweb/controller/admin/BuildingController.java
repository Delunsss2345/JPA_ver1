package com.javaweb.controller.admin;



import com.javaweb.enums.buildingType;
import com.javaweb.enums.districtCode;
import com.javaweb.model.dto.BuildingDTO;
import com.javaweb.model.request.BuildingSearchRequest;
import com.javaweb.model.response.BuildingSearchResponse;
import com.javaweb.service.IUserService;
import com.sun.xml.internal.bind.v2.model.core.ID;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.ArrayList;
@Controller(value="buildingControllerOfAdmin") //Bat buoc phai luon luon la GET
public class BuildingController {
    @Autowired
    private IUserService userService ;
    @RequestMapping(value = "/admin/building-list" , method = RequestMethod.GET)
    public ModelAndView buildingList(@ModelAttribute BuildingDTO buildingDTO, HttpServletRequest request) {
        ModelAndView mav = new ModelAndView("admin/building/list") ;
        mav.addObject("modelSearch" , buildingDTO) ;
        //Xuong DB Lấy data
        List<BuildingSearchResponse> responseList = new ArrayList<>() ;
        BuildingSearchResponse response = new BuildingSearchResponse() ;

        response.setId(3L);
        response.setName("Test Data");

        responseList.add(response) ;
        mav.addObject("buildingList" , responseList) ; // sau này tự tạo theo mô hình 3 mvc
        mav.addObject("listStaff", userService.getStaffs()) ;
        mav.addObject("district", districtCode.type());
        mav.addObject("buildingListType" , buildingType.type()) ;
        return mav ;
    }


    @RequestMapping(value = "/admin/building-edit" , method = RequestMethod.GET)
    public ModelAndView buildingEdit(@ModelAttribute("buildingEdit") BuildingDTO buildingDTO,HttpServletRequest request) {
        ModelAndView mav = new ModelAndView("admin/building/edit") ;

        mav.addObject("district", districtCode.type());
        mav.addObject("buildingListType" , buildingType.type()) ;
        return mav ;
    }


    @RequestMapping(value = "/admin/building-edit-{Id}", method = RequestMethod.GET)
    public ModelAndView buildingEdit(@PathVariable("Id") Long Id, HttpServletRequest request) {
        ModelAndView mav = new ModelAndView("admin/building/edit");
        // Xuong db tim building theo id
        BuildingDTO buildingDTO = new BuildingDTO();
        buildingDTO.setId(Id);
        mav.addObject("buildingEdit", buildingDTO);
        mav.addObject("district", districtCode.type());
        mav.addObject("buildingListType" , buildingType.type()) ;
        return mav;
    }

}
