.class public Lorg/apache/commons/net/bsd/RCommandClient;
.super Lorg/apache/commons/net/bsd/RExecClient;
.source "RCommandClient.java"


# static fields
.field public static final DEFAULT_PORT:I = 0x202

.field public static final MAX_CLIENT_PORT:I = 0x3ff

.field public static final MIN_CLIENT_PORT:I = 0x200


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/commons/net/bsd/RExecClient;-><init>()V

    const/16 v0, 0x202

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/bsd/RCommandClient;->setDefaultPort(I)V

    return-void
.end method


# virtual methods
.method _createErrorStream()Ljava/io/InputStream;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v1, 0x3ff

    const/4 v2, 0x0

    const/16 v1, 0x3ff

    :goto_0
    const/16 v4, 0x200

    if-lt v1, v4, :cond_0

    :try_start_0
    iget-object v4, p0, Lorg/apache/commons/net/bsd/RCommandClient;->_serverSocketFactory_:Ljavax/net/ServerSocketFactory;

    const/4 v5, 0x1

    invoke-virtual {p0}, Lorg/apache/commons/net/bsd/RCommandClient;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v4, v1, v5, v6}, Ljavax/net/ServerSocketFactory;->createServerSocket(IILjava/net/InetAddress;)Ljava/net/ServerSocket;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :cond_0
    if-nez v2, :cond_1

    new-instance v4, Ljava/net/BindException;

    const-string v5, "All ports in use."

    invoke-direct {v4, v5}, Ljava/net/BindException;-><init>(Ljava/lang/String;)V

    throw v4

    :catch_0
    move-exception v0

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lorg/apache/commons/net/bsd/RCommandClient;->_output_:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write([B)V

    iget-object v4, p0, Lorg/apache/commons/net/bsd/RCommandClient;->_output_:Ljava/io/OutputStream;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write(I)V

    iget-object v4, p0, Lorg/apache/commons/net/bsd/RCommandClient;->_output_:Ljava/io/OutputStream;

    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v2}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v3

    invoke-virtual {v2}, Ljava/net/ServerSocket;->close()V

    invoke-virtual {p0}, Lorg/apache/commons/net/bsd/RCommandClient;->isRemoteVerificationEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0, v3}, Lorg/apache/commons/net/bsd/RCommandClient;->verifyRemote(Ljava/net/Socket;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Ljava/net/Socket;->close()V

    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Security violation: unexpected connection attempt by "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    new-instance v4, Lorg/apache/commons/net/io/SocketInputStream;

    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Lorg/apache/commons/net/io/SocketInputStream;-><init>(Ljava/net/Socket;Ljava/io/InputStream;)V

    return-object v4
.end method

.method public connect(Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;,
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {p0, v0, p2, v1}, Lorg/apache/commons/net/bsd/RCommandClient;->connect(Ljava/net/InetAddress;ILjava/net/InetAddress;)V

    return-void
.end method

.method public connect(Ljava/lang/String;ILjava/net/InetAddress;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/commons/net/bsd/RCommandClient;->connect(Ljava/net/InetAddress;ILjava/net/InetAddress;)V

    return-void
.end method

.method public connect(Ljava/lang/String;ILjava/net/InetAddress;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;,
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    const/16 v0, 0x200

    if-lt p4, v0, :cond_0

    const/16 v0, 0x3ff

    if-le p4, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid port number "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/commons/net/bsd/RExecClient;->connect(Ljava/lang/String;ILjava/net/InetAddress;I)V

    return-void
.end method

.method public connect(Ljava/net/InetAddress;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/net/bsd/RCommandClient;->connect(Ljava/net/InetAddress;ILjava/net/InetAddress;)V

    return-void
.end method

.method public connect(Ljava/net/InetAddress;ILjava/net/InetAddress;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;,
            Ljava/net/BindException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v4, 0x200

    const/16 v2, 0x3ff

    const/16 v2, 0x3ff

    :goto_0
    if-lt v2, v4, :cond_0

    :try_start_0
    iget-object v3, p0, Lorg/apache/commons/net/bsd/RCommandClient;->_socketFactory_:Ljavax/net/SocketFactory;

    invoke-virtual {v3, p1, p2, p3, v2}, Ljavax/net/SocketFactory;->createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/commons/net/bsd/RCommandClient;->_socket_:Ljava/net/Socket;
    :try_end_0
    .catch Ljava/net/BindException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    if-ge v2, v4, :cond_1

    new-instance v3, Ljava/net/BindException;

    const-string v4, "All ports in use or insufficient permssion."

    invoke-direct {v3, v4}, Ljava/net/BindException;-><init>(Ljava/lang/String;)V

    throw v3

    :catch_0
    move-exception v0

    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/net/bsd/RCommandClient;->_connectAction_()V

    return-void
.end method

.method public connect(Ljava/net/InetAddress;ILjava/net/InetAddress;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;,
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/16 v0, 0x200

    if-lt p4, v0, :cond_0

    const/16 v0, 0x3ff

    if-le p4, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid port number "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/commons/net/bsd/RExecClient;->connect(Ljava/net/InetAddress;ILjava/net/InetAddress;I)V

    return-void
.end method

.method public rcommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/commons/net/bsd/RCommandClient;->rcommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public rcommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/net/bsd/RCommandClient;->rexec(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
