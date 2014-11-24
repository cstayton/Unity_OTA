.class public Lorg/apache/commons/net/pop3/POP3SClient;
.super Lorg/apache/commons/net/pop3/POP3Client;
.source "POP3SClient.java"


# static fields
.field private static final DEFAULT_POP3S_PORT:I = 0x3e3

.field private static final DEFAULT_PROTOCOL:Ljava/lang/String; = "TLS"


# instance fields
.field private context:Ljavax/net/ssl/SSLContext;

.field private final isImplicit:Z

.field private keyManager:Ljavax/net/ssl/KeyManager;

.field private final protocol:Ljava/lang/String;

.field private protocols:[Ljava/lang/String;

.field private suites:[Ljava/lang/String;

.field private trustManager:Ljavax/net/ssl/TrustManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "TLS"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/net/pop3/POP3SClient;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/net/pop3/POP3SClient;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/net/pop3/POP3SClient;-><init>(Ljava/lang/String;ZLjavax/net/ssl/SSLContext;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLjavax/net/ssl/SSLContext;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lorg/apache/commons/net/pop3/POP3Client;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/net/pop3/POP3SClient;->context:Ljavax/net/ssl/SSLContext;

    iput-object v0, p0, Lorg/apache/commons/net/pop3/POP3SClient;->suites:[Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/commons/net/pop3/POP3SClient;->protocols:[Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/commons/net/pop3/POP3SClient;->trustManager:Ljavax/net/ssl/TrustManager;

    iput-object v0, p0, Lorg/apache/commons/net/pop3/POP3SClient;->keyManager:Ljavax/net/ssl/KeyManager;

    iput-object p1, p0, Lorg/apache/commons/net/pop3/POP3SClient;->protocol:Ljava/lang/String;

    iput-boolean p2, p0, Lorg/apache/commons/net/pop3/POP3SClient;->isImplicit:Z

    iput-object p3, p0, Lorg/apache/commons/net/pop3/POP3SClient;->context:Ljavax/net/ssl/SSLContext;

    iget-boolean v0, p0, Lorg/apache/commons/net/pop3/POP3SClient;->isImplicit:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x3e3

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/pop3/POP3SClient;->setDefaultPort(I)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLContext;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/net/pop3/POP3SClient;-><init>(ZLjavax/net/ssl/SSLContext;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    const-string v0, "TLS"

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/net/pop3/POP3SClient;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(ZLjavax/net/ssl/SSLContext;)V
    .locals 1

    const-string v0, "TLS"

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/net/pop3/POP3SClient;-><init>(Ljava/lang/String;ZLjavax/net/ssl/SSLContext;)V

    return-void
.end method

.method private getKeyManager()Ljavax/net/ssl/KeyManager;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/net/pop3/POP3SClient;->keyManager:Ljavax/net/ssl/KeyManager;

    return-object v0
.end method

.method private initSSLContext()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/net/pop3/POP3SClient;->context:Ljavax/net/ssl/SSLContext;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/net/pop3/POP3SClient;->protocol:Ljava/lang/String;

    invoke-direct {p0}, Lorg/apache/commons/net/pop3/POP3SClient;->getKeyManager()Ljavax/net/ssl/KeyManager;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/net/pop3/POP3SClient;->getTrustManager()Ljavax/net/ssl/TrustManager;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/apache/commons/net/util/SSLContextUtils;->createSSLContext(Ljava/lang/String;Ljavax/net/ssl/KeyManager;Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/net/pop3/POP3SClient;->context:Ljavax/net/ssl/SSLContext;

    :cond_0
    return-void
.end method

.method private performSSLNegotiation()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x1

    invoke-direct {p0}, Lorg/apache/commons/net/pop3/POP3SClient;->initSSLContext()V

    iget-object v4, p0, Lorg/apache/commons/net/pop3/POP3SClient;->context:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v4}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/commons/net/pop3/POP3SClient;->getRemoteAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/net/pop3/POP3SClient;->getRemotePort()I

    move-result v1

    iget-object v4, p0, Lorg/apache/commons/net/pop3/POP3SClient;->_socket_:Ljava/net/Socket;

    invoke-virtual {v3, v4, v0, v1, v5}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v2

    check-cast v2, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v2, v5}, Ljavax/net/ssl/SSLSocket;->setEnableSessionCreation(Z)V

    invoke-virtual {v2, v5}, Ljavax/net/ssl/SSLSocket;->setUseClientMode(Z)V

    iget-object v4, p0, Lorg/apache/commons/net/pop3/POP3SClient;->protocols:[Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/apache/commons/net/pop3/POP3SClient;->protocols:[Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    :cond_0
    iget-object v4, p0, Lorg/apache/commons/net/pop3/POP3SClient;->suites:[Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lorg/apache/commons/net/pop3/POP3SClient;->suites:[Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v2}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    iput-object v2, p0, Lorg/apache/commons/net/pop3/POP3SClient;->_socket_:Ljava/net/Socket;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/commons/net/pop3/POP3SClient;->_input_:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/commons/net/pop3/POP3SClient;->_output_:Ljava/io/OutputStream;

    new-instance v4, Lorg/apache/commons/net/io/CRLFLineReader;

    new-instance v5, Ljava/io/InputStreamReader;

    iget-object v6, p0, Lorg/apache/commons/net/pop3/POP3SClient;->_input_:Ljava/io/InputStream;

    const-string v7, "ISO-8859-1"

    invoke-direct {v5, v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lorg/apache/commons/net/io/CRLFLineReader;-><init>(Ljava/io/Reader;)V

    iput-object v4, p0, Lorg/apache/commons/net/pop3/POP3SClient;->_reader:Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/OutputStreamWriter;

    iget-object v6, p0, Lorg/apache/commons/net/pop3/POP3SClient;->_output_:Ljava/io/OutputStream;

    const-string v7, "ISO-8859-1"

    invoke-direct {v5, v6, v7}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v4, p0, Lorg/apache/commons/net/pop3/POP3SClient;->_writer:Ljava/io/BufferedWriter;

    return-void
.end method


# virtual methods
.method protected _connectAction_()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/apache/commons/net/pop3/POP3SClient;->isImplicit:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/commons/net/pop3/POP3SClient;->performSSLNegotiation()V

    :cond_0
    invoke-super {p0}, Lorg/apache/commons/net/pop3/POP3Client;->_connectAction_()V

    return-void
.end method

.method public execTLS()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "STLS"

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/pop3/POP3SClient;->sendCommand(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/net/pop3/POP3SClient;->performSSLNegotiation()V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getEnabledCipherSuites()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/net/pop3/POP3SClient;->_socket_:Ljava/net/Socket;

    instance-of v0, v0, Ljavax/net/ssl/SSLSocket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/net/pop3/POP3SClient;->_socket_:Ljava/net/Socket;

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEnabledProtocols()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/net/pop3/POP3SClient;->_socket_:Ljava/net/Socket;

    instance-of v0, v0, Ljavax/net/ssl/SSLSocket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/net/pop3/POP3SClient;->_socket_:Ljava/net/Socket;

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTrustManager()Ljavax/net/ssl/TrustManager;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/net/pop3/POP3SClient;->trustManager:Ljavax/net/ssl/TrustManager;

    return-object v0
.end method

.method public setEnabledCipherSuites([Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/commons/net/pop3/POP3SClient;->suites:[Ljava/lang/String;

    iget-object v0, p0, Lorg/apache/commons/net/pop3/POP3SClient;->suites:[Ljava/lang/String;

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public setEnabledProtocols([Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/commons/net/pop3/POP3SClient;->protocols:[Ljava/lang/String;

    iget-object v0, p0, Lorg/apache/commons/net/pop3/POP3SClient;->protocols:[Ljava/lang/String;

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public setKeyManager(Ljavax/net/ssl/KeyManager;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/net/pop3/POP3SClient;->keyManager:Ljavax/net/ssl/KeyManager;

    return-void
.end method

.method public setTrustManager(Ljavax/net/ssl/TrustManager;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/net/pop3/POP3SClient;->trustManager:Ljavax/net/ssl/TrustManager;

    return-void
.end method
