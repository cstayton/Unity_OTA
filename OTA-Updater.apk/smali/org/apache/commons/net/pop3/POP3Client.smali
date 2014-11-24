.class public Lorg/apache/commons/net/pop3/POP3Client;
.super Lorg/apache/commons/net/pop3/POP3;
.source "POP3Client.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/commons/net/pop3/POP3;-><init>()V

    return-void
.end method

.method private static __parseStatus(Ljava/lang/String;)Lorg/apache/commons/net/pop3/POP3MessageInfo;
    .locals 6

    const/4 v4, 0x0

    new-instance v3, Ljava/util/StringTokenizer;

    invoke-direct {v3, p0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    const/4 v2, 0x0

    move v1, v2

    :try_start_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    new-instance v4, Lorg/apache/commons/net/pop3/POP3MessageInfo;

    invoke-direct {v4, v1, v2}, Lorg/apache/commons/net/pop3/POP3MessageInfo;-><init>(II)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static __parseUID(Ljava/lang/String;)Lorg/apache/commons/net/pop3/POP3MessageInfo;
    .locals 5

    const/4 v3, 0x0

    new-instance v2, Ljava/util/StringTokenizer;

    invoke-direct {v2, p0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    new-instance v3, Lorg/apache/commons/net/pop3/POP3MessageInfo;

    invoke-direct {v3, v1, p0}, Lorg/apache/commons/net/pop3/POP3MessageInfo;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public capa()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/pop3/POP3Client;->sendCommand(I)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/net/pop3/POP3Client;->getAdditionalReply()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public deleteMessage(I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/apache/commons/net/pop3/POP3Client;->getState()I

    move-result v2

    if-ne v2, v0, :cond_1

    const/4 v2, 0x6

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/net/pop3/POP3Client;->sendCommand(ILjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public listMessage(I)Lorg/apache/commons/net/pop3/POP3MessageInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/apache/commons/net/pop3/POP3Client;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v1, 0x4

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/net/pop3/POP3Client;->sendCommand(ILjava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lorg/apache/commons/net/pop3/POP3Client;->_lastReplyLine:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/net/pop3/POP3Client;->__parseStatus(Ljava/lang/String;)Lorg/apache/commons/net/pop3/POP3MessageInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public listMessages()[Lorg/apache/commons/net/pop3/POP3MessageInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0}, Lorg/apache/commons/net/pop3/POP3Client;->getState()I

    move-result v3

    if-eq v3, v4, :cond_1

    :cond_0
    return-object v2

    :cond_1
    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lorg/apache/commons/net/pop3/POP3Client;->sendCommand(I)I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/net/pop3/POP3Client;->getAdditionalReply()V

    iget-object v3, p0, Lorg/apache/commons/net/pop3/POP3Client;->_replyLines:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    new-array v2, v3, [Lorg/apache/commons/net/pop3/POP3MessageInfo;

    iget-object v3, p0, Lorg/apache/commons/net/pop3/POP3Client;->_replyLines:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_0

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lorg/apache/commons/net/pop3/POP3Client;->__parseStatus(Ljava/lang/String;)Lorg/apache/commons/net/pop3/POP3MessageInfo;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public listUniqueIdentifier(I)Lorg/apache/commons/net/pop3/POP3MessageInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/apache/commons/net/pop3/POP3Client;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/16 v1, 0xb

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/net/pop3/POP3Client;->sendCommand(ILjava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lorg/apache/commons/net/pop3/POP3Client;->_lastReplyLine:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/net/pop3/POP3Client;->__parseUID(Ljava/lang/String;)Lorg/apache/commons/net/pop3/POP3MessageInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public listUniqueIdentifiers()[Lorg/apache/commons/net/pop3/POP3MessageInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0}, Lorg/apache/commons/net/pop3/POP3Client;->getState()I

    move-result v3

    if-eq v3, v4, :cond_1

    :cond_0
    return-object v2

    :cond_1
    const/16 v3, 0xb

    invoke-virtual {p0, v3}, Lorg/apache/commons/net/pop3/POP3Client;->sendCommand(I)I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/net/pop3/POP3Client;->getAdditionalReply()V

    iget-object v3, p0, Lorg/apache/commons/net/pop3/POP3Client;->_replyLines:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    new-array v2, v3, [Lorg/apache/commons/net/pop3/POP3MessageInfo;

    iget-object v3, p0, Lorg/apache/commons/net/pop3/POP3Client;->_replyLines:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_0

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lorg/apache/commons/net/pop3/POP3Client;->__parseUID(Ljava/lang/String;)Lorg/apache/commons/net/pop3/POP3MessageInfo;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public login(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/apache/commons/net/pop3/POP3Client;->getState()I

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/pop3/POP3Client;->sendCommand(ILjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v1, p2}, Lorg/apache/commons/net/pop3/POP3Client;->sendCommand(ILjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v1}, Lorg/apache/commons/net/pop3/POP3Client;->setState(I)V

    move v0, v1

    goto :goto_0
.end method

.method public login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Lorg/apache/commons/net/pop3/POP3Client;->getState()I

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    const-string v8, "MD5"

    invoke-static {v8}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v8, 0x80

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v4, 0x0

    :goto_1
    array-length v8, v1

    if-ge v4, v8, :cond_3

    aget-byte v8, v1, v4

    and-int/lit16 v3, v8, 0xff

    const/16 v8, 0xf

    if-gt v3, v8, :cond_2

    const-string v8, "0"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v8, 0x100

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v8, 0x20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v8, 0x9

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lorg/apache/commons/net/pop3/POP3Client;->sendCommand(ILjava/lang/String;)I

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {p0, v7}, Lorg/apache/commons/net/pop3/POP3Client;->setState(I)V

    move v6, v7

    goto :goto_0
.end method

.method public logout()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x2

    const/4 v0, 0x1

    invoke-virtual {p0}, Lorg/apache/commons/net/pop3/POP3Client;->getState()I

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-virtual {p0, v2}, Lorg/apache/commons/net/pop3/POP3Client;->setState(I)V

    :cond_0
    invoke-virtual {p0, v2}, Lorg/apache/commons/net/pop3/POP3Client;->sendCommand(I)I

    iget v1, p0, Lorg/apache/commons/net/pop3/POP3Client;->_replyCode:I

    if-nez v1, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public noop()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/apache/commons/net/pop3/POP3Client;->getState()I

    move-result v2

    if-ne v2, v0, :cond_1

    const/4 v2, 0x7

    invoke-virtual {p0, v2}, Lorg/apache/commons/net/pop3/POP3Client;->sendCommand(I)I

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public reset()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/apache/commons/net/pop3/POP3Client;->getState()I

    move-result v2

    if-ne v2, v0, :cond_1

    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lorg/apache/commons/net/pop3/POP3Client;->sendCommand(I)I

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public retrieveMessage(I)Ljava/io/Reader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/apache/commons/net/pop3/POP3Client;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v1, 0x5

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/net/pop3/POP3Client;->sendCommand(ILjava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;

    iget-object v1, p0, Lorg/apache/commons/net/pop3/POP3Client;->_reader:Ljava/io/BufferedReader;

    invoke-direct {v0, v1}, Lorg/apache/commons/net/io/DotTerminatedMessageReader;-><init>(Ljava/io/Reader;)V

    goto :goto_0
.end method

.method public retrieveMessageTop(II)Ljava/io/Reader;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-ltz p2, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/net/pop3/POP3Client;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/16 v1, 0xa

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/net/pop3/POP3Client;->sendCommand(ILjava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;

    iget-object v1, p0, Lorg/apache/commons/net/pop3/POP3Client;->_reader:Ljava/io/BufferedReader;

    invoke-direct {v0, v1}, Lorg/apache/commons/net/io/DotTerminatedMessageReader;-><init>(Ljava/io/Reader;)V

    goto :goto_0
.end method

.method public status()Lorg/apache/commons/net/pop3/POP3MessageInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v3, 0x3

    invoke-virtual {p0}, Lorg/apache/commons/net/pop3/POP3Client;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0, v3}, Lorg/apache/commons/net/pop3/POP3Client;->sendCommand(I)I

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lorg/apache/commons/net/pop3/POP3Client;->_lastReplyLine:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/net/pop3/POP3Client;->__parseStatus(Ljava/lang/String;)Lorg/apache/commons/net/pop3/POP3MessageInfo;

    move-result-object v0

    goto :goto_0
.end method
