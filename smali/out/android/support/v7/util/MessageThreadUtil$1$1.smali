.class Landroid/support/v7/util/MessageThreadUtil$1$1;
.super Ljava/lang/Object;
.source "MessageThreadUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/util/MessageThreadUtil$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/v7/util/MessageThreadUtil$1;


# direct methods
.method constructor <init>(Landroid/support/v7/util/MessageThreadUtil$1;)V
    .registers 2
    .param p1, "this$1"    # Landroid/support/v7/util/MessageThreadUtil$1;

    .line 59
    .local p0, "this":Landroid/support/v7/util/MessageThreadUtil$1$1;, "Landroid/support/v7/util/MessageThreadUtil$1$1;"
    iput-object p1, p0, Landroid/support/v7/util/MessageThreadUtil$1$1;->this$1:Landroid/support/v7/util/MessageThreadUtil$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 62
    .local p0, "this":Landroid/support/v7/util/MessageThreadUtil$1$1;, "Landroid/support/v7/util/MessageThreadUtil$1$1;"
    iget-object v0, p0, Landroid/support/v7/util/MessageThreadUtil$1$1;->this$1:Landroid/support/v7/util/MessageThreadUtil$1;

    iget-object v0, v0, Landroid/support/v7/util/MessageThreadUtil$1;->mQueue:Landroid/support/v7/util/MessageThreadUtil$MessageQueue;

    invoke-virtual {v0}, Landroid/support/v7/util/MessageThreadUtil$MessageQueue;->next()Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    move-result-object v0

    .line 63
    .local v0, "msg":Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    :goto_8
    if-eqz v0, :cond_57

    .line 64
    iget v1, v0, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->what:I

    packed-switch v1, :pswitch_data_58

    .line 76
    const-string v1, "ThreadUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported message, what="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4e

    .line 73
    :pswitch_28
    iget-object v1, p0, Landroid/support/v7/util/MessageThreadUtil$1$1;->this$1:Landroid/support/v7/util/MessageThreadUtil$1;

    iget-object v1, v1, Landroid/support/v7/util/MessageThreadUtil$1;->val$callback:Landroid/support/v7/util/ThreadUtil$MainThreadCallback;

    iget v2, v0, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->arg1:I

    iget v3, v0, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->arg2:I

    invoke-interface {v1, v2, v3}, Landroid/support/v7/util/ThreadUtil$MainThreadCallback;->removeTile(II)V

    .line 74
    goto :goto_4e

    .line 70
    :pswitch_34
    iget-object v1, p0, Landroid/support/v7/util/MessageThreadUtil$1$1;->this$1:Landroid/support/v7/util/MessageThreadUtil$1;

    iget-object v1, v1, Landroid/support/v7/util/MessageThreadUtil$1;->val$callback:Landroid/support/v7/util/ThreadUtil$MainThreadCallback;

    iget v2, v0, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->arg1:I

    iget-object v3, v0, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->data:Ljava/lang/Object;

    check-cast v3, Landroid/support/v7/util/TileList$Tile;

    invoke-interface {v1, v2, v3}, Landroid/support/v7/util/ThreadUtil$MainThreadCallback;->addTile(ILandroid/support/v7/util/TileList$Tile;)V

    .line 71
    goto :goto_4e

    .line 66
    :pswitch_42
    iget-object v1, p0, Landroid/support/v7/util/MessageThreadUtil$1$1;->this$1:Landroid/support/v7/util/MessageThreadUtil$1;

    iget-object v1, v1, Landroid/support/v7/util/MessageThreadUtil$1;->val$callback:Landroid/support/v7/util/ThreadUtil$MainThreadCallback;

    iget v2, v0, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->arg1:I

    iget v3, v0, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->arg2:I

    invoke-interface {v1, v2, v3}, Landroid/support/v7/util/ThreadUtil$MainThreadCallback;->updateItemCount(II)V

    .line 67
    nop

    .line 78
    :goto_4e
    iget-object v1, p0, Landroid/support/v7/util/MessageThreadUtil$1$1;->this$1:Landroid/support/v7/util/MessageThreadUtil$1;

    iget-object v1, v1, Landroid/support/v7/util/MessageThreadUtil$1;->mQueue:Landroid/support/v7/util/MessageThreadUtil$MessageQueue;

    invoke-virtual {v1}, Landroid/support/v7/util/MessageThreadUtil$MessageQueue;->next()Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    move-result-object v0

    goto :goto_8

    .line 80
    :cond_57
    return-void

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_42
        :pswitch_34
        :pswitch_28
    .end packed-switch
.end method
