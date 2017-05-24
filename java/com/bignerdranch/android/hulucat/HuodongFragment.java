package com.bignerdranch.android.hulucat;

import java.util.ArrayList;
import java.util.List;

import android.content.Intent;
import android.graphics.Color;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.design.widget.FloatingActionButton;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentPagerAdapter;
import android.support.v4.view.ViewPager;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.TextView;

/**
 * Created by tongxin on 2017/2/3.
 */

public class HuodongFragment extends Fragment implements View.OnClickListener {
    private View view;
    private ViewPager mPaper;
    private FragmentPagerAdapter mAdapter;
    private List<Fragment> mFragments = new ArrayList<Fragment>();
    private TextView tv_yuezhuang, tv_jiaoliu;


    @Nullable
    @Override
    public View onCreateView(LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        view = inflater.inflate(R.layout.fragment_huodong, container, false);

        initLayout();

        mAdapter = new FragmentPagerAdapter(getChildFragmentManager()) {

            @Override
            public int getCount() {
                return mFragments.size();
            }

            @Override
            public Fragment getItem(int arg0) {
                return mFragments.get(arg0);
            }
        };

        tv_yuezhuang.setBackgroundColor(Color.rgb(255, 64, 129));

        mPaper.setAdapter(mAdapter);
        mPaper.setOnPageChangeListener(new ViewPager.OnPageChangeListener() {

            private int currentIndex;

            @Override
            public void onPageSelected(int position) {
                resetColor();
                switch (position) {
                    case 0:
                        tv_yuezhuang.setBackgroundColor(Color.rgb(255, 64, 129));
                        break;
                    case 1:
                        tv_jiaoliu.setBackgroundColor(Color.rgb(255, 64, 129));
                        break;

                    default:
                        tv_yuezhuang.setBackgroundColor(Color.rgb(255, 64, 129));
                        break;
                }
                currentIndex = position;
            }

            @Override
            public void onPageScrolled(int arg0, float arg1, int arg2) {

            }

            @Override
            public void onPageScrollStateChanged(int arg0) {

            }
        });

        FloatingActionButton fab = (FloatingActionButton) view.findViewById(R.id.fab);
        fab.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(getActivity(),
                        FatieActivity.class);
                startActivity(intent);
            }
        });

        ImageButton ibt=(ImageButton)view.findViewById(R.id.dingwei);
        ibt.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent =new Intent(getActivity(),
                        DingweiActivity.class);
                startActivity(intent);
            }
        });
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

    public void initLayout() {
        tv_yuezhuang = (TextView) view.findViewById(R.id.tv_yuezhuang);
        tv_jiaoliu = (TextView) view.findViewById(R.id.tv_jiaoliu);

        mPaper = (ViewPager) view.findViewById(R.id.view_pager);

        tv_yuezhuang.setOnClickListener(this);
        tv_jiaoliu.setOnClickListener(this);

        FragmentPage1 f1 = new FragmentPage1();
        FragmentPage2 f2 = new FragmentPage2();

        mFragments.add(f1);
        mFragments.add(f2);
    }

    public void resetColor() {
        tv_yuezhuang.setBackgroundColor(Color.rgb(254, 135, 180));
        tv_jiaoliu.setBackgroundColor(Color.rgb(254, 135, 180));
    }

    @Override
    public void onClick(View v) {
        switch (v.getId()) {
            case R.id.tv_yuezhuang:
                resetColor();
                tv_yuezhuang.setBackgroundColor(Color.rgb(255, 64, 129));
                mPaper.setCurrentItem(0);
                break;
            case R.id.tv_jiaoliu:
                resetColor();
                tv_jiaoliu.setBackgroundColor(Color.rgb(255, 64, 129));
                mPaper.setCurrentItem(1);
                break;

            default:
                break;
        }
    }
}
