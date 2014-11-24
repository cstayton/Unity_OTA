.class public abstract Lcom/unityota/utils/BaseInfo;
.super Ljava/lang/Object;
.source "BaseInfo.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unityota/utils/BaseInfo$InfoLoadAdapter;,
        Lcom/unityota/utils/BaseInfo$InfoFactory;
    }
.end annotation


# static fields
.field public static final KEY_CHANGELOG:Ljava/lang/String; = "changelog"

.field public static final KEY_DATE:Ljava/lang/String; = "date"

.field public static final KEY_MD5:Ljava/lang/String; = "md5"

.field public static final KEY_NAME:Ljava/lang/String; = "name"

.field public static final KEY_URL:Ljava/lang/String; = "url"

.field public static final KEY_VERSION:Ljava/lang/String; = "version"

.field private static final serialVersionUID:J = 0x6310ebdcf68c2e9cL


# instance fields
.field public changelog:Ljava/lang/String;

.field public date:Ljava/util/Date;

.field public md5:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public url:Ljava/lang/String;

.field public version:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unityota/utils/BaseInfo;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/unityota/utils/BaseInfo;->version:Ljava/lang/String;

    iput-object p3, p0, Lcom/unityota/utils/BaseInfo;->changelog:Ljava/lang/String;

    iput-object p4, p0, Lcom/unityota/utils/BaseInfo;->url:Ljava/lang/String;

    iput-object p5, p0, Lcom/unityota/utils/BaseInfo;->md5:Ljava/lang/String;

    iput-object p6, p0, Lcom/unityota/utils/BaseInfo;->date:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public addToIntent(Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p0}, Lcom/unityota/utils/BaseInfo;->getNameKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/unityota/utils/BaseInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "version"

    iget-object v1, p0, Lcom/unityota/utils/BaseInfo;->version:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "changelog"

    iget-object v1, p0, Lcom/unityota/utils/BaseInfo;->changelog:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "url"

    iget-object v1, p0, Lcom/unityota/utils/BaseInfo;->url:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "md5"

    iget-object v1, p0, Lcom/unityota/utils/BaseInfo;->md5:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "date"

    iget-object v1, p0, Lcom/unityota/utils/BaseInfo;->date:Ljava/util/Date;

    invoke-static {v1}, Lcom/unityota/utils/Utils;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-void
.end method

.method public checkDownloadedFile()I
    .locals 3

    invoke-virtual {p0}, Lcom/unityota/utils/BaseInfo;->getDownloadFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x3e9

    :goto_0
    return v1

    :cond_0
    invoke-static {v0}, Lcom/unityota/utils/Utils;->md5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/unityota/utils/BaseInfo;->md5:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x384

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public clearUpdateNotif(Landroid/content/Context;)V
    .locals 2

    const-string v1, "notification"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {p0}, Lcom/unityota/utils/BaseInfo;->getNotifID()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public downloadFileDialog(Landroid/content/Context;Lcom/unityota/utils/DownloadDialogCallback;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/unityota/utils/BaseInfo;->startDownload(Landroid/content/Context;)J

    move-result-wide v0

    invoke-static {p1, v0, v1, p2}, Lcom/unityota/DownloadBarFragment;->showDownloadingDialog(Landroid/content/Context;JLcom/unityota/utils/DownloadDialogCallback;)Landroid/app/Dialog;

    return-void
.end method

.method public abstract getDownloadAction()Ljava/lang/String;
.end method

.method protected abstract getDownloadDialogMessageStr()I
.end method

.method public abstract getDownloadDoneTitle()I
.end method

.method public abstract getDownloadFailedTitle()I
.end method

.method public getDownloadFile()Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/unityota/utils/BaseInfo;->getDownloadPathFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p0}, Lcom/unityota/utils/BaseInfo;->getDownloadFileName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getDownloadFileName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/unityota/utils/BaseInfo;->name:Ljava/lang/String;

    invoke-static {v1}, Lcom/unityota/utils/Utils;->sanitizeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "__"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/unityota/utils/BaseInfo;->version:Ljava/lang/String;

    invoke-static {v1}, Lcom/unityota/utils/Utils;->sanitizeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".zip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadFileUri()Landroid/net/Uri;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/unityota/utils/BaseInfo;->getDownloadFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getDownloadPathFile()Ljava/io/File;
.end method

.method protected abstract getDownloadSdPath()Ljava/lang/String;
.end method

.method protected abstract getDownloadingNotifTitle()I
.end method

.method public abstract getDownloadingTitle()I
.end method

.method public abstract getFailedNotifID()I
.end method

.method public abstract getFlashAction()Ljava/lang/String;
.end method

.method public abstract getFlashNotifID()I
.end method

.method protected abstract getNameKey()Ljava/lang/String;
.end method

.method public abstract getNotifAction()Ljava/lang/String;
.end method

.method protected abstract getNotifDetailsStr()I
.end method

.method protected abstract getNotifID()I
.end method

.method protected abstract getNotifTextStr()I
.end method

.method protected abstract getNotifTickerStr()I
.end method

.method protected abstract getPropDate()Ljava/util/Date;
.end method

.method protected abstract getPropVersion()Ljava/lang/String;
.end method

.method public getRecoveryFilePath()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/unityota/utils/PropUtils;->getRecoverySdPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/unityota/utils/BaseInfo;->getDownloadSdPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/unityota/utils/BaseInfo;->getDownloadFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract isDownloading(Landroid/content/Context;)Z
.end method

.method public isUpdate()Z
    .locals 4

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/unityota/utils/BaseInfo;->date:Ljava/util/Date;

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/unityota/utils/BaseInfo;->getPropDate()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v3, p0, Lcom/unityota/utils/BaseInfo;->date:Ljava/util/Date;

    invoke-virtual {v3, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/unityota/utils/BaseInfo;->version:Ljava/lang/String;

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/unityota/utils/BaseInfo;->getPropVersion()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/unityota/utils/BaseInfo;->version:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0
.end method

.method public putToSharedPrefs(Landroid/content/SharedPreferences$Editor;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/unityota/utils/BaseInfo;->getNameKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_info_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/unityota/utils/BaseInfo;->name:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/unityota/utils/BaseInfo;->getNameKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_info_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "version"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/unityota/utils/BaseInfo;->version:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/unityota/utils/BaseInfo;->getNameKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_info_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "changelog"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/unityota/utils/BaseInfo;->changelog:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/unityota/utils/BaseInfo;->getNameKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_info_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/unityota/utils/BaseInfo;->url:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/unityota/utils/BaseInfo;->getNameKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_info_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "md5"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/unityota/utils/BaseInfo;->md5:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/unityota/utils/BaseInfo;->getNameKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_info_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "date"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/unityota/utils/BaseInfo;->date:Ljava/util/Date;

    invoke-static {v1}, Lcom/unityota/utils/Utils;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public showChangelogDialog(Landroid/content/Context;Lcom/unityota/utils/DownloadDialogCallback;)V
    .locals 6

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f09000c

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/unityota/utils/BaseInfo;->version:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/unityota/utils/BaseInfo;->changelog:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f09003e

    new-instance v3, Lcom/unityota/utils/BaseInfo$6;

    invoke-direct {v3, p0, p1, p2}, Lcom/unityota/utils/BaseInfo$6;-><init>(Lcom/unityota/utils/BaseInfo;Landroid/content/Context;Lcom/unityota/utils/DownloadDialogCallback;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v2, 0x104

    new-instance v3, Lcom/unityota/utils/BaseInfo$7;

    invoke-direct {v3, p0}, Lcom/unityota/utils/BaseInfo$7;-><init>(Lcom/unityota/utils/BaseInfo;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    new-instance v2, Lcom/unityota/utils/BaseInfo$8;

    invoke-direct {v2, p0, p2, v1}, Lcom/unityota/utils/BaseInfo$8;-><init>(Lcom/unityota/utils/BaseInfo;Lcom/unityota/utils/DownloadDialogCallback;Landroid/app/AlertDialog;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    new-instance v2, Lcom/unityota/utils/BaseInfo$9;

    invoke-direct {v2, p0, p2, v1}, Lcom/unityota/utils/BaseInfo$9;-><init>(Lcom/unityota/utils/BaseInfo;Lcom/unityota/utils/DownloadDialogCallback;Landroid/app/AlertDialog;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public showUpdateDialog(Landroid/content/Context;Lcom/unityota/utils/DownloadDialogCallback;)V
    .locals 6

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f09001c

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/unityota/utils/BaseInfo;->getDownloadDialogMessageStr()I

    move-result v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/unityota/utils/BaseInfo;->name:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/unityota/utils/BaseInfo;->version:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f09003e

    new-instance v3, Lcom/unityota/utils/BaseInfo$1;

    invoke-direct {v3, p0, p1, p2}, Lcom/unityota/utils/BaseInfo$1;-><init>(Lcom/unityota/utils/BaseInfo;Landroid/content/Context;Lcom/unityota/utils/DownloadDialogCallback;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/unityota/utils/BaseInfo;->changelog:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f09000b

    new-instance v3, Lcom/unityota/utils/BaseInfo$2;

    invoke-direct {v3, p0, p1, p2}, Lcom/unityota/utils/BaseInfo$2;-><init>(Lcom/unityota/utils/BaseInfo;Landroid/content/Context;Lcom/unityota/utils/DownloadDialogCallback;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_0
    const/high16 v2, 0x104

    new-instance v3, Lcom/unityota/utils/BaseInfo$3;

    invoke-direct {v3, p0}, Lcom/unityota/utils/BaseInfo$3;-><init>(Lcom/unityota/utils/BaseInfo;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    new-instance v2, Lcom/unityota/utils/BaseInfo$4;

    invoke-direct {v2, p0, p2, v1}, Lcom/unityota/utils/BaseInfo$4;-><init>(Lcom/unityota/utils/BaseInfo;Lcom/unityota/utils/DownloadDialogCallback;Landroid/app/AlertDialog;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    new-instance v2, Lcom/unityota/utils/BaseInfo$5;

    invoke-direct {v2, p0, p2, v1}, Lcom/unityota/utils/BaseInfo$5;-><init>(Lcom/unityota/utils/BaseInfo;Lcom/unityota/utils/DownloadDialogCallback;Landroid/app/AlertDialog;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public showUpdateNotif(Landroid/content/Context;)V
    .locals 12

    const/high16 v7, 0x1000

    const/4 v11, 0x1

    const/4 v10, 0x0

    invoke-virtual {p0, p1}, Lcom/unityota/utils/BaseInfo;->isDownloading(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v3, Landroid/content/Intent;

    const-class v6, Lcom/unityota/unityotaActivity;

    invoke-direct {v3, p1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0}, Lcom/unityota/utils/BaseInfo;->getNotifAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v3}, Lcom/unityota/utils/BaseInfo;->addToIntent(Landroid/content/Intent;)V

    invoke-static {p1, v10, v3, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    new-instance v1, Landroid/content/Intent;

    const-class v6, Lcom/unityota/DownloadReceiver;

    invoke-direct {v1, p1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0}, Lcom/unityota/utils/BaseInfo;->getDownloadAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/unityota/utils/BaseInfo;->addToIntent(Landroid/content/Intent;)V

    invoke-static {p1, v10, v1, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v0, p1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    const v6, 0x7f090078

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {p0}, Lcom/unityota/utils/BaseInfo;->getNotifTickerStr()I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {p0}, Lcom/unityota/utils/BaseInfo;->getNotifTextStr()I

    move-result v6

    new-array v7, v11, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/unityota/utils/BaseInfo;->version:Ljava/lang/String;

    aput-object v8, v7, v10

    invoke-virtual {p1, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    const v6, 0x7f02002c

    invoke-virtual {v0, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    new-instance v6, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct {v6}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    invoke-virtual {p0}, Lcom/unityota/utils/BaseInfo;->getNotifDetailsStr()I

    move-result v7

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/unityota/utils/BaseInfo;->version:Ljava/lang/String;

    aput-object v9, v8, v10

    iget-object v9, p0, Lcom/unityota/utils/BaseInfo;->changelog:Ljava/lang/String;

    aput-object v9, v8, v11

    invoke-virtual {p1, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    const/4 v6, -0x1

    invoke-virtual {v0, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    const v6, 0x7f020019

    const v7, 0x7f09003e

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    const-string v6, "notification"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    invoke-virtual {p0}, Lcom/unityota/utils/BaseInfo;->getNotifID()I

    move-result v6

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0
.end method

.method public startDownload(Landroid/content/Context;)J
    .locals 9

    const/4 v8, 0x0

    invoke-static {p1}, Lcom/unityota/utils/Config;->getInstance(Landroid/content/Context;)Lcom/unityota/utils/Config;

    move-result-object v1

    new-instance v5, Landroid/app/DownloadManager$Request;

    iget-object v6, p0, Lcom/unityota/utils/BaseInfo;->url:Ljava/lang/String;

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    const-string v6, "User-Agent"

    const-string v7, "OTA Updater App"

    invoke-virtual {v5, v6, v7}, Landroid/app/DownloadManager$Request;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    invoke-virtual {p0}, Lcom/unityota/utils/BaseInfo;->getDownloadingNotifTitle()I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/DownloadManager$Request;->setTitle(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    invoke-virtual {p0}, Lcom/unityota/utils/BaseInfo;->getDownloadFileUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/DownloadManager$Request;->setDestinationUri(Landroid/net/Uri;)Landroid/app/DownloadManager$Request;

    invoke-virtual {v5, v8}, Landroid/app/DownloadManager$Request;->setAllowedOverRoaming(Z)Landroid/app/DownloadManager$Request;

    invoke-virtual {v5, v8}, Landroid/app/DownloadManager$Request;->setVisibleInDownloadsUi(Z)Landroid/app/DownloadManager$Request;

    const/4 v0, 0x2

    invoke-virtual {v1}, Lcom/unityota/utils/Config;->getWifiOnlyDl()Z

    move-result v6

    if-nez v6, :cond_0

    or-int/lit8 v0, v0, 0x1

    :cond_0
    invoke-virtual {v5, v0}, Landroid/app/DownloadManager$Request;->setAllowedNetworkTypes(I)Landroid/app/DownloadManager$Request;

    const-string v6, "download"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/DownloadManager;

    invoke-virtual {v2, v5}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    move-result-wide v3

    invoke-virtual {v1, p0, v3, v4}, Lcom/unityota/utils/Config;->storeDownloadID(Lcom/unityota/utils/BaseInfo;J)V

    invoke-static {}, Lcom/unityota/DownloadBarFragment;->notifyActiveFragment()V

    invoke-virtual {p0, p1}, Lcom/unityota/utils/BaseInfo;->clearUpdateNotif(Landroid/content/Context;)V

    return-wide v3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Lcom/unityota/utils/BaseInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unityota/utils/BaseInfo;->version:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unityota/utils/BaseInfo;->changelog:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unityota/utils/BaseInfo;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unityota/utils/BaseInfo;->md5:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unityota/utils/BaseInfo;->date:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
