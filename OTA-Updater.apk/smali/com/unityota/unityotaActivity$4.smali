.class Lcom/unityota/unityotaActivity$4;
.super Ljava/lang/Object;
.source "unityotaActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unityota/unityotaActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unityota/unityotaActivity;

.field final synthetic val$nodata:Z


# direct methods
.method constructor <init>(Lcom/unityota/unityotaActivity;Z)V
    .locals 0

    iput-object p1, p0, Lcom/unityota/unityotaActivity$4;->this$0:Lcom/unityota/unityotaActivity;

    iput-boolean p2, p0, Lcom/unityota/unityotaActivity$4;->val$nodata:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/unityota/unityotaActivity$4;->val$nodata:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unityota/unityotaActivity$4;->this$0:Lcom/unityota/unityotaActivity;

    #getter for: Lcom/unityota/unityotaActivity;->cfg:Lcom/unityota/utils/Config;
    invoke-static {v0}, Lcom/unityota/unityotaActivity;->access$100(Lcom/unityota/unityotaActivity;)Lcom/unityota/utils/Config;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/unityota/utils/Config;->setIgnoredDataWarn(Z)V

    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/unityota/unityotaActivity$4;->this$0:Lcom/unityota/unityotaActivity;

    #getter for: Lcom/unityota/unityotaActivity;->cfg:Lcom/unityota/utils/Config;
    invoke-static {v0}, Lcom/unityota/unityotaActivity;->access$100(Lcom/unityota/unityotaActivity;)Lcom/unityota/utils/Config;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/unityota/utils/Config;->setIgnoredWifiWarn(Z)V

    goto :goto_0
.end method
