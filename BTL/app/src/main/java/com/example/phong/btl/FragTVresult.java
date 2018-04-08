package com.example.phong.btl;

import android.databinding.DataBindingUtil;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import com.example.phong.btl.databinding.LayoutTyResultBinding;
import com.squareup.picasso.Picasso;

public class FragTVresult extends Fragment {
    private String path1,path2,title,result1,result2;
    LayoutTyResultBinding binding;
    @Nullable
    @Override
    public View onCreateView(LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        binding=DataBindingUtil.inflate(inflater,R.layout.layout_ty_result,container,false);
        binding.txtTyResult1.setText(title);
        binding.txtTyResult2.setText(result1);
        binding.txtTyResult3.setText(result2);
        Picasso.with(getContext()).load(path1).into(binding.imgTV1);
        Picasso.with(getContext()).load(path2).into(binding.imgTV2);
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
