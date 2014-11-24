.class public Lorg/apache/commons/net/bsd/RExecClient;
.super Lorg/apache/commons/net/SocketClient;
.source "RExecClient.java"


# static fields
.field public static final DEFAULT_PORT:I = 0x200


# instance fields
.field private __remoteVerificationEnabled:Z

.field protected _errorStream_:Ljava/io/InputStream;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/commons/net/SocketClient;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/net/bsd/RExecClient;->_errorStream_:Ljava/io/InputStream;

    const/16 v0, 0x200

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/bsd/RExecClient;->setDefaultPort(I)V

    return-void
.end method


# virtual methods
.method _createErrorStream()Ljava/io/InputStream;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    iget-object v2, p0, Lorg/apache/commons/net/bsd/RExecClient;->_serverSocketFactory_:Ljavax/net/ServerSocketFactory;

    const/4 v3, 0x1

    invoke-virtual {p0}, Lorg/apache/commons/net/bsd/RExecClient;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v2, v5, v3, v4}, Ljavax/net/ServerSocketFactory;->createServerSocket(IILjava/net/InetAddress;)Ljava/net/ServerSocket;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/commons/net/bsd/RExecClient;->_output_:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    iget-object v2, p0, Lorg/apache/commons/net/bsd/RExecClient;->_output_:Ljava/io/OutputStream;

    invoke-virtual {v2, v5}, Ljava/io/OutputStream;->write(I)V

    iget-object v2, p0, Lorg/apache/commons/net/bsd/RExecClient;->_output_:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V

    iget-boolean v2, p0, Lorg/apache/commons/net/bsd/RExecClient;->__remoteVerificationEnabled:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Lorg/apache/commons/net/bsd/RExecClient;->verifyRemote(Ljava/net/Socket;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Security violation: unexpected connection attempt by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    new-instance v2, Lorg/apache/commons/net/io/SocketInputStream;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lorg/apache/commons/net/io/SocketInputStream;-><init>(Ljava/net/Socket;Ljava/io/InputStream;)V

    return-object v2
.end method

.method public disconnect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/net/bsd/RExecClient;->_errorStream_:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/net/bsd/RExecClient;->_errorStream_:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/net/bsd/RExecClient;->_errorStream_:Ljava/io/InputStream;

    invoke-super {p0}, Lorg/apache/commons/net/SocketClient;->disconnect()V

    return-void
.end method

.method public getErrorStream()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/net/bsd/RExecClient;->_errorStream_:Ljava/io/InputStream;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/net/bsd/RExecClient;->_input_:Ljava/io/InputStream;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/net/bsd/RExecClient;->_output_:Ljava/io/OutputStream;

    return-object v0
.end method

.method public final isRemoteVerificationEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/net/bsd/RExecClient;->__remoteVerificationEnabled:Z

    return v0
.end method

.method public rexec(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/commons/net/bsd/RExecClient;->rexec(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public rexec(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    if-eqz p4, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/net/bsd/RExecClient;->_createErrorStream()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/net/bsd/RExecClient;->_errorStream_:Ljava/io/InputStream;

    :goto_0
    iget-object v2, p0, Lorg/apache/commons/net/bsd/RExecClient;->_output_:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    iget-object v2, p0, Lorg/apache/commons/net/bsd/RExecClient;->_output_:Ljava/io/OutputStream;

    invoke-virtual {v2, v4}, Ljava/io/OutputStream;->write(I)V

    iget-object v2, p0, Lorg/apache/commons/net/bsd/RExecClient;->_output_:Ljava/io/OutputStream;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    iget-object v2, p0, Lorg/apache/commons/net/bsd/RExecClient;->_output_:Ljava/io/OutputStream;

    invoke-virtual {v2, v4}, Ljava/io/OutputStream;->write(I)V

    iget-object v2, p0, Lorg/apache/commons/net/bsd/RExecClient;->_output_:Ljava/io/OutputStream;

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    iget-object v2, p0, Lorg/apache/commons/net/bsd/RExecClient;->_output_:Ljava/io/OutputStream;

    invoke-virtual {v2, v4}, Ljava/io/OutputStream;->write(I)V

    iget-object v2, p0, Lorg/apache/commons/net/bsd/RExecClient;->_output_:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    iget-object v2, p0, Lorg/apache/commons/net/bsd/RExecClient;->_input_:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v1

    if-lez v1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    iget-object v2, p0, Lorg/apache/commons/net/bsd/RExecClient;->_input_:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    int-to-char v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lorg/apache/commons/net/bsd/RExecClient;->_output_:Ljava/io/OutputStream;

    invoke-virtual {v2, v4}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    if-gez v1, :cond_3

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Server closed connection."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    return-void
.end method

.method public final setRemoteVerificationEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/commons/net/bsd/RExecClient;->__remoteVerificationEnabled:Z

    return-void
.end method
