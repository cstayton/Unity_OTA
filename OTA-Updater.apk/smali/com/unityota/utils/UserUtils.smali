.class public Lcom/unityota/utils/UserUtils;
.super Ljava/lang/Object;
.source "UserUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unityota/utils/UserUtils$LoginCallback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static showAccountDialog(Landroid/content/Context;Lcom/unityota/utils/DialogCallback;)V
    .locals 5

    invoke-static {p0}, Lcom/unityota/utils/Config;->getInstance(Landroid/content/Context;)Lcom/unityota/utils/Config;

    move-result-object v0

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v3, "OTA Update Center Account"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Logged in as: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/unityota/utils/Config;->getUsername()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/unityota/utils/UserUtils$6;

    invoke-direct {v4}, Lcom/unityota/utils/UserUtils$6;-><init>()V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "Sign Out"

    new-instance v4, Lcom/unityota/utils/UserUtils$5;

    invoke-direct {v4, p0, v0}, Lcom/unityota/utils/UserUtils$5;-><init>(Landroid/content/Context;Lcom/unityota/utils/Config;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    new-instance v2, Lcom/unityota/utils/UserUtils$7;

    invoke-direct {v2, p1, v1}, Lcom/unityota/utils/UserUtils$7;-><init>(Lcom/unityota/utils/DialogCallback;Landroid/app/AlertDialog;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    new-instance v2, Lcom/unityota/utils/UserUtils$8;

    invoke-direct {v2, p1, v1}, Lcom/unityota/utils/UserUtils$8;-><init>(Lcom/unityota/utils/DialogCallback;Landroid/app/AlertDialog;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public static showLoginDialog(Landroid/content/Context;Ljava/lang/String;Lcom/unityota/utils/DialogCallback;Lcom/unityota/utils/UserUtils$LoginCallback;)V
    .locals 9

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030007

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    if-nez v8, :cond_0

    :goto_0
    return-void

    :cond_0
    const v0, 0x7f07002c

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    const v0, 0x7f07002d

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    if-eqz p1, :cond_1

    invoke-virtual {v3, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f090013

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f09006e

    new-instance v1, Lcom/unityota/utils/UserUtils$1;

    invoke-direct {v1}, Lcom/unityota/utils/UserUtils$1;-><init>()V

    invoke-virtual {v7, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v0, 0x104

    new-instance v1, Lcom/unityota/utils/UserUtils$2;

    invoke-direct {v1, p3}, Lcom/unityota/utils/UserUtils$2;-><init>(Lcom/unityota/utils/UserUtils$LoginCallback;)V

    invoke-virtual {v7, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    new-instance v0, Lcom/unityota/utils/UserUtils$3;

    move-object v1, p2

    move-object v5, p0

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/unityota/utils/UserUtils$3;-><init>(Lcom/unityota/utils/DialogCallback;Landroid/app/AlertDialog;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/content/Context;Lcom/unityota/utils/UserUtils$LoginCallback;)V

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    new-instance v0, Lcom/unityota/utils/UserUtils$4;

    invoke-direct {v0, p2, v2}, Lcom/unityota/utils/UserUtils$4;-><init>(Lcom/unityota/utils/DialogCallback;Landroid/app/AlertDialog;)V

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method public static userHmac(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/unityota/utils/Config;->getInstance(Landroid/content/Context;)Lcom/unityota/utils/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unityota/utils/Config;->isUserLoggedIn()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/unityota/utils/Config;->getHmacKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/unityota/utils/Utils;->hmac(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
