.class final Lcom/unityota/utils/Utils$4;
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


# direct methods
.method constructor <init>(Lcom/unityota/utils/Config;)V
    .locals 0

    iput-object p1, p0, Lcom/unityota/utils/Utils$4;->val$cfg:Lcom/unityota/utils/Config;

    invoke-direct {p0}, Lcom/unityota/utils/APIUtils$APIAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    iget-object v0, p0, Lcom/unityota/utils/Utils$4;->val$cfg:Lcom/unityota/utils/Config;

    invoke-virtual {v0}, Lcom/unityota/utils/Config;->setPingedCurrent()V

    return-void
.end method
