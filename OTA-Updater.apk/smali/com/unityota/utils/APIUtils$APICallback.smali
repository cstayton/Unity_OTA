.class public interface abstract Lcom/unityota/utils/APIUtils$APICallback;
.super Ljava/lang/Object;
.source "APIUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unityota/utils/APIUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "APICallback"
.end annotation


# virtual methods
.method public abstract onCancel()V
.end method

.method public abstract onComplete(Z)V
.end method

.method public abstract onError(Ljava/lang/String;Lorg/json/JSONObject;)V
.end method

.method public abstract onStart(Lcom/unityota/utils/APIUtils$APITask;)V
.end method

.method public abstract onSuccess(Ljava/lang/String;Lorg/json/JSONObject;)V
.end method
