package com.example.attendancessystem;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;

public class Student_Activity extends AppCompatActivity {
    ImageView giveAtt,ViewAtt;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_student_);
        giveAtt=findViewById(R.id.give_att);
        ViewAtt=findViewById(R.id.viewAttStu);

        giveAtt.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                startActivity(new Intent(getApplicationContext(),Give_attendance.class));

            }
        });

        ViewAtt.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                startActivity(new Intent(getApplicationContext(),View_attendace_student.class));
            }
        });


    }
}