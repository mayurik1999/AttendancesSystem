package com.example.attendancessystem.utils;

import android.app.AlertDialog;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;

import com.example.attendancessystem.R;


public class ProgressDialog {


    Context context;
    AlertDialog alertDialog;
    AlertDialog.Builder dialogBuilder;

    public ProgressDialog(Context context) {
        this.context = context;
    }

    public void showProgressDialog() {
        dialogBuilder = new AlertDialog.Builder(context);
        LayoutInflater inflater = (LayoutInflater) context.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
        View dialogView = inflater.inflate(R.layout.progress_dialog_layout, null);
        dialogBuilder.setView(dialogView);
        dialogBuilder.setCancelable(false);
        alertDialog = dialogBuilder.create();
        alertDialog.show();
    }

    public void hideProgressDialog() {

        alertDialog.dismiss();
    }

}

