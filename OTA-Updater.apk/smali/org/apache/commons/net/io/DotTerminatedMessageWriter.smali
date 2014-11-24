.class public final Lorg/apache/commons/net/io/DotTerminatedMessageWriter;
.super Ljava/io/Writer;
.source "DotTerminatedMessageWriter.java"


# static fields
.field private static final __LAST_WAS_CR_STATE:I = 0x1

.field private static final __LAST_WAS_NL_STATE:I = 0x2

.field private static final __NOTHING_SPECIAL_STATE:I


# instance fields
.field private __output:Ljava/io/Writer;

.field private __state:I


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/io/Writer;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->__output:Ljava/io/Writer;

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->__state:I

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->__output:Ljava/io/Writer;

    if-nez v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->__state:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->__output:Ljava/io/Writer;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(I)V

    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->__output:Ljava/io/Writer;

    const-string v2, ".\r\n"

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->__output:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->__output:Ljava/io/Writer;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    iget v0, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->__state:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->__output:Ljava/io/Writer;

    const-string v2, "\r\n"

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->__output:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public write(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x2

    const/4 v2, 0x1

    iget-object v1, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->lock:Ljava/lang/Object;

    monitor-enter v1

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->__state:I

    iget-object v0, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->__output:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(I)V

    monitor-exit v1

    :goto_1
    return-void

    :sswitch_0
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->__state:I

    iget-object v0, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->__output:Ljava/io/Writer;

    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(I)V

    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :sswitch_1
    :try_start_1
    iget v0, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->__state:I

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->__output:Ljava/io/Writer;

    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(I)V

    :cond_1
    iget-object v0, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->__output:Ljava/io/Writer;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(I)V

    const/4 v0, 0x2

    iput v0, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->__state:I

    monitor-exit v1

    goto :goto_1

    :sswitch_2
    iget v0, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->__state:I

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->__output:Ljava/io/Writer;

    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_1
        0xd -> :sswitch_0
        0x2e -> :sswitch_2
    .end sparse-switch
.end method

.method public write(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->write([C)V

    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->write([CII)V

    return-void
.end method

.method public write([C)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->write([CII)V

    return-void
.end method

.method public write([CII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v3, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->lock:Ljava/lang/Object;

    monitor-enter v3

    move v0, p3

    move v1, p2

    :goto_0
    add-int/lit8 p3, v0, -0x1

    if-lez v0, :cond_0

    add-int/lit8 p2, v1, 0x1

    :try_start_0
    aget-char v2, p1, v1

    invoke-virtual {p0, v2}, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->write(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, p3

    move v1, p2

    goto :goto_0

    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_0
    move-exception v2

    :goto_1
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :catchall_1
    move-exception v2

    move p2, v1

    goto :goto_1
.end method
