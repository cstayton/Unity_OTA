.class public final Lorg/apache/commons/net/io/FromNetASCIIInputStream;
.super Ljava/io/PushbackInputStream;
.source "FromNetASCIIInputStream.java"


# static fields
.field static final _lineSeparator:Ljava/lang/String;

.field static final _lineSeparatorBytes:[B

.field static final _noConversionRequired:Z


# instance fields
.field private __length:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->_lineSeparator:Ljava/lang/String;

    sget-object v0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->_lineSeparator:Ljava/lang/String;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->_noConversionRequired:Z

    sget-object v0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->_lineSeparator:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->_lineSeparatorBytes:[B

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    sget-object v0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->_lineSeparatorBytes:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, p1, v0}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->__length:I

    return-void
.end method

.method private __read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v1, 0xd

    invoke-super {p0}, Ljava/io/PushbackInputStream;->read()I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-super {p0}, Ljava/io/PushbackInputStream;->read()I

    move-result v0

    const/16 v2, 0xa

    if-ne v0, v2, :cond_2

    sget-object v1, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->_lineSeparatorBytes:[B

    invoke-virtual {p0, v1}, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->unread([B)V

    invoke-super {p0}, Ljava/io/PushbackInputStream;->read()I

    move-result v0

    iget v1, p0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->__length:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->__length:I

    :cond_0
    move v1, v0

    :cond_1
    :goto_0
    return v1

    :cond_2
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->unread(I)V

    goto :goto_0
.end method

.method public static final isConversionRequired()Z
    .locals 1

    sget-boolean v0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->_noConversionRequired:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->in:Ljava/io/InputStream;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->buf:[B

    array-length v0, v0

    iget v1, p0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->pos:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-boolean v0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->_noConversionRequired:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Ljava/io/PushbackInputStream;->read()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->__read()I

    move-result v0

    goto :goto_0
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v3, -0x1

    sget-boolean v4, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->_noConversionRequired:Z

    if-eqz v4, :cond_1

    invoke-super {p0, p1, p2, p3}, Ljava/io/PushbackInputStream;->read([BII)I

    move-result v3

    :cond_0
    :goto_0
    return v3

    :cond_1
    if-ge p3, v5, :cond_2

    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->available()I

    move-result v0

    if-le p3, v0, :cond_5

    :goto_1
    iput v0, p0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->__length:I

    iget v4, p0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->__length:I

    if-ge v4, v5, :cond_3

    iput v5, p0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->__length:I

    :cond_3
    invoke-direct {p0}, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->__read()I

    move-result v0

    if-eq v0, v3, :cond_0

    move v1, p2

    :goto_2
    add-int/lit8 v2, p2, 0x1

    int-to-byte v4, v0

    aput-byte v4, p1, p2

    iget v4, p0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->__length:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->__length:I

    if-lez v4, :cond_4

    invoke-direct {p0}, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->__read()I

    move-result v0

    if-ne v0, v3, :cond_6

    :cond_4
    sub-int v3, v2, v1

    move p2, v2

    goto :goto_0

    :cond_5
    move v0, p3

    goto :goto_1

    :cond_6
    move p2, v2

    goto :goto_2
.end method
