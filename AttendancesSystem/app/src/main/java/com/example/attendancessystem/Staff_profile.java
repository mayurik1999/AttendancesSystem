package com.example.attendancessystem;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.util.Log;
import android.widget.TextView;
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

import org.json.JSONObject;

import java.util.HashMap;
import java.util.Map;

public class Staff_profile extends AppCompatActivity {
    TextView fname, fsurname, femail, fphone;
    private PrefManager prefManager;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_staff_profile);
        fname = findViewById(R.id.Tname);
        fsurname = findViewById(R.id.Tsurname);
        femail = findViewById(R.id.Temailid);
        fphone = findViewById(R.id.Tnumber);


        setValues();

    }

    private void setValues() {

        StringRequest stringRequest = new StringRequest(Request.Method.POST, ServerUtility.get_staff_data(), new Response.Listener<String>() {

            @Override
            public void onResponse(String response) {

                try {
                    JSONObject jsonObject = new JSONObject(response);
                    if (jsonObject.has(ServerUtility.TAG_SUCCESS)) {
                        fname.setText(jsonObject.getString("name"));
                        fphone.setText(jsonObject.getString("mobile"));
                        femail.setText(jsonObject.getString("email"));
                        fsurname.setText(jsonObject.getString("surname"));


                    } else {
                        Toast.makeText(getApplicationContext(), "Login Failed..", Toast.LENGTH_SHORT).show();
                    }

            }catch (Exception e){
                    Log.e("response",e.toString());
                }
            }
        }, new Response.ErrorListener() {
            @Override
            public void onErrorResponse(VolleyError error) {

            }
        }) {


            @Override
            protected Map<String, String> getParams() {
                Map<String, String> params = new HashMap<String, String>();
                params.put("email",prefManager.getUserEmail() );

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


}