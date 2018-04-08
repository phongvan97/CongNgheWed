package com.example.phong.btl;

import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import com.example.phong.btl.Retrofit.APIUltils;
import com.example.phong.btl.Retrofit.DataClient;

import java.util.ArrayList;
import java.util.List;

import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

public class FragLS extends Fragment {
//    ArrayList<History> arrLS;
    @Nullable
    @Override
    public View onCreateView(LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        View view=inflater.inflate(R.layout.layout_ls,container,false);
        DataClient dataClient= APIUltils.getData();
        Call<List<History>> call=dataClient.getHistory(getArguments().getString("name"));
        call.enqueue(new Callback<List<History>>() {
            @Override
            public void onResponse(Call<List<History>> call, Response<List<History>> response) {
                ArrayList<History> arrLS= (ArrayList<History>) response.body();
                if(arrLS.size()>0)
                    Log.d("CCC",arrLS.get(1).getCard2());
            }

            @Override
            public void onFailure(Call<List<History>> call, Throwable t) {

            }
        });

        return view;
    }
}
