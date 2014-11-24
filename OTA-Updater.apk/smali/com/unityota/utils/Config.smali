.class public Lcom/unityota/utils/Config;
.super Ljava/lang/Object;
.source "Config.java"


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field public static final ADMOB_UNIT_ID:Ljava/lang/String; = "ca-app-pub-0361534644858126/7580389175"

.field public static final AD_SHOW_DELAY:I = 0xbb8

.field public static final BASE_DL_PATH:Ljava/lang/String; = null

.field public static final BASE_SD_PATH:Ljava/lang/String; = "/OTA-Updater/download/"

.field public static final CODE_REDEEM_URL:Ljava/lang/String; = "device/user/redeem_code"

.field public static final DL_PATH_FILE:Ljava/io/File; = null

.field public static final DONATE_URL:Ljava/lang/String; = "donate"

.field public static final GCM_REGISTER_URL:Ljava/lang/String; = "device/register"

.field public static final GCM_SENDER_ID:Ljava/lang/String; = "1068482628480"

.field public static final GPLUS_URL:Ljava/lang/String; = "https://plus.google.com/105584449656786136247/posts"

.field public static final HMAC_ALGORITHM:Ljava/lang/String; = "HmacSHA256"

.field public static final HTTPC_UA:Ljava/lang/String; = "OTA Updater App"

.field public static final KERNEL_DL_PATH:Ljava/lang/String; = null

.field public static final KERNEL_DL_PATH_FILE:Ljava/io/File; = null

.field public static final KERNEL_FAILED_NOTIF_ID:I = 0xc9

.field public static final KERNEL_FLASH_NOTIF_ID:I = 0xca

.field public static final KERNEL_NOTIF_ID:I = 0xc8

.field public static final KERNEL_PULL_URL:Ljava/lang/String; = "device/info/kernel"

.field public static final KERNEL_SD_PATH:Ljava/lang/String; = "/OTA-Updater/download/kernel/"

.field public static final LOGIN_URL:Ljava/lang/String; = "device/user/login"

.field public static final LOGOUT_URL:Ljava/lang/String; = "device/user/logout"

.field public static final LOG_TAG:Ljava/lang/String; = "OTA::"

.field public static final MIN_PING_TIME:J = 0x240c8400L

.field public static final OAUTH_CLIENT_ID:Ljava/lang/String; = "1068482628480-jsufug7klk4b4ab2v6f83dtp5q38k74t.apps.googleusercontent.com"

.field public static final OTA_FEATURE_KEY:Ljava/lang/String; = "com.unityota.ota_feature"

.field public static final PING_URL:Ljava/lang/String; = "device/ping"

.field private static final PREFS_NAME:Ljava/lang/String; = "prefs"

.field public static final PROKEY_SKU:Ljava/lang/String; = "prokey"

.field public static final ROM_DL_PATH:Ljava/lang/String; = null

.field public static final ROM_DL_PATH_FILE:Ljava/io/File; = null

.field public static final ROM_FAILED_NOTIF_ID:I = 0x65

.field public static final ROM_FLASH_NOTIF_ID:I = 0x66

.field public static final ROM_NOTIF_ID:I = 0x64

.field public static final ROM_PULL_URL:Ljava/lang/String; = "device/info/rom"

.field public static final ROM_SD_PATH:Ljava/lang/String; = "/OTA-Updater/download/ROM/"

.field public static final SITE_BASE_URL:Ljava/lang/String; = "https://www.otaupdatecenter.pro/"

.field public static final WEB_FEEDBACK_URL:Ljava/lang/String; = "contact-us"

.field private static instance:Lcom/unityota/utils/Config;


# instance fields
.field private final PREFS:Landroid/content/SharedPreferences;

.field private autoDl:Z

.field private curDevice:Ljava/lang/String;

.field private curKernelID:Ljava/lang/String;

.field private curRomID:Ljava/lang/String;

.field private curVersion:I

.field private gcmRegVersionOverride:Z

.field private gcmRegistrationId:Ljava/lang/String;

.field private hmacKey:Ljava/lang/String;

.field private ignoredDataWarn:Z

.field private ignoredUnsupportedWarn:Z

.field private ignoredWifiWarn:Z

.field private kernelDownloadID:J

.field private keyPurchaseToken:Ljava/lang/String;

.field private lastDevice:Ljava/lang/String;

.field private lastKernelID:Ljava/lang/String;

.field private lastPingDate:Ljava/util/Date;

.field private lastRomID:Ljava/lang/String;

.field private lastVersion:I

.field private redeemCode:Ljava/lang/String;

.field private romDownloadID:J

.field private showNotif:Z

.field private storedKernelUpdate:Lcom/unityota/utils/KernelInfo;

.field private storedRomUpdate:Lcom/unityota/utils/RomInfo;

.field private username:Ljava/lang/String;

.field private wifiOnlyDl:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/unityota/utils/Config;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/unityota/utils/Config;->$assertionsDisabled:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/unityota/utils/PropUtils;->getSystemSdPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/OTA-Updater/download/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unityota/utils/Config;->BASE_DL_PATH:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/unityota/utils/Config;->BASE_DL_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ROM/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unityota/utils/Config;->ROM_DL_PATH:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/unityota/utils/Config;->BASE_DL_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "kernel/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unityota/utils/Config;->KERNEL_DL_PATH:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/unityota/utils/Config;->BASE_DL_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/unityota/utils/Config;->DL_PATH_FILE:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/unityota/utils/Config;->ROM_DL_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/unityota/utils/Config;->ROM_DL_PATH_FILE:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/unityota/utils/Config;->KERNEL_DL_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/unityota/utils/Config;->KERNEL_DL_PATH_FILE:Ljava/io/File;

    sget-object v0, Lcom/unityota/utils/Config;->DL_PATH_FILE:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    sget-object v0, Lcom/unityota/utils/Config;->ROM_DL_PATH_FILE:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    sget-object v0, Lcom/unityota/utils/Config;->KERNEL_DL_PATH_FILE:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    const/4 v0, 0x0

    sput-object v0, Lcom/unityota/utils/Config;->instance:Lcom/unityota/utils/Config;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 6

    const-wide/16 v4, -0x1

    const/4 v3, 0x1

    const/4 v0, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/unityota/utils/Config;->gcmRegistrationId:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/unityota/utils/Config;->gcmRegVersionOverride:Z

    iput-object v1, p0, Lcom/unityota/utils/Config;->lastPingDate:Ljava/util/Date;

    iput-object v1, p0, Lcom/unityota/utils/Config;->keyPurchaseToken:Ljava/lang/String;

    iput-object v1, p0, Lcom/unityota/utils/Config;->redeemCode:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/unityota/utils/Config;->showNotif:Z

    iput-boolean v3, p0, Lcom/unityota/utils/Config;->wifiOnlyDl:Z

    iput-boolean v2, p0, Lcom/unityota/utils/Config;->autoDl:Z

    iput-boolean v2, p0, Lcom/unityota/utils/Config;->ignoredUnsupportedWarn:Z

    iput-boolean v2, p0, Lcom/unityota/utils/Config;->ignoredDataWarn:Z

    iput-boolean v2, p0, Lcom/unityota/utils/Config;->ignoredWifiWarn:Z

    iput v0, p0, Lcom/unityota/utils/Config;->lastVersion:I

    iput-object v1, p0, Lcom/unityota/utils/Config;->lastDevice:Ljava/lang/String;

    iput-object v1, p0, Lcom/unityota/utils/Config;->lastRomID:Ljava/lang/String;

    iput-object v1, p0, Lcom/unityota/utils/Config;->lastKernelID:Ljava/lang/String;

    iput v0, p0, Lcom/unityota/utils/Config;->curVersion:I

    iput-object v1, p0, Lcom/unityota/utils/Config;->curDevice:Ljava/lang/String;

    iput-object v1, p0, Lcom/unityota/utils/Config;->curRomID:Ljava/lang/String;

    iput-object v1, p0, Lcom/unityota/utils/Config;->curKernelID:Ljava/lang/String;

    iput-object v1, p0, Lcom/unityota/utils/Config;->storedRomUpdate:Lcom/unityota/utils/RomInfo;

    iput-object v1, p0, Lcom/unityota/utils/Config;->storedKernelUpdate:Lcom/unityota/utils/KernelInfo;

    iput-wide v4, p0, Lcom/unityota/utils/Config;->romDownloadID:J

    iput-wide v4, p0, Lcom/unityota/utils/Config;->kernelDownloadID:J

    iput-object v1, p0, Lcom/unityota/utils/Config;->username:Ljava/lang/String;

    iput-object v1, p0, Lcom/unityota/utils/Config;->hmacKey:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sget-boolean v0, Lcom/unityota/utils/Config;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    const-string v0, "prefs"

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/unityota/utils/Config;->PREFS:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/unityota/utils/Config;->PREFS:Landroid/content/SharedPreferences;

    const-string v2, "gcmRegistrationId"

    iget-object v3, p0, Lcom/unityota/utils/Config;->gcmRegistrationId:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unityota/utils/Config;->gcmRegistrationId:Ljava/lang/String;

    iget-object v0, p0, Lcom/unityota/utils/Config;->PREFS:Landroid/content/SharedPreferences;

    const-string v2, "lastPingDate"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/util/Date;

    iget-object v2, p0, Lcom/unityota/utils/Config;->PREFS:Landroid/content/SharedPreferences;

    const-string v3, "lastPingDate"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    :goto_0
    iput-object v0, p0, Lcom/unityota/utils/Config;->lastPingDate:Ljava/util/Date;

    iget-object v0, p0, Lcom/unityota/utils/Config;->PREFS:Landroid/content/SharedPreferences;

    const-string v2, "keyState"

    iget-object v3, p0, Lcom/unityota/utils/Config;->keyPurchaseToken:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unityota/utils/Config;->keyPurchaseToken:Ljava/lang/String;

    iget-object v0, p0, Lcom/unityota/utils/Config;->PREFS:Landroid/content/SharedPreferences;

    const-string v2, "redeemCode"

    iget-object v3, p0, Lcom/unityota/utils/Config;->redeemCode:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unityota/utils/Config;->redeemCode:Ljava/lang/String;

    iget-object v0, p0, Lcom/unityota/utils/Config;->PREFS:Landroid/content/SharedPreferences;

    const-string v2, "username"

    iget-object v3, p0, Lcom/unityota/utils/Config;->username:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unityota/utils/Config;->username:Ljava/lang/String;

    iget-object v0, p0, Lcom/unityota/utils/Config;->PREFS:Landroid/content/SharedPreferences;

    const-string v2, "hmacKey"

    iget-object v3, p0, Lcom/unityota/utils/Config;->hmacKey:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unityota/utils/Config;->hmacKey:Ljava/lang/String;

    iget-object v0, p0, Lcom/unityota/utils/Config;->PREFS:Landroid/content/SharedPreferences;

    const-string v2, "showNotif"

    iget-boolean v3, p0, Lcom/unityota/utils/Config;->showNotif:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/unityota/utils/Config;->showNotif:Z

    iget-object v0, p0, Lcom/unityota/utils/Config;->PREFS:Landroid/content/SharedPreferences;

    const-string v2, "wifiOnlyDl"

    iget-boolean v3, p0, Lcom/unityota/utils/Config;->wifiOnlyDl:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/unityota/utils/Config;->wifiOnlyDl:Z

    iget-object v0, p0, Lcom/unityota/utils/Config;->PREFS:Landroid/content/SharedPreferences;

    const-string v2, "autoDl"

    iget-boolean v3, p0, Lcom/unityota/utils/Config;->autoDl:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/unityota/utils/Config;->autoDl:Z

    iget-object v0, p0, Lcom/unityota/utils/Config;->PREFS:Landroid/content/SharedPreferences;

    const-string v2, "ignoredUnsupportedWarn"

    iget-boolean v3, p0, Lcom/unityota/utils/Config;->ignoredUnsupportedWarn:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/unityota/utils/Config;->ignoredUnsupportedWarn:Z

    iget-object v0, p0, Lcom/unityota/utils/Config;->PREFS:Landroid/content/SharedPreferences;

    const-string v2, "ignoredDataWarn"

    iget-boolean v3, p0, Lcom/unityota/utils/Config;->ignoredDataWarn:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/unityota/utils/Config;->ignoredDataWarn:Z

    iget-object v0, p0, Lcom/unityota/utils/Config;->PREFS:Landroid/content/SharedPreferences;

    const-string v2, "ignoredWifiWarn"

    iget-boolean v3, p0, Lcom/unityota/utils/Config;->ignoredWifiWarn:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/unityota/utils/Config;->ignoredWifiWarn:Z

    iget-object v0, p0, Lcom/unityota/utils/Config;->PREFS:Landroid/content/SharedPreferences;

    const-string v2, "rom_info_name"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/unityota/utils/PropUtils;->isRomOtaEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/unityota/utils/RomInfo;->FACTORY:Lcom/unityota/utils/BaseInfo$InfoFactory;

    iget-object v2, p0, Lcom/unityota/utils/Config;->PREFS:Landroid/content/SharedPreferences;

    invoke-virtual {v0, v2}, Lcom/unityota/utils/BaseInfo$InfoFactory;->fromSharedPrefs(Landroid/content/SharedPreferences;)Lcom/unityota/utils/BaseInfo;

    move-result-object v0

    check-cast v0, Lcom/unityota/utils/RomInfo;

    iput-object v0, p0, Lcom/unityota/utils/Config;->storedRomUpdate:Lcom/unityota/utils/RomInfo;

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/unityota/utils/Config;->PREFS:Landroid/content/SharedPreferences;

    const-string v2, "kernel_info_name"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/unityota/utils/PropUtils;->isKernelOtaEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/unityota/utils/KernelInfo;->FACTORY:Lcom/unityota/utils/BaseInfo$InfoFactory;

    iget-object v2, p0, Lcom/unityota/utils/Config;->PREFS:Landroid/content/SharedPreferences;

    invoke-virtual {v0, v2}, Lcom/unityota/utils/BaseInfo$InfoFactory;->fromSharedPrefs(Landroid/content/SharedPreferences;)Lcom/unityota/utils/BaseInfo;

    move-result-object v0

    check-cast v0, Lcom/unityota/utils/KernelInfo;

    iput-object v0, p0, Lcom/unityota/utils/Config;->storedKernelUpdate:Lcom/unityota/utils/KernelInfo;

    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/unityota/utils/Config;->PREFS:Landroid/content/SharedPreferences;

    const-string v2, "version"

    iget v3, p0, Lcom/unityota/utils/Config;->lastVersion:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/unityota/utils/Config;->lastVersion:I

    iget-object v0, p0, Lcom/unityota/utils/Config;->PREFS:Landroid/content/SharedPreferences;

    const-string v2, "device"

    iget-object v3, p0, Lcom/unityota/utils/Config;->lastDevice:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unityota/utils/Config;->lastDevice:Ljava/lang/String;

    iget-object v0, p0, Lcom/unityota/utils/Config;->PREFS:Landroid/content/SharedPreferences;

    const-string v2, "rom_id"

    iget-object v3, p0, Lcom/unityota/utils/Config;->lastRomID:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unityota/utils/Config;->lastRomID:Ljava/lang/String;

    iget-object v0, p0, Lcom/unityota/utils/Config;->PREFS:Landroid/content/SharedPreferences;

    const-string v2, "kernel_id"

    iget-object v3, p0, Lcom/unityota/utils/Config;->lastKernelID:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unityota/utils/Config;->lastKernelID:Ljava/lang/String;

    invoke-static {p1}, Lcom/unityota/utils/Utils;->getAppVersion(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/unityota/utils/Config;->curVersion:I

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unityota/utils/Config;->curDevice:Ljava/lang/String;

    invoke-static {}, Lcom/unityota/utils/PropUtils;->isRomOtaEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/unityota/utils/PropUtils;->getRomOtaID()Ljava/lang/String;

    move-result-object v0

    :goto_3
    iput-object v0, p0, Lcom/unityota/utils/Config;->curRomID:Ljava/lang/String;

    invoke-static {}, Lcom/unityota/utils/PropUtils;->isKernelOtaEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/unityota/utils/PropUtils;->getKernelOtaID()Ljava/lang/String;

    move-result-object v1

    :cond_3
    iput-object v1, p0, Lcom/unityota/utils/Config;->curKernelID:Ljava/lang/String;

    iget-object v0, p0, Lcom/unityota/utils/Config;->PREFS:Landroid/content/SharedPreferences;

    const-string v1, "romDownloadID"

    iget-wide v2, p0, Lcom/unityota/utils/Config;->romDownloadID:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/unityota/utils/Config;->romDownloadID:J

    iget-object v0, p0, Lcom/unityota/utils/Config;->PREFS:Landroid/content/SharedPreferences;

    const-string v1, "kernelDownloadID"

    iget-wide v2, p0, Lcom/unityota/utils/Config;->kernelDownloadID:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/unityota/utils/Config;->kernelDownloadID:J

    return-void

    :cond_4
    move-object v0, v1

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/unityota/utils/Config;->clearStoredRomUpdate()V

    goto/16 :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/unityota/utils/Config;->clearStoredKernelUpdate()V

    goto :goto_2

    :cond_7
    move-object v0, v1

    goto :goto_3
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/unityota/utils/Config;
    .locals 2

    const-class v1, Lcom/unityota/utils/Config;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/unityota/utils/Config;->instance:Lcom/unityota/utils/Config;

    if-nez v0, :cond_0

    new-instance v0, Lcom/unityota/utils/Config;

    invoke-direct {v0, p0}, Lcom/unityota/utils/Config;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/unityota/utils/Config;->instance:Lcom/unityota/utils/Config;

    :cond_0
    sget-object v0, Lcom/unityota/utils/Config;->instance:Lcom/unityota/utils/Config;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private putBoolean(Ljava/lang/String;Z)V
    .locals 3

    iget-object v2, p0, Lcom/unityota/utils/Config;->PREFS:Landroid/content/SharedPreferences;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/unityota/utils/Config;->PREFS:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private putLong(Ljava/lang/String;J)V
    .locals 3

    iget-object v2, p0, Lcom/unityota/utils/Config;->PREFS:Landroid/content/SharedPreferences;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/unityota/utils/Config;->PREFS:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public clearDownloadingKernel()V
    .locals 4

    const-wide/16 v2, -0x1

    iget-wide v0, p0, Lcom/unityota/utils/Config;->romDownloadID:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2, v3}, Lcom/unityota/utils/Config;->storeKernelDownloadID(J)V

    :cond_0
    return-void
.end method

.method public clearDownloadingRom()V
    .locals 4

    const-wide/16 v2, -0x1

    iget-wide v0, p0, Lcom/unityota/utils/Config;->romDownloadID:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2, v3}, Lcom/unityota/utils/Config;->storeRomDownloadID(J)V

    :cond_0
    return-void
.end method

.method public clearIgnored()V
    .locals 4

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/unityota/utils/Config;->ignoredUnsupportedWarn:Z

    iput-boolean v1, p0, Lcom/unityota/utils/Config;->ignoredDataWarn:Z

    iput-boolean v1, p0, Lcom/unityota/utils/Config;->ignoredWifiWarn:Z

    iget-object v2, p0, Lcom/unityota/utils/Config;->PREFS:Landroid/content/SharedPreferences;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/unityota/utils/Config;->PREFS:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ignoredUnsupportedWarn"

    iget-boolean v3, p0, Lcom/unityota/utils/Config;->ignoredUnsupportedWarn:Z

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v1, "ignoredDataWarn"

    iget-boolean v3, p0, Lcom/unityota/utils/Config;->ignoredDataWarn:Z

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v1, "ignoredWifiWarn"

    iget-boolean v3, p0, Lcom/unityota/utils/Config;->ignoredWifiWarn:Z

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public clearLogin()V
    .locals 3

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/unityota/utils/Config;->username:Ljava/lang/String;

    iput-object v1, p0, Lcom/unityota/utils/Config;->hmacKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/unityota/utils/Config;->PREFS:Landroid/content/SharedPreferences;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/unityota/utils/Config;->PREFS:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "username"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "hmacKey"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public clearStoredKernelUpdate()V
    .locals 3

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/unityota/utils/Config;->storedKernelUpdate:Lcom/unityota/utils/KernelInfo;

    iget-object v2, p0, Lcom/unityota/utils/Config;->PREFS:Landroid/content/SharedPreferences;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/unityota/utils/Config;->PREFS:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/unityota/utils/KernelInfo;->FACTORY:Lcom/unityota/utils/BaseInfo$InfoFactory;

    invoke-virtual {v1, v0}, Lcom/unityota/utils/BaseInfo$InfoFactory;->clearFromSharedPrefs(Landroid/content/SharedPreferences$Editor;)V

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public clearStoredRomUpdate()V
    .locals 3

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/unityota/utils/Config;->storedRomUpdate:Lcom/unityota/utils/RomInfo;

    iget-object v2, p0, Lcom/unityota/utils/Config;->PREFS:Landroid/content/SharedPreferences;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/unityota/utils/Config;->PREFS:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/unityota/utils/RomInfo;->FACTORY:Lcom/unityota/utils/BaseInfo$InfoFactory;

    invoke-virtual {v1, v0}, Lcom/unityota/utils/BaseInfo$InfoFactory;->clearFromSharedPrefs(Landroid/content/SharedPreferences$Editor;)V

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public clearStoredUpdate(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/unityota/utils/BaseInfo;",
            ">;)V"
        }
    .end annotation

    const-class v0, Lcom/unityota/utils/RomInfo;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/unityota/utils/Config;->clearStoredRomUpdate()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-class v0, Lcom/unityota/utils/KernelInfo;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/unityota/utils/Config;->clearStoredKernelUpdate()V

    goto :goto_0
.end method

.method public getAutoDlState()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unityota/utils/Config;->autoDl:Z

    return v0
.end method

.method public getGcmRegistrationId()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/unityota/utils/Config;->gcmRegistrationId:Ljava/lang/String;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget v1, p0, Lcom/unityota/utils/Config;->lastVersion:I

    iget v2, p0, Lcom/unityota/utils/Config;->curVersion:I

    if-eq v1, v2, :cond_2

    iget-boolean v1, p0, Lcom/unityota/utils/Config;->gcmRegVersionOverride:Z

    if-eqz v1, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/unityota/utils/Config;->gcmRegistrationId:Ljava/lang/String;

    goto :goto_0
.end method

.method public getHmacKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unityota/utils/Config;->hmacKey:Ljava/lang/String;

    return-object v0
.end method

.method public getIgnoredDataWarn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unityota/utils/Config;->ignoredDataWarn:Z

    return v0
.end method

.method public getIgnoredUnsupportedWarn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unityota/utils/Config;->ignoredUnsupportedWarn:Z

    return v0
.end method

.method public getIgnoredWifiWarn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unityota/utils/Config;->ignoredWifiWarn:Z

    return v0
.end method

.method public getKernelDownloadID()J
    .locals 2

    iget-wide v0, p0, Lcom/unityota/utils/Config;->kernelDownloadID:J

    return-wide v0
.end method

.method public getKeyPurchaseToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unityota/utils/Config;->keyPurchaseToken:Ljava/lang/String;

    return-object v0
.end method

.method public getRedeemCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unityota/utils/Config;->redeemCode:Ljava/lang/String;

    return-object v0
.end method

.method public getRomDownloadID()J
    .locals 2

    iget-wide v0, p0, Lcom/unityota/utils/Config;->romDownloadID:J

    return-wide v0
.end method

.method public getShowNotif()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unityota/utils/Config;->showNotif:Z

    return v0
.end method

.method public getStoredKernelUpdate()Lcom/unityota/utils/KernelInfo;
    .locals 1

    iget-object v0, p0, Lcom/unityota/utils/Config;->storedKernelUpdate:Lcom/unityota/utils/KernelInfo;

    return-object v0
.end method

.method public getStoredRomUpdate()Lcom/unityota/utils/RomInfo;
    .locals 1

    iget-object v0, p0, Lcom/unityota/utils/Config;->storedRomUpdate:Lcom/unityota/utils/RomInfo;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unityota/utils/Config;->username:Ljava/lang/String;

    return-object v0
.end method

.method public getWifiOnlyDl()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unityota/utils/Config;->wifiOnlyDl:Z

    return v0
.end method

.method public hasProKey()Z
    .locals 1

    iget-object v0, p0, Lcom/unityota/utils/Config;->keyPurchaseToken:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unityota/utils/Config;->redeemCode:Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasStoredKernelUpdate()Z
    .locals 1

    iget-object v0, p0, Lcom/unityota/utils/Config;->storedKernelUpdate:Lcom/unityota/utils/KernelInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasStoredRomUpdate()Z
    .locals 1

    iget-object v0, p0, Lcom/unityota/utils/Config;->storedRomUpdate:Lcom/unityota/utils/RomInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDownloadingKernel()Z
    .locals 4

    iget-wide v0, p0, Lcom/unityota/utils/Config;->kernelDownloadID:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDownloadingRom()Z
    .locals 4

    iget-wide v0, p0, Lcom/unityota/utils/Config;->romDownloadID:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isKeyRedeemCode()Z
    .locals 1

    iget-object v0, p0, Lcom/unityota/utils/Config;->redeemCode:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUserLoggedIn()Z
    .locals 1

    iget-object v0, p0, Lcom/unityota/utils/Config;->username:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unityota/utils/Config;->hmacKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public needPing()Z
    .locals 4

    iget-object v0, p0, Lcom/unityota/utils/Config;->lastPingDate:Ljava/util/Date;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/unityota/utils/Config;->lastPingDate:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x240c8400

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAutoDlState(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/unityota/utils/Config;->autoDl:Z

    const-string v0, "autoDl"

    invoke-direct {p0, v0, p1}, Lcom/unityota/utils/Config;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setGcmRegistrationId(Ljava/lang/String;)V
    .locals 4

    iput-object p1, p0, Lcom/unityota/utils/Config;->gcmRegistrationId:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/unityota/utils/Config;->gcmRegVersionOverride:Z

    iget-object v2, p0, Lcom/unityota/utils/Config;->PREFS:Landroid/content/SharedPreferences;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/unityota/utils/Config;->PREFS:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "gcmRegistrationId"

    iget-object v3, p0, Lcom/unityota/utils/Config;->gcmRegistrationId:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setIgnoredDataWarn(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/unityota/utils/Config;->ignoredDataWarn:Z

    const-string v0, "ignoredDataWarn"

    invoke-direct {p0, v0, p1}, Lcom/unityota/utils/Config;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setIgnoredUnsupportedWarn(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/unityota/utils/Config;->ignoredUnsupportedWarn:Z

    const-string v0, "ignoredUnsupportedWarn"

    invoke-direct {p0, v0, p1}, Lcom/unityota/utils/Config;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setIgnoredWifiWarn(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/unityota/utils/Config;->ignoredWifiWarn:Z

    const-string v0, "ignoredWifiWarn"

    invoke-direct {p0, v0, p1}, Lcom/unityota/utils/Config;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setKeyPurchaseToken(Ljava/lang/String;)V
    .locals 3

    iput-object p1, p0, Lcom/unityota/utils/Config;->keyPurchaseToken:Ljava/lang/String;

    iget-object v2, p0, Lcom/unityota/utils/Config;->PREFS:Landroid/content/SharedPreferences;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/unityota/utils/Config;->PREFS:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "keyState"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setPingedCurrent()V
    .locals 3

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/unityota/utils/Config;->lastPingDate:Ljava/util/Date;

    const-string v0, "lastPingDate"

    iget-object v1, p0, Lcom/unityota/utils/Config;->lastPingDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lcom/unityota/utils/Config;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public setRedeemCode(Ljava/lang/String;)V
    .locals 3

    iput-object p1, p0, Lcom/unityota/utils/Config;->redeemCode:Ljava/lang/String;

    iget-object v2, p0, Lcom/unityota/utils/Config;->PREFS:Landroid/content/SharedPreferences;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/unityota/utils/Config;->PREFS:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "redeemCode"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setShowNotif(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/unityota/utils/Config;->showNotif:Z

    const-string v0, "showNotif"

    invoke-direct {p0, v0, p1}, Lcom/unityota/utils/Config;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setValuesToCurrent()V
    .locals 4

    iget-object v2, p0, Lcom/unityota/utils/Config;->PREFS:Landroid/content/SharedPreferences;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/unityota/utils/Config;->PREFS:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "version"

    iget v3, p0, Lcom/unityota/utils/Config;->curVersion:I

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "device"

    iget-object v3, p0, Lcom/unityota/utils/Config;->curDevice:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "rom_id"

    iget-object v3, p0, Lcom/unityota/utils/Config;->curRomID:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "kernel_id"

    iget-object v3, p0, Lcom/unityota/utils/Config;->curKernelID:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setWifiOnlyDl(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/unityota/utils/Config;->wifiOnlyDl:Z

    const-string v0, "wifiOnlyDl"

    invoke-direct {p0, v0, p1}, Lcom/unityota/utils/Config;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public storeDownloadID(Lcom/unityota/utils/BaseInfo;J)V
    .locals 1

    instance-of v0, p1, Lcom/unityota/utils/RomInfo;

    if-eqz v0, :cond_1

    invoke-virtual {p0, p2, p3}, Lcom/unityota/utils/Config;->storeRomDownloadID(J)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p1, Lcom/unityota/utils/KernelInfo;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2, p3}, Lcom/unityota/utils/Config;->storeKernelDownloadID(J)V

    goto :goto_0
.end method

.method public storeKernelDownloadID(J)V
    .locals 3

    iput-wide p1, p0, Lcom/unityota/utils/Config;->kernelDownloadID:J

    const-string v0, "kernelDownloadID"

    iget-wide v1, p0, Lcom/unityota/utils/Config;->kernelDownloadID:J

    invoke-direct {p0, v0, v1, v2}, Lcom/unityota/utils/Config;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public storeKernelUpdate(Lcom/unityota/utils/KernelInfo;)V
    .locals 3

    iput-object p1, p0, Lcom/unityota/utils/Config;->storedKernelUpdate:Lcom/unityota/utils/KernelInfo;

    iget-object v2, p0, Lcom/unityota/utils/Config;->PREFS:Landroid/content/SharedPreferences;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/unityota/utils/Config;->PREFS:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/unityota/utils/KernelInfo;->putToSharedPrefs(Landroid/content/SharedPreferences$Editor;)V

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public storeLogin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iput-object p1, p0, Lcom/unityota/utils/Config;->username:Ljava/lang/String;

    iput-object p2, p0, Lcom/unityota/utils/Config;->hmacKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/unityota/utils/Config;->PREFS:Landroid/content/SharedPreferences;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/unityota/utils/Config;->PREFS:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "username"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "hmacKey"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public storeRomDownloadID(J)V
    .locals 3

    iput-wide p1, p0, Lcom/unityota/utils/Config;->romDownloadID:J

    const-string v0, "romDownloadID"

    iget-wide v1, p0, Lcom/unityota/utils/Config;->romDownloadID:J

    invoke-direct {p0, v0, v1, v2}, Lcom/unityota/utils/Config;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public storeRomUpdate(Lcom/unityota/utils/RomInfo;)V
    .locals 3

    iput-object p1, p0, Lcom/unityota/utils/Config;->storedRomUpdate:Lcom/unityota/utils/RomInfo;

    iget-object v2, p0, Lcom/unityota/utils/Config;->PREFS:Landroid/content/SharedPreferences;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/unityota/utils/Config;->PREFS:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/unityota/utils/RomInfo;->putToSharedPrefs(Landroid/content/SharedPreferences$Editor;)V

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public storeUpdate(Lcom/unityota/utils/BaseInfo;)V
    .locals 1

    instance-of v0, p1, Lcom/unityota/utils/RomInfo;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/unityota/utils/RomInfo;

    invoke-virtual {p0, p1}, Lcom/unityota/utils/Config;->storeRomUpdate(Lcom/unityota/utils/RomInfo;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p1, Lcom/unityota/utils/KernelInfo;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/unityota/utils/KernelInfo;

    invoke-virtual {p0, p1}, Lcom/unityota/utils/Config;->storeKernelUpdate(Lcom/unityota/utils/KernelInfo;)V

    goto :goto_0
.end method

.method public upToDate()Z
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/unityota/utils/Config;->lastDevice:Ljava/lang/String;

    if-nez v4, :cond_0

    :goto_0
    return v3

    :cond_0
    const/4 v1, 0x1

    invoke-static {}, Lcom/unityota/utils/PropUtils;->isRomOtaEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/unityota/utils/Config;->lastRomID:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/unityota/utils/Config;->curRomID:Ljava/lang/String;

    iget-object v5, p0, Lcom/unityota/utils/Config;->lastRomID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v1, v2

    :cond_1
    :goto_1
    const/4 v0, 0x1

    invoke-static {}, Lcom/unityota/utils/PropUtils;->isKernelOtaEnabled()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/unityota/utils/Config;->lastKernelID:Ljava/lang/String;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/unityota/utils/Config;->curKernelID:Ljava/lang/String;

    iget-object v5, p0, Lcom/unityota/utils/Config;->lastKernelID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v0, v2

    :cond_2
    :goto_2
    iget v4, p0, Lcom/unityota/utils/Config;->curVersion:I

    iget v5, p0, Lcom/unityota/utils/Config;->lastVersion:I

    if-ne v4, v5, :cond_7

    iget-object v4, p0, Lcom/unityota/utils/Config;->curDevice:Ljava/lang/String;

    iget-object v5, p0, Lcom/unityota/utils/Config;->lastDevice:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    if-eqz v1, :cond_7

    if-eqz v0, :cond_7

    :goto_3
    move v3, v2

    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lcom/unityota/utils/Config;->lastRomID:Ljava/lang/String;

    if-eqz v4, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_5
    move v0, v3

    goto :goto_2

    :cond_6
    iget-object v4, p0, Lcom/unityota/utils/Config;->lastKernelID:Ljava/lang/String;

    if-eqz v4, :cond_2

    const/4 v0, 0x0

    goto :goto_2

    :cond_7
    move v2, v3

    goto :goto_3
.end method
