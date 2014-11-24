.class Lcom/unityota/unityotaActivity$1;
.super Ljava/lang/Object;
.source "unityotaActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unityota/unityotaActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unityota/unityotaActivity;


# direct methods
.method constructor <init>(Lcom/unityota/unityotaActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/unityota/unityotaActivity$1;->this$0:Lcom/unityota/unityotaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 12

    const/4 v11, 0x0

    invoke-static {p2}, Lcom/android/vending/billing/IInAppBillingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/vending/billing/IInAppBillingService;

    move-result-object v6

    const/4 v7, 0x3

    :try_start_0
    iget-object v8, p0, Lcom/unityota/unityotaActivity$1;->this$0:Lcom/unityota/unityotaActivity;

    invoke-virtual {v8}, Lcom/unityota/unityotaActivity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "inapp"

    const/4 v10, 0x0

    invoke-interface {v6, v7, v8, v9, v10}, Lcom/android/vending/billing/IInAppBillingService;->getPurchases(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    const-string v7, "INAPP_PURCHASE_ITEM_LIST"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    const-string v7, "INAPP_PURCHASE_DATA_LIST"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "prokey"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {v1, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/unityota/unityotaActivity$1;->this$0:Lcom/unityota/unityotaActivity;

    #getter for: Lcom/unityota/unityotaActivity;->cfg:Lcom/unityota/utils/Config;
    invoke-static {v7}, Lcom/unityota/unityotaActivity;->access$100(Lcom/unityota/unityotaActivity;)Lcom/unityota/utils/Config;

    move-result-object v7

    const-string v8, "purchaseToken"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/unityota/utils/Config;->setKeyPurchaseToken(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    iget-object v7, p0, Lcom/unityota/unityotaActivity$1;->this$0:Lcom/unityota/unityotaActivity;

    invoke-virtual {v7, p0}, Lcom/unityota/unityotaActivity;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v7, p0, Lcom/unityota/unityotaActivity$1;->this$0:Lcom/unityota/unityotaActivity;

    #setter for: Lcom/unityota/unityotaActivity;->billingSrvConn:Landroid/content/ServiceConnection;
    invoke-static {v7, v11}, Lcom/unityota/unityotaActivity;->access$002(Lcom/unityota/unityotaActivity;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;

    return-void

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v7

    goto :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/unityota/unityotaActivity$1;->this$0:Lcom/unityota/unityotaActivity;

    const/4 v1, 0x0

    #setter for: Lcom/unityota/unityotaActivity;->billingSrvConn:Landroid/content/ServiceConnection;
    invoke-static {v0, v1}, Lcom/unityota/unityotaActivity;->access$002(Lcom/unityota/unityotaActivity;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;

    return-void
.end method
