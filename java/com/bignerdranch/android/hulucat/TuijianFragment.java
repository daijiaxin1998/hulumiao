package com.bignerdranch.android.hulucat;

import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;

/**
 * Created by tongxin on 2017/2/3.
 */

public class TuijianFragment extends Fragment{
    @Nullable
    private Button bt_qiangminge;
    @Override
    public View onCreateView(LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        View view = inflater.inflate(R.layout.fragment_tuijian, container, false);
        bt_qiangminge=(Button)view.findViewById(R.id.qiang_1);
        bt_qiangminge.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent=new Intent(getActivity(), qiangshiyong.class);
                startActivity(intent);
            }
        });
        return view;
    }

    @Override
    public void onActivityCreated(@Nullable Bundle savedInstanceState) {
        super.onActivityCreated(savedInstanceState);
    }

    public static TuijianFragment newInstance(String content) {
        Bundle args = new Bundle();
        args.putString("ARGS", content);
        TuijianFragment fragment = new TuijianFragment();
        fragment.setArguments(args);
        return fragment;
    }
}
