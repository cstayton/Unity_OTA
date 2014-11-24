.class public Lcom/unityota/SettingsActivity;
.super Landroid/preference/PreferenceActivity;
.source "SettingsActivity.java"

# interfaces
.implements Lcom/unityota/utils/DialogCallback;


# static fields
.field public static final EXTRA_SHOW_ACCOUNT_DLG:Ljava/lang/String; = "show_account_dlg"

.field public static final EXTRA_SHOW_GET_PROKEY_DLG:Ljava/lang/String; = "show_get_prokey"

.field private static final PROKEY_REQ_CODE:I = 0x457


# instance fields
.field private accountPref:Landroid/preference/Preference;

.field private autodlPref:Landroid/preference/CheckBoxPreference;

.field private cfg:Lcom/unityota/utils/Config;

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

.field private donatePref:Landroid/preference/Preference;

.field private notifPref:Landroid/preference/CheckBoxPreference;

.field private prokeyPref:Landroid/preference/Preference;

.field private resetWarnPref:Landroid/preference/Preference;

.field private service:Lcom/android/vending/billing/IInAppBillingService;

.field private final serviceConn:Landroid/content/ServiceConnection;

.field private wifidlPref:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/unityota/SettingsActivity;->dlgs:Ljava/util/ArrayList;

    new-instance v0, Lcom/unityota/SettingsActivity$1;

    invoke-direct {v0, p0}, Lcom/unityota/SettingsActivity$1;-><init>(Lcom/unityota/SettingsActivity;)V

    iput-object v0, p0, Lcom/unityota/SettingsActivity;->serviceConn:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000(Lcom/unityota/SettingsActivity;)Lcom/android/vending/billing/IInAppBillingService;
    .locals 1

    iget-object v0, p0, Lcom/unityota/SettingsActivity;->service:Lcom/android/vending/billing/IInAppBillingService;

    return-object v0
.end method

.method static synthetic access$002(Lcom/unityota/SettingsActivity;Lcom/android/vending/billing/IInAppBillingService;)Lcom/android/vending/billing/IInAppBillingService;
    .locals 0

    iput-object p1, p0, Lcom/unityota/SettingsActivity;->service:Lcom/android/vending/billing/IInAppBillingService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/unityota/SettingsActivity;)Lcom/unityota/utils/Config;
    .locals 1

    iget-object v0, p0, Lcom/unityota/SettingsActivity;->cfg:Lcom/unityota/utils/Config;

    return-object v0
.end method

.method static synthetic access$200(Lcom/unityota/SettingsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/unityota/SettingsActivity;->updateProKeySummary()V

    return-void
.end method

.method static synthetic access$300(Lcom/unityota/SettingsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/unityota/SettingsActivity;->redeemProKey()V

    return-void
.end method

.method private redeemProKey()V
    .locals 2

    iget-object v0, p0, Lcom/unityota/SettingsActivity;->cfg:Lcom/unityota/utils/Config;

    invoke-virtual {v0}, Lcom/unityota/utils/Config;->isUserLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/unityota/SettingsActivity$8;

    const v1, 0x7f09009a

    invoke-virtual {p0, v1}, Lcom/unityota/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p0, v1, p0}, Lcom/unityota/SettingsActivity$8;-><init>(Lcom/unityota/SettingsActivity;Landroid/content/Context;Ljava/lang/String;Lcom/unityota/utils/DialogCallback;)V

    invoke-static {p0, v0}, Lcom/unityota/utils/APIUtils;->redeemCode(Landroid/content/Context;Lcom/unityota/utils/APIUtils$APICallback;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    new-instance v1, Lcom/unityota/SettingsActivity$9;

    invoke-direct {v1, p0}, Lcom/unityota/SettingsActivity$9;-><init>(Lcom/unityota/SettingsActivity;)V

    invoke-static {p0, v0, p0, v1}, Lcom/unityota/utils/UserUtils;->showLoginDialog(Landroid/content/Context;Ljava/lang/String;Lcom/unityota/utils/DialogCallback;Lcom/unityota/utils/UserUtils$LoginCallback;)V

    goto :goto_0
.end method

.method private showAccountDialog()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/unityota/SettingsActivity;->cfg:Lcom/unityota/utils/Config;

    invoke-virtual {v0}, Lcom/unityota/utils/Config;->isUserLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p0}, Lcom/unityota/utils/UserUtils;->showAccountDialog(Landroid/content/Context;Lcom/unityota/utils/DialogCallback;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, v1, p0, v1}, Lcom/unityota/utils/UserUtils;->showLoginDialog(Landroid/content/Context;Ljava/lang/String;Lcom/unityota/utils/DialogCallback;Lcom/unityota/utils/UserUtils$LoginCallback;)V

    goto :goto_0
.end method

.method private showGetProKeyDialog()V
    .locals 5

    iget-object v3, p0, Lcom/unityota/SettingsActivity;->cfg:Lcom/unityota/utils/Config;

    invoke-virtual {v3}, Lcom/unityota/utils/Config;->hasProKey()Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f09009f

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-static {p0}, Lcom/unityota/utils/Utils;->checkPlayServices(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    const v3, 0x7f050003

    :goto_1
    new-instance v4, Lcom/unityota/SettingsActivity$5;

    invoke-direct {v4, p0, v2}, Lcom/unityota/SettingsActivity$5;-><init>(Lcom/unityota/SettingsActivity;Z)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    new-instance v3, Lcom/unityota/SettingsActivity$6;

    invoke-direct {v3, p0, v1}, Lcom/unityota/SettingsActivity$6;-><init>(Lcom/unityota/SettingsActivity;Landroid/app/AlertDialog;)V

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    new-instance v3, Lcom/unityota/SettingsActivity$7;

    invoke-direct {v3, p0, v1}, Lcom/unityota/SettingsActivity$7;-><init>(Lcom/unityota/SettingsActivity;Landroid/app/AlertDialog;)V

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    :cond_1
    const v3, 0x7f050004

    goto :goto_1
.end method

.method private updateProKeySummary()V
    .locals 5

    iget-object v0, p0, Lcom/unityota/SettingsActivity;->prokeyPref:Landroid/preference/Preference;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/unityota/SettingsActivity;->cfg:Lcom/unityota/utils/Config;

    invoke-virtual {v0}, Lcom/unityota/utils/Config;->hasProKey()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/unityota/SettingsActivity;->cfg:Lcom/unityota/utils/Config;

    invoke-virtual {v0}, Lcom/unityota/utils/Config;->isKeyRedeemCode()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/unityota/SettingsActivity;->prokeyPref:Landroid/preference/Preference;

    const v1, 0x7f09009e

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/unityota/SettingsActivity;->cfg:Lcom/unityota/utils/Config;

    invoke-virtual {v4}, Lcom/unityota/utils/Config;->getRedeemCode()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/unityota/SettingsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/unityota/SettingsActivity;->prokeyPref:Landroid/preference/Preference;

    const v1, 0x7f09009d

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/unityota/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/unityota/utils/Utils;->checkPlayServices(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unityota/SettingsActivity;->prokeyPref:Landroid/preference/Preference;

    const v1, 0x7f09009c

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8

    const v7, 0x7f09007b

    const/4 v6, 0x0

    const/16 v4, 0x457

    if-ne p1, v4, :cond_0

    const-string v4, "RESPONSE_CODE"

    invoke-virtual {p3, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "INAPP_PURCHASE_DATA"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, -0x1

    if-ne p2, v4, :cond_4

    if-nez v3, :cond_2

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "productId"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "prokey"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/unityota/SettingsActivity;->cfg:Lcom/unityota/utils/Config;

    const-string v5, "purchaseToken"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/unityota/utils/Config;->setKeyPurchaseToken(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/unityota/SettingsActivity;->updateProKeySummary()V

    const v4, 0x7f090080

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v4, 0x7f09007b

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {p0, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    const v4, 0x7f090079

    invoke-static {p0, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_3
    invoke-static {p0, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_4
    invoke-static {p0, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x1

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/unityota/SettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/unityota/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/unityota/utils/Config;->getInstance(Landroid/content/Context;)Lcom/unityota/utils/Config;

    move-result-object v1

    iput-object v1, p0, Lcom/unityota/SettingsActivity;->cfg:Lcom/unityota/utils/Config;

    const/high16 v1, 0x7f04

    invoke-virtual {p0, v1}, Lcom/unityota/SettingsActivity;->addPreferencesFromResource(I)V

    :goto_0
    const-string v1, "notif_pref"

    invoke-virtual {p0, v1}, Lcom/unityota/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/unityota/SettingsActivity;->notifPref:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/unityota/SettingsActivity;->notifPref:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/unityota/SettingsActivity;->cfg:Lcom/unityota/utils/Config;

    invoke-virtual {v2}, Lcom/unityota/utils/Config;->getShowNotif()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const-string v1, "wifidl_pref"

    invoke-virtual {p0, v1}, Lcom/unityota/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/unityota/SettingsActivity;->wifidlPref:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/unityota/SettingsActivity;->wifidlPref:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/unityota/SettingsActivity;->cfg:Lcom/unityota/utils/Config;

    invoke-virtual {v2}, Lcom/unityota/utils/Config;->getWifiOnlyDl()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const-string v1, "prokey_pref"

    invoke-virtual {p0, v1}, Lcom/unityota/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/unityota/SettingsActivity;->prokeyPref:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/unityota/SettingsActivity;->cfg:Lcom/unityota/utils/Config;

    invoke-virtual {v1}, Lcom/unityota/utils/Config;->hasProKey()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/unityota/SettingsActivity;->prokeyPref:Landroid/preference/Preference;

    const v2, 0x7f0900a0

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(I)V

    :cond_1
    invoke-direct {p0}, Lcom/unityota/SettingsActivity;->updateProKeySummary()V

    const-string v1, "resetwarn_pref"

    invoke-virtual {p0, v1}, Lcom/unityota/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/unityota/SettingsActivity;->resetWarnPref:Landroid/preference/Preference;

    const-string v1, "donate_pref"

    invoke-virtual {p0, v1}, Lcom/unityota/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/unityota/SettingsActivity;->donatePref:Landroid/preference/Preference;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/unityota/SettingsActivity;->serviceConn:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v1, v2, v6}, Lcom/unityota/SettingsActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    const-string v1, "show_get_prokey"

    invoke-virtual {p0}, Lcom/unityota/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/unityota/SettingsActivity;->showGetProKeyDialog()V

    :cond_2
    const-string v1, "show_account_dlg"

    invoke-virtual {p0}, Lcom/unityota/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/unityota/SettingsActivity;->showAccountDialog()V

    :cond_3
    return-void

    iget-object v1, p0, Lcom/unityota/SettingsActivity;->accountPref:Landroid/preference/Preference;

    const v2, 0x7f09008f

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/unityota/SettingsActivity;->serviceConn:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/unityota/SettingsActivity;->unbindService(Landroid/content/ServiceConnection;)V

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    return-void
.end method

.method public onDialogClosed(Landroid/app/Dialog;)V
    .locals 1

    iget-object v0, p0, Lcom/unityota/SettingsActivity;->dlgs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public onDialogShown(Landroid/app/Dialog;)V
    .locals 1

    iget-object v0, p0, Lcom/unityota/SettingsActivity;->dlgs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onNewIntent(Landroid/content/Intent;)V

    const-string v0, "show_get_prokey"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/unityota/SettingsActivity;->showGetProKeyDialog()V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    invoke-static {p0}, Landroid/support/v4/app/NavUtils;->navigateUpFromSameTask(Landroid/app/Activity;)V

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 3

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    iget-object v2, p0, Lcom/unityota/SettingsActivity;->dlgs:Ljava/util/ArrayList;

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
    iget-object v2, p0, Lcom/unityota/SettingsActivity;->dlgs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/unityota/SettingsActivity;->accountPref:Landroid/preference/Preference;

    if-ne p2, v2, :cond_0

    invoke-direct {p0}, Lcom/unityota/SettingsActivity;->showAccountDialog()V

    :goto_0
    const/4 v2, 0x1

    :goto_1
    return v2

    :cond_0
    iget-object v2, p0, Lcom/unityota/SettingsActivity;->notifPref:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_1

    iget-object v2, p0, Lcom/unityota/SettingsActivity;->cfg:Lcom/unityota/utils/Config;

    iget-object v3, p0, Lcom/unityota/SettingsActivity;->notifPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/unityota/utils/Config;->setShowNotif(Z)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/unityota/SettingsActivity;->wifidlPref:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_2

    iget-object v2, p0, Lcom/unityota/SettingsActivity;->cfg:Lcom/unityota/utils/Config;

    iget-object v3, p0, Lcom/unityota/SettingsActivity;->wifidlPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/unityota/utils/Config;->setWifiOnlyDl(Z)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/unityota/SettingsActivity;->autodlPref:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_4

    iget-object v2, p0, Lcom/unityota/SettingsActivity;->cfg:Lcom/unityota/utils/Config;

    invoke-virtual {v2}, Lcom/unityota/utils/Config;->hasProKey()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/unityota/SettingsActivity;->cfg:Lcom/unityota/utils/Config;

    iget-object v3, p0, Lcom/unityota/SettingsActivity;->autodlPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/unityota/utils/Config;->setAutoDlState(Z)V

    goto :goto_0

    :cond_3
    invoke-static {p0, p0}, Lcom/unityota/utils/Utils;->showProKeyOnlyFeatureDialog(Landroid/content/Context;Lcom/unityota/utils/DialogCallback;)V

    iget-object v2, p0, Lcom/unityota/SettingsActivity;->cfg:Lcom/unityota/utils/Config;

    invoke-virtual {v2, v3}, Lcom/unityota/utils/Config;->setAutoDlState(Z)V

    iget-object v2, p0, Lcom/unityota/SettingsActivity;->autodlPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/unityota/SettingsActivity;->resetWarnPref:Landroid/preference/Preference;

    if-ne p2, v2, :cond_5

    iget-object v2, p0, Lcom/unityota/SettingsActivity;->cfg:Lcom/unityota/utils/Config;

    invoke-virtual {v2}, Lcom/unityota/utils/Config;->clearIgnored()V

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/unityota/SettingsActivity;->prokeyPref:Landroid/preference/Preference;

    if-ne p2, v2, :cond_8

    iget-object v2, p0, Lcom/unityota/SettingsActivity;->cfg:Lcom/unityota/utils/Config;

    invoke-virtual {v2}, Lcom/unityota/utils/Config;->hasProKey()Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/unityota/SettingsActivity;->cfg:Lcom/unityota/utils/Config;

    invoke-virtual {v2}, Lcom/unityota/utils/Config;->isKeyRedeemCode()Z

    move-result v2

    if-eqz v2, :cond_6

    const v2, 0x7f09007f

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    :goto_2
    const v2, 0x7f090023

    new-instance v3, Lcom/unityota/SettingsActivity$2;

    invoke-direct {v3, p0}, Lcom/unityota/SettingsActivity$2;-><init>(Lcom/unityota/SettingsActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    new-instance v2, Lcom/unityota/SettingsActivity$3;

    invoke-direct {v2, p0, v1}, Lcom/unityota/SettingsActivity$3;-><init>(Lcom/unityota/SettingsActivity;Landroid/app/AlertDialog;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    new-instance v2, Lcom/unityota/SettingsActivity$4;

    invoke-direct {v2, p0, v1}, Lcom/unityota/SettingsActivity$4;-><init>(Lcom/unityota/SettingsActivity;Landroid/app/AlertDialog;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    :cond_6
    const v2, 0x7f090081

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_2

    :cond_7
    invoke-direct {p0}, Lcom/unityota/SettingsActivity;->showGetProKeyDialog()V

    goto/16 :goto_0

    :cond_8
    iget-object v2, p0, Lcom/unityota/SettingsActivity;->donatePref:Landroid/preference/Preference;

    if-ne p2, v2, :cond_9

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    const-string v4, "http://forum.xda-developers.com/att-galaxy-s5/development/unity-rom-s5-s5a-09-07-2014-t2870253"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v2}, Lcom/unityota/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_9
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto/16 :goto_1
.end method
