.class Lcom/unityota/DownloadsActivity$7;
.super Ljava/lang/Object;
.source "DownloadsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unityota/DownloadsActivity;->showNoFlashDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unityota/DownloadsActivity;

.field final synthetic val$dlg:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/unityota/DownloadsActivity;Landroid/app/AlertDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/unityota/DownloadsActivity$7;->this$0:Lcom/unityota/DownloadsActivity;

    iput-object p2, p0, Lcom/unityota/DownloadsActivity$7;->val$dlg:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/unityota/DownloadsActivity$7;->this$0:Lcom/unityota/DownloadsActivity;

    iget-object v1, p0, Lcom/unityota/DownloadsActivity$7;->val$dlg:Landroid/app/AlertDialog;

    invoke-virtual {v0, v1}, Lcom/unityota/DownloadsActivity;->onDialogShown(Landroid/app/Dialog;)V

    return-void
.end method
