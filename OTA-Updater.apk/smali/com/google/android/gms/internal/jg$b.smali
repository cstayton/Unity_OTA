.class Lcom/google/android/gms/internal/jg$b;
.super Lcom/google/android/gms/location/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/jg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private VL:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/google/android/gms/location/LocationListener;Landroid/os/Looper;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/location/a$a;-><init>()V

    if-nez p2, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/jg$a;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/jg$a;-><init>(Lcom/google/android/gms/location/LocationListener;)V

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/jg$b;->VL:Landroid/os/Handler;

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/jg$a;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/jg$a;-><init>(Lcom/google/android/gms/location/LocationListener;Landroid/os/Looper;)V

    goto :goto_0
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/jg$b;->VL:Landroid/os/Handler;

    if-nez v0, :cond_0

    const-string v0, "LocationClientHelper"

    const-string v1, "Received a location in client after calling removeLocationUpdates."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/jg$b;->VL:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/jg$b;->VL:Landroid/os/Handler;

    return-void
.end method
