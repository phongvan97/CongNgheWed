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
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.Toast;

import com.example.phong.btl.databinding.LayoutMenuBinding;

/**
 * Created by Phong on 3/24/2018.
 */

public class FragMenu extends Fragment implements View.OnClickListener {
    private Bundle bundle;
    private LayoutMenuBinding binding;

    @Override
    public Animation onCreateAnimation(int transit, boolean enter, int nextAnim) {
        return super.onCreateAnimation(transit, enter, nextAnim);
    }

    @Nullable
    @Override
    public View onCreateView(LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        bundle=new Bundle();
        binding= DataBindingUtil.inflate(inflater,R.layout.layout_menu,container,false);
        binding.btnHangngay.setOnClickListener(this);
        binding.btnLS.setOnClickListener(this);
        binding.btnTinhyeu.setOnClickListener(this);
        String name=getArguments().getString("name");
//        Toast.makeText(getContext(), name, Toast.LENGTH_SHORT).show();
        bundle.putString("name",name);
        binding.name.setText("Xin Chào "+name+" !!!");
        return binding.getRoot();
    }

    @Override
    public void onClick(View view) {
        switch (view.getId()){
            case R.id.btn_hangngay:
                Init(new FragDaily());
                break;
            case R.id.btn_LS:
                Init(new FragLS());
                break;
            case R.id.btn_tinhyeu:
                Init(new FragTinhYeu());
                break;
        }
    }
    public void Init(Fragment fragment){
        fragment.setArguments(bundle);
        getFragmentManager().beginTransaction().setCustomAnimations(R.anim.enter_to_left, R.anim.exit_to_left,
                R.anim.enter_to_right, R.anim.exit_to_right).replace(R.id.lay_frame,fragment).addToBackStack(null).commit();
    }
}
