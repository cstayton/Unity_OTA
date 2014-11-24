.class public Lcom/unityota/unityotaActivity;
.super Lcom/unityota/utils/BaseDownloadDialogActivity;
.source "unityotaActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unityota/unityotaActivity$TabsAdapter;,
        Lcom/unityota/unityotaActivity$AdsHandler;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field public static final EXTRA_FLAG_DOWNLOAD_DIALOG:Ljava/lang/String; = "SHOW_DOWNLOAD_DIALOG"

.field public static final KERNEL_NOTIF_ACTION:Ljava/lang/String; = "com.unityota.action.KERNEL_NOTIF_ACTION"

.field public static final KEY_TAB:Ljava/lang/String; = "tab"

.field public static final ROM_NOTIF_ACTION:Ljava/lang/String; = "com.unityota.action.ROM_NOTIF_ACTION"


# instance fields
.field private final adsHandler:Landroid/os/Handler;

.field private bar:Landroid/app/ActionBar;

.field private billingSrvConn:Landroid/content/ServiceConnection;

.field private cfg:Lcom/unityota/utils/Config;

.field private kernelTabIdx:I

.field private romTabIdx:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/unityota/unityotaActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/unityota/unityotaActivity;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/unityota/utils/BaseDownloadDialogActivity;-><init>()V

    iput v0, p0, Lcom/unityota/unityotaActivity;->romTabIdx:I

    iput v0, p0, Lcom/unityota/unityotaActivity;->kernelTabIdx:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unityota/unityotaActivity;->billingSrvConn:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/unityota/unityotaActivity$AdsHandler;

    invoke-direct {v0, p0}, Lcom/unityota/unityotaActivity$AdsHandler;-><init>(Lcom/unityota/unityotaActivity;)V

    iput-object v0, p0, Lcom/unityota/unityotaActivity;->adsHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$002(Lcom/unityota/unityotaActivity;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;
    .locals 0

    iput-object p1, p0, Lcom/unityota/unityotaActivity;->billingSrvConn:Landroid/content/ServiceConnection;

    return-object p1
.end method

.method static synthetic access$100(Lcom/unityota/unityotaActivity;)Lcom/unityota/utils/Config;
    .locals 1

    iget-object v0, p0, Lcom/unityota/unityotaActivity;->cfg:Lcom/unityota/utils/Config;

    return-object v0
.end method

.method private handleNotifAction(Landroid/content/Intent;)Z
    .locals 5

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.unityota.action.ROM_NOTIF_ACTION"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Lcom/unityota/utils/RomInfo;->FACTORY:Lcom/unityota/utils/BaseInfo$InfoFactory;

    invoke-virtual {v3, p0}, Lcom/unityota/utils/BaseInfo$InfoFactory;->clearUpdateNotif(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/unityota/unityotaActivity;->bar:Landroid/app/ActionBar;

    iget v4, p0, Lcom/unityota/unityotaActivity;->romTabIdx:I

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    const-string v3, "SHOW_DOWNLOAD_DIALOG"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/unityota/unityotaActivity;->cfg:Lcom/unityota/utils/Config;

    invoke-virtual {v2}, Lcom/unityota/utils/Config;->getRomDownloadID()J

    move-result-wide v2

    invoke-static {p0, v2, v3, p0}, Lcom/unityota/DownloadBarFragment;->showDownloadingDialog(Landroid/content/Context;JLcom/unityota/utils/DownloadDialogCallback;)Landroid/app/Dialog;

    :cond_0
    :goto_0
    const/4 v2, 0x1

    :cond_1
    return v2

    :cond_2
    sget-object v2, Lcom/unityota/utils/RomInfo;->FACTORY:Lcom/unityota/utils/BaseInfo$InfoFactory;

    invoke-virtual {v2, p1}, Lcom/unityota/utils/BaseInfo$InfoFactory;->fromIntent(Landroid/content/Intent;)Lcom/unityota/utils/BaseInfo;

    move-result-object v1

    check-cast v1, Lcom/unityota/utils/RomInfo;

    if-nez v1, :cond_3

    iget-object v2, p0, Lcom/unityota/unityotaActivity;->cfg:Lcom/unityota/utils/Config;

    invoke-virtual {v2}, Lcom/unityota/utils/Config;->getStoredRomUpdate()Lcom/unityota/utils/RomInfo;

    move-result-object v1

    :cond_3
    if-eqz v1, :cond_0

    invoke-virtual {v1, p0, p0}, Lcom/unityota/utils/RomInfo;->showUpdateDialog(Landroid/content/Context;Lcom/unityota/utils/DownloadDialogCallback;)V

    goto :goto_0

    :cond_4
    const-string v3, "com.unityota.action.KERNEL_NOTIF_ACTION"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/unityota/utils/KernelInfo;->FACTORY:Lcom/unityota/utils/BaseInfo$InfoFactory;

    invoke-virtual {v3, p0}, Lcom/unityota/utils/BaseInfo$InfoFactory;->clearUpdateNotif(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/unityota/unityotaActivity;->bar:Landroid/app/ActionBar;

    iget v4, p0, Lcom/unityota/unityotaActivity;->kernelTabIdx:I

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    const-string v3, "SHOW_DOWNLOAD_DIALOG"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/unityota/unityotaActivity;->cfg:Lcom/unityota/utils/Config;

    invoke-virtual {v2}, Lcom/unityota/utils/Config;->getKernelDownloadID()J

    move-result-wide v2

    invoke-static {p0, v2, v3, p0}, Lcom/unityota/DownloadBarFragment;->showDownloadingDialog(Landroid/content/Context;JLcom/unityota/utils/DownloadDialogCallback;)Landroid/app/Dialog;

    goto :goto_0

    :cond_5
    sget-object v2, Lcom/unityota/utils/KernelInfo;->FACTORY:Lcom/unityota/utils/BaseInfo$InfoFactory;

    invoke-virtual {v2, p1}, Lcom/unityota/utils/BaseInfo$InfoFactory;->fromIntent(Landroid/content/Intent;)Lcom/unityota/utils/BaseInfo;

    move-result-object v1

    check-cast v1, Lcom/unityota/utils/KernelInfo;

    if-nez v1, :cond_6

    iget-object v2, p0, Lcom/unityota/unityotaActivity;->cfg:Lcom/unityota/utils/Config;

    invoke-virtual {v2}, Lcom/unityota/utils/Config;->getStoredKernelUpdate()Lcom/unityota/utils/KernelInfo;

    move-result-object v1

    :cond_6
    if-eqz v1, :cond_0

    invoke-virtual {v1, p0, p0}, Lcom/unityota/utils/KernelInfo;->showUpdateDialog(Landroid/content/Context;Lcom/unityota/utils/DownloadDialogCallback;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14

    invoke-super {p0, p1}, Lcom/unityota/utils/BaseDownloadDialogActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/unityota/unityotaActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/unityota/utils/Config;->getInstance(Landroid/content/Context;)Lcom/unityota/utils/Config;

    move-result-object v11

    iput-object v11, p0, Lcom/unityota/unityotaActivity;->cfg:Lcom/unityota/utils/Config;

    iget-object v11, p0, Lcom/unityota/unityotaActivity;->cfg:Lcom/unityota/utils/Config;

    invoke-virtual {v11}, Lcom/unityota/utils/Config;->hasProKey()Z

    move-result v11

    if-nez v11, :cond_0

    new-instance v11, Landroid/content/Intent;

    const-string v12, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v12, Lcom/unityota/unityotaActivity$1;

    invoke-direct {v12, p0}, Lcom/unityota/unityotaActivity$1;-><init>(Lcom/unityota/unityotaActivity;)V

    iput-object v12, p0, Lcom/unityota/unityotaActivity;->billingSrvConn:Landroid/content/ServiceConnection;

    const/4 v13, 0x1

    invoke-virtual {p0, v11, v12, v13}, Lcom/unityota/unityotaActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :cond_0
    invoke-static {p0}, Lcom/unityota/utils/Utils;->dataAvailable(Landroid/content/Context;)Z

    move-result v3

    invoke-static {p0}, Lcom/unityota/utils/Utils;->wifiConnected(Landroid/content/Context;)Z

    move-result v10

    if-eqz v3, :cond_1

    if-nez v10, :cond_4

    :cond_1
    if-nez v3, :cond_7

    if-nez v10, :cond_7

    const/4 v8, 0x1

    :goto_0
    if-eqz v8, :cond_2

    iget-object v11, p0, Lcom/unityota/unityotaActivity;->cfg:Lcom/unityota/utils/Config;

    invoke-virtual {v11}, Lcom/unityota/utils/Config;->getIgnoredDataWarn()Z

    move-result v11

    if-eqz v11, :cond_3

    :cond_2
    if-nez v8, :cond_4

    iget-object v11, p0, Lcom/unityota/unityotaActivity;->cfg:Lcom/unityota/utils/Config;

    invoke-virtual {v11}, Lcom/unityota/utils/Config;->getIgnoredWifiWarn()Z

    move-result v11

    if-nez v11, :cond_4

    :cond_3
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-eqz v8, :cond_8

    const v11, 0x7f090016

    :goto_1
    invoke-virtual {v1, v11}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    if-eqz v8, :cond_9

    const v11, 0x7f090015

    :goto_2
    invoke-virtual {v1, v11}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v11, 0x7f09005b

    new-instance v12, Lcom/unityota/unityotaActivity$2;

    invoke-direct {v12, p0}, Lcom/unityota/unityotaActivity$2;-><init>(Lcom/unityota/unityotaActivity;)V

    invoke-virtual {v1, v11, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v11, 0x7f09001d

    new-instance v12, Lcom/unityota/unityotaActivity$3;

    invoke-direct {v12, p0}, Lcom/unityota/unityotaActivity$3;-><init>(Lcom/unityota/unityotaActivity;)V

    invoke-virtual {v1, v11, v12}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v11, 0x7f09005f

    new-instance v12, Lcom/unityota/unityotaActivity$4;

    invoke-direct {v12, p0, v8}, Lcom/unityota/unityotaActivity$4;-><init>(Lcom/unityota/unityotaActivity;Z)V

    invoke-virtual {v1, v11, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    new-instance v11, Lcom/unityota/unityotaActivity$5;

    invoke-direct {v11, p0, v4}, Lcom/unityota/unityotaActivity$5;-><init>(Lcom/unityota/unityotaActivity;Landroid/app/AlertDialog;)V

    invoke-virtual {v4, v11}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    new-instance v11, Lcom/unityota/unityotaActivity$6;

    invoke-direct {v11, p0, v4}, Lcom/unityota/unityotaActivity$6;-><init>(Lcom/unityota/unityotaActivity;Landroid/app/AlertDialog;)V

    invoke-virtual {v4, v11}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    :cond_4
    invoke-static {p0}, Lcom/unityota/utils/Utils;->updateDeviceRegistration(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/unityota/CheckinReceiver;->setDailyAlarm(Landroid/content/Context;)V

    invoke-static {}, Lcom/unityota/utils/PropUtils;->isRomOtaEnabled()Z

    move-result v11

    if-nez v11, :cond_5

    invoke-static {}, Lcom/unityota/utils/PropUtils;->isKernelOtaEnabled()Z

    move-result v11

    if-nez v11, :cond_5

    iget-object v11, p0, Lcom/unityota/unityotaActivity;->cfg:Lcom/unityota/utils/Config;

    invoke-virtual {v11}, Lcom/unityota/utils/Config;->getIgnoredUnsupportedWarn()Z

    move-result v11

    if-nez v11, :cond_5

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v11, 0x7f09001b

    invoke-virtual {v1, v11}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v11, 0x7f09001a

    invoke-virtual {v1, v11}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v11, 0x7f09005b

    new-instance v12, Lcom/unityota/unityotaActivity$7;

    invoke-direct {v12, p0}, Lcom/unityota/unityotaActivity$7;-><init>(Lcom/unityota/unityotaActivity;)V

    invoke-virtual {v1, v11, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v11, 0x7f09005f

    new-instance v12, Lcom/unityota/unityotaActivity$8;

    invoke-direct {v12, p0}, Lcom/unityota/unityotaActivity$8;-><init>(Lcom/unityota/unityotaActivity;)V

    invoke-virtual {v1, v11, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    new-instance v11, Lcom/unityota/unityotaActivity$9;

    invoke-direct {v11, p0, v4}, Lcom/unityota/unityotaActivity$9;-><init>(Lcom/unityota/unityotaActivity;Landroid/app/AlertDialog;)V

    invoke-virtual {v4, v11}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    new-instance v11, Lcom/unityota/unityotaActivity$10;

    invoke-direct {v11, p0, v4}, Lcom/unityota/unityotaActivity$10;-><init>(Lcom/unityota/unityotaActivity;Landroid/app/AlertDialog;)V

    invoke-virtual {v4, v11}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    :cond_5
    const v11, 0x7f030008

    invoke-virtual {p0, v11}, Lcom/unityota/unityotaActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/unityota/unityotaActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v11

    const v12, 0x7f07002a

    invoke-virtual {v11, v12}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/unityota/unityotaActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v11

    invoke-virtual {v11, v0}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/FragmentTransaction;->commit()I

    :cond_6
    const v11, 0x7f07002e

    invoke-virtual {p0, v11}, Lcom/unityota/unityotaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/support/v4/view/ViewPager;

    invoke-virtual {p0}, Lcom/unityota/unityotaActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v11

    iput-object v11, p0, Lcom/unityota/unityotaActivity;->bar:Landroid/app/ActionBar;

    sget-boolean v11, Lcom/unityota/unityotaActivity;->$assertionsDisabled:Z

    if-nez v11, :cond_a

    iget-object v11, p0, Lcom/unityota/unityotaActivity;->bar:Landroid/app/ActionBar;

    if-nez v11, :cond_a

    new-instance v11, Ljava/lang/AssertionError;

    invoke-direct {v11}, Ljava/lang/AssertionError;-><init>()V

    throw v11

    :cond_7
    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_8
    const v11, 0x7f090019

    goto/16 :goto_1

    :cond_9
    const v11, 0x7f090018

    goto/16 :goto_2

    :cond_a
    iget-object v11, p0, Lcom/unityota/unityotaActivity;->bar:Landroid/app/ActionBar;

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Landroid/app/ActionBar;->setNavigationMode(I)V

    iget-object v11, p0, Lcom/unityota/unityotaActivity;->bar:Landroid/app/ActionBar;

    const/16 v12, 0x8

    const/16 v13, 0x8

    invoke-virtual {v11, v12, v13}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    iget-object v11, p0, Lcom/unityota/unityotaActivity;->bar:Landroid/app/ActionBar;

    const v12, 0x7f090021

    invoke-virtual {v11, v12}, Landroid/app/ActionBar;->setTitle(I)V

    new-instance v6, Lcom/unityota/unityotaActivity$TabsAdapter;

    invoke-direct {v6, p0, v7}, Lcom/unityota/unityotaActivity$TabsAdapter;-><init>(Landroid/app/Activity;Landroid/support/v4/view/ViewPager;)V

    iget-object v11, p0, Lcom/unityota/unityotaActivity;->bar:Landroid/app/ActionBar;

    invoke-virtual {v11}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v11

    const v12, 0x7f09006f

    invoke-virtual {v11, v12}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    move-result-object v11

    const-class v12, Lcom/unityota/AboutTab;

    invoke-virtual {v6, v11, v12}, Lcom/unityota/unityotaActivity$TabsAdapter;->addTab(Landroid/app/ActionBar$Tab;Ljava/lang/Class;)I

    iget-object v11, p0, Lcom/unityota/unityotaActivity;->bar:Landroid/app/ActionBar;

    invoke-virtual {v11}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v11

    const v12, 0x7f090073

    invoke-virtual {v11, v12}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    move-result-object v9

    iget-object v11, p0, Lcom/unityota/unityotaActivity;->cfg:Lcom/unityota/utils/Config;

    invoke-virtual {v11}, Lcom/unityota/utils/Config;->hasStoredRomUpdate()Z

    move-result v11

    if-eqz v11, :cond_b

    const v11, 0x7f02001d

    invoke-virtual {v9, v11}, Landroid/app/ActionBar$Tab;->setIcon(I)Landroid/app/ActionBar$Tab;

    :cond_b
    const-class v11, Lcom/unityota/ROMTab;

    invoke-virtual {v6, v9, v11}, Lcom/unityota/unityotaActivity$TabsAdapter;->addTab(Landroid/app/ActionBar$Tab;Ljava/lang/Class;)I

    move-result v11

    iput v11, p0, Lcom/unityota/unityotaActivity;->romTabIdx:I

    iget-object v11, p0, Lcom/unityota/unityotaActivity;->bar:Landroid/app/ActionBar;

    invoke-virtual {v11}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v11

    const v12, 0x7f090071

    invoke-virtual {v11, v12}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    move-result-object v5

    iget-object v11, p0, Lcom/unityota/unityotaActivity;->cfg:Lcom/unityota/utils/Config;

    invoke-virtual {v11}, Lcom/unityota/utils/Config;->hasStoredKernelUpdate()Z

    move-result v11

    if-eqz v11, :cond_c

    const v11, 0x7f02001d

    invoke-virtual {v5, v11}, Landroid/app/ActionBar$Tab;->setIcon(I)Landroid/app/ActionBar$Tab;

    :cond_c
    const-class v11, Lcom/unityota/KernelTab;

    invoke-virtual {v6, v5, v11}, Lcom/unityota/unityotaActivity$TabsAdapter;->addTab(Landroid/app/ActionBar$Tab;Ljava/lang/Class;)I

    move-result v11

    iput v11, p0, Lcom/unityota/unityotaActivity;->kernelTabIdx:I

    invoke-virtual {p0}, Lcom/unityota/unityotaActivity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/unityota/unityotaActivity;->handleNotifAction(Landroid/content/Intent;)Z

    move-result v11

    if-nez v11, :cond_f

    iget-object v11, p0, Lcom/unityota/unityotaActivity;->cfg:Lcom/unityota/utils/Config;

    invoke-virtual {v11}, Lcom/unityota/utils/Config;->hasStoredRomUpdate()Z

    move-result v11

    if-eqz v11, :cond_d

    iget-object v11, p0, Lcom/unityota/unityotaActivity;->cfg:Lcom/unityota/utils/Config;

    invoke-virtual {v11}, Lcom/unityota/utils/Config;->isDownloadingRom()Z

    move-result v11

    if-nez v11, :cond_d

    iget-object v11, p0, Lcom/unityota/unityotaActivity;->cfg:Lcom/unityota/utils/Config;

    invoke-virtual {v11}, Lcom/unityota/utils/Config;->getStoredRomUpdate()Lcom/unityota/utils/RomInfo;

    move-result-object v11

    invoke-virtual {v11, p0}, Lcom/unityota/utils/RomInfo;->showUpdateNotif(Landroid/content/Context;)V

    :cond_d
    iget-object v11, p0, Lcom/unityota/unityotaActivity;->cfg:Lcom/unityota/utils/Config;

    invoke-virtual {v11}, Lcom/unityota/utils/Config;->hasStoredKernelUpdate()Z

    move-result v11

    if-eqz v11, :cond_e

    iget-object v11, p0, Lcom/unityota/unityotaActivity;->cfg:Lcom/unityota/utils/Config;

    invoke-virtual {v11}, Lcom/unityota/utils/Config;->isDownloadingKernel()Z

    move-result v11

    if-nez v11, :cond_e

    iget-object v11, p0, Lcom/unityota/unityotaActivity;->cfg:Lcom/unityota/utils/Config;

    invoke-virtual {v11}, Lcom/unityota/utils/Config;->getStoredKernelUpdate()Lcom/unityota/utils/KernelInfo;

    move-result-object v11

    invoke-virtual {v11, p0}, Lcom/unityota/utils/KernelInfo;->showUpdateNotif(Landroid/content/Context;)V

    :cond_e
    if-eqz p1, :cond_f

    iget-object v11, p0, Lcom/unityota/unityotaActivity;->bar:Landroid/app/ActionBar;

    const-string v12, "tab"

    const/4 v13, 0x0

    invoke-virtual {p1, v12, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    :cond_f
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/unityota/unityotaActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0b

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 v1, 0x1

    return v1
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/unityota/unityotaActivity;->billingSrvConn:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unityota/unityotaActivity;->billingSrvConn:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/unityota/unityotaActivity;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    invoke-super {p0}, Lcom/unityota/utils/BaseDownloadDialogActivity;->onDestroy()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/unityota/utils/BaseDownloadDialogActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-direct {p0, p1}, Lcom/unityota/unityotaActivity;->handleNotifAction(Landroid/content/Intent;)Z

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/unityota/utils/BaseDownloadDialogActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/unityota/SettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/unityota/unityotaActivity;->startActivity(Landroid/content/Intent;)V

    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/unityota/DownloadsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/unityota/unityotaActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/unityota/SettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "show_account_dlg"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/unityota/unityotaActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x7f07002f
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Lcom/unityota/utils/BaseDownloadDialogActivity;->onPause()V

    iget-object v0, p0, Lcom/unityota/unityotaActivity;->adsHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method protected onResume()V
    .locals 4

    invoke-super {p0}, Lcom/unityota/utils/BaseDownloadDialogActivity;->onResume()V

    iget-object v0, p0, Lcom/unityota/unityotaActivity;->adsHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/unityota/unityotaActivity;->adsHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    invoke-super {p0, p1}, Lcom/unityota/utils/BaseDownloadDialogActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "tab"

    iget-object v1, p0, Lcom/unityota/unityotaActivity;->bar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public updateKernelTabIcon(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/unityota/unityotaActivity;->bar:Landroid/app/ActionBar;

    iget v1, p0, Lcom/unityota/unityotaActivity;->kernelTabIdx:I

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->getTabAt(I)Landroid/app/ActionBar$Tab;

    move-result-object v0

    const v1, 0x7f02001d

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setIcon(I)Landroid/app/ActionBar$Tab;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/unityota/unityotaActivity;->bar:Landroid/app/ActionBar;

    iget v1, p0, Lcom/unityota/unityotaActivity;->kernelTabIdx:I

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->getTabAt(I)Landroid/app/ActionBar$Tab;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/ActionBar$Tab;

    goto :goto_0
.end method

.method public updateRomTabIcon(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/unityota/unityotaActivity;->bar:Landroid/app/ActionBar;

    iget v1, p0, Lcom/unityota/unityotaActivity;->romTabIdx:I

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->getTabAt(I)Landroid/app/ActionBar$Tab;

    move-result-object v0

    const v1, 0x7f02001d

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setIcon(I)Landroid/app/ActionBar$Tab;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/unityota/unityotaActivity;->bar:Landroid/app/ActionBar;

    iget v1, p0, Lcom/unityota/unityotaActivity;->romTabIdx:I

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->getTabAt(I)Landroid/app/ActionBar$Tab;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/ActionBar$Tab;

    goto :goto_0
.end method
