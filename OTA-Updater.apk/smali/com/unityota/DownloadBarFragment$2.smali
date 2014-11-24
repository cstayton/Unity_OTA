.class Lcom/unityota/DownloadBarFragment$2;
.super Ljava/lang/Object;
.source "DownloadBarFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unityota/DownloadBarFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unityota/DownloadBarFragment;


# direct methods
.method constructor <init>(Lcom/unityota/DownloadBarFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/unityota/DownloadBarFragment$2;->this$0:Lcom/unityota/DownloadBarFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/unityota/DownloadBarFragment$2;->this$0:Lcom/unityota/DownloadBarFragment;

    #getter for: Lcom/unityota/DownloadBarFragment;->cfg:Lcom/unityota/utils/Config;
    invoke-static {v0}, Lcom/unityota/DownloadBarFragment;->access$100(Lcom/unityota/DownloadBarFragment;)Lcom/unityota/utils/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unityota/utils/Config;->isDownloadingRom()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/unityota/DownloadBarFragment$2;->this$0:Lcom/unityota/DownloadBarFragment;

    #getter for: Lcom/unityota/DownloadBarFragment;->dm:Landroid/app/DownloadManager;
    invoke-static {v0}, Lcom/unityota/DownloadBarFragment;->access$300(Lcom/unityota/DownloadBarFragment;)Landroid/app/DownloadManager;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [J

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/unityota/DownloadBarFragment$2;->this$0:Lcom/unityota/DownloadBarFragment;

    #getter for: Lcom/unityota/DownloadBarFragment;->cfg:Lcom/unityota/utils/Config;
    invoke-static {v3}, Lcom/unityota/DownloadBarFragment;->access$100(Lcom/unityota/DownloadBarFragment;)Lcom/unityota/utils/Config;

    move-result-object v3

    invoke-virtual {v3}, Lcom/unityota/utils/Config;->getRomDownloadID()J

    move-result-wide v3

    aput-wide v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager;->remove([J)I

    iget-object v0, p0, Lcom/unityota/DownloadBarFragment$2;->this$0:Lcom/unityota/DownloadBarFragment;

    #getter for: Lcom/unityota/DownloadBarFragment;->cfg:Lcom/unityota/utils/Config;
    invoke-static {v0}, Lcom/unityota/DownloadBarFragment;->access$100(Lcom/unityota/DownloadBarFragment;)Lcom/unityota/utils/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unityota/utils/Config;->clearDownloadingRom()V

    iget-object v0, p0, Lcom/unityota/DownloadBarFragment$2;->this$0:Lcom/unityota/DownloadBarFragment;

    #calls: Lcom/unityota/DownloadBarFragment;->updateStatus()V
    invoke-static {v0}, Lcom/unityota/DownloadBarFragment;->access$000(Lcom/unityota/DownloadBarFragment;)V

    goto :goto_0
.end method
