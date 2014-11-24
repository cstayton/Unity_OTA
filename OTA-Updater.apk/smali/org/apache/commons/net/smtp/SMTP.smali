.class public Lorg/apache/commons/net/smtp/SMTP;
.super Lorg/apache/commons/net/SocketClient;
.source "SMTP.java"


# static fields
.field public static final DEFAULT_PORT:I = 0x19

.field private static final __DEFAULT_ENCODING:Ljava/lang/String; = "ISO-8859-1"


# instance fields
.field protected _commandSupport_:Lorg/apache/commons/net/ProtocolCommandSupport;

.field private _newReplyString:Z

.field _reader:Ljava/io/BufferedReader;

.field private _replyCode:I

.field private final _replyLines:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _replyString:Ljava/lang/String;

.field _writer:Ljava/io/BufferedWriter;

.field protected final encoding:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "ISO-8859-1"

    invoke-direct {p0, v0}, Lorg/apache/commons/net/smtp/SMTP;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/commons/net/SocketClient;-><init>()V

    const/16 v0, 0x19

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/smtp/SMTP;->setDefaultPort(I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/net/smtp/SMTP;->_replyLines:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/net/smtp/SMTP;->_newReplyString:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/net/smtp/SMTP;->_replyString:Ljava/lang/String;

    new-instance v0, Lorg/apache/commons/net/ProtocolCommandSupport;

    invoke-direct {v0, p0}, Lorg/apache/commons/net/ProtocolCommandSupport;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/commons/net/smtp/SMTP;->_commandSupport_:Lorg/apache/commons/net/ProtocolCommandSupport;

    iput-object p1, p0, Lorg/apache/commons/net/smtp/SMTP;->encoding:Ljava/lang/String;

    return-void
.end method

.method private __getReply()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v8, 0x2d

    const/4 v7, 0x0

    const/4 v6, 0x3

    const/4 v4, 0x1

    iput-boolean v4, p0, Lorg/apache/commons/net/smtp/SMTP;->_newReplyString:Z

    iget-object v4, p0, Lorg/apache/commons/net/smtp/SMTP;->_replyLines:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    iget-object v4, p0, Lorg/apache/commons/net/smtp/SMTP;->_reader:Ljava/io/BufferedReader;

    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    new-instance v4, Lorg/apache/commons/net/smtp/SMTPConnectionClosedException;

    const-string v5, "Connection closed without indication."

    invoke-direct {v4, v5}, Lorg/apache/commons/net/smtp/SMTPConnectionClosedException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v6, :cond_1

    new-instance v4, Lorg/apache/commons/net/MalformedServerReplyException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Truncated server reply: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/commons/net/MalformedServerReplyException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    const/4 v4, 0x0

    const/4 v5, 0x3

    :try_start_0
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lorg/apache/commons/net/smtp/SMTP;->_replyCode:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v4, p0, Lorg/apache/commons/net/smtp/SMTP;->_replyLines:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-le v2, v6, :cond_4

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v8, :cond_4

    :cond_2
    iget-object v4, p0, Lorg/apache/commons/net/smtp/SMTP;->_reader:Ljava/io/BufferedReader;

    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    new-instance v4, Lorg/apache/commons/net/smtp/SMTPConnectionClosedException;

    const-string v5, "Connection closed without indication."

    invoke-direct {v4, v5}, Lorg/apache/commons/net/smtp/SMTPConnectionClosedException;-><init>(Ljava/lang/String;)V

    throw v4

    :catch_0
    move-exception v1

    new-instance v4, Lorg/apache/commons/net/MalformedServerReplyException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not parse response code.\nServer Reply: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/commons/net/MalformedServerReplyException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_3
    iget-object v4, p0, Lorg/apache/commons/net/smtp/SMTP;->_replyLines:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x4

    if-lt v4, v5, :cond_2

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v8, :cond_2

    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_4
    iget v4, p0, Lorg/apache/commons/net/smtp/SMTP;->_replyCode:I

    invoke-virtual {p0}, Lorg/apache/commons/net/smtp/SMTP;->getReplyString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lorg/apache/commons/net/smtp/SMTP;->fireReplyReceived(ILjava/lang/String;)V

    iget v4, p0, Lorg/apache/commons/net/smtp/SMTP;->_replyCode:I

    const/16 v5, 0x1a5

    if-ne v4, v5, :cond_5

    new-instance v4, Lorg/apache/commons/net/smtp/SMTPConnectionClosedException;

    const-string v5, "SMTP response 421 received.  Server closed connection."

    invoke-direct {v4, v5}, Lorg/apache/commons/net/smtp/SMTPConnectionClosedException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_5
    return-void
.end method

.method private __sendCommand(ILjava/lang/String;Z)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lorg/apache/commons/net/smtp/SMTPCommand;->getCommand(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lorg/apache/commons/net/smtp/SMTP;->__sendCommand(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method private __sendCommand(Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v2, "\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/commons/net/smtp/SMTP;->_writer:Ljava/io/BufferedWriter;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/commons/net/smtp/SMTP;->_writer:Ljava/io/BufferedWriter;

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V

    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/net/smtp/SMTP;->fireCommandSent(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/apache/commons/net/smtp/SMTP;->__getReply()V

    iget v2, p0, Lorg/apache/commons/net/smtp/SMTP;->_replyCode:I

    return v2
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

    iget-object v2, p0, Lorg/apache/commons/net/smtp/SMTP;->_input_:Ljava/io/InputStream;

    iget-object v3, p0, Lorg/apache/commons/net/smtp/SMTP;->encoding:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/apache/commons/net/io/CRLFLineReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lorg/apache/commons/net/smtp/SMTP;->_reader:Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    iget-object v2, p0, Lorg/apache/commons/net/smtp/SMTP;->_output_:Ljava/io/OutputStream;

    iget-object v3, p0, Lorg/apache/commons/net/smtp/SMTP;->encoding:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lorg/apache/commons/net/smtp/SMTP;->_writer:Ljava/io/BufferedWriter;

    invoke-direct {p0}, Lorg/apache/commons/net/smtp/SMTP;->__getReply()V

    return-void
.end method

.method public data()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/smtp/SMTP;->sendCommand(I)I

    move-result v0

    return v0
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

    iput-object v0, p0, Lorg/apache/commons/net/smtp/SMTP;->_reader:Ljava/io/BufferedReader;

    iput-object v0, p0, Lorg/apache/commons/net/smtp/SMTP;->_writer:Ljava/io/BufferedWriter;

    iput-object v0, p0, Lorg/apache/commons/net/smtp/SMTP;->_replyString:Ljava/lang/String;

    iget-object v0, p0, Lorg/apache/commons/net/smtp/SMTP;->_replyLines:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/net/smtp/SMTP;->_newReplyString:Z

    return-void
.end method

.method public expn(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x9

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/smtp/SMTP;->sendCommand(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected getCommandSupport()Lorg/apache/commons/net/ProtocolCommandSupport;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/net/smtp/SMTP;->_commandSupport_:Lorg/apache/commons/net/ProtocolCommandSupport;

    return-object v0
.end method

.method public getReply()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/apache/commons/net/smtp/SMTP;->__getReply()V

    iget v0, p0, Lorg/apache/commons/net/smtp/SMTP;->_replyCode:I

    return v0
.end method

.method public getReplyCode()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/net/smtp/SMTP;->_replyCode:I

    return v0
.end method

.method public getReplyString()Ljava/lang/String;
    .locals 4

    iget-boolean v3, p0, Lorg/apache/commons/net/smtp/SMTP;->_newReplyString:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/apache/commons/net/smtp/SMTP;->_replyString:Ljava/lang/String;

    :goto_0
    return-object v3

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/apache/commons/net/smtp/SMTP;->_replyLines:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\r\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    iput-boolean v3, p0, Lorg/apache/commons/net/smtp/SMTP;->_newReplyString:Z

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/commons/net/smtp/SMTP;->_replyString:Ljava/lang/String;

    goto :goto_0
.end method

.method public getReplyStrings()[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/net/smtp/SMTP;->_replyLines:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/commons/net/smtp/SMTP;->_replyLines:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public helo(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/smtp/SMTP;->sendCommand(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public help()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/smtp/SMTP;->sendCommand(I)I

    move-result v0

    return v0
.end method

.method public help(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xa

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/smtp/SMTP;->sendCommand(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public mail(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lorg/apache/commons/net/smtp/SMTP;->__sendCommand(ILjava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public noop()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/smtp/SMTP;->sendCommand(I)I

    move-result v0

    return v0
.end method

.method public quit()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/smtp/SMTP;->sendCommand(I)I

    move-result v0

    return v0
.end method

.method public rcpt(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lorg/apache/commons/net/smtp/SMTP;->__sendCommand(ILjava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public removeProtocolCommandistener(Lorg/apache/commons/net/ProtocolCommandListener;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/smtp/SMTP;->removeProtocolCommandListener(Lorg/apache/commons/net/ProtocolCommandListener;)V

    return-void
.end method

.method public rset()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/smtp/SMTP;->sendCommand(I)I

    move-result v0

    return v0
.end method

.method public saml(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/smtp/SMTP;->sendCommand(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public send(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/smtp/SMTP;->sendCommand(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public sendCommand(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/net/smtp/SMTP;->sendCommand(ILjava/lang/String;)I

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

    invoke-static {p1}, Lorg/apache/commons/net/smtp/SMTPCommand;->getCommand(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/apache/commons/net/smtp/SMTP;->sendCommand(Ljava/lang/String;Ljava/lang/String;)I

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

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/net/smtp/SMTP;->sendCommand(Ljava/lang/String;Ljava/lang/String;)I

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

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/net/smtp/SMTP;->__sendCommand(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public soml(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/smtp/SMTP;->sendCommand(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public turn()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/smtp/SMTP;->sendCommand(I)I

    move-result v0

    return v0
.end method

.method public vrfy(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/smtp/SMTP;->sendCommand(ILjava/lang/String;)I

    move-result v0

    return v0
.end method
