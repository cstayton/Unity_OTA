.class Lcom/unityota/utils/UserUtils$3$1;
.super Ljava/lang/Object;
.source "UserUtils.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unityota/utils/UserUtils$3;->onShow(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unityota/utils/UserUtils$3;


# direct methods
.method constructor <init>(Lcom/unityota/utils/UserUtils$3;)V
    .locals 0

    iput-object p1, p0, Lcom/unityota/utils/UserUtils$3$1;->this$0:Lcom/unityota/utils/UserUtils$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    iget-object v2, p0, Lcom/unityota/utils/UserUtils$3$1;->this$0:Lcom/unityota/utils/UserUtils$3;

    iget-object v2, v2, Lcom/unityota/utils/UserUtils$3;->val$inputUsername:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/unityota/utils/UserUtils$3$1;->this$0:Lcom/unityota/utils/UserUtils$3;

    iget-object v2, v2, Lcom/unityota/utils/UserUtils$3;->val$inputPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/unityota/utils/UserUtils$3$1;->this$0:Lcom/unityota/utils/UserUtils$3;

    iget-object v2, v2, Lcom/unityota/utils/UserUtils$3;->val$ctx:Landroid/content/Context;

    const v3, 0x7f0900a8

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/unityota/utils/UserUtils$3$1;->this$0:Lcom/unityota/utils/UserUtils$3;

    iget-object v2, v2, Lcom/unityota/utils/UserUtils$3;->val$dlg:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    iget-object v2, p0, Lcom/unityota/utils/UserUtils$3$1;->this$0:Lcom/unityota/utils/UserUtils$3;

    iget-object v2, v2, Lcom/unityota/utils/UserUtils$3;->val$ctx:Landroid/content/Context;

    new-instance v3, Lcom/unityota/utils/UserUtils$3$1$1;

    iget-object v4, p0, Lcom/unityota/utils/UserUtils$3$1;->this$0:Lcom/unityota/utils/UserUtils$3;

    iget-object v4, v4, Lcom/unityota/utils/UserUtils$3;->val$ctx:Landroid/content/Context;

    iget-object v5, p0, Lcom/unityota/utils/UserUtils$3$1;->this$0:Lcom/unityota/utils/UserUtils$3;

    iget-object v5, v5, Lcom/unityota/utils/UserUtils$3;->val$ctx:Landroid/content/Context;

    const v6, 0x7f090010

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/unityota/utils/UserUtils$3$1;->this$0:Lcom/unityota/utils/UserUtils$3;

    iget-object v6, v6, Lcom/unityota/utils/UserUtils$3;->val$dlgCallback:Lcom/unityota/utils/DialogCallback;

    invoke-direct {v3, p0, v4, v5, v6}, Lcom/unityota/utils/UserUtils$3$1$1;-><init>(Lcom/unityota/utils/UserUtils$3$1;Landroid/content/Context;Ljava/lang/String;Lcom/unityota/utils/DialogCallback;)V

    invoke-static {v2, v1, v0, v3}, Lcom/unityota/utils/APIUtils;->userLogin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/unityota/utils/APIUtils$APICallback;)V

    goto :goto_0
.end method
