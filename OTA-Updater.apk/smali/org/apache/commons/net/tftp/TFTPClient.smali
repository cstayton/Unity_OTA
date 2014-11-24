.class public Lorg/apache/commons/net/tftp/TFTPClient;
.super Lorg/apache/commons/net/tftp/TFTP;
.source "TFTPClient.java"


# static fields
.field public static final DEFAULT_MAX_TIMEOUTS:I = 0x5


# instance fields
.field private __maxTimeouts:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/commons/net/tftp/TFTP;-><init>()V

    const/4 v0, 0x5

    iput v0, p0, Lorg/apache/commons/net/tftp/TFTPClient;->__maxTimeouts:I

    return-void
.end method


# virtual methods
.method public getMaxTimeouts()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/net/tftp/TFTPClient;->__maxTimeouts:I

    return v0
.end method

.method public receiveFile(Ljava/lang/String;ILjava/io/OutputStream;Ljava/lang/String;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    const/16 v5, 0x45

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/net/tftp/TFTPClient;->receiveFile(Ljava/lang/String;ILjava/io/OutputStream;Ljava/net/InetAddress;I)I

    move-result v0

    return v0
.end method

.method public receiveFile(Ljava/lang/String;ILjava/io/OutputStream;Ljava/lang/String;I)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/net/tftp/TFTPClient;->receiveFile(Ljava/lang/String;ILjava/io/OutputStream;Ljava/net/InetAddress;I)I

    move-result v0

    return v0
.end method

.method public receiveFile(Ljava/lang/String;ILjava/io/OutputStream;Ljava/net/InetAddress;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v5, 0x45

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/net/tftp/TFTPClient;->receiveFile(Ljava/lang/String;ILjava/io/OutputStream;Ljava/net/InetAddress;I)I

    move-result v0

    return v0
.end method

.method public receiveFile(Ljava/lang/String;ILjava/io/OutputStream;Ljava/net/InetAddress;I)I
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v14, 0x0

    new-instance v4, Lorg/apache/commons/net/tftp/TFTPAckPacket;

    const/16 v17, 0x0

    move-object/from16 v0, p4

    move/from16 v1, p5

    move/from16 v2, v17

    invoke-direct {v4, v0, v1, v2}, Lorg/apache/commons/net/tftp/TFTPAckPacket;-><init>(Ljava/net/InetAddress;II)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/net/tftp/TFTPClient;->beginBufferedOps()V

    const/4 v6, 0x0

    move v11, v6

    move v12, v6

    move v8, v6

    const/4 v5, 0x1

    if-nez p2, :cond_0

    new-instance v13, Lorg/apache/commons/net/io/FromNetASCIIOutputStream;

    move-object/from16 v0, p3

    invoke-direct {v13, v0}, Lorg/apache/commons/net/io/FromNetASCIIOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object/from16 p3, v13

    :cond_0
    new-instance v15, Lorg/apache/commons/net/tftp/TFTPReadRequestPacket;

    move-object/from16 v0, p4

    move/from16 v1, p5

    move-object/from16 v2, p1

    move/from16 v3, p2

    invoke-direct {v15, v0, v1, v2, v3}, Lorg/apache/commons/net/tftp/TFTPReadRequestPacket;-><init>(Ljava/net/InetAddress;ILjava/lang/String;I)V

    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lorg/apache/commons/net/tftp/TFTPClient;->bufferedSend(Lorg/apache/commons/net/tftp/TFTPPacket;)V

    :cond_2
    const/16 v16, 0x0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/net/tftp/TFTPClient;->bufferedReceive()Lorg/apache/commons/net/tftp/TFTPPacket;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/commons/net/tftp/TFTPPacketException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v14

    if-nez v12, :cond_3

    invoke-virtual {v14}, Lorg/apache/commons/net/tftp/TFTPPacket;->getPort()I

    move-result v11

    invoke-virtual {v4, v11}, Lorg/apache/commons/net/tftp/TFTPAckPacket;->setPort(I)V

    invoke-virtual {v14}, Lorg/apache/commons/net/tftp/TFTPPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v17

    move-object/from16 v0, p4

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_3

    invoke-virtual {v14}, Lorg/apache/commons/net/tftp/TFTPPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object p4

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Lorg/apache/commons/net/tftp/TFTPAckPacket;->setAddress(Ljava/net/InetAddress;)V

    move-object/from16 v0, p4

    invoke-virtual {v15, v0}, Lorg/apache/commons/net/tftp/TFTPPacket;->setAddress(Ljava/net/InetAddress;)V

    :cond_3
    invoke-virtual {v14}, Lorg/apache/commons/net/tftp/TFTPPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v17

    move-object/from16 v0, p4

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    invoke-virtual {v14}, Lorg/apache/commons/net/tftp/TFTPPacket;->getPort()I

    move-result v17

    move/from16 v0, v17

    if-ne v0, v11, :cond_8

    invoke-virtual {v14}, Lorg/apache/commons/net/tftp/TFTPPacket;->getType()I

    move-result v17

    packed-switch v17, :pswitch_data_0

    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/net/tftp/TFTPClient;->endBufferedOps()V

    new-instance v17, Ljava/io/IOException;

    const-string v18, "Received unexpected packet type."

    invoke-direct/range {v17 .. v18}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v17

    :catch_0
    move-exception v9

    add-int/lit8 v16, v16, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/net/tftp/TFTPClient;->__maxTimeouts:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_5

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/net/tftp/TFTPClient;->endBufferedOps()V

    new-instance v17, Ljava/io/IOException;

    const-string v18, "Connection timed out."

    invoke-direct/range {v17 .. v18}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v17

    :catch_1
    move-exception v9

    add-int/lit8 v16, v16, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/net/tftp/TFTPClient;->__maxTimeouts:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_5

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/net/tftp/TFTPClient;->endBufferedOps()V

    new-instance v17, Ljava/io/IOException;

    const-string v18, "Connection timed out."

    invoke-direct/range {v17 .. v18}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v17

    :catch_2
    move-exception v9

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/net/tftp/TFTPClient;->endBufferedOps()V

    new-instance v17, Ljava/io/IOException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Bad packet: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v9}, Lorg/apache/commons/net/tftp/TFTPPacketException;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v17

    :pswitch_1
    move-object v10, v14

    check-cast v10, Lorg/apache/commons/net/tftp/TFTPErrorPacket;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/net/tftp/TFTPClient;->endBufferedOps()V

    new-instance v17, Ljava/io/IOException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Error code "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v10}, Lorg/apache/commons/net/tftp/TFTPErrorPacket;->getError()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " received: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v10}, Lorg/apache/commons/net/tftp/TFTPErrorPacket;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v17

    :pswitch_2
    move-object v7, v14

    check-cast v7, Lorg/apache/commons/net/tftp/TFTPDataPacket;

    invoke-virtual {v7}, Lorg/apache/commons/net/tftp/TFTPDataPacket;->getDataLength()I

    move-result v8

    invoke-virtual {v7}, Lorg/apache/commons/net/tftp/TFTPDataPacket;->getBlockNumber()I

    move-result v12

    if-ne v12, v5, :cond_6

    :try_start_1
    invoke-virtual {v7}, Lorg/apache/commons/net/tftp/TFTPDataPacket;->getData()[B

    move-result-object v17

    invoke-virtual {v7}, Lorg/apache/commons/net/tftp/TFTPDataPacket;->getDataOffset()I

    move-result v18

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2, v8}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    add-int/lit8 v5, v5, 0x1

    const v17, 0xffff

    move/from16 v0, v17

    if-le v5, v0, :cond_4

    const/4 v5, 0x0

    :cond_4
    invoke-virtual {v4, v12}, Lorg/apache/commons/net/tftp/TFTPAckPacket;->setBlockNumber(I)V

    move-object v15, v4

    add-int/2addr v6, v8

    :cond_5
    :goto_0
    const/16 v17, 0x200

    move/from16 v0, v17

    if-eq v8, v0, :cond_1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lorg/apache/commons/net/tftp/TFTPClient;->bufferedSend(Lorg/apache/commons/net/tftp/TFTPPacket;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/net/tftp/TFTPClient;->endBufferedOps()V

    return v6

    :catch_3
    move-exception v9

    new-instance v10, Lorg/apache/commons/net/tftp/TFTPErrorPacket;

    const/16 v17, 0x3

    const-string v18, "File write failed."

    move-object/from16 v0, p4

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v10, v0, v11, v1, v2}, Lorg/apache/commons/net/tftp/TFTPErrorPacket;-><init>(Ljava/net/InetAddress;IILjava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lorg/apache/commons/net/tftp/TFTPClient;->bufferedSend(Lorg/apache/commons/net/tftp/TFTPPacket;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/net/tftp/TFTPClient;->endBufferedOps()V

    throw v9

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/net/tftp/TFTPClient;->discardPackets()V

    if-nez v5, :cond_7

    const v17, 0xffff

    :goto_1
    move/from16 v0, v17

    if-ne v12, v0, :cond_2

    goto :goto_0

    :cond_7
    add-int/lit8 v17, v5, -0x1

    goto :goto_1

    :cond_8
    new-instance v10, Lorg/apache/commons/net/tftp/TFTPErrorPacket;

    invoke-virtual {v14}, Lorg/apache/commons/net/tftp/TFTPPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v17

    invoke-virtual {v14}, Lorg/apache/commons/net/tftp/TFTPPacket;->getPort()I

    move-result v18

    const/16 v19, 0x5

    const-string v20, "Unexpected host or port."

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v10, v0, v1, v2, v3}, Lorg/apache/commons/net/tftp/TFTPErrorPacket;-><init>(Ljava/net/InetAddress;IILjava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lorg/apache/commons/net/tftp/TFTPClient;->bufferedSend(Lorg/apache/commons/net/tftp/TFTPPacket;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public sendFile(Ljava/lang/String;ILjava/io/InputStream;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    const/16 v5, 0x45

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/net/tftp/TFTPClient;->sendFile(Ljava/lang/String;ILjava/io/InputStream;Ljava/net/InetAddress;I)V

    return-void
.end method

.method public sendFile(Ljava/lang/String;ILjava/io/InputStream;Ljava/lang/String;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/net/tftp/TFTPClient;->sendFile(Ljava/lang/String;ILjava/io/InputStream;Ljava/net/InetAddress;I)V

    return-void
.end method

.method public sendFile(Ljava/lang/String;ILjava/io/InputStream;Ljava/net/InetAddress;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v5, 0x45

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/net/tftp/TFTPClient;->sendFile(Ljava/lang/String;ILjava/io/InputStream;Ljava/net/InetAddress;I)V

    return-void
.end method

.method public sendFile(Ljava/lang/String;ILjava/io/InputStream;Ljava/net/InetAddress;I)V
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v24, 0x0

    new-instance v5, Lorg/apache/commons/net/tftp/TFTPDataPacket;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/commons/net/tftp/TFTPClient;->_sendBuffer:[B

    const/4 v10, 0x4

    const/4 v11, 0x0

    move-object/from16 v6, p4

    move/from16 v7, p5

    invoke-direct/range {v5 .. v11}, Lorg/apache/commons/net/tftp/TFTPDataPacket;-><init>(Ljava/net/InetAddress;II[BII)V

    const/16 v20, 0x1

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/net/tftp/TFTPClient;->beginBufferedOps()V

    const/16 v27, 0x0

    move/from16 v14, v27

    move/from16 v18, v27

    move/from16 v22, v27

    move/from16 v15, v27

    const/4 v13, 0x0

    const/16 v21, 0x0

    if-nez p2, :cond_0

    new-instance v19, Lorg/apache/commons/net/io/ToNetASCIIInputStream;

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lorg/apache/commons/net/io/ToNetASCIIInputStream;-><init>(Ljava/io/InputStream;)V

    move-object/from16 p3, v19

    :cond_0
    new-instance v25, Lorg/apache/commons/net/tftp/TFTPWriteRequestPacket;

    move-object/from16 v0, v25

    move-object/from16 v1, p4

    move/from16 v2, p5

    move-object/from16 v3, p1

    move/from16 v4, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/net/tftp/TFTPWriteRequestPacket;-><init>(Ljava/net/InetAddress;ILjava/lang/String;I)V

    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/apache/commons/net/tftp/TFTPClient;->bufferedSend(Lorg/apache/commons/net/tftp/TFTPPacket;)V

    :goto_0
    const/16 v26, 0x0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/net/tftp/TFTPClient;->bufferedReceive()Lorg/apache/commons/net/tftp/TFTPPacket;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/commons/net/tftp/TFTPPacketException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v24

    if-eqz v20, :cond_2

    const/16 v20, 0x0

    invoke-virtual/range {v24 .. v24}, Lorg/apache/commons/net/tftp/TFTPPacket;->getPort()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Lorg/apache/commons/net/tftp/TFTPDataPacket;->setPort(I)V

    invoke-virtual/range {v24 .. v24}, Lorg/apache/commons/net/tftp/TFTPPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual/range {v24 .. v24}, Lorg/apache/commons/net/tftp/TFTPPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object p4

    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Lorg/apache/commons/net/tftp/TFTPDataPacket;->setAddress(Ljava/net/InetAddress;)V

    move-object/from16 v0, v25

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lorg/apache/commons/net/tftp/TFTPPacket;->setAddress(Ljava/net/InetAddress;)V

    :cond_2
    invoke-virtual/range {v24 .. v24}, Lorg/apache/commons/net/tftp/TFTPPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual/range {v24 .. v24}, Lorg/apache/commons/net/tftp/TFTPPacket;->getPort()I

    move-result v6

    move/from16 v0, v18

    if-ne v6, v0, :cond_5

    invoke-virtual/range {v24 .. v24}, Lorg/apache/commons/net/tftp/TFTPPacket;->getType()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/net/tftp/TFTPClient;->endBufferedOps()V

    new-instance v6, Ljava/io/IOException;

    const-string v7, "Received unexpected packet type."

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    :catch_0
    move-exception v16

    add-int/lit8 v26, v26, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Lorg/apache/commons/net/tftp/TFTPClient;->__maxTimeouts:I

    move/from16 v0, v26

    if-lt v0, v6, :cond_6

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/net/tftp/TFTPClient;->endBufferedOps()V

    new-instance v6, Ljava/io/IOException;

    const-string v7, "Connection timed out."

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    :catch_1
    move-exception v16

    add-int/lit8 v26, v26, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Lorg/apache/commons/net/tftp/TFTPClient;->__maxTimeouts:I

    move/from16 v0, v26

    if-lt v0, v6, :cond_6

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/net/tftp/TFTPClient;->endBufferedOps()V

    new-instance v6, Ljava/io/IOException;

    const-string v7, "Connection timed out."

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    :catch_2
    move-exception v16

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/net/tftp/TFTPClient;->endBufferedOps()V

    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bad packet: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/net/tftp/TFTPPacketException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    :pswitch_0
    move-object/from16 v17, v24

    check-cast v17, Lorg/apache/commons/net/tftp/TFTPErrorPacket;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/net/tftp/TFTPClient;->endBufferedOps()V

    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error code "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v17 .. v17}, Lorg/apache/commons/net/tftp/TFTPErrorPacket;->getError()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " received: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v17 .. v17}, Lorg/apache/commons/net/tftp/TFTPErrorPacket;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    :pswitch_1
    move-object/from16 v12, v24

    check-cast v12, Lorg/apache/commons/net/tftp/TFTPAckPacket;

    invoke-virtual {v12}, Lorg/apache/commons/net/tftp/TFTPAckPacket;->getBlockNumber()I

    move-result v22

    move/from16 v0, v22

    if-ne v0, v13, :cond_4

    add-int/lit8 v13, v13, 0x1

    const v6, 0xffff

    if-le v13, v6, :cond_3

    const/4 v13, 0x0

    :cond_3
    if-eqz v21, :cond_7

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/net/tftp/TFTPClient;->endBufferedOps()V

    return-void

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/net/tftp/TFTPClient;->discardPackets()V

    goto/16 :goto_0

    :cond_5
    new-instance v17, Lorg/apache/commons/net/tftp/TFTPErrorPacket;

    invoke-virtual/range {v24 .. v24}, Lorg/apache/commons/net/tftp/TFTPPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual/range {v24 .. v24}, Lorg/apache/commons/net/tftp/TFTPPacket;->getPort()I

    move-result v7

    const/4 v8, 0x5

    const-string v9, "Unexpected host or port."

    move-object/from16 v0, v17

    invoke-direct {v0, v6, v7, v8, v9}, Lorg/apache/commons/net/tftp/TFTPErrorPacket;-><init>(Ljava/net/InetAddress;IILjava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/apache/commons/net/tftp/TFTPClient;->bufferedSend(Lorg/apache/commons/net/tftp/TFTPPacket;)V

    :cond_6
    :goto_2
    if-gtz v27, :cond_1

    if-nez v21, :cond_1

    goto :goto_1

    :cond_7
    const/16 v15, 0x200

    const/16 v23, 0x4

    const/16 v27, 0x0

    :goto_3
    if-lez v15, :cond_8

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/commons/net/tftp/TFTPClient;->_sendBuffer:[B

    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-virtual {v0, v6, v1, v15}, Ljava/io/InputStream;->read([BII)I

    move-result v14

    if-lez v14, :cond_8

    add-int v23, v23, v14

    sub-int/2addr v15, v14

    add-int v27, v27, v14

    goto :goto_3

    :cond_8
    const/16 v6, 0x200

    move/from16 v0, v27

    if-ge v0, v6, :cond_9

    const/16 v21, 0x1

    :cond_9
    invoke-virtual {v5, v13}, Lorg/apache/commons/net/tftp/TFTPDataPacket;->setBlockNumber(I)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/commons/net/tftp/TFTPClient;->_sendBuffer:[B

    const/4 v7, 0x4

    move/from16 v0, v27

    invoke-virtual {v5, v6, v7, v0}, Lorg/apache/commons/net/tftp/TFTPDataPacket;->setData([BII)V

    move-object/from16 v25, v5

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setMaxTimeouts(I)V
    .locals 1

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    iput v0, p0, Lorg/apache/commons/net/tftp/TFTPClient;->__maxTimeouts:I

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lorg/apache/commons/net/tftp/TFTPClient;->__maxTimeouts:I

    goto :goto_0
.end method
