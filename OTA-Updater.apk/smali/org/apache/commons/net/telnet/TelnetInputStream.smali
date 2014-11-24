.class final Lorg/apache/commons/net/telnet/TelnetInputStream;
.super Ljava/io/BufferedInputStream;
.source "TelnetInputStream.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final EOF:I = -0x1

.field private static final WOULD_BLOCK:I = -0x2

.field static final _STATE_CR:I = 0x8

.field static final _STATE_DATA:I = 0x0

.field static final _STATE_DO:I = 0x4

.field static final _STATE_DONT:I = 0x5

.field static final _STATE_IAC:I = 0x1

.field static final _STATE_IAC_SB:I = 0x9

.field static final _STATE_SB:I = 0x6

.field static final _STATE_SE:I = 0x7

.field static final _STATE_WILL:I = 0x2

.field static final _STATE_WONT:I = 0x3


# instance fields
.field private __bytesAvailable:I

.field private final __client:Lorg/apache/commons/net/telnet/TelnetClient;

.field private __hasReachedEOF:Z

.field private __ioException:Ljava/io/IOException;

.field private volatile __isClosed:Z

.field private final __queue:[I

.field private __queueHead:I

.field private __queueTail:I

.field private __readIsWaiting:Z

.field private __receiveState:I

.field private final __suboption:[I

.field private __suboption_count:I

.field private final __thread:Ljava/lang/Thread;

.field private volatile __threaded:Z


# direct methods
.method constructor <init>(Ljava/io/InputStream;Lorg/apache/commons/net/telnet/TelnetClient;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/net/telnet/TelnetInputStream;-><init>(Ljava/io/InputStream;Lorg/apache/commons/net/telnet/TelnetClient;Z)V

    return-void
.end method

.method constructor <init>(Ljava/io/InputStream;Lorg/apache/commons/net/telnet/TelnetClient;Z)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 v0, 0x200

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__suboption:[I

    iput v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__suboption_count:I

    iput-object p2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    iput v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__receiveState:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__isClosed:Z

    iput-boolean v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__hasReachedEOF:Z

    const/16 v0, 0x801

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queue:[I

    iput v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queueHead:I

    iput v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queueTail:I

    iput v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__bytesAvailable:I

    iput-object v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__ioException:Ljava/io/IOException;

    iput-boolean v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__readIsWaiting:Z

    iput-boolean v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__threaded:Z

    if-eqz p3, :cond_0

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__thread:Ljava/lang/Thread;

    :goto_0
    return-void

    :cond_0
    iput-object v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__thread:Ljava/lang/Thread;

    goto :goto_0
.end method

.method private __processChar(I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v3, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queue:[I

    monitor-enter v3

    :try_start_0
    iget v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__bytesAvailable:I

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    iget v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__bytesAvailable:I

    iget-object v4, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queue:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-lt v2, v4, :cond_2

    iget-boolean v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__threaded:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queue:[I

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queue:[I

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    throw v1

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :cond_1
    :try_start_3
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v4, "Queue is full! Cannot process another character."

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    iget-boolean v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__readIsWaiting:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__threaded:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queue:[I

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    :cond_3
    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queue:[I

    iget v4, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queueTail:I

    aput p1, v2, v4

    iget v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__bytesAvailable:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__bytesAvailable:I

    iget v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queueTail:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queueTail:I

    iget-object v4, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queue:[I

    array-length v4, v4

    if-lt v2, v4, :cond_4

    const/4 v2, 0x0

    iput v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queueTail:I

    :cond_4
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return v0
.end method

.method private __read(Z)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x6

    const/4 v5, 0x0

    :goto_0
    if-nez p1, :cond_0

    invoke-super {p0}, Ljava/io/BufferedInputStream;->available()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, -0x2

    :goto_1
    return v0

    :cond_0
    invoke-super {p0}, Ljava/io/BufferedInputStream;->read()I

    move-result v0

    if-gez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_1

    :cond_1
    and-int/lit16 v0, v0, 0xff

    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    invoke-virtual {v1}, Lorg/apache/commons/net/telnet/TelnetClient;->_processAYTResponse()V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    invoke-virtual {v1, v0}, Lorg/apache/commons/net/telnet/TelnetClient;->_spyRead(I)V

    iget v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__receiveState:I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    :cond_2
    :pswitch_1
    const/16 v1, 0xff

    if-ne v0, v1, :cond_3

    const/4 v1, 0x1

    iput v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__receiveState:I

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :pswitch_2
    if-nez v0, :cond_2

    goto :goto_0

    :cond_3
    const/16 v1, 0xd

    if-ne v0, v1, :cond_5

    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    monitor-enter v2

    :try_start_2
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lorg/apache/commons/net/telnet/TelnetClient;->_requestedDont(I)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x8

    iput v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__receiveState:I

    :goto_2
    monitor-exit v2

    goto :goto_1

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    :cond_4
    const/4 v1, 0x0

    :try_start_3
    iput v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__receiveState:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :cond_5
    iput v5, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__receiveState:I

    goto :goto_1

    :pswitch_3
    packed-switch v0, :pswitch_data_1

    :pswitch_4
    iput v5, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__receiveState:I

    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    invoke-virtual {v1, v0}, Lorg/apache/commons/net/telnet/TelnetClient;->_processCommand(I)V

    goto :goto_0

    :pswitch_5
    const/4 v1, 0x2

    iput v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__receiveState:I

    goto :goto_0

    :pswitch_6
    const/4 v1, 0x3

    iput v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__receiveState:I

    goto :goto_0

    :pswitch_7
    const/4 v1, 0x4

    iput v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__receiveState:I

    goto :goto_0

    :pswitch_8
    const/4 v1, 0x5

    iput v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__receiveState:I

    goto :goto_0

    :pswitch_9
    iput v5, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__suboption_count:I

    iput v6, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__receiveState:I

    goto :goto_0

    :pswitch_a
    iput v5, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__receiveState:I

    goto :goto_1

    :pswitch_b
    iput v5, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__receiveState:I

    goto :goto_0

    :pswitch_c
    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    monitor-enter v2

    :try_start_4
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    invoke-virtual {v1, v0}, Lorg/apache/commons/net/telnet/TelnetClient;->_processWill(I)V

    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    invoke-virtual {v1}, Lorg/apache/commons/net/telnet/TelnetClient;->_flushOutputStream()V

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    iput v5, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__receiveState:I

    goto/16 :goto_0

    :catchall_2
    move-exception v1

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v1

    :pswitch_d
    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    monitor-enter v2

    :try_start_6
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    invoke-virtual {v1, v0}, Lorg/apache/commons/net/telnet/TelnetClient;->_processWont(I)V

    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    invoke-virtual {v1}, Lorg/apache/commons/net/telnet/TelnetClient;->_flushOutputStream()V

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    iput v5, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__receiveState:I

    goto/16 :goto_0

    :catchall_3
    move-exception v1

    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v1

    :pswitch_e
    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    monitor-enter v2

    :try_start_8
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    invoke-virtual {v1, v0}, Lorg/apache/commons/net/telnet/TelnetClient;->_processDo(I)V

    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    invoke-virtual {v1}, Lorg/apache/commons/net/telnet/TelnetClient;->_flushOutputStream()V

    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    iput v5, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__receiveState:I

    goto/16 :goto_0

    :catchall_4
    move-exception v1

    :try_start_9
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw v1

    :pswitch_f
    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    monitor-enter v2

    :try_start_a
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    invoke-virtual {v1, v0}, Lorg/apache/commons/net/telnet/TelnetClient;->_processDont(I)V

    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    invoke-virtual {v1}, Lorg/apache/commons/net/telnet/TelnetClient;->_flushOutputStream()V

    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    iput v5, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__receiveState:I

    goto/16 :goto_0

    :catchall_5
    move-exception v1

    :try_start_b
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    throw v1

    :pswitch_10
    packed-switch v0, :pswitch_data_2

    iget v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__suboption_count:I

    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__suboption:[I

    array-length v2, v2

    if-ge v1, v2, :cond_6

    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__suboption:[I

    iget v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__suboption_count:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__suboption_count:I

    aput v0, v1, v2

    :cond_6
    iput v6, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__receiveState:I

    goto/16 :goto_0

    :pswitch_11
    const/16 v1, 0x9

    iput v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__receiveState:I

    goto/16 :goto_0

    :pswitch_12
    sparse-switch v0, :sswitch_data_0

    :cond_7
    :goto_3
    iput v6, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__receiveState:I

    goto/16 :goto_0

    :sswitch_0
    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    monitor-enter v2

    :try_start_c
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    iget-object v3, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__suboption:[I

    iget v4, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__suboption_count:I

    invoke-virtual {v1, v3, v4}, Lorg/apache/commons/net/telnet/TelnetClient;->_processSuboption([II)V

    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    invoke-virtual {v1}, Lorg/apache/commons/net/telnet/TelnetClient;->_flushOutputStream()V

    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    iput v5, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__receiveState:I

    goto/16 :goto_0

    :catchall_6
    move-exception v1

    :try_start_d
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    throw v1

    :sswitch_1
    iget v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__suboption_count:I

    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__suboption:[I

    array-length v2, v2

    if-ge v1, v2, :cond_7

    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__suboption:[I

    iget v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__suboption_count:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__suboption_count:I

    aput v0, v1, v2

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_0
        :pswitch_2
        :pswitch_12
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xf0
        :pswitch_b
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_9
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_a
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xff
        :pswitch_11
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0xf0 -> :sswitch_0
        0xff -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method _start()V
    .locals 3

    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__thread:Ljava/lang/Thread;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__isClosed:Z

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getPriority()I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    const/16 v1, 0xa

    if-le v0, v1, :cond_1

    const/16 v0, 0xa

    :cond_1
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__thread:Ljava/lang/Thread;

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setPriority(I)V

    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__thread:Ljava/lang/Thread;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__thread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public available()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queue:[I

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__bytesAvailable:I

    invoke-super {p0}, Ljava/io/BufferedInputStream;->available()I

    move-result v2

    add-int/2addr v0, v2

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Ljava/io/BufferedInputStream;->close()V

    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queue:[I

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__hasReachedEOF:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__isClosed:Z

    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__thread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queue:[I

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__threaded:Z

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public markSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, -0x2

    const/4 v3, -0x1

    iget-object v4, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queue:[I

    monitor-enter v4

    :goto_0
    :try_start_0
    iget-object v5, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__ioException:Ljava/io/IOException;

    if-eqz v5, :cond_0

    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__ioException:Ljava/io/IOException;

    const/4 v3, 0x0

    iput-object v3, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__ioException:Ljava/io/IOException;

    throw v1

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_0
    :try_start_1
    iget v5, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__bytesAvailable:I

    if-nez v5, :cond_7

    iget-boolean v5, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__hasReachedEOF:Z

    if-eqz v5, :cond_1

    monitor-exit v4

    move v0, v3

    :goto_1
    return v0

    :cond_1
    iget-boolean v5, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__threaded:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queue:[I

    invoke-virtual {v5}, Ljava/lang/Object;->notify()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v5, 0x1

    :try_start_2
    iput-boolean v5, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__readIsWaiting:Z

    iget-object v5, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queue:[I

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V

    const/4 v5, 0x0

    iput-boolean v5, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__readIsWaiting:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_3
    new-instance v3, Ljava/io/InterruptedIOException;

    const-string v5, "Fatal thread interruption during read."

    invoke-direct {v3, v5}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    const/4 v5, 0x1

    iput-boolean v5, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__readIsWaiting:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v2, 0x1

    :cond_3
    :try_start_4
    invoke-direct {p0, v2}, Lorg/apache/commons/net/telnet/TelnetInputStream;->__read(Z)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/InterruptedIOException; {:try_start_4 .. :try_end_4} :catch_1

    move-result v0

    if-gez v0, :cond_4

    if-eq v0, v7, :cond_4

    :try_start_5
    monitor-exit v4

    goto :goto_1

    :catch_1
    move-exception v1

    iget-object v5, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queue:[I

    monitor-enter v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    iput-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__ioException:Ljava/io/IOException;

    iget-object v6, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queue:[I

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    iget-object v6, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queue:[I

    const-wide/16 v7, 0x64

    invoke-virtual {v6, v7, v8}, Ljava/lang/Object;->wait(J)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_3

    :goto_2
    :try_start_8
    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move v0, v3

    goto :goto_1

    :catchall_1
    move-exception v3

    :try_start_a
    monitor-exit v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    throw v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :cond_4
    if-eq v0, v7, :cond_5

    :try_start_c
    invoke-direct {p0, v0}, Lorg/apache/commons/net/telnet/TelnetInputStream;->__processChar(I)Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_2

    :cond_5
    const/4 v2, 0x0

    :try_start_d
    invoke-super {p0}, Ljava/io/BufferedInputStream;->available()I

    move-result v5

    if-lez v5, :cond_6

    iget v5, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__bytesAvailable:I

    iget-object v6, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queue:[I

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    if-lt v5, v6, :cond_3

    :cond_6
    const/4 v5, 0x0

    iput-boolean v5, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__readIsWaiting:Z

    goto :goto_0

    :catch_2
    move-exception v1

    iget-boolean v5, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__isClosed:Z

    if-eqz v5, :cond_5

    monitor-exit v4

    move v0, v3

    goto :goto_1

    :cond_7
    iget-object v3, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queue:[I

    iget v5, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queueHead:I

    aget v0, v3, v5

    iget v3, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queueHead:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queueHead:I

    iget-object v5, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queue:[I

    array-length v5, v5

    if-lt v3, v5, :cond_8

    const/4 v3, 0x0

    iput v3, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queueHead:I

    :cond_8
    iget v3, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__bytesAvailable:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__bytesAvailable:I

    iget v3, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__bytesAvailable:I

    if-nez v3, :cond_9

    iget-boolean v3, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__threaded:Z

    if-eqz v3, :cond_9

    iget-object v3, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queue:[I

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    :cond_9
    monitor-exit v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_1

    :catch_3
    move-exception v6

    goto :goto_2
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/net/telnet/TelnetInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-ge p3, v4, :cond_1

    const/4 v3, 0x0

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-object v4, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queue:[I

    monitor-enter v4

    :try_start_0
    iget v5, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__bytesAvailable:I

    if-le p3, v5, :cond_2

    iget p3, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__bytesAvailable:I

    :cond_2
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lorg/apache/commons/net/telnet/TelnetInputStream;->read()I

    move-result v0

    if-eq v0, v3, :cond_0

    move v1, p2

    :goto_1
    add-int/lit8 v2, p2, 0x1

    int-to-byte v4, v0

    aput-byte v4, p1, p2

    add-int/lit8 p3, p3, -0x1

    if-lez p3, :cond_3

    invoke-virtual {p0}, Lorg/apache/commons/net/telnet/TelnetInputStream;->read()I

    move-result v0

    if-ne v0, v3, :cond_4

    :cond_3
    sub-int v3, v2, v1

    move p2, v2

    goto :goto_0

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    :cond_4
    move p2, v2

    goto :goto_1
.end method

.method public run()V
    .locals 10

    const/4 v6, 0x1

    iput-boolean v6, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__threaded:Z

    :cond_0
    :goto_0
    :try_start_0
    iget-boolean v6, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__isClosed:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v6, :cond_1

    const/4 v6, 0x1

    :try_start_1
    invoke-direct {p0, v6}, Lorg/apache/commons/net/telnet/TelnetInputStream;->__read(Z)I
    :try_end_1
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    if-gez v0, :cond_3

    :cond_1
    :goto_1
    iget-object v7, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queue:[I

    monitor-enter v7

    const/4 v6, 0x1

    :try_start_2
    iput-boolean v6, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__isClosed:Z

    const/4 v6, 0x1

    iput-boolean v6, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__hasReachedEOF:Z

    iget-object v6, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queue:[I

    invoke-virtual {v6}, Ljava/lang/Object;->notify()V

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/4 v6, 0x0

    iput-boolean v6, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__threaded:Z

    return-void

    :catch_0
    move-exception v1

    :try_start_3
    iget-object v7, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queue:[I

    monitor-enter v7
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    iput-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__ioException:Ljava/io/IOException;

    iget-object v6, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queue:[I

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object v6, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queue:[I

    const-wide/16 v8, 0x64

    invoke-virtual {v6, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_2
    :try_start_6
    monitor-exit v7

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v6
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    :catch_1
    move-exception v3

    iget-object v7, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queue:[I

    monitor-enter v7

    :try_start_8
    iput-object v3, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__ioException:Ljava/io/IOException;

    monitor-exit v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    iget-object v6, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    invoke-virtual {v6}, Lorg/apache/commons/net/telnet/TelnetClient;->notifyInputListener()V

    goto :goto_1

    :catch_2
    move-exception v2

    :try_start_9
    iget-boolean v6, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__isClosed:Z

    if-eqz v6, :cond_2

    monitor-exit v7
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_1

    :catch_3
    move-exception v5

    :try_start_a
    invoke-super {p0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :try_start_b
    invoke-direct {p0, v0}, Lorg/apache/commons/net/telnet/TelnetInputStream;->__processChar(I)Z
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1

    move-result v4

    :cond_4
    if-eqz v4, :cond_0

    :try_start_c
    iget-object v6, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    invoke-virtual {v6}, Lorg/apache/commons/net/telnet/TelnetClient;->notifyInputListener()V

    goto :goto_0

    :catch_4
    move-exception v1

    iget-boolean v6, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__isClosed:Z
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1

    if-eqz v6, :cond_4

    goto :goto_1

    :catchall_1
    move-exception v6

    :try_start_d
    monitor-exit v7
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    throw v6

    :catchall_2
    move-exception v6

    :try_start_e
    monitor-exit v7
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    throw v6
.end method
