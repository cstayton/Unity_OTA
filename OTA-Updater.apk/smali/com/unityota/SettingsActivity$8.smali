.class Lcom/unityota/SettingsActivity$8;
.super Lcom/unityota/utils/APIUtils$ProgressDialogAPICallback;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unityota/SettingsActivity;->redeemProKey()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unityota/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/unityota/SettingsActivity;Landroid/content/Context;Ljava/lang/String;Lcom/unityota/utils/DialogCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/unityota/SettingsActivity$8;->this$0:Lcom/unityota/SettingsActivity;

    invoke-direct {p0, p2, p3, p4}, Lcom/unityota/utils/APIUtils$ProgressDialogAPICallback;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/unityota/utils/DialogCallback;)V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    iget-object v0, p0, Lcom/unityota/SettingsActivity$8;->this$0:Lcom/unityota/SettingsActivity;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 4

    :try_start_0
    const-string v1, "prokey"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/unityota/SettingsActivity$8;->this$0:Lcom/unityota/SettingsActivity;

    #getter for: Lcom/unityota/SettingsActivity;->cfg:Lcom/unityota/utils/Config;
    invoke-static {v1}, Lcom/unityota/SettingsActivity;->access$100(Lcom/unityota/SettingsActivity;)Lcom/unityota/utils/Config;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/unityota/utils/Config;->setRedeemCode(Ljava/lang/String;)V

    const-string v1, "OTA::Redeem"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "redeemed, code="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/unityota/SettingsActivity$8;->this$0:Lcom/unityota/SettingsActivity;

    #calls: Lcom/unityota/SettingsActivity;->updateProKeySummary()V
    invoke-static {v1}, Lcom/unityota/SettingsActivity;->access$200(Lcom/unityota/SettingsActivity;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method
