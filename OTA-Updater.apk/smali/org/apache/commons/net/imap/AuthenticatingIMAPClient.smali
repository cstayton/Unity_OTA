.class public Lorg/apache/commons/net/imap/AuthenticatingIMAPClient;
.super Lorg/apache/commons/net/imap/IMAPSClient;
.source "AuthenticatingIMAPClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/net/imap/AuthenticatingIMAPClient$1;,
        Lorg/apache/commons/net/imap/AuthenticatingIMAPClient$AUTH_METHOD;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "TLS"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/net/imap/AuthenticatingIMAPClient;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/net/imap/AuthenticatingIMAPClient;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/net/imap/AuthenticatingIMAPClient;-><init>(Ljava/lang/String;ZLjavax/net/ssl/SSLContext;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLjavax/net/ssl/SSLContext;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/net/imap/IMAPSClient;-><init>(Ljava/lang/String;ZLjavax/net/ssl/SSLContext;)V

    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLContext;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/net/imap/AuthenticatingIMAPClient;-><init>(ZLjavax/net/ssl/SSLContext;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    const-string v0, "TLS"

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/net/imap/AuthenticatingIMAPClient;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(ZLjavax/net/ssl/SSLContext;)V
    .locals 1

    const-string v0, "TLS"

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/net/imap/AuthenticatingIMAPClient;-><init>(Ljava/lang/String;ZLjavax/net/ssl/SSLContext;)V

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
.method public auth(Lorg/apache/commons/net/imap/AuthenticatingIMAPClient$AUTH_METHOD;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v7, 0x0

    sget-object v8, Lorg/apache/commons/net/imap/IMAPCommand;->AUTHENTICATE:Lorg/apache/commons/net/imap/IMAPCommand;

    invoke-virtual {p1}, Lorg/apache/commons/net/imap/AuthenticatingIMAPClient$AUTH_METHOD;->getAuthName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lorg/apache/commons/net/imap/AuthenticatingIMAPClient;->sendCommand(Lorg/apache/commons/net/imap/IMAPCommand;Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Lorg/apache/commons/net/imap/IMAPReply;->isContinuation(I)Z

    move-result v8

    if-nez v8, :cond_1

    :cond_0
    :goto_0
    return v7

    :cond_1
    sget-object v8, Lorg/apache/commons/net/imap/AuthenticatingIMAPClient$1;->$SwitchMap$org$apache$commons$net$imap$AuthenticatingIMAPClient$AUTH_METHOD:[I

    invoke-virtual {p1}, Lorg/apache/commons/net/imap/AuthenticatingIMAPClient$AUTH_METHOD;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance v8, Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\u0000"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\u0000"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-static {v9}, Lorg/apache/commons/net/util/Base64;->encodeBase64([B)[B

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p0, v8}, Lorg/apache/commons/net/imap/AuthenticatingIMAPClient;->sendData(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    sget-object v8, Lorg/apache/commons/net/imap/IMAP$IMAPState;->AUTH_STATE:Lorg/apache/commons/net/imap/IMAP$IMAPState;

    invoke-virtual {p0, v8}, Lorg/apache/commons/net/imap/AuthenticatingIMAPClient;->setState(Lorg/apache/commons/net/imap/IMAP$IMAPState;)V

    :cond_2
    if-nez v2, :cond_3

    :goto_1
    move v7, v6

    goto :goto_0

    :cond_3
    move v6, v7

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0}, Lorg/apache/commons/net/imap/AuthenticatingIMAPClient;->getReplyString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/apache/commons/net/util/Base64;->decodeBase64(Ljava/lang/String;)[B

    move-result-object v3

    const-string v8, "HmacMD5"

    invoke-static {v8}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    new-instance v8, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    const-string v10, "HmacMD5"

    invoke-direct {v8, v9, v10}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1, v8}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    invoke-virtual {v1, v3}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v8

    invoke-direct {p0, v8}, Lorg/apache/commons/net/imap/AuthenticatingIMAPClient;->_convertToHexString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    array-length v8, v5

    add-int/lit8 v8, v8, 0x1

    array-length v9, v0

    add-int/2addr v8, v9

    new-array v4, v8, [B

    array-length v8, v5

    invoke-static {v5, v7, v4, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v8, v5

    const/16 v9, 0x20

    aput-byte v9, v4, v8

    array-length v8, v5

    add-int/lit8 v8, v8, 0x1

    array-length v9, v0

    invoke-static {v0, v7, v4, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v8, Ljava/lang/String;

    invoke-static {v4}, Lorg/apache/commons/net/util/Base64;->encodeBase64([B)[B

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p0, v8}, Lorg/apache/commons/net/imap/AuthenticatingIMAPClient;->sendData(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_4

    sget-object v8, Lorg/apache/commons/net/imap/IMAP$IMAPState;->AUTH_STATE:Lorg/apache/commons/net/imap/IMAP$IMAPState;

    invoke-virtual {p0, v8}, Lorg/apache/commons/net/imap/AuthenticatingIMAPClient;->setState(Lorg/apache/commons/net/imap/IMAP$IMAPState;)V

    :cond_4
    if-nez v2, :cond_5

    :goto_2
    move v7, v6

    goto/16 :goto_0

    :cond_5
    move v6, v7

    goto :goto_2

    :pswitch_2
    new-instance v8, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-static {v9}, Lorg/apache/commons/net/util/Base64;->encodeBase64([B)[B

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p0, v8}, Lorg/apache/commons/net/imap/AuthenticatingIMAPClient;->sendData(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_0

    new-instance v8, Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-static {v9}, Lorg/apache/commons/net/util/Base64;->encodeBase64([B)[B

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p0, v8}, Lorg/apache/commons/net/imap/AuthenticatingIMAPClient;->sendData(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_6

    sget-object v8, Lorg/apache/commons/net/imap/IMAP$IMAPState;->AUTH_STATE:Lorg/apache/commons/net/imap/IMAP$IMAPState;

    invoke-virtual {p0, v8}, Lorg/apache/commons/net/imap/AuthenticatingIMAPClient;->setState(Lorg/apache/commons/net/imap/IMAP$IMAPState;)V

    :cond_6
    if-nez v2, :cond_7

    :goto_3
    move v7, v6

    goto/16 :goto_0

    :cond_7
    move v6, v7

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public authenticate(Lorg/apache/commons/net/imap/AuthenticatingIMAPClient$AUTH_METHOD;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/net/imap/AuthenticatingIMAPClient;->auth(Lorg/apache/commons/net/imap/AuthenticatingIMAPClient$AUTH_METHOD;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
