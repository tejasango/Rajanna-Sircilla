.class Landroid/support/transition/FragmentTransitionSupport$3;
.super Ljava/lang/Object;
.source "FragmentTransitionSupport.java"

# interfaces
.implements Landroid/support/transition/Transition$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/transition/FragmentTransitionSupport;->scheduleRemoveTargets(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/transition/FragmentTransitionSupport;

.field final synthetic val$enterTransition:Ljava/lang/Object;

.field final synthetic val$enteringViews:Ljava/util/ArrayList;

.field final synthetic val$exitTransition:Ljava/lang/Object;

.field final synthetic val$exitingViews:Ljava/util/ArrayList;

.field final synthetic val$sharedElementTransition:Ljava/lang/Object;

.field final synthetic val$sharedElementsIn:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Landroid/support/transition/FragmentTransitionSupport;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
    .registers 8
    .param p1, "this$0"    # Landroid/support/transition/FragmentTransitionSupport;

    .line 219
    iput-object p1, p0, Landroid/support/transition/FragmentTransitionSupport$3;->this$0:Landroid/support/transition/FragmentTransitionSupport;

    iput-object p2, p0, Landroid/support/transition/FragmentTransitionSupport$3;->val$enterTransition:Ljava/lang/Object;

    iput-object p3, p0, Landroid/support/transition/FragmentTransitionSupport$3;->val$enteringViews:Ljava/util/ArrayList;

    iput-object p4, p0, Landroid/support/transition/FragmentTransitionSupport$3;->val$exitTransition:Ljava/lang/Object;

    iput-object p5, p0, Landroid/support/transition/FragmentTransitionSupport$3;->val$exitingViews:Ljava/util/ArrayList;

    iput-object p6, p0, Landroid/support/transition/FragmentTransitionSupport$3;->val$sharedElementTransition:Ljava/lang/Object;

    iput-object p7, p0, Landroid/support/transition/FragmentTransitionSupport$3;->val$sharedElementsIn:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionCancel(Landroid/support/transition/Transition;)V
    .registers 2
    .param p1, "transition"    # Landroid/support/transition/Transition;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 239
    return-void
.end method

.method public onTransitionEnd(Landroid/support/transition/Transition;)V
    .registers 2
    .param p1, "transition"    # Landroid/support/transition/Transition;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 235
    return-void
.end method

.method public onTransitionPause(Landroid/support/transition/Transition;)V
    .registers 2
    .param p1, "transition"    # Landroid/support/transition/Transition;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 243
    return-void
.end method

.method public onTransitionResume(Landroid/support/transition/Transition;)V
    .registers 2
    .param p1, "transition"    # Landroid/support/transition/Transition;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 247
    return-void
.end method

.method public onTransitionStart(Landroid/support/transition/Transition;)V
    .registers 6
    .param p1, "transition"    # Landroid/support/transition/Transition;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 222
    iget-object v0, p0, Landroid/support/transition/FragmentTransitionSupport$3;->val$enterTransition:Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 223
    iget-object v0, p0, Landroid/support/transition/FragmentTransitionSupport$3;->this$0:Landroid/support/transition/FragmentTransitionSupport;

    iget-object v2, p0, Landroid/support/transition/FragmentTransitionSupport$3;->val$enterTransition:Ljava/lang/Object;

    iget-object v3, p0, Landroid/support/transition/FragmentTransitionSupport$3;->val$enteringViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3, v1}, Landroid/support/transition/FragmentTransitionSupport;->replaceTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 225
    :cond_e
    iget-object v0, p0, Landroid/support/transition/FragmentTransitionSupport$3;->val$exitTransition:Ljava/lang/Object;

    if-eqz v0, :cond_1b

    .line 226
    iget-object v0, p0, Landroid/support/transition/FragmentTransitionSupport$3;->this$0:Landroid/support/transition/FragmentTransitionSupport;

    iget-object v2, p0, Landroid/support/transition/FragmentTransitionSupport$3;->val$exitTransition:Ljava/lang/Object;

    iget-object v3, p0, Landroid/support/transition/FragmentTransitionSupport$3;->val$exitingViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3, v1}, Landroid/support/transition/FragmentTransitionSupport;->replaceTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 228
    :cond_1b
    iget-object v0, p0, Landroid/support/transition/FragmentTransitionSupport$3;->val$sharedElementTransition:Ljava/lang/Object;

    if-eqz v0, :cond_28

    .line 229
    iget-object v0, p0, Landroid/support/transition/FragmentTransitionSupport$3;->this$0:Landroid/support/transition/FragmentTransitionSupport;

    iget-object v2, p0, Landroid/support/transition/FragmentTransitionSupport$3;->val$sharedElementTransition:Ljava/lang/Object;

    iget-object v3, p0, Landroid/support/transition/FragmentTransitionSupport$3;->val$sharedElementsIn:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3, v1}, Landroid/support/transition/FragmentTransitionSupport;->replaceTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 231
    :cond_28
    return-void
.end method
