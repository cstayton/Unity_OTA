.class Lcom/unityota/KernelTab$1;
.super Lcom/unityota/utils/BaseInfo$InfoLoadAdapter;
.source "KernelTab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unityota/KernelTab;->checkForKernelUpdates()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/unityota/utils/BaseInfo$InfoLoadAdapter",
        "<",
        "Lcom/unityota/utils/KernelInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unityota/KernelTab;


# direct methods
.method constructor <init>(Lcom/unityota/KernelTab;Ljava/lang/Class;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/unityota/KernelTab$1;->this$0:Lcom/unityota/KernelTab;

    invoke-direct {p0, p2, p3}, Lcom/unityota/utils/BaseInfo$InfoLoadAdapter;-><init>(Ljava/lang/Class;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onComplete(Z)V
    .locals 2

    iget-object v0, p0, Lcom/unityota/KernelTab$1;->this$0:Lcom/unityota/KernelTab;

    const/4 v1, 0x0

    #setter for: Lcom/unityota/KernelTab;->fetching:Z
    invoke-static {v0, v1}, Lcom/unityota/KernelTab;->access$002(Lcom/unityota/KernelTab;Z)Z

    return-void
.end method

.method public onError(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/unityota/KernelTab$1;->this$0:Lcom/unityota/KernelTab;

    iget-object v1, p0, Lcom/unityota/KernelTab$1;->this$0:Lcom/unityota/KernelTab;

    const v2, 0x7f0900b1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/unityota/KernelTab;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/unityota/KernelTab;->setUpdateSummary(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/unityota/KernelTab;->access$200(Lcom/unityota/KernelTab;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unityota/KernelTab$1;->this$0:Lcom/unityota/KernelTab;

    invoke-virtual {v0}, Lcom/unityota/KernelTab;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/unityota/KernelTab$1;->this$0:Lcom/unityota/KernelTab;

    const v2, 0x7f0900af

    invoke-virtual {v1, v2}, Lcom/unityota/KernelTab;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_1
    invoke-static {v0, p1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public bridge synthetic onInfoLoaded(Lcom/unityota/utils/BaseInfo;)V
    .locals 0

    check-cast p1, Lcom/unityota/utils/KernelInfo;

    invoke-virtual {p0, p1}, Lcom/unityota/KernelTab$1;->onInfoLoaded(Lcom/unityota/utils/KernelInfo;)V

    return-void
.end method

.method public onInfoLoaded(Lcom/unityota/utils/KernelInfo;)V
    .locals 2

    iget-object v1, p0, Lcom/unityota/KernelTab$1;->this$0:Lcom/unityota/KernelTab;

    invoke-virtual {v1, p1}, Lcom/unityota/KernelTab;->updateStatus(Lcom/unityota/utils/KernelInfo;)V

    iget-object v1, p0, Lcom/unityota/KernelTab$1;->this$0:Lcom/unityota/KernelTab;

    invoke-virtual {v1}, Lcom/unityota/KernelTab;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1}, Lcom/unityota/utils/KernelInfo;->isUpdate()Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, v0, Lcom/unityota/utils/DownloadDialogCallback;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/unityota/utils/DownloadDialogCallback;

    :goto_0
    invoke-virtual {p1, v0, v1}, Lcom/unityota/utils/KernelInfo;->showUpdateDialog(Landroid/content/Context;Lcom/unityota/utils/DownloadDialogCallback;)V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onStart(Lcom/unityota/utils/APIUtils$APITask;)V
    .locals 2

    iget-object v0, p0, Lcom/unityota/KernelTab$1;->this$0:Lcom/unityota/KernelTab;

    const/4 v1, 0x1

    #setter for: Lcom/unityota/KernelTab;->fetching:Z
    invoke-static {v0, v1}, Lcom/unityota/KernelTab;->access$002(Lcom/unityota/KernelTab;Z)Z

    iget-object v0, p0, Lcom/unityota/KernelTab$1;->this$0:Lcom/unityota/KernelTab;

    const v1, 0x7f0900b3

    #calls: Lcom/unityota/KernelTab;->setUpdateSummary(I)V
    invoke-static {v0, v1}, Lcom/unityota/KernelTab;->access$100(Lcom/unityota/KernelTab;I)V

    return-void
.end method
