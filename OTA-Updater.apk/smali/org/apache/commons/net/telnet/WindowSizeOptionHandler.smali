.class public Lorg/apache/commons/net/telnet/WindowSizeOptionHandler;
.super Lorg/apache/commons/net/telnet/TelnetOptionHandler;
.source "WindowSizeOptionHandler.java"


# static fields
.field protected static final WINDOW_SIZE:I = 0x1f


# instance fields
.field private m_nHeight:I

.field private m_nWidth:I


# direct methods
.method public constructor <init>(II)V
    .locals 6

    const/4 v2, 0x0

    const/16 v1, 0x1f

    move-object v0, p0

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;-><init>(IZZZZ)V

    const/16 v0, 0x50

    iput v0, p0, Lorg/apache/commons/net/telnet/WindowSizeOptionHandler;->m_nWidth:I

    const/16 v0, 0x18

    iput v0, p0, Lorg/apache/commons/net/telnet/WindowSizeOptionHandler;->m_nHeight:I

    iput p1, p0, Lorg/apache/commons/net/telnet/WindowSizeOptionHandler;->m_nWidth:I

    iput p2, p0, Lorg/apache/commons/net/telnet/WindowSizeOptionHandler;->m_nHeight:I

    return-void
.end method

.method public constructor <init>(IIZZZZ)V
    .locals 6

    const/16 v1, 0x1f

    move-object v0, p0

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;-><init>(IZZZZ)V

    const/16 v0, 0x50

    iput v0, p0, Lorg/apache/commons/net/telnet/WindowSizeOptionHandler;->m_nWidth:I

    const/16 v0, 0x18

    iput v0, p0, Lorg/apache/commons/net/telnet/WindowSizeOptionHandler;->m_nHeight:I

    iput p1, p0, Lorg/apache/commons/net/telnet/WindowSizeOptionHandler;->m_nWidth:I

    iput p2, p0, Lorg/apache/commons/net/telnet/WindowSizeOptionHandler;->m_nHeight:I

    return-void
.end method


# virtual methods
.method public answerSubnegotiation([II)[I
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public startSubnegotiationLocal()[I
    .locals 9

    const/16 v8, 0xff

    iget v6, p0, Lorg/apache/commons/net/telnet/WindowSizeOptionHandler;->m_nWidth:I

    const/high16 v7, 0x1

    mul-int/2addr v6, v7

    iget v7, p0, Lorg/apache/commons/net/telnet/WindowSizeOptionHandler;->m_nHeight:I

    add-int v0, v6, v7

    const/4 v2, 0x5

    iget v6, p0, Lorg/apache/commons/net/telnet/WindowSizeOptionHandler;->m_nWidth:I

    rem-int/lit16 v6, v6, 0x100

    if-ne v6, v8, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    iget v6, p0, Lorg/apache/commons/net/telnet/WindowSizeOptionHandler;->m_nWidth:I

    div-int/lit16 v6, v6, 0x100

    if-ne v6, v8, :cond_1

    add-int/lit8 v2, v2, 0x1

    :cond_1
    iget v6, p0, Lorg/apache/commons/net/telnet/WindowSizeOptionHandler;->m_nHeight:I

    rem-int/lit16 v6, v6, 0x100

    if-ne v6, v8, :cond_2

    add-int/lit8 v2, v2, 0x1

    :cond_2
    iget v6, p0, Lorg/apache/commons/net/telnet/WindowSizeOptionHandler;->m_nHeight:I

    div-int/lit16 v6, v6, 0x100

    if-ne v6, v8, :cond_3

    add-int/lit8 v2, v2, 0x1

    :cond_3
    new-array v5, v2, [I

    const/4 v6, 0x0

    const/16 v7, 0x1f

    aput v7, v5, v6

    const/4 v1, 0x1

    const/16 v3, 0x18

    :goto_0
    if-ge v1, v2, :cond_5

    const/16 v4, 0xff

    shl-int/2addr v4, v3

    and-int v6, v0, v4

    ushr-int/2addr v6, v3

    aput v6, v5, v1

    aget v6, v5, v1

    if-ne v6, v8, :cond_4

    add-int/lit8 v1, v1, 0x1

    aput v8, v5, v1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v3, v3, -0x8

    goto :goto_0

    :cond_5
    return-object v5
.end method

.method public startSubnegotiationRemote()[I
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
