.class Lorg/apache/commons/net/telnet/Telnet;
.super Lorg/apache/commons/net/SocketClient;
.source "Telnet.java"


# static fields
.field static final DEFAULT_PORT:I = 0x17

.field protected static final TERMINAL_TYPE:I = 0x18

.field protected static final TERMINAL_TYPE_IS:I = 0x0

.field protected static final TERMINAL_TYPE_SEND:I = 0x1

.field static final _COMMAND_AYT:[B = null

.field static final _COMMAND_DO:[B = null

.field static final _COMMAND_DONT:[B = null

.field static final _COMMAND_IS:[B = null

.field static final _COMMAND_SB:[B = null

.field static final _COMMAND_SE:[B = null

.field static final _COMMAND_WILL:[B = null

.field static final _COMMAND_WONT:[B = null

.field static final _DO_MASK:I = 0x2

.field static final _REQUESTED_DO_MASK:I = 0x8

.field static final _REQUESTED_WILL_MASK:I = 0x4

.field static final _WILL_MASK:I = 0x1

.field static final debug:Z

.field static final debugoptions:Z


# instance fields
.field private __notifhand:Lorg/apache/commons/net/telnet/TelnetNotificationHandler;

.field _doResponse:[I

.field _options:[I

.field _willResponse:[I

.field private volatile aytFlag:Z

.field private aytMonitor:Ljava/lang/Object;

.field private optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

.field private volatile spyStream:Ljava/io/OutputStream;

.field private terminalType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x2

    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/net/telnet/Telnet;->_COMMAND_DO:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lorg/apache/commons/net/telnet/Telnet;->_COMMAND_DONT:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_2

    sput-object v0, Lorg/apache/commons/net/telnet/Telnet;->_COMMAND_WILL:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_3

    sput-object v0, Lorg/apache/commons/net/telnet/Telnet;->_COMMAND_WONT:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_4

    sput-object v0, Lorg/apache/commons/net/telnet/Telnet;->_COMMAND_SB:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_5

    sput-object v0, Lorg/apache/commons/net/telnet/Telnet;->_COMMAND_SE:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_6

    sput-object v0, Lorg/apache/commons/net/telnet/Telnet;->_COMMAND_IS:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_7

    sput-object v0, Lorg/apache/commons/net/telnet/Telnet;->_COMMAND_AYT:[B

    return-void

    :array_0
    .array-data 0x1
        0xfft
        0xfdt
    .end array-data

    nop

    :array_1
    .array-data 0x1
        0xfft
        0xfet
    .end array-data

    nop

    :array_2
    .array-data 0x1
        0xfft
        0xfbt
    .end array-data

    nop

    :array_3
    .array-data 0x1
        0xfft
        0xfct
    .end array-data

    nop

    :array_4
    .array-data 0x1
        0xfft
        0xfat
    .end array-data

    nop

    :array_5
    .array-data 0x1
        0xfft
        0xf0t
    .end array-data

    nop

    :array_6
    .array-data 0x1
        0x18t
        0x0t
    .end array-data

    nop

    :array_7
    .array-data 0x1
        0xfft
        0xf6t
    .end array-data
.end method

.method constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/16 v1, 0x100

    invoke-direct {p0}, Lorg/apache/commons/net/SocketClient;-><init>()V

    iput-object v2, p0, Lorg/apache/commons/net/telnet/Telnet;->terminalType:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->aytMonitor:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/net/telnet/Telnet;->aytFlag:Z

    iput-object v2, p0, Lorg/apache/commons/net/telnet/Telnet;->spyStream:Ljava/io/OutputStream;

    iput-object v2, p0, Lorg/apache/commons/net/telnet/Telnet;->__notifhand:Lorg/apache/commons/net/telnet/TelnetNotificationHandler;

    const/16 v0, 0x17

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/telnet/Telnet;->setDefaultPort(I)V

    new-array v0, v1, [I

    iput-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_doResponse:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_willResponse:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_options:[I

    new-array v0, v1, [Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    iput-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    const/16 v1, 0x100

    invoke-direct {p0}, Lorg/apache/commons/net/SocketClient;-><init>()V

    iput-object v2, p0, Lorg/apache/commons/net/telnet/Telnet;->terminalType:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->aytMonitor:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/net/telnet/Telnet;->aytFlag:Z

    iput-object v2, p0, Lorg/apache/commons/net/telnet/Telnet;->spyStream:Ljava/io/OutputStream;

    iput-object v2, p0, Lorg/apache/commons/net/telnet/Telnet;->__notifhand:Lorg/apache/commons/net/telnet/TelnetNotificationHandler;

    const/16 v0, 0x17

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/telnet/Telnet;->setDefaultPort(I)V

    new-array v0, v1, [I

    iput-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_doResponse:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_willResponse:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_options:[I

    iput-object p1, p0, Lorg/apache/commons/net/telnet/Telnet;->terminalType:Ljava/lang/String;

    new-array v0, v1, [Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    iput-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    return-void
.end method


# virtual methods
.method protected _connectAction_()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v3, 0x100

    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    iget-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->_doResponse:[I

    aput v2, v1, v0

    iget-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->_willResponse:[I

    aput v2, v1, v0

    iget-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->_options:[I

    aput v2, v1, v0

    iget-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->setDo(Z)V

    iget-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->setWill(Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-super {p0}, Lorg/apache/commons/net/SocketClient;->_connectAction_()V

    new-instance v1, Ljava/io/BufferedInputStream;

    iget-object v2, p0, Lorg/apache/commons/net/telnet/Telnet;->_input_:Ljava/io/InputStream;

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->_input_:Ljava/io/InputStream;

    new-instance v1, Ljava/io/BufferedOutputStream;

    iget-object v2, p0, Lorg/apache/commons/net/telnet/Telnet;->_output_:Ljava/io/OutputStream;

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->_output_:Ljava/io/OutputStream;

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_4

    iget-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    aget-object v1, v1, v0

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->getInitLocal()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->getOptionCode()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/net/telnet/Telnet;->_requestWill(I)V

    :cond_2
    iget-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->getInitRemote()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->getOptionCode()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/net/telnet/Telnet;->_requestDo(I)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method final declared-synchronized _processAYTResponse()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/apache/commons/net/telnet/Telnet;->aytFlag:Z

    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->aytMonitor:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lorg/apache/commons/net/telnet/Telnet;->aytFlag:Z

    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->aytMonitor:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method _processCommand(I)V
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->__notifhand:Lorg/apache/commons/net/telnet/TelnetNotificationHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->__notifhand:Lorg/apache/commons/net/telnet/TelnetNotificationHandler;

    const/4 v1, 0x5

    invoke-interface {v0, v1, p1}, Lorg/apache/commons/net/telnet/TelnetNotificationHandler;->receivedNegotiation(II)V

    :cond_0
    return-void
.end method

.method _processDo(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->__notifhand:Lorg/apache/commons/net/telnet/TelnetNotificationHandler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->__notifhand:Lorg/apache/commons/net/telnet/TelnetNotificationHandler;

    const/4 v2, 0x1

    invoke-interface {v1, v2, p1}, Lorg/apache/commons/net/telnet/TelnetNotificationHandler;->receivedNegotiation(II)V

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    aget-object v1, v1, p1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->getAcceptLocal()Z

    move-result v0

    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->_willResponse:[I

    aget v1, v1, p1

    if-lez v1, :cond_2

    iget-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->_willResponse:[I

    aget v2, v1, p1

    add-int/lit8 v2, v2, -0x1

    aput v2, v1, p1

    iget-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->_willResponse:[I

    aget v1, v1, p1

    if-lez v1, :cond_2

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_stateIsWill(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->_willResponse:[I

    aget v2, v1, p1

    add-int/lit8 v2, v2, -0x1

    aput v2, v1, p1

    :cond_2
    iget-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->_willResponse:[I

    aget v1, v1, p1

    if-nez v1, :cond_3

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_requestedWont(I)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_5

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_setWantWill(I)V

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_sendWill(I)V

    :cond_3
    :goto_1
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_setWill(I)V

    return-void

    :cond_4
    const/16 v1, 0x18

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->terminalType:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->terminalType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->_willResponse:[I

    aget v2, v1, p1

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_sendWont(I)V

    goto :goto_1
.end method

.method _processDont(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->__notifhand:Lorg/apache/commons/net/telnet/TelnetNotificationHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->__notifhand:Lorg/apache/commons/net/telnet/TelnetNotificationHandler;

    const/4 v1, 0x2

    invoke-interface {v0, v1, p1}, Lorg/apache/commons/net/telnet/TelnetNotificationHandler;->receivedNegotiation(II)V

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_willResponse:[I

    aget v0, v0, p1

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_willResponse:[I

    aget v1, v0, p1

    add-int/lit8 v1, v1, -0x1

    aput v1, v0, p1

    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_willResponse:[I

    aget v0, v0, p1

    if-lez v0, :cond_1

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_stateIsWont(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_willResponse:[I

    aget v1, v0, p1

    add-int/lit8 v1, v1, -0x1

    aput v1, v0, p1

    :cond_1
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_willResponse:[I

    aget v0, v0, p1

    if-nez v0, :cond_4

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_requestedWill(I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_stateIsWill(I)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_requestedWill(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_sendWont(I)V

    :cond_3
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_setWantWont(I)V

    :cond_4
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_setWont(I)V

    return-void
.end method

.method _processSuboption([II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-lez p2, :cond_0

    iget-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    aget v2, p1, v3

    aget-object v1, v1, v2

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    aget v2, p1, v3

    aget-object v1, v1, v2

    invoke-virtual {v1, p1, p2}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->answerSubnegotiation([II)[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/telnet/Telnet;->_sendSubnegotiation([I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-le p2, v4, :cond_0

    aget v1, p1, v3

    const/16 v2, 0x18

    if-ne v1, v2, :cond_0

    aget v1, p1, v4

    if-ne v1, v4, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/net/telnet/Telnet;->_sendTerminalType()V

    goto :goto_0
.end method

.method _processWill(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->__notifhand:Lorg/apache/commons/net/telnet/TelnetNotificationHandler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->__notifhand:Lorg/apache/commons/net/telnet/TelnetNotificationHandler;

    const/4 v2, 0x3

    invoke-interface {v1, v2, p1}, Lorg/apache/commons/net/telnet/TelnetNotificationHandler;->receivedNegotiation(II)V

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    aget-object v1, v1, p1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->getAcceptRemote()Z

    move-result v0

    :cond_1
    iget-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->_doResponse:[I

    aget v1, v1, p1

    if-lez v1, :cond_2

    iget-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->_doResponse:[I

    aget v2, v1, p1

    add-int/lit8 v2, v2, -0x1

    aput v2, v1, p1

    iget-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->_doResponse:[I

    aget v1, v1, p1

    if-lez v1, :cond_2

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_stateIsDo(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->_doResponse:[I

    aget v2, v1, p1

    add-int/lit8 v2, v2, -0x1

    aput v2, v1, p1

    :cond_2
    iget-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->_doResponse:[I

    aget v1, v1, p1

    if-nez v1, :cond_3

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_requestedDont(I)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_4

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_setWantDo(I)V

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_sendDo(I)V

    :cond_3
    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_setDo(I)V

    return-void

    :cond_4
    iget-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->_doResponse:[I

    aget v2, v1, p1

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_sendDont(I)V

    goto :goto_0
.end method

.method _processWont(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->__notifhand:Lorg/apache/commons/net/telnet/TelnetNotificationHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->__notifhand:Lorg/apache/commons/net/telnet/TelnetNotificationHandler;

    const/4 v1, 0x4

    invoke-interface {v0, v1, p1}, Lorg/apache/commons/net/telnet/TelnetNotificationHandler;->receivedNegotiation(II)V

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_doResponse:[I

    aget v0, v0, p1

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_doResponse:[I

    aget v1, v0, p1

    add-int/lit8 v1, v1, -0x1

    aput v1, v0, p1

    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_doResponse:[I

    aget v0, v0, p1

    if-lez v0, :cond_1

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_stateIsDont(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_doResponse:[I

    aget v1, v0, p1

    add-int/lit8 v1, v1, -0x1

    aput v1, v0, p1

    :cond_1
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_doResponse:[I

    aget v0, v0, p1

    if-nez v0, :cond_4

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_requestedDo(I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_stateIsDo(I)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_requestedDo(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_sendDont(I)V

    :cond_3
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_setWantDont(I)V

    :cond_4
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_setDont(I)V

    return-void
.end method

.method _registerSpyStream(Ljava/io/OutputStream;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/net/telnet/Telnet;->spyStream:Ljava/io/OutputStream;

    return-void
.end method

.method final declared-synchronized _requestDo(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_doResponse:[I

    aget v0, v0, p1

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_stateIsDo(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_requestedDo(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_setWantDo(I)V

    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_doResponse:[I

    aget v1, v0, p1

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_sendDo(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized _requestDont(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_doResponse:[I

    aget v0, v0, p1

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_stateIsDont(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_requestedDont(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_setWantDont(I)V

    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_doResponse:[I

    aget v1, v0, p1

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_sendDont(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized _requestWill(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_willResponse:[I

    aget v0, v0, p1

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_stateIsWill(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_requestedWill(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_setWantWill(I)V

    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_doResponse:[I

    aget v1, v0, p1

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_sendWill(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized _requestWont(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_willResponse:[I

    aget v0, v0, p1

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_stateIsWont(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_requestedWont(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_setWantWont(I)V

    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_doResponse:[I

    aget v1, v0, p1

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_sendWont(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method _requestedDo(I)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_options:[I

    aget v0, v0, p1

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method _requestedDont(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_requestedDo(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method _requestedWill(I)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_options:[I

    aget v0, v0, p1

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method _requestedWont(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_requestedWill(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final _sendAYT(J)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v2, p0, Lorg/apache/commons/net/telnet/Telnet;->aytMonitor:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    :try_start_1
    iput-boolean v1, p0, Lorg/apache/commons/net/telnet/Telnet;->aytFlag:Z

    iget-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->_output_:Ljava/io/OutputStream;

    sget-object v3, Lorg/apache/commons/net/telnet/Telnet;->_COMMAND_AYT:[B

    invoke-virtual {v1, v3}, Ljava/io/OutputStream;->write([B)V

    iget-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->_output_:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->aytMonitor:Ljava/lang/Object;

    invoke-virtual {v1, p1, p2}, Ljava/lang/Object;->wait(J)V

    iget-boolean v1, p0, Lorg/apache/commons/net/telnet/Telnet;->aytFlag:Z

    if-nez v1, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/commons/net/telnet/Telnet;->aytFlag:Z

    :goto_0
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return v0

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method final declared-synchronized _sendByte(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_output_:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_spyWrite(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized _sendCommand(B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_output_:Ljava/io/OutputStream;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_output_:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_output_:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized _sendDo(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_output_:Ljava/io/OutputStream;

    sget-object v1, Lorg/apache/commons/net/telnet/Telnet;->_COMMAND_DO:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_output_:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_output_:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized _sendDont(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_output_:Ljava/io/OutputStream;

    sget-object v1, Lorg/apache/commons/net/telnet/Telnet;->_COMMAND_DONT:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_output_:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_output_:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized _sendSubnegotiation([I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_2

    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/net/telnet/Telnet;->_output_:Ljava/io/OutputStream;

    sget-object v3, Lorg/apache/commons/net/telnet/Telnet;->_COMMAND_SB:[B

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    aget v2, p1, v1

    int-to-byte v0, v2

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    iget-object v2, p0, Lorg/apache/commons/net/telnet/Telnet;->_output_:Ljava/io/OutputStream;

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write(I)V

    :cond_0
    iget-object v2, p0, Lorg/apache/commons/net/telnet/Telnet;->_output_:Ljava/io/OutputStream;

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lorg/apache/commons/net/telnet/Telnet;->_output_:Ljava/io/OutputStream;

    sget-object v3, Lorg/apache/commons/net/telnet/Telnet;->_COMMAND_SE:[B

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    iget-object v2, p0, Lorg/apache/commons/net/telnet/Telnet;->_output_:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method final declared-synchronized _sendTerminalType()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->terminalType:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_output_:Ljava/io/OutputStream;

    sget-object v1, Lorg/apache/commons/net/telnet/Telnet;->_COMMAND_SB:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_output_:Ljava/io/OutputStream;

    sget-object v1, Lorg/apache/commons/net/telnet/Telnet;->_COMMAND_IS:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_output_:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->terminalType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_output_:Ljava/io/OutputStream;

    sget-object v1, Lorg/apache/commons/net/telnet/Telnet;->_COMMAND_SE:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_output_:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized _sendWill(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_output_:Ljava/io/OutputStream;

    sget-object v1, Lorg/apache/commons/net/telnet/Telnet;->_COMMAND_WILL:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_output_:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_output_:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized _sendWont(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_output_:Ljava/io/OutputStream;

    sget-object v1, Lorg/apache/commons/net/telnet/Telnet;->_COMMAND_WONT:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_output_:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_output_:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method _setDo(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->_options:[I

    aget v2, v1, p1

    or-int/lit8 v2, v2, 0x2

    aput v2, v1, p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_requestedDo(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    aget-object v1, v1, p1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    aget-object v1, v1, p1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->setDo(Z)V

    iget-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->startSubnegotiationRemote()[I

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/telnet/Telnet;->_sendSubnegotiation([I)V

    :cond_0
    return-void
.end method

.method _setDont(I)V
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_options:[I

    aget v1, v0, p1

    and-int/lit8 v1, v1, -0x3

    aput v1, v0, p1

    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->setDo(Z)V

    :cond_0
    return-void
.end method

.method _setWantDo(I)V
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_options:[I

    aget v1, v0, p1

    or-int/lit8 v1, v1, 0x8

    aput v1, v0, p1

    return-void
.end method

.method _setWantDont(I)V
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_options:[I

    aget v1, v0, p1

    and-int/lit8 v1, v1, -0x9

    aput v1, v0, p1

    return-void
.end method

.method _setWantWill(I)V
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_options:[I

    aget v1, v0, p1

    or-int/lit8 v1, v1, 0x4

    aput v1, v0, p1

    return-void
.end method

.method _setWantWont(I)V
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_options:[I

    aget v1, v0, p1

    and-int/lit8 v1, v1, -0x5

    aput v1, v0, p1

    return-void
.end method

.method _setWill(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->_options:[I

    aget v2, v1, p1

    or-int/lit8 v2, v2, 0x1

    aput v2, v1, p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_requestedWill(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    aget-object v1, v1, p1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    aget-object v1, v1, p1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->setWill(Z)V

    iget-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->startSubnegotiationLocal()[I

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/telnet/Telnet;->_sendSubnegotiation([I)V

    :cond_0
    return-void
.end method

.method _setWont(I)V
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_options:[I

    aget v1, v0, p1

    and-int/lit8 v1, v1, -0x2

    aput v1, v0, p1

    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->setWill(Z)V

    :cond_0
    return-void
.end method

.method _spyRead(I)V
    .locals 3

    const/16 v2, 0xd

    iget-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->spyStream:Ljava/io/OutputStream;

    if-eqz v1, :cond_1

    if-eq p1, v2, :cond_1

    :try_start_0
    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write(I)V

    const/16 v2, 0xa

    if-ne p1, v2, :cond_0

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    :cond_0
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/4 v2, 0x0

    iput-object v2, p0, Lorg/apache/commons/net/telnet/Telnet;->spyStream:Ljava/io/OutputStream;

    goto :goto_0
.end method

.method _spyWrite(I)V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lorg/apache/commons/net/telnet/Telnet;->_stateIsDo(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v3}, Lorg/apache/commons/net/telnet/Telnet;->_requestedDo(I)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    iget-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->spyStream:Ljava/io/OutputStream;

    if-eqz v1, :cond_1

    :try_start_0
    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/4 v2, 0x0

    iput-object v2, p0, Lorg/apache/commons/net/telnet/Telnet;->spyStream:Ljava/io/OutputStream;

    goto :goto_0
.end method

.method _stateIsDo(I)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_options:[I

    aget v0, v0, p1

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method _stateIsDont(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_stateIsDo(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method _stateIsWill(I)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_options:[I

    aget v0, v0, p1

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method _stateIsWont(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_stateIsWill(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method _stopSpyStream()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->spyStream:Ljava/io/OutputStream;

    return-void
.end method

.method addOptionHandler(Lorg/apache/commons/net/telnet/TelnetOptionHandler;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/net/telnet/InvalidTelnetOptionException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->getOptionCode()I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/telnet/TelnetOption;->isValidOption(I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    aget-object v1, v1, v0

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    aput-object p1, v1, v0

    invoke-virtual {p0}, Lorg/apache/commons/net/telnet/Telnet;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->getInitLocal()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/telnet/Telnet;->_requestWill(I)V

    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->getInitRemote()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/telnet/Telnet;->_requestDo(I)V

    :cond_1
    return-void

    :cond_2
    new-instance v1, Lorg/apache/commons/net/telnet/InvalidTelnetOptionException;

    const-string v2, "Already registered option"

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/net/telnet/InvalidTelnetOptionException;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_3
    new-instance v1, Lorg/apache/commons/net/telnet/InvalidTelnetOptionException;

    const-string v2, "Invalid Option Code"

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/net/telnet/InvalidTelnetOptionException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method deleteOptionHandler(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/net/telnet/InvalidTelnetOptionException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lorg/apache/commons/net/telnet/TelnetOption;->isValidOption(I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    aget-object v1, v1, p1

    if-nez v1, :cond_0

    new-instance v1, Lorg/apache/commons/net/telnet/InvalidTelnetOptionException;

    const-string v2, "Unregistered option"

    invoke-direct {v1, v2, p1}, Lorg/apache/commons/net/telnet/InvalidTelnetOptionException;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_0
    iget-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    aget-object v0, v1, p1

    iget-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    const/4 v2, 0x0

    aput-object v2, v1, p1

    invoke-virtual {v0}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->getWill()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_requestWont(I)V

    :cond_1
    invoke-virtual {v0}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->getDo()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_requestDont(I)V

    :cond_2
    return-void

    :cond_3
    new-instance v1, Lorg/apache/commons/net/telnet/InvalidTelnetOptionException;

    const-string v2, "Invalid Option Code"

    invoke-direct {v1, v2, p1}, Lorg/apache/commons/net/telnet/InvalidTelnetOptionException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public registerNotifHandler(Lorg/apache/commons/net/telnet/TelnetNotificationHandler;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/net/telnet/Telnet;->__notifhand:Lorg/apache/commons/net/telnet/TelnetNotificationHandler;

    return-void
.end method

.method public unregisterNotifHandler()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->__notifhand:Lorg/apache/commons/net/telnet/TelnetNotificationHandler;

    return-void
.end method
