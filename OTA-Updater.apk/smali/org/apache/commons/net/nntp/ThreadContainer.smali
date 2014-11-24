.class Lorg/apache/commons/net/nntp/ThreadContainer;
.super Ljava/lang/Object;
.source "ThreadContainer.java"


# instance fields
.field child:Lorg/apache/commons/net/nntp/ThreadContainer;

.field next:Lorg/apache/commons/net/nntp/ThreadContainer;

.field parent:Lorg/apache/commons/net/nntp/ThreadContainer;

.field threadable:Lorg/apache/commons/net/nntp/Threadable;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method findChild(Lorg/apache/commons/net/nntp/ThreadContainer;)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    if-ne v0, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    invoke-virtual {v0, p1}, Lorg/apache/commons/net/nntp/ThreadContainer;->findChild(Lorg/apache/commons/net/nntp/ThreadContainer;)Z

    move-result v0

    goto :goto_0
.end method

.method flush()V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no threadable in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object v1, p0, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    iget-object v0, p0, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    iget-object v0, p0, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    if-nez v0, :cond_5

    move-object v0, v1

    :goto_0
    invoke-interface {v2, v0}, Lorg/apache/commons/net/nntp/Threadable;->setChild(Lorg/apache/commons/net/nntp/Threadable;)V

    :cond_1
    iget-object v0, p0, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    invoke-virtual {v0}, Lorg/apache/commons/net/nntp/ThreadContainer;->flush()V

    iput-object v1, p0, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    :cond_2
    iget-object v0, p0, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    if-eqz v0, :cond_3

    iget-object v2, p0, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    iget-object v0, p0, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    if-nez v0, :cond_6

    move-object v0, v1

    :goto_1
    invoke-interface {v2, v0}, Lorg/apache/commons/net/nntp/Threadable;->setNext(Lorg/apache/commons/net/nntp/Threadable;)V

    :cond_3
    iget-object v0, p0, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    invoke-virtual {v0}, Lorg/apache/commons/net/nntp/ThreadContainer;->flush()V

    iput-object v1, p0, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    :cond_4
    iput-object v1, p0, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    return-void

    :cond_5
    iget-object v0, p0, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    iget-object v0, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    iget-object v0, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    goto :goto_1
.end method

.method reverseChildren()V
    .locals 4

    iget-object v3, p0, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    if-eqz v3, :cond_2

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    iget-object v2, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    :goto_0
    if-eqz v0, :cond_1

    iput-object v1, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    move-object v1, v0

    move-object v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_1
    goto :goto_0

    :cond_0
    iget-object v2, v2, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    goto :goto_1

    :cond_1
    iput-object v1, p0, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    iget-object v0, p0, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    :goto_2
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/apache/commons/net/nntp/ThreadContainer;->reverseChildren()V

    iget-object v0, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    goto :goto_2

    :cond_2
    return-void
.end method
