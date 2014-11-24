.class final Lorg/apache/commons/net/telnet/TelnetOutputStream;
.super Ljava/io/OutputStream;
.source "TelnetOutputStream.java"


# instance fields
.field private final __client:Lorg/apache/commons/net/telnet/TelnetClient;

.field private __convertCRtoCRLF:Z

.field private __lastWasCR:Z


# direct methods
.method constructor <init>(Lorg/apache/commons/net/telnet/TelnetClient;)V
    .locals 1

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->__convertCRtoCRLF:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->__lastWasCR:Z

    iput-object p1, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    invoke-virtual {v0}, Lorg/apache/commons/net/telnet/TelnetClient;->_closeOutputStream()V

    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    invoke-virtual {v0}, Lorg/apache/commons/net/telnet/TelnetClient;->_flushOutputStream()V

    return-void
.end method

.method public write(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v4, 0xa

    const/16 v3, 0xff

    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    monitor-enter v1

    and-int/lit16 p1, p1, 0xff

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/apache/commons/net/telnet/TelnetClient;->_requestedWont(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->__lastWasCR:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->__convertCRtoCRLF:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Lorg/apache/commons/net/telnet/TelnetClient;->_sendByte(I)V

    if-ne p1, v4, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->__lastWasCR:Z

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    if-eq p1, v4, :cond_1

    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/apache/commons/net/telnet/TelnetClient;->_sendByte(I)V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->__lastWasCR:Z

    sparse-switch p1, :sswitch_data_0

    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    invoke-virtual {v0, p1}, Lorg/apache/commons/net/telnet/TelnetClient;->_sendByte(I)V

    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :sswitch_0
    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Lorg/apache/commons/net/telnet/TelnetClient;->_sendByte(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->__lastWasCR:Z

    goto :goto_1

    :sswitch_1
    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    const/16 v2, 0xff

    invoke-virtual {v0, v2}, Lorg/apache/commons/net/telnet/TelnetClient;->_sendByte(I)V

    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    const/16 v2, 0xff

    invoke-virtual {v0, v2}, Lorg/apache/commons/net/telnet/TelnetClient;->_sendByte(I)V

    goto :goto_1

    :cond_2
    if-ne p1, v3, :cond_3

    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    invoke-virtual {v0, p1}, Lorg/apache/commons/net/telnet/TelnetClient;->_sendByte(I)V

    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    const/16 v2, 0xff

    invoke-virtual {v0, v2}, Lorg/apache/commons/net/telnet/TelnetClient;->_sendByte(I)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    invoke-virtual {v0, p1}, Lorg/apache/commons/net/telnet/TelnetClient;->_sendByte(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0xd -> :sswitch_0
        0xff -> :sswitch_1
    .end sparse-switch
.end method

.method public write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/net/telnet/TelnetOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v3, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    monitor-enter v3

    move v0, p3

    move v1, p2

    :goto_0
    add-int/lit8 p3, v0, -0x1

    if-lez v0, :cond_0

    add-int/lit8 p2, v1, 0x1

    :try_start_0
    aget-byte v2, p1, v1

    invoke-virtual {p0, v2}, Lorg/apache/commons/net/telnet/TelnetOutputStream;->write(I)V
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
