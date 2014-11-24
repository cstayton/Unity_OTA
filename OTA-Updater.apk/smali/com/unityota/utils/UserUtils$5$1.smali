.class Lcom/unityota/utils/UserUtils$5$1;
.super Lcom/unityota/utils/APIUtils$APIAdapter;
.source "UserUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unityota/utils/UserUtils$5;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unityota/utils/UserUtils$5;


# direct methods
.method constructor <init>(Lcom/unityota/utils/UserUtils$5;)V
    .locals 0

    iput-object p1, p0, Lcom/unityota/utils/UserUtils$5$1;->this$0:Lcom/unityota/utils/UserUtils$5;

    invoke-direct {p0}, Lcom/unityota/utils/APIUtils$APIAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    iget-object v0, p0, Lcom/unityota/utils/UserUtils$5$1;->this$0:Lcom/unityota/utils/UserUtils$5;

    iget-object v0, v0, Lcom/unityota/utils/UserUtils$5;->val$cfg:Lcom/unityota/utils/Config;

    invoke-virtual {v0}, Lcom/unityota/utils/Config;->clearLogin()V

    return-void
.end method
