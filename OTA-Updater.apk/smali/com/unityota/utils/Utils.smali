.class public Lcom/unityota/utils/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final HEX_DIGITS:[C

.field private static final MD5_FILE_CACHE:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final OTA_DATE:Ljava/text/SimpleDateFormat;

.field private static cachedPlayServicesCheck:Ljava/lang/Boolean;

.field private static device:Ljava/lang/String;

.field private static deviceID:Ljava/lang/String;

.field private static deviceName:Ljava/lang/String;

.field private static final random:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/unityota/utils/Utils;->random:Ljava/util/Random;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd-kkmm"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/unityota/utils/Utils;->OTA_DATE:Ljava/text/SimpleDateFormat;

    sput-object v3, Lcom/unityota/utils/Utils;->cachedPlayServicesCheck:Ljava/lang/Boolean;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/unityota/utils/Utils;->MD5_FILE_CACHE:Ljava/util/HashMap;

    sput-object v3, Lcom/unityota/utils/Utils;->device:Ljava/lang/String;

    sput-object v3, Lcom/unityota/utils/Utils;->deviceID:Ljava/lang/String;

    sput-object v3, Lcom/unityota/utils/Utils;->deviceName:Ljava/lang/String;

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/unityota/utils/Utils;->HEX_DIGITS:[C

    return-void

    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byteArrToStr([B)Ljava/lang/String;
    .locals 7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, p0

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-byte v1, v0, v2

    sget-object v5, Lcom/unityota/utils/Utils;->HEX_DIGITS:[C

    and-int/lit16 v6, v1, 0xf0

    ushr-int/lit8 v6, v6, 0x4

    aget-char v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/unityota/utils/Utils;->HEX_DIGITS:[C

    and-int/lit8 v6, v1, 0xf

    aget-char v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static checkPlayServices(Landroid/content/Context;)Z
    .locals 4

    sget-object v1, Lcom/unityota/utils/Utils;->cachedPlayServicesCheck:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/unityota/utils/Utils;->cachedPlayServicesCheck:Ljava/lang/Boolean;

    :cond_0
    :goto_0
    sget-object v1, Lcom/unityota/utils/Utils;->cachedPlayServicesCheck:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    :cond_1
    invoke-static {v0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isUserRecoverableError(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "OTA::checkPlayServices"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Play Services error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->getErrorString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/unityota/utils/Utils;->cachedPlayServicesCheck:Ljava/lang/Boolean;

    goto :goto_0

    :cond_2
    const-string v1, "OTA::checkPlayServices"

    const-string v2, "Device not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static dataAvailable(Landroid/content/Context;)Z
    .locals 3

    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static formatDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/unityota/utils/Utils;->OTA_DATE:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getAppVersion(Landroid/content/Context;)I
    .locals 5

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not get package name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getDevice()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/unityota/utils/Utils;->device:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/unityota/utils/Utils;->device:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unityota/utils/Utils;->device:Ljava/lang/String;

    sget-object v0, Lcom/unityota/utils/Utils;->device:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getDeviceID(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    sget-object v1, Lcom/unityota/utils/Utils;->deviceID:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/unityota/utils/Utils;->deviceID:Ljava/lang/String;

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/unityota/utils/Utils;->deviceID:Ljava/lang/String;

    sget-object v1, Lcom/unityota/utils/Utils;->deviceID:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/unityota/utils/Utils;->deviceID:Ljava/lang/String;

    :cond_1
    :goto_1
    sget-object v1, Lcom/unityota/utils/Utils;->deviceID:Ljava/lang/String;

    invoke-static {v1}, Lcom/unityota/utils/Utils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/unityota/utils/Utils;->deviceID:Ljava/lang/String;

    sget-object v1, Lcom/unityota/utils/Utils;->deviceID:Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/unityota/utils/Utils;->deviceID:Ljava/lang/String;

    goto :goto_1
.end method

.method public static getDeviceName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/unityota/utils/Utils;->deviceName:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/unityota/utils/Utils;->deviceName:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unityota/utils/Utils;->deviceName:Ljava/lang/String;

    sget-object v0, Lcom/unityota/utils/Utils;->deviceName:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/unityota/utils/Utils;->deviceName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string v0, "Wi-Fi"

    sput-object v0, Lcom/unityota/utils/Utils;->deviceName:Ljava/lang/String;

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/unityota/utils/Utils;->deviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unityota/utils/Utils;->deviceName:Ljava/lang/String;

    sget-object v0, Lcom/unityota/utils/Utils;->deviceName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static hmac(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    :try_start_0
    const-string v3, "HmacSHA256"

    invoke-static {v3}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/crypto/Mac;->getMacLength()I

    move-result v3

    invoke-static {v3}, Lcom/unityota/utils/Utils;->randomSaltString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v1}, Ljavax/crypto/Mac;->getAlgorithm()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1, v3}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v4

    invoke-static {v4}, Lcom/unityota/utils/Utils;->byteArrToStr([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_0
    return-object v3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static md5(Ljava/io/File;)Ljava/lang/String;
    .locals 15

    const/4 v13, 0x0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_1

    const-string v9, ""

    :cond_0
    :goto_0
    return-object v9

    :cond_1
    sget-object v11, Lcom/unityota/utils/Utils;->MD5_FILE_CACHE:Ljava/util/HashMap;

    invoke-virtual {v11, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    sget-object v11, Lcom/unityota/utils/Utils;->MD5_FILE_CACHE:Ljava/util/HashMap;

    invoke-virtual {v11, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/16 v11, 0x3a

    invoke-virtual {v1, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v11, v2, 0x1

    invoke-virtual {v1, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v11

    cmp-long v11, v7, v11

    if-nez v11, :cond_2

    invoke-virtual {v1, v13, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    :cond_2
    sget-object v11, Lcom/unityota/utils/Utils;->MD5_FILE_CACHE:Ljava/util/HashMap;

    invoke-virtual {v11, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const/4 v5, 0x0

    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    :try_start_1
    const-string v11, "MD5"

    invoke-static {v11}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    const/16 v11, 0x1000

    new-array v0, v11, [B

    :goto_1
    invoke-virtual {v6, v0}, Ljava/io/InputStream;->read([B)I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_5

    const/4 v11, 0x0

    invoke-virtual {v3, v0, v11, v10}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    move-object v5, v6

    :goto_2
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v5, :cond_4

    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_4
    :goto_3
    const-string v9, ""

    goto :goto_0

    :cond_5
    :try_start_4
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v11

    invoke-static {v11}, Lcom/unityota/utils/Utils;->byteArrToStr([B)Ljava/lang/String;

    move-result-object v9

    sget-object v11, Lcom/unityota/utils/Utils;->MD5_FILE_CACHE:Ljava/util/HashMap;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, p0, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    if-eqz v6, :cond_0

    :try_start_5
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v11

    goto/16 :goto_0

    :catchall_0
    move-exception v11

    :goto_4
    if-eqz v5, :cond_6

    :try_start_6
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :cond_6
    :goto_5
    throw v11

    :catch_2
    move-exception v11

    goto :goto_3

    :catch_3
    move-exception v12

    goto :goto_5

    :catchall_1
    move-exception v11

    move-object v5, v6

    goto :goto_4

    :catch_4
    move-exception v4

    goto :goto_2
.end method

.method public static md5(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    invoke-static {v2}, Lcom/unityota/utils/Utils;->byteArrToStr([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const-string v2, ""

    goto :goto_0
.end method

.method public static parseDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 3

    const/4 v1, 0x0

    if-nez p0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    sget-object v2, Lcom/unityota/utils/Utils;->OTA_DATE:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0
.end method

.method public static randomSalt(I)[B
    .locals 2

    new-array v0, p0, [B

    sget-object v1, Lcom/unityota/utils/Utils;->random:Ljava/util/Random;

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextBytes([B)V

    return-object v0
.end method

.method public static randomSaltString(I)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/unityota/utils/Utils;->randomSalt(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/unityota/utils/Utils;->byteArrToStr([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sanitizeName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, ""

    :goto_0
    return-object p0

    :cond_0
    sget-object v0, Ljava/text/Normalizer$Form;->NFD:Ljava/text/Normalizer$Form;

    invoke-static {p0, v0}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v0, "[^\\p{ASCII}]"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "[ _-]+"

    const-string v1, "_"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "(^_|_$)"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static showProKeyOnlyFeatureDialog(Landroid/content/Context;Lcom/unityota/utils/DialogCallback;)V
    .locals 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f09007d

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f09007c

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f09007e

    new-instance v3, Lcom/unityota/utils/Utils$5;

    invoke-direct {v3, p0}, Lcom/unityota/utils/Utils$5;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v2, 0x104

    new-instance v3, Lcom/unityota/utils/Utils$6;

    invoke-direct {v3}, Lcom/unityota/utils/Utils$6;-><init>()V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    new-instance v2, Lcom/unityota/utils/Utils$7;

    invoke-direct {v2, p1, v1}, Lcom/unityota/utils/Utils$7;-><init>(Lcom/unityota/utils/DialogCallback;Landroid/app/AlertDialog;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    new-instance v2, Lcom/unityota/utils/Utils$8;

    invoke-direct {v2, p1, v1}, Lcom/unityota/utils/Utils$8;-><init>(Lcom/unityota/utils/DialogCallback;Landroid/app/AlertDialog;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public static updateDeviceRegistration(Landroid/content/Context;)V
    .locals 5

    invoke-static {p0}, Lcom/unityota/utils/Config;->getInstance(Landroid/content/Context;)Lcom/unityota/utils/Config;

    move-result-object v0

    new-instance v1, Lcom/unityota/utils/Utils$1;

    invoke-direct {v1, v0, p0}, Lcom/unityota/utils/Utils$1;-><init>(Lcom/unityota/utils/Config;Landroid/content/Context;)V

    invoke-static {p0}, Lcom/unityota/utils/Utils;->checkPlayServices(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lcom/unityota/utils/Config;->getGcmRegistrationId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v3, "OTA::DeviceRegister"

    const-string v4, "Not registered, registering for GCM..."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/unityota/utils/Utils$2;

    invoke-direct {v3, p0, v0, v1}, Lcom/unityota/utils/Utils$2;-><init>(Landroid/content/Context;Lcom/unityota/utils/Config;Lcom/unityota/utils/APIUtils$APIAdapter;)V

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lcom/unityota/utils/Utils$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/unityota/utils/Config;->upToDate()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "OTA::DeviceRegister"

    const-string v4, "Already GCM registered, out-of-date"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/unityota/utils/Config;->setValuesToCurrent()V

    invoke-static {p0, v1}, Lcom/unityota/utils/APIUtils;->updateDeviceRegistration(Landroid/content/Context;Lcom/unityota/utils/APIUtils$APICallback;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/unityota/utils/Config;->needPing()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "OTA::DeviceRegister"

    const-string v4, "Already GCM registered, need to ping"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/unityota/utils/Utils$3;

    invoke-direct {v3, v0}, Lcom/unityota/utils/Utils$3;-><init>(Lcom/unityota/utils/Config;)V

    invoke-static {p0, v3}, Lcom/unityota/utils/APIUtils;->doPing(Landroid/content/Context;Lcom/unityota/utils/APIUtils$APICallback;)V

    goto :goto_0

    :cond_2
    const-string v3, "OTA::DeviceRegister"

    const-string v4, "Already GCM registered, no ping necessary"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/unityota/utils/Config;->upToDate()Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "OTA::DeviceRegister"

    const-string v4, "Already registered, out-of-date"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/unityota/utils/Config;->setValuesToCurrent()V

    invoke-static {p0, v1}, Lcom/unityota/utils/APIUtils;->updateDeviceRegistration(Landroid/content/Context;Lcom/unityota/utils/APIUtils$APICallback;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Lcom/unityota/utils/Config;->needPing()Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "OTA::DeviceRegister"

    const-string v4, "Already registered, need to ping"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/unityota/utils/Utils$4;

    invoke-direct {v3, v0}, Lcom/unityota/utils/Utils$4;-><init>(Lcom/unityota/utils/Config;)V

    invoke-static {p0, v3}, Lcom/unityota/utils/APIUtils;->doPing(Landroid/content/Context;Lcom/unityota/utils/APIUtils$APICallback;)V

    goto :goto_0

    :cond_5
    const-string v3, "OTA::DeviceRegister"

    const-string v4, "Already registered, no ping necessary"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static wifiConnected(Landroid/content/Context;)Z
    .locals 4

    const/4 v2, 0x1

    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-ne v3, v2, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
