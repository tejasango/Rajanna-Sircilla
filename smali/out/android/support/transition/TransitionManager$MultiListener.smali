.class Landroid/support/transition/TransitionManager$MultiListener;
.super Ljava/lang/Object;
.source "TransitionManager.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/transition/TransitionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MultiListener"
.end annotation


# instance fields
.field mSceneRoot:Landroid/view/ViewGroup;

.field mTransition:Landroid/support/transition/Transition;


# direct methods
.method constructor <init>(Landroid/support/transition/Transition;Landroid/view/ViewGroup;)V
    .registers 3
    .param p1, "transition"    # Landroid/support/transition/Transition;
    .param p2, "sceneRoot"    # Landroid/view/ViewGroup;

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    iput-object p1, p0, Landroid/support/transition/TransitionManager$MultiListener;->mTransition:Landroid/support/transition/Transition;

    .line 235
    iput-object p2, p0, Landroid/support/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    .line 236
    return-void
.end method

.method private removeListeners()V
    .registers 2

    .line 239
    iget-object v0, p0, Landroid/support/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 240
    iget-object v0, p0, Landroid/support/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 241
    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .registers 8

    .line 263
    invoke-direct {p0}, Landroid/support/transition/TransitionManager$MultiListener;->removeListeners()V

    .line 266
    sget-object v0, Landroid/support/transition/TransitionManager;->sPendingTransitions:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_f

    .line 267
    return v1

    .line 272
    :cond_f
    invoke-static {}, Landroid/support/transition/TransitionManager;->getRunningTransitions()Landroid/support/v4/util/ArrayMap;

    move-result-object v0

    .line 273
    .local v0, "runningTransitions":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/view/ViewGroup;Ljava/util/ArrayList<Landroid/support/transition/Transition;>;>;"
    iget-object v2, p0, Landroid/support/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 274
    .local v2, "currentTransitions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/transition/Transition;>;"
    const/4 v3, 0x0

    .line 275
    .local v3, "previousRunningTransitions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/transition/Transition;>;"
    if-nez v2, :cond_2a

    .line 276
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v4

    .line 277
    iget-object v4, p0, Landroid/support/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4, v2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_36

    .line 278
    :cond_2a
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_36

    .line 279
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v3, v4

    .line 281
    :cond_36
    :goto_36
    iget-object v4, p0, Landroid/support/transition/TransitionManager$MultiListener;->mTransition:Landroid/support/transition/Transition;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    iget-object v4, p0, Landroid/support/transition/TransitionManager$MultiListener;->mTransition:Landroid/support/transition/Transition;

    new-instance v5, Landroid/support/transition/TransitionManager$MultiListener$1;

    invoke-direct {v5, p0, v0}, Landroid/support/transition/TransitionManager$MultiListener$1;-><init>(Landroid/support/transition/TransitionManager$MultiListener;Landroid/support/v4/util/ArrayMap;)V

    invoke-virtual {v4, v5}, Landroid/support/transition/Transition;->addListener(Landroid/support/transition/Transition$TransitionListener;)Landroid/support/transition/Transition;

    .line 289
    iget-object v4, p0, Landroid/support/transition/TransitionManager$MultiListener;->mTransition:Landroid/support/transition/Transition;

    iget-object v5, p0, Landroid/support/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/support/transition/Transition;->captureValues(Landroid/view/ViewGroup;Z)V

    .line 290
    if-eqz v3, :cond_65

    .line 291
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_53
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_65

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/transition/Transition;

    .line 292
    .local v5, "runningTransition":Landroid/support/transition/Transition;
    iget-object v6, p0, Landroid/support/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v5, v6}, Landroid/support/transition/Transition;->resume(Landroid/view/View;)V

    .line 293
    .end local v5    # "runningTransition":Landroid/support/transition/Transition;
    goto :goto_53

    .line 295
    :cond_65
    iget-object v4, p0, Landroid/support/transition/TransitionManager$MultiListener;->mTransition:Landroid/support/transition/Transition;

    iget-object v5, p0, Landroid/support/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v4, v5}, Landroid/support/transition/Transition;->playTransition(Landroid/view/ViewGroup;)V

    .line 297
    return v1
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .line 245
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .line 249
    invoke-direct {p0}, Landroid/support/transition/TransitionManager$MultiListener;->removeListeners()V

    .line 251
    sget-object v0, Landroid/support/transition/TransitionManager;->sPendingTransitions:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 252
    invoke-static {}, Landroid/support/transition/TransitionManager;->getRunningTransitions()Landroid/support/v4/util/ArrayMap;

    move-result-object v0

    iget-object v1, p0, Landroid/support/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 253
    .local v0, "runningTransitions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/transition/Transition;>;"
    if-eqz v0, :cond_34

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_34

    .line 254
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/transition/Transition;

    .line 255
    .local v2, "runningTransition":Landroid/support/transition/Transition;
    iget-object v3, p0, Landroid/support/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/support/transition/Transition;->resume(Landroid/view/View;)V

    .line 256
    .end local v2    # "runningTransition":Landroid/support/transition/Transition;
    goto :goto_22

    .line 258
    :cond_34
    iget-object v1, p0, Landroid/support/transition/TransitionManager$MultiListener;->mTransition:Landroid/support/transition/Transition;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/transition/Transition;->clearValues(Z)V

    .line 259
    return-void
.end method
