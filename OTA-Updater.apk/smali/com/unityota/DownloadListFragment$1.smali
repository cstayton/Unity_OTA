.class Lcom/unityota/DownloadListFragment$1;
.super Ljava/lang/Object;
.source "DownloadListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unityota/DownloadListFragment;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unityota/DownloadListFragment;

.field final synthetic val$info:Lcom/unityota/DownloadListFragment$FileInfo;


# direct methods
.method constructor <init>(Lcom/unityota/DownloadListFragment;Lcom/unityota/DownloadListFragment$FileInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/unityota/DownloadListFragment$1;->this$0:Lcom/unityota/DownloadListFragment;

    iput-object p2, p0, Lcom/unityota/DownloadListFragment$1;->val$info:Lcom/unityota/DownloadListFragment$FileInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v2, 0x0

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/unityota/DownloadListFragment$1;->val$info:Lcom/unityota/DownloadListFragment$FileInfo;

    #getter for: Lcom/unityota/DownloadListFragment$FileInfo;->file:Ljava/io/File;
    invoke-static {v0}, Lcom/unityota/DownloadListFragment$FileInfo;->access$000(Lcom/unityota/DownloadListFragment$FileInfo;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unityota/DownloadListFragment$1;->this$0:Lcom/unityota/DownloadListFragment;

    invoke-virtual {v0}, Lcom/unityota/DownloadListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0900a9

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_1
    iget-object v0, p0, Lcom/unityota/DownloadListFragment$1;->this$0:Lcom/unityota/DownloadListFragment;

    invoke-virtual {v0}, Lcom/unityota/DownloadListFragment;->updateFileList()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/unityota/DownloadListFragment$1;->this$0:Lcom/unityota/DownloadListFragment;

    invoke-virtual {v0}, Lcom/unityota/DownloadListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0900aa

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
