.class public final Lorg/apache/commons/net/io/CRLFLineReader;
.super Ljava/io/BufferedReader;
.source "CRLFLineReader.java"


# static fields
.field private static final CR:C = '\r'

.field private static final LF:C = '\n'


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    return-void
.end method


# virtual methods
.method public readLine()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    iget-object v5, p0, Lorg/apache/commons/net/io/CRLFLineReader;->lock:Ljava/lang/Object;

    monitor-enter v5

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/net/io/CRLFLineReader;->read()I

    move-result v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_3

    if-eqz v1, :cond_1

    const/16 v4, 0xa

    if-ne v0, v4, :cond_1

    const/4 v4, 0x0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v2, v4, v6}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v3

    monitor-exit v5

    :cond_0
    :goto_1
    return-object v3

    :cond_1
    const/16 v4, 0xd

    if-ne v0, v4, :cond_2

    const/4 v1, 0x1

    :goto_2
    int-to-char v4, v0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    const/4 v3, 0x0

    goto :goto_1
.end method
