.class public Lorg/apache/commons/net/smtp/SimpleSMTPHeader;
.super Ljava/lang/Object;
.source "SimpleSMTPHeader.java"


# instance fields
.field private __cc:Ljava/lang/StringBuffer;

.field private __from:Ljava/lang/String;

.field private __headerFields:Ljava/lang/StringBuffer;

.field private __subject:Ljava/lang/String;

.field private __to:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/apache/commons/net/smtp/SimpleSMTPHeader;->__to:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/commons/net/smtp/SimpleSMTPHeader;->__from:Ljava/lang/String;

    iput-object p3, p0, Lorg/apache/commons/net/smtp/SimpleSMTPHeader;->__subject:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/net/smtp/SimpleSMTPHeader;->__headerFields:Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/net/smtp/SimpleSMTPHeader;->__cc:Ljava/lang/StringBuffer;

    return-void
.end method


# virtual methods
.method public addCC(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/net/smtp/SimpleSMTPHeader;->__cc:Ljava/lang/StringBuffer;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/net/smtp/SimpleSMTPHeader;->__cc:Ljava/lang/StringBuffer;

    :goto_0
    iget-object v0, p0, Lorg/apache/commons/net/smtp/SimpleSMTPHeader;->__cc:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/net/smtp/SimpleSMTPHeader;->__cc:Ljava/lang/StringBuffer;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public addHeaderField(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/net/smtp/SimpleSMTPHeader;->__headerFields:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/apache/commons/net/smtp/SimpleSMTPHeader;->__headerFields:Ljava/lang/StringBuffer;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/apache/commons/net/smtp/SimpleSMTPHeader;->__headerFields:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/apache/commons/net/smtp/SimpleSMTPHeader;->__headerFields:Ljava/lang/StringBuffer;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/16 v2, 0xa

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/commons/net/smtp/SimpleSMTPHeader;->__headerFields:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lorg/apache/commons/net/smtp/SimpleSMTPHeader;->__headerFields:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, "From: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/net/smtp/SimpleSMTPHeader;->__from:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nTo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/net/smtp/SimpleSMTPHeader;->__to:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/net/smtp/SimpleSMTPHeader;->__cc:Ljava/lang/StringBuffer;

    if-eqz v1, :cond_1

    const-string v1, "\nCc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/net/smtp/SimpleSMTPHeader;->__cc:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v1, p0, Lorg/apache/commons/net/smtp/SimpleSMTPHeader;->__subject:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, "\nSubject: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/net/smtp/SimpleSMTPHeader;->__subject:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
