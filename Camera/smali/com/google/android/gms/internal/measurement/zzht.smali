.class public final Lcom/google/android/gms/internal/measurement/zzht;
.super Ljava/util/AbstractList;

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzfq;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Ljava/lang/String;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zzfq;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field private final zzakr:Lcom/google/android/gms/internal/measurement/zzfq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/zzfq;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzht;->zzakr:Lcom/google/android/gms/internal/measurement/zzfq;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzht;)Lcom/google/android/gms/internal/measurement/zzfq;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzht;->zzakr:Lcom/google/android/gms/internal/measurement/zzfq;

    return-object p0
.end method


# virtual methods
.method public final synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzht;->zzakr:Lcom/google/android/gms/internal/measurement/zzfq;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 8
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzhv;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzhv;-><init>(Lcom/google/android/gms/internal/measurement/zzht;)V

    return-object v0
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzhu;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/zzhu;-><init>(Lcom/google/android/gms/internal/measurement/zzht;I)V

    return-object v0
.end method

.method public final size()I
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzht;->zzakr:Lcom/google/android/gms/internal/measurement/zzfq;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final zzaw(I)Ljava/lang/Object;
    .locals 0

    .line 4
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzht;->zzakr:Lcom/google/android/gms/internal/measurement/zzfq;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/measurement/zzfq;->zzaw(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final zzc(Lcom/google/android/gms/internal/measurement/zzdp;)V
    .locals 0

    .line 6
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final zzng()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 9
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzht;->zzakr:Lcom/google/android/gms/internal/measurement/zzfq;

    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzfq;->zzng()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final zznh()Lcom/google/android/gms/internal/measurement/zzfq;
    .locals 0

    return-object p0
.end method
