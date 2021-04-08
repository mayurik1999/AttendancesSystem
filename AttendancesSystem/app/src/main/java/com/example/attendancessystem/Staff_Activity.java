package com.example.attendancessystem;

import androidx.appcompat.app.AppCompatActivity;

import android.content.DialogInterface;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Spinner;
import android.widget.TextView;
import android.widget.Toast;

import java.util.Random;


public class Staff_Activity extends AppCompatActivity {

   Button otpgenerate;



    Spinner classSpinner, divSpinner,subSpinner;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_staff_);
        otpgenerate= findViewById(R.id.otp);
        otpgenerate.setOnClickListener(new View.OnClickListener() {
                                           @Override
                                           public void onClick(View v) {
                                              String otp=getRandomNumberString();
                                               Toast.makeText(Staff_Activity.this, "OTP is "+otp, Toast.LENGTH_SHORT).show();
                                           }
                                       }
        );
        classSpinner = (Spinner) findViewById(R.id.classSpinner);
        subSpinner=findViewById(R.id.subSpinner);
        divSpinner = (Spinner) findViewById(R.id.divSpinner);


        classSpinner.setAdapter(new ArrayAdapter<String>(Staff_Activity.this,
                R.layout.spinner_list,
                getResources().getStringArray(R.array.Years)));


        divSpinner.setAdapter(new ArrayAdapter<String>(Staff_Activity.this,
                R.layout.spinner_list,
                getResources().getStringArray(R.array.Department)));


        divSpinner.setVisibility(View.VISIBLE);

        classSpinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() {
            @Override
            public void onItemSelected(AdapterView<?> parent, View view, int position, long id) {
                String selectedClass = parent.getItemAtPosition(position).toString();
                if (!selectedClass.equals("")) {
//                    subSpinner.setAdapter(new ArrayAdapter<String>(Staff_Activity.this,
//                            android.R.layout.simple_spinner_dropdown_item,
//                            getResources().getStringArray(R.array.Classes)));
                    switch (selectedClass) {
                        case "First Year":
                            // assigning div item list defined in XML to the div Spinner
                            subSpinner.setAdapter(new ArrayAdapter<String>(Staff_Activity.this,
                                    R.layout.spinner_list,
                                    getResources().getStringArray(R.array.FirstYearSubjects)));

                            break;

                        case "Second Year":
                            subSpinner.setAdapter(new ArrayAdapter<String>(Staff_Activity.this,
                                    android.R.layout.simple_spinner_dropdown_item,
                                    getResources().getStringArray(R.array.SecondYearSubjects)));
                            break;

                        case "Third Year":
                            subSpinner.setAdapter(new ArrayAdapter<String>(Staff_Activity.this,
                                    android.R.layout.simple_spinner_dropdown_item,
                                    getResources().getStringArray(R.array.ThirdYearSubjects)));
                            break;

                        case "Fourth Year":
                            subSpinner.setAdapter(new ArrayAdapter<String>(Staff_Activity.this,
                                    android.R.layout.simple_spinner_dropdown_item,
                                    getResources().getStringArray(R.array.FourthYearSubjects)));
                            break;
                    }

                    //set divSpinner Visibility to Visible
                    divSpinner.setVisibility(View.VISIBLE);


                }

            }

            @Override
            public void onNothingSelected(AdapterView<?> parent) {
                // can leave this empty
            }
        });

        divSpinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() {
            @Override
            public void onItemSelected(AdapterView<?> parent, View view, int position, long id) {
                // do something upon option selection


            }

            @Override
            public void onNothingSelected(AdapterView<?> parent) {
                // can leave this empty
            }

        });



    }

    public static String getRandomNumberString() {
        // It will generate 6 digit random Number.
        // from 0 to 999999
        Random rnd = new Random();
        int number = rnd.nextInt(999999);

        // this will convert any number sequence into 6 character.
        return String.format("%06d", number);
    }

}
