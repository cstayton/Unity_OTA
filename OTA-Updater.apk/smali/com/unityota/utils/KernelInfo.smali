.class public Lcom/unityota/utils/KernelInfo;
.super Lcom/unityota/utils/BaseInfo;
.source "KernelInfo.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/unityota/utils/KernelInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final FACTORY:Lcom/unityota/utils/BaseInfo$InfoFactory; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/unityota/utils/BaseInfo$InfoFactory",
            "<",
            "Lcom/unityota/utils/KernelInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_NAME:Ljava/lang/String; = "kernel"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/unityota/utils/BaseInfo$InfoFactory;

    const-class v1, Lcom/unityota/utils/KernelInfo;

    invoke-direct {v0, v1}, Lcom/unityota/utils/BaseInfo$InfoFactory;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/unityota/utils/KernelInfo;->FACTORY:Lcom/unityota/utils/BaseInfo$InfoFactory;

    sget-object v0, Lcom/unityota/utils/KernelInfo;->FACTORY:Lcom/unityota/utils/BaseInfo$InfoFactory;

    invoke-virtual {v0}, Lcom/unityota/utils/BaseInfo$InfoFactory;->getParcelableCreator()Landroid/os/Parcelable$Creator;

    move-result-object v0

    sput-object v0, Lcom/unityota/utils/KernelInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/unityota/utils/BaseInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public getDownloadAction()Ljava/lang/String;
    .locals 1

    const-string v0, "com.unityota.action.DL_KERNEL_ACTION"

    return-object v0
.end method

.method protected getDownloadDialogMessageStr()I
    .locals 1

    const v0, 0x7f09006b

    return v0
.end method

.method public getDownloadDoneTitle()I
    .locals 1

    const v0, 0x7f090063

    return v0
.end method

.method public getDownloadFailedTitle()I
    .locals 1

    const v0, 0x7f090064

    return v0
.end method

.method protected getDownloadPathFile()Ljava/io/File;
    .locals 1

    sget-object v0, Lcom/unityota/utils/Config;->KERNEL_DL_PATH_FILE:Ljava/io/File;

    return-object v0
.end method

.method protected getDownloadSdPath()Ljava/lang/String;
    .locals 1

    const-string v0, "/OTA-Updater/download/kernel/"

    return-object v0
.end method

.method protected getDownloadingNotifTitle()I
    .locals 1

    const v0, 0x7f090065

    return v0
.end method

.method public getDownloadingTitle()I
    .locals 1

    const v0, 0x7f090061

    return v0
.end method

.method public getFailedNotifID()I
    .locals 1

    const/16 v0, 0xc9

    return v0
.end method

.method public getFlashAction()Ljava/lang/String;
    .locals 1

    const-string v0, "com.unityota.action.FLASH_KERNEL_ACTION"

    return-object v0
.end method

.method public getFlashNotifID()I
    .locals 1

    const/16 v0, 0xca

    return v0
.end method

.method protected getNameKey()Ljava/lang/String;
    .locals 1

    const-string v0, "kernel"

    return-object v0
.end method

.method public getNotifAction()Ljava/lang/String;
    .locals 1

    const-string v0, "com.unityota.action.KERNEL_NOTIF_ACTION"

    return-object v0
.end method

.method protected getNotifDetailsStr()I
    .locals 1

    const v0, 0x7f090062

    return v0
.end method

.method protected getNotifID()I
    .locals 1

    const/16 v0, 0xc8

    return v0
.end method

.method protected getNotifTextStr()I
    .locals 1

    const v0, 0x7f090067

    return v0
.end method

.method protected getNotifTickerStr()I
    .locals 1

    const v0, 0x7f090066

    return v0
.end method

.method protected getPropDate()Ljava/util/Date;
    .locals 1

    invoke-static {}, Lcom/unityota/utils/PropUtils;->getKernelOtaDate()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method protected getPropVersion()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/unityota/utils/PropUtils;->getKernelOtaVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected isDownloading(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p1}, Lcom/unityota/utils/Config;->getInstance(Landroid/content/Context;)Lcom/unityota/utils/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unityota/utils/Config;->isDownloadingRom()Z

    move-result v0

    return v0
.end method
