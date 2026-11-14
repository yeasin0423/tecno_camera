.class final Lcom/google/android/gms/internal/measurement/zzdq;
.super Lcom/google/android/gms/internal/measurement/zzds;


# instance fields
.field private final limit:I

.field private position:I

.field private final synthetic zzacc:Lcom/google/android/gms/internal/measurement/zzdp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzdp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzdq;->zzacc:Lcom/google/android/gms/internal/measurement/zzdp;

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzds;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzdq;->position:I

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzdq;->zzacc:Lcom/google/android/gms/internal/measurement/zzdp;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzdp;->size()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzdq;->limit:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .line 4
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzdq;->position:I

    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzdq;->limit:I

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final nextByte()B
    .locals 2

    .line 5
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzdq;->position:I

    .line 6
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzdq;->limit:I

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    .line 8
    iput v1, p0, Lcom/google/android/gms/internal/measurement/zzdq;->position:I

    .line 9
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzdq;->zzacc:Lcom/google/android/gms/internal/measurement/zzdp;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzdp;->zzs(I)B

    move-result p0

    return p0

    .line 7
    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method
