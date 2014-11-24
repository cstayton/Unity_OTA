.class public final Lorg/apache/commons/net/tftp/TFTPDataPacket;
.super Lorg/apache/commons/net/tftp/TFTPPacket;
.source "TFTPDataPacket.java"


# static fields
.field public static final MAX_DATA_LENGTH:I = 0x200

.field public static final MIN_DATA_LENGTH:I


# instance fields
.field _blockNumber:I

.field _data:[B

.field _length:I

.field _offset:I


# direct methods
.method constructor <init>(Ljava/net/DatagramPacket;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/net/tftp/TFTPPacketException;
        }
    .end annotation

    const/16 v4, 0x200

    const/4 v3, 0x3

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v1

    invoke-direct {p0, v3, v0, v1}, Lorg/apache/commons/net/tftp/TFTPPacket;-><init>(ILjava/net/InetAddress;I)V

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->_data:[B

    const/4 v0, 0x4

    iput v0, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->_offset:I

    invoke-virtual {p0}, Lorg/apache/commons/net/tftp/TFTPDataPacket;->getType()I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->_data:[B

    const/4 v2, 0x1

    aget-byte v1, v1, v2

    if-eq v0, v1, :cond_0

    new-instance v0, Lorg/apache/commons/net/tftp/TFTPPacketException;

    const-string v1, "TFTP operator code does not match type."

    invoke-direct {v0, v1}, Lorg/apache/commons/net/tftp/TFTPPacketException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->_data:[B

    const/4 v1, 0x2

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->_data:[B

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->_blockNumber:I

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v0

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->_length:I

    iget v0, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->_length:I

    if-le v0, v4, :cond_1

    iput v4, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->_length:I

    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;II[B)V
    .locals 7

    const/4 v5, 0x0

    array-length v6, p4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/net/tftp/TFTPDataPacket;-><init>(Ljava/net/InetAddress;II[BII)V

    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;II[BII)V
    .locals 2

    const/16 v1, 0x200

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/net/tftp/TFTPPacket;-><init>(ILjava/net/InetAddress;I)V

    iput p3, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->_blockNumber:I

    iput-object p4, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->_data:[B

    iput p5, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->_offset:I

    if-le p6, v1, :cond_0

    iput v1, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->_length:I

    :goto_0
    return-void

    :cond_0
    iput p6, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->_length:I

    goto :goto_0
.end method


# virtual methods
.method _newDatagram(Ljava/net/DatagramPacket;[B)Ljava/net/DatagramPacket;
    .locals 4

    const/4 v0, 0x0

    aput-byte v0, p2, v0

    const/4 v0, 0x1

    iget v1, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->_type:I

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    const/4 v0, 0x2

    iget v1, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->_blockNumber:I

    const v2, 0xffff

    and-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    const/4 v0, 0x3

    iget v1, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->_blockNumber:I

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    iget-object v0, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->_data:[B

    if-eq p2, v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->_data:[B

    iget v1, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->_offset:I

    const/4 v2, 0x4

    iget v3, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->_length:I

    invoke-static {v0, v1, p2, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->_address:Ljava/net/InetAddress;

    invoke-virtual {p1, v0}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    iget v0, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->_port:I

    invoke-virtual {p1, v0}, Ljava/net/DatagramPacket;->setPort(I)V

    invoke-virtual {p1, p2}, Ljava/net/DatagramPacket;->setData([B)V

    iget v0, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->_length:I

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p1, v0}, Ljava/net/DatagramPacket;->setLength(I)V

    return-object p1
.end method

.method public getBlockNumber()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->_blockNumber:I

    return v0
.end method

.method public getData()[B
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->_data:[B

    return-object v0
.end method

.method public getDataLength()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->_length:I

    return v0
.end method

.method public getDataOffset()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->_offset:I

    return v0
.end method

.method public newDatagram()Ljava/net/DatagramPacket;
    .locals 5

    const/4 v2, 0x0

    iget v1, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->_length:I

    add-int/lit8 v1, v1, 0x4

    new-array v0, v1, [B

    aput-byte v2, v0, v2

    const/4 v1, 0x1

    iget v2, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->_type:I

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->_blockNumber:I

    const v3, 0xffff

    and-int/2addr v2, v3

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->_blockNumber:I

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v1, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->_data:[B

    iget v2, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->_offset:I

    const/4 v3, 0x4

    iget v4, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->_length:I

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v1, Ljava/net/DatagramPacket;

    iget v2, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->_length:I

    add-int/lit8 v2, v2, 0x4

    iget-object v3, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->_address:Ljava/net/InetAddress;

    iget v4, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->_port:I

    invoke-direct {v1, v0, v2, v3, v4}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    return-object v1
.end method

.method public setBlockNumber(I)V
    .locals 0

    iput p1, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->_blockNumber:I

    return-void
.end method

.method public setData([BII)V
    .locals 1

    const/16 v0, 0x200

    iput-object p1, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->_data:[B

    iput p2, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->_offset:I

    iput p3, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->_length:I

    if-le p3, v0, :cond_0

    iput v0, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->_length:I

    :goto_0
    return-void

    :cond_0
    iput p3, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->_length:I

    goto :goto_0
.end method
