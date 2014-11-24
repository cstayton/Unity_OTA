.class Lcom/unityota/DownloadBarFragment$RefreshHandler;
.super Landroid/os/Handler;
.source "DownloadBarFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unityota/DownloadBarFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RefreshHandler"
.end annotation


# instance fields
.field private final fragment:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/unityota/DownloadBarFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/unityota/DownloadBarFragment;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/unityota/DownloadBarFragment$RefreshHandler;->fragment:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/unityota/DownloadBarFragment$RefreshHandler;->fragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unityota/DownloadBarFragment;

    #calls: Lcom/unityota/DownloadBarFragment;->updateStatus()V
    invoke-static {v0}, Lcom/unityota/DownloadBarFragment;->access$000(Lcom/unityota/DownloadBarFragment;)V

    return-void
.end method
