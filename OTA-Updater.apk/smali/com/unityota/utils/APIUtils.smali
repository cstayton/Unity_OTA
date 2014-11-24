.class public Lcom/unityota/utils/APIUtils;
.super Ljava/lang/Object;
.source "APIUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unityota/utils/APIUtils$APIAdapter;,
        Lcom/unityota/utils/APIUtils$APICallback;,
        Lcom/unityota/utils/APIUtils$ProgressDialogAPICallback;,
        Lcom/unityota/utils/APIUtils$APITask;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/unityota/utils/APIUtils;->getOAuthToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static doPing(Landroid/content/Context;Lcom/unityota/utils/APIUtils$APICallback;)V
    .locals 3

    new-instance v0, Lcom/unityota/utils/APIUtils$APITask;

    const-string v1, "device/ping"

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/unityota/utils/APIUtils$APITask;-><init>(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Lcom/unityota/utils/APIUtils$APICallback;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/unityota/utils/APIUtils$APITask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static fetchKernelInfo(Landroid/content/Context;Lcom/unityota/utils/APIUtils$APICallback;)V
    .locals 3

    invoke-static {}, Lcom/unityota/utils/PropUtils;->isKernelOtaEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p1, :cond_0

    const v1, 0x7f090069

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Lcom/unityota/utils/APIUtils$APICallback;->onError(Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "device"

    invoke-static {}, Lcom/unityota/utils/Utils;->getDevice()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "kernel_id"

    invoke-static {}, Lcom/unityota/utils/PropUtils;->getKernelOtaID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    new-instance v1, Lcom/unityota/utils/APIUtils$APITask;

    const-string v2, "device/info/kernel"

    invoke-direct {v1, p0, v2, v0, p1}, Lcom/unityota/utils/APIUtils$APITask;-><init>(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Lcom/unityota/utils/APIUtils$APICallback;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/unityota/utils/APIUtils$APITask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public static fetchRomInfo(Landroid/content/Context;Lcom/unityota/utils/APIUtils$APICallback;)V
    .locals 3

    invoke-static {}, Lcom/unityota/utils/PropUtils;->isRomOtaEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p1, :cond_0

    const v1, 0x7f09008b

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Lcom/unityota/utils/APIUtils$APICallback;->onError(Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "device"

    invoke-static {}, Lcom/unityota/utils/Utils;->getDevice()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "rom_id"

    invoke-static {}, Lcom/unityota/utils/PropUtils;->getRomOtaID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    new-instance v1, Lcom/unityota/utils/APIUtils$APITask;

    const-string v2, "device/info/rom"

    invoke-direct {v1, p0, v2, v0, p1}, Lcom/unityota/utils/APIUtils$APITask;-><init>(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Lcom/unityota/utils/APIUtils$APICallback;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/unityota/utils/APIUtils$APITask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private static getOAuthToken(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    :try_start_0
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const-string v2, "com.google"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    array-length v2, v0

    if-nez v2, :cond_0

    const-string v2, ""

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    aget-object v2, v0, v2

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string v3, "audience:server:client_id:1068482628480-jsufug7klk4b4ab2v6f83dtp5q38k74t.apps.googleusercontent.com"

    invoke-static {p0, v2, v3}, Lcom/google/android/gms/auth/GoogleAuthUtil;->getToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v2, ""

    goto :goto_0
.end method

.method public static redeemCode(Landroid/content/Context;Lcom/unityota/utils/APIUtils$APICallback;)V
    .locals 3

    new-instance v0, Lcom/unityota/utils/APIUtils$APITask;

    const-string v1, "device/user/redeem_code"

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/unityota/utils/APIUtils$APITask;-><init>(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Lcom/unityota/utils/APIUtils$APICallback;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/unityota/utils/APIUtils$APITask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static updateDeviceRegistration(Landroid/content/Context;Lcom/unityota/utils/APIUtils$APICallback;)V
    .locals 4

    invoke-static {p0}, Lcom/unityota/utils/Config;->getInstance(Landroid/content/Context;)Lcom/unityota/utils/Config;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "device"

    invoke-static {}, Lcom/unityota/utils/Utils;->getDevice()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "device_id"

    invoke-static {p0}, Lcom/unityota/utils/Utils;->getDeviceID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "reg_id"

    invoke-virtual {v0}, Lcom/unityota/utils/Config;->getGcmRegistrationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/unityota/utils/PropUtils;->isRomOtaEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "rom_id"

    invoke-static {}, Lcom/unityota/utils/PropUtils;->getRomOtaID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    invoke-static {}, Lcom/unityota/utils/PropUtils;->isKernelOtaEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "kernel_id"

    invoke-static {}, Lcom/unityota/utils/PropUtils;->getKernelOtaID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    const-string v2, "app_version"

    invoke-static {p0}, Lcom/unityota/utils/Utils;->getAppVersion(Landroid/content/Context;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v2, Lcom/unityota/utils/APIUtils$APITask;

    const-string v3, "device/register"

    invoke-direct {v2, p0, v3, v1, p1}, Lcom/unityota/utils/APIUtils$APITask;-><init>(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Lcom/unityota/utils/APIUtils$APICallback;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/unityota/utils/APIUtils$APITask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static userLogin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/unityota/utils/APIUtils$APICallback;)V
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "username"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "password"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "device_name"

    invoke-static {p0}, Lcom/unityota/utils/Utils;->getDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v1, Lcom/unityota/utils/APIUtils$APITask;

    const-string v2, "device/user/login"

    invoke-direct {v1, p0, v2, v0, p3}, Lcom/unityota/utils/APIUtils$APITask;-><init>(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Lcom/unityota/utils/APIUtils$APICallback;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/unityota/utils/APIUtils$APITask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static userLogout(Landroid/content/Context;Lcom/unityota/utils/APIUtils$APICallback;)V
    .locals 3

    new-instance v0, Lcom/unityota/utils/APIUtils$APITask;

    const-string v1, "device/user/logout"

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/unityota/utils/APIUtils$APITask;-><init>(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Lcom/unityota/utils/APIUtils$APICallback;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/unityota/utils/APIUtils$APITask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
