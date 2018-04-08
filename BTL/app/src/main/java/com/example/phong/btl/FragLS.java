package com.example.phong.btl;

import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import android.widget.Toast;

import com.example.phong.btl.Retrofit.APIUltils;
import com.example.phong.btl.Retrofit.DataClient;

import java.util.ArrayList;
import java.util.List;

import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

public class FragLS extends Fragment {
    private ListView listView;
    private Adapter adapter;
    private ArrayList<History> arrLS;
    @Nullable
    @Override
    public View onCreateView(LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        View view=inflater.inflate(R.layout.layout_ls,container,false);
        listView=view.findViewById(R.id.LV_LS);
        DataClient dataClient= APIUltils.getData();

        Call<List<History>> call=dataClient.getHistory(getArguments().getString("name"));
        call.enqueue(new Callback<List<History>>() {
            @Override
            public void onResponse(Call<List<History>> call, Response<List<History>> response) {
                arrLS= (ArrayList<History>) response.body();
                if(arrLS.size()>0){
                    Toast.makeText(getContext(), "Đã Lấy Lịch Sử", Toast.LENGTH_SHORT).show();
                    adapter=new Adapter(arrLS,getContext(),R.layout.layout_ls_item);

                    listView.setAdapter(adapter);
                }

            }

            @Override
            public void onFailure(Call<List<History>> call, Throwable t) {
                Toast.makeText(getContext(), "Không có Lịch Sử", Toast.LENGTH_SHORT).show();
            }
        });

        return view;
    }
}
