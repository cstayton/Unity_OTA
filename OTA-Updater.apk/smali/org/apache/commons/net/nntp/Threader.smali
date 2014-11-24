.class public Lorg/apache/commons/net/nntp/Threader;
.super Ljava/lang/Object;
.source "Threader.java"


# instance fields
.field private bogusIdCount:I

.field private idTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/commons/net/nntp/ThreadContainer;",
            ">;"
        }
    .end annotation
.end field

.field private root:Lorg/apache/commons/net/nntp/ThreadContainer;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/net/nntp/Threader;->bogusIdCount:I

    return-void
.end method

.method private buildContainer(Lorg/apache/commons/net/nntp/Threadable;)V
    .locals 13

    const/4 v12, 0x0

    invoke-interface {p1}, Lorg/apache/commons/net/nntp/Threadable;->messageThreadId()Ljava/lang/String;

    move-result-object v2

    iget-object v9, p0, Lorg/apache/commons/net/nntp/Threader;->idTable:Ljava/util/HashMap;

    invoke-virtual {v9, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/net/nntp/ThreadContainer;

    if-eqz v0, :cond_0

    iget-object v9, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    if-eqz v9, :cond_4

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "<Bogus-id:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lorg/apache/commons/net/nntp/Threader;->bogusIdCount:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lorg/apache/commons/net/nntp/Threader;->bogusIdCount:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ">"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    :cond_0
    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Lorg/apache/commons/net/nntp/ThreadContainer;

    invoke-direct {v0}, Lorg/apache/commons/net/nntp/ThreadContainer;-><init>()V

    iput-object p1, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    iget-object v9, p0, Lorg/apache/commons/net/nntp/Threader;->idTable:Ljava/util/HashMap;

    invoke-virtual {v9, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/4 v3, 0x0

    invoke-interface {p1}, Lorg/apache/commons/net/nntp/Threadable;->messageThreadReferences()[Ljava/lang/String;

    move-result-object v7

    const/4 v1, 0x0

    :goto_1
    array-length v9, v7

    if-ge v1, v9, :cond_5

    aget-object v6, v7, v1

    iget-object v9, p0, Lorg/apache/commons/net/nntp/Threader;->idTable:Ljava/util/HashMap;

    invoke-virtual {v9, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/net/nntp/ThreadContainer;

    if-nez v5, :cond_2

    new-instance v5, Lorg/apache/commons/net/nntp/ThreadContainer;

    invoke-direct {v5}, Lorg/apache/commons/net/nntp/ThreadContainer;-><init>()V

    iget-object v9, p0, Lorg/apache/commons/net/nntp/Threader;->idTable:Ljava/util/HashMap;

    invoke-virtual {v9, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz v3, :cond_3

    iget-object v9, v5, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    if-nez v9, :cond_3

    if-eq v3, v5, :cond_3

    invoke-virtual {v5, v3}, Lorg/apache/commons/net/nntp/ThreadContainer;->findChild(Lorg/apache/commons/net/nntp/ThreadContainer;)Z

    move-result v9

    if-nez v9, :cond_3

    iput-object v3, v5, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    iget-object v9, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    iput-object v9, v5, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    iput-object v5, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    :cond_3
    move-object v3, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    iput-object p1, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    goto :goto_0

    :cond_5
    if-eqz v3, :cond_7

    if-eq v3, v0, :cond_6

    invoke-virtual {v0, v3}, Lorg/apache/commons/net/nntp/ThreadContainer;->findChild(Lorg/apache/commons/net/nntp/ThreadContainer;)Z

    move-result v9

    if-eqz v9, :cond_7

    :cond_6
    const/4 v3, 0x0

    :cond_7
    iget-object v9, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    if-eqz v9, :cond_b

    const/4 v4, 0x0

    iget-object v9, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    iget-object v8, v9, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    :goto_2
    if-eqz v8, :cond_8

    if-ne v8, v0, :cond_9

    :cond_8
    if-nez v8, :cond_a

    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Didnt find "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " in parent"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_9
    move-object v4, v8

    iget-object v8, v8, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    goto :goto_2

    :cond_a
    if-nez v4, :cond_d

    iget-object v9, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    iget-object v10, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    iput-object v10, v9, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    :goto_3
    iput-object v12, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    iput-object v12, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    :cond_b
    if-eqz v3, :cond_c

    iput-object v3, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    iget-object v9, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    iput-object v9, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    iput-object v0, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    :cond_c
    return-void

    :cond_d
    iget-object v9, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    iput-object v9, v4, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    goto :goto_3
.end method

.method private findRootSet()Lorg/apache/commons/net/nntp/ThreadContainer;
    .locals 7

    new-instance v3, Lorg/apache/commons/net/nntp/ThreadContainer;

    invoke-direct {v3}, Lorg/apache/commons/net/nntp/ThreadContainer;-><init>()V

    iget-object v4, p0, Lorg/apache/commons/net/nntp/Threader;->idTable:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    iget-object v4, p0, Lorg/apache/commons/net/nntp/Threader;->idTable:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/net/nntp/ThreadContainer;

    iget-object v4, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    if-nez v4, :cond_0

    iget-object v4, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "c.next is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    iget-object v4, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    iput-object v4, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    iput-object v0, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    goto :goto_0

    :cond_2
    return-object v3
.end method

.method private gatherSubjects()V
    .locals 15

    const/4 v10, 0x0

    const/4 v1, 0x0

    iget-object v11, p0, Lorg/apache/commons/net/nntp/Threader;->root:Lorg/apache/commons/net/nntp/ThreadContainer;

    iget-object v0, v11, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    :goto_0
    if-eqz v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    iget-object v0, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    goto :goto_0

    :cond_0
    new-instance v7, Ljava/util/HashMap;

    int-to-double v11, v1

    const-wide v13, 0x3ff3333333333333L

    mul-double/2addr v11, v13

    double-to-int v11, v11

    const v12, 0x3f666666

    invoke-direct {v7, v11, v12}, Ljava/util/HashMap;-><init>(IF)V

    const/4 v1, 0x0

    iget-object v11, p0, Lorg/apache/commons/net/nntp/Threader;->root:Lorg/apache/commons/net/nntp/ThreadContainer;

    iget-object v0, v11, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    :goto_1
    if-eqz v0, :cond_6

    iget-object v9, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    if-nez v9, :cond_1

    iget-object v11, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    iget-object v9, v11, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    :cond_1
    invoke-interface {v9}, Lorg/apache/commons/net/nntp/Threadable;->simplifiedSubject()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    const-string v11, ""

    if-ne v6, v11, :cond_3

    :cond_2
    :goto_2
    iget-object v0, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    goto :goto_1

    :cond_3
    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/net/nntp/ThreadContainer;

    if-eqz v3, :cond_5

    iget-object v11, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    if-nez v11, :cond_4

    iget-object v11, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    if-nez v11, :cond_5

    :cond_4
    iget-object v11, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    if-eqz v11, :cond_2

    iget-object v11, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    invoke-interface {v11}, Lorg/apache/commons/net/nntp/Threadable;->subjectIsReply()Z

    move-result v11

    if-eqz v11, :cond_2

    iget-object v11, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    if-eqz v11, :cond_2

    iget-object v11, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    invoke-interface {v11}, Lorg/apache/commons/net/nntp/Threadable;->subjectIsReply()Z

    move-result v11

    if-nez v11, :cond_2

    :cond_5
    invoke-virtual {v7, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    if-nez v1, :cond_7

    :goto_3
    return-void

    :cond_7
    const/4 v4, 0x0

    iget-object v11, p0, Lorg/apache/commons/net/nntp/Threader;->root:Lorg/apache/commons/net/nntp/ThreadContainer;

    iget-object v0, v11, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    iget-object v5, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    :goto_4
    if-eqz v0, :cond_14

    iget-object v9, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    if-nez v9, :cond_8

    iget-object v11, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    iget-object v9, v11, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    :cond_8
    invoke-interface {v9}, Lorg/apache/commons/net/nntp/Threadable;->simplifiedSubject()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_9

    const-string v11, ""

    if-ne v6, v11, :cond_a

    :cond_9
    :goto_5
    move-object v4, v0

    move-object v0, v5

    if-nez v5, :cond_13

    move-object v5, v10

    :goto_6
    goto :goto_4

    :cond_a
    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/net/nntp/ThreadContainer;

    if-eq v3, v0, :cond_9

    if-nez v4, :cond_b

    iget-object v11, p0, Lorg/apache/commons/net/nntp/Threader;->root:Lorg/apache/commons/net/nntp/ThreadContainer;

    iget-object v12, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    iput-object v12, v11, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    :goto_7
    iput-object v10, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    iget-object v11, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    if-nez v11, :cond_f

    iget-object v11, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    if-nez v11, :cond_f

    iget-object v8, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    :goto_8
    if-eqz v8, :cond_c

    iget-object v11, v8, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    if-eqz v11, :cond_c

    iget-object v8, v8, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    goto :goto_8

    :cond_b
    iget-object v11, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    iput-object v11, v4, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    goto :goto_7

    :cond_c
    if-eqz v8, :cond_d

    iget-object v11, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    iput-object v11, v8, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    :cond_d
    iget-object v8, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    :goto_9
    if-eqz v8, :cond_e

    iput-object v3, v8, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    iget-object v8, v8, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    goto :goto_9

    :cond_e
    iput-object v10, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    :goto_a
    move-object v0, v4

    goto :goto_5

    :cond_f
    iget-object v11, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    if-eqz v11, :cond_10

    iget-object v11, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    if-eqz v11, :cond_11

    iget-object v11, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    invoke-interface {v11}, Lorg/apache/commons/net/nntp/Threadable;->subjectIsReply()Z

    move-result v11

    if-eqz v11, :cond_11

    iget-object v11, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    invoke-interface {v11}, Lorg/apache/commons/net/nntp/Threadable;->subjectIsReply()Z

    move-result v11

    if-nez v11, :cond_11

    :cond_10
    iput-object v3, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    iget-object v11, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    iput-object v11, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    iput-object v0, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    goto :goto_a

    :cond_11
    new-instance v2, Lorg/apache/commons/net/nntp/ThreadContainer;

    invoke-direct {v2}, Lorg/apache/commons/net/nntp/ThreadContainer;-><init>()V

    iget-object v11, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    iput-object v11, v2, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    iget-object v11, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    iput-object v11, v2, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    iget-object v8, v2, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    :goto_b
    if-eqz v8, :cond_12

    iput-object v2, v8, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    iget-object v8, v8, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    goto :goto_b

    :cond_12
    iput-object v10, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    iput-object v10, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    iput-object v3, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    iput-object v3, v2, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    iput-object v0, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    iput-object v2, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    goto :goto_a

    :cond_13
    iget-object v5, v5, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    goto/16 :goto_6

    :cond_14
    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    const/4 v7, 0x0

    goto/16 :goto_3
.end method

.method private pruneEmptyContainers(Lorg/apache/commons/net/nntp/ThreadContainer;)V
    .locals 6

    const/4 v3, 0x0

    iget-object v0, p1, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    iget-object v2, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    :goto_0
    if-eqz v0, :cond_8

    iget-object v5, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    if-nez v5, :cond_2

    iget-object v5, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    if-nez v5, :cond_2

    if-nez v3, :cond_1

    iget-object v5, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    iput-object v5, p1, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    :goto_1
    move-object v0, v3

    :cond_0
    :goto_2
    move-object v3, v0

    move-object v0, v2

    if-nez v0, :cond_7

    const/4 v2, 0x0

    :goto_3
    goto :goto_0

    :cond_1
    iget-object v5, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    iput-object v5, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    goto :goto_1

    :cond_2
    iget-object v5, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    if-nez v5, :cond_6

    iget-object v5, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    if-eqz v5, :cond_6

    iget-object v5, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    if-nez v5, :cond_3

    iget-object v5, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    iget-object v5, v5, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    if-nez v5, :cond_6

    :cond_3
    iget-object v1, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    if-nez v3, :cond_4

    iput-object v1, p1, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    :goto_4
    move-object v4, v1

    :goto_5
    iget-object v5, v4, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    if-eqz v5, :cond_5

    iget-object v5, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    iput-object v5, v4, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    iget-object v4, v4, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    goto :goto_5

    :cond_4
    iput-object v1, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    goto :goto_4

    :cond_5
    iget-object v5, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    iput-object v5, v4, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    iget-object v5, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    iput-object v5, v4, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    move-object v2, v1

    move-object v0, v3

    goto :goto_2

    :cond_6
    iget-object v5, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    if-eqz v5, :cond_0

    invoke-direct {p0, v0}, Lorg/apache/commons/net/nntp/Threader;->pruneEmptyContainers(Lorg/apache/commons/net/nntp/ThreadContainer;)V

    goto :goto_2

    :cond_7
    iget-object v2, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    goto :goto_3

    :cond_8
    return-void
.end method


# virtual methods
.method public thread(Ljava/lang/Iterable;)Lorg/apache/commons/net/nntp/Threadable;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lorg/apache/commons/net/nntp/Threadable;",
            ">;)",
            "Lorg/apache/commons/net/nntp/Threadable;"
        }
    .end annotation

    const/4 v4, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-object v4

    :cond_0
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lorg/apache/commons/net/nntp/Threader;->idTable:Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/net/nntp/Threadable;

    invoke-interface {v3}, Lorg/apache/commons/net/nntp/Threadable;->isDummy()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-direct {p0, v3}, Lorg/apache/commons/net/nntp/Threader;->buildContainer(Lorg/apache/commons/net/nntp/Threadable;)V

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lorg/apache/commons/net/nntp/Threader;->findRootSet()Lorg/apache/commons/net/nntp/ThreadContainer;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/commons/net/nntp/Threader;->root:Lorg/apache/commons/net/nntp/ThreadContainer;

    iget-object v5, p0, Lorg/apache/commons/net/nntp/Threader;->idTable:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    iput-object v4, p0, Lorg/apache/commons/net/nntp/Threader;->idTable:Ljava/util/HashMap;

    iget-object v5, p0, Lorg/apache/commons/net/nntp/Threader;->root:Lorg/apache/commons/net/nntp/ThreadContainer;

    invoke-direct {p0, v5}, Lorg/apache/commons/net/nntp/Threader;->pruneEmptyContainers(Lorg/apache/commons/net/nntp/ThreadContainer;)V

    iget-object v5, p0, Lorg/apache/commons/net/nntp/Threader;->root:Lorg/apache/commons/net/nntp/ThreadContainer;

    invoke-virtual {v5}, Lorg/apache/commons/net/nntp/ThreadContainer;->reverseChildren()V

    invoke-direct {p0}, Lorg/apache/commons/net/nntp/Threader;->gatherSubjects()V

    iget-object v5, p0, Lorg/apache/commons/net/nntp/Threader;->root:Lorg/apache/commons/net/nntp/ThreadContainer;

    iget-object v5, v5, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    if-eqz v5, :cond_3

    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "root node has a next:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/commons/net/nntp/Threader;->root:Lorg/apache/commons/net/nntp/ThreadContainer;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_3
    iget-object v5, p0, Lorg/apache/commons/net/nntp/Threader;->root:Lorg/apache/commons/net/nntp/ThreadContainer;

    iget-object v1, v5, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    :goto_2
    if-eqz v1, :cond_5

    iget-object v5, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    if-nez v5, :cond_4

    iget-object v5, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    iget-object v5, v5, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    invoke-interface {v5}, Lorg/apache/commons/net/nntp/Threadable;->makeDummy()Lorg/apache/commons/net/nntp/Threadable;

    move-result-object v5

    iput-object v5, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    :cond_4
    iget-object v1, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    goto :goto_2

    :cond_5
    iget-object v5, p0, Lorg/apache/commons/net/nntp/Threader;->root:Lorg/apache/commons/net/nntp/ThreadContainer;

    iget-object v5, v5, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    if-nez v5, :cond_6

    move-object v2, v4

    :goto_3
    iget-object v5, p0, Lorg/apache/commons/net/nntp/Threader;->root:Lorg/apache/commons/net/nntp/ThreadContainer;

    invoke-virtual {v5}, Lorg/apache/commons/net/nntp/ThreadContainer;->flush()V

    iput-object v4, p0, Lorg/apache/commons/net/nntp/Threader;->root:Lorg/apache/commons/net/nntp/ThreadContainer;

    move-object v4, v2

    goto/16 :goto_0

    :cond_6
    iget-object v5, p0, Lorg/apache/commons/net/nntp/Threader;->root:Lorg/apache/commons/net/nntp/ThreadContainer;

    iget-object v5, v5, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    iget-object v2, v5, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    goto :goto_3
.end method

.method public thread(Ljava/util/List;)Lorg/apache/commons/net/nntp/Threadable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lorg/apache/commons/net/nntp/Threadable;",
            ">;)",
            "Lorg/apache/commons/net/nntp/Threadable;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/nntp/Threader;->thread(Ljava/lang/Iterable;)Lorg/apache/commons/net/nntp/Threadable;

    move-result-object v0

    return-object v0
.end method

.method public thread([Lorg/apache/commons/net/nntp/Threadable;)Lorg/apache/commons/net/nntp/Threadable;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/nntp/Threader;->thread(Ljava/util/List;)Lorg/apache/commons/net/nntp/Threadable;

    move-result-object v0

    return-object v0
.end method
