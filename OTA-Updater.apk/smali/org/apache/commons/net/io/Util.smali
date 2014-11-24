.class public final Lorg/apache/commons/net/io/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field public static final DEFAULT_COPY_BUFFER_SIZE:I = 0x400


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static closeQuietly(Ljava/net/Socket;)V
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static final copyReader(Ljava/io/Reader;Ljava/io/Writer;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/net/io/CopyStreamException;
        }
    .end annotation

    const/16 v0, 0x400

    invoke-static {p0, p1, v0}, Lorg/apache/commons/net/io/Util;->copyReader(Ljava/io/Reader;Ljava/io/Writer;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final copyReader(Ljava/io/Reader;Ljava/io/Writer;I)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/net/io/CopyStreamException;
        }
    .end annotation

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/net/io/Util;->copyReader(Ljava/io/Reader;Ljava/io/Writer;IJLorg/apache/commons/net/io/CopyStreamListener;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final copyReader(Ljava/io/Reader;Ljava/io/Writer;IJLorg/apache/commons/net/io/CopyStreamListener;)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/net/io/CopyStreamException;
        }
    .end annotation

    new-array v6, p2, [C

    const-wide/16 v1, 0x0

    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p0, v6}, Ljava/io/Reader;->read([C)I

    move-result v3

    const/4 v0, -0x1

    if-eq v3, v0, :cond_1

    if-nez v3, :cond_3

    invoke-virtual {p0}, Ljava/io/Reader;->read()I

    move-result v3

    if-gez v3, :cond_2

    :cond_1
    return-wide v1

    :cond_2
    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(I)V

    invoke-virtual {p1}, Ljava/io/Writer;->flush()V

    const-wide/16 v4, 0x1

    add-long/2addr v1, v4

    if-eqz p5, :cond_0

    move-object v0, p5

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lorg/apache/commons/net/io/CopyStreamListener;->bytesTransferred(JIJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v7

    new-instance v0, Lorg/apache/commons/net/io/CopyStreamException;

    const-string v4, "IOException caught while copying."

    invoke-direct {v0, v4, v1, v2, v7}, Lorg/apache/commons/net/io/CopyStreamException;-><init>(Ljava/lang/String;JLjava/io/IOException;)V

    throw v0

    :cond_3
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p1, v6, v0, v3}, Ljava/io/Writer;->write([CII)V

    invoke-virtual {p1}, Ljava/io/Writer;->flush()V

    int-to-long v4, v3

    add-long/2addr v1, v4

    if-eqz p5, :cond_0

    move-object v0, p5

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lorg/apache/commons/net/io/CopyStreamListener;->bytesTransferred(JIJ)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static final copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/net/io/CopyStreamException;
        }
    .end annotation

    const/16 v0, 0x400

    invoke-static {p0, p1, v0}, Lorg/apache/commons/net/io/Util;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;I)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/net/io/CopyStreamException;
        }
    .end annotation

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/net/io/Util;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;IJLorg/apache/commons/net/io/CopyStreamListener;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;IJLorg/apache/commons/net/io/CopyStreamListener;)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/net/io/CopyStreamException;
        }
    .end annotation

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/net/io/Util;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;IJLorg/apache/commons/net/io/CopyStreamListener;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;IJLorg/apache/commons/net/io/CopyStreamListener;Z)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/net/io/CopyStreamException;
        }
    .end annotation

    new-array v6, p2, [B

    const-wide/16 v1, 0x0

    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p0, v6}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v0, -0x1

    if-eq v3, v0, :cond_1

    if-nez v3, :cond_4

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3

    if-gez v3, :cond_2

    :cond_1
    return-wide v1

    :cond_2
    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    if-eqz p6, :cond_3

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    :cond_3
    const-wide/16 v4, 0x1

    add-long/2addr v1, v4

    if-eqz p5, :cond_0

    const/4 v3, 0x1

    move-object v0, p5

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lorg/apache/commons/net/io/CopyStreamListener;->bytesTransferred(JIJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v7

    new-instance v0, Lorg/apache/commons/net/io/CopyStreamException;

    const-string v4, "IOException caught while copying."

    invoke-direct {v0, v4, v1, v2, v7}, Lorg/apache/commons/net/io/CopyStreamException;-><init>(Ljava/lang/String;JLjava/io/IOException;)V

    throw v0

    :cond_4
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p1, v6, v0, v3}, Ljava/io/OutputStream;->write([BII)V

    if-eqz p6, :cond_5

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    :cond_5
    int-to-long v4, v3

    add-long/2addr v1, v4

    if-eqz p5, :cond_0

    move-object v0, p5

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lorg/apache/commons/net/io/CopyStreamListener;->bytesTransferred(JIJ)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
