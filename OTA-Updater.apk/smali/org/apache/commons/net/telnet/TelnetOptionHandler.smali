.class public abstract Lorg/apache/commons/net/telnet/TelnetOptionHandler;
.super Ljava/lang/Object;
.source "TelnetOptionHandler.java"


# instance fields
.field private acceptLocal:Z

.field private acceptRemote:Z

.field private doFlag:Z

.field private initialLocal:Z

.field private initialRemote:Z

.field private optionCode:I

.field private willFlag:Z


# direct methods
.method public constructor <init>(IZZZZ)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->optionCode:I

    iput-boolean v1, p0, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->initialLocal:Z

    iput-boolean v1, p0, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->initialRemote:Z

    iput-boolean v1, p0, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->acceptLocal:Z

    iput-boolean v1, p0, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->acceptRemote:Z

    iput-boolean v1, p0, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->doFlag:Z

    iput-boolean v1, p0, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->willFlag:Z

    iput p1, p0, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->optionCode:I

    iput-boolean p2, p0, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->initialLocal:Z

    iput-boolean p3, p0, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->initialRemote:Z

    iput-boolean p4, p0, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->acceptLocal:Z

    iput-boolean p5, p0, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->acceptRemote:Z

    return-void
.end method


# virtual methods
.method public abstract answerSubnegotiation([II)[I
.end method

.method public getAcceptLocal()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->acceptLocal:Z

    return v0
.end method

.method public getAcceptRemote()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->acceptRemote:Z

    return v0
.end method

.method getDo()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->doFlag:Z

    return v0
.end method

.method public getInitLocal()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->initialLocal:Z

    return v0
.end method

.method public getInitRemote()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->initialRemote:Z

    return v0
.end method

.method public getOptionCode()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->optionCode:I

    return v0
.end method

.method getWill()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->willFlag:Z

    return v0
.end method

.method public setAcceptLocal(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->acceptLocal:Z

    return-void
.end method

.method public setAcceptRemote(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->acceptRemote:Z

    return-void
.end method

.method setDo(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->doFlag:Z

    return-void
.end method

.method public setInitLocal(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->initialLocal:Z

    return-void
.end method

.method public setInitRemote(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->initialRemote:Z

    return-void
.end method

.method setWill(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->willFlag:Z

    return-void
.end method

.method public abstract startSubnegotiationLocal()[I
.end method

.method public abstract startSubnegotiationRemote()[I
.end method
