.class Lcom/google/android/gms/common/api/internal/zaa$zaa;
.super Lcom/google/android/gms/common/api/internal/LifecycleCallback;


# annotations
.annotation build Landroid/support/annotation/VisibleForTesting;
    otherwise = 0x2
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/api/internal/zaa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "zaa"
.end annotation


# instance fields
.field private zacl:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/common/api/internal/LifecycleFragment;)V
    .registers 3

    .line 8
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;-><init>(Lcom/google/android/gms/common/api/internal/LifecycleFragment;)V

    .line 9
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zaa$zaa;->zacl:Ljava/util/List;

    .line 10
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zaa$zaa;->mLifecycleFragment:Lcom/google/android/gms/common/api/internal/LifecycleFragment;

    const-string v0, "LifecycleObserverOnStop"

    invoke-interface {p1, v0, p0}, Lcom/google/android/gms/common/api/internal/LifecycleFragment;->addCallback(Ljava/lang/String;Lcom/google/android/gms/common/api/internal/LifecycleCallback;)V

    .line 11
    return-void
.end method

.method private static zaa(Landroid/app/Activity;)Lcom/google/android/gms/common/api/internal/zaa$zaa;
    .registers 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    invoke-static {p0}, Lcom/google/android/gms/common/api/internal/zaa$zaa;->getFragment(Landroid/app/Activity;)Lcom/google/android/gms/common/api/internal/LifecycleFragment;

    move-result-object v0

    .line 3
    const-string v1, "LifecycleObserverOnStop"

    const-class v2, Lcom/google/android/gms/common/api/internal/zaa$zaa;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/common/api/internal/LifecycleFragment;->getCallbackOrNull(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/internal/zaa$zaa;

    .line 4
    if-nez v1, :cond_16

    .line 5
    new-instance v1, Lcom/google/android/gms/common/api/internal/zaa$zaa;

    invoke-direct {v1, v0}, Lcom/google/android/gms/common/api/internal/zaa$zaa;-><init>(Lcom/google/android/gms/common/api/internal/LifecycleFragment;)V

    .line 6
    :cond_16
    monitor-exit p0

    return-object v1

    .line 7
    :catchall_18
    move-exception v0

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method static synthetic zaa(Lcom/google/android/gms/common/api/internal/zaa$zaa;Ljava/lang/Runnable;)V
    .registers 2

    .line 23
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/zaa$zaa;->zaa(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final declared-synchronized zaa(Ljava/lang/Runnable;)V
    .registers 3

    monitor-enter p0

    .line 12
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaa$zaa;->zacl:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 13
    monitor-exit p0

    return-void

    .line 11
    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic zab(Landroid/app/Activity;)Lcom/google/android/gms/common/api/internal/zaa$zaa;
    .registers 1

    .line 22
    invoke-static {p0}, Lcom/google/android/gms/common/api/internal/zaa$zaa;->zaa(Landroid/app/Activity;)Lcom/google/android/gms/common/api/internal/zaa$zaa;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onStop()V
    .registers 3
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .line 14
    monitor-enter p0

    .line 15
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaa$zaa;->zacl:Ljava/util/List;

    .line 16
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/common/api/internal/zaa$zaa;->zacl:Ljava/util/List;

    .line 17
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_20

    .line 18
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 19
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 20
    goto :goto_f

    .line 21
    :cond_1f
    return-void

    .line 17
    :catchall_20
    move-exception v0

    :try_start_21
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v0
.end method
