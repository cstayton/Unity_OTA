.class public Lcom/unityota/utils/PropUtils;
.super Ljava/lang/Object;
.source "PropUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unityota/utils/PropUtils$LegacyCompat;
    }
.end annotation


# static fields
.field public static final GEN_OTA_PROP:Ljava/lang/String; = "/system/ota.prop"

.field private static KERNEL_OTA_ENABLED:Z = false

.field public static final KERNEL_OTA_PROP:Ljava/lang/String; = "/system/kernel.ota.prop"

.field private static final PROC_VERSION_REGEX:Ljava/lang/String; = "\\w+\\s+\\w+\\s+([^\\s]+)\\s+\\(([^\\s@]+@[^\\s@]+)\\)+\\s+\\(gcc.*\\)\\s+([^\\s]+)\\s+(?:SMP\\s+)?(?:PREEMPT\\s+)?(.+)"

#the value of this static final field might be set in the static constructor
.field private static final ROM_OTA_ENABLED:Z = false

.field public static final ROM_OTA_PROP:Ljava/lang/String; = "/system/rom.ota.prop"

.field private static cachedFullKernelVer:Ljava/lang/String;

.field private static cachedKernelDate:Ljava/util/Date;

.field private static cachedKernelID:Ljava/lang/String;

.field private static cachedKernelUname:Ljava/lang/String;

.field private static cachedKernelVer:Ljava/lang/String;

.field private static cachedNoFlash:Ljava/lang/Boolean;

.field private static cachedRebootCmd:Ljava/lang/String;

.field private static cachedRecoverySdPath:Ljava/lang/String;

.field private static cachedRomDate:Ljava/util/Date;

.field private static cachedRomID:Ljava/lang/String;

.field private static cachedRomVer:Ljava/lang/String;

.field private static cachedSystemSdPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v3, 0x0

    const/4 v2, 0x0

    sput-object v2, Lcom/unityota/utils/PropUtils;->cachedRomID:Ljava/lang/String;

    sput-object v2, Lcom/unityota/utils/PropUtils;->cachedRomDate:Ljava/util/Date;

    sput-object v2, Lcom/unityota/utils/PropUtils;->cachedRomVer:Ljava/lang/String;

    sput-object v2, Lcom/unityota/utils/PropUtils;->cachedKernelID:Ljava/lang/String;

    sput-object v2, Lcom/unityota/utils/PropUtils;->cachedKernelDate:Ljava/util/Date;

    sput-object v2, Lcom/unityota/utils/PropUtils;->cachedKernelVer:Ljava/lang/String;

    sput-object v2, Lcom/unityota/utils/PropUtils;->cachedFullKernelVer:Ljava/lang/String;

    sput-object v2, Lcom/unityota/utils/PropUtils;->cachedKernelUname:Ljava/lang/String;

    sput-object v2, Lcom/unityota/utils/PropUtils;->cachedSystemSdPath:Ljava/lang/String;

    sput-object v2, Lcom/unityota/utils/PropUtils;->cachedRecoverySdPath:Ljava/lang/String;

    sput-object v2, Lcom/unityota/utils/PropUtils;->cachedNoFlash:Ljava/lang/Boolean;

    sput-object v2, Lcom/unityota/utils/PropUtils;->cachedRebootCmd:Ljava/lang/String;

    new-instance v2, Ljava/io/File;

    const-string v4, "/system/rom.ota.prop"

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/unityota/utils/PropUtils$LegacyCompat;->isRomOtaEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const/4 v2, 0x1

    :goto_0
    sput-boolean v2, Lcom/unityota/utils/PropUtils;->ROM_OTA_ENABLED:Z

    new-instance v2, Ljava/io/File;

    const-string v4, "/system/kernel.ota.prop"

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    sput-boolean v2, Lcom/unityota/utils/PropUtils;->KERNEL_OTA_ENABLED:Z

    sget-boolean v2, Lcom/unityota/utils/PropUtils;->KERNEL_OTA_ENABLED:Z

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/unityota/utils/PropUtils;->getFullKernelVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/unityota/utils/PropUtils;->getFullKernelOtaVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sput-boolean v3, Lcom/unityota/utils/PropUtils;->KERNEL_OTA_ENABLED:Z

    :cond_1
    return-void

    :cond_2
    move v2, v3

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultRecoverySdPath()Ljava/lang/String;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SdCardPath"
        }
    .end annotation

    const-string v0, ""

    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    const-string v0, "/0"

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/sdcard"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getFullKernelOtaVersion()Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lcom/unityota/utils/PropUtils;->KERNEL_OTA_ENABLED:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/unityota/utils/PropUtils;->cachedFullKernelVer:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/unityota/utils/PropUtils;->readKernelOtaProp()V

    :cond_1
    sget-object v0, Lcom/unityota/utils/PropUtils;->cachedFullKernelVer:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getFullKernelVersion()Ljava/lang/String;
    .locals 4

    new-instance v0, Lcom/unityota/utils/ShellCommand;

    invoke-direct {v0}, Lcom/unityota/utils/ShellCommand;-><init>()V

    iget-object v2, v0, Lcom/unityota/utils/ShellCommand;->sh:Lcom/unityota/utils/ShellCommand$SH;

    const-string v3, "cat /proc/version"

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

.method public static getKernelOtaDate()Ljava/util/Date;
    .locals 1

    sget-boolean v0, Lcom/unityota/utils/PropUtils;->KERNEL_OTA_ENABLED:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/unityota/utils/PropUtils;->cachedKernelDate:Ljava/util/Date;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/unityota/utils/PropUtils;->readKernelOtaProp()V

    :cond_1
    sget-object v0, Lcom/unityota/utils/PropUtils;->cachedKernelDate:Ljava/util/Date;

    goto :goto_0
.end method

.method public static getKernelOtaID()Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lcom/unityota/utils/PropUtils;->KERNEL_OTA_ENABLED:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/unityota/utils/PropUtils;->cachedKernelID:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/unityota/utils/PropUtils;->readKernelOtaProp()V

    :cond_1
    sget-object v0, Lcom/unityota/utils/PropUtils;->cachedKernelID:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getKernelOtaVersion()Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lcom/unityota/utils/PropUtils;->KERNEL_OTA_ENABLED:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/unityota/utils/PropUtils;->cachedKernelVer:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/unityota/utils/PropUtils;->readKernelOtaProp()V

    :cond_1
    sget-object v0, Lcom/unityota/utils/PropUtils;->cachedKernelVer:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getKernelVersion()Ljava/lang/String;
    .locals 8

    const/4 v4, 0x0

    const/4 v7, 0x4

    sget-object v5, Lcom/unityota/utils/PropUtils;->cachedKernelUname:Ljava/lang/String;

    if-nez v5, :cond_2

    new-instance v0, Lcom/unityota/utils/ShellCommand;

    invoke-direct {v0}, Lcom/unityota/utils/ShellCommand;-><init>()V

    iget-object v5, v0, Lcom/unityota/utils/ShellCommand;->sh:Lcom/unityota/utils/ShellCommand$SH;

    const-string v6, "cat /proc/version"

    invoke-virtual {v5, v6}, Lcom/unityota/utils/ShellCommand$SH;->runWaitFor(Ljava/lang/String;)Lcom/unityota/utils/ShellCommand$CommandResult;

    move-result-object v3

    iget-object v5, v3, Lcom/unityota/utils/ShellCommand$CommandResult;->stdout:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    const-string v5, "\\w+\\s+\\w+\\s+([^\\s]+)\\s+\\(([^\\s@]+@[^\\s@]+)\\)+\\s+\\(gcc.*\\)\\s+([^\\s]+)\\s+(?:SMP\\s+)?(?:PREEMPT\\s+)?(.+)"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    iget-object v5, v3, Lcom/unityota/utils/ShellCommand$CommandResult;->stdout:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v5

    if-lt v5, v7, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/unityota/utils/PropUtils;->cachedKernelUname:Ljava/lang/String;

    :cond_2
    sget-object v4, Lcom/unityota/utils/PropUtils;->cachedKernelUname:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getNoFlash()Z
    .locals 1

    sget-object v0, Lcom/unityota/utils/PropUtils;->cachedNoFlash:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/unityota/utils/PropUtils;->readGenOtaProp()V

    :cond_0
    sget-object v0, Lcom/unityota/utils/PropUtils;->cachedNoFlash:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static getRebootCmd()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/unityota/utils/PropUtils;->cachedRebootCmd:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/unityota/utils/PropUtils;->readGenOtaProp()V

    :cond_0
    sget-object v0, Lcom/unityota/utils/PropUtils;->cachedRebootCmd:Ljava/lang/String;

    return-object v0
.end method

.method public static getRecoverySdPath()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/unityota/utils/PropUtils;->cachedRecoverySdPath:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/unityota/utils/PropUtils;->readGenOtaProp()V

    :cond_0
    sget-object v0, Lcom/unityota/utils/PropUtils;->cachedRecoverySdPath:Ljava/lang/String;

    return-object v0
.end method

.method public static getRomOtaDate()Ljava/util/Date;
    .locals 1

    sget-boolean v0, Lcom/unityota/utils/PropUtils;->ROM_OTA_ENABLED:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/unityota/utils/PropUtils;->cachedRomDate:Ljava/util/Date;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/unityota/utils/PropUtils;->readRomOtaProp()V

    :cond_1
    sget-object v0, Lcom/unityota/utils/PropUtils;->cachedRomDate:Ljava/util/Date;

    if-nez v0, :cond_2

    invoke-static {}, Lcom/unityota/utils/PropUtils$LegacyCompat;->getRomOtaDate()Ljava/util/Date;

    move-result-object v0

    sput-object v0, Lcom/unityota/utils/PropUtils;->cachedRomDate:Ljava/util/Date;

    :cond_2
    sget-object v0, Lcom/unityota/utils/PropUtils;->cachedRomDate:Ljava/util/Date;

    goto :goto_0
.end method

.method public static getRomOtaID()Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lcom/unityota/utils/PropUtils;->ROM_OTA_ENABLED:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/unityota/utils/PropUtils;->cachedRomID:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/unityota/utils/PropUtils;->readRomOtaProp()V

    :cond_1
    sget-object v0, Lcom/unityota/utils/PropUtils;->cachedRomID:Ljava/lang/String;

    if-nez v0, :cond_2

    invoke-static {}, Lcom/unityota/utils/PropUtils$LegacyCompat;->getRomOtaID()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unityota/utils/PropUtils;->cachedRomID:Ljava/lang/String;

    :cond_2
    sget-object v0, Lcom/unityota/utils/PropUtils;->cachedRomID:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getRomOtaVersion()Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lcom/unityota/utils/PropUtils;->ROM_OTA_ENABLED:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/unityota/utils/PropUtils;->cachedRomVer:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/unityota/utils/PropUtils;->readRomOtaProp()V

    :cond_1
    sget-object v0, Lcom/unityota/utils/PropUtils;->cachedRomVer:Ljava/lang/String;

    if-nez v0, :cond_2

    invoke-static {}, Lcom/unityota/utils/PropUtils$LegacyCompat;->getRomOtaVersion()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unityota/utils/PropUtils;->cachedRomVer:Ljava/lang/String;

    :cond_2
    sget-object v0, Lcom/unityota/utils/PropUtils;->cachedRomVer:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getRomVersion()Ljava/lang/String;
    .locals 6

    new-instance v2, Lcom/unityota/utils/ShellCommand;

    invoke-direct {v2}, Lcom/unityota/utils/ShellCommand;-><init>()V

    iget-object v4, v2, Lcom/unityota/utils/ShellCommand;->sh:Lcom/unityota/utils/ShellCommand$SH;

    const-string v5, "getprop ro.modversion"

    invoke-virtual {v4, v5}, Lcom/unityota/utils/ShellCommand$SH;->runWaitFor(Ljava/lang/String;)Lcom/unityota/utils/ShellCommand$CommandResult;

    move-result-object v3

    iget-object v4, v3, Lcom/unityota/utils/ShellCommand$CommandResult;->stdout:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/unityota/utils/ShellCommand$CommandResult;->stdout:Ljava/lang/String;

    :goto_0
    return-object v4

    :cond_0
    iget-object v4, v2, Lcom/unityota/utils/ShellCommand;->sh:Lcom/unityota/utils/ShellCommand$SH;

    const-string v5, "getprop ro.cm.version"

    invoke-virtual {v4, v5}, Lcom/unityota/utils/ShellCommand$SH;->runWaitFor(Ljava/lang/String;)Lcom/unityota/utils/ShellCommand$CommandResult;

    move-result-object v1

    iget-object v4, v1, Lcom/unityota/utils/ShellCommand$CommandResult;->stdout:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v1, Lcom/unityota/utils/ShellCommand$CommandResult;->stdout:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v4, v2, Lcom/unityota/utils/ShellCommand;->sh:Lcom/unityota/utils/ShellCommand$SH;

    const-string v5, "getprop ro.aokp.version"

    invoke-virtual {v4, v5}, Lcom/unityota/utils/ShellCommand$SH;->runWaitFor(Ljava/lang/String;)Lcom/unityota/utils/ShellCommand$CommandResult;

    move-result-object v0

    iget-object v4, v0, Lcom/unityota/utils/ShellCommand$CommandResult;->stdout:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/unityota/utils/ShellCommand$CommandResult;->stdout:Ljava/lang/String;

    goto :goto_0

    :cond_2
    sget-object v4, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getSystemSdPath()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/unityota/utils/PropUtils;->cachedSystemSdPath:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/unityota/utils/PropUtils;->readGenOtaProp()V

    :cond_0
    sget-object v0, Lcom/unityota/utils/PropUtils;->cachedSystemSdPath:Ljava/lang/String;

    return-object v0
.end method

.method public static isKernelOtaEnabled()Z
    .locals 1

    sget-boolean v0, Lcom/unityota/utils/PropUtils;->KERNEL_OTA_ENABLED:Z

    return v0
.end method

.method public static isRomOtaEnabled()Z
    .locals 1

    sget-boolean v0, Lcom/unityota/utils/PropUtils;->ROM_OTA_ENABLED:Z

    return v0
.end method

.method private static readGenOtaProp()V
    .locals 7

    const/4 v6, 0x0

    new-instance v4, Ljava/io/File;

    const-string v5, "/system/ota.prop"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {}, Lcom/unityota/utils/PropUtils$LegacyCompat;->getNoflash()Ljava/lang/Boolean;

    move-result-object v4

    sput-object v4, Lcom/unityota/utils/PropUtils;->cachedNoFlash:Ljava/lang/Boolean;

    invoke-static {}, Lcom/unityota/utils/PropUtils$LegacyCompat;->getRebootCmd()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/unityota/utils/PropUtils;->cachedRebootCmd:Ljava/lang/String;

    invoke-static {}, Lcom/unityota/utils/PropUtils$LegacyCompat;->getSystemSdPath()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/unityota/utils/PropUtils;->cachedSystemSdPath:Ljava/lang/String;

    invoke-static {}, Lcom/unityota/utils/PropUtils$LegacyCompat;->getRecoverySdPath()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/unityota/utils/PropUtils;->cachedRecoverySdPath:Ljava/lang/String;

    sget-object v4, Lcom/unityota/utils/PropUtils;->cachedNoFlash:Ljava/lang/Boolean;

    if-nez v4, :cond_0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    sput-object v4, Lcom/unityota/utils/PropUtils;->cachedNoFlash:Ljava/lang/Boolean;

    :cond_0
    sget-object v4, Lcom/unityota/utils/PropUtils;->cachedRebootCmd:Ljava/lang/String;

    if-nez v4, :cond_1

    const-string v4, "reboot recovery"

    sput-object v4, Lcom/unityota/utils/PropUtils;->cachedRebootCmd:Ljava/lang/String;

    :cond_1
    sget-object v4, Lcom/unityota/utils/PropUtils;->cachedSystemSdPath:Ljava/lang/String;

    if-nez v4, :cond_2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/unityota/utils/PropUtils;->cachedSystemSdPath:Ljava/lang/String;

    :cond_2
    sget-object v4, Lcom/unityota/utils/PropUtils;->cachedRecoverySdPath:Ljava/lang/String;

    if-nez v4, :cond_3

    invoke-static {}, Lcom/unityota/utils/PropUtils;->getDefaultRecoverySdPath()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/unityota/utils/PropUtils;->cachedRecoverySdPath:Ljava/lang/String;

    :cond_3
    :goto_0
    return-void

    :cond_4
    new-instance v1, Lcom/unityota/utils/ShellCommand;

    invoke-direct {v1}, Lcom/unityota/utils/ShellCommand;-><init>()V

    iget-object v4, v1, Lcom/unityota/utils/ShellCommand;->sh:Lcom/unityota/utils/ShellCommand$SH;

    const-string v5, "cat /system/ota.prop"

    invoke-virtual {v4, v5}, Lcom/unityota/utils/ShellCommand$SH;->runWaitFor(Ljava/lang/String;)Lcom/unityota/utils/ShellCommand$CommandResult;

    move-result-object v0

    iget-object v4, v0, Lcom/unityota/utils/ShellCommand$CommandResult;->stdout:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_3

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    iget-object v4, v0, Lcom/unityota/utils/ShellCommand$CommandResult;->stdout:Ljava/lang/String;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "noflash"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    sput-object v4, Lcom/unityota/utils/PropUtils;->cachedNoFlash:Ljava/lang/Boolean;

    const-string v4, "rebootcmd"

    const-string v5, "reboot recovery"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/unityota/utils/PropUtils;->cachedRebootCmd:Ljava/lang/String;

    const-string v4, "system_sdpath"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/unityota/utils/PropUtils;->cachedSystemSdPath:Ljava/lang/String;

    const-string v4, "recovery_sdpath"

    invoke-static {}, Lcom/unityota/utils/PropUtils;->getDefaultRecoverySdPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/unityota/utils/PropUtils;->cachedRecoverySdPath:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v4, "OTA::ReadOTAProp"

    const-string v5, "Error in ota.prop file!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static readKernelOtaProp()V
    .locals 6

    sget-boolean v4, Lcom/unityota/utils/PropUtils;->KERNEL_OTA_ENABLED:Z

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Lcom/unityota/utils/ShellCommand;

    invoke-direct {v1}, Lcom/unityota/utils/ShellCommand;-><init>()V

    iget-object v4, v1, Lcom/unityota/utils/ShellCommand;->sh:Lcom/unityota/utils/ShellCommand$SH;

    const-string v5, "cat /system/kernel.ota.prop"

    invoke-virtual {v4, v5}, Lcom/unityota/utils/ShellCommand$SH;->runWaitFor(Ljava/lang/String;)Lcom/unityota/utils/ShellCommand$CommandResult;

    move-result-object v0

    iget-object v4, v0, Lcom/unityota/utils/ShellCommand$CommandResult;->stdout:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    iget-object v4, v0, Lcom/unityota/utils/ShellCommand$CommandResult;->stdout:Ljava/lang/String;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "otaid"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/unityota/utils/PropUtils;->cachedKernelID:Ljava/lang/String;

    const-string v4, "otaver"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/unityota/utils/PropUtils;->cachedKernelVer:Ljava/lang/String;

    const-string v4, "otatime"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/unityota/utils/Utils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    sput-object v4, Lcom/unityota/utils/PropUtils;->cachedKernelDate:Ljava/util/Date;

    const-string v4, "fullver"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/unityota/utils/PropUtils;->cachedFullKernelVer:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v4, "OTA::ReadOTAProp"

    const-string v5, "Error in kernel.ota.prop file!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static readRomOtaProp()V
    .locals 6

    sget-boolean v4, Lcom/unityota/utils/PropUtils;->ROM_OTA_ENABLED:Z

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Lcom/unityota/utils/ShellCommand;

    invoke-direct {v1}, Lcom/unityota/utils/ShellCommand;-><init>()V

    iget-object v4, v1, Lcom/unityota/utils/ShellCommand;->sh:Lcom/unityota/utils/ShellCommand$SH;

    const-string v5, "cat /system/rom.ota.prop"

    invoke-virtual {v4, v5}, Lcom/unityota/utils/ShellCommand$SH;->runWaitFor(Ljava/lang/String;)Lcom/unityota/utils/ShellCommand$CommandResult;

    move-result-object v0

    iget-object v4, v0, Lcom/unityota/utils/ShellCommand$CommandResult;->stdout:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    iget-object v4, v0, Lcom/unityota/utils/ShellCommand$CommandResult;->stdout:Ljava/lang/String;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "otaid"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/unityota/utils/PropUtils;->cachedRomID:Ljava/lang/String;

    const-string v4, "otaver"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/unityota/utils/PropUtils;->cachedRomVer:Ljava/lang/String;

    const-string v4, "otatime"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/unityota/utils/Utils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    sput-object v4, Lcom/unityota/utils/PropUtils;->cachedRomDate:Ljava/util/Date;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v4, "OTA::ReadOTAProp"

    const-string v5, "Error in rom.ota.prop file!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
