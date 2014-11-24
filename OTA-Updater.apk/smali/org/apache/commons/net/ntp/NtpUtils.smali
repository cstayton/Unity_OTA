.class public final Lorg/apache/commons/net/ntp/NtpUtils;
.super Ljava/lang/Object;
.source "NtpUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHostAddress(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    ushr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    ushr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    ushr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    ushr-int/lit8 v1, p0, 0x0

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getModeName(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string v0, "Unknown"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "Reserved"

    goto :goto_0

    :pswitch_1
    const-string v0, "Symmetric Active"

    goto :goto_0

    :pswitch_2
    const-string v0, "Symmetric Passive"

    goto :goto_0

    :pswitch_3
    const-string v0, "Client"

    goto :goto_0

    :pswitch_4
    const-string v0, "Server"

    goto :goto_0

    :pswitch_5
    const-string v0, "Broadcast"

    goto :goto_0

    :pswitch_6
    const-string v0, "Control"

    goto :goto_0

    :pswitch_7
    const-string v0, "Private"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public static getRefAddress(Lorg/apache/commons/net/ntp/NtpV3Packet;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lorg/apache/commons/net/ntp/NtpUtils;->getHostAddress(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    invoke-interface {p0}, Lorg/apache/commons/net/ntp/NtpV3Packet;->getReferenceId()I

    move-result v0

    goto :goto_0
.end method

.method public static getReferenceClock(Lorg/apache/commons/net/ntp/NtpV3Packet;)Ljava/lang/String;
    .locals 5

    if-nez p0, :cond_0

    const-string v4, ""

    :goto_0
    return-object v4

    :cond_0
    invoke-interface {p0}, Lorg/apache/commons/net/ntp/NtpV3Packet;->getReferenceId()I

    move-result v2

    if-nez v2, :cond_1

    const-string v4, ""

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v4, 0x4

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v3, 0x18

    :goto_1
    if-ltz v3, :cond_2

    ushr-int v4, v2, v3

    and-int/lit16 v4, v4, 0xff

    int-to-char v1, v4

    if-nez v1, :cond_3

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_3
    invoke-static {v1}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, ""

    goto :goto_0

    :cond_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, -0x8

    goto :goto_1
.end method
