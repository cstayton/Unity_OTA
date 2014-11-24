.class Lcom/unityota/SettingsActivity$5;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unityota/SettingsActivity;->showGetProKeyDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unityota/SettingsActivity;

.field final synthetic val$playServices:Z


# direct methods
.method constructor <init>(Lcom/unityota/SettingsActivity;Z)V
    .locals 0

    iput-object p1, p0, Lcom/unityota/SettingsActivity$5;->this$0:Lcom/unityota/SettingsActivity;

    iput-boolean p2, p0, Lcom/unityota/SettingsActivity$5;->val$playServices:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 11

    const/4 v10, 0x0

    iget-boolean v0, p0, Lcom/unityota/SettingsActivity$5;->val$playServices:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    sub-int/2addr p2, v0

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v10

    goto :goto_0

    :pswitch_0
    :try_start_0
    iget-object v0, p0, Lcom/unityota/SettingsActivity$5;->this$0:Lcom/unityota/SettingsActivity;

    #getter for: Lcom/unityota/SettingsActivity;->service:Lcom/android/vending/billing/IInAppBillingService;
    invoke-static {v0}, Lcom/unityota/SettingsActivity;->access$000(Lcom/unityota/SettingsActivity;)Lcom/android/vending/billing/IInAppBillingService;

    move-result-object v0

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/unityota/SettingsActivity$5;->this$0:Lcom/unityota/SettingsActivity;

    invoke-virtual {v2}, Lcom/unityota/SettingsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "prokey"

    const-string v4, "inapp"

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/android/vending/billing/IInAppBillingService;->getBuyIntent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    const-string v0, "BUY_INTENT"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/app/PendingIntent;

    if-eqz v7, :cond_0

    iget-object v0, p0, Lcom/unityota/SettingsActivity$5;->this$0:Lcom/unityota/SettingsActivity;

    invoke-virtual {v7}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    const/16 v2, 0x457

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/unityota/SettingsActivity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v9

    iget-object v0, p0, Lcom/unityota/SettingsActivity$5;->this$0:Lcom/unityota/SettingsActivity;

    const v1, 0x7f09007a

    invoke-static {v0, v1, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/unityota/SettingsActivity$5;->this$0:Lcom/unityota/SettingsActivity;

    #calls: Lcom/unityota/SettingsActivity;->redeemProKey()V
    invoke-static {v0}, Lcom/unityota/SettingsActivity;->access$300(Lcom/unityota/SettingsActivity;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
