.class public final Lorg/apache/commons/net/ntp/NTPUDPClient;
.super Lorg/apache/commons/net/DatagramSocketClient;
.source "NTPUDPClient.java"


# static fields
.field public static final DEFAULT_PORT:I = 0x7b


# instance fields
.field private _version:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/commons/net/DatagramSocketClient;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lorg/apache/commons/net/ntp/NTPUDPClient;->_version:I

    return-void
.end method


# virtual methods
.method public getTime(Ljava/net/InetAddress;)Lorg/apache/commons/net/ntp/TimeInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x7b

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/net/ntp/NTPUDPClient;->getTime(Ljava/net/InetAddress;I)Lorg/apache/commons/net/ntp/TimeInfo;

    move-result-object v0

    return-object v0
.end method

.method public getTime(Ljava/net/InetAddress;I)Lorg/apache/commons/net/ntp/TimeInfo;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/net/ntp/NTPUDPClient;->isOpen()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/net/ntp/NTPUDPClient;->open()V

    :cond_0
    new-instance v1, Lorg/apache/commons/net/ntp/NtpV3Impl;

    invoke-direct {v1}, Lorg/apache/commons/net/ntp/NtpV3Impl;-><init>()V

    const/4 v8, 0x3

    invoke-interface {v1, v8}, Lorg/apache/commons/net/ntp/NtpV3Packet;->setMode(I)V

    iget v8, p0, Lorg/apache/commons/net/ntp/NTPUDPClient;->_version:I

    invoke-interface {v1, v8}, Lorg/apache/commons/net/ntp/NtpV3Packet;->setVersion(I)V

    invoke-interface {v1}, Lorg/apache/commons/net/ntp/NtpV3Packet;->getDatagramPacket()Ljava/net/DatagramPacket;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    invoke-virtual {v7, p2}, Ljava/net/DatagramPacket;->setPort(I)V

    new-instance v3, Lorg/apache/commons/net/ntp/NtpV3Impl;

    invoke-direct {v3}, Lorg/apache/commons/net/ntp/NtpV3Impl;-><init>()V

    invoke-interface {v3}, Lorg/apache/commons/net/ntp/NtpV3Packet;->getDatagramPacket()Ljava/net/DatagramPacket;

    move-result-object v4

    invoke-static {}, Lorg/apache/commons/net/ntp/TimeStamp;->getCurrentTime()Lorg/apache/commons/net/ntp/TimeStamp;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/net/ntp/NtpV3Packet;->setTransmitTime(Lorg/apache/commons/net/ntp/TimeStamp;)V

    iget-object v8, p0, Lorg/apache/commons/net/ntp/NTPUDPClient;->_socket_:Ljava/net/DatagramSocket;

    invoke-virtual {v8, v7}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    iget-object v8, p0, Lorg/apache/commons/net/ntp/NTPUDPClient;->_socket_:Ljava/net/DatagramSocket;

    invoke-virtual {v8, v4}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    new-instance v0, Lorg/apache/commons/net/ntp/TimeInfo;

    const/4 v8, 0x0

    invoke-direct {v0, v3, v5, v6, v8}, Lorg/apache/commons/net/ntp/TimeInfo;-><init>(Lorg/apache/commons/net/ntp/NtpV3Packet;JZ)V

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/net/ntp/NTPUDPClient;->_version:I

    return v0
.end method

.method public setVersion(I)V
    .locals 0

    iput p1, p0, Lorg/apache/commons/net/ntp/NTPUDPClient;->_version:I

    return-void
.end method
