.class public final Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;
.super Ljava/lang/Object;
.source "NewGroupsOrNewsQuery.java"


# instance fields
.field private __date:Ljava/lang/String;

.field private __distributions:Ljava/lang/StringBuffer;

.field private __isGMT:Z

.field private __newsgroups:Ljava/lang/StringBuffer;

.field private __time:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/Calendar;Z)V
    .locals 7

    const/4 v3, 0x0

    const/16 v6, 0x30

    const/4 v5, 0x1

    const/4 v4, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->__distributions:Ljava/lang/StringBuffer;

    iput-object v3, p0, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->__newsgroups:Ljava/lang/StringBuffer;

    iput-boolean p2, p0, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->__isGMT:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v4, :cond_0

    add-int/lit8 v3, v1, -0x2

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v1, v3, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v5, :cond_1

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const/4 v3, 0x5

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v5, :cond_3

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->__date:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    const/16 v3, 0xb

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v5, :cond_5

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    const/16 v3, 0xc

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v5, :cond_7

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    const/16 v3, 0xd

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v5, :cond_9

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->__time:Ljava/lang/String;

    return-void

    :cond_0
    const-string v3, "00"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_1
    if-ne v1, v4, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string v3, "01"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    if-ne v1, v4, :cond_4

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    const-string v3, "01"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    if-ne v1, v4, :cond_6

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_6
    const-string v3, "00"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_7
    if-ne v1, v4, :cond_8

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_8
    const-string v3, "00"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_9
    if-ne v1, v4, :cond_a

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_a
    const-string v3, "00"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5
.end method


# virtual methods
.method public addDistribution(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->__distributions:Ljava/lang/StringBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->__distributions:Ljava/lang/StringBuffer;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_0
    iget-object v0, p0, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->__distributions:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->__distributions:Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public addNewsgroup(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->__newsgroups:Ljava/lang/StringBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->__newsgroups:Ljava/lang/StringBuffer;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_0
    iget-object v0, p0, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->__newsgroups:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->__newsgroups:Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->__date:Ljava/lang/String;

    return-object v0
.end method

.method public getDistributions()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->__distributions:Ljava/lang/StringBuffer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->__distributions:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getNewsgroups()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->__newsgroups:Ljava/lang/StringBuffer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->__newsgroups:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->__time:Ljava/lang/String;

    return-object v0
.end method

.method public isGMT()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->__isGMT:Z

    return v0
.end method

.method public omitNewsgroup(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->addNewsgroup(Ljava/lang/String;)V

    return-void
.end method
