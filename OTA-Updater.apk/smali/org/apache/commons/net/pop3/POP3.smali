.class public Lorg/apache/commons/net/pop3/POP3;
.super Lorg/apache/commons/net/SocketClient;
.source "POP3.java"


# static fields
.field public static final AUTHORIZATION_STATE:I = 0x0

.field public static final DEFAULT_PORT:I = 0x6e

.field public static final DISCONNECTED_STATE:I = -0x1

.field public static final TRANSACTION_STATE:I = 0x1

.field public static final UPDATE_STATE:I = 0x2

.field static final _DEFAULT_ENCODING:Ljava/lang/String; = "ISO-8859-1"

.field static final _ERROR:Ljava/lang/String; = "-ERR"

.field static final _OK:Ljava/lang/String; = "+OK"

.field static final _OK_INT:Ljava/lang/String; = "+ "


# instance fields
.field private __popState:I

.field protected _commandSupport_:Lorg/apache/commons/net/ProtocolCommandSupport;

.field _lastReplyLine:Ljava/lang/String;

.field _reader:Ljava/io/BufferedReader;

.field _replyCode:I

.field _replyLines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field _writer:Ljava/io/BufferedWriter;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/apache/commons/net/SocketClient;-><init>()V

    const/16 v0, 0x6e

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/pop3/POP3;->setDefaultPort(I)V

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/net/pop3/POP3;->__popState:I

    iput-object v1, p0, Lorg/apache/commons/net/pop3/POP3;->_reader:Ljava/io/BufferedReader;

    iput-object v1, p0, Lorg/apache/commons/net/pop3/POP3;->_writer:Ljava/io/BufferedWriter;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/net/pop3/POP3;->_replyLines:Ljava/util/List;

    new-instance v0, Lorg/apache/commons/net/ProtocolCommandSupport;

    invoke-direct {v0, p0}, Lorg/apache/commons/net/ProtocolCommandSupport;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/commons/net/pop3/POP3;->_commandSupport_:Lorg/apache/commons/net/ProtocolCommandSupport;

    return-void
.end method

.method private __getReply()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lorg/apache/commons/net/pop3/POP3;->_replyLines:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lorg/apache/commons/net/pop3/POP3;->_reader:Ljava/io/BufferedReader;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Ljava/io/EOFException;

    const-string v2, "Connection closed without indication."

    invoke-direct {v1, v2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const-string v1, "+OK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/commons/net/pop3/POP3;->_replyCode:I

    :goto_0
    iget-object v1, p0, Lorg/apache/commons/net/pop3/POP3;->_replyLines:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-object v0, p0, Lorg/apache/commons/net/pop3/POP3;->_lastReplyLine:Ljava/lang/String;

    iget v1, p0, Lorg/apache/commons/net/pop3/POP3;->_replyCode:I

    invoke-virtual {p0}, Lorg/apache/commons/net/pop3/POP3;->getReplyString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/net/pop3/POP3;->fireReplyReceived(ILjava/lang/String;)V

    return-void

    :cond_1
    const-string v1, "-ERR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    iput v1, p0, Lorg/apache/commons/net/pop3/POP3;->_replyCode:I

    goto :goto_0

    :cond_2
    const-string v1, "+ "

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    iput v1, p0, Lorg/apache/commons/net/pop3/POP3;->_replyCode:I

    goto :goto_0

    :cond_3
    new-instance v1, Lorg/apache/commons/net/MalformedServerReplyException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received invalid POP3 protocol response from server."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/net/MalformedServerReplyException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method protected _connectAction_()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Lorg/apache/commons/net/SocketClient;->_connectAction_()V

    new-instance v0, Lorg/apache/commons/net/io/CRLFLineReader;

    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lorg/apache/commons/net/pop3/POP3;->_input_:Ljava/io/InputStream;

    const-string v3, "ISO-8859-1"

    invoke-direct {v1, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/apache/commons/net/io/CRLFLineReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lorg/apache/commons/net/pop3/POP3;->_reader:Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    iget-object v2, p0, Lorg/apache/commons/net/pop3/POP3;->_output_:Ljava/io/OutputStream;

    const-string v3, "ISO-8859-1"

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lorg/apache/commons/net/pop3/POP3;->_writer:Ljava/io/BufferedWriter;

    invoke-direct {p0}, Lorg/apache/commons/net/pop3/POP3;->__getReply()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/pop3/POP3;->setState(I)V

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

    iput-object v0, p0, Lorg/apache/commons/net/pop3/POP3;->_reader:Ljava/io/BufferedReader;

    iput-object v0, p0, Lorg/apache/commons/net/pop3/POP3;->_writer:Ljava/io/BufferedWriter;

    iput-object v0, p0, Lorg/apache/commons/net/pop3/POP3;->_lastReplyLine:Ljava/lang/String;

    iget-object v0, p0, Lorg/apache/commons/net/pop3/POP3;->_replyLines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/pop3/POP3;->setState(I)V

    return-void
.end method

.method public getAdditionalReply()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lorg/apache/commons/net/pop3/POP3;->_reader:Ljava/io/BufferedReader;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/apache/commons/net/pop3/POP3;->_replyLines:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lorg/apache/commons/net/pop3/POP3;->_reader:Ljava/io/BufferedReader;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected getCommandSupport()Lorg/apache/commons/net/ProtocolCommandSupport;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/net/pop3/POP3;->_commandSupport_:Lorg/apache/commons/net/ProtocolCommandSupport;

    return-object v0
.end method

.method public getReplyString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v3, 0x100

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v3, p0, Lorg/apache/commons/net/pop3/POP3;->_replyLines:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    iget-object v0, p0, Lorg/apache/commons/net/pop3/POP3;->_replyLines:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/commons/net/pop3/POP3;->_replyLines:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/net/pop3/POP3;->__popState:I

    return v0
.end method

.method public removeProtocolCommandistener(Lorg/apache/commons/net/ProtocolCommandListener;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/pop3/POP3;->removeProtocolCommandListener(Lorg/apache/commons/net/ProtocolCommandListener;)V

    return-void
.end method

.method public sendCommand(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/apache/commons/net/pop3/POP3Command;->_commands:[Ljava/lang/String;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/net/pop3/POP3;->sendCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public sendCommand(ILjava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/apache/commons/net/pop3/POP3Command;->_commands:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-virtual {p0, v0, p2}, Lorg/apache/commons/net/pop3/POP3;->sendCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public sendCommand(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/net/pop3/POP3;->sendCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public sendCommand(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v2, p0, Lorg/apache/commons/net/pop3/POP3;->_writer:Ljava/io/BufferedWriter;

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Socket is not connected"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v2, "\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/net/pop3/POP3;->_writer:Ljava/io/BufferedWriter;

    invoke-virtual {v2, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/commons/net/pop3/POP3;->_writer:Ljava/io/BufferedWriter;

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V

    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/net/pop3/POP3;->fireCommandSent(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/apache/commons/net/pop3/POP3;->__getReply()V

    iget v2, p0, Lorg/apache/commons/net/pop3/POP3;->_replyCode:I

    return v2
.end method

.method public setState(I)V
    .locals 0

    iput p1, p0, Lorg/apache/commons/net/pop3/POP3;->__popState:I

    return-void
.end method
