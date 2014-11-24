.class Lcom/unityota/CheckinReceiver$1;
.super Lcom/unityota/utils/BaseInfo$InfoLoadAdapter;
.source "CheckinReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unityota/CheckinReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/unityota/utils/BaseInfo$InfoLoadAdapter",
        "<",
        "Lcom/unityota/utils/RomInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unityota/CheckinReceiver;

.field final synthetic val$romWL:Landroid/os/PowerManager$WakeLock;


# direct methods
.method constructor <init>(Lcom/unityota/CheckinReceiver;Ljava/lang/Class;Landroid/content/Context;Landroid/os/PowerManager$WakeLock;)V
    .locals 0

    iput-object p1, p0, Lcom/unityota/CheckinReceiver$1;->this$0:Lcom/unityota/CheckinReceiver;

    iput-object p4, p0, Lcom/unityota/CheckinReceiver$1;->val$romWL:Landroid/os/PowerManager$WakeLock;

    invoke-direct {p0, p2, p3}, Lcom/unityota/utils/BaseInfo$InfoLoadAdapter;-><init>(Ljava/lang/Class;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onComplete(Z)V
    .locals 1

    iget-object v0, p0, Lcom/unityota/CheckinReceiver$1;->val$romWL:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void
.end method

.method public bridge synthetic onInfoLoaded(Lcom/unityota/utils/BaseInfo;)V
    .locals 0

    check-cast p1, Lcom/unityota/utils/RomInfo;

    invoke-virtual {p0, p1}, Lcom/unityota/CheckinReceiver$1;->onInfoLoaded(Lcom/unityota/utils/RomInfo;)V

    return-void
.end method

.method public onInfoLoaded(Lcom/unityota/utils/RomInfo;)V
    .locals 0

    invoke-static {}, Lcom/unityota/ROMTab;->notifyActiveFragment()V

    return-void
.end method
