package com.example.phong.btl.Retrofit;

import com.example.phong.btl.Card;
import com.example.phong.btl.History;

import java.util.List;

import retrofit2.Call;
import retrofit2.http.Field;
import retrofit2.http.FormUrlEncoded;
import retrofit2.http.POST;

public interface DataClient {
    @FormUrlEncoded
    @POST("insert.php")
    Call<String> insertData(@Field("taikhoan") String taikhoan,
                            @Field("matkhau") String matkhau);
    @FormUrlEncoded
    @POST("checklogin.php")
    Call<String> checkData(@Field("taikhoan") String taikhoan,
                           @Field("matkhau") String matkhau);
    @FormUrlEncoded
    @POST("getcardthoivan.php")
    Call<List<Card>> GetCardThoiVan(@Field("card1") String a,@Field("card2") String b);

    @FormUrlEncoded
    @POST("getcarddaily.php")
    Call<List<Card>> GetCardDaiLy(@Field("card1") String a,@Field("card2") String b);

    @FormUrlEncoded
    @POST("insertlog.php")
    Call<String> SaveLog(@Field("card1") String card1,@Field("card2") String card2,@Field("name") String name,@Field("type") String type);

    @FormUrlEncoded
    @POST("gethistory.php")
    Call<List<History>> getHistory(@Field("user") String user);

}
