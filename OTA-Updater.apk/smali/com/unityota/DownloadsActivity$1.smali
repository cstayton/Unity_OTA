.class Lcom/unityota/DownloadsActivity$1;
.super Ljava/lang/Object;
.source "DownloadsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


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

.field final synthetic val$selectedOpts:[Z


# direct methods
.method constructor <init>(Lcom/unityota/DownloadsActivity;[Z)V
    .locals 0

    iput-object p1, p0, Lcom/unityota/DownloadsActivity$1;->this$0:Lcom/unityota/DownloadsActivity;

    iput-object p2, p0, Lcom/unityota/DownloadsActivity$1;->val$selectedOpts:[Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 1

    iget-object v0, p0, Lcom/unityota/DownloadsActivity$1;->val$selectedOpts:[Z

    aput-boolean p3, v0, p2

    return-void
.end method
