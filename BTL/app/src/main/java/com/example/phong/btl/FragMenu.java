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

import com.example.phong.btl.databinding.LayoutMenuBinding;

/**
 * Created by Phong on 3/24/2018.
 */

public class FragMenu extends Fragment implements View.OnClickListener {
    FragmentTransaction transaction;
    private LayoutMenuBinding binding;
    private FragmentManager manager;
    @Nullable
    @Override
    public View onCreateView(LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        binding= DataBindingUtil.inflate(inflater,R.layout.layout_menu,container,false);
        binding.btnHangngay.setOnClickListener(this);
        binding.btnThoivan.setOnClickListener(this);
        binding.btnTinhyeu.setOnClickListener(this);
        return binding.getRoot();
    }

    @Override
    public void onClick(View view) {
        switch (view.getId()){
            case R.id.btn_hangngay:
                Init(new FragDaily());
                break;
            case R.id.btn_thoivan:
                Init(new FragThoiVan());
                break;
            case R.id.btn_tinhyeu:
                Init(new FragTinhYeu());
                break;
        }
    }
    public void Init(Fragment fragment){
        manager=getFragmentManager();
        transaction=manager.beginTransaction();
        transaction.replace(R.id.lay_frame,fragment);
        transaction.addToBackStack("a");
        transaction.commit();
    }
}
