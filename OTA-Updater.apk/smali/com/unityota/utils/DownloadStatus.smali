.class public Lcom/unityota/utils/DownloadStatus;
.super Ljava/lang/Object;
.source "DownloadStatus.java"


# static fields
.field public static final ERROR_MD5_MISMATCH:I = 0x384

.field public static final GBYTE_THRESH:I = 0x39999999

.field public static final KBYTE_THRESH:I = 0x398

.field public static final MBYTE_THRESH:I = 0xe6666

.field public static final SCALE_GBYTES:I = 0x40000000

.field public static final SCALE_KBYTES:I = 0x400

.field public static final SCALE_MBYTES:I = 0x100000


# instance fields
.field protected final ID:J

.field protected downloadedBytes:I

.field protected info:Lcom/unityota/utils/BaseInfo;

.field protected reason:I

.field protected status:I

.field protected totalBytes:I


# direct methods
.method protected constructor <init>(J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unityota/utils/DownloadStatus;->info:Lcom/unityota/utils/BaseInfo;

    iput-wide p1, p0, Lcom/unityota/utils/DownloadStatus;->ID:J

    return-void
.end method

.method public static forDownloadID(Landroid/content/Context;J)Lcom/unityota/utils/DownloadStatus;
    .locals 1

    const-string v0, "download"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    invoke-static {p0, v0, p1, p2}, Lcom/unityota/utils/DownloadStatus;->forDownloadID(Landroid/content/Context;Landroid/app/DownloadManager;J)Lcom/unityota/utils/DownloadStatus;

    move-result-object v0

    return-object v0
.end method

.method public static forDownloadID(Landroid/content/Context;Landroid/app/DownloadManager;J)Lcom/unityota/utils/DownloadStatus;
    .locals 6

    const-wide/16 v3, 0x0

    cmp-long v3, p2, v3

    if-lez v3, :cond_3

    new-instance v3, Landroid/app/DownloadManager$Query;

    invoke-direct {v3}, Landroid/app/DownloadManager$Query;-><init>()V

    const/4 v4, 0x1

    new-array v4, v4, [J

    const/4 v5, 0x0

    aput-wide p2, v4, v5

    invoke-virtual {v3, v4}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_3

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v2, Lcom/unityota/utils/DownloadStatus;

    invoke-direct {v2, p2, p3}, Lcom/unityota/utils/DownloadStatus;-><init>(J)V

    const-string v3, "status"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/unityota/utils/DownloadStatus;->status:I

    const-string v3, "reason"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/unityota/utils/DownloadStatus;->reason:I

    const-string v3, "total_size"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/unityota/utils/DownloadStatus;->totalBytes:I

    const-string v3, "bytes_so_far"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/unityota/utils/DownloadStatus;->downloadedBytes:I

    invoke-static {p0}, Lcom/unityota/utils/Config;->getInstance(Landroid/content/Context;)Lcom/unityota/utils/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unityota/utils/Config;->isDownloadingRom()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lcom/unityota/utils/Config;->getRomDownloadID()J

    move-result-wide v3

    cmp-long v3, v3, p2

    if-nez v3, :cond_1

    invoke-virtual {v1}, Lcom/unityota/utils/Config;->getStoredRomUpdate()Lcom/unityota/utils/RomInfo;

    move-result-object v3

    iput-object v3, v2, Lcom/unityota/utils/DownloadStatus;->info:Lcom/unityota/utils/BaseInfo;

    :cond_0
    :goto_0
    invoke-virtual {v2}, Lcom/unityota/utils/DownloadStatus;->checkDownloadedFile()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :goto_1
    return-object v2

    :cond_1
    :try_start_1
    invoke-virtual {v1}, Lcom/unityota/utils/Config;->isDownloadingKernel()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/unityota/utils/Config;->getKernelDownloadID()J

    move-result-wide v3

    cmp-long v3, v3, p2

    if-nez v3, :cond_0

    invoke-virtual {v1}, Lcom/unityota/utils/Config;->getStoredKernelUpdate()Lcom/unityota/utils/KernelInfo;

    move-result-object v3

    iput-object v3, v2, Lcom/unityota/utils/DownloadStatus;->info:Lcom/unityota/utils/BaseInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v3

    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method


# virtual methods
.method public checkDownloadedFile()V
    .locals 3

    iget v1, p0, Lcom/unityota/utils/DownloadStatus;->status:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/unityota/utils/DownloadStatus;->info:Lcom/unityota/utils/BaseInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/unityota/utils/DownloadStatus;->info:Lcom/unityota/utils/BaseInfo;

    invoke-virtual {v1}, Lcom/unityota/utils/BaseInfo;->checkDownloadedFile()I

    move-result v0

    if-eqz v0, :cond_0

    const/16 v1, 0x10

    iput v1, p0, Lcom/unityota/utils/DownloadStatus;->status:I

    iput v0, p0, Lcom/unityota/utils/DownloadStatus;->reason:I

    goto :goto_0
.end method

.method public getDownloadedBytes()I
    .locals 1

    iget v0, p0, Lcom/unityota/utils/DownloadStatus;->downloadedBytes:I

    return v0
.end method

.method public getDownloadedPercent()D
    .locals 4

    iget v0, p0, Lcom/unityota/utils/DownloadStatus;->totalBytes:I

    if-gtz v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/high16 v0, 0x4059

    iget v2, p0, Lcom/unityota/utils/DownloadStatus;->downloadedBytes:I

    int-to-double v2, v2

    mul-double/2addr v0, v2

    iget v2, p0, Lcom/unityota/utils/DownloadStatus;->totalBytes:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    goto :goto_0
.end method

.method public getErrorString(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/unityota/utils/DownloadStatus;->getReason()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    const v0, 0x7f09004b

    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :sswitch_0
    const v0, 0x7f090045

    goto :goto_0

    :sswitch_1
    const v0, 0x7f090044

    goto :goto_0

    :sswitch_2
    const v0, 0x7f090041

    goto :goto_0

    :sswitch_3
    const v0, 0x7f090042

    goto :goto_0

    :sswitch_4
    const v0, 0x7f090046

    goto :goto_0

    :sswitch_5
    const v0, 0x7f090047

    goto :goto_0

    :sswitch_6
    const v0, 0x7f090043

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x384 -> :sswitch_6
        0x3e8 -> :sswitch_5
        0x3e9 -> :sswitch_5
        0x3ea -> :sswitch_3
        0x3ec -> :sswitch_3
        0x3ed -> :sswitch_3
        0x3ee -> :sswitch_4
        0x3ef -> :sswitch_1
        0x3f0 -> :sswitch_0
        0x3f1 -> :sswitch_2
    .end sparse-switch
.end method

.method public getId()J
    .locals 2

    iget-wide v0, p0, Lcom/unityota/utils/DownloadStatus;->ID:J

    return-wide v0
.end method

.method public getInfo()Lcom/unityota/utils/BaseInfo;
    .locals 1

    iget-object v0, p0, Lcom/unityota/utils/DownloadStatus;->info:Lcom/unityota/utils/BaseInfo;

    return-object v0
.end method

.method public getProgressStr(Landroid/content/Context;)Ljava/lang/String;
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/high16 v6, 0x4000

    const/high16 v5, 0x10

    iget v1, p0, Lcom/unityota/utils/DownloadStatus;->downloadedBytes:I

    iget v2, p0, Lcom/unityota/utils/DownloadStatus;->totalBytes:I

    iget v3, p0, Lcom/unityota/utils/DownloadStatus;->totalBytes:I

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/unityota/utils/DownloadStatus;->totalBytes:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_4

    :cond_0
    const v0, 0x7f090056

    iget v3, p0, Lcom/unityota/utils/DownloadStatus;->totalBytes:I

    const v4, 0x39999999

    if-lt v3, v4, :cond_2

    div-int/2addr v1, v6

    const v0, 0x7f090057

    :cond_1
    :goto_0
    new-array v3, v9, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/unityota/utils/DownloadStatus;->getDownloadedPercent()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    return-object v3

    :cond_2
    iget v3, p0, Lcom/unityota/utils/DownloadStatus;->totalBytes:I

    const v4, 0xe6666

    if-lt v3, v4, :cond_3

    div-int/2addr v1, v5

    const v0, 0x7f090059

    goto :goto_0

    :cond_3
    iget v3, p0, Lcom/unityota/utils/DownloadStatus;->totalBytes:I

    const/16 v4, 0x398

    if-lt v3, v4, :cond_1

    div-int/lit16 v1, v1, 0x400

    const v0, 0x7f090058

    goto :goto_0

    :cond_4
    const v0, 0x7f090052

    iget v3, p0, Lcom/unityota/utils/DownloadStatus;->totalBytes:I

    const v4, 0x39999999

    if-lt v3, v4, :cond_6

    div-int/2addr v1, v6

    div-int/2addr v2, v6

    const v0, 0x7f090053

    :cond_5
    :goto_2
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/unityota/utils/DownloadStatus;->getDownloadedPercent()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v9

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_6
    iget v3, p0, Lcom/unityota/utils/DownloadStatus;->totalBytes:I

    const v4, 0xe6666

    if-lt v3, v4, :cond_7

    div-int/2addr v1, v5

    div-int/2addr v2, v5

    const v0, 0x7f090055

    goto :goto_2

    :cond_7
    iget v3, p0, Lcom/unityota/utils/DownloadStatus;->totalBytes:I

    const/16 v4, 0x398

    if-lt v3, v4, :cond_5

    div-int/lit16 v1, v1, 0x400

    div-int/lit16 v2, v2, 0x400

    const v0, 0x7f090054

    goto :goto_2
.end method

.method public getReason()I
    .locals 1

    iget v0, p0, Lcom/unityota/utils/DownloadStatus;->reason:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    iget v0, p0, Lcom/unityota/utils/DownloadStatus;->status:I

    return v0
.end method

.method public getTotalBytes()I
    .locals 1

    iget v0, p0, Lcom/unityota/utils/DownloadStatus;->totalBytes:I

    return v0
.end method

.method public isSuccessful()Z
    .locals 2

    iget v0, p0, Lcom/unityota/utils/DownloadStatus;->status:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
