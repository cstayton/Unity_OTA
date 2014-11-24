.class final Lcom/unityota/DownloadBarFragment$9;
.super Ljava/lang/Object;
.source "DownloadBarFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unityota/DownloadBarFragment;->showDownloadingDialog(Landroid/content/Context;JLcom/unityota/utils/DownloadDialogCallback;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$REFRESH_HANDLER:Landroid/os/Handler;

.field final synthetic val$callback:Lcom/unityota/utils/DownloadDialogCallback;

.field final synthetic val$dlg:Landroid/app/AlertDialog;

.field final synthetic val$downloadID:J


# direct methods
.method constructor <init>(Landroid/os/Handler;Lcom/unityota/utils/DownloadDialogCallback;Landroid/app/AlertDialog;J)V
    .locals 0

    iput-object p1, p0, Lcom/unityota/DownloadBarFragment$9;->val$REFRESH_HANDLER:Landroid/os/Handler;

    iput-object p2, p0, Lcom/unityota/DownloadBarFragment$9;->val$callback:Lcom/unityota/utils/DownloadDialogCallback;

    iput-object p3, p0, Lcom/unityota/DownloadBarFragment$9;->val$dlg:Landroid/app/AlertDialog;

    iput-wide p4, p0, Lcom/unityota/DownloadBarFragment$9;->val$downloadID:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4

    iget-object v0, p0, Lcom/unityota/DownloadBarFragment$9;->val$REFRESH_HANDLER:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/unityota/DownloadBarFragment$9;->val$callback:Lcom/unityota/utils/DownloadDialogCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unityota/DownloadBarFragment$9;->val$callback:Lcom/unityota/utils/DownloadDialogCallback;

    iget-object v1, p0, Lcom/unityota/DownloadBarFragment$9;->val$dlg:Landroid/app/AlertDialog;

    invoke-interface {v0, v1}, Lcom/unityota/utils/DownloadDialogCallback;->onDialogClosed(Landroid/app/Dialog;)V

    iget-object v0, p0, Lcom/unityota/DownloadBarFragment$9;->val$callback:Lcom/unityota/utils/DownloadDialogCallback;

    iget-wide v1, p0, Lcom/unityota/DownloadBarFragment$9;->val$downloadID:J

    iget-object v3, p0, Lcom/unityota/DownloadBarFragment$9;->val$dlg:Landroid/app/AlertDialog;

    invoke-interface {v0, v1, v2, v3}, Lcom/unityota/utils/DownloadDialogCallback;->onDownloadDialogClosed(JLandroid/app/Dialog;)V

    :cond_0
    return-void
.end method
