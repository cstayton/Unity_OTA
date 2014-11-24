.class public Lcom/unityota/GCMIntentService;
.super Landroid/app/IntentService;
.source "GCMIntentService.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "GCMIntentService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 8

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {p0}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->getMessageType(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/unityota/GCMIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/unityota/utils/Config;->getInstance(Landroid/content/Context;)Lcom/unityota/utils/Config;

    move-result-object v0

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "gcm"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "rom"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-static {}, Lcom/unityota/utils/PropUtils;->isRomOtaEnabled()Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v6, Lcom/unityota/utils/RomInfo;->FACTORY:Lcom/unityota/utils/BaseInfo$InfoFactory;

    invoke-virtual {v6, v2}, Lcom/unityota/utils/BaseInfo$InfoFactory;->fromBundle(Landroid/os/Bundle;)Lcom/unityota/utils/BaseInfo;

    move-result-object v4

    check-cast v4, Lcom/unityota/utils/RomInfo;

    invoke-virtual {v4}, Lcom/unityota/utils/RomInfo;->isUpdate()Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "OTA::GCM"

    const-string v7, "got rom GCM message, not update"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/unityota/utils/Config;->clearStoredRomUpdate()V

    sget-object v6, Lcom/unityota/utils/RomInfo;->FACTORY:Lcom/unityota/utils/BaseInfo$InfoFactory;

    invoke-virtual {v6, v1}, Lcom/unityota/utils/BaseInfo$InfoFactory;->clearUpdateNotif(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v4}, Lcom/unityota/utils/Config;->storeRomUpdate(Lcom/unityota/utils/RomInfo;)V

    invoke-virtual {v0}, Lcom/unityota/utils/Config;->getShowNotif()Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "OTA::GCM"

    const-string v7, "got rom GCM message"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4, v1}, Lcom/unityota/utils/RomInfo;->showUpdateNotif(Landroid/content/Context;)V

    :goto_1
    invoke-virtual {v0}, Lcom/unityota/utils/Config;->hasProKey()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v0}, Lcom/unityota/utils/Config;->getAutoDlState()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v4, v1}, Lcom/unityota/utils/RomInfo;->startDownload(Landroid/content/Context;)J

    :cond_3
    :goto_2
    invoke-static {p1}, Lcom/unityota/GCMBroadcastReceiver;->completeWakefulIntent(Landroid/content/Intent;)Z

    goto :goto_0

    :cond_4
    const-string v6, "OTA::GCM"

    const-string v7, "got rom GCM message, notif not shown"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    const-string v6, "kernel"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-static {}, Lcom/unityota/utils/PropUtils;->isKernelOtaEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    sget-object v6, Lcom/unityota/utils/KernelInfo;->FACTORY:Lcom/unityota/utils/BaseInfo$InfoFactory;

    invoke-virtual {v6, v2}, Lcom/unityota/utils/BaseInfo$InfoFactory;->fromBundle(Landroid/os/Bundle;)Lcom/unityota/utils/BaseInfo;

    move-result-object v4

    check-cast v4, Lcom/unityota/utils/KernelInfo;

    invoke-virtual {v4}, Lcom/unityota/utils/KernelInfo;->isUpdate()Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "OTA::GCM"

    const-string v7, "got kernel GCM message, not update"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/unityota/utils/Config;->clearStoredKernelUpdate()V

    sget-object v6, Lcom/unityota/utils/KernelInfo;->FACTORY:Lcom/unityota/utils/BaseInfo$InfoFactory;

    invoke-virtual {v6, v1}, Lcom/unityota/utils/BaseInfo$InfoFactory;->clearUpdateNotif(Landroid/content/Context;)V

    goto :goto_0

    :cond_6
    invoke-virtual {v0, v4}, Lcom/unityota/utils/Config;->storeKernelUpdate(Lcom/unityota/utils/KernelInfo;)V

    invoke-virtual {v0}, Lcom/unityota/utils/Config;->getShowNotif()Z

    move-result v6

    if-eqz v6, :cond_7

    const-string v6, "OTA::GCM"

    const-string v7, "got kernel GCM message"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4, v1}, Lcom/unityota/utils/KernelInfo;->showUpdateNotif(Landroid/content/Context;)V

    :goto_3
    invoke-virtual {v0}, Lcom/unityota/utils/Config;->hasProKey()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v0}, Lcom/unityota/utils/Config;->getAutoDlState()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v4, v1}, Lcom/unityota/utils/KernelInfo;->startDownload(Landroid/content/Context;)J

    goto :goto_2

    :cond_7
    const-string v6, "OTA::GCM"

    const-string v7, "got kernel GCM message, notif not shown"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_8
    const-string v6, "OTA::GCM"

    const-string v7, "got malformed GCM message"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
