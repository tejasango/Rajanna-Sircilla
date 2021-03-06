.class Landroid/support/v4/media/MediaSessionManagerImplApi21;
.super Landroid/support/v4/media/MediaSessionManagerImplBase;
.source "MediaSessionManagerImplApi21.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x15
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 28
    invoke-direct {p0, p1}, Landroid/support/v4/media/MediaSessionManagerImplBase;-><init>(Landroid/content/Context;)V

    .line 29
    iput-object p1, p0, Landroid/support/v4/media/MediaSessionManagerImplApi21;->mContext:Landroid/content/Context;

    .line 30
    return-void
.end method

.method private hasMediaControlPermission(Landroid/support/v4/media/MediaSessionManager$RemoteUserInfoImpl;)Z
    .registers 6
    .param p1, "userInfo"    # Landroid/support/v4/media/MediaSessionManager$RemoteUserInfoImpl;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 44
    invoke-virtual {p0}, Landroid/support/v4/media/MediaSessionManagerImplApi21;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MEDIA_CONTENT_CONTROL"

    .line 46
    invoke-interface {p1}, Landroid/support/v4/media/MediaSessionManager$RemoteUserInfoImpl;->getPid()I

    move-result v2

    invoke-interface {p1}, Landroid/support/v4/media/MediaSessionManager$RemoteUserInfoImpl;->getUid()I

    move-result v3

    .line 44
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method


# virtual methods
.method public isTrustedForMediaControl(Landroid/support/v4/media/MediaSessionManager$RemoteUserInfoImpl;)Z
    .registers 3
    .param p1, "userInfo"    # Landroid/support/v4/media/MediaSessionManager$RemoteUserInfoImpl;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 36
    invoke-direct {p0, p1}, Landroid/support/v4/media/MediaSessionManagerImplApi21;->hasMediaControlPermission(Landroid/support/v4/media/MediaSessionManager$RemoteUserInfoImpl;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-super {p0, p1}, Landroid/support/v4/media/MediaSessionManagerImplBase;->isTrustedForMediaControl(Landroid/support/v4/media/MediaSessionManager$RemoteUserInfoImpl;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method
