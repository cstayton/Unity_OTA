.class final Lcom/unityota/utils/UserUtils$2;
.super Ljava/lang/Object;
.source "UserUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unityota/utils/UserUtils;->showLoginDialog(Landroid/content/Context;Ljava/lang/String;Lcom/unityota/utils/DialogCallback;Lcom/unityota/utils/UserUtils$LoginCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$loginCallback:Lcom/unityota/utils/UserUtils$LoginCallback;


# direct methods
.method constructor <init>(Lcom/unityota/utils/UserUtils$LoginCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/unityota/utils/UserUtils$2;->val$loginCallback:Lcom/unityota/utils/UserUtils$LoginCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/unityota/utils/UserUtils$2;->val$loginCallback:Lcom/unityota/utils/UserUtils$LoginCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unityota/utils/UserUtils$2;->val$loginCallback:Lcom/unityota/utils/UserUtils$LoginCallback;

    invoke-interface {v0}, Lcom/unityota/utils/UserUtils$LoginCallback;->onCancel()V

    :cond_0
    return-void
.end method
