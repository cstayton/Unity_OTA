.class Lcom/unityota/DownloadListFragment$2;
.super Ljava/lang/Object;
.source "DownloadListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


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

.field final synthetic val$dlg:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/unityota/DownloadListFragment;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lcom/unityota/DownloadListFragment$2;->this$0:Lcom/unityota/DownloadListFragment;

    iput-object p2, p0, Lcom/unityota/DownloadListFragment$2;->val$dlg:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/unityota/DownloadListFragment$2;->this$0:Lcom/unityota/DownloadListFragment;

    invoke-virtual {v0}, Lcom/unityota/DownloadListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/unityota/utils/DialogCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unityota/DownloadListFragment$2;->this$0:Lcom/unityota/DownloadListFragment;

    invoke-virtual {v0}, Lcom/unityota/DownloadListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/unityota/utils/DialogCallback;

    iget-object v1, p0, Lcom/unityota/DownloadListFragment$2;->val$dlg:Landroid/app/Dialog;

    invoke-interface {v0, v1}, Lcom/unityota/utils/DialogCallback;->onDialogShown(Landroid/app/Dialog;)V

    :cond_0
    return-void
.end method
