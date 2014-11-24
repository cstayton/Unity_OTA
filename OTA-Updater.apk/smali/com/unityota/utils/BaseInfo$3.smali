.class Lcom/unityota/utils/BaseInfo$3;
.super Ljava/lang/Object;
.source "BaseInfo.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unityota/utils/BaseInfo;->showUpdateDialog(Landroid/content/Context;Lcom/unityota/utils/DownloadDialogCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unityota/utils/BaseInfo;


# direct methods
.method constructor <init>(Lcom/unityota/utils/BaseInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/unityota/utils/BaseInfo$3;->this$0:Lcom/unityota/utils/BaseInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
