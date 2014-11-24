.class public abstract Lcom/unityota/utils/BaseDialogActivity;
.super Landroid/app/Activity;
.source "BaseDialogActivity.java"

# interfaces
.implements Lcom/unityota/utils/DialogCallback;


# instance fields
.field private final dlgs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Dialog;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/unityota/utils/BaseDialogActivity;->dlgs:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public onDialogClosed(Landroid/app/Dialog;)V
    .locals 1

    iget-object v0, p0, Lcom/unityota/utils/BaseDialogActivity;->dlgs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public onDialogShown(Landroid/app/Dialog;)V
    .locals 1

    iget-object v0, p0, Lcom/unityota/utils/BaseDialogActivity;->dlgs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected onPause()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v2, p0, Lcom/unityota/utils/BaseDialogActivity;->dlgs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/unityota/utils/BaseDialogActivity;->dlgs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
