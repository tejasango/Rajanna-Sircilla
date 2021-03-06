.class public Landroid/support/design/widget/SnackbarContentLayout;
.super Landroid/widget/LinearLayout;
.source "SnackbarContentLayout.java"

# interfaces
.implements Landroid/support/design/snackbar/ContentViewCallback;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private actionView:Landroid/widget/Button;

.field private maxInlineActionWidth:I

.field private maxWidth:I

.field private messageView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/SnackbarContentLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    sget-object v0, Landroid/support/design/R$styleable;->SnackbarLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 48
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Landroid/support/design/R$styleable;->SnackbarLayout_android_maxWidth:I

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/SnackbarContentLayout;->maxWidth:I

    .line 49
    sget v1, Landroid/support/design/R$styleable;->SnackbarLayout_maxActionInlineWidth:I

    .line 50
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/SnackbarContentLayout;->maxInlineActionWidth:I

    .line 51
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 52
    return-void
.end method

.method private static updateTopBottomPadding(Landroid/view/View;II)V
    .registers 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "topPadding"    # I
    .param p2, "bottomPadding"    # I

    .line 120
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->isPaddingRelative(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 121
    nop

    .line 123
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getPaddingStart(Landroid/view/View;)I

    move-result v0

    .line 125
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getPaddingEnd(Landroid/view/View;)I

    move-result v1

    .line 121
    invoke-static {p0, v0, p1, v1, p2}, Landroid/support/v4/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    goto :goto_1e

    .line 128
    :cond_13
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    invoke-virtual {p0, v0, p1, v1, p2}, Landroid/view/View;->setPadding(IIII)V

    .line 130
    :goto_1e
    return-void
.end method

.method private updateViewsWithinLayout(III)Z
    .registers 6
    .param p1, "orientation"    # I
    .param p2, "messagePadTop"    # I
    .param p3, "messagePadBottom"    # I

    .line 106
    const/4 v0, 0x0

    .line 107
    .local v0, "changed":Z
    invoke-virtual {p0}, Landroid/support/design/widget/SnackbarContentLayout;->getOrientation()I

    move-result v1

    if-eq p1, v1, :cond_b

    .line 108
    invoke-virtual {p0, p1}, Landroid/support/design/widget/SnackbarContentLayout;->setOrientation(I)V

    .line 109
    const/4 v0, 0x1

    .line 111
    :cond_b
    iget-object v1, p0, Landroid/support/design/widget/SnackbarContentLayout;->messageView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v1

    if-ne v1, p2, :cond_1b

    iget-object v1, p0, Landroid/support/design/widget/SnackbarContentLayout;->messageView:Landroid/widget/TextView;

    .line 112
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v1

    if-eq v1, p3, :cond_21

    .line 113
    :cond_1b
    iget-object v1, p0, Landroid/support/design/widget/SnackbarContentLayout;->messageView:Landroid/widget/TextView;

    invoke-static {v1, p2, p3}, Landroid/support/design/widget/SnackbarContentLayout;->updateTopBottomPadding(Landroid/view/View;II)V

    .line 114
    const/4 v0, 0x1

    .line 116
    :cond_21
    return v0
.end method


# virtual methods
.method public animateContentIn(II)V
    .registers 8
    .param p1, "delay"    # I
    .param p2, "duration"    # I

    .line 134
    iget-object v0, p0, Landroid/support/design/widget/SnackbarContentLayout;->messageView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 135
    iget-object v0, p0, Landroid/support/design/widget/SnackbarContentLayout;->messageView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-long v3, p2

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-long v3, p1

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 137
    iget-object v0, p0, Landroid/support/design/widget/SnackbarContentLayout;->actionView:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_43

    .line 138
    iget-object v0, p0, Landroid/support/design/widget/SnackbarContentLayout;->actionView:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAlpha(F)V

    .line 139
    iget-object v0, p0, Landroid/support/design/widget/SnackbarContentLayout;->actionView:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 141
    :cond_43
    return-void
.end method

.method public animateContentOut(II)V
    .registers 8
    .param p1, "delay"    # I
    .param p2, "duration"    # I

    .line 145
    iget-object v0, p0, Landroid/support/design/widget/SnackbarContentLayout;->messageView:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 146
    iget-object v0, p0, Landroid/support/design/widget/SnackbarContentLayout;->messageView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-long v3, p2

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-long v3, p1

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 148
    iget-object v0, p0, Landroid/support/design/widget/SnackbarContentLayout;->actionView:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_43

    .line 149
    iget-object v0, p0, Landroid/support/design/widget/SnackbarContentLayout;->actionView:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAlpha(F)V

    .line 150
    iget-object v0, p0, Landroid/support/design/widget/SnackbarContentLayout;->actionView:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 152
    :cond_43
    return-void
.end method

.method public getActionView()Landroid/widget/Button;
    .registers 2

    .line 66
    iget-object v0, p0, Landroid/support/design/widget/SnackbarContentLayout;->actionView:Landroid/widget/Button;

    return-object v0
.end method

.method public getMessageView()Landroid/widget/TextView;
    .registers 2

    .line 62
    iget-object v0, p0, Landroid/support/design/widget/SnackbarContentLayout;->messageView:Landroid/widget/TextView;

    return-object v0
.end method

.method protected onFinishInflate()V
    .registers 2

    .line 56
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 57
    sget v0, Landroid/support/design/R$id;->snackbar_text:I

    invoke-virtual {p0, v0}, Landroid/support/design/widget/SnackbarContentLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/support/design/widget/SnackbarContentLayout;->messageView:Landroid/widget/TextView;

    .line 58
    sget v0, Landroid/support/design/R$id;->snackbar_action:I

    invoke-virtual {p0, v0}, Landroid/support/design/widget/SnackbarContentLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Landroid/support/design/widget/SnackbarContentLayout;->actionView:Landroid/widget/Button;

    .line 59
    return-void
.end method

.method protected onMeasure(II)V
    .registers 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 71
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 73
    iget v0, p0, Landroid/support/design/widget/SnackbarContentLayout;->maxWidth:I

    if-lez v0, :cond_1a

    invoke-virtual {p0}, Landroid/support/design/widget/SnackbarContentLayout;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Landroid/support/design/widget/SnackbarContentLayout;->maxWidth:I

    if-le v0, v1, :cond_1a

    .line 74
    iget v0, p0, Landroid/support/design/widget/SnackbarContentLayout;->maxWidth:I

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 75
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 78
    :cond_1a
    nop

    .line 79
    invoke-virtual {p0}, Landroid/support/design/widget/SnackbarContentLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/design/R$dimen;->design_snackbar_padding_vertical_2lines:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 80
    .local v0, "multiLineVPadding":I
    nop

    .line 81
    invoke-virtual {p0}, Landroid/support/design/widget/SnackbarContentLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroid/support/design/R$dimen;->design_snackbar_padding_vertical:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 82
    .local v1, "singleLineVPadding":I
    iget-object v2, p0, Landroid/support/design/widget/SnackbarContentLayout;->messageView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-le v2, v4, :cond_40

    const/4 v2, 0x1

    goto :goto_41

    :cond_40
    const/4 v2, 0x0

    .line 84
    .local v2, "isMultiLine":Z
    :goto_41
    const/4 v5, 0x0

    .line 85
    .local v5, "remeasure":Z
    if-eqz v2, :cond_5c

    iget v6, p0, Landroid/support/design/widget/SnackbarContentLayout;->maxInlineActionWidth:I

    if-lez v6, :cond_5c

    iget-object v6, p0, Landroid/support/design/widget/SnackbarContentLayout;->actionView:Landroid/widget/Button;

    .line 87
    invoke-virtual {v6}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result v6

    iget v7, p0, Landroid/support/design/widget/SnackbarContentLayout;->maxInlineActionWidth:I

    if-le v6, v7, :cond_5c

    .line 88
    sub-int v3, v0, v1

    invoke-direct {p0, v4, v0, v3}, Landroid/support/design/widget/SnackbarContentLayout;->updateViewsWithinLayout(III)Z

    move-result v3

    if-eqz v3, :cond_68

    .line 90
    const/4 v5, 0x1

    goto :goto_68

    .line 93
    :cond_5c
    if-eqz v2, :cond_60

    move v4, v0

    goto :goto_61

    :cond_60
    move v4, v1

    .line 94
    .local v4, "messagePadding":I
    :goto_61
    invoke-direct {p0, v3, v4, v4}, Landroid/support/design/widget/SnackbarContentLayout;->updateViewsWithinLayout(III)Z

    move-result v3

    if-eqz v3, :cond_68

    .line 95
    const/4 v5, 0x1

    .line 99
    .end local v4    # "messagePadding":I
    :cond_68
    :goto_68
    if-eqz v5, :cond_6d

    .line 100
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 102
    :cond_6d
    return-void
.end method
