.class public Lorg/apache/commons/net/nntp/Article;
.super Ljava/lang/Object;
.source "Article.java"

# interfaces
.implements Lorg/apache/commons/net/nntp/Threadable;


# instance fields
.field private articleId:Ljava/lang/String;

.field private articleNumber:J

.field private date:Ljava/lang/String;

.field private from:Ljava/lang/String;

.field private isReply:Z

.field public kid:Lorg/apache/commons/net/nntp/Article;

.field public next:Lorg/apache/commons/net/nntp/Article;

.field private references:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private simplifiedSubject:Ljava/lang/String;

.field private subject:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/net/nntp/Article;->isReply:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/commons/net/nntp/Article;->articleNumber:J

    return-void
.end method

.method private flushSubjectCache()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/net/nntp/Article;->simplifiedSubject:Ljava/lang/String;

    return-void
.end method

.method public static printThread(Lorg/apache/commons/net/nntp/Article;I)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "==>"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/commons/net/nntp/Article;->getSubject()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/commons/net/nntp/Article;->getFrom()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/commons/net/nntp/Article;->kid:Lorg/apache/commons/net/nntp/Article;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/commons/net/nntp/Article;->kid:Lorg/apache/commons/net/nntp/Article;

    add-int/lit8 v2, p1, 0x1

    invoke-static {v1, v2}, Lorg/apache/commons/net/nntp/Article;->printThread(Lorg/apache/commons/net/nntp/Article;I)V

    :cond_1
    iget-object v1, p0, Lorg/apache/commons/net/nntp/Article;->next:Lorg/apache/commons/net/nntp/Article;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/apache/commons/net/nntp/Article;->next:Lorg/apache/commons/net/nntp/Article;

    invoke-static {v1, p1}, Lorg/apache/commons/net/nntp/Article;->printThread(Lorg/apache/commons/net/nntp/Article;I)V

    :cond_2
    return-void
.end method

.method private simplifySubject()V
    .locals 10

    const/16 v9, 0x3a

    const/16 v8, 0x20

    const/4 v4, 0x0

    invoke-virtual {p0}, Lorg/apache/commons/net/nntp/Article;->getSubject()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_b

    const/4 v0, 0x1

    :goto_1
    if-ge v4, v3, :cond_0

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v8, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v6, v3, -0x2

    if-ge v4, v6, :cond_3

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x72

    if-eq v6, v7, :cond_1

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x52

    if-ne v6, v7, :cond_3

    :cond_1
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x65

    if-eq v6, v7, :cond_2

    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x45

    if-ne v6, v7, :cond_3

    :cond_2
    add-int/lit8 v6, v4, 0x2

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v9, :cond_5

    add-int/lit8 v4, v4, 0x3

    const/4 v0, 0x0

    :cond_3
    :goto_2
    const-string v6, "(no subject)"

    iget-object v7, p0, Lorg/apache/commons/net/nntp/Article;->simplifiedSubject:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, ""

    iput-object v6, p0, Lorg/apache/commons/net/nntp/Article;->simplifiedSubject:Ljava/lang/String;

    :cond_4
    move v1, v3

    :goto_3
    if-le v1, v4, :cond_9

    add-int/lit8 v6, v1, -0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ge v6, v8, :cond_9

    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v6, v3, -0x2

    if-ge v4, v6, :cond_3

    add-int/lit8 v6, v4, 0x2

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x5b

    if-eq v6, v7, :cond_6

    add-int/lit8 v6, v4, 0x2

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x28

    if-ne v6, v7, :cond_3

    :cond_6
    add-int/lit8 v2, v4, 0x3

    :goto_4
    if-ge v2, v3, :cond_7

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x30

    if-lt v6, v7, :cond_7

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x39

    if-gt v6, v7, :cond_7

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_7
    add-int/lit8 v6, v3, -0x1

    if-ge v2, v6, :cond_3

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x5d

    if-eq v6, v7, :cond_8

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x29

    if-ne v6, v7, :cond_3

    :cond_8
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v9, :cond_3

    add-int/lit8 v4, v2, 0x2

    const/4 v0, 0x0

    goto :goto_2

    :cond_9
    if-nez v4, :cond_a

    if-ne v1, v3, :cond_a

    iput-object v5, p0, Lorg/apache/commons/net/nntp/Article;->simplifiedSubject:Ljava/lang/String;

    goto/16 :goto_0

    :cond_a
    invoke-virtual {v5, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lorg/apache/commons/net/nntp/Article;->simplifiedSubject:Ljava/lang/String;

    goto/16 :goto_0

    :cond_b
    return-void
.end method


# virtual methods
.method public addHeaderField(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public addReference(Ljava/lang/String;)V
    .locals 5

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v4, p0, Lorg/apache/commons/net/nntp/Article;->references:Ljava/util/ArrayList;

    if-nez v4, :cond_2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lorg/apache/commons/net/nntp/Article;->references:Ljava/util/ArrayList;

    :cond_2
    const/4 v4, 0x1

    iput-boolean v4, p0, Lorg/apache/commons/net/nntp/Article;->isReply:Z

    const-string v4, " "

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    iget-object v4, p0, Lorg/apache/commons/net/nntp/Article;->references:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getArticleId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/net/nntp/Article;->articleId:Ljava/lang/String;

    return-object v0
.end method

.method public getArticleNumber()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-wide v0, p0, Lorg/apache/commons/net/nntp/Article;->articleNumber:J

    long-to-int v0, v0

    return v0
.end method

.method public getArticleNumberLong()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/net/nntp/Article;->articleNumber:J

    return-wide v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/net/nntp/Article;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getFrom()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/net/nntp/Article;->from:Ljava/lang/String;

    return-object v0
.end method

.method public getReferences()[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/net/nntp/Article;->references:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/net/nntp/Article;->references:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/commons/net/nntp/Article;->references:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/net/nntp/Article;->subject:Ljava/lang/String;

    return-object v0
.end method

.method public isDummy()Z
    .locals 4

    iget-wide v0, p0, Lorg/apache/commons/net/nntp/Article;->articleNumber:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public makeDummy()Lorg/apache/commons/net/nntp/Threadable;
    .locals 1

    new-instance v0, Lorg/apache/commons/net/nntp/Article;

    invoke-direct {v0}, Lorg/apache/commons/net/nntp/Article;-><init>()V

    return-object v0
.end method

.method public messageThreadId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/net/nntp/Article;->articleId:Ljava/lang/String;

    return-object v0
.end method

.method public messageThreadReferences()[Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/net/nntp/Article;->getReferences()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setArticleId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/net/nntp/Article;->articleId:Ljava/lang/String;

    return-void
.end method

.method public setArticleNumber(I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    int-to-long v0, p1

    iput-wide v0, p0, Lorg/apache/commons/net/nntp/Article;->articleNumber:J

    return-void
.end method

.method public setArticleNumber(J)V
    .locals 0

    iput-wide p1, p0, Lorg/apache/commons/net/nntp/Article;->articleNumber:J

    return-void
.end method

.method public setChild(Lorg/apache/commons/net/nntp/Threadable;)V
    .locals 0

    check-cast p1, Lorg/apache/commons/net/nntp/Article;

    iput-object p1, p0, Lorg/apache/commons/net/nntp/Article;->kid:Lorg/apache/commons/net/nntp/Article;

    invoke-direct {p0}, Lorg/apache/commons/net/nntp/Article;->flushSubjectCache()V

    return-void
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/net/nntp/Article;->date:Ljava/lang/String;

    return-void
.end method

.method public setFrom(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/net/nntp/Article;->from:Ljava/lang/String;

    return-void
.end method

.method public setNext(Lorg/apache/commons/net/nntp/Threadable;)V
    .locals 0

    check-cast p1, Lorg/apache/commons/net/nntp/Article;

    iput-object p1, p0, Lorg/apache/commons/net/nntp/Article;->next:Lorg/apache/commons/net/nntp/Article;

    invoke-direct {p0}, Lorg/apache/commons/net/nntp/Article;->flushSubjectCache()V

    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/net/nntp/Article;->subject:Ljava/lang/String;

    return-void
.end method

.method public simplifiedSubject()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/net/nntp/Article;->simplifiedSubject:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/apache/commons/net/nntp/Article;->simplifySubject()V

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/net/nntp/Article;->simplifiedSubject:Ljava/lang/String;

    return-object v0
.end method

.method public subjectIsReply()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/net/nntp/Article;->isReply:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lorg/apache/commons/net/nntp/Article;->articleNumber:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/net/nntp/Article;->articleId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/net/nntp/Article;->subject:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
