.class public Lcom/unityota/utils/ShellCommand;
.super Ljava/lang/Object;
.source "ShellCommand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unityota/utils/ShellCommand$SH;,
        Lcom/unityota/utils/ShellCommand$CommandResult;
    }
.end annotation


# instance fields
.field private can_su:Ljava/lang/Boolean;

.field public final sh:Lcom/unityota/utils/ShellCommand$SH;

.field public final su:Lcom/unityota/utils/ShellCommand$SH;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/unityota/utils/ShellCommand$SH;

    const-string v1, "sh"

    invoke-direct {v0, p0, v1}, Lcom/unityota/utils/ShellCommand$SH;-><init>(Lcom/unityota/utils/ShellCommand;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/unityota/utils/ShellCommand;->sh:Lcom/unityota/utils/ShellCommand$SH;

    new-instance v0, Lcom/unityota/utils/ShellCommand$SH;

    const-string v1, "su"

    invoke-direct {v0, p0, v1}, Lcom/unityota/utils/ShellCommand$SH;-><init>(Lcom/unityota/utils/ShellCommand;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/unityota/utils/ShellCommand;->su:Lcom/unityota/utils/ShellCommand$SH;

    return-void
.end method


# virtual methods
.method public canSU()Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/unityota/utils/ShellCommand;->canSU(Z)Z

    move-result v0

    return v0
.end method

.method public canSU(Z)Z
    .locals 5

    iget-object v2, p0, Lcom/unityota/utils/ShellCommand;->can_su:Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    if-eqz p1, :cond_3

    :cond_0
    iget-object v2, p0, Lcom/unityota/utils/ShellCommand;->su:Lcom/unityota/utils/ShellCommand$SH;

    const-string v3, "id"

    invoke-virtual {v2, v3}, Lcom/unityota/utils/ShellCommand$SH;->runWaitFor(Ljava/lang/String;)Lcom/unityota/utils/ShellCommand$CommandResult;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v1, Lcom/unityota/utils/ShellCommand$CommandResult;->stdout:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/unityota/utils/ShellCommand$CommandResult;->stdout:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ; "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v2, v1, Lcom/unityota/utils/ShellCommand$CommandResult;->stderr:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/unityota/utils/ShellCommand$CommandResult;->stderr:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v2, "OTA::ShellCmd"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "canSU() su["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/unityota/utils/ShellCommand$CommandResult;->exit_value:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/unityota/utils/ShellCommand$CommandResult;->success()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/unityota/utils/ShellCommand;->can_su:Ljava/lang/Boolean;

    :cond_3
    iget-object v2, p0, Lcom/unityota/utils/ShellCommand;->can_su:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2
.end method

.method public suOrSH()Lcom/unityota/utils/ShellCommand$SH;
    .locals 1

    invoke-virtual {p0}, Lcom/unityota/utils/ShellCommand;->canSU()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unityota/utils/ShellCommand;->su:Lcom/unityota/utils/ShellCommand$SH;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/unityota/utils/ShellCommand;->sh:Lcom/unityota/utils/ShellCommand$SH;

    goto :goto_0
.end method
