.class public Lorg/apache/commons/net/telnet/TelnetClient;
.super Lorg/apache/commons/net/telnet/Telnet;
.source "TelnetClient.java"


# instance fields
.field private __input:Ljava/io/InputStream;

.field private __output:Ljava/io/OutputStream;

.field private inputListener:Lorg/apache/commons/net/telnet/TelnetInputListener;

.field protected readerThread:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const-string v0, "VT100"

    invoke-direct {p0, v0}, Lorg/apache/commons/net/telnet/Telnet;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/net/telnet/TelnetClient;->readerThread:Z

    iput-object v1, p0, Lorg/apache/commons/net/telnet/TelnetClient;->__input:Ljava/io/InputStream;

    iput-object v1, p0, Lorg/apache/commons/net/telnet/TelnetClient;->__output:Ljava/io/OutputStream;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/net/telnet/TelnetClient;->readerThread:Z

    iput-object v1, p0, Lorg/apache/commons/net/telnet/TelnetClient;->__input:Ljava/io/InputStream;

    iput-object v1, p0, Lorg/apache/commons/net/telnet/TelnetClient;->__output:Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method _closeOutputStream()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetClient;->_output_:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method protected _connectAction_()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Lorg/apache/commons/net/telnet/Telnet;->_connectAction_()V

    new-instance v0, Lorg/apache/commons/net/telnet/TelnetInputStream;

    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetClient;->_input_:Ljava/io/InputStream;

    iget-boolean v2, p0, Lorg/apache/commons/net/telnet/TelnetClient;->readerThread:Z

    invoke-direct {v0, v1, p0, v2}, Lorg/apache/commons/net/telnet/TelnetInputStream;-><init>(Ljava/io/InputStream;Lorg/apache/commons/net/telnet/TelnetClient;Z)V

    iget-boolean v1, p0, Lorg/apache/commons/net/telnet/TelnetClient;->readerThread:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/commons/net/telnet/TelnetInputStream;->_start()V

    :cond_0
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lorg/apache/commons/net/telnet/TelnetClient;->__input:Ljava/io/InputStream;

    new-instance v1, Lorg/apache/commons/net/telnet/TelnetOutputStream;

    invoke-direct {v1, p0}, Lorg/apache/commons/net/telnet/TelnetOutputStream;-><init>(Lorg/apache/commons/net/telnet/TelnetClient;)V

    iput-object v1, p0, Lorg/apache/commons/net/telnet/TelnetClient;->__output:Ljava/io/OutputStream;

    return-void
.end method

.method _flushOutputStream()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetClient;->_output_:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public addOptionHandler(Lorg/apache/commons/net/telnet/TelnetOptionHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/net/telnet/InvalidTelnetOptionException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->addOptionHandler(Lorg/apache/commons/net/telnet/TelnetOptionHandler;)V

    return-void
.end method

.method public deleteOptionHandler(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/net/telnet/InvalidTelnetOptionException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->deleteOptionHandler(I)V

    return-void
.end method

.method public disconnect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetClient;->__input:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetClient;->__input:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetClient;->__output:Ljava/io/OutputStream;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetClient;->__output:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_1
    invoke-super {p0}, Lorg/apache/commons/net/telnet/Telnet;->disconnect()V

    return-void
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetClient;->__input:Ljava/io/InputStream;

    return-object v0
.end method

.method public getLocalOptionState(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/TelnetClient;->_stateIsWill(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/TelnetClient;->_requestedWill(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetClient;->__output:Ljava/io/OutputStream;

    return-object v0
.end method

.method public getReaderThread()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/net/telnet/TelnetClient;->readerThread:Z

    return v0
.end method

.method public getRemoteOptionState(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/TelnetClient;->_stateIsDo(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/TelnetClient;->_requestedDo(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method notifyInputListener()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetClient;->inputListener:Lorg/apache/commons/net/telnet/TelnetInputListener;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/commons/net/telnet/TelnetInputListener;->telnetInputAvailable()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public declared-synchronized registerInputListener(Lorg/apache/commons/net/telnet/TelnetInputListener;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lorg/apache/commons/net/telnet/TelnetClient;->inputListener:Lorg/apache/commons/net/telnet/TelnetInputListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public registerNotifHandler(Lorg/apache/commons/net/telnet/TelnetNotificationHandler;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->registerNotifHandler(Lorg/apache/commons/net/telnet/TelnetNotificationHandler;)V

    return-void
.end method

.method public registerSpyStream(Ljava/io/OutputStream;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_registerSpyStream(Ljava/io/OutputStream;)V

    return-void
.end method

.method public sendAYT(J)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/telnet/TelnetClient;->_sendAYT(J)Z

    move-result v0

    return v0
.end method

.method public sendCommand(B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/TelnetClient;->_sendCommand(B)V

    return-void
.end method

.method public sendSubnegotiation([I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "zero length message"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/TelnetClient;->_sendSubnegotiation([I)V

    return-void
.end method

.method public setReaderThread(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/commons/net/telnet/TelnetClient;->readerThread:Z

    return-void
.end method

.method public stopSpyStream()V
    .locals 0

    invoke-super {p0}, Lorg/apache/commons/net/telnet/Telnet;->_stopSpyStream()V

    return-void
.end method

.method public declared-synchronized unregisterInputListener()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lorg/apache/commons/net/telnet/TelnetClient;->inputListener:Lorg/apache/commons/net/telnet/TelnetInputListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public unregisterNotifHandler()V
    .locals 0

    invoke-super {p0}, Lorg/apache/commons/net/telnet/Telnet;->unregisterNotifHandler()V

    return-void
.end method
