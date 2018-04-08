package com.example.phong.btl;

import android.databinding.DataBindingUtil;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;

import com.example.phong.btl.databinding.LayoutDailyResultBinding;
import com.squareup.picasso.Picasso;

/**
 * Created by Phong on 3/25/2018.
 */

public class FragDLResult extends Fragment {
    private String path1,path2,title,result1,result2;
    LayoutDailyResultBinding binding;
    @Nullable
    @Override
    public View onCreateView(LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        binding=DataBindingUtil.inflate(inflater,R.layout.layout_daily_result,container,false);
        binding.txtDailyTitle.setText(title);
        binding.txtDailyResult.setText(result1);
        binding.txtDailyResult1.setText(result2);
        Picasso.with(getContext()).load(path1).into(binding.imgDailyResuilt1);
        Picasso.with(getContext()).load(path2).into(binding.imgDailyResuilt2);
        return binding.getRoot();
    }
    public void Setdata(String path1,String path2,String title,String result1,String result2){
        this.path1=path1;
        this.path2=path2;
        this.title=title;
        this.result1=result1;
        this.result2=result2;
    }
}
