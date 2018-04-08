package com.example.phong.btl;

import android.app.Fragment;
import android.databinding.DataBindingUtil;
import android.media.MediaPlayer;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.Button;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;

import com.example.phong.btl.Retrofit.APIUltils;
import com.example.phong.btl.Retrofit.DataClient;
import com.example.phong.btl.databinding.LayoutDailyBinding;
import com.squareup.picasso.Picasso;
import com.wajahatkarim3.easyflipview.EasyFlipView;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

import static com.example.phong.btl.R.anim.shake;
import static java.lang.Integer.parseInt;

/**
 * Created by Phong on 3/24/2018.
 */

public class FragDaily extends android.support.v4.app.Fragment implements View.OnClickListener {
    ArrayList<Card> arrCards;
    private Random random;
    private MediaPlayer mediaPlayer;
    private Animation animation, animation1, animation2;
    private int count, num1, num2;
    private LayoutDailyBinding binding;
    String name;

    @Nullable
    @Override
    public View onCreateView(LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        name = getArguments().getString("name");
        random = new Random();
        count = 1;
        num1 = num2 = 0;
        binding = DataBindingUtil.inflate(inflater, R.layout.layout_daily, container, false);
        binding.cardsDaily.setOnClickListener(this);
        binding.btnDailyFrag.setOnClickListener(this);
        animation2 = AnimationUtils.loadAnimation(getContext(), R.anim.shake);
        animation1 = AnimationUtils.loadAnimation(getContext(), R.anim.card1_daily);
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
                binding.flipDaily2.flipTheView();
                binding.flipDaily2.setFlipEnabled(false);
            }

            @Override
            public void onAnimationRepeat(Animation animation) {

            }
        });
        animation = AnimationUtils.loadAnimation(getContext(), R.anim.card3_daily);
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
                binding.flipDaily1.flipTheView();
                binding.flipDaily1.setFlipEnabled(false);
            }

            @Override
            public void onAnimationRepeat(Animation animation) {

            }
        });
        return binding.getRoot();
    }

    @Override
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.cards_daily:
                if (count == 1) {
                    while (num1 == 0 || num1 == num2) {
                        num1 = random.nextInt(52) + 1;
                    }
                    while (num2 == 0 || num2 == num1) {
                        num2 = random.nextInt(52) + 1;
                    }
                    DataClient dataClient = APIUltils.getData();
                    Call<List<Card>> callback = dataClient.GetCardDaiLy(num1 + "", num2 + "");
                    callback.enqueue(new Callback<List<Card>>() {
                        @Override
                        public void onResponse(Call<List<Card>> call, Response<List<Card>> response) {
                            arrCards = (ArrayList<Card>) response.body();
                            if (arrCards.size() > 0) {
                                Picasso.with(getContext()).load(arrCards.get(1).getImg()).into(binding.flipDaily1Front);
                                Picasso.with(getContext()).load(arrCards.get(0).getImg()).into(binding.flipDaily2Front);
                            }
                        }

                        @Override
                        public void onFailure(Call<List<Card>> call, Throwable t) {
                            Toast.makeText(getContext(), "Khong có", Toast.LENGTH_SHORT).show();
                        }
                    });


                    binding.cardsDaily.startAnimation(animation2);
                    count++;
                } else if (count == 2) {

                    binding.flipDaily1.setVisibility(View.VISIBLE);
                    binding.flipDaily1.startAnimation(animation);
                    count++;
                } else if (count == 3) {

                    binding.flipDaily2.setVisibility(View.VISIBLE);
                    binding.flipDaily2.startAnimation(animation1);
                    count++;
                }
                break;
            case R.id.btn_daily_frag:
                if (count < 4) {
                    Toast.makeText(getContext(), "Hãy Chọn Hai Lá Bài", Toast.LENGTH_SHORT).show();
                } else {
                    SaveLog(arrCards.get(0).getId(), arrCards.get(1).getId(), name);

                    FragDLResult fragDLResult = new FragDLResult();

                    fragDLResult.Setdata(arrCards.get(0).getImg()
                            , arrCards.get(1).getImg()
                            , "Lá " + arrCards.get(1).getNamecard() + ",Lá " + arrCards.get(0).getNamecard()
                            , arrCards.get(1).getNamecard() + ": " + arrCards.get(1).getMean()
                            , arrCards.get(0).getNamecard() + ": " + arrCards.get(0).getMean());


                    getFragmentManager().beginTransaction().
                            setCustomAnimations(R.anim.enter_to_left, R.anim.exit_to_left, R.anim.enter_to_right, R.anim.exit_to_right)
                            .replace(R.id.lay_frame, fragDLResult).addToBackStack(null).commit();


                }
                break;


        }
    }

    public void SaveLog(String card1, String card2, String name) {
        DataClient dataClient = APIUltils.getData();
        Call<String> call = dataClient.SaveLog(card1, card2, name, "Daily");
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
