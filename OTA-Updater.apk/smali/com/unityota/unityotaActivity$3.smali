.class Lcom/unityota/unityotaActivity$3;
.super Ljava/lang/Object;
.source "unityotaActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unityota/unityotaActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unityota/unityotaActivity;


# direct methods
.method constructor <init>(Lcom/unityota/unityotaActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/unityota/unityotaActivity$3;->this$0:Lcom/unityota/unityotaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIFI_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unityota/unityotaActivity$3;->this$0:Lcom/unityota/unityotaActivity;

    invoke-virtual {v1, v0}, Lcom/unityota/unityotaActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
