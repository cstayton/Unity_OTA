.class Lcom/unityota/DownloadBarFragment$1;
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

    iput-object p1, p0, Lcom/unityota/DownloadBarFragment$1;->this$0:Lcom/unityota/DownloadBarFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/unityota/DownloadBarFragment$1;->this$0:Lcom/unityota/DownloadBarFragment;

    iget-object v1, p0, Lcom/unityota/DownloadBarFragment$1;->this$0:Lcom/unityota/DownloadBarFragment;

    #getter for: Lcom/unityota/DownloadBarFragment;->cfg:Lcom/unityota/utils/Config;
    invoke-static {v1}, Lcom/unityota/DownloadBarFragment;->access$100(Lcom/unityota/DownloadBarFragment;)Lcom/unityota/utils/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unityota/utils/Config;->getRomDownloadID()J

    move-result-wide v1

    #calls: Lcom/unityota/DownloadBarFragment;->showDownloadingDialog(J)Landroid/app/Dialog;
    invoke-static {v0, v1, v2}, Lcom/unityota/DownloadBarFragment;->access$200(Lcom/unityota/DownloadBarFragment;J)Landroid/app/Dialog;

    return-void
.end method
