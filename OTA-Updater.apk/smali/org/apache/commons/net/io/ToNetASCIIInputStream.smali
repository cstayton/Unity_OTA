.class public final Lorg/apache/commons/net/io/ToNetASCIIInputStream;
.super Ljava/io/FilterInputStream;
.source "ToNetASCIIInputStream.java"


# static fields
.field private static final __LAST_WAS_CR:I = 0x1

.field private static final __LAST_WAS_NL:I = 0x2

.field private static final __NOTHING_SPECIAL:I


# instance fields
.field private __status:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/net/io/ToNetASCIIInputStream;->__status:I

    return-void
.end method


# virtual methods
.method public available()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lorg/apache/commons/net/io/ToNetASCIIInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v0

    iget v1, p0, Lorg/apache/commons/net/io/ToNetASCIIInputStream;->__status:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    return v0
.end method

.method public markSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v1, 0xd

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget v2, p0, Lorg/apache/commons/net/io/ToNetASCIIInputStream;->__status:I

    if-ne v2, v5, :cond_0

    iput v3, p0, Lorg/apache/commons/net/io/ToNetASCIIInputStream;->__status:I

    const/16 v0, 0xa

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lorg/apache/commons/net/io/ToNetASCIIInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_1
    :pswitch_0
    iput v3, p0, Lorg/apache/commons/net/io/ToNetASCIIInputStream;->__status:I

    goto :goto_0

    :pswitch_1
    iput v4, p0, Lorg/apache/commons/net/io/ToNetASCIIInputStream;->__status:I

    move v0, v1

    goto :goto_0

    :pswitch_2
    iget v2, p0, Lorg/apache/commons/net/io/ToNetASCIIInputStream;->__status:I

    if-eq v2, v4, :cond_1

    iput v5, p0, Lorg/apache/commons/net/io/ToNetASCIIInputStream;->__status:I

    move v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
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

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/net/io/ToNetASCIIInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v3, -0x1

    if-ge p3, v4, :cond_1

    const/4 v3, 0x0

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/net/io/ToNetASCIIInputStream;->available()I

    move-result v0

    if-le p3, v0, :cond_2

    move p3, v0

    :cond_2
    if-ge p3, v4, :cond_3

    const/4 p3, 0x1

    :cond_3
    invoke-virtual {p0}, Lorg/apache/commons/net/io/ToNetASCIIInputStream;->read()I

    move-result v0

    if-eq v0, v3, :cond_0

    move v1, p2

    :goto_1
    add-int/lit8 v2, p2, 0x1

    int-to-byte v4, v0

    aput-byte v4, p1, p2

    add-int/lit8 p3, p3, -0x1

    if-lez p3, :cond_4

    invoke-virtual {p0}, Lorg/apache/commons/net/io/ToNetASCIIInputStream;->read()I

    move-result v0

    if-ne v0, v3, :cond_5

    :cond_4
    sub-int v3, v2, v1

    move p2, v2

    goto :goto_0

    :cond_5
    move p2, v2

    goto :goto_1
.end method
