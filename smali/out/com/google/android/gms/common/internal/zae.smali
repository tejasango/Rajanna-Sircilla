.class final Lcom/google/android/gms/common/internal/zae;
.super Lcom/google/android/gms/common/internal/DialogRedirect;


# instance fields
.field private final synthetic val$requestCode:I

.field private final synthetic zaog:Landroid/content/Intent;

.field private final synthetic zaoh:Lcom/google/android/gms/common/api/internal/LifecycleFragment;


# direct methods
.method constructor <init>(Landroid/content/Intent;Lcom/google/android/gms/common/api/internal/LifecycleFragment;I)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/common/internal/zae;->zaog:Landroid/content/Intent;

    iput-object p2, p0, Lcom/google/android/gms/common/internal/zae;->zaoh:Lcom/google/android/gms/common/api/internal/LifecycleFragment;

    iput p3, p0, Lcom/google/android/gms/common/internal/zae;->val$requestCode:I

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/DialogRedirect;-><init>()V

    return-void
.end method


# virtual methods
.method public final redirect()V
    .registers 4

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zae;->zaog:Landroid/content/Intent;

    if-eqz v0, :cond_d

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zae;->zaoh:Lcom/google/android/gms/common/api/internal/LifecycleFragment;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zae;->zaog:Landroid/content/Intent;

    iget v2, p0, Lcom/google/android/gms/common/internal/zae;->val$requestCode:I

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/common/api/internal/LifecycleFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 4
    :cond_d
    return-void
.end method
