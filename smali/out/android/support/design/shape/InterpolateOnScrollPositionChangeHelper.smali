.class public Landroid/support/design/shape/InterpolateOnScrollPositionChangeHelper;
.super Ljava/lang/Object;
.source "InterpolateOnScrollPositionChangeHelper.java"


# annotations
.annotation build Landroid/support/design/internal/Experimental;
    value = "The shapes API is currently experimental and subject to change"
.end annotation


# instance fields
.field private final containerLocation:[I

.field private containingScrollView:Landroid/widget/ScrollView;

.field private materialShapeDrawable:Landroid/support/design/shape/MaterialShapeDrawable;

.field private final scrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private final scrollLocation:[I

.field private shapedView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/support/design/shape/MaterialShapeDrawable;Landroid/widget/ScrollView;)V
    .registers 6
    .param p1, "shapedView"    # Landroid/view/View;
    .param p2, "materialShapeDrawable"    # Landroid/support/design/shape/MaterialShapeDrawable;
    .param p3, "containingScrollView"    # Landroid/widget/ScrollView;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/support/design/shape/InterpolateOnScrollPositionChangeHelper;->scrollLocation:[I

    .line 33
    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/design/shape/InterpolateOnScrollPositionChangeHelper;->containerLocation:[I

    .line 34
    new-instance v0, Landroid/support/design/shape/InterpolateOnScrollPositionChangeHelper$1;

    invoke-direct {v0, p0}, Landroid/support/design/shape/InterpolateOnScrollPositionChangeHelper$1;-><init>(Landroid/support/design/shape/InterpolateOnScrollPositionChangeHelper;)V

    iput-object v0, p0, Landroid/support/design/shape/InterpolateOnScrollPositionChangeHelper;->scrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 54
    iput-object p1, p0, Landroid/support/design/shape/InterpolateOnScrollPositionChangeHelper;->shapedView:Landroid/view/View;

    .line 55
    iput-object p2, p0, Landroid/support/design/shape/InterpolateOnScrollPositionChangeHelper;->materialShapeDrawable:Landroid/support/design/shape/MaterialShapeDrawable;

    .line 56
    iput-object p3, p0, Landroid/support/design/shape/InterpolateOnScrollPositionChangeHelper;->containingScrollView:Landroid/widget/ScrollView;

    .line 57
    return-void
.end method


# virtual methods
.method public setContainingScrollView(Landroid/widget/ScrollView;)V
    .registers 2
    .param p1, "containingScrollView"    # Landroid/widget/ScrollView;

    .line 74
    iput-object p1, p0, Landroid/support/design/shape/InterpolateOnScrollPositionChangeHelper;->containingScrollView:Landroid/widget/ScrollView;

    .line 75
    return-void
.end method

.method public setMaterialShapeDrawable(Landroid/support/design/shape/MaterialShapeDrawable;)V
    .registers 2
    .param p1, "materialShapeDrawable"    # Landroid/support/design/shape/MaterialShapeDrawable;

    .line 65
    iput-object p1, p0, Landroid/support/design/shape/InterpolateOnScrollPositionChangeHelper;->materialShapeDrawable:Landroid/support/design/shape/MaterialShapeDrawable;

    .line 66
    return-void
.end method

.method public startListeningForScrollChanges(Landroid/view/ViewTreeObserver;)V
    .registers 3
    .param p1, "viewTreeObserver"    # Landroid/view/ViewTreeObserver;

    .line 84
    iget-object v0, p0, Landroid/support/design/shape/InterpolateOnScrollPositionChangeHelper;->scrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 85
    return-void
.end method

.method public stopListeningForScrollChanges(Landroid/view/ViewTreeObserver;)V
    .registers 3
    .param p1, "viewTreeObserver"    # Landroid/view/ViewTreeObserver;

    .line 94
    iget-object v0, p0, Landroid/support/design/shape/InterpolateOnScrollPositionChangeHelper;->scrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 95
    return-void
.end method

.method public updateInterpolationForScreenPosition()V
    .registers 10

    .line 102
    iget-object v0, p0, Landroid/support/design/shape/InterpolateOnScrollPositionChangeHelper;->containingScrollView:Landroid/widget/ScrollView;

    if-nez v0, :cond_5

    .line 104
    return-void

    .line 106
    :cond_5
    iget-object v0, p0, Landroid/support/design/shape/InterpolateOnScrollPositionChangeHelper;->containingScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_8d

    .line 112
    iget-object v0, p0, Landroid/support/design/shape/InterpolateOnScrollPositionChangeHelper;->containingScrollView:Landroid/widget/ScrollView;

    iget-object v1, p0, Landroid/support/design/shape/InterpolateOnScrollPositionChangeHelper;->scrollLocation:[I

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->getLocationInWindow([I)V

    .line 113
    iget-object v0, p0, Landroid/support/design/shape/InterpolateOnScrollPositionChangeHelper;->containingScrollView:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/shape/InterpolateOnScrollPositionChangeHelper;->containerLocation:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 114
    iget-object v0, p0, Landroid/support/design/shape/InterpolateOnScrollPositionChangeHelper;->shapedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget-object v1, p0, Landroid/support/design/shape/InterpolateOnScrollPositionChangeHelper;->scrollLocation:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroid/support/design/shape/InterpolateOnScrollPositionChangeHelper;->containerLocation:[I

    aget v1, v1, v2

    add-int/2addr v0, v1

    .line 115
    .local v0, "y":I
    iget-object v1, p0, Landroid/support/design/shape/InterpolateOnScrollPositionChangeHelper;->shapedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 116
    .local v1, "viewHeight":I
    iget-object v2, p0, Landroid/support/design/shape/InterpolateOnScrollPositionChangeHelper;->containingScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getHeight()I

    move-result v2

    .line 119
    .local v2, "windowHeight":I
    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    if-gez v0, :cond_59

    .line 120
    iget-object v5, p0, Landroid/support/design/shape/InterpolateOnScrollPositionChangeHelper;->materialShapeDrawable:Landroid/support/design/shape/MaterialShapeDrawable;

    int-to-float v6, v0

    int-to-float v7, v1

    div-float/2addr v6, v7

    add-float/2addr v6, v4

    .line 121
    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 120
    invoke-virtual {v5, v3}, Landroid/support/design/shape/MaterialShapeDrawable;->setInterpolation(F)V

    .line 122
    iget-object v3, p0, Landroid/support/design/shape/InterpolateOnScrollPositionChangeHelper;->shapedView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    goto :goto_8c

    .line 123
    :cond_59
    add-int v5, v0, v1

    if-le v5, v2, :cond_78

    .line 124
    add-int v5, v0, v1

    sub-int/2addr v5, v2

    .line 125
    .local v5, "distanceOffScreen":I
    iget-object v6, p0, Landroid/support/design/shape/InterpolateOnScrollPositionChangeHelper;->materialShapeDrawable:Landroid/support/design/shape/MaterialShapeDrawable;

    int-to-float v7, v5

    int-to-float v8, v1

    div-float/2addr v7, v8

    sub-float v7, v4, v7

    .line 126
    invoke-static {v4, v7}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 125
    invoke-virtual {v6, v3}, Landroid/support/design/shape/MaterialShapeDrawable;->setInterpolation(F)V

    .line 127
    iget-object v3, p0, Landroid/support/design/shape/InterpolateOnScrollPositionChangeHelper;->shapedView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    .line 128
    .end local v5    # "distanceOffScreen":I
    goto :goto_8c

    :cond_78
    iget-object v3, p0, Landroid/support/design/shape/InterpolateOnScrollPositionChangeHelper;->materialShapeDrawable:Landroid/support/design/shape/MaterialShapeDrawable;

    invoke-virtual {v3}, Landroid/support/design/shape/MaterialShapeDrawable;->getInterpolation()F

    move-result v3

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_8c

    .line 129
    iget-object v3, p0, Landroid/support/design/shape/InterpolateOnScrollPositionChangeHelper;->materialShapeDrawable:Landroid/support/design/shape/MaterialShapeDrawable;

    invoke-virtual {v3, v4}, Landroid/support/design/shape/MaterialShapeDrawable;->setInterpolation(F)V

    .line 130
    iget-object v3, p0, Landroid/support/design/shape/InterpolateOnScrollPositionChangeHelper;->shapedView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    .line 132
    :cond_8c
    :goto_8c
    return-void

    .line 108
    .end local v0    # "y":I
    .end local v1    # "viewHeight":I
    .end local v2    # "windowHeight":I
    :cond_8d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Scroll bar must contain a child to calculate interpolation."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
