package com.fp.neezit.user.model.service;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;

import org.springframework.stereotype.Service;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;


@Service
public class KakaoService {

        public static void kakaoLogout(String access_Token) {
            String reqURL = "https://kapi.kakao.com//v1/user/unlink";
            try {
                URL url = new URL(reqURL);
                HttpURLConnection conn = (HttpURLConnection) url.openConnection();
                conn.setRequestMethod("POST");
                conn.setRequestProperty("Authorization", "Bearer " + access_Token);

                int responseCode = conn.getResponseCode();

                BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));

                String result = "";
                String line = "";

                while ((line = br.readLine()) != null) {
                    result += line;
                }
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
} 