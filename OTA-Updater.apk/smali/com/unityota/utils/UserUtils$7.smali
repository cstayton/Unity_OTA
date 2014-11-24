.class final Lcom/unityota/utils/UserUtils$7;
.super Ljava/lang/Object;
.source "UserUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unityota/utils/UserUtils;->showAccountDialog(Landroid/content/Context;Lcom/unityota/utils/DialogCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$dlg:Landroid/app/AlertDialog;

.field final synthetic val$dlgCallback:Lcom/unityota/utils/DialogCallback;


# direct methods
.method constructor <init>(Lcom/unityota/utils/DialogCallback;Landroid/app/AlertDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/unityota/utils/UserUtils$7;->val$dlgCallback:Lcom/unityota/utils/DialogCallback;

    iput-object p2, p0, Lcom/unityota/utils/UserUtils$7;->val$dlg:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/unityota/utils/UserUtils$7;->val$dlgCallback:Lcom/unityota/utils/DialogCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unityota/utils/UserUtils$7;->val$dlgCallback:Lcom/unityota/utils/DialogCallback;

    iget-object v1, p0, Lcom/unityota/utils/UserUtils$7;->val$dlg:Landroid/app/AlertDialog;

    invoke-interface {v0, v1}, Lcom/unityota/utils/DialogCallback;->onDialogShown(Landroid/app/Dialog;)V

    :cond_0
    return-void
.end method
