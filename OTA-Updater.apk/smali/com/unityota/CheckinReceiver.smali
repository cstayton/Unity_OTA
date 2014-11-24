.class public Lcom/unityota/CheckinReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CheckinReceiver.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/unityota/CheckinReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/unityota/CheckinReceiver;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static setDailyAlarm(Landroid/content/Context;)V
    .locals 8

    const-wide/32 v4, 0x5265c00

    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    new-instance v7, Landroid/content/Intent;

    const-class v1, Lcom/unityota/CheckinReceiver;

    invoke-direct {v7, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x0

    const/high16 v2, 0x1000

    invoke-static {p0, v1, v7, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const/4 v1, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v4

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    const/4 v8, 0x1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/unityota/utils/Config;->getInstance(Landroid/content/Context;)Lcom/unityota/utils/Config;

    move-result-object v0

    sget-boolean v6, Lcom/unityota/CheckinReceiver;->$assertionsDisabled:Z

    if-nez v6, :cond_0

    if-nez v1, :cond_0

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    :cond_0
    sget-boolean v6, Lcom/unityota/CheckinReceiver;->$assertionsDisabled:Z

    if-nez v6, :cond_1

    if-nez v0, :cond_1

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    :cond_1
    const-string v6, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v0}, Lcom/unityota/utils/Config;->hasStoredRomUpdate()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-static {}, Lcom/unityota/utils/PropUtils;->isRomOtaEnabled()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {v0}, Lcom/unityota/utils/Config;->getStoredRomUpdate()Lcom/unityota/utils/RomInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/unityota/utils/RomInfo;->isUpdate()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v0}, Lcom/unityota/utils/Config;->getShowNotif()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v2, v1}, Lcom/unityota/utils/RomInfo;->showUpdateNotif(Landroid/content/Context;)V

    const-string v6, "OTA::Receiver"

    const-string v7, "Found stored rom update"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {v0}, Lcom/unityota/utils/Config;->hasStoredKernelUpdate()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-static {}, Lcom/unityota/utils/PropUtils;->isKernelOtaEnabled()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-virtual {v0}, Lcom/unityota/utils/Config;->getStoredKernelUpdate()Lcom/unityota/utils/KernelInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/unityota/utils/KernelInfo;->isUpdate()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-virtual {v0}, Lcom/unityota/utils/Config;->getShowNotif()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-virtual {v2, v1}, Lcom/unityota/utils/KernelInfo;->showUpdateNotif(Landroid/content/Context;)V

    const-string v6, "OTA::Receiver"

    const-string v7, "Found stored kernel update"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-static {v1}, Lcom/unityota/CheckinReceiver;->setDailyAlarm(Landroid/content/Context;)V

    :cond_2
    invoke-static {v1}, Lcom/unityota/utils/Utils;->updateDeviceRegistration(Landroid/content/Context;)V

    invoke-static {v1}, Lcom/unityota/utils/Utils;->checkPlayServices(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "OTA::Receiver"

    const-string v7, "No market, using pull method"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "power"

    invoke-virtual {v1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    invoke-static {}, Lcom/unityota/utils/PropUtils;->isRomOtaEnabled()Z

    move-result v6

    if-eqz v6, :cond_3

    const-class v6, Lcom/unityota/CheckinReceiver;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v8, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->acquire()V

    new-instance v6, Lcom/unityota/CheckinReceiver$1;

    const-class v7, Lcom/unityota/utils/RomInfo;

    invoke-direct {v6, p0, v7, v1, v5}, Lcom/unityota/CheckinReceiver$1;-><init>(Lcom/unityota/CheckinReceiver;Ljava/lang/Class;Landroid/content/Context;Landroid/os/PowerManager$WakeLock;)V

    invoke-static {v1, v6}, Lcom/unityota/utils/APIUtils;->fetchRomInfo(Landroid/content/Context;Lcom/unityota/utils/APIUtils$APICallback;)V

    :cond_3
    invoke-static {}, Lcom/unityota/utils/PropUtils;->isKernelOtaEnabled()Z

    move-result v6

    if-eqz v6, :cond_4

    const-class v6, Lcom/unityota/CheckinReceiver;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v8, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    new-instance v6, Lcom/unityota/CheckinReceiver$2;

    const-class v7, Lcom/unityota/utils/KernelInfo;

    invoke-direct {v6, p0, v7, v1, v3}, Lcom/unityota/CheckinReceiver$2;-><init>(Lcom/unityota/CheckinReceiver;Ljava/lang/Class;Landroid/content/Context;Landroid/os/PowerManager$WakeLock;)V

    invoke-static {v1, v6}, Lcom/unityota/utils/APIUtils;->fetchKernelInfo(Landroid/content/Context;Lcom/unityota/utils/APIUtils$APICallback;)V

    :cond_4
    return-void

    :cond_5
    const-string v6, "OTA::Receiver"

    const-string v7, "Found stored rom update, notif not shown"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    const-string v6, "OTA::Receiver"

    const-string v7, "Found invalid stored rom update"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/unityota/utils/Config;->clearStoredRomUpdate()V

    sget-object v6, Lcom/unityota/utils/RomInfo;->FACTORY:Lcom/unityota/utils/BaseInfo$InfoFactory;

    invoke-virtual {v6, v1}, Lcom/unityota/utils/BaseInfo$InfoFactory;->clearUpdateNotif(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_7
    const-string v6, "OTA::Receiver"

    const-string v7, "Found stored rom update, not OTA-rom"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/unityota/utils/Config;->clearStoredRomUpdate()V

    goto/16 :goto_0

    :cond_8
    const-string v6, "OTA::Receiver"

    const-string v7, "No stored rom update"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_9
    const-string v6, "OTA::Receiver"

    const-string v7, "Found stored kernel update, notif not shown"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_a
    const-string v6, "OTA::Receiver"

    const-string v7, "Found invalid stored kernel update"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/unityota/utils/Config;->clearStoredKernelUpdate()V

    sget-object v6, Lcom/unityota/utils/KernelInfo;->FACTORY:Lcom/unityota/utils/BaseInfo$InfoFactory;

    invoke-virtual {v6, v1}, Lcom/unityota/utils/BaseInfo$InfoFactory;->clearUpdateNotif(Landroid/content/Context;)V

    goto/16 :goto_1

    :cond_b
    const-string v6, "OTA::Receiver"

    const-string v7, "Found stored kernel update, not OTA-kernel"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/unityota/utils/Config;->clearStoredKernelUpdate()V

    goto/16 :goto_1

    :cond_c
    const-string v6, "OTA::Receiver"

    const-string v7, "No stored kernel update"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method
