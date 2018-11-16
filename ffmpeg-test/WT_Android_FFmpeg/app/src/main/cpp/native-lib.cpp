#include <jni.h>
#include <string>

extern "C"
JNIEXPORT jstring

JNICALL
Java_decodevideo_ffmpeg_wt_mac_wtffmpegdemo_1decodevideo_MainActivity_stringFromJNI(
        JNIEnv *env,
        jobject /* this */) {
    std::string hello = "Hello from C++";
    return env->NewStringUTF(hello.c_str());
}
