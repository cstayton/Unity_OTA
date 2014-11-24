.class Lcom/unityota/DownloadsActivity$2;
.super Ljava/lang/Object;
.source "DownloadsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unityota/DownloadsActivity;->showFlashDialog(Lcom/unityota/utils/BaseInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unityota/DownloadsActivity;

.field final synthetic val$info:Lcom/unityota/utils/BaseInfo;

.field final synthetic val$selectedOpts:[Z


# direct methods
.method constructor <init>(Lcom/unityota/DownloadsActivity;Lcom/unityota/utils/BaseInfo;[Z)V
    .locals 0

    iput-object p1, p0, Lcom/unityota/DownloadsActivity$2;->this$0:Lcom/unityota/DownloadsActivity;

    iput-object p2, p0, Lcom/unityota/DownloadsActivity$2;->val$info:Lcom/unityota/utils/BaseInfo;

    iput-object p3, p0, Lcom/unityota/DownloadsActivity$2;->val$selectedOpts:[Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/unityota/DownloadsActivity$2;->this$0:Lcom/unityota/DownloadsActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f09000f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f09000e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f090060

    new-instance v2, Lcom/unityota/DownloadsActivity$2$1;

    invoke-direct {v2, p0}, Lcom/unityota/DownloadsActivity$2$1;-><init>(Lcom/unityota/DownloadsActivity$2;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v1, 0x104

    new-instance v2, Lcom/unityota/DownloadsActivity$2$2;

    invoke-direct {v2, p0}, Lcom/unityota/DownloadsActivity$2$2;-><init>(Lcom/unityota/DownloadsActivity$2;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
