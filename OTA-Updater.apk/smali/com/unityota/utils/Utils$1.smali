.class final Lcom/unityota/utils/Utils$1;
.super Lcom/unityota/utils/APIUtils$APIAdapter;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unityota/utils/Utils;->updateDeviceRegistration(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$cfg:Lcom/unityota/utils/Config;

.field final synthetic val$ctx:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/unityota/utils/Config;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/unityota/utils/Utils$1;->val$cfg:Lcom/unityota/utils/Config;

    iput-object p2, p0, Lcom/unityota/utils/Utils$1;->val$ctx:Landroid/content/Context;

    invoke-direct {p0}, Lcom/unityota/utils/APIUtils$APIAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 3

    iget-object v0, p0, Lcom/unityota/utils/Utils$1;->val$cfg:Lcom/unityota/utils/Config;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/unityota/utils/Config;->setGcmRegistrationId(Ljava/lang/String;)V

    const-string v0, "OTA::DeviceRegister"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error registering with server: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 3

    iget-object v1, p0, Lcom/unityota/utils/Utils$1;->val$cfg:Lcom/unityota/utils/Config;

    invoke-virtual {v1}, Lcom/unityota/utils/Config;->setPingedCurrent()V

    invoke-static {}, Lcom/unityota/utils/PropUtils;->isRomOtaEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/unityota/utils/RomInfo;->FACTORY:Lcom/unityota/utils/BaseInfo$InfoFactory;

    const-string v2, "rom"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/unityota/utils/BaseInfo$InfoFactory;->fromJSON(Lorg/json/JSONObject;)Lcom/unityota/utils/BaseInfo;

    move-result-object v0

    check-cast v0, Lcom/unityota/utils/RomInfo;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/unityota/utils/RomInfo;->isUpdate()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/unityota/utils/Utils$1;->val$cfg:Lcom/unityota/utils/Config;

    invoke-virtual {v1, v0}, Lcom/unityota/utils/Config;->storeRomUpdate(Lcom/unityota/utils/RomInfo;)V

    iget-object v1, p0, Lcom/unityota/utils/Utils$1;->val$cfg:Lcom/unityota/utils/Config;

    invoke-virtual {v1}, Lcom/unityota/utils/Config;->getShowNotif()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/unityota/utils/Utils$1;->val$ctx:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/unityota/utils/RomInfo;->showUpdateNotif(Landroid/content/Context;)V

    :cond_0
    :goto_0
    invoke-static {}, Lcom/unityota/utils/PropUtils;->isKernelOtaEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/unityota/utils/KernelInfo;->FACTORY:Lcom/unityota/utils/BaseInfo$InfoFactory;

    const-string v2, "kernel"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/unityota/utils/BaseInfo$InfoFactory;->fromJSON(Lorg/json/JSONObject;)Lcom/unityota/utils/BaseInfo;

    move-result-object v0

    check-cast v0, Lcom/unityota/utils/KernelInfo;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/unityota/utils/KernelInfo;->isUpdate()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/unityota/utils/Utils$1;->val$cfg:Lcom/unityota/utils/Config;

    invoke-virtual {v1, v0}, Lcom/unityota/utils/Config;->storeKernelUpdate(Lcom/unityota/utils/KernelInfo;)V

    iget-object v1, p0, Lcom/unityota/utils/Utils$1;->val$cfg:Lcom/unityota/utils/Config;

    invoke-virtual {v1}, Lcom/unityota/utils/Config;->getShowNotif()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/unityota/utils/Utils$1;->val$ctx:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/unityota/utils/KernelInfo;->showUpdateNotif(Landroid/content/Context;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const-string v1, "OTA::DeviceRegister"

    const-string v2, "got rom update response, notif not shown"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/unityota/utils/Utils$1;->val$cfg:Lcom/unityota/utils/Config;

    invoke-virtual {v1}, Lcom/unityota/utils/Config;->clearStoredRomUpdate()V

    sget-object v1, Lcom/unityota/utils/RomInfo;->FACTORY:Lcom/unityota/utils/BaseInfo$InfoFactory;

    iget-object v2, p0, Lcom/unityota/utils/Utils$1;->val$ctx:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/unityota/utils/BaseInfo$InfoFactory;->clearUpdateNotif(Landroid/content/Context;)V

    goto :goto_0

    :cond_4
    const-string v1, "OTA::DeviceRegister"

    const-string v2, "got kernel update response, notif not shown"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/unityota/utils/Utils$1;->val$cfg:Lcom/unityota/utils/Config;

    invoke-virtual {v1}, Lcom/unityota/utils/Config;->clearStoredKernelUpdate()V

    sget-object v1, Lcom/unityota/utils/KernelInfo;->FACTORY:Lcom/unityota/utils/BaseInfo$InfoFactory;

    iget-object v2, p0, Lcom/unityota/utils/Utils$1;->val$ctx:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/unityota/utils/BaseInfo$InfoFactory;->clearUpdateNotif(Landroid/content/Context;)V

    goto :goto_1
.end method
