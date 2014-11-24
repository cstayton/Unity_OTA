.class Lcom/unityota/utils/UserUtils$3$1$1;
.super Lcom/unityota/utils/APIUtils$ProgressDialogAPICallback;
.source "UserUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unityota/utils/UserUtils$3$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/unityota/utils/UserUtils$3$1;


# direct methods
.method constructor <init>(Lcom/unityota/utils/UserUtils$3$1;Landroid/content/Context;Ljava/lang/String;Lcom/unityota/utils/DialogCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/unityota/utils/UserUtils$3$1$1;->this$1:Lcom/unityota/utils/UserUtils$3$1;

    invoke-direct {p0, p2, p3, p4}, Lcom/unityota/utils/APIUtils$ProgressDialogAPICallback;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/unityota/utils/DialogCallback;)V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 4

    :try_start_0
    const-string v3, "username"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "key"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/unityota/utils/UserUtils$3$1$1;->this$1:Lcom/unityota/utils/UserUtils$3$1;

    iget-object v3, v3, Lcom/unityota/utils/UserUtils$3$1;->this$0:Lcom/unityota/utils/UserUtils$3;

    iget-object v3, v3, Lcom/unityota/utils/UserUtils$3;->val$ctx:Landroid/content/Context;

    invoke-static {v3}, Lcom/unityota/utils/Config;->getInstance(Landroid/content/Context;)Lcom/unityota/utils/Config;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Lcom/unityota/utils/Config;->storeLogin(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/unityota/utils/UserUtils$3$1$1;->this$1:Lcom/unityota/utils/UserUtils$3$1;

    iget-object v3, v3, Lcom/unityota/utils/UserUtils$3$1;->this$0:Lcom/unityota/utils/UserUtils$3;

    iget-object v3, v3, Lcom/unityota/utils/UserUtils$3;->val$loginCallback:Lcom/unityota/utils/UserUtils$LoginCallback;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/unityota/utils/UserUtils$3$1$1;->this$1:Lcom/unityota/utils/UserUtils$3$1;

    iget-object v3, v3, Lcom/unityota/utils/UserUtils$3$1;->this$0:Lcom/unityota/utils/UserUtils$3;

    iget-object v3, v3, Lcom/unityota/utils/UserUtils$3;->val$loginCallback:Lcom/unityota/utils/UserUtils$LoginCallback;

    invoke-interface {v3, v2}, Lcom/unityota/utils/UserUtils$LoginCallback;->onLoggedIn(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
