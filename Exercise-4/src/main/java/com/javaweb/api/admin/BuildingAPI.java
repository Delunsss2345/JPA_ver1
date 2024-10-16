package com.javaweb.api.admin;


import com.javaweb.model.dto.AssignmentBuildingDTO;
import com.javaweb.model.dto.BuildingDTO;
import com.javaweb.model.response.ResponseDTO;
import com.javaweb.service.IBuildingService;
import org.apache.coyote.Response;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController(value = "buildingAPIOfAdmin")
@RequestMapping("/api/building")
public class BuildingAPI {
    @Autowired
    private IBuildingService buildingService ;
    @PostMapping
    public BuildingDTO addOrUpdateBuilding(@RequestBody BuildingDTO buildingDTO) {
            //Xuong db de update hoac them moi
        return buildingDTO ;
    }

    @DeleteMapping("/{ids}")
    public void deleteBuilding(@PathVariable List<Long> ids) {
        //xuong db de xoa building theo danh sach id gui ve
        System.out.println("Xoa Thanh Cong");
    }

    @GetMapping("/{id}/staffs")
    public ResponseDTO loadStaff(@PathVariable Long id) {
        ResponseDTO result = buildingService.listStaffs(id) ;
        return result;
    }

    @PostMapping("/assigment")
    public void updateAssigmentBuilding(@RequestBody AssignmentBuildingDTO assignmentBuildingDTO) {
        System.out.println("OK") ;
    }



}
