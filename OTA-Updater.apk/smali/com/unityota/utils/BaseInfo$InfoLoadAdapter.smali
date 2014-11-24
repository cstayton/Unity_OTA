.class public abstract Lcom/unityota/utils/BaseInfo$InfoLoadAdapter;
.super Lcom/unityota/utils/APIUtils$APIAdapter;
.source "BaseInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unityota/utils/BaseInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "InfoLoadAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/unityota/utils/BaseInfo;",
        ">",
        "Lcom/unityota/utils/APIUtils$APIAdapter;"
    }
.end annotation


# instance fields
.field private final CLASS:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final cfg:Lcom/unityota/utils/Config;

.field private final ctx:Landroid/content/Context;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/unityota/utils/APIUtils$APIAdapter;-><init>()V

    iput-object p1, p0, Lcom/unityota/utils/BaseInfo$InfoLoadAdapter;->CLASS:Ljava/lang/Class;

    iput-object p2, p0, Lcom/unityota/utils/BaseInfo$InfoLoadAdapter;->ctx:Landroid/content/Context;

    invoke-static {p2}, Lcom/unityota/utils/Config;->getInstance(Landroid/content/Context;)Lcom/unityota/utils/Config;

    move-result-object v0

    iput-object v0, p0, Lcom/unityota/utils/BaseInfo$InfoLoadAdapter;->cfg:Lcom/unityota/utils/Config;

    return-void
.end method


# virtual methods
.method public abstract onInfoLoaded(Lcom/unityota/utils/BaseInfo;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public onSuccess(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 5

    new-instance v0, Lcom/unityota/utils/BaseInfo$InfoFactory;

    iget-object v2, p0, Lcom/unityota/utils/BaseInfo$InfoLoadAdapter;->CLASS:Ljava/lang/Class;

    invoke-direct {v0, v2}, Lcom/unityota/utils/BaseInfo$InfoFactory;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, p2}, Lcom/unityota/utils/BaseInfo$InfoFactory;->fromJSON(Lorg/json/JSONObject;)Lcom/unityota/utils/BaseInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/unityota/utils/BaseInfo;->isUpdate()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/unityota/utils/BaseInfo$InfoLoadAdapter;->cfg:Lcom/unityota/utils/Config;

    invoke-virtual {v2, v1}, Lcom/unityota/utils/Config;->storeUpdate(Lcom/unityota/utils/BaseInfo;)V

    iget-object v2, p0, Lcom/unityota/utils/BaseInfo$InfoLoadAdapter;->cfg:Lcom/unityota/utils/Config;

    invoke-virtual {v2}, Lcom/unityota/utils/Config;->getShowNotif()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/unityota/utils/BaseInfo$InfoLoadAdapter;->ctx:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/unityota/utils/BaseInfo;->showUpdateNotif(Landroid/content/Context;)V

    :goto_0
    invoke-virtual {p0, v1}, Lcom/unityota/utils/BaseInfo$InfoLoadAdapter;->onInfoLoaded(Lcom/unityota/utils/BaseInfo;)V

    return-void

    :cond_0
    const-string v2, "OTA::InfoLoad"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/unityota/utils/BaseInfo;->getNameKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " update, notif not shown"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/unityota/utils/BaseInfo$InfoLoadAdapter;->cfg:Lcom/unityota/utils/Config;

    iget-object v3, p0, Lcom/unityota/utils/BaseInfo$InfoLoadAdapter;->CLASS:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Lcom/unityota/utils/Config;->clearStoredUpdate(Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/unityota/utils/BaseInfo$InfoLoadAdapter;->ctx:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/unityota/utils/BaseInfo$InfoFactory;->clearUpdateNotif(Landroid/content/Context;)V

    goto :goto_0
.end method
