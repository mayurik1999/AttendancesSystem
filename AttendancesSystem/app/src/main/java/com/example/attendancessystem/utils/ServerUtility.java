

package com.example.attendancessystem.utils;

public class ServerUtility {

    public static String SERVER_URL = "http://192.168.0.103:8084/AttendanceServer/";
    public static final String TAG_SUCCESS = "success";


    public static String get_stu_att() {
        return SERVER_URL + "GetStudentAtt";
    }

    public static String set_stu_att() {
        return SERVER_URL + "SetStudentAtt";
    }

    public static String get_login_url() {
        return SERVER_URL + "UserLogin";
    }

    public static String get_staff_data() { return  SERVER_URL+"GetStaff"; }
}
