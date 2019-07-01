package com.azhar.crud.adapter;

import android.app.Activity;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;

import com.azhar.crud.R;
import com.azhar.crud.data.Data;

import java.util.List;

/**
 * Created by Azhar Rivaldi on 27/06/2019.
 */

public class KontakAdapter extends BaseAdapter {
    private Activity activity;
    private LayoutInflater inflater;
    private List<Data> items;

    public KontakAdapter(Activity activity, List<Data> items) {
        this.activity = activity;
        this.items = items;
    }

    @Override
    public int getCount() {
        return items.size();
    }

    @Override
    public Object getItem(int location) {
        return items.get(location);
    }

    @Override
    public long getItemId(int position) {
        return position;
    }

    @Override
    public View getView(int position, View convertView, ViewGroup parent) {

        if (inflater == null)
            inflater = (LayoutInflater) activity.getSystemService(Context.LAYOUT_INFLATER_SERVICE);

        if (convertView == null) convertView = inflater.inflate(R.layout.list_row, null);

        TextView id = (TextView) convertView.findViewById(R.id.id);
        TextView nama = (TextView) convertView.findViewById(R.id.nama);
        TextView tlp = (TextView) convertView.findViewById(R.id.tlp);
        TextView email = (TextView) convertView.findViewById(R.id.email);

        Data data = items.get(position);

        id.setText(data.getId());
        nama.setText(data.getNama());
        tlp.setText(data.getTlp());
        email.setText(data.getEmail());

        return convertView;
    }

}