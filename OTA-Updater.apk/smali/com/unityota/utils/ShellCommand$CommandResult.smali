.class public Lcom/unityota/utils/ShellCommand$CommandResult;
.super Ljava/lang/Object;
.source "ShellCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unityota/utils/ShellCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CommandResult"
.end annotation


# instance fields
.field public final exit_value:Ljava/lang/Integer;

.field public final stderr:Ljava/lang/String;

.field public final stdout:Ljava/lang/String;

.field final synthetic this$0:Lcom/unityota/utils/ShellCommand;


# direct methods
.method constructor <init>(Lcom/unityota/utils/ShellCommand;Ljava/lang/Integer;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/unityota/utils/ShellCommand$CommandResult;-><init>(Lcom/unityota/utils/ShellCommand;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lcom/unityota/utils/ShellCommand;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unityota/utils/ShellCommand$CommandResult;->this$0:Lcom/unityota/utils/ShellCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/unityota/utils/ShellCommand$CommandResult;->exit_value:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/unityota/utils/ShellCommand$CommandResult;->stdout:Ljava/lang/String;

    iput-object p4, p0, Lcom/unityota/utils/ShellCommand$CommandResult;->stderr:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public success()Z
    .locals 1

    iget-object v0, p0, Lcom/unityota/utils/ShellCommand$CommandResult;->exit_value:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unityota/utils/ShellCommand$CommandResult;->exit_value:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
