.class final Lcom/unityota/DownloadBarFragment$8;
.super Ljava/lang/Object;
.source "DownloadBarFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


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

.field final synthetic val$ctx:Landroid/content/Context;

.field final synthetic val$dlg:Landroid/app/AlertDialog;

.field final synthetic val$dm:Landroid/app/DownloadManager;

.field final synthetic val$downloadID:J

.field final synthetic val$info:Lcom/unityota/utils/BaseInfo;


# direct methods
.method constructor <init>(Landroid/app/AlertDialog;Landroid/content/Context;Landroid/app/DownloadManager;JLcom/unityota/utils/BaseInfo;Lcom/unityota/utils/DownloadDialogCallback;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/unityota/DownloadBarFragment$8;->val$dlg:Landroid/app/AlertDialog;

    iput-object p2, p0, Lcom/unityota/DownloadBarFragment$8;->val$ctx:Landroid/content/Context;

    iput-object p3, p0, Lcom/unityota/DownloadBarFragment$8;->val$dm:Landroid/app/DownloadManager;

    iput-wide p4, p0, Lcom/unityota/DownloadBarFragment$8;->val$downloadID:J

    iput-object p6, p0, Lcom/unityota/DownloadBarFragment$8;->val$info:Lcom/unityota/utils/BaseInfo;

    iput-object p7, p0, Lcom/unityota/DownloadBarFragment$8;->val$callback:Lcom/unityota/utils/DownloadDialogCallback;

    iput-object p8, p0, Lcom/unityota/DownloadBarFragment$8;->val$REFRESH_HANDLER:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 4

    iget-object v0, p0, Lcom/unityota/DownloadBarFragment$8;->val$dlg:Landroid/app/AlertDialog;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/unityota/DownloadBarFragment$8$1;

    invoke-direct {v1, p0}, Lcom/unityota/DownloadBarFragment$8$1;-><init>(Lcom/unityota/DownloadBarFragment$8;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/unityota/DownloadBarFragment$8;->val$REFRESH_HANDLER:Landroid/os/Handler;

    iget-object v1, p0, Lcom/unityota/DownloadBarFragment$8;->val$REFRESH_HANDLER:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v0, p0, Lcom/unityota/DownloadBarFragment$8;->val$callback:Lcom/unityota/utils/DownloadDialogCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unityota/DownloadBarFragment$8;->val$callback:Lcom/unityota/utils/DownloadDialogCallback;

    iget-object v1, p0, Lcom/unityota/DownloadBarFragment$8;->val$dlg:Landroid/app/AlertDialog;

    invoke-interface {v0, v1}, Lcom/unityota/utils/DownloadDialogCallback;->onDialogShown(Landroid/app/Dialog;)V

    iget-object v0, p0, Lcom/unityota/DownloadBarFragment$8;->val$callback:Lcom/unityota/utils/DownloadDialogCallback;

    iget-wide v1, p0, Lcom/unityota/DownloadBarFragment$8;->val$downloadID:J

    iget-object v3, p0, Lcom/unityota/DownloadBarFragment$8;->val$dlg:Landroid/app/AlertDialog;

    invoke-interface {v0, v1, v2, v3}, Lcom/unityota/utils/DownloadDialogCallback;->onDownloadDialogShown(JLandroid/app/Dialog;)V

    :cond_0
    return-void
.end method
