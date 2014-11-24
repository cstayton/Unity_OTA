.class Lcom/unityota/DownloadsActivity$2$1;
.super Ljava/lang/Object;
.source "DownloadsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unityota/DownloadsActivity$2;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/unityota/DownloadsActivity$2;


# direct methods
.method constructor <init>(Lcom/unityota/DownloadsActivity$2;)V
    .locals 0

    iput-object p1, p0, Lcom/unityota/DownloadsActivity$2$1;->this$1:Lcom/unityota/DownloadsActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    const/4 v5, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/unityota/DownloadsActivity$2$1;->this$1:Lcom/unityota/DownloadsActivity$2;

    iget-object v0, v0, Lcom/unityota/DownloadsActivity$2;->this$0:Lcom/unityota/DownloadsActivity;

    new-array v1, v5, [Ljava/lang/String;

    iget-object v2, p0, Lcom/unityota/DownloadsActivity$2$1;->this$1:Lcom/unityota/DownloadsActivity$2;

    iget-object v2, v2, Lcom/unityota/DownloadsActivity$2;->val$info:Lcom/unityota/utils/BaseInfo;

    invoke-virtual {v2}, Lcom/unityota/utils/BaseInfo;->getRecoveryFilePath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/unityota/DownloadsActivity$2$1;->this$1:Lcom/unityota/DownloadsActivity$2;

    iget-object v2, v2, Lcom/unityota/DownloadsActivity$2;->val$selectedOpts:[Z

    aget-boolean v2, v2, v3

    iget-object v3, p0, Lcom/unityota/DownloadsActivity$2$1;->this$1:Lcom/unityota/DownloadsActivity$2;

    iget-object v3, v3, Lcom/unityota/DownloadsActivity$2;->val$selectedOpts:[Z

    const/4 v4, 0x2

    aget-boolean v3, v3, v4

    iget-object v4, p0, Lcom/unityota/DownloadsActivity$2$1;->this$1:Lcom/unityota/DownloadsActivity$2;

    iget-object v4, v4, Lcom/unityota/DownloadsActivity$2;->val$selectedOpts:[Z

    aget-boolean v4, v4, v5

    #calls: Lcom/unityota/DownloadsActivity;->flashFiles([Ljava/lang/String;ZZZ)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/unityota/DownloadsActivity;->access$000(Lcom/unityota/DownloadsActivity;[Ljava/lang/String;ZZZ)V

    return-void
.end method
