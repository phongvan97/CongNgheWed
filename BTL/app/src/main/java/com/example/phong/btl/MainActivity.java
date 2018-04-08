package com.example.phong.btl;

import android.Manifest;
import android.content.pm.PackageManager;
import android.databinding.DataBindingUtil;
import android.os.Build;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.Toast;

import com.example.phong.btl.databinding.ActivityMainBinding;

public class MainActivity extends AppCompatActivity {
    LinearLayout a;
    FragmentManager manager;
    FragmentTransaction transaction;
    private ActivityMainBinding binding;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        binding= DataBindingUtil.setContentView(this,R.layout.activity_main);
        Init(new FragLogin());
    }
    private void Init(Fragment fragment){
        manager=getSupportFragmentManager();
        transaction=manager.beginTransaction();
        transaction.replace(R.id.lay_frame,fragment);
        transaction.commit();
    }
//    public void initPermission(){
//        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.M) {
//            if (checkSelfPermission(Manifest.permission.READ_EXTERNAL_STORAGE) != PackageManager.PERMISSION_GRANTED) {
//
//                //Permisson don't granted
//                if (shouldShowRequestPermissionRationale(
//                        Manifest.permission.READ_EXTERNAL_STORAGE)) {
//                    Toast.makeText(MainActivity.this, "Permission isn't granted ", Toast.LENGTH_SHORT).show();
//                }
//                // Permisson don't granted and dont show dialog again.
//                else {
//                    Toast.makeText(MainActivity.this, "Permisson don't granted and dont show dialog again ", Toast.LENGTH_SHORT).show();
//                }
//                //Register permission
//                requestPermissions(new String[]{Manifest.permission.READ_EXTERNAL_STORAGE}, 1);
//
//            }
//        }
//    }
}
