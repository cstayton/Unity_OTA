.class public Lcom/unityota/utils/RomInfo;
.super Lcom/unityota/utils/BaseInfo;
.source "RomInfo.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/unityota/utils/RomInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final FACTORY:Lcom/unityota/utils/BaseInfo$InfoFactory; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/unityota/utils/BaseInfo$InfoFactory",
            "<",
            "Lcom/unityota/utils/RomInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_NAME:Ljava/lang/String; = "rom"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/unityota/utils/BaseInfo$InfoFactory;

    const-class v1, Lcom/unityota/utils/RomInfo;

    invoke-direct {v0, v1}, Lcom/unityota/utils/BaseInfo$InfoFactory;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/unityota/utils/RomInfo;->FACTORY:Lcom/unityota/utils/BaseInfo$InfoFactory;

    sget-object v0, Lcom/unityota/utils/RomInfo;->FACTORY:Lcom/unityota/utils/BaseInfo$InfoFactory;

    invoke-virtual {v0}, Lcom/unityota/utils/BaseInfo$InfoFactory;->getParcelableCreator()Landroid/os/Parcelable$Creator;

    move-result-object v0

    sput-object v0, Lcom/unityota/utils/RomInfo;->CREATOR:Landroid/os/Parcelable$Creator;

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

    const-string v0, "com.unityota.action.DL_ROM_ACTION"

    return-object v0
.end method

.method protected getDownloadDialogMessageStr()I
    .locals 1

    const v0, 0x7f09008d

    return v0
.end method

.method public getDownloadDoneTitle()I
    .locals 1

    const v0, 0x7f090085

    return v0
.end method

.method public getDownloadFailedTitle()I
    .locals 1

    const v0, 0x7f090086

    return v0
.end method

.method protected getDownloadPathFile()Ljava/io/File;
    .locals 1

    sget-object v0, Lcom/unityota/utils/Config;->ROM_DL_PATH_FILE:Ljava/io/File;

    return-object v0
.end method

.method protected getDownloadSdPath()Ljava/lang/String;
    .locals 1

    const-string v0, "/OTA-Updater/download/ROM/"

    return-object v0
.end method

.method protected getDownloadingNotifTitle()I
    .locals 1

    const v0, 0x7f090087

    return v0
.end method

.method public getDownloadingTitle()I
    .locals 1

    const v0, 0x7f090083

    return v0
.end method

.method public getFailedNotifID()I
    .locals 1

    const/16 v0, 0x65

    return v0
.end method

.method public getFlashAction()Ljava/lang/String;
    .locals 1

    const-string v0, "com.unityota.action.FLASH_ROM_ACTION"

    return-object v0
.end method

.method public getFlashNotifID()I
    .locals 1

    const/16 v0, 0x66

    return v0
.end method

.method protected getNameKey()Ljava/lang/String;
    .locals 1

    const-string v0, "rom"

    return-object v0
.end method

.method public getNotifAction()Ljava/lang/String;
    .locals 1

    const-string v0, "com.unityota.action.ROM_NOTIF_ACTION"

    return-object v0
.end method

.method protected getNotifDetailsStr()I
    .locals 1

    const v0, 0x7f090084

    return v0
.end method

.method protected getNotifID()I
    .locals 1

    const/16 v0, 0x64

    return v0
.end method

.method protected getNotifTextStr()I
    .locals 1

    const v0, 0x7f090089

    return v0
.end method

.method protected getNotifTickerStr()I
    .locals 1

    const v0, 0x7f090088

    return v0
.end method

.method protected getPropDate()Ljava/util/Date;
    .locals 1

    invoke-static {}, Lcom/unityota/utils/PropUtils;->getRomOtaDate()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method protected getPropVersion()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/unityota/utils/PropUtils;->getRomOtaVersion()Ljava/lang/String;

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
