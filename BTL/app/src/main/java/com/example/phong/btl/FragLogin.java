package com.example.phong.btl;

import android.content.Intent;
import android.databinding.DataBindingUtil;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Toast;

import com.example.phong.btl.Retrofit.APIUltils;
import com.example.phong.btl.Retrofit.DataClient;
import com.example.phong.btl.databinding.LayoutLoginBinding;

import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

public class FragLogin extends Fragment implements View.OnClickListener {
    LayoutLoginBinding binding;
    @Nullable
    @Override
    public View onCreateView(LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        binding=DataBindingUtil.inflate(inflater,R.layout.layout_login,container,false);
        binding.btnLogin.setOnClickListener(this);
        binding.loginToDK.setOnClickListener(this);
        return binding.getRoot();
    }

    @Override
    public void onClick(View view) {
        switch (view.getId()){
            case R.id.btn_login:
                if(binding.txtLoginUsername.getText().toString().equals("")||binding.txtLoginPassword.getText().toString().equals("")){
                    Toast.makeText(getContext(), "Hãy Nhập Đủ Dữ Liệu", Toast.LENGTH_SHORT).show();
                }
                else {
                    DataClient dataClient= APIUltils.getData();
                    Call<String> call=dataClient.checkData(binding.txtLoginUsername.getText().toString(),binding.txtLoginPassword.getText().toString());
                    call.enqueue(new Callback<String>() {
                        @Override
                        public void onResponse(Call<String> call, Response<String> response) {
                            String kq=response.body();
                            if(kq.equals("thanhcong")){
                                Toast.makeText(getContext(), "Đăng Nhập Thành Công", Toast.LENGTH_SHORT).show();
                                Bundle bundle=new Bundle();
                                bundle.putString("name",binding.txtLoginUsername.getText().toString());
                                FragMenu fragMenu=new FragMenu();
                                fragMenu.setArguments(bundle);
                                getFragmentManager().beginTransaction().setCustomAnimations(R.anim.enter_to_left, R.anim.exit_to_left,
                                        R.anim.enter_to_right, R.anim.exit_to_right).replace(R.id.lay_frame,fragMenu).addToBackStack(null).commit();

                            }else if(kq.equals("thatbai")){
                                Toast.makeText(getContext(), "Tài Khoản Không Tồn Tại" , Toast.LENGTH_SHORT).show();
                            }else {
                                Toast.makeText(getContext(), "Lỗi Đăng Nhập", Toast.LENGTH_SHORT).show();
                            }
                        }

                        @Override
                        public void onFailure(Call<String> call, Throwable t) {

                        }
                    });

                }





                break;
            case R.id.login_ToDK:
                Intent intent = new Intent(getActivity(),DangkyActivity.class);
                startActivity(intent);
                break;
        }
    }
}
