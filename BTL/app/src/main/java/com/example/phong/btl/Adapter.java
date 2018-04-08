package com.example.phong.btl;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;

import java.util.ArrayList;

public class Adapter extends BaseAdapter {
    private ArrayList<History> arrLS;
    private Context context;
    private int layout;

    public Adapter(ArrayList<History> arrLS, Context context, int layout) {
        this.arrLS = arrLS;
        this.context = context;
        this.layout = layout;
    }


    @Override
    public int getCount() {
        return arrLS.size();
    }

    @Override
    public Object getItem(int i) {
        return null;
    }

    @Override
    public long getItemId(int i) {
        return 0;
    }

    @Override
    public View getView(int i, View view, ViewGroup viewGroup) {
        LayoutInflater inflater = (LayoutInflater) context.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
        view = inflater.inflate(layout, null);
        TextView tv1 = view.findViewById(R.id.txt_LS_card);
        TextView tv2 = view.findViewById(R.id.txt_LS_type);
        TextView tv3 = view.findViewById(R.id.txt_LS_date);
        tv1.setText(arrLS.get(i).getCard1() + " - " + arrLS.get(i).getCard2());
        tv2.setText(arrLS.get(i).getType());
        tv3.setText(arrLS.get(i).getDate());
        return view;
    }
}
