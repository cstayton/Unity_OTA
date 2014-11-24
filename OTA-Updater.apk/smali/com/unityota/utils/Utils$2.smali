.class final Lcom/unityota/utils/Utils$2;
.super Landroid/os/AsyncTask;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unityota/utils/Utils;->updateDeviceRegistration(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$cfg:Lcom/unityota/utils/Config;

.field final synthetic val$ctx:Landroid/content/Context;

.field final synthetic val$regCallback:Lcom/unityota/utils/APIUtils$APIAdapter;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/unityota/utils/Config;Lcom/unityota/utils/APIUtils$APIAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/unityota/utils/Utils$2;->val$ctx:Landroid/content/Context;

    iput-object p2, p0, Lcom/unityota/utils/Utils$2;->val$cfg:Lcom/unityota/utils/Config;

    iput-object p3, p0, Lcom/unityota/utils/Utils$2;->val$regCallback:Lcom/unityota/utils/APIUtils$APIAdapter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/unityota/utils/Utils$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6

    :try_start_0
    iget-object v3, p0, Lcom/unityota/utils/Utils$2;->val$ctx:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "1068482628480"

    aput-object v5, v3, v4

    invoke-virtual {v1, v3}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->register([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/unityota/utils/Utils$2;->val$cfg:Lcom/unityota/utils/Config;

    invoke-virtual {v3, v2}, Lcom/unityota/utils/Config;->setGcmRegistrationId(Ljava/lang/String;)V

    const-string v3, "OTA::DeviceRegister"

    const-string v4, "GCM registered"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/unityota/utils/Utils$2;->val$ctx:Landroid/content/Context;

    iget-object v4, p0, Lcom/unityota/utils/Utils$2;->val$regCallback:Lcom/unityota/utils/APIUtils$APIAdapter;

    invoke-static {v3, v4}, Lcom/unityota/utils/APIUtils;->updateDeviceRegistration(Landroid/content/Context;Lcom/unityota/utils/APIUtils$APICallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v3, 0x0

    return-object v3

    :catch_0
    move-exception v0

    const-string v3, "OTA::DeviceRegister"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error registering GCM: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
