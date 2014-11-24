.class public Lorg/apache/commons/net/util/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field static final CHUNK_SEPARATOR:[B = null

.field static final CHUNK_SIZE:I = 0x4c

.field private static final DECODE_TABLE:[B = null

.field private static final DEFAULT_BUFFER_RESIZE_FACTOR:I = 0x2

.field private static final DEFAULT_BUFFER_SIZE:I = 0x2000

.field private static final MASK_6BITS:I = 0x3f

.field private static final MASK_8BITS:I = 0xff

.field private static final PAD:B = 0x3dt

.field private static final STANDARD_ENCODE_TABLE:[B

.field private static final URL_SAFE_ENCODE_TABLE:[B


# instance fields
.field private buffer:[B

.field private currentLinePos:I

.field private final decodeSize:I

.field private final encodeSize:I

.field private final encodeTable:[B

.field private eof:Z

.field private final lineLength:I

.field private final lineSeparator:[B

.field private modulus:I

.field private pos:I

.field private readPos:I

.field private x:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v1, 0x40

    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/net/util/Base64;->CHUNK_SEPARATOR:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lorg/apache/commons/net/util/Base64;->STANDARD_ENCODE_TABLE:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_2

    sput-object v0, Lorg/apache/commons/net/util/Base64;->URL_SAFE_ENCODE_TABLE:[B

    const/16 v0, 0x7b

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    sput-object v0, Lorg/apache/commons/net/util/Base64;->DECODE_TABLE:[B

    return-void

    :array_0
    .array-data 0x1
        0xdt
        0xat
    .end array-data

    nop

    :array_1
    .array-data 0x1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data

    :array_2
    .array-data 0x1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2dt
        0x5ft
    .end array-data

    :array_3
    .array-data 0x1
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0x3et
        0xfft
        0x3et
        0xfft
        0x3ft
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        0xfft
        0xfft
        0xfft
        0xfft
        0x3ft
        0xfft
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/net/util/Base64;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    sget-object v0, Lorg/apache/commons/net/util/Base64;->CHUNK_SEPARATOR:[B

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/net/util/Base64;-><init>(I[B)V

    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/net/util/Base64;-><init>(I[BZ)V

    return-void
.end method

.method public constructor <init>(I[BZ)V
    .locals 4

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    const/4 p1, 0x0

    sget-object p2, Lorg/apache/commons/net/util/Base64;->CHUNK_SEPARATOR:[B

    :cond_0
    if-lez p1, :cond_1

    div-int/lit8 v1, p1, 0x4

    mul-int/lit8 v1, v1, 0x4

    :goto_0
    iput v1, p0, Lorg/apache/commons/net/util/Base64;->lineLength:I

    array-length v1, p2

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/apache/commons/net/util/Base64;->lineSeparator:[B

    iget-object v1, p0, Lorg/apache/commons/net/util/Base64;->lineSeparator:[B

    array-length v3, p2

    invoke-static {p2, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-lez p1, :cond_2

    array-length v1, p2

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lorg/apache/commons/net/util/Base64;->encodeSize:I

    :goto_1
    iget v1, p0, Lorg/apache/commons/net/util/Base64;->encodeSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/commons/net/util/Base64;->decodeSize:I

    invoke-static {p2}, Lorg/apache/commons/net/util/Base64;->containsBase64Byte([B)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p2}, Lorg/apache/commons/net/util/Base64;->newStringUtf8([B)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lineSeperator must not contain base64 characters: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    iput v1, p0, Lorg/apache/commons/net/util/Base64;->encodeSize:I

    goto :goto_1

    :cond_3
    if-eqz p3, :cond_4

    sget-object v1, Lorg/apache/commons/net/util/Base64;->URL_SAFE_ENCODE_TABLE:[B

    :goto_2
    iput-object v1, p0, Lorg/apache/commons/net/util/Base64;->encodeTable:[B

    return-void

    :cond_4
    sget-object v1, Lorg/apache/commons/net/util/Base64;->STANDARD_ENCODE_TABLE:[B

    goto :goto_2
.end method

.method public constructor <init>(Z)V
    .locals 2

    const/16 v0, 0x4c

    sget-object v1, Lorg/apache/commons/net/util/Base64;->CHUNK_SEPARATOR:[B

    invoke-direct {p0, v0, v1, p1}, Lorg/apache/commons/net/util/Base64;-><init>(I[BZ)V

    return-void
.end method

.method private static containsBase64Byte([B)Z
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    aget-byte v1, p0, v0

    invoke-static {v1}, Lorg/apache/commons/net/util/Base64;->isBase64(B)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static decodeBase64(Ljava/lang/String;)[B
    .locals 1

    new-instance v0, Lorg/apache/commons/net/util/Base64;

    invoke-direct {v0}, Lorg/apache/commons/net/util/Base64;-><init>()V

    invoke-virtual {v0, p0}, Lorg/apache/commons/net/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static decodeBase64([B)[B
    .locals 1

    new-instance v0, Lorg/apache/commons/net/util/Base64;

    invoke-direct {v0}, Lorg/apache/commons/net/util/Base64;-><init>()V

    invoke-virtual {v0, p0}, Lorg/apache/commons/net/util/Base64;->decode([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static decodeInteger([B)Ljava/math/BigInteger;
    .locals 3

    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-static {p0}, Lorg/apache/commons/net/util/Base64;->decodeBase64([B)[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method public static encodeBase64([B)[B
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/net/util/Base64;->encodeBase64([BZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static encodeBase64([BZ)[B
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/net/util/Base64;->encodeBase64([BZZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static encodeBase64([BZZ)[B
    .locals 1

    const v0, 0x7fffffff

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/net/util/Base64;->encodeBase64([BZZI)[B

    move-result-object v0

    return-object v0
.end method

.method public static encodeBase64([BZZI)[B
    .locals 6

    if-eqz p0, :cond_0

    array-length v3, p0

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    const/16 v3, 0x4c

    sget-object v4, Lorg/apache/commons/net/util/Base64;->CHUNK_SEPARATOR:[B

    invoke-static {p0, v3, v4}, Lorg/apache/commons/net/util/Base64;->getEncodeLength([BI[B)J

    move-result-wide v1

    int-to-long v3, p3

    cmp-long v3, v1, v3

    if-lez v3, :cond_2

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Input array too big, the output array would be bigger ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") than the specified maxium size of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    if-eqz p1, :cond_3

    new-instance v0, Lorg/apache/commons/net/util/Base64;

    invoke-direct {v0, p2}, Lorg/apache/commons/net/util/Base64;-><init>(Z)V

    :goto_1
    invoke-virtual {v0, p0}, Lorg/apache/commons/net/util/Base64;->encode([B)[B

    move-result-object p0

    goto :goto_0

    :cond_3
    new-instance v0, Lorg/apache/commons/net/util/Base64;

    const/4 v3, 0x0

    sget-object v4, Lorg/apache/commons/net/util/Base64;->CHUNK_SEPARATOR:[B

    invoke-direct {v0, v3, v4, p2}, Lorg/apache/commons/net/util/Base64;-><init>(I[BZ)V

    goto :goto_1
.end method

.method public static encodeBase64Chunked([B)[B
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/apache/commons/net/util/Base64;->encodeBase64([BZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static encodeBase64String([B)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/apache/commons/net/util/Base64;->encodeBase64([BZ)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/net/util/Base64;->newStringUtf8([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeBase64URLSafe([B)[B
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lorg/apache/commons/net/util/Base64;->encodeBase64([BZZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static encodeBase64URLSafeString([B)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lorg/apache/commons/net/util/Base64;->encodeBase64([BZZ)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/net/util/Base64;->newStringUtf8([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeInteger(Ljava/math/BigInteger;)[B
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "encodeInteger called with null parameter"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p0}, Lorg/apache/commons/net/util/Base64;->toIntegerBytes(Ljava/math/BigInteger;)[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/commons/net/util/Base64;->encodeBase64([BZ)[B

    move-result-object v0

    return-object v0
.end method

.method private getBytesUtf8(Ljava/lang/String;)[B
    .locals 2

    :try_start_0
    const-string v1, "UTF8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static getEncodeLength([BI[B)J
    .locals 11

    const-wide/16 v9, 0x4

    const-wide/16 v7, 0x0

    div-int/lit8 v5, p1, 0x4

    mul-int/lit8 p1, v5, 0x4

    array-length v5, p0

    mul-int/lit8 v5, v5, 0x4

    div-int/lit8 v5, v5, 0x3

    int-to-long v0, v5

    rem-long v3, v0, v9

    cmp-long v5, v3, v7

    if-eqz v5, :cond_0

    sub-long v5, v9, v3

    add-long/2addr v0, v5

    :cond_0
    if-lez p1, :cond_1

    int-to-long v5, p1

    rem-long v5, v0, v5

    cmp-long v5, v5, v7

    if-nez v5, :cond_2

    const/4 v2, 0x1

    :goto_0
    int-to-long v5, p1

    div-long v5, v0, v5

    array-length v7, p2

    int-to-long v7, v7

    mul-long/2addr v5, v7

    add-long/2addr v0, v5

    if-nez v2, :cond_1

    array-length v5, p2

    int-to-long v5, v5

    add-long/2addr v0, v5

    :cond_1
    return-wide v0

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isArrayByteBase64([B)Z
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    aget-byte v1, p0, v0

    invoke-static {v1}, Lorg/apache/commons/net/util/Base64;->isBase64(B)Z

    move-result v1

    if-nez v1, :cond_0

    aget-byte v1, p0, v0

    invoke-static {v1}, Lorg/apache/commons/net/util/Base64;->isWhiteSpace(B)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public static isBase64(B)Z
    .locals 2

    const/16 v0, 0x3d

    if-eq p0, v0, :cond_0

    if-ltz p0, :cond_1

    sget-object v0, Lorg/apache/commons/net/util/Base64;->DECODE_TABLE:[B

    array-length v0, v0

    if-ge p0, v0, :cond_1

    sget-object v0, Lorg/apache/commons/net/util/Base64;->DECODE_TABLE:[B

    aget-byte v0, v0, p0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isWhiteSpace(B)Z
    .locals 1

    sparse-switch p0, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method private static newStringUtf8([B)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v2, "UTF8"

    invoke-direct {v0, p0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private reset()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    iput v1, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    iput v1, p0, Lorg/apache/commons/net/util/Base64;->readPos:I

    iput v1, p0, Lorg/apache/commons/net/util/Base64;->currentLinePos:I

    iput v1, p0, Lorg/apache/commons/net/util/Base64;->modulus:I

    iput-boolean v1, p0, Lorg/apache/commons/net/util/Base64;->eof:Z

    return-void
.end method

.method private resizeBuffer()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    if-nez v1, :cond_0

    const/16 v1, 0x2000

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    iput v3, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    iput v3, p0, Lorg/apache/commons/net/util/Base64;->readPos:I

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [B

    iget-object v1, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    iget-object v2, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    goto :goto_0
.end method

.method static toIntegerBytes(Ljava/math/BigInteger;)[B
    .locals 8

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    add-int/lit8 v6, v1, 0x7

    shr-int/lit8 v6, v6, 0x3

    shl-int/lit8 v1, v6, 0x3

    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v6

    rem-int/lit8 v6, v6, 0x8

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v6

    div-int/lit8 v6, v6, 0x8

    add-int/lit8 v6, v6, 0x1

    div-int/lit8 v7, v1, 0x8

    if-ne v6, v7, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v5, 0x0

    array-length v2, v0

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v6

    rem-int/lit8 v6, v6, 0x8

    if-nez v6, :cond_1

    const/4 v5, 0x1

    add-int/lit8 v2, v2, -0x1

    :cond_1
    div-int/lit8 v6, v1, 0x8

    sub-int v4, v6, v2

    div-int/lit8 v6, v1, 0x8

    new-array v3, v6, [B

    invoke-static {v0, v5, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v3

    goto :goto_0
.end method


# virtual methods
.method avail()I
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    iget v1, p0, Lorg/apache/commons/net/util/Base64;->readPos:I

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public decode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    instance-of v0, p1, [B

    if-eqz v0, :cond_0

    check-cast p1, [B

    check-cast p1, [B

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/util/Base64;->decode([B)[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Parameter supplied to Base64 decode is not a byte[] or a String"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method decode([BII)V
    .locals 8

    const/4 v7, 0x1

    iget-boolean v4, p0, Lorg/apache/commons/net/util/Base64;->eof:Z

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-gez p3, :cond_2

    iput-boolean v7, p0, Lorg/apache/commons/net/util/Base64;->eof:Z

    :cond_2
    const/4 v1, 0x0

    move v2, p2

    :goto_1
    if-ge v1, p3, :cond_7

    iget-object v4, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    if-eqz v4, :cond_3

    iget-object v4, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    array-length v4, v4

    iget v5, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    sub-int/2addr v4, v5

    iget v5, p0, Lorg/apache/commons/net/util/Base64;->decodeSize:I

    if-ge v4, v5, :cond_4

    :cond_3
    invoke-direct {p0}, Lorg/apache/commons/net/util/Base64;->resizeBuffer()V

    :cond_4
    add-int/lit8 p2, v2, 0x1

    aget-byte v0, p1, v2

    const/16 v4, 0x3d

    if-ne v0, v4, :cond_5

    iput-boolean v7, p0, Lorg/apache/commons/net/util/Base64;->eof:Z

    :goto_2
    iget-boolean v4, p0, Lorg/apache/commons/net/util/Base64;->eof:Z

    if-eqz v4, :cond_0

    iget v4, p0, Lorg/apache/commons/net/util/Base64;->modulus:I

    if-eqz v4, :cond_0

    iget v4, p0, Lorg/apache/commons/net/util/Base64;->x:I

    shl-int/lit8 v4, v4, 0x6

    iput v4, p0, Lorg/apache/commons/net/util/Base64;->x:I

    iget v4, p0, Lorg/apache/commons/net/util/Base64;->modulus:I

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget v4, p0, Lorg/apache/commons/net/util/Base64;->x:I

    shl-int/lit8 v4, v4, 0x6

    iput v4, p0, Lorg/apache/commons/net/util/Base64;->x:I

    iget-object v4, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    iget v5, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    iget v6, p0, Lorg/apache/commons/net/util/Base64;->x:I

    shr-int/lit8 v6, v6, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    goto :goto_0

    :cond_5
    if-ltz v0, :cond_6

    sget-object v4, Lorg/apache/commons/net/util/Base64;->DECODE_TABLE:[B

    array-length v4, v4

    if-ge v0, v4, :cond_6

    sget-object v4, Lorg/apache/commons/net/util/Base64;->DECODE_TABLE:[B

    aget-byte v3, v4, v0

    if-ltz v3, :cond_6

    iget v4, p0, Lorg/apache/commons/net/util/Base64;->modulus:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/apache/commons/net/util/Base64;->modulus:I

    rem-int/lit8 v4, v4, 0x4

    iput v4, p0, Lorg/apache/commons/net/util/Base64;->modulus:I

    iget v4, p0, Lorg/apache/commons/net/util/Base64;->x:I

    shl-int/lit8 v4, v4, 0x6

    add-int/2addr v4, v3

    iput v4, p0, Lorg/apache/commons/net/util/Base64;->x:I

    iget v4, p0, Lorg/apache/commons/net/util/Base64;->modulus:I

    if-nez v4, :cond_6

    iget-object v4, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    iget v5, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    iget v6, p0, Lorg/apache/commons/net/util/Base64;->x:I

    shr-int/lit8 v6, v6, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    iget-object v4, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    iget v5, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    iget v6, p0, Lorg/apache/commons/net/util/Base64;->x:I

    shr-int/lit8 v6, v6, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    iget-object v4, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    iget v5, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    iget v6, p0, Lorg/apache/commons/net/util/Base64;->x:I

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    :cond_6
    add-int/lit8 v1, v1, 0x1

    move v2, p2

    goto/16 :goto_1

    :pswitch_1
    iget-object v4, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    iget v5, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    iget v6, p0, Lorg/apache/commons/net/util/Base64;->x:I

    shr-int/lit8 v6, v6, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    iget-object v4, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    iget v5, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    iget v6, p0, Lorg/apache/commons/net/util/Base64;->x:I

    shr-int/lit8 v6, v6, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    goto/16 :goto_0

    :cond_7
    move p2, v2

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public decode(Ljava/lang/String;)[B
    .locals 1

    invoke-direct {p0, p1}, Lorg/apache/commons/net/util/Base64;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/util/Base64;->decode([B)[B

    move-result-object v0

    return-object v0
.end method

.method public decode([B)[B
    .locals 6

    const/4 v5, 0x0

    invoke-direct {p0}, Lorg/apache/commons/net/util/Base64;->reset()V

    if-eqz p1, :cond_0

    array-length v4, p1

    if-nez v4, :cond_1

    :cond_0
    move-object v3, p1

    :goto_0
    return-object v3

    :cond_1
    array-length v4, p1

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x4

    int-to-long v1, v4

    long-to-int v4, v1

    new-array v0, v4, [B

    array-length v4, v0

    invoke-virtual {p0, v0, v5, v4}, Lorg/apache/commons/net/util/Base64;->setInitialBuffer([BII)V

    array-length v4, p1

    invoke-virtual {p0, p1, v5, v4}, Lorg/apache/commons/net/util/Base64;->decode([BII)V

    const/4 v4, -0x1

    invoke-virtual {p0, p1, v5, v4}, Lorg/apache/commons/net/util/Base64;->decode([BII)V

    iget v4, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    new-array v3, v4, [B

    array-length v4, v3

    invoke-virtual {p0, v3, v5, v4}, Lorg/apache/commons/net/util/Base64;->readResults([BII)I

    goto :goto_0
.end method

.method public encode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    instance-of v0, p1, [B

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Parameter supplied to Base64 encode is not a byte[]"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast p1, [B

    check-cast p1, [B

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/util/Base64;->encode([B)[B

    move-result-object v0

    return-object v0
.end method

.method encode([BII)V
    .locals 9

    const/16 v8, 0x3d

    const/4 v7, 0x0

    iget-boolean v3, p0, Lorg/apache/commons/net/util/Base64;->eof:Z

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-gez p3, :cond_5

    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/apache/commons/net/util/Base64;->eof:Z

    iget-object v3, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    array-length v3, v3

    iget v4, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    sub-int/2addr v3, v4

    iget v4, p0, Lorg/apache/commons/net/util/Base64;->encodeSize:I

    if-ge v3, v4, :cond_3

    :cond_2
    invoke-direct {p0}, Lorg/apache/commons/net/util/Base64;->resizeBuffer()V

    :cond_3
    iget v3, p0, Lorg/apache/commons/net/util/Base64;->modulus:I

    packed-switch v3, :pswitch_data_0

    :cond_4
    :goto_1
    iget v3, p0, Lorg/apache/commons/net/util/Base64;->lineLength:I

    if-lez v3, :cond_0

    iget v3, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    if-lez v3, :cond_0

    iget-object v3, p0, Lorg/apache/commons/net/util/Base64;->lineSeparator:[B

    iget-object v4, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    iget v5, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    iget-object v6, p0, Lorg/apache/commons/net/util/Base64;->lineSeparator:[B

    array-length v6, v6

    invoke-static {v3, v7, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    iget-object v4, p0, Lorg/apache/commons/net/util/Base64;->lineSeparator:[B

    array-length v4, v4

    add-int/2addr v3, v4

    iput v3, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    goto :goto_0

    :pswitch_0
    iget-object v3, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    iget v4, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    iget-object v5, p0, Lorg/apache/commons/net/util/Base64;->encodeTable:[B

    iget v6, p0, Lorg/apache/commons/net/util/Base64;->x:I

    shr-int/lit8 v6, v6, 0x2

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v3, v4

    iget-object v3, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    iget v4, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    iget-object v5, p0, Lorg/apache/commons/net/util/Base64;->encodeTable:[B

    iget v6, p0, Lorg/apache/commons/net/util/Base64;->x:I

    shl-int/lit8 v6, v6, 0x4

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v3, v4

    iget-object v3, p0, Lorg/apache/commons/net/util/Base64;->encodeTable:[B

    sget-object v4, Lorg/apache/commons/net/util/Base64;->STANDARD_ENCODE_TABLE:[B

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    iget v4, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    aput-byte v8, v3, v4

    iget-object v3, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    iget v4, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    aput-byte v8, v3, v4

    goto :goto_1

    :pswitch_1
    iget-object v3, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    iget v4, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    iget-object v5, p0, Lorg/apache/commons/net/util/Base64;->encodeTable:[B

    iget v6, p0, Lorg/apache/commons/net/util/Base64;->x:I

    shr-int/lit8 v6, v6, 0xa

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v3, v4

    iget-object v3, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    iget v4, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    iget-object v5, p0, Lorg/apache/commons/net/util/Base64;->encodeTable:[B

    iget v6, p0, Lorg/apache/commons/net/util/Base64;->x:I

    shr-int/lit8 v6, v6, 0x4

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v3, v4

    iget-object v3, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    iget v4, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    iget-object v5, p0, Lorg/apache/commons/net/util/Base64;->encodeTable:[B

    iget v6, p0, Lorg/apache/commons/net/util/Base64;->x:I

    shl-int/lit8 v6, v6, 0x2

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v3, v4

    iget-object v3, p0, Lorg/apache/commons/net/util/Base64;->encodeTable:[B

    sget-object v4, Lorg/apache/commons/net/util/Base64;->STANDARD_ENCODE_TABLE:[B

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    iget v4, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    aput-byte v8, v3, v4

    goto/16 :goto_1

    :cond_5
    const/4 v1, 0x0

    move v2, p2

    :goto_2
    if-ge v1, p3, :cond_a

    iget-object v3, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    if-eqz v3, :cond_6

    iget-object v3, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    array-length v3, v3

    iget v4, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    sub-int/2addr v3, v4

    iget v4, p0, Lorg/apache/commons/net/util/Base64;->encodeSize:I

    if-ge v3, v4, :cond_7

    :cond_6
    invoke-direct {p0}, Lorg/apache/commons/net/util/Base64;->resizeBuffer()V

    :cond_7
    iget v3, p0, Lorg/apache/commons/net/util/Base64;->modulus:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/commons/net/util/Base64;->modulus:I

    rem-int/lit8 v3, v3, 0x3

    iput v3, p0, Lorg/apache/commons/net/util/Base64;->modulus:I

    add-int/lit8 p2, v2, 0x1

    aget-byte v0, p1, v2

    if-gez v0, :cond_8

    add-int/lit16 v0, v0, 0x100

    :cond_8
    iget v3, p0, Lorg/apache/commons/net/util/Base64;->x:I

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v3, v0

    iput v3, p0, Lorg/apache/commons/net/util/Base64;->x:I

    iget v3, p0, Lorg/apache/commons/net/util/Base64;->modulus:I

    if-nez v3, :cond_9

    iget-object v3, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    iget v4, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    iget-object v5, p0, Lorg/apache/commons/net/util/Base64;->encodeTable:[B

    iget v6, p0, Lorg/apache/commons/net/util/Base64;->x:I

    shr-int/lit8 v6, v6, 0x12

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v3, v4

    iget-object v3, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    iget v4, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    iget-object v5, p0, Lorg/apache/commons/net/util/Base64;->encodeTable:[B

    iget v6, p0, Lorg/apache/commons/net/util/Base64;->x:I

    shr-int/lit8 v6, v6, 0xc

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v3, v4

    iget-object v3, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    iget v4, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    iget-object v5, p0, Lorg/apache/commons/net/util/Base64;->encodeTable:[B

    iget v6, p0, Lorg/apache/commons/net/util/Base64;->x:I

    shr-int/lit8 v6, v6, 0x6

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v3, v4

    iget-object v3, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    iget v4, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    iget-object v5, p0, Lorg/apache/commons/net/util/Base64;->encodeTable:[B

    iget v6, p0, Lorg/apache/commons/net/util/Base64;->x:I

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v3, v4

    iget v3, p0, Lorg/apache/commons/net/util/Base64;->currentLinePos:I

    add-int/lit8 v3, v3, 0x4

    iput v3, p0, Lorg/apache/commons/net/util/Base64;->currentLinePos:I

    iget v3, p0, Lorg/apache/commons/net/util/Base64;->lineLength:I

    if-lez v3, :cond_9

    iget v3, p0, Lorg/apache/commons/net/util/Base64;->lineLength:I

    iget v4, p0, Lorg/apache/commons/net/util/Base64;->currentLinePos:I

    if-gt v3, v4, :cond_9

    iget-object v3, p0, Lorg/apache/commons/net/util/Base64;->lineSeparator:[B

    iget-object v4, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    iget v5, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    iget-object v6, p0, Lorg/apache/commons/net/util/Base64;->lineSeparator:[B

    array-length v6, v6

    invoke-static {v3, v7, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    iget-object v4, p0, Lorg/apache/commons/net/util/Base64;->lineSeparator:[B

    array-length v4, v4

    add-int/2addr v3, v4

    iput v3, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    iput v7, p0, Lorg/apache/commons/net/util/Base64;->currentLinePos:I

    :cond_9
    add-int/lit8 v1, v1, 0x1

    move v2, p2

    goto/16 :goto_2

    :cond_a
    move p2, v2

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public encode([B)[B
    .locals 7

    const/4 v6, 0x0

    invoke-direct {p0}, Lorg/apache/commons/net/util/Base64;->reset()V

    if-eqz p1, :cond_0

    array-length v4, p1

    if-nez v4, :cond_2

    :cond_0
    move-object v0, p1

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    iget v4, p0, Lorg/apache/commons/net/util/Base64;->lineLength:I

    iget-object v5, p0, Lorg/apache/commons/net/util/Base64;->lineSeparator:[B

    invoke-static {p1, v4, v5}, Lorg/apache/commons/net/util/Base64;->getEncodeLength([BI[B)J

    move-result-wide v1

    long-to-int v4, v1

    new-array v0, v4, [B

    array-length v4, v0

    invoke-virtual {p0, v0, v6, v4}, Lorg/apache/commons/net/util/Base64;->setInitialBuffer([BII)V

    array-length v4, p1

    invoke-virtual {p0, p1, v6, v4}, Lorg/apache/commons/net/util/Base64;->encode([BII)V

    const/4 v4, -0x1

    invoke-virtual {p0, p1, v6, v4}, Lorg/apache/commons/net/util/Base64;->encode([BII)V

    iget-object v4, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    if-eq v4, v0, :cond_3

    array-length v4, v0

    invoke-virtual {p0, v0, v6, v4}, Lorg/apache/commons/net/util/Base64;->readResults([BII)I

    :cond_3
    invoke-virtual {p0}, Lorg/apache/commons/net/util/Base64;->isUrlSafe()Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    array-length v5, v0

    if-ge v4, v5, :cond_1

    iget v4, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    new-array v3, v4, [B

    iget v4, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    invoke-static {v0, v6, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v3

    goto :goto_0
.end method

.method public encodeToString([B)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/util/Base64;->encode([B)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/net/util/Base64;->newStringUtf8([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method hasData()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUrlSafe()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/net/util/Base64;->encodeTable:[B

    sget-object v1, Lorg/apache/commons/net/util/Base64;->URL_SAFE_ENCODE_TABLE:[B

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method readResults([BII)I
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lorg/apache/commons/net/util/Base64;->avail()I

    move-result v1

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    if-eq v1, p1, :cond_1

    iget-object v1, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    iget v2, p0, Lorg/apache/commons/net/util/Base64;->readPos:I

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lorg/apache/commons/net/util/Base64;->readPos:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/apache/commons/net/util/Base64;->readPos:I

    iget v1, p0, Lorg/apache/commons/net/util/Base64;->readPos:I

    iget v2, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    if-lt v1, v2, :cond_0

    iput-object v3, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    :cond_0
    :goto_0
    return v0

    :cond_1
    iput-object v3, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    goto :goto_0

    :cond_2
    iget-boolean v1, p0, Lorg/apache/commons/net/util/Base64;->eof:Z

    if-eqz v1, :cond_3

    const/4 v1, -0x1

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method setInitialBuffer([BII)V
    .locals 1

    if-eqz p1, :cond_0

    array-length v0, p1

    if-ne v0, p3, :cond_0

    iput-object p1, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    iput p2, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    iput p2, p0, Lorg/apache/commons/net/util/Base64;->readPos:I

    :cond_0
    return-void
.end method
