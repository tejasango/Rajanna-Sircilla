.class final Landroid/support/v7/widget/GapWorker$1;
.super Ljava/lang/Object;
.source "GapWorker.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/GapWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/support/v7/widget/GapWorker$Task;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/support/v7/widget/GapWorker$Task;Landroid/support/v7/widget/GapWorker$Task;)I
    .registers 8
    .param p1, "lhs"    # Landroid/support/v7/widget/GapWorker$Task;
    .param p2, "rhs"    # Landroid/support/v7/widget/GapWorker$Task;

    .line 192
    iget-object v0, p1, Landroid/support/v7/widget/GapWorker$Task;->view:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    iget-object v3, p2, Landroid/support/v7/widget/GapWorker$Task;->view:Landroid/support/v7/widget/RecyclerView;

    if-nez v3, :cond_f

    const/4 v3, 0x1

    goto :goto_10

    :cond_f
    const/4 v3, 0x0

    :goto_10
    const/4 v4, -0x1

    if-eq v0, v3, :cond_1a

    .line 193
    iget-object v0, p1, Landroid/support/v7/widget/GapWorker$Task;->view:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_18

    goto :goto_19

    :cond_18
    const/4 v2, -0x1

    :goto_19
    return v2

    .line 197
    :cond_1a
    iget-boolean v0, p1, Landroid/support/v7/widget/GapWorker$Task;->immediate:Z

    iget-boolean v3, p2, Landroid/support/v7/widget/GapWorker$Task;->immediate:Z

    if-eq v0, v3, :cond_27

    .line 198
    iget-boolean v0, p1, Landroid/support/v7/widget/GapWorker$Task;->immediate:Z

    if-eqz v0, :cond_26

    const/4 v2, -0x1

    nop

    :cond_26
    return v2

    .line 202
    :cond_27
    iget v0, p2, Landroid/support/v7/widget/GapWorker$Task;->viewVelocity:I

    iget v2, p1, Landroid/support/v7/widget/GapWorker$Task;->viewVelocity:I

    sub-int/2addr v0, v2

    .line 203
    .local v0, "deltaViewVelocity":I
    if-eqz v0, :cond_2f

    return v0

    .line 206
    :cond_2f
    iget v2, p1, Landroid/support/v7/widget/GapWorker$Task;->distanceToItem:I

    iget v3, p2, Landroid/support/v7/widget/GapWorker$Task;->distanceToItem:I

    sub-int/2addr v2, v3

    .line 207
    .local v2, "deltaDistanceToItem":I
    if-eqz v2, :cond_37

    return v2

    .line 209
    :cond_37
    return v1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 188
    check-cast p1, Landroid/support/v7/widget/GapWorker$Task;

    check-cast p2, Landroid/support/v7/widget/GapWorker$Task;

    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/GapWorker$1;->compare(Landroid/support/v7/widget/GapWorker$Task;Landroid/support/v7/widget/GapWorker$Task;)I

    move-result p1

    return p1
.end method
