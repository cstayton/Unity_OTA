.class public abstract Lcom/unityota/utils/APIUtils$ProgressDialogAPICallback;
.super Lcom/unityota/utils/APIUtils$APIAdapter;
.source "APIUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unityota/utils/APIUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ProgressDialogAPICallback"
.end annotation


# instance fields
.field private final ctx:Landroid/content/Context;

.field private dlg:Landroid/app/ProgressDialog;

.field private final dlgCallback:Lcom/unityota/utils/DialogCallback;

.field private final loadingText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/unityota/utils/DialogCallback;)V
    .locals 0

    invoke-direct {p0}, Lcom/unityota/utils/APIUtils$APIAdapter;-><init>()V

    iput-object p1, p0, Lcom/unityota/utils/APIUtils$ProgressDialogAPICallback;->ctx:Landroid/content/Context;

    iput-object p2, p0, Lcom/unityota/utils/APIUtils$ProgressDialogAPICallback;->loadingText:Ljava/lang/String;

    iput-object p3, p0, Lcom/unityota/utils/APIUtils$ProgressDialogAPICallback;->dlgCallback:Lcom/unityota/utils/DialogCallback;

    return-void
.end method

.method static synthetic access$100(Lcom/unityota/utils/APIUtils$ProgressDialogAPICallback;)Lcom/unityota/utils/DialogCallback;
    .locals 1

    iget-object v0, p0, Lcom/unityota/utils/APIUtils$ProgressDialogAPICallback;->dlgCallback:Lcom/unityota/utils/DialogCallback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/unityota/utils/APIUtils$ProgressDialogAPICallback;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/unityota/utils/APIUtils$ProgressDialogAPICallback;->dlg:Landroid/app/ProgressDialog;

    return-object v0
.end method


# virtual methods
.method public onComplete(Z)V
    .locals 2

    iget-object v0, p0, Lcom/unityota/utils/APIUtils$ProgressDialogAPICallback;->dlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v0, p0, Lcom/unityota/utils/APIUtils$ProgressDialogAPICallback;->dlgCallback:Lcom/unityota/utils/DialogCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unityota/utils/APIUtils$ProgressDialogAPICallback;->dlgCallback:Lcom/unityota/utils/DialogCallback;

    iget-object v1, p0, Lcom/unityota/utils/APIUtils$ProgressDialogAPICallback;->dlg:Landroid/app/ProgressDialog;

    invoke-interface {v0, v1}, Lcom/unityota/utils/DialogCallback;->onDialogClosed(Landroid/app/Dialog;)V

    :cond_0
    return-void
.end method

.method public onStart(Lcom/unityota/utils/APIUtils$APITask;)V
    .locals 6

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/unityota/utils/APIUtils$ProgressDialogAPICallback;->ctx:Landroid/content/Context;

    const-string v1, ""

    iget-object v2, p0, Lcom/unityota/utils/APIUtils$ProgressDialogAPICallback;->loadingText:Ljava/lang/String;

    new-instance v5, Lcom/unityota/utils/APIUtils$ProgressDialogAPICallback$1;

    invoke-direct {v5, p0, p1}, Lcom/unityota/utils/APIUtils$ProgressDialogAPICallback$1;-><init>(Lcom/unityota/utils/APIUtils$ProgressDialogAPICallback;Lcom/unityota/utils/APIUtils$APITask;)V

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/unityota/utils/APIUtils$ProgressDialogAPICallback;->dlg:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/unityota/utils/APIUtils$ProgressDialogAPICallback;->dlgCallback:Lcom/unityota/utils/DialogCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unityota/utils/APIUtils$ProgressDialogAPICallback;->dlgCallback:Lcom/unityota/utils/DialogCallback;

    iget-object v1, p0, Lcom/unityota/utils/APIUtils$ProgressDialogAPICallback;->dlg:Landroid/app/ProgressDialog;

    invoke-interface {v0, v1}, Lcom/unityota/utils/DialogCallback;->onDialogShown(Landroid/app/Dialog;)V

    :cond_0
    return-void
.end method
