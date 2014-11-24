.class final Lcom/unityota/utils/UserUtils$3;
.super Ljava/lang/Object;
.source "UserUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unityota/utils/UserUtils;->showLoginDialog(Landroid/content/Context;Ljava/lang/String;Lcom/unityota/utils/DialogCallback;Lcom/unityota/utils/UserUtils$LoginCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$ctx:Landroid/content/Context;

.field final synthetic val$dlg:Landroid/app/AlertDialog;

.field final synthetic val$dlgCallback:Lcom/unityota/utils/DialogCallback;

.field final synthetic val$inputPassword:Landroid/widget/EditText;

.field final synthetic val$inputUsername:Landroid/widget/EditText;

.field final synthetic val$loginCallback:Lcom/unityota/utils/UserUtils$LoginCallback;


# direct methods
.method constructor <init>(Lcom/unityota/utils/DialogCallback;Landroid/app/AlertDialog;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/content/Context;Lcom/unityota/utils/UserUtils$LoginCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/unityota/utils/UserUtils$3;->val$dlgCallback:Lcom/unityota/utils/DialogCallback;

    iput-object p2, p0, Lcom/unityota/utils/UserUtils$3;->val$dlg:Landroid/app/AlertDialog;

    iput-object p3, p0, Lcom/unityota/utils/UserUtils$3;->val$inputUsername:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/unityota/utils/UserUtils$3;->val$inputPassword:Landroid/widget/EditText;

    iput-object p5, p0, Lcom/unityota/utils/UserUtils$3;->val$ctx:Landroid/content/Context;

    iput-object p6, p0, Lcom/unityota/utils/UserUtils$3;->val$loginCallback:Lcom/unityota/utils/UserUtils$LoginCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 3

    iget-object v1, p0, Lcom/unityota/utils/UserUtils$3;->val$dlgCallback:Lcom/unityota/utils/DialogCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/unityota/utils/UserUtils$3;->val$dlgCallback:Lcom/unityota/utils/DialogCallback;

    iget-object v2, p0, Lcom/unityota/utils/UserUtils$3;->val$dlg:Landroid/app/AlertDialog;

    invoke-interface {v1, v2}, Lcom/unityota/utils/DialogCallback;->onDialogShown(Landroid/app/Dialog;)V

    :cond_0
    iget-object v1, p0, Lcom/unityota/utils/UserUtils$3;->val$dlg:Landroid/app/AlertDialog;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance v1, Lcom/unityota/utils/UserUtils$3$1;

    invoke-direct {v1, p0}, Lcom/unityota/utils/UserUtils$3$1;-><init>(Lcom/unityota/utils/UserUtils$3;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method
