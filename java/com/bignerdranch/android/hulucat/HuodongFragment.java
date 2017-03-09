package com.bignerdranch.android.hulucat;

import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

/**
 * Created by tongxin on 2017/2/3.
 */

public class HuodongFragment extends Fragment {
    @Nullable
    @Override
    public View onCreateView(LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        View view = inflater.inflate(R.layout.fragment_huodong, container, false);
        return view;
    }

    @Override
    public void onActivityCreated(@Nullable Bundle savedInstanceState) {
        super.onActivityCreated(savedInstanceState);
    }

    public static HuodongFragment newInstance(String content) {
        Bundle args = new Bundle();
        args.putString("ARGS", content);
        HuodongFragment fragment = new HuodongFragment();
        fragment.setArguments(args);
        return fragment;
    }
}
