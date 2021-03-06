.class Landroid/support/v7/widget/LinearLayoutManager$LayoutState;
.super Ljava/lang/Object;
.source "LinearLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/LinearLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LayoutState"
.end annotation


# static fields
.field static final INVALID_LAYOUT:I = -0x80000000

.field static final ITEM_DIRECTION_HEAD:I = -0x1

.field static final ITEM_DIRECTION_TAIL:I = 0x1

.field static final LAYOUT_END:I = 0x1

.field static final LAYOUT_START:I = -0x1

.field static final SCROLLING_OFFSET_NaN:I = -0x80000000

.field static final TAG:Ljava/lang/String; = "LLM#LayoutState"


# instance fields
.field mAvailable:I

.field mCurrentPosition:I

.field mExtra:I

.field mInfinite:Z

.field mIsPreLayout:Z

.field mItemDirection:I

.field mLastScrollDelta:I

.field mLayoutDirection:I

.field mOffset:I

.field mRecycle:Z

.field mScrapList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field mScrollingOffset:I


# direct methods
.method constructor <init>()V
    .registers 2

    .line 2127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2146
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mRecycle:Z

    .line 2187
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 2194
    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mIsPreLayout:Z

    .line 2206
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    return-void
.end method

.method private nextViewFromScrapList()Landroid/view/View;
    .registers 7

    .line 2243
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 2244
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_2f

    .line 2245
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 2246
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 2247
    .local v3, "lp":Landroid/support/v7/widget/RecyclerView$LayoutParams;
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v4

    if-eqz v4, :cond_20

    .line 2248
    goto :goto_2c

    .line 2250
    :cond_20
    iget v4, p0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result v5

    if-ne v4, v5, :cond_2c

    .line 2251
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->assignPositionFromScrapList(Landroid/view/View;)V

    .line 2252
    return-object v2

    .line 2244
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "lp":Landroid/support/v7/widget/RecyclerView$LayoutParams;
    :cond_2c
    :goto_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 2255
    .end local v1    # "i":I
    :cond_2f
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public assignPositionFromScrapList()V
    .registers 2

    .line 2259
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->assignPositionFromScrapList(Landroid/view/View;)V

    .line 2260
    return-void
.end method

.method public assignPositionFromScrapList(Landroid/view/View;)V
    .registers 4
    .param p1, "ignore"    # Landroid/view/View;

    .line 2263
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->nextViewInLimitedList(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 2264
    .local v0, "closest":Landroid/view/View;
    if-nez v0, :cond_a

    .line 2265
    const/4 v1, -0x1

    iput v1, p0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    goto :goto_16

    .line 2267
    :cond_a
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 2268
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 2270
    :goto_16
    return-void
.end method

.method hasMore(Landroid/support/v7/widget/RecyclerView$State;)Z
    .registers 4
    .param p1, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .line 2217
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    if-ltz v0, :cond_e

    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method log()V
    .registers 4

    .line 2302
    const-string v0, "LLM#LayoutState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "avail:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", ind:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", dir:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", offset:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", layoutDir:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2304
    return-void
.end method

.method next(Landroid/support/v7/widget/RecyclerView$Recycler;)Landroid/view/View;
    .registers 5
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;

    .line 2227
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    if-eqz v0, :cond_9

    .line 2228
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->nextViewFromScrapList()Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 2230
    :cond_9
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v0

    .line 2231
    .local v0, "view":Landroid/view/View;
    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    iget v2, p0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    add-int/2addr v1, v2

    iput v1, p0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 2232
    return-object v0
.end method

.method public nextViewInLimitedList(Landroid/view/View;)Landroid/view/View;
    .registers 10
    .param p1, "ignore"    # Landroid/view/View;

    .line 2273
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 2274
    .local v0, "size":I
    const/4 v1, 0x0

    .line 2275
    .local v1, "closest":Landroid/view/View;
    const v2, 0x7fffffff

    .line 2279
    .local v2, "closestDistance":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_b
    if-ge v3, v0, :cond_3e

    .line 2280
    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 2281
    .local v4, "view":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 2282
    .local v5, "lp":Landroid/support/v7/widget/RecyclerView$LayoutParams;
    if-eq v4, p1, :cond_3b

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v6

    if-eqz v6, :cond_26

    .line 2283
    goto :goto_3b

    .line 2285
    :cond_26
    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result v6

    iget v7, p0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    mul-int v6, v6, v7

    .line 2287
    .local v6, "distance":I
    if-gez v6, :cond_34

    .line 2288
    goto :goto_3b

    .line 2290
    :cond_34
    if-ge v6, v2, :cond_3b

    .line 2291
    move-object v1, v4

    .line 2292
    move v2, v6

    .line 2293
    if-nez v6, :cond_3b

    .line 2294
    goto :goto_3e

    .line 2279
    .end local v4    # "view":Landroid/view/View;
    .end local v5    # "lp":Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .end local v6    # "distance":I
    :cond_3b
    :goto_3b
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 2298
    .end local v3    # "i":I
    :cond_3e
    :goto_3e
    return-object v1
.end method
