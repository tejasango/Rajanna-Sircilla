.class Landroid/support/transition/WindowIdApi14;
.super Ljava/lang/Object;
.source "WindowIdApi14.java"

# interfaces
.implements Landroid/support/transition/WindowIdImpl;


# instance fields
.field private final mToken:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "token"    # Landroid/os/IBinder;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Landroid/support/transition/WindowIdApi14;->mToken:Landroid/os/IBinder;

    .line 27
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 31
    instance-of v0, p1, Landroid/support/transition/WindowIdApi14;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Landroid/support/transition/WindowIdApi14;

    iget-object v0, v0, Landroid/support/transition/WindowIdApi14;->mToken:Landroid/os/IBinder;

    iget-object v1, p0, Landroid/support/transition/WindowIdApi14;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0
.end method

.method public hashCode()I
    .registers 2

    .line 36
    iget-object v0, p0, Landroid/support/transition/WindowIdApi14;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
