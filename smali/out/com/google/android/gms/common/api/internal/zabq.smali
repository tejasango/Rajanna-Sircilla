.class public final Lcom/google/android/gms/common/api/internal/zabq;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final zajh:Lcom/google/android/gms/common/api/internal/zabr;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/zabr;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zabq;->zajh:Lcom/google/android/gms/common/api/internal/zabr;

    .line 3
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 10
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 11
    nop

    .line 12
    if-eqz p1, :cond_c

    .line 13
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    goto :goto_d

    .line 14
    :cond_c
    const/4 p1, 0x0

    :goto_d
    const-string p2, "com.google.android.gms"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 15
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zabq;->zajh:Lcom/google/android/gms/common/api/internal/zabr;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/zabr;->zas()V

    .line 16
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zabq;->unregister()V

    .line 17
    :cond_1d
    return-void
.end method

.method public final declared-synchronized unregister()V
    .registers 2

    monitor-enter p0

    .line 6
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabq;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_a

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabq;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 8
    :cond_a
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zabq;->mContext:Landroid/content/Context;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 9
    monitor-exit p0

    return-void

    .line 5
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final zac(Landroid/content/Context;)V
    .registers 2

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zabq;->mContext:Landroid/content/Context;

    .line 5
    return-void
.end method
