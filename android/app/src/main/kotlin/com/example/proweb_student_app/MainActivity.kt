package com.example.proweb_student_app

import android.os.Build
import io.flutter.embedding.android.FlutterActivity

class MainActivity : FlutterActivity() {
    override fun onPostResume() {
        super.onPostResume()

        val attrs = window.attributes
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.R) {
            // Находим режим дисплея с самой высокой частотой обновления
            display?.let {
                val highestMode = it.supportedModes.maxByOrNull { mode -> mode.refreshRate }
                highestMode?.let { mode ->
                    attrs.preferredDisplayModeId = mode.modeId
                }
            }
        } else {
            // Для устройств до Android 11 — дефолтный режим
            attrs.preferredDisplayModeId = 0
        }
        window.attributes = attrs
    }
}
