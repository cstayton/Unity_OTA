.class public abstract Lcom/unityota/utils/APIUtils$APIAdapter;
.super Ljava/lang/Object;
.source "APIUtils.java"

# interfaces
.implements Lcom/unityota/utils/APIUtils$APICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unityota/utils/APIUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "APIAdapter"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    return-void
.end method

.method public onComplete(Z)V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    return-void
.end method

.method public onStart(Lcom/unityota/utils/APIUtils$APITask;)V
    .locals 0

    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    return-void
.end method
