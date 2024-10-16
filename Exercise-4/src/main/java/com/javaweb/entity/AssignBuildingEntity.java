//package com.javaweb.entity;
//
//import javax.persistence.Entity;
//import javax.persistence.Table;
//import javax.persistence.JoinColumn;
//import javax.persistence.ManyToOne;
//
//@Entity
//@Table(name = "assignmentbuilding")
//public class AssignBuildingEntity extends BaseEntity {
//
//    @ManyToOne
//    @JoinColumn(name = "staffid")
//    private UserEntity userEntity;
//
//    @ManyToOne
//    @JoinColumn(name = "buildingid")
//    private BuildingEntity buildingEntity;
//
//    // Constructor (nếu cần)
//    // public AssignBuildingEntity(UserEntity userEntity, BuildingEntity buildingEntity) {
//    //     this.userEntity = userEntity;
//    //     this.buildingEntity = buildingEntity;
//    // }
//
//    public UserEntity getUserEntity() {
//        return userEntity;
//    }
//
//    public void setUserEntity(UserEntity userEntity) {
//        this.userEntity = userEntity;
//    }
//
//    public BuildingEntity getBuildingEntity() {
//        return buildingEntity;
//    }
//
//    public void setBuildingEntity(BuildingEntity buildingEntity) {
//        this.buildingEntity = buildingEntity;
//    }
//}
