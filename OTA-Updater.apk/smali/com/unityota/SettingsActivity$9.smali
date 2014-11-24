.class Lcom/unityota/SettingsActivity$9;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Lcom/unityota/utils/UserUtils$LoginCallback;


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
.method constructor <init>(Lcom/unityota/SettingsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/unityota/SettingsActivity$9;->this$0:Lcom/unityota/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/unityota/SettingsActivity$9;->this$0:Lcom/unityota/SettingsActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/unityota/SettingsActivity$9$1;

    invoke-direct {v2, p0}, Lcom/unityota/SettingsActivity$9$1;-><init>(Lcom/unityota/SettingsActivity$9;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public onLoggedIn(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/unityota/SettingsActivity$9;->this$0:Lcom/unityota/SettingsActivity;

    #calls: Lcom/unityota/SettingsActivity;->redeemProKey()V
    invoke-static {v0}, Lcom/unityota/SettingsActivity;->access$300(Lcom/unityota/SettingsActivity;)V

    return-void
.end method
