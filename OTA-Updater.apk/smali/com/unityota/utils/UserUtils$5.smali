.class final Lcom/unityota/utils/UserUtils$5;
.super Ljava/lang/Object;
.source "UserUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unityota/utils/UserUtils;->showAccountDialog(Landroid/content/Context;Lcom/unityota/utils/DialogCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$cfg:Lcom/unityota/utils/Config;

.field final synthetic val$ctx:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/unityota/utils/Config;)V
    .locals 0

    iput-object p1, p0, Lcom/unityota/utils/UserUtils$5;->val$ctx:Landroid/content/Context;

    iput-object p2, p0, Lcom/unityota/utils/UserUtils$5;->val$cfg:Lcom/unityota/utils/Config;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/unityota/utils/UserUtils$5;->val$ctx:Landroid/content/Context;

    new-instance v1, Lcom/unityota/utils/UserUtils$5$1;

    invoke-direct {v1, p0}, Lcom/unityota/utils/UserUtils$5$1;-><init>(Lcom/unityota/utils/UserUtils$5;)V

    invoke-static {v0, v1}, Lcom/unityota/utils/APIUtils;->userLogout(Landroid/content/Context;Lcom/unityota/utils/APIUtils$APICallback;)V

    return-void
.end method
