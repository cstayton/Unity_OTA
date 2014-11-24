.class public abstract Lcom/unityota/utils/BaseDownloadDialogActivity;
.super Lcom/unityota/utils/BaseDialogActivity;
.source "BaseDownloadDialogActivity.java"

# interfaces
.implements Lcom/unityota/utils/DownloadDialogCallback;


# static fields
.field private static final KEY_DOWNLOAD_ID:Ljava/lang/String; = "downloadID"


# instance fields
.field protected dialogDownloadID:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/unityota/utils/BaseDialogActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unityota/utils/BaseDownloadDialogActivity;->dialogDownloadID:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public onDownloadDialogClosed(JLandroid/app/Dialog;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unityota/utils/BaseDownloadDialogActivity;->dialogDownloadID:Ljava/lang/Long;

    return-void
.end method

.method public onDownloadDialogShown(JLandroid/app/Dialog;)V
    .locals 1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/unityota/utils/BaseDownloadDialogActivity;->dialogDownloadID:Ljava/lang/Long;

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    invoke-super {p0, p1}, Lcom/unityota/utils/BaseDialogActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v0, "downloadID"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "downloadID"

    const-wide/16 v1, -0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {p0, v0, v1, p0}, Lcom/unityota/DownloadBarFragment;->showDownloadingDialog(Landroid/content/Context;JLcom/unityota/utils/DownloadDialogCallback;)Landroid/app/Dialog;

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    invoke-super {p0, p1}, Lcom/unityota/utils/BaseDialogActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/unityota/utils/BaseDownloadDialogActivity;->dialogDownloadID:Ljava/lang/Long;

    if-eqz v0, :cond_0

    const-string v0, "downloadID"

    iget-object v1, p0, Lcom/unityota/utils/BaseDownloadDialogActivity;->dialogDownloadID:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method
