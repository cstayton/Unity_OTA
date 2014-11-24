.class public Lcom/unityota/DownloadReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DownloadReceiver.java"


# static fields
.field public static final CLEAR_DL_ACTION:Ljava/lang/String; = "com.unityota.action.CLEAR_DL_ACTION"

.field public static final DL_KERNEL_ACTION:Ljava/lang/String; = "com.unityota.action.DL_KERNEL_ACTION"

.field public static final DL_ROM_ACTION:Ljava/lang/String; = "com.unityota.action.DL_ROM_ACTION"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 26

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v21, "com.unityota.action.DL_ROM_ACTION"

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2

    sget-object v21, Lcom/unityota/utils/RomInfo;->FACTORY:Lcom/unityota/utils/BaseInfo$InfoFactory;

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/unityota/utils/BaseInfo$InfoFactory;->clearUpdateNotif(Landroid/content/Context;)V

    sget-object v21, Lcom/unityota/utils/RomInfo;->FACTORY:Lcom/unityota/utils/BaseInfo$InfoFactory;

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/unityota/utils/BaseInfo$InfoFactory;->fromIntent(Landroid/content/Intent;)Lcom/unityota/utils/BaseInfo;

    move-result-object v21

    check-cast v21, Lcom/unityota/utils/RomInfo;

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/unityota/utils/RomInfo;->startDownload(Landroid/content/Context;)J

    goto :goto_0

    :cond_2
    const-string v21, "com.unityota.action.DL_KERNEL_ACTION"

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_3

    sget-object v21, Lcom/unityota/utils/KernelInfo;->FACTORY:Lcom/unityota/utils/BaseInfo$InfoFactory;

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/unityota/utils/BaseInfo$InfoFactory;->clearUpdateNotif(Landroid/content/Context;)V

    sget-object v21, Lcom/unityota/utils/KernelInfo;->FACTORY:Lcom/unityota/utils/BaseInfo$InfoFactory;

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/unityota/utils/BaseInfo$InfoFactory;->fromIntent(Landroid/content/Intent;)Lcom/unityota/utils/BaseInfo;

    move-result-object v21

    check-cast v21, Lcom/unityota/utils/KernelInfo;

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/unityota/utils/KernelInfo;->startDownload(Landroid/content/Context;)J

    goto :goto_0

    :cond_3
    const-string v21, "com.unityota.action.CLEAR_DL_ACTION"

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_4

    const-string v21, "extra_download_id"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_0

    const-string v21, "download"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/DownloadManager;

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [J

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-string v23, "extra_download_id"

    const-wide/16 v24, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v23

    aput-wide v23, v21, v22

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/app/DownloadManager;->remove([J)I

    invoke-static {}, Lcom/unityota/DownloadBarFragment;->notifyActiveFragment()V

    goto/16 :goto_0

    :cond_4
    const-string v21, "android.intent.action.DOWNLOAD_COMPLETE"

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_7

    const-string v21, "extra_download_id"

    const-wide/16 v22, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v21

    move-object/from16 v0, p1

    move-wide/from16 v1, v21

    invoke-static {v0, v1, v2}, Lcom/unityota/utils/DownloadStatus;->forDownloadID(Landroid/content/Context;J)Lcom/unityota/utils/DownloadStatus;

    move-result-object v20

    if-eqz v20, :cond_0

    invoke-virtual/range {v20 .. v20}, Lcom/unityota/utils/DownloadStatus;->getInfo()Lcom/unityota/utils/BaseInfo;

    move-result-object v15

    if-eqz v15, :cond_0

    invoke-virtual/range {v20 .. v20}, Lcom/unityota/utils/DownloadStatus;->getStatus()I

    move-result v21

    const/16 v22, 0x8

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_5

    invoke-virtual {v15}, Lcom/unityota/utils/BaseInfo;->checkDownloadedFile()I

    move-result v10

    :goto_1
    const-string v21, "notification"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/app/NotificationManager;

    if-nez v10, :cond_6

    new-instance v16, Landroid/content/Intent;

    const-class v21, Lcom/unityota/unityotaActivity;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v15}, Lcom/unityota/utils/BaseInfo;->getNotifAction()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v21, "SHOW_DOWNLOAD_DIALOG"

    const/16 v22, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v21, 0x0

    const/high16 v22, 0x1000

    move-object/from16 v0, p1

    move/from16 v1, v21

    move-object/from16 v2, v16

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v17

    new-instance v11, Landroid/content/Intent;

    const-class v21, Lcom/unityota/DownloadsActivity;

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-direct {v11, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v15}, Lcom/unityota/utils/BaseInfo;->getFlashAction()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v15, v11}, Lcom/unityota/utils/BaseInfo;->addToIntent(Landroid/content/Intent;)V

    const/16 v21, 0x0

    const/high16 v22, 0x1000

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v11, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v12

    new-instance v21, Landroid/support/v4/app/NotificationCompat$Builder;

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v15}, Lcom/unityota/utils/BaseInfo;->getDownloadDoneTitle()I

    move-result v22

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v21

    invoke-virtual {v15}, Lcom/unityota/utils/BaseInfo;->getDownloadDoneTitle()I

    move-result v22

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v21

    const v22, 0x7f02002b

    invoke-virtual/range {v21 .. v22}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v21

    const v22, 0x7f090077

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v21

    const v22, 0x7f02001c

    const v23, 0x7f090060

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v21

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2, v12}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v19

    invoke-virtual {v15}, Lcom/unityota/utils/BaseInfo;->getFlashNotifID()I

    move-result v21

    move-object/from16 v0, v18

    move/from16 v1, v21

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual/range {v20 .. v20}, Lcom/unityota/utils/DownloadStatus;->getReason()I

    move-result v10

    goto/16 :goto_1

    :cond_6
    new-instance v16, Landroid/content/Intent;

    const-class v21, Lcom/unityota/unityotaActivity;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v15}, Lcom/unityota/utils/BaseInfo;->getNotifAction()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual/range {v15 .. v16}, Lcom/unityota/utils/BaseInfo;->addToIntent(Landroid/content/Intent;)V

    const/16 v21, 0x0

    const/high16 v22, 0x1000

    move-object/from16 v0, p1

    move/from16 v1, v21

    move-object/from16 v2, v16

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v17

    new-instance v7, Landroid/content/Intent;

    const-class v21, Lcom/unityota/DownloadReceiver;

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-direct {v7, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v15}, Lcom/unityota/utils/BaseInfo;->getDownloadAction()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v15, v7}, Lcom/unityota/utils/BaseInfo;->addToIntent(Landroid/content/Intent;)V

    const/16 v21, 0x1

    const/high16 v22, 0x1000

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v7, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    new-instance v5, Landroid/content/Intent;

    const-class v21, Lcom/unityota/DownloadReceiver;

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-direct {v5, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v21, "com.unityota.action.CLEAR_DL_ACTION"

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v21, "extra_download_id"

    invoke-virtual/range {v20 .. v20}, Lcom/unityota/utils/DownloadStatus;->getId()J

    move-result-wide v22

    move-object/from16 v0, v21

    move-wide/from16 v1, v22

    invoke-virtual {v5, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const/16 v21, 0x2

    const/high16 v22, 0x1000

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v5, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    new-instance v21, Landroid/support/v4/app/NotificationCompat$Builder;

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v15}, Lcom/unityota/utils/BaseInfo;->getDownloadFailedTitle()I

    move-result v22

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v21

    invoke-virtual {v15}, Lcom/unityota/utils/BaseInfo;->getDownloadFailedTitle()I

    move-result v22

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/unityota/utils/DownloadStatus;->getErrorString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v21

    const v22, 0x7f02002d

    invoke-virtual/range {v21 .. v22}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v21

    const v22, 0x7f02001a

    const v23, 0x7f090082

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v21

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v19

    invoke-virtual {v15}, Lcom/unityota/utils/BaseInfo;->getFailedNotifID()I

    move-result v21

    move-object/from16 v0, v18

    move/from16 v1, v21

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    :cond_7
    const-string v21, "android.intent.action.DOWNLOAD_NOTIFICATION_CLICKED"

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_0

    const-string v21, "extra_click_download_ids"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v14

    array-length v0, v14

    move/from16 v21, v0

    if-eqz v21, :cond_0

    const/16 v21, 0x0

    aget-wide v21, v14, v21

    move-object/from16 v0, p1

    move-wide/from16 v1, v21

    invoke-static {v0, v1, v2}, Lcom/unityota/utils/DownloadStatus;->forDownloadID(Landroid/content/Context;J)Lcom/unityota/utils/DownloadStatus;

    move-result-object v20

    if-eqz v20, :cond_0

    invoke-virtual/range {v20 .. v20}, Lcom/unityota/utils/DownloadStatus;->getInfo()Lcom/unityota/utils/BaseInfo;

    move-result-object v15

    if-eqz v15, :cond_0

    new-instance v13, Landroid/content/Intent;

    const-class v21, Lcom/unityota/unityotaActivity;

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-direct {v13, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v15}, Lcom/unityota/utils/BaseInfo;->getNotifAction()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v21, "SHOW_DOWNLOAD_DIALOG"

    const/16 v22, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v21, 0x1000

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
