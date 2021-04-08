package com.example.attendancessystem;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Spinner;

public class Add_student extends AppCompatActivity {

    EditText name,surname;
    Spinner division,year;
    Button submit;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_add_student);

        name=(EditText)findViewById(R.id.rname);
        surname=(EditText)findViewById(R.id.surname);
        division=(Spinner)findViewById(R.id.classSpinner);
        year=(Spinner)findViewById(R.id.YearSpinner);
         submit=(Button)findViewById(R.id.Enroll);



    }
}