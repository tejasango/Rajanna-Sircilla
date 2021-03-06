.class public Landroid/support/transition/ChangeClipBounds;
.super Landroid/support/transition/Transition;
.source "ChangeClipBounds.java"


# static fields
.field private static final PROPNAME_BOUNDS:Ljava/lang/String; = "android:clipBounds:bounds"

.field private static final PROPNAME_CLIP:Ljava/lang/String; = "android:clipBounds:clip"

.field private static final sTransitionProperties:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 42
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android:clipBounds:clip"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Landroid/support/transition/ChangeClipBounds;->sTransitionProperties:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 51
    invoke-direct {p0}, Landroid/support/transition/Transition;-><init>()V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 55
    invoke-direct {p0, p1, p2}, Landroid/support/transition/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    return-void
.end method

.method private captureValues(Landroid/support/transition/TransitionValues;)V
    .registers 8
    .param p1, "values"    # Landroid/support/transition/TransitionValues;

    .line 59
    iget-object v0, p1, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    .line 60
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_b

    .line 61
    return-void

    .line 64
    :cond_b
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getClipBounds(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    .line 65
    .local v1, "clip":Landroid/graphics/Rect;
    iget-object v2, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:clipBounds:clip"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    if-nez v1, :cond_2d

    .line 67
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 68
    .local v2, "bounds":Landroid/graphics/Rect;
    iget-object v3, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v4, "android:clipBounds:bounds"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .end local v2    # "bounds":Landroid/graphics/Rect;
    :cond_2d
    return-void
.end method


# virtual methods
.method public captureEndValues(Landroid/support/transition/TransitionValues;)V
    .registers 2
    .param p1, "transitionValues"    # Landroid/support/transition/TransitionValues;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 79
    invoke-direct {p0, p1}, Landroid/support/transition/ChangeClipBounds;->captureValues(Landroid/support/transition/TransitionValues;)V

    .line 80
    return-void
.end method

.method public captureStartValues(Landroid/support/transition/TransitionValues;)V
    .registers 2
    .param p1, "transitionValues"    # Landroid/support/transition/TransitionValues;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 74
    invoke-direct {p0, p1}, Landroid/support/transition/ChangeClipBounds;->captureValues(Landroid/support/transition/TransitionValues;)V

    .line 75
    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 13
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "startValues"    # Landroid/support/transition/TransitionValues;
    .param p3, "endValues"    # Landroid/support/transition/TransitionValues;

    .line 85
    const/4 v0, 0x0

    if-eqz p2, :cond_87

    if-eqz p3, :cond_87

    iget-object v1, p2, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:clipBounds:clip"

    .line 86
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_87

    iget-object v1, p3, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:clipBounds:clip"

    .line 87
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    goto :goto_87

    .line 90
    :cond_1a
    iget-object v1, p2, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:clipBounds:clip"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 91
    .local v1, "start":Landroid/graphics/Rect;
    iget-object v2, p3, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:clipBounds:clip"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 92
    .local v2, "end":Landroid/graphics/Rect;
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_34

    const/4 v5, 0x1

    goto :goto_35

    :cond_34
    const/4 v5, 0x0

    .line 93
    .local v5, "endIsNull":Z
    :goto_35
    if-nez v1, :cond_3a

    if-nez v2, :cond_3a

    .line 94
    return-object v0

    .line 97
    :cond_3a
    if-nez v1, :cond_48

    .line 98
    iget-object v6, p2, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v7, "android:clipBounds:bounds"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v1, v6

    check-cast v1, Landroid/graphics/Rect;

    goto :goto_55

    .line 99
    :cond_48
    if-nez v2, :cond_55

    .line 100
    iget-object v6, p3, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v7, "android:clipBounds:bounds"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v2, v6

    check-cast v2, Landroid/graphics/Rect;

    .line 102
    :cond_55
    :goto_55
    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5c

    .line 103
    return-object v0

    .line 106
    :cond_5c
    iget-object v0, p3, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setClipBounds(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 107
    new-instance v0, Landroid/support/transition/RectEvaluator;

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v0, v6}, Landroid/support/transition/RectEvaluator;-><init>(Landroid/graphics/Rect;)V

    .line 108
    .local v0, "evaluator":Landroid/support/transition/RectEvaluator;
    iget-object v6, p3, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    sget-object v7, Landroid/support/transition/ViewUtils;->CLIP_BOUNDS:Landroid/util/Property;

    const/4 v8, 0x2

    new-array v8, v8, [Landroid/graphics/Rect;

    aput-object v1, v8, v3

    aput-object v2, v8, v4

    invoke-static {v6, v7, v0, v8}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 110
    .local v3, "animator":Landroid/animation/ObjectAnimator;
    if-eqz v5, :cond_86

    .line 111
    iget-object v4, p3, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    .line 112
    .local v4, "endView":Landroid/view/View;
    new-instance v6, Landroid/support/transition/ChangeClipBounds$1;

    invoke-direct {v6, p0, v4}, Landroid/support/transition/ChangeClipBounds$1;-><init>(Landroid/support/transition/ChangeClipBounds;Landroid/view/View;)V

    invoke-virtual {v3, v6}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 119
    .end local v4    # "endView":Landroid/view/View;
    :cond_86
    return-object v3

    .line 88
    .end local v0    # "evaluator":Landroid/support/transition/RectEvaluator;
    .end local v1    # "start":Landroid/graphics/Rect;
    .end local v2    # "end":Landroid/graphics/Rect;
    .end local v3    # "animator":Landroid/animation/ObjectAnimator;
    .end local v5    # "endIsNull":Z
    :cond_87
    :goto_87
    return-object v0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .registers 2

    .line 48
    sget-object v0, Landroid/support/transition/ChangeClipBounds;->sTransitionProperties:[Ljava/lang/String;

    return-object v0
.end method
