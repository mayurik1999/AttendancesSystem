package com.example.attendancessystem;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;

public class Give_attendance extends AppCompatActivity {

    Button submitotp;
    EditText getotp;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_give_attendance);

        submitotp=(Button)findViewById(R.id.submitotp);
        getotp=(EditText)findViewById(R.id.enterotp);

        submitotp.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {

                startActivity(new Intent(getApplicationContext(),View_attendace_student.class));
            }
        });
    }
}