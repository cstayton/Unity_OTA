.class Lcom/unityota/utils/BaseInfo$9;
.super Ljava/lang/Object;
.source "BaseInfo.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unityota/utils/BaseInfo;->showChangelogDialog(Landroid/content/Context;Lcom/unityota/utils/DownloadDialogCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unityota/utils/BaseInfo;

.field final synthetic val$callback:Lcom/unityota/utils/DownloadDialogCallback;

.field final synthetic val$dlg:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/unityota/utils/BaseInfo;Lcom/unityota/utils/DownloadDialogCallback;Landroid/app/AlertDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/unityota/utils/BaseInfo$9;->this$0:Lcom/unityota/utils/BaseInfo;

    iput-object p2, p0, Lcom/unityota/utils/BaseInfo$9;->val$callback:Lcom/unityota/utils/DownloadDialogCallback;

    iput-object p3, p0, Lcom/unityota/utils/BaseInfo$9;->val$dlg:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/unityota/utils/BaseInfo$9;->val$callback:Lcom/unityota/utils/DownloadDialogCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unityota/utils/BaseInfo$9;->val$callback:Lcom/unityota/utils/DownloadDialogCallback;

    iget-object v1, p0, Lcom/unityota/utils/BaseInfo$9;->val$dlg:Landroid/app/AlertDialog;

    invoke-interface {v0, v1}, Lcom/unityota/utils/DownloadDialogCallback;->onDialogClosed(Landroid/app/Dialog;)V

    :cond_0
    return-void
.end method
