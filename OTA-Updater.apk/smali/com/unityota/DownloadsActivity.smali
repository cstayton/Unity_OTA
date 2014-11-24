.class public Lcom/unityota/DownloadsActivity;
.super Lcom/unityota/utils/BaseDownloadDialogActivity;
.source "DownloadsActivity.java"

# interfaces
.implements Landroid/app/ActionBar$OnNavigationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unityota/DownloadsActivity$AdsHandler;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field public static final EXTRA_FLASH_INFO:Ljava/lang/String; = "flash_info"

.field public static final EXTRA_GOTO_TYPE:Ljava/lang/String; = "goto_type"

.field public static final FLASH_KERNEL_ACTION:Ljava/lang/String; = "com.unityota.action.FLASH_KERNEL_ACTION"

.field public static final FLASH_ROM_ACTION:Ljava/lang/String; = "com.unityota.action.FLASH_ROM_ACTION"

.field public static final GOTO_TYPE_KERNEL:I = 0x1

.field public static final GOTO_TYPE_ROM:I


# instance fields
.field private final adsHandler:Landroid/os/Handler;

.field private bar:Landroid/app/ActionBar;

.field private dlFragment:Lcom/unityota/DownloadListFragment;

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
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/unityota/DownloadsActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/unityota/DownloadsActivity;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/unityota/utils/BaseDownloadDialogActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/unityota/DownloadsActivity;->dlgs:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unityota/DownloadsActivity;->dlFragment:Lcom/unityota/DownloadListFragment;

    new-instance v0, Lcom/unityota/DownloadsActivity$AdsHandler;

    invoke-direct {v0, p0}, Lcom/unityota/DownloadsActivity$AdsHandler;-><init>(Lcom/unityota/DownloadsActivity;)V

    iput-object v0, p0, Lcom/unityota/DownloadsActivity;->adsHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/unityota/DownloadsActivity;[Ljava/lang/String;ZZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/unityota/DownloadsActivity;->flashFiles([Ljava/lang/String;ZZZ)V

    return-void
.end method

.method private flashFiles([Ljava/lang/String;ZZZ)V
    .locals 12

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    const-string v9, "su"

    invoke-virtual {v8, v9}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v6

    new-instance v5, Ljava/io/DataOutputStream;

    invoke-virtual {v6}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const-string v8, "cmd mkdir /cache/recovery/\n"

    invoke-virtual {v5, v8}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    const-string v8, "rm -f /cache/recovery/command\n"

    invoke-virtual {v5, v8}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    const-string v8, "rm -f /cache/recovery/openrecoveryscript\n"

    invoke-virtual {v5, v8}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    const-string v8, "echo \'boot-recovery\' >> /cache/recovery/command\n"

    invoke-virtual {v5, v8}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    sget-object v8, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v8, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "klte"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    if-eqz p2, :cond_0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "echo \'backup SDM\' >> /cache/recovery/openrecoveryscript\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    :cond_0
    if-eqz p4, :cond_1

    const-string v8, "echo \'wipe data\' >> /cache/recovery/openrecoveryscript\n"

    invoke-virtual {v5, v8}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    :cond_1
    if-eqz p3, :cond_2

    const-string v8, "echo \'wipe cache\' >> /cache/recovery/openrecoveryscript\n"

    invoke-virtual {v5, v8}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    :cond_2
    move-object v0, p1

    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_7

    aget-object v2, v0, v3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "echo \'install "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' >> /cache/recovery/openrecoveryscript\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    const-string v8, "echo \'--nandroid\' >> /cache/recovery/command\n"

    invoke-virtual {v5, v8}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    :cond_4
    if-eqz p4, :cond_5

    const-string v8, "echo \'--wipe_data\' >> /cache/recovery/command\n"

    invoke-virtual {v5, v8}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    :cond_5
    if-eqz p3, :cond_6

    const-string v8, "echo \'--wipe_cache\' >> /cache/recovery/command\n"

    invoke-virtual {v5, v8}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    :cond_6
    move-object v0, p1

    array-length v4, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_7

    aget-object v2, v0, v3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "echo \'--update_package="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' >> /cache/recovery/command\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_7
    invoke-static {}, Lcom/unityota/utils/PropUtils;->getRebootCmd()Ljava/lang/String;

    move-result-object v7

    const-string v8, "$$NULL$$"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    const-string v8, "sync\n"

    invoke-virtual {v5, v8}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    const-string v8, ".sh"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sh "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    :cond_8
    :goto_2
    const-string v8, "sync\n"

    invoke-virtual {v5, v8}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    const-string v8, "exit\n"

    invoke-virtual {v5, v8}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v6}, Ljava/lang/Process;->waitFor()I

    const-string v8, "power"

    invoke-virtual {p0, v8}, Lcom/unityota/DownloadsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/PowerManager;

    const-string v9, "recovery"

    invoke-virtual {v8, v9}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    :goto_3
    return-void

    :cond_9
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method private showNoFlashDialog(Ljava/lang/String;)V
    .locals 5

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f09000f

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f090017

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/unityota/DownloadsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v2, 0x104000a

    new-instance v3, Lcom/unityota/DownloadsActivity$6;

    invoke-direct {v3, p0}, Lcom/unityota/DownloadsActivity$6;-><init>(Lcom/unityota/DownloadsActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    new-instance v2, Lcom/unityota/DownloadsActivity$7;

    invoke-direct {v2, p0, v1}, Lcom/unityota/DownloadsActivity$7;-><init>(Lcom/unityota/DownloadsActivity;Landroid/app/AlertDialog;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    new-instance v2, Lcom/unityota/DownloadsActivity$8;

    invoke-direct {v2, p0, v1}, Lcom/unityota/DownloadsActivity$8;-><init>(Lcom/unityota/DownloadsActivity;Landroid/app/AlertDialog;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x1

    invoke-super {p0, p1}, Lcom/unityota/utils/BaseDownloadDialogActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v4, "mounted"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "mounted_ro"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "shared"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const v4, 0x7f0900ae

    :goto_0
    invoke-static {p0, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/unityota/DownloadsActivity;->finish()V

    :cond_0
    const v4, 0x7f030005

    invoke-virtual {p0, v4}, Lcom/unityota/DownloadsActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/unityota/DownloadsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const v5, 0x7f07002b

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v4

    check-cast v4, Lcom/unityota/DownloadListFragment;

    iput-object v4, p0, Lcom/unityota/DownloadsActivity;->dlFragment:Lcom/unityota/DownloadListFragment;

    invoke-virtual {p0}, Lcom/unityota/DownloadsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const v5, 0x7f07002a

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/unityota/DownloadsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentTransaction;->commit()I

    :cond_1
    invoke-virtual {p0}, Lcom/unityota/DownloadsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    iput-object v4, p0, Lcom/unityota/DownloadsActivity;->bar:Landroid/app/ActionBar;

    sget-boolean v4, Lcom/unityota/DownloadsActivity;->$assertionsDisabled:Z

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/unityota/DownloadsActivity;->bar:Landroid/app/ActionBar;

    if-nez v4, :cond_3

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    :cond_2
    const v4, 0x7f0900ad

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/unityota/DownloadsActivity;->bar:Landroid/app/ActionBar;

    invoke-virtual {v4, v6}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    iget-object v4, p0, Lcom/unityota/DownloadsActivity;->bar:Landroid/app/ActionBar;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    iget-object v4, p0, Lcom/unityota/DownloadsActivity;->bar:Landroid/app/ActionBar;

    invoke-virtual {v4, v6}, Landroid/app/ActionBar;->setNavigationMode(I)V

    iget-object v4, p0, Lcom/unityota/DownloadsActivity;->bar:Landroid/app/ActionBar;

    const/high16 v5, 0x7f05

    const v6, 0x1090009

    invoke-static {p0, v5, v6}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v5

    invoke-virtual {v4, v5, p0}, Landroid/app/ActionBar;->setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/app/ActionBar$OnNavigationListener;)V

    const/4 v3, -0x1

    invoke-virtual {p0}, Lcom/unityota/DownloadsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v4, "com.unityota.action.FLASH_ROM_ACTION"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v3, 0x0

    sget-object v4, Lcom/unityota/utils/RomInfo;->FACTORY:Lcom/unityota/utils/BaseInfo$InfoFactory;

    invoke-virtual {p0}, Lcom/unityota/DownloadsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/unityota/utils/BaseInfo$InfoFactory;->fromIntent(Landroid/content/Intent;)Lcom/unityota/utils/BaseInfo;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/unityota/DownloadsActivity;->showFlashDialog(Lcom/unityota/utils/BaseInfo;)V

    :cond_4
    :goto_1
    if-eqz p1, :cond_5

    const/4 v4, -0x1

    if-ne v3, v4, :cond_5

    const-string v4, "state"

    iget-object v5, p0, Lcom/unityota/DownloadsActivity;->dlFragment:Lcom/unityota/DownloadListFragment;

    invoke-virtual {v5}, Lcom/unityota/DownloadListFragment;->getState()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    :cond_5
    iget-object v4, p0, Lcom/unityota/DownloadsActivity;->bar:Landroid/app/ActionBar;

    invoke-virtual {v4, v3}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    return-void

    :cond_6
    const-string v4, "com.unityota.action.FLASH_KERNEL_ACTION"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v3, 0x1

    sget-object v4, Lcom/unityota/utils/KernelInfo;->FACTORY:Lcom/unityota/utils/BaseInfo$InfoFactory;

    invoke-virtual {p0}, Lcom/unityota/DownloadsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/unityota/utils/BaseInfo$InfoFactory;->fromIntent(Landroid/content/Intent;)Lcom/unityota/utils/BaseInfo;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/unityota/DownloadsActivity;->showFlashDialog(Lcom/unityota/utils/BaseInfo;)V

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Lcom/unityota/DownloadsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "goto_type"

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    goto :goto_1
.end method

.method public onNavigationItemSelected(IJ)Z
    .locals 1

    iget-object v0, p0, Lcom/unityota/DownloadsActivity;->dlFragment:Lcom/unityota/DownloadListFragment;

    invoke-virtual {v0, p1}, Lcom/unityota/DownloadListFragment;->setState(I)V

    const/4 v0, 0x1

    return v0
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

    iget-object v2, p0, Lcom/unityota/DownloadsActivity;->dlgs:Ljava/util/ArrayList;

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
    iget-object v2, p0, Lcom/unityota/DownloadsActivity;->dlgs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    invoke-super {p0}, Lcom/unityota/utils/BaseDownloadDialogActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 4

    invoke-super {p0}, Lcom/unityota/utils/BaseDownloadDialogActivity;->onResume()V

    iget-object v0, p0, Lcom/unityota/DownloadsActivity;->adsHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/unityota/DownloadsActivity;->adsHandler:Landroid/os/Handler;

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

    const-string v0, "state"

    iget-object v1, p0, Lcom/unityota/DownloadsActivity;->bar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method protected showFlashDialog(Lcom/unityota/utils/BaseInfo;)V
    .locals 6

    invoke-static {}, Lcom/unityota/utils/PropUtils;->getNoFlash()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Lcom/unityota/utils/BaseInfo;->getDownloadFileName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/unityota/DownloadsActivity;->showNoFlashDialog(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/unityota/DownloadsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f050002

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    array-length v4, v2

    new-array v3, v4, [Z

    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x1

    aput-boolean v5, v3, v4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f09000f

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    new-instance v4, Lcom/unityota/DownloadsActivity$1;

    invoke-direct {v4, p0, v3}, Lcom/unityota/DownloadsActivity$1;-><init>(Lcom/unityota/DownloadsActivity;[Z)V

    invoke-virtual {v0, v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    const v4, 0x7f090060

    new-instance v5, Lcom/unityota/DownloadsActivity$2;

    invoke-direct {v5, p0, p1, v3}, Lcom/unityota/DownloadsActivity$2;-><init>(Lcom/unityota/DownloadsActivity;Lcom/unityota/utils/BaseInfo;[Z)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v4, 0x104

    new-instance v5, Lcom/unityota/DownloadsActivity$3;

    invoke-direct {v5, p0}, Lcom/unityota/DownloadsActivity$3;-><init>(Lcom/unityota/DownloadsActivity;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    new-instance v4, Lcom/unityota/DownloadsActivity$4;

    invoke-direct {v4, p0, v1}, Lcom/unityota/DownloadsActivity$4;-><init>(Lcom/unityota/DownloadsActivity;Landroid/app/AlertDialog;)V

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    new-instance v4, Lcom/unityota/DownloadsActivity$5;

    invoke-direct {v4, p0, v1}, Lcom/unityota/DownloadsActivity$5;-><init>(Lcom/unityota/DownloadsActivity;Landroid/app/AlertDialog;)V

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
