.class public Lorg/apache/commons/net/telnet/SimpleOptionHandler;
.super Lorg/apache/commons/net/telnet/TelnetOptionHandler;
.source "SimpleOptionHandler.java"


# direct methods
.method public constructor <init>(I)V
    .locals 6

    const/4 v2, 0x0

    move-object v0, p0

    move v1, p1

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;-><init>(IZZZZ)V

    return-void
.end method

.method public constructor <init>(IZZZZ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;-><init>(IZZZZ)V

    return-void
.end method


# virtual methods
.method public answerSubnegotiation([II)[I
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public startSubnegotiationLocal()[I
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public startSubnegotiationRemote()[I
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
