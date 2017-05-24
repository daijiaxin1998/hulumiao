package com.bignerdranch.android.hulucat;

import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.net.Uri;
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

import java.util.ArrayList;
import java.util.List;

public class ProductInfoFragment extends Fragment implements View.OnClickListener{

    private View view;
    private ViewPager mPaper;
    private FragmentPagerAdapter mAdapter;
    private List<Fragment> mFragments = new ArrayList<Fragment>();
    private TextView tv_pingjia, tv_wenzhang;
    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        view = inflater.inflate(R.layout.fragment_product_info, container, false);
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

        tv_pingjia.setBackgroundColor(Color.rgb(255, 64, 129));

        mPaper.setAdapter(mAdapter);
        mPaper.setOnPageChangeListener(new ViewPager.OnPageChangeListener() {

            private int currentIndex;

            @Override
            public void onPageSelected(int position) {
                resetColor();
                switch (position) {
                    case 0:
                        tv_pingjia.setBackgroundColor(Color.rgb(255, 64, 129));
                        break;
                    case 1:
                        tv_wenzhang.setBackgroundColor(Color.rgb(255, 64, 129));
                        break;

                    default:
                        tv_pingjia.setBackgroundColor(Color.rgb(255, 64, 129));
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

        return view;
    }

    @Override
    public void onActivityCreated(@Nullable Bundle savedInstanceState) {
        super.onActivityCreated(savedInstanceState);
    }


    public void initLayout() {
        tv_pingjia = (TextView) view.findViewById(R.id.tv_pingjia);
        tv_wenzhang = (TextView) view.findViewById(R.id.tv_wenzhang);

        mPaper = (ViewPager) view.findViewById(R.id.view_pager1);

        tv_pingjia.setOnClickListener(this);
        tv_wenzhang.setOnClickListener(this);

        FragmentPage3 f3 = new FragmentPage3();
        FragmentPage4 f4 = new FragmentPage4();

        mFragments.add(f3);
        mFragments.add(f4);
    }

    public void resetColor() {
        tv_pingjia.setBackgroundColor(Color.rgb(254, 135, 180));
        tv_wenzhang.setBackgroundColor(Color.rgb(254, 135, 180));
    }

    @Override
    public void onClick(View v) {
        switch (v.getId()) {
            case R.id.tv_pingjia:
                resetColor();
                tv_pingjia.setBackgroundColor(Color.rgb(255, 64, 129));
                mPaper.setCurrentItem(0);
                break;
            case R.id.tv_wenzhang:
                resetColor();
                tv_wenzhang.setBackgroundColor(Color.rgb(255, 64, 129));
                mPaper.setCurrentItem(1);
                break;

            default:
                break;
        }
    }

    public static ProductInfoFragment newInstance(String content) {
        Bundle args = new Bundle();
        args.putString("ARGS", content);
        ProductInfoFragment fragment = new ProductInfoFragment();
        fragment.setArguments(args);
        return fragment;
    }

}