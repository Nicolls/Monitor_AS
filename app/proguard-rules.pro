#
# Proguard config for the demo project.
#

# Standard config from ADT

#-optimizationpasses 5
#-dontusemixedcaseclassnames
#-dontskipnonpubliclibraryclasses
#-dontpreverify
#-verbose
#-optimizations !code/simplification/arithmetic,!field/*,!class/merging/*
#-ignorewarnings

#-libraryjars libs/AMap_Location_V3.1.0_20161027.jar
#-libraryjars libs/commons-net-3.5.jar
#-libraryjars libs/gson-2.2.4.jar
#-libraryjars libs/volley.jar

-keep public class * extends android.app.Activity
-keep public class * extends android.app.Application
-keep public class * extends android.app.Service
-keep public class * extends android.content.BroadcastReceiver
-keep public class * extends android.content.ContentProvider
-keep public class * extends android.app.backup.BackupAgentHelper
-keep public class * extends android.preference.Preference
-keep public class com.android.vending.licensing.ILicensingService

-keepclasseswithmembernames class * {
    native <methods>;
}

-keepclasseswithmembers class * {
    public <init>(android.content.Context, android.util.AttributeSet);
}

-keepclasseswithmembers class * {
    public <init>(android.content.Context, android.util.AttributeSet, int);
}

-keepclassmembers class * extends android.app.Activity {
   public void *(android.view.View);
}

-keepclassmembers enum * {
    public static **[] values();
    public static ** valueOf(java.lang.String);
}

-keep class * implements android.os.Parcelable {
  public static final android.os.Parcelable$Creator *;
}
-keepattributes SourceFile,LineNumberTable
# As described in tools/proguard/examples/android.pro - ignore all warnings.
-dontwarn android.support.v4.**
#如果有其它包有warning，在报出warning的包加入下面类似的-dontwarn 报名
-dontwarn com.amap.api.**
-dontwarn com.autonavi.aps.**
-dontwarn com.crashlytics.android.**
#高德相关混淆文件
#Location
-keep   class com.amap.api.location.**{*;}
-keep   class com.amap.api.fence.**{*;}
-keep   class com.autonavi.aps.amapapi.model.**{*;}

-keep   class com.android.volley.**{*;}
-keep   class or.apache.commons.net.**{*;}
-keep   class com.google.gson.**{*;}
-keep   class com.egovcomm.monitor.model.**{*;}

# Crashlytics
-keep class com.crashlytics.android.** { *; }
-keep class io.fabric.sdk.android.** { *; }
