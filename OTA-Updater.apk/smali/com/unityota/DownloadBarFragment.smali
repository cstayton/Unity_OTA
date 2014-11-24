.class public Lcom/unityota/DownloadBarFragment;
.super Landroid/app/Fragment;
.source "DownloadBarFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unityota/DownloadBarFragment$RefreshHandler;
    }
.end annotation


# static fields
.field protected static final REFRESH_DELAY:I = 0x3e8

.field private static activeFragment:Lcom/unityota/DownloadBarFragment;


# instance fields
.field private final REFRESH_HANDLER:Landroid/os/Handler;

.field private bottomBorder:Landroid/view/View;

.field private cfg:Lcom/unityota/utils/Config;

.field private dm:Landroid/app/DownloadManager;

.field private kernelContainer:Landroid/view/View;

.field private kernelProgressBar:Landroid/widget/ProgressBar;

.field private kernelProgressText:Landroid/widget/TextView;

.field private kernelStatusText:Landroid/widget/TextView;

.field private romContainer:Landroid/view/View;

.field private romKernelSeperator:Landroid/view/View;

.field private romProgressBar:Landroid/widget/ProgressBar;

.field private romProgressText:Landroid/widget/TextView;

.field private romStatusText:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/unityota/DownloadBarFragment;->activeFragment:Lcom/unityota/DownloadBarFragment;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    new-instance v0, Lcom/unityota/DownloadBarFragment$RefreshHandler;

    invoke-direct {v0, p0}, Lcom/unityota/DownloadBarFragment$RefreshHandler;-><init>(Lcom/unityota/DownloadBarFragment;)V

    iput-object v0, p0, Lcom/unityota/DownloadBarFragment;->REFRESH_HANDLER:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/unityota/DownloadBarFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/unityota/DownloadBarFragment;->updateStatus()V

    return-void
.end method

.method static synthetic access$100(Lcom/unityota/DownloadBarFragment;)Lcom/unityota/utils/Config;
    .locals 1

    iget-object v0, p0, Lcom/unityota/DownloadBarFragment;->cfg:Lcom/unityota/utils/Config;

    return-object v0
.end method

.method static synthetic access$200(Lcom/unityota/DownloadBarFragment;J)Landroid/app/Dialog;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/unityota/DownloadBarFragment;->showDownloadingDialog(J)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/unityota/DownloadBarFragment;)Landroid/app/DownloadManager;
    .locals 1

    iget-object v0, p0, Lcom/unityota/DownloadBarFragment;->dm:Landroid/app/DownloadManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/unityota/utils/DownloadStatus;)Z
    .locals 1

    invoke-static {p0}, Lcom/unityota/DownloadBarFragment;->isActive(Lcom/unityota/utils/DownloadStatus;)Z

    move-result v0

    return v0
.end method

.method private static isActive(Lcom/unityota/utils/DownloadStatus;)Z
    .locals 3

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/unityota/utils/DownloadStatus;->getStatus()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/unityota/utils/DownloadStatus;->getStatus()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/unityota/utils/DownloadStatus;->getStatus()I

    move-result v1

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static notifyActiveFragment()V
    .locals 1

    sget-object v0, Lcom/unityota/DownloadBarFragment;->activeFragment:Lcom/unityota/DownloadBarFragment;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/unityota/DownloadBarFragment;->activeFragment:Lcom/unityota/DownloadBarFragment;

    invoke-direct {v0}, Lcom/unityota/DownloadBarFragment;->updateStatus()V

    :cond_0
    return-void
.end method

.method private showDownloadingDialog(J)Landroid/app/Dialog;
    .locals 2

    invoke-virtual {p0}, Lcom/unityota/DownloadBarFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/unityota/DownloadBarFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/unityota/utils/DownloadDialogCallback;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/unityota/DownloadBarFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/unityota/utils/DownloadDialogCallback;

    :goto_0
    invoke-static {v1, p1, p2, v0}, Lcom/unityota/DownloadBarFragment;->showDownloadingDialog(Landroid/content/Context;JLcom/unityota/utils/DownloadDialogCallback;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static showDownloadingDialog(Landroid/content/Context;JLcom/unityota/utils/DownloadDialogCallback;)Landroid/app/Dialog;
    .locals 27

    const-string v4, "download"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/DownloadManager;

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-static {v0, v5, v1, v2}, Lcom/unityota/utils/DownloadStatus;->forDownloadID(Landroid/content/Context;Landroid/app/DownloadManager;J)Lcom/unityota/utils/DownloadStatus;

    move-result-object v24

    if-nez v24, :cond_0

    const/4 v8, 0x0

    :goto_0
    return-object v8

    :cond_0
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v23

    const v4, 0x7f030002

    const/4 v6, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v26

    const v4, 0x7f070023

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/TextView;

    const v4, 0x7f070028

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    invoke-virtual/range {v24 .. v24}, Lcom/unityota/utils/DownloadStatus;->getInfo()Lcom/unityota/utils/BaseInfo;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/unityota/utils/BaseInfo;->getDownloadingTitle()I

    move-result v4

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, v18

    iget-object v12, v0, Lcom/unityota/utils/BaseInfo;->name:Ljava/lang/String;

    aput-object v12, v6, v7

    const/4 v7, 0x1

    move-object/from16 v0, v18

    iget-object v12, v0, Lcom/unityota/utils/BaseInfo;->version:Ljava/lang/String;

    aput-object v12, v6, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/unityota/utils/BaseInfo;->changelog:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v4, 0x7f070025

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    const v4, 0x7f070026

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    const v4, 0x7f070024

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ProgressBar;

    new-instance v21, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f09000d

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const/4 v4, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v4, 0x7f09005d

    new-instance v6, Lcom/unityota/DownloadBarFragment$5;

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-direct {v6, v0, v5, v1, v2}, Lcom/unityota/DownloadBarFragment$5;-><init>(Landroid/content/Context;Landroid/app/DownloadManager;J)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v4, 0x104

    new-instance v6, Lcom/unityota/DownloadBarFragment$6;

    invoke-direct {v6}, Lcom/unityota/DownloadBarFragment$6;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {v21 .. v21}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    new-instance v3, Lcom/unityota/DownloadBarFragment$7;

    move-object/from16 v4, p0

    move-wide/from16 v6, p1

    invoke-direct/range {v3 .. v11}, Lcom/unityota/DownloadBarFragment$7;-><init>(Landroid/content/Context;Landroid/app/DownloadManager;JLandroid/app/AlertDialog;Landroid/widget/ProgressBar;Landroid/widget/TextView;Landroid/widget/TextView;)V

    new-instance v12, Lcom/unityota/DownloadBarFragment$8;

    move-object v13, v8

    move-object/from16 v14, p0

    move-object v15, v5

    move-wide/from16 v16, p1

    move-object/from16 v19, p3

    move-object/from16 v20, v3

    invoke-direct/range {v12 .. v20}, Lcom/unityota/DownloadBarFragment$8;-><init>(Landroid/app/AlertDialog;Landroid/content/Context;Landroid/app/DownloadManager;JLcom/unityota/utils/BaseInfo;Lcom/unityota/utils/DownloadDialogCallback;Landroid/os/Handler;)V

    invoke-virtual {v8, v12}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    new-instance v12, Lcom/unityota/DownloadBarFragment$9;

    move-object v13, v3

    move-object/from16 v14, p3

    move-object v15, v8

    move-wide/from16 v16, p1

    invoke-direct/range {v12 .. v17}, Lcom/unityota/DownloadBarFragment$9;-><init>(Landroid/os/Handler;Lcom/unityota/utils/DownloadDialogCallback;Landroid/app/AlertDialog;J)V

    invoke-virtual {v8, v12}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0
.end method

.method private updateStatus()V
    .locals 14

    const/16 v13, 0x8

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual {p0}, Lcom/unityota/DownloadBarFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v2, p0, Lcom/unityota/DownloadBarFragment;->dm:Landroid/app/DownloadManager;

    iget-object v3, p0, Lcom/unityota/DownloadBarFragment;->cfg:Lcom/unityota/utils/Config;

    invoke-virtual {v3}, Lcom/unityota/utils/Config;->getRomDownloadID()J

    move-result-wide v3

    invoke-static {v0, v2, v3, v4}, Lcom/unityota/utils/DownloadStatus;->forDownloadID(Landroid/content/Context;Landroid/app/DownloadManager;J)Lcom/unityota/utils/DownloadStatus;

    move-result-object v1

    invoke-virtual {p0}, Lcom/unityota/DownloadBarFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v2, p0, Lcom/unityota/DownloadBarFragment;->dm:Landroid/app/DownloadManager;

    iget-object v3, p0, Lcom/unityota/DownloadBarFragment;->cfg:Lcom/unityota/utils/Config;

    invoke-virtual {v3}, Lcom/unityota/utils/Config;->getKernelDownloadID()J

    move-result-wide v3

    invoke-static {v0, v2, v3, v4}, Lcom/unityota/utils/DownloadStatus;->forDownloadID(Landroid/content/Context;Landroid/app/DownloadManager;J)Lcom/unityota/utils/DownloadStatus;

    move-result-object v8

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/unityota/DownloadBarFragment;->cfg:Lcom/unityota/utils/Config;

    invoke-virtual {v0}, Lcom/unityota/utils/Config;->clearDownloadingRom()V

    :cond_0
    if-nez v8, :cond_1

    iget-object v0, p0, Lcom/unityota/DownloadBarFragment;->cfg:Lcom/unityota/utils/Config;

    invoke-virtual {v0}, Lcom/unityota/utils/Config;->clearDownloadingKernel()V

    :cond_1
    iget-object v2, p0, Lcom/unityota/DownloadBarFragment;->romContainer:Landroid/view/View;

    iget-object v3, p0, Lcom/unityota/DownloadBarFragment;->romProgressBar:Landroid/widget/ProgressBar;

    iget-object v4, p0, Lcom/unityota/DownloadBarFragment;->romProgressText:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/unityota/DownloadBarFragment;->romStatusText:Landroid/widget/TextView;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/unityota/DownloadBarFragment;->updateViews(Lcom/unityota/utils/DownloadStatus;Landroid/view/View;Landroid/widget/ProgressBar;Landroid/widget/TextView;Landroid/widget/TextView;)V

    iget-object v4, p0, Lcom/unityota/DownloadBarFragment;->kernelContainer:Landroid/view/View;

    iget-object v5, p0, Lcom/unityota/DownloadBarFragment;->kernelProgressBar:Landroid/widget/ProgressBar;

    iget-object v6, p0, Lcom/unityota/DownloadBarFragment;->kernelProgressText:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/unityota/DownloadBarFragment;->kernelStatusText:Landroid/widget/TextView;

    move-object v2, p0

    move-object v3, v8

    invoke-direct/range {v2 .. v7}, Lcom/unityota/DownloadBarFragment;->updateViews(Lcom/unityota/utils/DownloadStatus;Landroid/view/View;Landroid/widget/ProgressBar;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-static {v1}, Lcom/unityota/DownloadBarFragment;->isActive(Lcom/unityota/utils/DownloadStatus;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v8}, Lcom/unityota/DownloadBarFragment;->isActive(Lcom/unityota/utils/DownloadStatus;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/unityota/DownloadBarFragment;->REFRESH_HANDLER:Landroid/os/Handler;

    iget-object v2, p0, Lcom/unityota/DownloadBarFragment;->REFRESH_HANDLER:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_3
    iget-object v0, p0, Lcom/unityota/DownloadBarFragment;->romContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    move v10, v11

    :goto_0
    iget-object v0, p0, Lcom/unityota/DownloadBarFragment;->kernelContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_6

    move v9, v11

    :goto_1
    if-nez v10, :cond_4

    if-eqz v9, :cond_7

    :cond_4
    iget-object v0, p0, Lcom/unityota/DownloadBarFragment;->bottomBorder:Landroid/view/View;

    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    if-eqz v10, :cond_8

    if-eqz v9, :cond_8

    iget-object v0, p0, Lcom/unityota/DownloadBarFragment;->romKernelSeperator:Landroid/view/View;

    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    return-void

    :cond_5
    move v10, v12

    goto :goto_0

    :cond_6
    move v9, v12

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/unityota/DownloadBarFragment;->bottomBorder:Landroid/view/View;

    invoke-virtual {v0, v13}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lcom/unityota/DownloadBarFragment;->romKernelSeperator:Landroid/view/View;

    invoke-virtual {v0, v13}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3
.end method

.method private updateViews(Lcom/unityota/utils/DownloadStatus;Landroid/view/View;Landroid/widget/ProgressBar;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 5

    const/4 v4, 0x1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-static {p1}, Lcom/unityota/DownloadBarFragment;->isActive(Lcom/unityota/utils/DownloadStatus;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p3, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/unityota/utils/DownloadStatus;->getStatus()I

    move-result v1

    if-ne v1, v4, :cond_1

    invoke-virtual {p4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p3, v4}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    invoke-virtual {p5, v3}, Landroid/widget/TextView;->setVisibility(I)V

    const v1, 0x7f09005a

    invoke-virtual {p5, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/unityota/utils/DownloadStatus;->getStatus()I

    move-result v1

    const/4 v4, 0x4

    if-ne v1, v4, :cond_4

    invoke-virtual {p4}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    move v1, v2

    :goto_1
    invoke-virtual {p4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v0, -0x1

    invoke-virtual {p1}, Lcom/unityota/utils/DownloadStatus;->getReason()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_2
    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    invoke-virtual {p5, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_3
    invoke-virtual {p0}, Lcom/unityota/DownloadBarFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/unityota/utils/DownloadStatus;->getProgressStr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p3, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    invoke-virtual {p1}, Lcom/unityota/utils/DownloadStatus;->getTotalBytes()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    invoke-virtual {p1}, Lcom/unityota/utils/DownloadStatus;->getDownloadedBytes()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_1

    :pswitch_0
    const v0, 0x7f090050

    goto :goto_2

    :pswitch_1
    const v0, 0x7f09004d

    goto :goto_2

    :pswitch_2
    const v0, 0x7f09004e

    goto :goto_2

    :pswitch_3
    const v0, 0x7f09004f

    goto :goto_2

    :cond_3
    invoke-virtual {p5, v3}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p5, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    :cond_4
    invoke-virtual {p4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p5, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    :cond_5
    invoke-virtual {p4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p3, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-virtual {p5, v3}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/unityota/utils/DownloadStatus;->getStatus()I

    move-result v1

    if-ne v1, v2, :cond_6

    const v1, 0x7f090040

    invoke-virtual {p5, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/unityota/DownloadBarFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/unityota/utils/DownloadStatus;->getErrorString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    invoke-static {p1}, Lcom/unityota/utils/Config;->getInstance(Landroid/content/Context;)Lcom/unityota/utils/Config;

    move-result-object v0

    iput-object v0, p0, Lcom/unityota/DownloadBarFragment;->cfg:Lcom/unityota/utils/Config;

    const-string v0, "download"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    iput-object v0, p0, Lcom/unityota/DownloadBarFragment;->dm:Landroid/app/DownloadManager;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    const v3, 0x7f030001

    const/4 v4, 0x0

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f070015

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/unityota/DownloadBarFragment;->romContainer:Landroid/view/View;

    const v3, 0x7f070018

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, p0, Lcom/unityota/DownloadBarFragment;->romProgressBar:Landroid/widget/ProgressBar;

    const v3, 0x7f070017

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/unityota/DownloadBarFragment;->romProgressText:Landroid/widget/TextView;

    const v3, 0x7f070019

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/unityota/DownloadBarFragment;->romStatusText:Landroid/widget/TextView;

    const v3, 0x7f07001a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v3, p0, Lcom/unityota/DownloadBarFragment;->romContainer:Landroid/view/View;

    new-instance v4, Lcom/unityota/DownloadBarFragment$1;

    invoke-direct {v4, p0}, Lcom/unityota/DownloadBarFragment$1;-><init>(Lcom/unityota/DownloadBarFragment;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, Lcom/unityota/DownloadBarFragment$2;

    invoke-direct {v3, p0}, Lcom/unityota/DownloadBarFragment$2;-><init>(Lcom/unityota/DownloadBarFragment;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f07001c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/unityota/DownloadBarFragment;->kernelContainer:Landroid/view/View;

    const v3, 0x7f07001f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, p0, Lcom/unityota/DownloadBarFragment;->kernelProgressBar:Landroid/widget/ProgressBar;

    const v3, 0x7f07001e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/unityota/DownloadBarFragment;->kernelProgressText:Landroid/widget/TextView;

    const v3, 0x7f070020

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/unityota/DownloadBarFragment;->kernelStatusText:Landroid/widget/TextView;

    const v3, 0x7f070021

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v3, p0, Lcom/unityota/DownloadBarFragment;->kernelContainer:Landroid/view/View;

    new-instance v4, Lcom/unityota/DownloadBarFragment$3;

    invoke-direct {v4, p0}, Lcom/unityota/DownloadBarFragment$3;-><init>(Lcom/unityota/DownloadBarFragment;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, Lcom/unityota/DownloadBarFragment$4;

    invoke-direct {v3, p0}, Lcom/unityota/DownloadBarFragment$4;-><init>(Lcom/unityota/DownloadBarFragment;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f07001b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/unityota/DownloadBarFragment;->romKernelSeperator:Landroid/view/View;

    const v3, 0x7f070022

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/unityota/DownloadBarFragment;->bottomBorder:Landroid/view/View;

    return-object v2
.end method

.method public onPause()V
    .locals 2

    const/4 v1, 0x0

    sput-object v1, Lcom/unityota/DownloadBarFragment;->activeFragment:Lcom/unityota/DownloadBarFragment;

    iget-object v0, p0, Lcom/unityota/DownloadBarFragment;->REFRESH_HANDLER:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    invoke-direct {p0}, Lcom/unityota/DownloadBarFragment;->updateStatus()V

    sput-object p0, Lcom/unityota/DownloadBarFragment;->activeFragment:Lcom/unityota/DownloadBarFragment;

    return-void
.end method
