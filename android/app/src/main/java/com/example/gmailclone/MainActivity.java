package com.example.gmailclone;

import android.content.Intent;
import android.os.Bundle;

import androidx.annotation.NonNull;

import java.util.Objects;

import io.flutter.embedding.android.FlutterActivity;
import io.flutter.embedding.engine.FlutterEngine;
import io.flutter.embedding.engine.plugins.shim.ShimPluginRegistry;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugins.GeneratedPluginRegistrant;
import io.flutter.view.FlutterView;

public class MainActivity extends FlutterActivity {


    private String sharedText;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Intent intent = getIntent();
        String action = intent.getAction();
        String type = intent.getType();

        if (Intent.ACTION_SEND.equals(action) && type != null) {
            if ("text/plain".equals(type)) {
                handleSendText(intent); // Handle text being sent
            }
        }

        new MethodChannel(Objects.requireNonNull(getFlutterEngine()).getDartExecutor().getBinaryMessenger(), "app.channel.shared.data").setMethodCallHandler(
                (call, result) -> {
                    if (call.method.contentEquals("getSharedText")) {
                        result.success(sharedText);
                        sharedText = null;
                    }
                });
    }
    @Override
    public void configureFlutterEngine(@NonNull FlutterEngine flutterEngine) {
        // Use the GeneratedPluginRegistrant to add every plugin that's in the pubspec.
        GeneratedPluginRegistrant.registerWith(flutterEngine);
    }

    void handleSendText(Intent intent) {
        sharedText = intent.getStringExtra(Intent.EXTRA_TEXT);
    }

}
