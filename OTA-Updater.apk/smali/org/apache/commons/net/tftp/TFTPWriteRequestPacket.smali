.class public final Lorg/apache/commons/net/tftp/TFTPWriteRequestPacket;
.super Lorg/apache/commons/net/tftp/TFTPRequestPacket;
.source "TFTPWriteRequestPacket.java"


# direct methods
.method constructor <init>(Ljava/net/DatagramPacket;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/net/tftp/TFTPPacketException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/net/tftp/TFTPRequestPacket;-><init>(ILjava/net/DatagramPacket;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;ILjava/lang/String;I)V
    .locals 6

    const/4 v3, 0x2

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/net/tftp/TFTPRequestPacket;-><init>(Ljava/net/InetAddress;IILjava/lang/String;I)V

    return-void
.end method
