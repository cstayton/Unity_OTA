.class final Lcom/unityota/DownloadBarFragment$5;
.super Ljava/lang/Object;
.source "DownloadBarFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unityota/DownloadBarFragment;->showDownloadingDialog(Landroid/content/Context;JLcom/unityota/utils/DownloadDialogCallback;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$ctx:Landroid/content/Context;

.field final synthetic val$dm:Landroid/app/DownloadManager;

.field final synthetic val$downloadID:J


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/app/DownloadManager;J)V
    .locals 0

    iput-object p1, p0, Lcom/unityota/DownloadBarFragment$5;->val$ctx:Landroid/content/Context;

    iput-object p2, p0, Lcom/unityota/DownloadBarFragment$5;->val$dm:Landroid/app/DownloadManager;

    iput-wide p3, p0, Lcom/unityota/DownloadBarFragment$5;->val$downloadID:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    iget-object v1, p0, Lcom/unityota/DownloadBarFragment$5;->val$ctx:Landroid/content/Context;

    iget-object v2, p0, Lcom/unityota/DownloadBarFragment$5;->val$dm:Landroid/app/DownloadManager;

    iget-wide v3, p0, Lcom/unityota/DownloadBarFragment$5;->val$downloadID:J

    invoke-static {v1, v2, v3, v4}, Lcom/unityota/utils/DownloadStatus;->forDownloadID(Landroid/content/Context;Landroid/app/DownloadManager;J)Lcom/unityota/utils/DownloadStatus;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/unityota/utils/DownloadStatus;->getStatus()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/unityota/DownloadBarFragment$5;->val$ctx:Landroid/content/Context;

    const v2, 0x7f0900ab

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
