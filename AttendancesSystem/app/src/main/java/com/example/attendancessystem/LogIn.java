package com.example.attendancessystem;

import androidx.appcompat.app.AppCompatActivity;

import android.app.ProgressDialog;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.RadioGroup;
import android.widget.Toast;

import com.android.volley.AuthFailureError;
import com.android.volley.Request;
import com.android.volley.RequestQueue;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.StringRequest;
import com.android.volley.toolbox.Volley;
import com.example.attendancessystem.utils.PrefManager;
import com.example.attendancessystem.utils.ServerUtility;

import org.json.JSONException;
import org.json.JSONObject;

import java.util.HashMap;
import java.util.Map;

public class LogIn extends AppCompatActivity {

    Button Login;
    EditText txtUsername, txtPassword, txtServerIP;
    ProgressDialog dialog;
    RadioGroup rdGroup;
    private PrefManager prefManager;
    private static String usertype = "Student";

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_log_in);
         prefManager=new PrefManager(this);
        rdGroup = (RadioGroup) findViewById(R.id.rdGroup);
        dialog = new ProgressDialog(this);
        txtServerIP = (EditText) findViewById(R.id.txtServerIP);
        Login = findViewById(R.id.login);
        txtUsername = (EditText) findViewById(R.id.txtUsername);
        txtPassword = (EditText) findViewById(R.id.txtPassword);

        Login.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {

                if (txtServerIP.getText().toString().equals("")) {
                    Toast.makeText(getApplicationContext(), "Please enter server ip", Toast.LENGTH_SHORT).show();
                    return;
                }
                ServerUtility.SERVER_URL = "http://" + txtServerIP.getText().toString() + "/AttendanceServer/";
                int id = rdGroup.getCheckedRadioButtonId();
                if (id == R.id.rdFaculty) {
                    usertype = "Teacher";
                } else {
                    usertype = "Student";
                }

                checkLogin();


            }
        });




    }

    private void checkLogin() {


        StringRequest stringRequest = new StringRequest(Request.Method.POST, ServerUtility.get_login_url(), new Response.Listener<String>() {
            @Override
            public void onResponse(String response) {

//                dialog.hideProgressDialog();
                try {
                    JSONObject jsonObject = new JSONObject(response);
                    if (jsonObject.has(ServerUtility.TAG_SUCCESS)) {
                        prefManager.setUserName(jsonObject.getString("name"));
                        prefManager.setUserMobile(jsonObject.getString("mobile"));
                        prefManager.setUserAddress(jsonObject.getString("email"));
                        prefManager.setUserEmail(txtUsername.getText().toString());
                        launchHomeScreen();

                    } else {
                        Toast.makeText(getApplicationContext(), "Login Failed..", Toast.LENGTH_SHORT).show();
                    }
                } catch (JSONException e) {
                    e.printStackTrace();
                }
            }

        }, new Response.ErrorListener() {
            @Override
            public void onErrorResponse(VolleyError error) {
                if (error != null) {
//                    Log.e("VOLLEY_ERROR", error.getMessage());
                }
            }
        }) {


            @Override
            protected Map<String, String> getParams() {
                Map<String, String> params = new HashMap<String, String>();
                params.put("email", txtUsername.getText().toString());
                params.put("password", txtPassword.getText().toString());
                params.put("usertype", usertype);
                return params;
            }

            @Override
            public Map<String, String> getHeaders() throws AuthFailureError {
                Map<String, String> params = new HashMap<String, String>();
                params.put("Content-Type", "application/x-www-form-urlencoded");
                return params;
            }

        };


        RequestQueue requestQueue = Volley.newRequestQueue(this);
        requestQueue.add(stringRequest);
    }

    private void launchHomeScreen() {

        prefManager.setIsUserLogin(true);
        prefManager.setFirstTimeLaunch(false);
        if (usertype.equalsIgnoreCase("Teacher")) {
            //call user home
            startActivity(new Intent(getApplicationContext(), MainActivity.class));
        } else {
            //for delivery person
            startActivity(new Intent(getApplicationContext(), Student_Activity.class));
        }
        finish();

    }


}