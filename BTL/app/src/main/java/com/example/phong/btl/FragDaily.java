package com.example.phong.btl;

import android.app.Fragment;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;

/**
 * Created by Phong on 3/24/2018.
 */

public class FragDaily extends android.support.v4.app.Fragment {
    private Button button;
    @Nullable
    @Override
    public View onCreateView(LayoutInflater inflater, @Nullable ViewGroup container, Bundle savedInstanceState) {
        View view=inflater.inflate(R.layout.layout_daily,container,false);
        button=view.findViewById(R.id.btn_daily_kq);
        button.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                FragmentManager manager=getFragmentManager();
                FragmentTransaction transaction=manager.beginTransaction();
                transaction.replace(R.id.lay_frame,new FragDLResult());
                transaction.addToBackStack("a");
                transaction.commit();
            }
        });
        return view;
    }
}
