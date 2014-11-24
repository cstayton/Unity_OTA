.class Lcom/unityota/utils/PropUtils$LegacyCompat;
.super Ljava/lang/Object;
.source "PropUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unityota/utils/PropUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LegacyCompat"
.end annotation


# static fields
.field public static final OTA_DATE_PROP:Ljava/lang/String; = "unityota.otatime"

.field public static final OTA_ID_PROP:Ljava/lang/String; = "unityota.otaid"

.field public static final OTA_NOFLASH_PROP:Ljava/lang/String; = "unityota.noflash"

.field public static final OTA_REBOOT_CMD_PROP:Ljava/lang/String; = "unityota.rebootcmd"

.field public static final OTA_RECOVERY_SD_PATH_PROP:Ljava/lang/String; = "unityota.sdcard.recovery"

.field public static final OTA_SYSTEM_SD_PATH_PROP:Ljava/lang/String; = "unityota.sdcard.os"

.field public static final OTA_VER_PROP:Ljava/lang/String; = "unityota.otaver"

.field private static cachedRomID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/unityota/utils/PropUtils$LegacyCompat;->cachedRomID:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNoflash()Ljava/lang/Boolean;
    .locals 4

    new-instance v0, Lcom/unityota/utils/ShellCommand;

    invoke-direct {v0}, Lcom/unityota/utils/ShellCommand;-><init>()V

    iget-object v2, v0, Lcom/unityota/utils/ShellCommand;->sh:Lcom/unityota/utils/ShellCommand$SH;

    const-string v3, "getprop unityota.noflash"

    invoke-virtual {v2, v3}, Lcom/unityota/utils/ShellCommand$SH;->runWaitFor(Ljava/lang/String;)Lcom/unityota/utils/ShellCommand$CommandResult;

    move-result-object v1

    iget-object v2, v1, Lcom/unityota/utils/ShellCommand$CommandResult;->stdout:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    iget-object v2, v1, Lcom/unityota/utils/ShellCommand$CommandResult;->stdout:Ljava/lang/String;

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v1, Lcom/unityota/utils/ShellCommand$CommandResult;->stdout:Ljava/lang/String;

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v2, 0x1

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static getRebootCmd()Ljava/lang/String;
    .locals 4

    new-instance v0, Lcom/unityota/utils/ShellCommand;

    invoke-direct {v0}, Lcom/unityota/utils/ShellCommand;-><init>()V

    iget-object v2, v0, Lcom/unityota/utils/ShellCommand;->sh:Lcom/unityota/utils/ShellCommand$SH;

    const-string v3, "getprop unityota.rebootcmd"

    invoke-virtual {v2, v3}, Lcom/unityota/utils/ShellCommand$SH;->runWaitFor(Ljava/lang/String;)Lcom/unityota/utils/ShellCommand$CommandResult;

    move-result-object v1

    iget-object v2, v1, Lcom/unityota/utils/ShellCommand$CommandResult;->stdout:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    iget-object v2, v1, Lcom/unityota/utils/ShellCommand$CommandResult;->stdout:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getRecoverySdPath()Ljava/lang/String;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SdCardPath"
        }
    .end annotation

    new-instance v0, Lcom/unityota/utils/ShellCommand;

    invoke-direct {v0}, Lcom/unityota/utils/ShellCommand;-><init>()V

    iget-object v2, v0, Lcom/unityota/utils/ShellCommand;->sh:Lcom/unityota/utils/ShellCommand$SH;

    const-string v3, "getprop unityota.sdcard.recovery"

    invoke-virtual {v2, v3}, Lcom/unityota/utils/ShellCommand$SH;->runWaitFor(Ljava/lang/String;)Lcom/unityota/utils/ShellCommand$CommandResult;

    move-result-object v1

    iget-object v2, v1, Lcom/unityota/utils/ShellCommand$CommandResult;->stdout:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    iget-object v2, v1, Lcom/unityota/utils/ShellCommand$CommandResult;->stdout:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getRomOtaDate()Ljava/util/Date;
    .locals 4

    new-instance v0, Lcom/unityota/utils/ShellCommand;

    invoke-direct {v0}, Lcom/unityota/utils/ShellCommand;-><init>()V

    iget-object v2, v0, Lcom/unityota/utils/ShellCommand;->sh:Lcom/unityota/utils/ShellCommand$SH;

    const-string v3, "getprop unityota.otatime"

    invoke-virtual {v2, v3}, Lcom/unityota/utils/ShellCommand$SH;->runWaitFor(Ljava/lang/String;)Lcom/unityota/utils/ShellCommand$CommandResult;

    move-result-object v1

    iget-object v2, v1, Lcom/unityota/utils/ShellCommand$CommandResult;->stdout:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    iget-object v2, v1, Lcom/unityota/utils/ShellCommand$CommandResult;->stdout:Ljava/lang/String;

    invoke-static {v2}, Lcom/unityota/utils/Utils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    goto :goto_0
.end method

.method public static getRomOtaID()Ljava/lang/String;
    .locals 4

    sget-object v2, Lcom/unityota/utils/PropUtils$LegacyCompat;->cachedRomID:Ljava/lang/String;

    if-nez v2, :cond_1

    new-instance v0, Lcom/unityota/utils/ShellCommand;

    invoke-direct {v0}, Lcom/unityota/utils/ShellCommand;-><init>()V

    iget-object v2, v0, Lcom/unityota/utils/ShellCommand;->sh:Lcom/unityota/utils/ShellCommand$SH;

    const-string v3, "getprop unityota.otaid"

    invoke-virtual {v2, v3}, Lcom/unityota/utils/ShellCommand$SH;->runWaitFor(Ljava/lang/String;)Lcom/unityota/utils/ShellCommand$CommandResult;

    move-result-object v1

    iget-object v2, v1, Lcom/unityota/utils/ShellCommand$CommandResult;->stdout:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    iget-object v2, v1, Lcom/unityota/utils/ShellCommand$CommandResult;->stdout:Ljava/lang/String;

    sput-object v2, Lcom/unityota/utils/PropUtils$LegacyCompat;->cachedRomID:Ljava/lang/String;

    :cond_1
    sget-object v2, Lcom/unityota/utils/PropUtils$LegacyCompat;->cachedRomID:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getRomOtaVersion()Ljava/lang/String;
    .locals 4

    new-instance v0, Lcom/unityota/utils/ShellCommand;

    invoke-direct {v0}, Lcom/unityota/utils/ShellCommand;-><init>()V

    iget-object v2, v0, Lcom/unityota/utils/ShellCommand;->sh:Lcom/unityota/utils/ShellCommand$SH;

    const-string v3, "getprop unityota.otaver"

    invoke-virtual {v2, v3}, Lcom/unityota/utils/ShellCommand$SH;->runWaitFor(Ljava/lang/String;)Lcom/unityota/utils/ShellCommand$CommandResult;

    move-result-object v1

    iget-object v2, v1, Lcom/unityota/utils/ShellCommand$CommandResult;->stdout:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    iget-object v2, v1, Lcom/unityota/utils/ShellCommand$CommandResult;->stdout:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getSystemSdPath()Ljava/lang/String;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SdCardPath"
        }
    .end annotation

    new-instance v0, Lcom/unityota/utils/ShellCommand;

    invoke-direct {v0}, Lcom/unityota/utils/ShellCommand;-><init>()V

    iget-object v2, v0, Lcom/unityota/utils/ShellCommand;->sh:Lcom/unityota/utils/ShellCommand$SH;

    const-string v3, "getprop unityota.sdcard.os"

    invoke-virtual {v2, v3}, Lcom/unityota/utils/ShellCommand$SH;->runWaitFor(Ljava/lang/String;)Lcom/unityota/utils/ShellCommand$CommandResult;

    move-result-object v1

    iget-object v2, v1, Lcom/unityota/utils/ShellCommand$CommandResult;->stdout:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    iget-object v2, v1, Lcom/unityota/utils/ShellCommand$CommandResult;->stdout:Ljava/lang/String;

    goto :goto_0
.end method

.method public static isRomOtaEnabled()Z
    .locals 2

    invoke-static {}, Lcom/unityota/utils/PropUtils$LegacyCompat;->getRomOtaID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
