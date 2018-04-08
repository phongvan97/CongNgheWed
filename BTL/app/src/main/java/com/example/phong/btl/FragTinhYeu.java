package com.example.phong.btl;

import android.app.Fragment;
import android.databinding.DataBindingUtil;
import android.media.AudioManager;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v7.widget.CardView;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;

import com.example.phong.btl.Retrofit.APIUltils;
import com.example.phong.btl.Retrofit.DataClient;
import com.example.phong.btl.databinding.LayoutTyBinding;
import com.squareup.picasso.Picasso;
import com.wajahatkarim3.easyflipview.EasyFlipView;

import java.io.IOException;
import java.net.URI;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

/**
 * Created by Phong on 3/24/2018.
 */

public class FragTinhYeu extends android.support.v4.app.Fragment implements EasyFlipView.OnFlipAnimationListener, View.OnClickListener {
    private ArrayList<Card> arrCards;
    private Random random;
    private MediaPlayer mediaPlayer;
    private int num1, num2;
    private Animation animation, animation1;
    private LayoutTyBinding binding;
    private String name;

    @Nullable
    @Override
    public View onCreateView(LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        name = getArguments().getString("name");
        random = new Random();
        num1 = num2 = 0;
        while (num1 == 0 || num1 == num2) {
            num1 = random.nextInt(52) + 1;
        }
        while (num2 == 0 || num2 == num1) {
            num2 = random.nextInt(52) + 1;
        }

        DataClient dataClient = APIUltils.getData();
        Call<List<Card>> callback = dataClient.GetCardThoiVan(num1 + "", num2 + "");
        callback.enqueue(new Callback<List<Card>>() {
            @Override
            public void onResponse(Call<List<Card>> call, Response<List<Card>> response) {
                arrCards = (ArrayList<Card>) response.body();
                if (arrCards.size() > 0) {
                    Log.d("BBB", arrCards.get(0).getId());
                    Log.d("BBB", arrCards.get(0).getNamecard());
                    Log.d("BBB", arrCards.get(0).getMean());
                    Log.d("BBB", arrCards.get(0).getImg());

                    Picasso.with(getContext()).load(arrCards.get(1).getImg()).into(binding.flipTY1Front);
                    Picasso.with(getContext()).load(arrCards.get(0).getImg()).into(binding.flipTY2Front);


                    Log.d("BBB", arrCards.get(1).getId());
                    Log.d("BBB", arrCards.get(1).getNamecard());
                    Log.d("BBB", arrCards.get(1).getImg());
                    Log.d("BBB", arrCards.get(1).getMean());
                }
            }

            @Override
            public void onFailure(Call<List<Card>> call, Throwable t) {
                Toast.makeText(getContext(), "Khong có", Toast.LENGTH_SHORT).show();
            }
        });


        animation = AnimationUtils.loadAnimation(getContext(), R.anim.shake);
        animation.setAnimationListener(new Animation.AnimationListener() {
            @Override
            public void onAnimationStart(Animation animation) {

            }

            @Override
            public void onAnimationEnd(Animation animation) {
                if (mediaPlayer != null) {
                    mediaPlayer.release();
                }
                mediaPlayer = MediaPlayer.create(getContext(), R.raw.flip);
                mediaPlayer.setOnPreparedListener(new MediaPlayer.OnPreparedListener() {
                    @Override
                    public void onPrepared(MediaPlayer mediaPlayer) {
                        mediaPlayer.setVolume(1, 1);
                        mediaPlayer.start();
                    }
                });
                binding.flipTY1.flipTheView();
            }

            @Override
            public void onAnimationRepeat(Animation animation) {

            }
        });
        animation1 = AnimationUtils.loadAnimation(getContext(), R.anim.shake);
        animation1.setAnimationListener(new Animation.AnimationListener() {
            @Override
            public void onAnimationStart(Animation animation) {
            }

            @Override
            public void onAnimationEnd(Animation animation) {
                if (mediaPlayer != null) {
                    mediaPlayer.release();
                }
                mediaPlayer = MediaPlayer.create(getContext(), R.raw.flip);
                mediaPlayer.setOnPreparedListener(new MediaPlayer.OnPreparedListener() {
                    @Override
                    public void onPrepared(MediaPlayer mediaPlayer) {
                        mediaPlayer.setVolume(1, 1);
                        mediaPlayer.start();
                    }
                });
                binding.flipTY2.flipTheView();

            }

            @Override
            public void onAnimationRepeat(Animation animation) {

            }
        });

        binding = DataBindingUtil.inflate(inflater, R.layout.layout_ty, container, false);
        binding.flipTY1Back.setOnClickListener(this);
        binding.flipTY2Back.setOnClickListener(this);
        binding.btnTinhyeuFrag.setOnClickListener(this);
        return binding.getRoot();
    }

    @Override
    public void onViewFlipCompleted(EasyFlipView easyFlipView, EasyFlipView.FlipState newCurrentSide) {
        switch (easyFlipView.getId()) {
            case R.id.flipTY1:
                easyFlipView.setFlipEnabled(false);
                break;
            case R.id.flipTY2:
                easyFlipView.setFlipEnabled(false);
                break;
        }

    }

    @Override
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.btn_tinhyeu_frag:
                if (binding.flipTY1.isFrontSide() || binding.flipTY2.isFrontSide()) {
                    Toast.makeText(getContext(), "Hãy Chọn Bài", Toast.LENGTH_SHORT).show();
                } else {

                    SaveLog(arrCards.get(0).getId(), arrCards.get(1).getId(), name);

                    FragTVresult fragTVresult = new FragTVresult();
                    fragTVresult.Setdata(arrCards.get(0).getImg()
                            , arrCards.get(1).getImg()
                            , arrCards.get(0).getNamecard()+" - "+arrCards.get(1).getNamecard()
                            , arrCards.get(1).getNamecard() + ": " + arrCards.get(1).getMean()
                            , arrCards.get(0).getNamecard() + ": " + arrCards.get(0).getMean());
                    getFragmentManager().beginTransaction()
                            .setCustomAnimations(R.anim.enter_to_left, R.anim.exit_to_left, R.anim.enter_to_right, R.anim.exit_to_right)
                            .replace(R.id.lay_frame, fragTVresult)
                            .addToBackStack(null).commit();
                }

                break;
            case R.id.flip_TY_1_back:

                binding.flipTY1.startAnimation(animation);
                break;
            case R.id.flip_TY_2_back:

                binding.flipTY2.startAnimation(animation1);
        }
    }

    public void SaveLog(String card1, String card2, String name) {
        DataClient dataClient = APIUltils.getData();
        Call<String> call = dataClient.SaveLog(card1, card2, name, "Thời Vận");
        call.enqueue(new Callback<String>() {
            @Override
            public void onResponse(Call<String> call, Response<String> response) {
                String kq = response.body();
                if (kq.equals("thanhcong")) {
                    Toast.makeText(getContext(), "Lưu Thành Công !!", Toast.LENGTH_SHORT).show();
                } else if (kq.equals("ThatBai")) {
                    Toast.makeText(getContext(), "Lưu Thất Bại !!", Toast.LENGTH_SHORT).show();
                } else {
                    Toast.makeText(getContext(), "Lỗi Khi Lưu !!", Toast.LENGTH_SHORT).show();
                }
            }

            @Override
            public void onFailure(Call<String> call, Throwable t) {

            }
        });

    }
}
