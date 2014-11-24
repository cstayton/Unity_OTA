.class public Lorg/apache/commons/net/imap/IMAP;
.super Lorg/apache/commons/net/SocketClient;
.source "IMAP.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/net/imap/IMAP$IMAPState;
    }
.end annotation


# static fields
.field public static final DEFAULT_PORT:I = 0x8f

.field protected static final __DEFAULT_ENCODING:Ljava/lang/String; = "ISO-8859-1"


# instance fields
.field private __state:Lorg/apache/commons/net/imap/IMAP$IMAPState;

.field protected __writer:Ljava/io/BufferedWriter;

.field private _initialID:[C

.field protected _reader:Ljava/io/BufferedReader;

.field private _replyCode:I

.field private _replyLines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/apache/commons/net/SocketClient;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/apache/commons/net/imap/IMAP;->_initialID:[C

    const/16 v0, 0x8f

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/imap/IMAP;->setDefaultPort(I)V

    sget-object v0, Lorg/apache/commons/net/imap/IMAP$IMAPState;->DISCONNECTED_STATE:Lorg/apache/commons/net/imap/IMAP$IMAPState;

    iput-object v0, p0, Lorg/apache/commons/net/imap/IMAP;->__state:Lorg/apache/commons/net/imap/IMAP$IMAPState;

    iput-object v1, p0, Lorg/apache/commons/net/imap/IMAP;->_reader:Ljava/io/BufferedReader;

    iput-object v1, p0, Lorg/apache/commons/net/imap/IMAP;->__writer:Ljava/io/BufferedWriter;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/net/imap/IMAP;->_replyLines:Ljava/util/List;

    invoke-virtual {p0}, Lorg/apache/commons/net/imap/IMAP;->createCommandSupport()V

    return-void

    :array_0
    .array-data 0x2
        0x41t 0x0t
        0x41t 0x0t
        0x41t 0x0t
        0x41t 0x0t
    .end array-data
.end method

.method private __getReply()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/commons/net/imap/IMAP;->__getReply(Z)V

    return-void
.end method

.method private __getReply(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lorg/apache/commons/net/imap/IMAP;->_replyLines:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lorg/apache/commons/net/imap/IMAP;->_reader:Ljava/io/BufferedReader;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Ljava/io/EOFException;

    const-string v2, "Connection closed without indication."

    invoke-direct {v1, v2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Lorg/apache/commons/net/imap/IMAP;->_replyLines:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_3

    :goto_0
    invoke-static {v0}, Lorg/apache/commons/net/imap/IMAPReply;->isUntagged(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/apache/commons/net/imap/IMAP;->_reader:Ljava/io/BufferedReader;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v1, Ljava/io/EOFException;

    const-string v2, "Connection closed without indication."

    invoke-direct {v1, v2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-object v1, p0, Lorg/apache/commons/net/imap/IMAP;->_replyLines:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lorg/apache/commons/net/imap/IMAPReply;->getReplyCode(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/apache/commons/net/imap/IMAP;->_replyCode:I

    :goto_1
    iget v1, p0, Lorg/apache/commons/net/imap/IMAP;->_replyCode:I

    invoke-virtual {p0}, Lorg/apache/commons/net/imap/IMAP;->getReplyString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/net/imap/IMAP;->fireReplyReceived(ILjava/lang/String;)V

    return-void

    :cond_3
    invoke-static {v0}, Lorg/apache/commons/net/imap/IMAPReply;->getUntaggedReplyCode(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/apache/commons/net/imap/IMAP;->_replyCode:I

    goto :goto_1
.end method

.method private sendCommandWithID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v2, 0x20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v2, "\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/net/imap/IMAP;->__writer:Ljava/io/BufferedWriter;

    invoke-virtual {v2, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/commons/net/imap/IMAP;->__writer:Ljava/io/BufferedWriter;

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V

    invoke-virtual {p0, p2, v1}, Lorg/apache/commons/net/imap/IMAP;->fireCommandSent(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/apache/commons/net/imap/IMAP;->__getReply()V

    iget v2, p0, Lorg/apache/commons/net/imap/IMAP;->_replyCode:I

    return v2
.end method


# virtual methods
.method protected _connectAction_()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Lorg/apache/commons/net/SocketClient;->_connectAction_()V

    new-instance v1, Lorg/apache/commons/net/io/CRLFLineReader;

    new-instance v2, Ljava/io/InputStreamReader;

    iget-object v3, p0, Lorg/apache/commons/net/imap/IMAP;->_input_:Ljava/io/InputStream;

    const-string v4, "ISO-8859-1"

    invoke-direct {v2, v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/apache/commons/net/io/CRLFLineReader;-><init>(Ljava/io/Reader;)V

    iput-object v1, p0, Lorg/apache/commons/net/imap/IMAP;->_reader:Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    iget-object v3, p0, Lorg/apache/commons/net/imap/IMAP;->_output_:Ljava/io/OutputStream;

    const-string v4, "ISO-8859-1"

    invoke-direct {v2, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v1, p0, Lorg/apache/commons/net/imap/IMAP;->__writer:Ljava/io/BufferedWriter;

    invoke-virtual {p0}, Lorg/apache/commons/net/imap/IMAP;->getSoTimeout()I

    move-result v0

    if-gtz v0, :cond_0

    iget v1, p0, Lorg/apache/commons/net/imap/IMAP;->connectTimeout:I

    invoke-virtual {p0, v1}, Lorg/apache/commons/net/imap/IMAP;->setSoTimeout(I)V

    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/apache/commons/net/imap/IMAP;->__getReply(Z)V

    if-gtz v0, :cond_1

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/imap/IMAP;->setSoTimeout(I)V

    :cond_1
    sget-object v1, Lorg/apache/commons/net/imap/IMAP$IMAPState;->NOT_AUTH_STATE:Lorg/apache/commons/net/imap/IMAP$IMAPState;

    invoke-virtual {p0, v1}, Lorg/apache/commons/net/imap/IMAP;->setState(Lorg/apache/commons/net/imap/IMAP$IMAPState;)V

    return-void
.end method

.method public disconnect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-super {p0}, Lorg/apache/commons/net/SocketClient;->disconnect()V

    iput-object v0, p0, Lorg/apache/commons/net/imap/IMAP;->_reader:Ljava/io/BufferedReader;

    iput-object v0, p0, Lorg/apache/commons/net/imap/IMAP;->__writer:Ljava/io/BufferedWriter;

    iget-object v0, p0, Lorg/apache/commons/net/imap/IMAP;->_replyLines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v0, Lorg/apache/commons/net/imap/IMAP$IMAPState;->DISCONNECTED_STATE:Lorg/apache/commons/net/imap/IMAP$IMAPState;

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/imap/IMAP;->setState(Lorg/apache/commons/net/imap/IMAP$IMAPState;)V

    return-void
.end method

.method public doCommand(Lorg/apache/commons/net/imap/IMAPCommand;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/imap/IMAP;->sendCommand(Lorg/apache/commons/net/imap/IMAPCommand;)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/imap/IMAPReply;->isSuccess(I)Z

    move-result v0

    return v0
.end method

.method public doCommand(Lorg/apache/commons/net/imap/IMAPCommand;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/imap/IMAP;->sendCommand(Lorg/apache/commons/net/imap/IMAPCommand;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/imap/IMAPReply;->isSuccess(I)Z

    move-result v0

    return v0
.end method

.method protected generateCommandID()Ljava/lang/String;
    .locals 5

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/commons/net/imap/IMAP;->_initialID:[C

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V

    const/4 v0, 0x1

    iget-object v3, p0, Lorg/apache/commons/net/imap/IMAP;->_initialID:[C

    array-length v3, v3

    add-int/lit8 v1, v3, -0x1

    :goto_0
    if-eqz v0, :cond_1

    if-ltz v1, :cond_1

    iget-object v3, p0, Lorg/apache/commons/net/imap/IMAP;->_initialID:[C

    aget-char v3, v3, v1

    const/16 v4, 0x5a

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lorg/apache/commons/net/imap/IMAP;->_initialID:[C

    const/16 v4, 0x41

    aput-char v4, v3, v1

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lorg/apache/commons/net/imap/IMAP;->_initialID:[C

    aget-char v4, v3, v1

    add-int/lit8 v4, v4, 0x1

    int-to-char v4, v4

    aput-char v4, v3, v1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    return-object v2
.end method

.method public getReplyString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v3, 0x100

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v3, p0, Lorg/apache/commons/net/imap/IMAP;->_replyLines:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\r\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getReplyStrings()[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/net/imap/IMAP;->_replyLines:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/commons/net/imap/IMAP;->_replyLines:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getState()Lorg/apache/commons/net/imap/IMAP$IMAPState;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/net/imap/IMAP;->__state:Lorg/apache/commons/net/imap/IMAP$IMAPState;

    return-object v0
.end method

.method public sendCommand(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/net/imap/IMAP;->sendCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public sendCommand(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/net/imap/IMAP;->generateCommandID()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/net/imap/IMAP;->sendCommandWithID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public sendCommand(Lorg/apache/commons/net/imap/IMAPCommand;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/net/imap/IMAP;->sendCommand(Lorg/apache/commons/net/imap/IMAPCommand;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public sendCommand(Lorg/apache/commons/net/imap/IMAPCommand;Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/commons/net/imap/IMAPCommand;->getIMAPCommand()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/apache/commons/net/imap/IMAP;->sendCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public sendData(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, v0}, Lorg/apache/commons/net/imap/IMAP;->sendCommandWithID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected setState(Lorg/apache/commons/net/imap/IMAP$IMAPState;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/net/imap/IMAP;->__state:Lorg/apache/commons/net/imap/IMAP$IMAPState;

    return-void
.end method
