.class public final Lcom/google/android/gms/common/api/internal/zaa;
.super Lcom/google/android/gms/common/api/internal/ActivityLifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/api/internal/zaa$zaa;
    }
.end annotation


# instance fields
.field private final zack:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/gms/common/api/internal/zaa$zaa;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zaa$zaa;->zab(Landroid/app/Activity;)Lcom/google/android/gms/common/api/internal/zaa$zaa;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/zaa;-><init>(Lcom/google/android/gms/common/api/internal/zaa$zaa;)V

    .line 2
    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/common/api/internal/zaa$zaa;)V
    .registers 3
    .annotation build Landroid/support/annotation/VisibleForTesting;
        otherwise = 0x2
    .end annotation

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/ActivityLifecycleObserver;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zaa;->zack:Ljava/lang/ref/WeakReference;

    .line 5
    return-void
.end method


# virtual methods
.method public final onStopCallOnce(Ljava/lang/Runnable;)Lcom/google/android/gms/common/api/internal/ActivityLifecycleObserver;
    .registers 3

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaa;->zack:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/zaa$zaa;

    .line 7
    if-eqz v0, :cond_e

    .line 9
    invoke-static {v0, p1}, Lcom/google/android/gms/common/api/internal/zaa$zaa;->zaa(Lcom/google/android/gms/common/api/internal/zaa$zaa;Ljava/lang/Runnable;)V

    .line 10
    return-object p0

    .line 8
    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The target activity has already been GC\'d"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
