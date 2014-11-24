.class Lcom/unityota/DownloadBarFragment$8$1;
.super Ljava/lang/Object;
.source "DownloadBarFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unityota/DownloadBarFragment$8;->onShow(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unityota/DownloadBarFragment$8;


# direct methods
.method constructor <init>(Lcom/unityota/DownloadBarFragment$8;)V
    .locals 0

    iput-object p1, p0, Lcom/unityota/DownloadBarFragment$8$1;->this$0:Lcom/unityota/DownloadBarFragment$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    iget-object v2, p0, Lcom/unityota/DownloadBarFragment$8$1;->this$0:Lcom/unityota/DownloadBarFragment$8;

    iget-object v2, v2, Lcom/unityota/DownloadBarFragment$8;->val$ctx:Landroid/content/Context;

    iget-object v3, p0, Lcom/unityota/DownloadBarFragment$8$1;->this$0:Lcom/unityota/DownloadBarFragment$8;

    iget-object v3, v3, Lcom/unityota/DownloadBarFragment$8;->val$dm:Landroid/app/DownloadManager;

    iget-object v4, p0, Lcom/unityota/DownloadBarFragment$8$1;->this$0:Lcom/unityota/DownloadBarFragment$8;

    iget-wide v4, v4, Lcom/unityota/DownloadBarFragment$8;->val$downloadID:J

    invoke-static {v2, v3, v4, v5}, Lcom/unityota/utils/DownloadStatus;->forDownloadID(Landroid/content/Context;Landroid/app/DownloadManager;J)Lcom/unityota/utils/DownloadStatus;

    move-result-object v1

    #calls: Lcom/unityota/DownloadBarFragment;->isActive(Lcom/unityota/utils/DownloadStatus;)Z
    invoke-static {v1}, Lcom/unityota/DownloadBarFragment;->access$400(Lcom/unityota/utils/DownloadStatus;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/unityota/DownloadBarFragment$8$1;->this$0:Lcom/unityota/DownloadBarFragment$8;

    iget-object v2, v2, Lcom/unityota/DownloadBarFragment$8;->val$dlg:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    iget-object v2, p0, Lcom/unityota/DownloadBarFragment$8$1;->this$0:Lcom/unityota/DownloadBarFragment$8;

    iget-object v2, v2, Lcom/unityota/DownloadBarFragment$8;->val$dm:Landroid/app/DownloadManager;

    const/4 v3, 0x1

    new-array v3, v3, [J

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/unityota/DownloadBarFragment$8$1;->this$0:Lcom/unityota/DownloadBarFragment$8;

    iget-wide v5, v5, Lcom/unityota/DownloadBarFragment$8;->val$downloadID:J

    aput-wide v5, v3, v4

    invoke-virtual {v2, v3}, Landroid/app/DownloadManager;->remove([J)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v1}, Lcom/unityota/utils/DownloadStatus;->getStatus()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_2

    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/unityota/DownloadBarFragment$8$1;->this$0:Lcom/unityota/DownloadBarFragment$8;

    iget-object v2, v2, Lcom/unityota/DownloadBarFragment$8;->val$ctx:Landroid/content/Context;

    const-class v3, Lcom/unityota/DownloadsActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/unityota/DownloadBarFragment$8$1;->this$0:Lcom/unityota/DownloadBarFragment$8;

    iget-object v2, v2, Lcom/unityota/DownloadBarFragment$8;->val$info:Lcom/unityota/utils/BaseInfo;

    invoke-virtual {v2}, Lcom/unityota/utils/BaseInfo;->getFlashAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/unityota/DownloadBarFragment$8$1;->this$0:Lcom/unityota/DownloadBarFragment$8;

    iget-object v2, v2, Lcom/unityota/DownloadBarFragment$8;->val$info:Lcom/unityota/utils/BaseInfo;

    invoke-virtual {v2, v0}, Lcom/unityota/utils/BaseInfo;->addToIntent(Landroid/content/Intent;)V

    iget-object v2, p0, Lcom/unityota/DownloadBarFragment$8$1;->this$0:Lcom/unityota/DownloadBarFragment$8;

    iget-object v2, v2, Lcom/unityota/DownloadBarFragment$8;->val$ctx:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/unityota/utils/DownloadStatus;->getStatus()I

    move-result v2

    const/16 v3, 0x10

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/unityota/DownloadBarFragment$8$1;->this$0:Lcom/unityota/DownloadBarFragment$8;

    iget-object v2, v2, Lcom/unityota/DownloadBarFragment$8;->val$dlg:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    iget-object v2, p0, Lcom/unityota/DownloadBarFragment$8$1;->this$0:Lcom/unityota/DownloadBarFragment$8;

    iget-object v2, v2, Lcom/unityota/DownloadBarFragment$8;->val$info:Lcom/unityota/utils/BaseInfo;

    iget-object v3, p0, Lcom/unityota/DownloadBarFragment$8$1;->this$0:Lcom/unityota/DownloadBarFragment$8;

    iget-object v3, v3, Lcom/unityota/DownloadBarFragment$8;->val$ctx:Landroid/content/Context;

    iget-object v4, p0, Lcom/unityota/DownloadBarFragment$8$1;->this$0:Lcom/unityota/DownloadBarFragment$8;

    iget-object v4, v4, Lcom/unityota/DownloadBarFragment$8;->val$callback:Lcom/unityota/utils/DownloadDialogCallback;

    invoke-virtual {v2, v3, v4}, Lcom/unityota/utils/BaseInfo;->downloadFileDialog(Landroid/content/Context;Lcom/unityota/utils/DownloadDialogCallback;)V

    goto :goto_0
.end method
