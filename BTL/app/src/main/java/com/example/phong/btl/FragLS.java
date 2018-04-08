package com.example.phong.btl;

import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ListView;
import android.widget.Toast;

import com.example.phong.btl.Retrofit.APIUltils;
import com.example.phong.btl.Retrofit.DataClient;
import com.squareup.picasso.Picasso;

import java.util.ArrayList;
import java.util.List;

import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

public class FragLS extends Fragment implements AdapterView.OnItemClickListener {
    private ListView listView;
    private Adapter adapter;
    private ArrayList<History> arrLS;
    @Nullable
    @Override
    public View onCreateView(LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        View view=inflater.inflate(R.layout.layout_ls,container,false);
        listView=view.findViewById(R.id.LV_LS);
        listView.setOnItemClickListener(this);
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

    @Override
    public void onItemClick(final AdapterView<?> adapterView, View view, int i, long l) {


        if(arrLS.get(i).getType().equals("Daily")){

            DataClient dataClient = APIUltils.getData();
            Call<List<Card>> callback = dataClient.GetCardDaiLy(arrLS.get(i).getId1(),arrLS.get(i).getId2());
            callback.enqueue(new Callback<List<Card>>() {
                @Override
                public void onResponse(Call<List<Card>> call, Response<List<Card>> response) {
                    ArrayList<Card> arrCards = (ArrayList<Card>) response.body();
                    if (arrCards.size() > 0) {
                        FragDLResult fragDLResult=new FragDLResult();
                        fragDLResult.Setdata(arrCards.get(0).getImg(),arrCards.get(1).getImg(),
                                arrCards.get(0).getNamecard()+" - "+arrCards.get(1).getNamecard(),
                                arrCards.get(0).getMean(),arrCards.get(1).getMean());
                        getFragmentManager()
                                .beginTransaction()
                                .setCustomAnimations(R.anim.enter_to_left, R.anim.exit_to_left, R.anim.enter_to_right, R.anim.exit_to_right)
                                .replace(R.id.lay_frame,fragDLResult).addToBackStack(null).commit();
                    }
                }

                @Override
                public void onFailure(Call<List<Card>> call, Throwable t) {
                    Toast.makeText(getContext(), "Khong có", Toast.LENGTH_SHORT).show();
                }
            });
        }else {
            DataClient dataClient = APIUltils.getData();
            Call<List<Card>> callback = dataClient.GetCardThoiVan(arrLS.get(i).getId1(),arrLS.get(i).getId2());
            callback.enqueue(new Callback<List<Card>>() {
                @Override
                public void onResponse(Call<List<Card>> call, Response<List<Card>> response) {
                    ArrayList<Card> arrCards = (ArrayList<Card>) response.body();
                    if (arrCards.size() > 0) {
                        FragTVresult fragDLResult=new FragTVresult();
                        fragDLResult.Setdata(arrCards.get(0).getImg(),arrCards.get(1).getImg(),
                                arrCards.get(0).getNamecard()+" - "+arrCards.get(1).getNamecard(),
                                arrCards.get(0).getMean(),arrCards.get(1).getMean());
                        getFragmentManager()
                                .beginTransaction()
                                .setCustomAnimations(R.anim.enter_to_left, R.anim.exit_to_left, R.anim.enter_to_right, R.anim.exit_to_right)
                                .replace(R.id.lay_frame,fragDLResult).addToBackStack(null).commit();
                    }
                }

                @Override
                public void onFailure(Call<List<Card>> call, Throwable t) {
                    Toast.makeText(getContext(), "Khong có", Toast.LENGTH_SHORT).show();
                }
            });

        }
    }
}
