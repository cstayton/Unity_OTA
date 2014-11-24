.class public Lcom/unityota/DownloadListFragment;
.super Landroid/app/ListFragment;
.source "DownloadListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unityota/DownloadListFragment$FileInfo;
    }
.end annotation


# instance fields
.field private downloadsAct:Lcom/unityota/DownloadsActivity;

.field private fileAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/unityota/DownloadListFragment$FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final fileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/unityota/DownloadListFragment$FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private state:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/unityota/DownloadListFragment;->fileList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unityota/DownloadListFragment;->fileAdapter:Landroid/widget/ArrayAdapter;

    const/4 v0, 0x0

    iput v0, p0, Lcom/unityota/DownloadListFragment;->state:I

    return-void
.end method


# virtual methods
.method public getState()I
    .locals 1

    iget v0, p0, Lcom/unityota/DownloadListFragment;->state:I

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/ListFragment;->onAttach(Landroid/app/Activity;)V

    check-cast p1, Lcom/unityota/DownloadsActivity;

    iput-object p1, p0, Lcom/unityota/DownloadListFragment;->downloadsAct:Lcom/unityota/DownloadsActivity;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter

    const v0, 0x7f030004

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/unityota/DownloadListFragment;->fileAdapter:Landroid/widget/ArrayAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unityota/DownloadListFragment;->fileList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unityota/DownloadListFragment;->fileAdapter:Landroid/widget/ArrayAdapter;

    :cond_0
    invoke-super {p0}, Landroid/app/ListFragment;->onDestroy()V

    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 6

    iget-object v2, p0, Lcom/unityota/DownloadListFragment;->fileList:Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unityota/DownloadListFragment$FileInfo;

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/unityota/DownloadListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/unityota/DownloadListFragment$FileInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f02001e

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const v5, 0x7f09003d

    invoke-virtual {p0, v5}, Lcom/unityota/DownloadListFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    new-instance v4, Lcom/unityota/DownloadListFragment$1;

    invoke-direct {v4, p0, v1}, Lcom/unityota/DownloadListFragment$1;-><init>(Lcom/unityota/DownloadListFragment;Lcom/unityota/DownloadListFragment$FileInfo;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v2, Lcom/unityota/DownloadListFragment$2;

    invoke-direct {v2, p0, v0}, Lcom/unityota/DownloadListFragment$2;-><init>(Lcom/unityota/DownloadListFragment;Landroid/app/Dialog;)V

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    new-instance v2, Lcom/unityota/DownloadListFragment$3;

    invoke-direct {v2, p0, v0}, Lcom/unityota/DownloadListFragment$3;-><init>(Lcom/unityota/DownloadListFragment;Landroid/app/Dialog;)V

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    invoke-virtual {p0}, Lcom/unityota/DownloadListFragment;->updateFileList()V

    return-void
.end method

.method public setState(I)V
    .locals 3

    iput p1, p0, Lcom/unityota/DownloadListFragment;->state:I

    invoke-virtual {p0}, Lcom/unityota/DownloadListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getEmptyView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/unityota/DownloadListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/unityota/DownloadListFragment;->updateFileList()V

    return-void
.end method

.method protected updateFileList()V
    .locals 10

    iget v6, p0, Lcom/unityota/DownloadListFragment;->state:I

    if-nez v6, :cond_0

    sget-object v1, Lcom/unityota/utils/Config;->ROM_DL_PATH_FILE:Ljava/io/File;

    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    iget-object v6, p0, Lcom/unityota/DownloadListFragment;->fileList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    move-object v0, v3

    array-length v5, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v5, :cond_2

    aget-object v2, v0, v4

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_1

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    sget-object v1, Lcom/unityota/utils/Config;->KERNEL_DL_PATH_FILE:Ljava/io/File;

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lcom/unityota/DownloadListFragment;->fileList:Ljava/util/ArrayList;

    new-instance v7, Lcom/unityota/DownloadListFragment$FileInfo;

    invoke-direct {v7, p0, v2}, Lcom/unityota/DownloadListFragment$FileInfo;-><init>(Lcom/unityota/DownloadListFragment;Ljava/io/File;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    iget-object v6, p0, Lcom/unityota/DownloadListFragment;->fileAdapter:Landroid/widget/ArrayAdapter;

    if-nez v6, :cond_3

    new-instance v6, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/unityota/DownloadListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x7f030003

    iget-object v9, p0, Lcom/unityota/DownloadListFragment;->fileList:Ljava/util/ArrayList;

    invoke-direct {v6, v7, v8, v9}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v6, p0, Lcom/unityota/DownloadListFragment;->fileAdapter:Landroid/widget/ArrayAdapter;

    iget-object v6, p0, Lcom/unityota/DownloadListFragment;->fileAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p0, v6}, Lcom/unityota/DownloadListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    :goto_3
    return-void

    :cond_3
    iget-object v6, p0, Lcom/unityota/DownloadListFragment;->fileAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v6}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    goto :goto_3
.end method
