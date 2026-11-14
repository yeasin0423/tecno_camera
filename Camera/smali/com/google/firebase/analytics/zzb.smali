.class final Lcom/google/firebase/analytics/zzb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/measurement/internal/zzdy;


# instance fields
.field private final synthetic zzaas:Lcom/google/android/gms/internal/measurement/zzaa;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzaa;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/firebase/analytics/zzb;->zzaas:Lcom/google/android/gms/internal/measurement/zzaa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final beginAdUnitExposure(Ljava/lang/String;)V
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/google/firebase/analytics/zzb;->zzaas:Lcom/google/android/gms/internal/measurement/zzaa;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzaa;->beginAdUnitExposure(Ljava/lang/String;)V

    return-void
.end method

.method public final clearConditionalUserProperty(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/google/firebase/analytics/zzb;->zzaas:Lcom/google/android/gms/internal/measurement/zzaa;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzaa;->clearConditionalUserProperty(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final endAdUnitExposure(Ljava/lang/String;)V
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/google/firebase/analytics/zzb;->zzaas:Lcom/google/android/gms/internal/measurement/zzaa;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzaa;->endAdUnitExposure(Ljava/lang/String;)V

    return-void
.end method

.method public final generateEventId()J
    .locals 2

    .line 23
    iget-object p0, p0, Lcom/google/firebase/analytics/zzb;->zzaas:Lcom/google/android/gms/internal/measurement/zzaa;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzaa;->generateEventId()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getConditionalUserProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 32
    iget-object p0, p0, Lcom/google/firebase/analytics/zzb;->zzaas:Lcom/google/android/gms/internal/measurement/zzaa;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzaa;->getConditionalUserProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getCurrentScreenClass()Ljava/lang/String;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/google/firebase/analytics/zzb;->zzaas:Lcom/google/android/gms/internal/measurement/zzaa;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzaa;->getCurrentScreenClass()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getCurrentScreenName()Ljava/lang/String;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/google/firebase/analytics/zzb;->zzaas:Lcom/google/android/gms/internal/measurement/zzaa;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzaa;->getCurrentScreenName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getGmpAppId()Ljava/lang/String;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/google/firebase/analytics/zzb;->zzaas:Lcom/google/android/gms/internal/measurement/zzaa;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzaa;->getGmpAppId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getMaxUserProperties(Ljava/lang/String;)I
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/google/firebase/analytics/zzb;->zzaas:Lcom/google/android/gms/internal/measurement/zzaa;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzaa;->getMaxUserProperties(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final getUserProperties(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 12
    iget-object p0, p0, Lcom/google/firebase/analytics/zzb;->zzaas:Lcom/google/android/gms/internal/measurement/zzaa;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzaa;->getUserProperties(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public final logEventInternal(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/google/firebase/analytics/zzb;->zzaas:Lcom/google/android/gms/internal/measurement/zzaa;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzaa;->logEventInternal(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final logEventInternalNoInterceptor(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V
    .locals 6

    .line 4
    iget-object v0, p0, Lcom/google/firebase/analytics/zzb;->zzaas:Lcom/google/android/gms/internal/measurement/zzaa;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzaa;->logEventInternalNoInterceptor(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V

    return-void
.end method

.method public final setConditionalUserProperty(Landroid/os/Bundle;)V
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/google/firebase/analytics/zzb;->zzaas:Lcom/google/android/gms/internal/measurement/zzaa;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzaa;->setConditionalUserProperty(Landroid/os/Bundle;)V

    return-void
.end method

.method public final setDataCollectionEnabled(Z)V
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/google/firebase/analytics/zzb;->zzaas:Lcom/google/android/gms/internal/measurement/zzaa;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzaa;->setDataCollectionEnabled(Z)V

    return-void
.end method

.method public final setMeasurementEnabled(Z)V
    .locals 0

    .line 8
    iget-object p0, p0, Lcom/google/firebase/analytics/zzb;->zzaas:Lcom/google/android/gms/internal/measurement/zzaa;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzaa;->setMeasurementEnabled(Z)V

    return-void
.end method

.method public final setUserPropertyInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/google/firebase/analytics/zzb;->zzaas:Lcom/google/android/gms/internal/measurement/zzaa;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzaa;->setUserPropertyInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zzda;)V
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/google/firebase/analytics/zzb;->zzaas:Lcom/google/android/gms/internal/measurement/zzaa;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzaa;->zza(Lcom/google/android/gms/measurement/internal/zzda;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zzdb;)V
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/google/firebase/analytics/zzb;->zzaas:Lcom/google/android/gms/internal/measurement/zzaa;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzaa;->zza(Lcom/google/android/gms/measurement/internal/zzdb;)V

    return-void
.end method

.method public final zzb(I)Ljava/lang/Object;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/google/firebase/analytics/zzb;->zzaas:Lcom/google/android/gms/internal/measurement/zzaa;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzaa;->zzb(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/measurement/internal/zzdb;)V
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/google/firebase/analytics/zzb;->zzaas:Lcom/google/android/gms/internal/measurement/zzaa;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzaa;->zzb(Lcom/google/android/gms/measurement/internal/zzdb;)V

    return-void
.end method

.method public final zzj()Ljava/lang/String;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/google/firebase/analytics/zzb;->zzaas:Lcom/google/android/gms/internal/measurement/zzaa;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzaa;->zzj()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
