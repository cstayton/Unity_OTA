.class public Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient;
.super Lorg/apache/commons/net/smtp/SMTPSClient;
.source "AuthenticatingSMTPClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/apache/commons/net/smtp/SMTPSClient;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/apache/commons/net/smtp/SMTPSClient;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private _convertToHexString([B)Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, p1

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xf

    if-gt v2, v3, :cond_0

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public auth(Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    const/4 v5, 0x0

    const/16 v6, 0xe

    invoke-static {p1}, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;->getAuthName(Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient;->sendCommand(ILjava/lang/String;)I

    move-result v6

    invoke-static {v6}, Lorg/apache/commons/net/smtp/SMTPReply;->isPositiveIntermediate(I)Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    sget-object v6, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;->PLAIN:Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;

    invoke-virtual {p1, v6}, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    new-instance v5, Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u0000"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\u0000"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-static {v6}, Lorg/apache/commons/net/util/Base64;->encodeBase64([B)[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p0, v5}, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient;->sendCommand(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Lorg/apache/commons/net/smtp/SMTPReply;->isPositiveCompletion(I)Z

    move-result v5

    goto :goto_0

    :cond_2
    sget-object v6, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;->CRAM_MD5:Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;

    invoke-virtual {p1, v6}, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {p0}, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient;->getReplyString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/commons/net/util/Base64;->decodeBase64(Ljava/lang/String;)[B

    move-result-object v2

    const-string v6, "HmacMD5"

    invoke-static {v6}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    const-string v8, "HmacMD5"

    invoke-direct {v6, v7, v8}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1, v6}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    invoke-virtual {v1, v2}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient;->_convertToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v6, v4

    add-int/lit8 v6, v6, 0x1

    array-length v7, v0

    add-int/2addr v6, v7

    new-array v3, v6, [B

    array-length v6, v4

    invoke-static {v4, v5, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v6, v4

    const/16 v7, 0x20

    aput-byte v7, v3, v6

    array-length v6, v4

    add-int/lit8 v6, v6, 0x1

    array-length v7, v0

    invoke-static {v0, v5, v3, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v5, Ljava/lang/String;

    invoke-static {v3}, Lorg/apache/commons/net/util/Base64;->encodeBase64([B)[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p0, v5}, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient;->sendCommand(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Lorg/apache/commons/net/smtp/SMTPReply;->isPositiveCompletion(I)Z

    move-result v5

    goto/16 :goto_0

    :cond_3
    sget-object v6, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;->LOGIN:Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;

    invoke-virtual {p1, v6}, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v6, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-static {v7}, Lorg/apache/commons/net/util/Base64;->encodeBase64([B)[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p0, v6}, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient;->sendCommand(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Lorg/apache/commons/net/smtp/SMTPReply;->isPositiveIntermediate(I)Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v5, Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-static {v6}, Lorg/apache/commons/net/util/Base64;->encodeBase64([B)[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p0, v5}, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient;->sendCommand(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Lorg/apache/commons/net/smtp/SMTPReply;->isPositiveCompletion(I)Z

    move-result v5

    goto/16 :goto_0
.end method

.method public ehlo(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xf

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient;->sendCommand(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public elogin()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    invoke-virtual {p0, v1}, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient;->ehlo(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lorg/apache/commons/net/smtp/SMTPReply;->isPositiveCompletion(I)Z

    move-result v2

    goto :goto_0
.end method

.method public elogin(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient;->ehlo(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/smtp/SMTPReply;->isPositiveCompletion(I)Z

    move-result v0

    return v0
.end method

.method public getEnhancedReplyCode()[I
    .locals 6

    invoke-virtual {p0}, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient;->getReplyString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/16 v5, 0x20

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\\."

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v4, v1

    new-array v3, v4, [I

    const/4 v0, 0x0

    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_0

    aget-object v4, v1, v0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v3
.end method
