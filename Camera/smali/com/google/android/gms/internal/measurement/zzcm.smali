.class final synthetic Lcom/google/android/gms/internal/measurement/zzcm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzcr;


# instance fields
.field private final zzzo:Lcom/google/android/gms/internal/measurement/zzcl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzcl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzcm;->zzzo:Lcom/google/android/gms/internal/measurement/zzcl;

    return-void
.end method


# virtual methods
.method public final zzjn()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzcm;->zzzo:Lcom/google/android/gms/internal/measurement/zzcl;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzcl;->zzjm()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method
