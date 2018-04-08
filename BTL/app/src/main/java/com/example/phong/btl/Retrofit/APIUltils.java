package com.example.phong.btl.Retrofit;

public class APIUltils {
    public static  final String baseUrl="http://192.168.1.131/android/";
    public static DataClient getData(){
        return RetrofitClient.getClient(baseUrl).create(DataClient.class);
    }
}
