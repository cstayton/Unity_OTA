.class public Lorg/apache/commons/net/pop3/ExtendedPOP3Client;
.super Lorg/apache/commons/net/pop3/POP3SClient;
.source "ExtendedPOP3Client.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/net/pop3/ExtendedPOP3Client$1;,
        Lorg/apache/commons/net/pop3/ExtendedPOP3Client$AUTH_METHOD;
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

    invoke-direct {p0}, Lorg/apache/commons/net/pop3/POP3SClient;-><init>()V

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
.method public auth(Lorg/apache/commons/net/pop3/ExtendedPOP3Client$AUTH_METHOD;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    const/4 v9, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/16 v7, 0xd

    invoke-virtual {p1}, Lorg/apache/commons/net/pop3/ExtendedPOP3Client$AUTH_METHOD;->getAuthName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lorg/apache/commons/net/pop3/ExtendedPOP3Client;->sendCommand(ILjava/lang/String;)I

    move-result v7

    if-eq v7, v9, :cond_0

    :goto_0
    return v6

    :cond_0
    sget-object v7, Lorg/apache/commons/net/pop3/ExtendedPOP3Client$1;->$SwitchMap$org$apache$commons$net$pop3$ExtendedPOP3Client$AUTH_METHOD:[I

    invoke-virtual {p1}, Lorg/apache/commons/net/pop3/ExtendedPOP3Client$AUTH_METHOD;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance v7, Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u0000"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\u0000"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-static {v8}, Lorg/apache/commons/net/util/Base64;->encodeBase64([B)[B

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p0, v7}, Lorg/apache/commons/net/pop3/ExtendedPOP3Client;->sendCommand(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_1

    :goto_1
    move v6, v5

    goto :goto_0

    :cond_1
    move v5, v6

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0}, Lorg/apache/commons/net/pop3/ExtendedPOP3Client;->getReplyString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/commons/net/util/Base64;->decodeBase64(Ljava/lang/String;)[B

    move-result-object v2

    const-string v7, "HmacMD5"

    invoke-static {v7}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    new-instance v7, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    const-string v9, "HmacMD5"

    invoke-direct {v7, v8, v9}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1, v7}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    invoke-virtual {v1, v2}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v7

    invoke-direct {p0, v7}, Lorg/apache/commons/net/pop3/ExtendedPOP3Client;->_convertToHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v7, v4

    add-int/lit8 v7, v7, 0x1

    array-length v8, v0

    add-int/2addr v7, v8

    new-array v3, v7, [B

    array-length v7, v4

    invoke-static {v4, v6, v3, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v7, v4

    const/16 v8, 0x20

    aput-byte v8, v3, v7

    array-length v7, v4

    add-int/lit8 v7, v7, 0x1

    array-length v8, v0

    invoke-static {v0, v6, v3, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v7, Ljava/lang/String;

    invoke-static {v3}, Lorg/apache/commons/net/util/Base64;->encodeBase64([B)[B

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p0, v7}, Lorg/apache/commons/net/pop3/ExtendedPOP3Client;->sendCommand(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_2

    :goto_2
    move v6, v5

    goto/16 :goto_0

    :cond_2
    move v5, v6

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
