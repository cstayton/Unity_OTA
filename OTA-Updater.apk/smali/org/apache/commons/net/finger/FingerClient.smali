.class public Lorg/apache/commons/net/finger/FingerClient;
.super Lorg/apache/commons/net/SocketClient;
.source "FingerClient.java"


# static fields
.field public static final DEFAULT_PORT:I = 0x4f

.field private static final __LONG_FLAG:Ljava/lang/String; = "/W "


# instance fields
.field private transient __buffer:[C


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/commons/net/SocketClient;-><init>()V

    const/16 v0, 0x400

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/apache/commons/net/finger/FingerClient;->__buffer:[C

    const/16 v0, 0x4f

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/finger/FingerClient;->setDefaultPort(I)V

    return-void
.end method


# virtual methods
.method public getInputStream(Z)Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/net/finger/FingerClient;->getInputStream(ZLjava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream(ZLjava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/net/finger/FingerClient;->getInputStream(ZLjava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream(ZLjava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v3, 0x40

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    if-eqz p1, :cond_0

    const-string v3, "/W "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\r\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    :goto_0
    new-instance v2, Ljava/io/DataOutputStream;

    new-instance v3, Ljava/io/BufferedOutputStream;

    iget-object v4, p0, Lorg/apache/commons/net/finger/FingerClient;->_output_:Ljava/io/OutputStream;

    const/16 v5, 0x400

    invoke-direct {v3, v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v3, 0x0

    array-length v4, v1

    invoke-virtual {v2, v1, v3, v4}, Ljava/io/DataOutputStream;->write([BII)V

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    iget-object v3, p0, Lorg/apache/commons/net/finger/FingerClient;->_input_:Ljava/io/InputStream;

    return-object v3

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    goto :goto_0
.end method

.method public query(Z)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/net/finger/FingerClient;->query(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public query(ZLjava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/commons/net/finger/FingerClient;->__buffer:[C

    array-length v3, v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/finger/FingerClient;->getInputStream(ZLjava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_0
    :try_start_0
    iget-object v3, p0, Lorg/apache/commons/net/finger/FingerClient;->__buffer:[C

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/apache/commons/net/finger/FingerClient;->__buffer:[C

    array-length v5, v5

    invoke-virtual {v0, v3, v4, v5}, Ljava/io/BufferedReader;->read([CII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-gtz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_0
    :try_start_1
    iget-object v3, p0, Lorg/apache/commons/net/finger/FingerClient;->__buffer:[C

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    throw v3
.end method
