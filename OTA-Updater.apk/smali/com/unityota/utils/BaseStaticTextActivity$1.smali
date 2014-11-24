.class Lcom/unityota/utils/BaseStaticTextActivity$1;
.super Landroid/webkit/WebViewClient;
.source "BaseStaticTextActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unityota/utils/BaseStaticTextActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unityota/utils/BaseStaticTextActivity;


# direct methods
.method constructor <init>(Lcom/unityota/utils/BaseStaticTextActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/unityota/utils/BaseStaticTextActivity$1;->this$0:Lcom/unityota/utils/BaseStaticTextActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/unityota/utils/BaseStaticTextActivity$1;->this$0:Lcom/unityota/utils/BaseStaticTextActivity;

    invoke-virtual {v0, p1}, Lcom/unityota/utils/BaseStaticTextActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method
