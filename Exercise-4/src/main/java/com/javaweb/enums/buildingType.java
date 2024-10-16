package com.javaweb.enums;


import java.util.*;

public enum  buildingType {
    TANG_TRET(" Tầng trệt ") ,
    NGUYEN_CAN(" Nguyên căn ") ,
    NOI_THAT(" Nội thất ") ;

    private final String name ;

    buildingType(String name) {
        this.name = name;
    }

    public static Map<String , String> type() {
        Map<String , String> listType = new TreeMap<>() ;
        for(buildingType it : buildingType.values()) {
            listType.put(it.toString() , it.name) ;
        }
        return listType ;
    }
}
