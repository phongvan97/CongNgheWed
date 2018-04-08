package com.example.phong.btl;

import android.databinding.DataBindingUtil;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Toast;

import com.example.phong.btl.Retrofit.APIUltils;
import com.example.phong.btl.Retrofit.DataClient;
import com.example.phong.btl.databinding.ActivityDangkyBinding;

import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

public class DangkyActivity extends AppCompatActivity implements View.OnClickListener {
    ActivityDangkyBinding binding;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        binding= DataBindingUtil.setContentView(this,R.layout.activity_dangky);
        binding.btnDK.setOnClickListener(this);
    }

    @Override
    public void onClick(View view) {
        if(binding.txtDKUser.getText().toString().equals("")||binding.txtDKPass.getText().toString().equals("")||binding.txtDKRepass.getText().toString().equals("")){
            Toast.makeText(this, "Nhập Đủ Thông Tin !!!", Toast.LENGTH_SHORT).show();
        }else if(!binding.txtDKPass.getText().toString().equals(binding.txtDKRepass.getText().toString())){
            Toast.makeText(DangkyActivity.this, "Mật Khẩu Nhập Lại Không Đúng !!!", Toast.LENGTH_SHORT).show();
        }else if(binding.txtDKUser.getText().toString().contains(" ")||binding.txtDKPass.getText().toString().contains(" ")||binding.txtDKRepass.getText().toString().contains(" ")){
            Toast.makeText(DangkyActivity.this, "Tên Đăng nhập và mật khẩu không được có khoảng trống !!!", Toast.LENGTH_SHORT).show();
        }else {
            DataClient dataClient= APIUltils.getData();
            Call<String> call=dataClient.insertData(binding.txtDKUser.getText().toString()
                    ,binding.txtDKPass.getText().toString());
            call.enqueue(new Callback<String>() {
                @Override
                public void onResponse(Call<String> call, Response<String> response) {
                    String kq=response.body();
                    if(kq.equals("datontai"))
                        Toast.makeText(DangkyActivity.this, "Tên Đăng Nhập Đã Tồn Tại", Toast.LENGTH_SHORT).show();
                    else if(kq.equals("ThanhCong")){
                        Toast.makeText(DangkyActivity.this, "Đăng Ký Thành Công", Toast.LENGTH_SHORT).show();
                        finish();
                    }else {
                        Toast.makeText(DangkyActivity.this, "Lỗi j đó", Toast.LENGTH_SHORT).show();
                    }

                }

                @Override
                public void onFailure(Call<String> call, Throwable t) {
                    Toast.makeText(DangkyActivity.this, "Fail"+t.getMessage(), Toast.LENGTH_SHORT).show();
                }
            });
        }
    }
}
