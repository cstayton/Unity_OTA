.class Lcom/unityota/utils/APIUtils$ProgressDialogAPICallback$1;
.super Ljava/lang/Object;
.source "APIUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unityota/utils/APIUtils$ProgressDialogAPICallback;->onStart(Lcom/unityota/utils/APIUtils$APITask;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unityota/utils/APIUtils$ProgressDialogAPICallback;

.field final synthetic val$task:Lcom/unityota/utils/APIUtils$APITask;


# direct methods
.method constructor <init>(Lcom/unityota/utils/APIUtils$ProgressDialogAPICallback;Lcom/unityota/utils/APIUtils$APITask;)V
    .locals 0

    iput-object p1, p0, Lcom/unityota/utils/APIUtils$ProgressDialogAPICallback$1;->this$0:Lcom/unityota/utils/APIUtils$ProgressDialogAPICallback;

    iput-object p2, p0, Lcom/unityota/utils/APIUtils$ProgressDialogAPICallback$1;->val$task:Lcom/unityota/utils/APIUtils$APITask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/unityota/utils/APIUtils$ProgressDialogAPICallback$1;->this$0:Lcom/unityota/utils/APIUtils$ProgressDialogAPICallback;

    #getter for: Lcom/unityota/utils/APIUtils$ProgressDialogAPICallback;->dlgCallback:Lcom/unityota/utils/DialogCallback;
    invoke-static {v0}, Lcom/unityota/utils/APIUtils$ProgressDialogAPICallback;->access$100(Lcom/unityota/utils/APIUtils$ProgressDialogAPICallback;)Lcom/unityota/utils/DialogCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unityota/utils/APIUtils$ProgressDialogAPICallback$1;->this$0:Lcom/unityota/utils/APIUtils$ProgressDialogAPICallback;

    #getter for: Lcom/unityota/utils/APIUtils$ProgressDialogAPICallback;->dlgCallback:Lcom/unityota/utils/DialogCallback;
    invoke-static {v0}, Lcom/unityota/utils/APIUtils$ProgressDialogAPICallback;->access$100(Lcom/unityota/utils/APIUtils$ProgressDialogAPICallback;)Lcom/unityota/utils/DialogCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/unityota/utils/APIUtils$ProgressDialogAPICallback$1;->this$0:Lcom/unityota/utils/APIUtils$ProgressDialogAPICallback;

    #getter for: Lcom/unityota/utils/APIUtils$ProgressDialogAPICallback;->dlg:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/unityota/utils/APIUtils$ProgressDialogAPICallback;->access$200(Lcom/unityota/utils/APIUtils$ProgressDialogAPICallback;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/unityota/utils/DialogCallback;->onDialogClosed(Landroid/app/Dialog;)V

    :cond_0
    iget-object v0, p0, Lcom/unityota/utils/APIUtils$ProgressDialogAPICallback$1;->val$task:Lcom/unityota/utils/APIUtils$APITask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/unityota/utils/APIUtils$APITask;->cancel(Z)Z

    return-void
.end method
