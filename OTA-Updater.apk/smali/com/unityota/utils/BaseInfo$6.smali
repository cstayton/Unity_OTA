.class Lcom/unityota/utils/BaseInfo$6;
.super Ljava/lang/Object;
.source "BaseInfo.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$ctx:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/unityota/utils/BaseInfo;Landroid/content/Context;Lcom/unityota/utils/DownloadDialogCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/unityota/utils/BaseInfo$6;->this$0:Lcom/unityota/utils/BaseInfo;

    iput-object p2, p0, Lcom/unityota/utils/BaseInfo$6;->val$ctx:Landroid/content/Context;

    iput-object p3, p0, Lcom/unityota/utils/BaseInfo$6;->val$callback:Lcom/unityota/utils/DownloadDialogCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/unityota/utils/BaseInfo$6;->this$0:Lcom/unityota/utils/BaseInfo;

    iget-object v1, p0, Lcom/unityota/utils/BaseInfo$6;->val$ctx:Landroid/content/Context;

    iget-object v2, p0, Lcom/unityota/utils/BaseInfo$6;->val$callback:Lcom/unityota/utils/DownloadDialogCallback;

    invoke-virtual {v0, v1, v2}, Lcom/unityota/utils/BaseInfo;->downloadFileDialog(Landroid/content/Context;Lcom/unityota/utils/DownloadDialogCallback;)V

    return-void
.end method
