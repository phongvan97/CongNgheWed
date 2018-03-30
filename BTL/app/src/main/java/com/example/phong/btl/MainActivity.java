package com.example.phong.btl;

import android.databinding.DataBindingUtil;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;

import com.example.phong.btl.databinding.ActivityMainBinding;

public class MainActivity extends AppCompatActivity {
    FragmentManager manager;
    FragmentTransaction transaction;
    private ActivityMainBinding binding;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        binding= DataBindingUtil.setContentView(this,R.layout.activity_main);
        Init(new FragMenu());
    }
    private void Init(Fragment fragment){
        manager=getSupportFragmentManager();
        transaction=manager.beginTransaction();
        transaction.replace(R.id.lay_frame,fragment);
        transaction.commit();
    }
}
