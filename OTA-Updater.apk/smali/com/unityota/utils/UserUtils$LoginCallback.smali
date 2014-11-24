.class public interface abstract Lcom/unityota/utils/UserUtils$LoginCallback;
.super Ljava/lang/Object;
.source "UserUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unityota/utils/UserUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LoginCallback"
.end annotation


# virtual methods
.method public abstract onCancel()V
.end method

.method public abstract onError(Ljava/lang/String;)V
.end method

.method public abstract onLoggedIn(Ljava/lang/String;)V
.end method
