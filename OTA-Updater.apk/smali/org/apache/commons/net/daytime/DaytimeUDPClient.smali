.class public final Lorg/apache/commons/net/daytime/DaytimeUDPClient;
.super Lorg/apache/commons/net/DatagramSocketClient;
.source "DaytimeUDPClient.java"


# static fields
.field public static final DEFAULT_PORT:I = 0xd


# instance fields
.field private final __dummyData:[B

.field private final __timeData:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/commons/net/DatagramSocketClient;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/net/daytime/DaytimeUDPClient;->__dummyData:[B

    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/net/daytime/DaytimeUDPClient;->__timeData:[B

    return-void
.end method


# virtual methods
.method public getTime(Ljava/net/InetAddress;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xd

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/net/daytime/DaytimeUDPClient;->getTime(Ljava/net/InetAddress;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTime(Ljava/net/InetAddress;I)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v1, Ljava/net/DatagramPacket;

    iget-object v2, p0, Lorg/apache/commons/net/daytime/DaytimeUDPClient;->__dummyData:[B

    iget-object v3, p0, Lorg/apache/commons/net/daytime/DaytimeUDPClient;->__dummyData:[B

    array-length v3, v3

    invoke-direct {v1, v2, v3, p1, p2}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    new-instance v0, Ljava/net/DatagramPacket;

    iget-object v2, p0, Lorg/apache/commons/net/daytime/DaytimeUDPClient;->__timeData:[B

    iget-object v3, p0, Lorg/apache/commons/net/daytime/DaytimeUDPClient;->__timeData:[B

    array-length v3, v3

    invoke-direct {v0, v2, v3}, Ljava/net/DatagramPacket;-><init>([BI)V

    iget-object v2, p0, Lorg/apache/commons/net/daytime/DaytimeUDPClient;->_socket_:Ljava/net/DatagramSocket;

    invoke-virtual {v2, v1}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    iget-object v2, p0, Lorg/apache/commons/net/daytime/DaytimeUDPClient;->_socket_:Ljava/net/DatagramSocket;

    invoke-virtual {v2, v0}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getLength()I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Ljava/lang/String;-><init>([BII)V

    return-object v2
.end method
