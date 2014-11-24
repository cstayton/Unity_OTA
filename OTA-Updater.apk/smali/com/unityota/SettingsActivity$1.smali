.class Lcom/unityota/SettingsActivity$1;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unityota/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unityota/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/unityota/SettingsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/unityota/SettingsActivity$1;->this$0:Lcom/unityota/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 11

    iget-object v6, p0, Lcom/unityota/SettingsActivity$1;->this$0:Lcom/unityota/SettingsActivity;

    invoke-static {p2}, Lcom/android/vending/billing/IInAppBillingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/vending/billing/IInAppBillingService;

    move-result-object v7

    #setter for: Lcom/unityota/SettingsActivity;->service:Lcom/android/vending/billing/IInAppBillingService;
    invoke-static {v6, v7}, Lcom/unityota/SettingsActivity;->access$002(Lcom/unityota/SettingsActivity;Lcom/android/vending/billing/IInAppBillingService;)Lcom/android/vending/billing/IInAppBillingService;

    :try_start_0
    iget-object v6, p0, Lcom/unityota/SettingsActivity$1;->this$0:Lcom/unityota/SettingsActivity;

    #getter for: Lcom/unityota/SettingsActivity;->service:Lcom/android/vending/billing/IInAppBillingService;
    invoke-static {v6}, Lcom/unityota/SettingsActivity;->access$000(Lcom/unityota/SettingsActivity;)Lcom/android/vending/billing/IInAppBillingService;

    move-result-object v6

    const/4 v7, 0x3

    iget-object v8, p0, Lcom/unityota/SettingsActivity$1;->this$0:Lcom/unityota/SettingsActivity;

    invoke-virtual {v8}, Lcom/unityota/SettingsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "inapp"

    const/4 v10, 0x0

    invoke-interface {v6, v7, v8, v9, v10}, Lcom/android/vending/billing/IInAppBillingService;->getPurchases(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    const-string v6, "INAPP_PURCHASE_ITEM_LIST"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    const-string v6, "INAPP_PURCHASE_DATA_LIST"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    iget-object v6, p0, Lcom/unityota/SettingsActivity$1;->this$0:Lcom/unityota/SettingsActivity;

    #getter for: Lcom/unityota/SettingsActivity;->cfg:Lcom/unityota/utils/Config;
    invoke-static {v6}, Lcom/unityota/SettingsActivity;->access$100(Lcom/unityota/SettingsActivity;)Lcom/unityota/utils/Config;

    move-result-object v6

    invoke-virtual {v6}, Lcom/unityota/utils/Config;->hasProKey()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/unityota/SettingsActivity$1;->this$0:Lcom/unityota/SettingsActivity;

    #getter for: Lcom/unityota/SettingsActivity;->cfg:Lcom/unityota/utils/Config;
    invoke-static {v6}, Lcom/unityota/SettingsActivity;->access$100(Lcom/unityota/SettingsActivity;)Lcom/unityota/utils/Config;

    move-result-object v6

    invoke-virtual {v6}, Lcom/unityota/utils/Config;->isKeyRedeemCode()Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "prokey"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {v1, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/unityota/SettingsActivity$1;->this$0:Lcom/unityota/SettingsActivity;

    #getter for: Lcom/unityota/SettingsActivity;->cfg:Lcom/unityota/utils/Config;
    invoke-static {v6}, Lcom/unityota/SettingsActivity;->access$100(Lcom/unityota/SettingsActivity;)Lcom/unityota/utils/Config;

    move-result-object v6

    invoke-virtual {v6}, Lcom/unityota/utils/Config;->getKeyPurchaseToken()Ljava/lang/String;

    move-result-object v6

    const-string v7, "purchaseToken"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/unityota/SettingsActivity$1;->this$0:Lcom/unityota/SettingsActivity;

    #getter for: Lcom/unityota/SettingsActivity;->cfg:Lcom/unityota/utils/Config;
    invoke-static {v6}, Lcom/unityota/SettingsActivity;->access$100(Lcom/unityota/SettingsActivity;)Lcom/unityota/utils/Config;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/unityota/utils/Config;->setKeyPurchaseToken(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/unityota/SettingsActivity$1;->this$0:Lcom/unityota/SettingsActivity;

    #calls: Lcom/unityota/SettingsActivity;->updateProKeySummary()V
    invoke-static {v6}, Lcom/unityota/SettingsActivity;->access$200(Lcom/unityota/SettingsActivity;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "prokey"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {v1, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/unityota/SettingsActivity$1;->this$0:Lcom/unityota/SettingsActivity;

    #getter for: Lcom/unityota/SettingsActivity;->cfg:Lcom/unityota/utils/Config;
    invoke-static {v6}, Lcom/unityota/SettingsActivity;->access$100(Lcom/unityota/SettingsActivity;)Lcom/unityota/utils/Config;

    move-result-object v6

    const-string v7, "purchaseToken"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/unityota/utils/Config;->setKeyPurchaseToken(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/unityota/SettingsActivity$1;->this$0:Lcom/unityota/SettingsActivity;

    #calls: Lcom/unityota/SettingsActivity;->updateProKeySummary()V
    invoke-static {v6}, Lcom/unityota/SettingsActivity;->access$200(Lcom/unityota/SettingsActivity;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_0
    move-exception v6

    goto :goto_1

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/unityota/SettingsActivity$1;->this$0:Lcom/unityota/SettingsActivity;

    const/4 v1, 0x0

    #setter for: Lcom/unityota/SettingsActivity;->service:Lcom/android/vending/billing/IInAppBillingService;
    invoke-static {v0, v1}, Lcom/unityota/SettingsActivity;->access$002(Lcom/unityota/SettingsActivity;Lcom/android/vending/billing/IInAppBillingService;)Lcom/android/vending/billing/IInAppBillingService;

    return-void
.end method
