.class public Lorg/apache/commons/net/ntp/TimeInfo;
.super Ljava/lang/Object;
.source "TimeInfo.java"


# instance fields
.field private _comments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _delay:Ljava/lang/Long;

.field private _detailsComputed:Z

.field private final _message:Lorg/apache/commons/net/ntp/NtpV3Packet;

.field private _offset:Ljava/lang/Long;

.field private final _returnTime:J


# direct methods
.method public constructor <init>(Lorg/apache/commons/net/ntp/NtpV3Packet;J)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/net/ntp/TimeInfo;-><init>(Lorg/apache/commons/net/ntp/NtpV3Packet;JLjava/util/List;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/net/ntp/NtpV3Packet;JLjava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/net/ntp/NtpV3Packet;",
            "J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/net/ntp/TimeInfo;-><init>(Lorg/apache/commons/net/ntp/NtpV3Packet;JLjava/util/List;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/net/ntp/NtpV3Packet;JLjava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/net/ntp/NtpV3Packet;",
            "J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "message cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-wide p2, p0, Lorg/apache/commons/net/ntp/TimeInfo;->_returnTime:J

    iput-object p1, p0, Lorg/apache/commons/net/ntp/TimeInfo;->_message:Lorg/apache/commons/net/ntp/NtpV3Packet;

    iput-object p4, p0, Lorg/apache/commons/net/ntp/TimeInfo;->_comments:Ljava/util/List;

    if-eqz p5, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/net/ntp/TimeInfo;->computeDetails()V

    :cond_1
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/net/ntp/NtpV3Packet;JZ)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/net/ntp/TimeInfo;-><init>(Lorg/apache/commons/net/ntp/NtpV3Packet;JLjava/util/List;Z)V

    return-void
.end method


# virtual methods
.method public addComment(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/net/ntp/TimeInfo;->_comments:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/net/ntp/TimeInfo;->_comments:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/net/ntp/TimeInfo;->_comments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public computeDetails()V
    .locals 19

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lorg/apache/commons/net/ntp/TimeInfo;->_detailsComputed:Z

    if-eqz v15, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lorg/apache/commons/net/ntp/TimeInfo;->_detailsComputed:Z

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/commons/net/ntp/TimeInfo;->_comments:Ljava/util/List;

    if-nez v15, :cond_2

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, Lorg/apache/commons/net/ntp/TimeInfo;->_comments:Ljava/util/List;

    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/commons/net/ntp/TimeInfo;->_message:Lorg/apache/commons/net/ntp/NtpV3Packet;

    invoke-interface {v15}, Lorg/apache/commons/net/ntp/NtpV3Packet;->getOriginateTimeStamp()Lorg/apache/commons/net/ntp/TimeStamp;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/commons/net/ntp/TimeStamp;->getTime()J

    move-result-wide v7

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/commons/net/ntp/TimeInfo;->_message:Lorg/apache/commons/net/ntp/NtpV3Packet;

    invoke-interface {v15}, Lorg/apache/commons/net/ntp/NtpV3Packet;->getReceiveTimeStamp()Lorg/apache/commons/net/ntp/TimeStamp;

    move-result-object v9

    invoke-virtual {v9}, Lorg/apache/commons/net/ntp/TimeStamp;->getTime()J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/commons/net/ntp/TimeInfo;->_message:Lorg/apache/commons/net/ntp/NtpV3Packet;

    invoke-interface {v15}, Lorg/apache/commons/net/ntp/NtpV3Packet;->getTransmitTimeStamp()Lorg/apache/commons/net/ntp/TimeStamp;

    move-result-object v12

    invoke-virtual {v12}, Lorg/apache/commons/net/ntp/TimeStamp;->getTime()J

    move-result-wide v13

    invoke-virtual {v6}, Lorg/apache/commons/net/ntp/TimeStamp;->ntpValue()J

    move-result-wide v15

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-nez v15, :cond_4

    invoke-virtual {v12}, Lorg/apache/commons/net/ntp/TimeStamp;->ntpValue()J

    move-result-wide v15

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_3

    move-object/from16 v0, p0

    iget-wide v15, v0, Lorg/apache/commons/net/ntp/TimeInfo;->_returnTime:J

    sub-long v15, v13, v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lorg/apache/commons/net/ntp/TimeInfo;->_offset:Ljava/lang/Long;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/commons/net/ntp/TimeInfo;->_comments:Ljava/util/List;

    const-string v16, "Error: zero orig time -- cannot compute delay"

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/commons/net/ntp/TimeInfo;->_comments:Ljava/util/List;

    const-string v16, "Error: zero orig time -- cannot compute delay/offset"

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-virtual {v9}, Lorg/apache/commons/net/ntp/TimeStamp;->ntpValue()J

    move-result-wide v15

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_5

    invoke-virtual {v12}, Lorg/apache/commons/net/ntp/TimeStamp;->ntpValue()J

    move-result-wide v15

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-nez v15, :cond_8

    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/commons/net/ntp/TimeInfo;->_comments:Ljava/util/List;

    const-string v16, "Warning: zero rcvNtpTime or xmitNtpTime"

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-wide v15, v0, Lorg/apache/commons/net/ntp/TimeInfo;->_returnTime:J

    cmp-long v15, v7, v15

    if-lez v15, :cond_6

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/commons/net/ntp/TimeInfo;->_comments:Ljava/util/List;

    const-string v16, "Error: OrigTime > DestRcvTime"

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-virtual {v9}, Lorg/apache/commons/net/ntp/TimeStamp;->ntpValue()J

    move-result-wide v15

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_7

    sub-long v15, v10, v7

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lorg/apache/commons/net/ntp/TimeInfo;->_offset:Ljava/lang/Long;

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget-wide v15, v0, Lorg/apache/commons/net/ntp/TimeInfo;->_returnTime:J

    sub-long/2addr v15, v7

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lorg/apache/commons/net/ntp/TimeInfo;->_delay:Ljava/lang/Long;

    goto :goto_1

    :cond_7
    invoke-virtual {v12}, Lorg/apache/commons/net/ntp/TimeStamp;->ntpValue()J

    move-result-wide v15

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-wide v15, v0, Lorg/apache/commons/net/ntp/TimeInfo;->_returnTime:J

    sub-long v15, v13, v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lorg/apache/commons/net/ntp/TimeInfo;->_offset:Ljava/lang/Long;

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p0

    iget-wide v15, v0, Lorg/apache/commons/net/ntp/TimeInfo;->_returnTime:J

    sub-long v2, v15, v7

    cmp-long v15, v13, v10

    if-gez v15, :cond_b

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/commons/net/ntp/TimeInfo;->_comments:Ljava/util/List;

    const-string v16, "Error: xmitTime < rcvTime"

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_2
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lorg/apache/commons/net/ntp/TimeInfo;->_delay:Ljava/lang/Long;

    move-object/from16 v0, p0

    iget-wide v15, v0, Lorg/apache/commons/net/ntp/TimeInfo;->_returnTime:J

    cmp-long v15, v7, v15

    if-lez v15, :cond_a

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/commons/net/ntp/TimeInfo;->_comments:Ljava/util/List;

    const-string v16, "Error: OrigTime > DestRcvTime"

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    sub-long v15, v10, v7

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/net/ntp/TimeInfo;->_returnTime:J

    move-wide/from16 v17, v0

    sub-long v17, v13, v17

    add-long v15, v15, v17

    const-wide/16 v17, 0x2

    div-long v15, v15, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lorg/apache/commons/net/ntp/TimeInfo;->_offset:Ljava/lang/Long;

    goto/16 :goto_0

    :cond_b
    sub-long v4, v13, v10

    cmp-long v15, v4, v2

    if-gtz v15, :cond_c

    sub-long/2addr v2, v4

    goto :goto_2

    :cond_c
    sub-long v15, v4, v2

    const-wide/16 v17, 0x1

    cmp-long v15, v15, v17

    if-nez v15, :cond_d

    const-wide/16 v15, 0x0

    cmp-long v15, v2, v15

    if-eqz v15, :cond_9

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/commons/net/ntp/TimeInfo;->_comments:Ljava/util/List;

    const-string v16, "Info: processing time > total network time by 1 ms -> assume zero delay"

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-wide/16 v2, 0x0

    goto :goto_2

    :cond_d
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/commons/net/ntp/TimeInfo;->_comments:Ljava/util/List;

    const-string v16, "Warning: processing time > total network time"

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public getComments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/net/ntp/TimeInfo;->_comments:Ljava/util/List;

    return-object v0
.end method

.method public getDelay()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/net/ntp/TimeInfo;->_delay:Ljava/lang/Long;

    return-object v0
.end method

.method public getMessage()Lorg/apache/commons/net/ntp/NtpV3Packet;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/net/ntp/TimeInfo;->_message:Lorg/apache/commons/net/ntp/NtpV3Packet;

    return-object v0
.end method

.method public getOffset()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/net/ntp/TimeInfo;->_offset:Ljava/lang/Long;

    return-object v0
.end method

.method public getReturnTime()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/net/ntp/TimeInfo;->_returnTime:J

    return-wide v0
.end method
