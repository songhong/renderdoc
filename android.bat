rem prepare 
set JAVA_HOME=D:\SDKs\Java\jdk1.8.0_181
set ANDROID_SDK=D:\SDKs\android-sdk_auto
set ANDROID_NDK=D:\SDKs\android-ndk-r14b

rem armeabi-v7a
cd ./build-android-v7a
cmake -DBUILD_ANDROID=On -DANDROID_ABI=armeabi-v7a -G "MinGW Makefiles" ..
mingw32-make -j20

cd ../
cp ./build-android-v7a/bin/org.renderdoc.renderdoccmd.arm32.apk ./x64/Development/plugins/android/

rem arm64-v8a
cd ./build-android-v8a
cmake -DBUILD_ANDROID=On -DANDROID_ABI=arm64-v8a -G "MinGW Makefiles" ..
mingw32-make -j20

cd ../
cp ./build-android-v8a/bin/org.renderdoc.renderdoccmd.arm64.apk ./x64/Development/plugins/android/