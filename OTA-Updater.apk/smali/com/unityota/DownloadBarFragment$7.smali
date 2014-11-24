.class final Lcom/unityota/DownloadBarFragment$7;
.super Landroid/os/Handler;
.source "DownloadBarFragment.java"


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

.field final synthetic val$dlg:Landroid/app/AlertDialog;

.field final synthetic val$dm:Landroid/app/DownloadManager;

.field final synthetic val$downloadID:J

.field final synthetic val$progressBar:Landroid/widget/ProgressBar;

.field final synthetic val$progressText:Landroid/widget/TextView;

.field final synthetic val$statusText:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/app/DownloadManager;JLandroid/app/AlertDialog;Landroid/widget/ProgressBar;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/unityota/DownloadBarFragment$7;->val$ctx:Landroid/content/Context;

    iput-object p2, p0, Lcom/unityota/DownloadBarFragment$7;->val$dm:Landroid/app/DownloadManager;

    iput-wide p3, p0, Lcom/unityota/DownloadBarFragment$7;->val$downloadID:J

    iput-object p5, p0, Lcom/unityota/DownloadBarFragment$7;->val$dlg:Landroid/app/AlertDialog;

    iput-object p6, p0, Lcom/unityota/DownloadBarFragment$7;->val$progressBar:Landroid/widget/ProgressBar;

    iput-object p7, p0, Lcom/unityota/DownloadBarFragment$7;->val$progressText:Landroid/widget/TextView;

    iput-object p8, p0, Lcom/unityota/DownloadBarFragment$7;->val$statusText:Landroid/widget/TextView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, -0x2

    const/16 v3, 0x8

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/unityota/DownloadBarFragment$7;->val$ctx:Landroid/content/Context;

    iget-object v5, p0, Lcom/unityota/DownloadBarFragment$7;->val$dm:Landroid/app/DownloadManager;

    iget-wide v6, p0, Lcom/unityota/DownloadBarFragment$7;->val$downloadID:J

    invoke-static {v2, v5, v6, v7}, Lcom/unityota/utils/DownloadStatus;->forDownloadID(Landroid/content/Context;Landroid/app/DownloadManager;J)Lcom/unityota/utils/DownloadStatus;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/unityota/DownloadBarFragment$7;->val$dlg:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    :goto_0
    return-void

    :cond_0
    #calls: Lcom/unityota/DownloadBarFragment;->isActive(Lcom/unityota/utils/DownloadStatus;)Z
    invoke-static {v1}, Lcom/unityota/DownloadBarFragment;->access$400(Lcom/unityota/utils/DownloadStatus;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/unityota/DownloadBarFragment$7;->val$dlg:Landroid/app/AlertDialog;

    invoke-virtual {v2, v8}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    const/high16 v5, 0x104

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setText(I)V

    iget-object v2, p0, Lcom/unityota/DownloadBarFragment$7;->val$progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-virtual {v1}, Lcom/unityota/utils/DownloadStatus;->getStatus()I

    move-result v2

    if-ne v2, v9, :cond_1

    iget-object v2, p0, Lcom/unityota/DownloadBarFragment$7;->val$progressText:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/unityota/DownloadBarFragment$7;->val$progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v9}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    iget-object v2, p0, Lcom/unityota/DownloadBarFragment$7;->val$statusText:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/unityota/DownloadBarFragment$7;->val$statusText:Landroid/widget/TextView;

    const v3, 0x7f09005a

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    :goto_1
    invoke-virtual {p0}, Lcom/unityota/DownloadBarFragment$7;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    invoke-virtual {p0, v2, v3, v4}, Lcom/unityota/DownloadBarFragment$7;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/unityota/utils/DownloadStatus;->getStatus()I

    move-result v2

    const/4 v5, 0x4

    if-ne v2, v5, :cond_4

    iget-object v5, p0, Lcom/unityota/DownloadBarFragment$7;->val$progressText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/unityota/DownloadBarFragment$7;->val$progressText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v0, -0x1

    invoke-virtual {v1}, Lcom/unityota/utils/DownloadStatus;->getReason()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_3
    const/4 v2, -0x1

    if-ne v0, v2, :cond_3

    iget-object v2, p0, Lcom/unityota/DownloadBarFragment$7;->val$statusText:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_4
    iget-object v2, p0, Lcom/unityota/DownloadBarFragment$7;->val$progressText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/unityota/DownloadBarFragment$7;->val$ctx:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lcom/unityota/utils/DownloadStatus;->getProgressStr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/unityota/DownloadBarFragment$7;->val$progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    iget-object v2, p0, Lcom/unityota/DownloadBarFragment$7;->val$progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Lcom/unityota/utils/DownloadStatus;->getTotalBytes()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setMax(I)V

    iget-object v2, p0, Lcom/unityota/DownloadBarFragment$7;->val$progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Lcom/unityota/utils/DownloadStatus;->getDownloadedBytes()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_1

    :cond_2
    move v2, v4

    goto :goto_2

    :pswitch_0
    const v0, 0x7f090050

    goto :goto_3

    :pswitch_1
    const v0, 0x7f09004d

    goto :goto_3

    :pswitch_2
    const v0, 0x7f09004e

    goto :goto_3

    :pswitch_3
    const v0, 0x7f09004f

    goto :goto_3

    :cond_3
    iget-object v2, p0, Lcom/unityota/DownloadBarFragment$7;->val$statusText:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/unityota/DownloadBarFragment$7;->val$statusText:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4

    :cond_4
    iget-object v2, p0, Lcom/unityota/DownloadBarFragment$7;->val$progressText:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/unityota/DownloadBarFragment$7;->val$statusText:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    :cond_5
    iget-object v2, p0, Lcom/unityota/DownloadBarFragment$7;->val$progressText:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/unityota/DownloadBarFragment$7;->val$progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v2, p0, Lcom/unityota/DownloadBarFragment$7;->val$statusText:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v1}, Lcom/unityota/utils/DownloadStatus;->isSuccessful()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/unityota/DownloadBarFragment$7;->val$dlg:Landroid/app/AlertDialog;

    invoke-virtual {v2, v8}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    const v3, 0x7f09005c

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    iget-object v2, p0, Lcom/unityota/DownloadBarFragment$7;->val$statusText:Landroid/widget/TextView;

    const v3, 0x7f090040

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    :cond_6
    iget-object v2, p0, Lcom/unityota/DownloadBarFragment$7;->val$dlg:Landroid/app/AlertDialog;

    invoke-virtual {v2, v8}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    const v3, 0x7f090082

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    iget-object v2, p0, Lcom/unityota/DownloadBarFragment$7;->val$statusText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/unityota/DownloadBarFragment$7;->val$ctx:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lcom/unityota/utils/DownloadStatus;->getErrorString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
