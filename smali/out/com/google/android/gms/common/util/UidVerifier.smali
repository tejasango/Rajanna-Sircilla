.class public final Lcom/google/android/gms/common/util/UidVerifier;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isGooglePlayServicesUid(Landroid/content/Context;I)Z
    .registers 5
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 2
    const-string v0, "com.google.android.gms"

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/util/UidVerifier;->uidHasPackageName(Landroid/content/Context;ILjava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_a

    .line 3
    return v0

    .line 4
    :cond_a
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 5
    :try_start_e
    const-string v1, "com.google.android.gms"

    const/16 v2, 0x40

    .line 6
    invoke-virtual {p1, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1
    :try_end_16
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e .. :try_end_16} :catch_20

    .line 7
    nop

    .line 12
    invoke-static {p0}, Lcom/google/android/gms/common/GoogleSignatureVerifier;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/common/GoogleSignatureVerifier;

    move-result-object p0

    .line 13
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/GoogleSignatureVerifier;->isGooglePublicSignedPackage(Landroid/content/pm/PackageInfo;)Z

    move-result p0

    .line 14
    return p0

    .line 8
    :catch_20
    move-exception p0

    .line 9
    const-string p0, "UidVerifier"

    const/4 p1, 0x3

    invoke-static {p0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_31

    .line 10
    const-string p0, "UidVerifier"

    const-string p1, "Package manager can\'t find google play services package, defaulting to false"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    :cond_31
    return v0
.end method

.method public static uidHasPackageName(Landroid/content/Context;ILjava/lang/String;)Z
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 15
    invoke-static {p0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->zzb(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method
