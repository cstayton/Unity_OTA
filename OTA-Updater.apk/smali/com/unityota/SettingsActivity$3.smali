.class Lcom/unityota/SettingsActivity$3;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unityota/SettingsActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unityota/SettingsActivity;

.field final synthetic val$dlg:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/unityota/SettingsActivity;Landroid/app/AlertDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/unityota/SettingsActivity$3;->this$0:Lcom/unityota/SettingsActivity;

    iput-object p2, p0, Lcom/unityota/SettingsActivity$3;->val$dlg:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/unityota/SettingsActivity$3;->this$0:Lcom/unityota/SettingsActivity;

    iget-object v1, p0, Lcom/unityota/SettingsActivity$3;->val$dlg:Landroid/app/AlertDialog;

    invoke-virtual {v0, v1}, Lcom/unityota/SettingsActivity;->onDialogShown(Landroid/app/Dialog;)V

    return-void
.end method
