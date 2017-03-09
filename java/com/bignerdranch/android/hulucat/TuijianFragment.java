package com.bignerdranch.android.hulucat;

import android.os.Bundle;
import android.os.Handler;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.support.v4.view.ViewPager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.GridView;
import android.widget.SimpleAdapter;
import android.widget.ViewFlipper;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * Created by tongxin on 2017/2/3.
 */

public class TuijianFragment extends Fragment {
    @Nullable
    @Override
    public View onCreateView(LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        View view = inflater.inflate(R.layout.fragment_tuijian, container, false);
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
