.class public abstract Lorg/apache/commons/net/tftp/TFTPRequestPacket;
.super Lorg/apache/commons/net/tftp/TFTPPacket;
.source "TFTPRequestPacket.java"


# static fields
.field private static final _modeBytes:[[B

.field static final _modeStrings:[Ljava/lang/String;


# instance fields
.field private final _filename:Ljava/lang/String;

.field private final _mode:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "netascii"

    aput-object v1, v0, v2

    const-string v1, "octet"

    aput-object v1, v0, v3

    sput-object v0, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->_modeStrings:[Ljava/lang/String;

    new-array v0, v4, [[B

    const/16 v1, 0x9

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    aput-object v1, v0, v3

    sput-object v0, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->_modeBytes:[[B

    return-void

    nop

    :array_0
    .array-data 0x1
        0x6et
        0x65t
        0x74t
        0x61t
        0x73t
        0x63t
        0x69t
        0x69t
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 0x1
        0x6ft
        0x63t
        0x74t
        0x65t
        0x74t
        0x0t
    .end array-data
.end method

.method constructor <init>(ILjava/net/DatagramPacket;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/net/tftp/TFTPPacketException;
        }
    .end annotation

    invoke-virtual {p2}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {p2}, Ljava/net/DatagramPacket;->getPort()I

    move-result v7

    invoke-direct {p0, p1, v6, v7}, Lorg/apache/commons/net/tftp/TFTPPacket;-><init>(ILjava/net/InetAddress;I)V

    invoke-virtual {p2}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->getType()I

    move-result v6

    const/4 v7, 0x1

    aget-byte v7, v1, v7

    if-eq v6, v7, :cond_0

    new-instance v6, Lorg/apache/commons/net/tftp/TFTPPacketException;

    const-string v7, "TFTP operator code does not match type."

    invoke-direct {v6, v7}, Lorg/apache/commons/net/tftp/TFTPPacketException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x2

    invoke-virtual {p2}, Ljava/net/DatagramPacket;->getLength()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_1

    aget-byte v6, v1, v2

    if-eqz v6, :cond_1

    aget-byte v6, v1, v2

    int-to-char v6, v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->_filename:Ljava/lang/String;

    if-lt v2, v3, :cond_2

    new-instance v6, Lorg/apache/commons/net/tftp/TFTPPacketException;

    const-string v7, "Bad filename and mode format."

    invoke-direct {v6, v7}, Lorg/apache/commons/net/tftp/TFTPPacketException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_2
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    add-int/lit8 v2, v2, 0x1

    :goto_1
    if-ge v2, v3, :cond_3

    aget-byte v6, v1, v2

    if-eqz v6, :cond_3

    aget-byte v6, v1, v2

    int-to-char v6, v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->_modeStrings:[Ljava/lang/String;

    array-length v3, v6

    const/4 v4, 0x0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_4

    sget-object v6, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->_modeStrings:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    move v4, v2

    :cond_4
    iput v4, p0, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->_mode:I

    if-lt v2, v3, :cond_6

    new-instance v6, Lorg/apache/commons/net/tftp/TFTPPacketException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unrecognized TFTP transfer mode: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/commons/net/tftp/TFTPPacketException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    return-void
.end method

.method constructor <init>(Ljava/net/InetAddress;IILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p3, p1, p2}, Lorg/apache/commons/net/tftp/TFTPPacket;-><init>(ILjava/net/InetAddress;I)V

    iput-object p4, p0, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->_filename:Ljava/lang/String;

    iput p5, p0, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->_mode:I

    return-void
.end method


# virtual methods
.method final _newDatagram(Ljava/net/DatagramPacket;[B)Ljava/net/DatagramPacket;
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->_filename:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    sget-object v2, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->_modeBytes:[[B

    iget v3, p0, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->_mode:I

    aget-object v2, v2, v3

    array-length v1, v2

    aput-byte v4, p2, v4

    const/4 v2, 0x1

    iget v3, p0, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->_type:I

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    iget-object v2, p0, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->_filename:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v4, p2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v0, 0x2

    aput-byte v4, p2, v2

    sget-object v2, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->_modeBytes:[[B

    iget v3, p0, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->_mode:I

    aget-object v2, v2, v3

    add-int/lit8 v3, v0, 0x3

    invoke-static {v2, v4, p2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->_address:Ljava/net/InetAddress;

    invoke-virtual {p1, v2}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    iget v2, p0, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->_port:I

    invoke-virtual {p1, v2}, Ljava/net/DatagramPacket;->setPort(I)V

    invoke-virtual {p1, p2}, Ljava/net/DatagramPacket;->setData([B)V

    add-int v2, v0, v1

    add-int/lit8 v2, v2, 0x3

    invoke-virtual {p1, v2}, Ljava/net/DatagramPacket;->setLength(I)V

    return-object p1
.end method

.method public final getFilename()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->_filename:Ljava/lang/String;

    return-object v0
.end method

.method public final getMode()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->_mode:I

    return v0
.end method

.method public final newDatagram()Ljava/net/DatagramPacket;
    .locals 7

    const/4 v5, 0x0

    iget-object v3, p0, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->_filename:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    sget-object v3, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->_modeBytes:[[B

    iget v4, p0, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->_mode:I

    aget-object v3, v3, v4

    array-length v2, v3

    add-int v3, v1, v2

    add-int/lit8 v3, v3, 0x4

    new-array v0, v3, [B

    aput-byte v5, v0, v5

    const/4 v3, 0x1

    iget v4, p0, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->_type:I

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    iget-object v3, p0, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->_filename:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v3, v5, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v1, 0x2

    aput-byte v5, v0, v3

    sget-object v3, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->_modeBytes:[[B

    iget v4, p0, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->_mode:I

    aget-object v3, v3, v4

    add-int/lit8 v4, v1, 0x3

    invoke-static {v3, v5, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v3, Ljava/net/DatagramPacket;

    array-length v4, v0

    iget-object v5, p0, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->_address:Ljava/net/InetAddress;

    iget v6, p0, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->_port:I

    invoke-direct {v3, v0, v4, v5, v6}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    return-object v3
.end method
