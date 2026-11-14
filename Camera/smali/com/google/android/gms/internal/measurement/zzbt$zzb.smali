.class public final Lcom/google/android/gms/internal/measurement/zzbt$zzb;
.super Lcom/google/android/gms/internal/measurement/zzez;

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzgj;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zzbt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/measurement/zzbt$zzb$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzez<",
        "Lcom/google/android/gms/internal/measurement/zzbt$zzb;",
        "Lcom/google/android/gms/internal/measurement/zzbt$zzb$zza;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zzgj;"
    }
.end annotation


# static fields
.field private static volatile zztq:Lcom/google/android/gms/internal/measurement/zzgs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzgs<",
            "Lcom/google/android/gms/internal/measurement/zzbt$zzb;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzuw:Lcom/google/android/gms/internal/measurement/zzbt$zzb;


# instance fields
.field private zztj:I

.field private zzuu:I

.field private zzuv:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzbt$zzb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzbt$zzb;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzbt$zzb;->zzuw:Lcom/google/android/gms/internal/measurement/zzbt$zzb;

    .line 37
    const-class v1, Lcom/google/android/gms/internal/measurement/zzbt$zzb;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzez;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzez;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzez;-><init>()V

    return-void
.end method

.method private final setIndex(I)V
    .locals 1

    .line 5
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzbt$zzb;->zztj:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzbt$zzb;->zztj:I

    .line 6
    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzbt$zzb;->zzuu:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzbt$zzb;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzbt$zzb;->setIndex(I)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzbt$zzb;J)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzbt$zzb;->zzaf(J)V

    return-void
.end method

.method private final zzaf(J)V
    .locals 1

    .line 10
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzbt$zzb;->zztj:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzbt$zzb;->zztj:I

    .line 11
    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/zzbt$zzb;->zzuv:J

    return-void
.end method

.method public static zzhg()Lcom/google/android/gms/internal/measurement/zzbt$zzb$zza;
    .locals 1

    .line 13
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzbt$zzb;->zzuw:Lcom/google/android/gms/internal/measurement/zzbt$zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzez;->zzmg()Lcom/google/android/gms/internal/measurement/zzez$zza;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzbt$zzb$zza;

    return-object v0
.end method

.method static synthetic zzhh()Lcom/google/android/gms/internal/measurement/zzbt$zzb;
    .locals 1

    .line 33
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzbt$zzb;->zzuw:Lcom/google/android/gms/internal/measurement/zzbt$zzb;

    return-object v0
.end method


# virtual methods
.method public final getIndex()I
    .locals 0

    .line 4
    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzbt$zzb;->zzuu:I

    return p0
.end method

.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 14
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzbu;->zzti:[I

    const/4 p2, 0x1

    sub-int/2addr p1, p2

    aget p0, p0, p1

    const/4 p1, 0x0

    packed-switch p0, :pswitch_data_0

    .line 32
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_0
    return-object p1

    .line 30
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 21
    :pswitch_2
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzbt$zzb;->zztq:Lcom/google/android/gms/internal/measurement/zzgs;

    if-nez p0, :cond_1

    .line 23
    const-class p1, Lcom/google/android/gms/internal/measurement/zzbt$zzb;

    monitor-enter p1

    .line 24
    :try_start_0
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzbt$zzb;->zztq:Lcom/google/android/gms/internal/measurement/zzgs;

    if-nez p0, :cond_0

    .line 26
    new-instance p0, Lcom/google/android/gms/internal/measurement/zzez$zzb;

    sget-object p2, Lcom/google/android/gms/internal/measurement/zzbt$zzb;->zzuw:Lcom/google/android/gms/internal/measurement/zzbt$zzb;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/measurement/zzez$zzb;-><init>(Lcom/google/android/gms/internal/measurement/zzez;)V

    .line 27
    sput-object p0, Lcom/google/android/gms/internal/measurement/zzbt$zzb;->zztq:Lcom/google/android/gms/internal/measurement/zzgs;

    .line 28
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-object p0

    .line 20
    :pswitch_3
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzbt$zzb;->zzuw:Lcom/google/android/gms/internal/measurement/zzbt$zzb;

    return-object p0

    :pswitch_4
    const/4 p0, 0x3

    new-array p0, p0, [Ljava/lang/Object;

    const/4 p1, 0x0

    const-string p3, "zztj"

    aput-object p3, p0, p1

    const-string p1, "zzuu"

    aput-object p1, p0, p2

    const/4 p1, 0x2

    const-string p2, "zzuv"

    aput-object p2, p0, p1

    .line 19
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzbt$zzb;->zzuw:Lcom/google/android/gms/internal/measurement/zzbt$zzb;

    const-string p2, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0004\u0000\u0002\u0002\u0001"

    invoke-static {p1, p2, p0}, Lcom/google/android/gms/internal/measurement/zzez;->zza(Lcom/google/android/gms/internal/measurement/zzgh;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 16
    :pswitch_5
    new-instance p0, Lcom/google/android/gms/internal/measurement/zzbt$zzb$zza;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzbt$zzb$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzbu;)V

    return-object p0

    .line 15
    :pswitch_6
    new-instance p0, Lcom/google/android/gms/internal/measurement/zzbt$zzb;

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzbt$zzb;-><init>()V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzhd()Z
    .locals 1

    .line 3
    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzbt$zzb;->zztj:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final zzhe()Z
    .locals 0

    .line 8
    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzbt$zzb;->zztj:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final zzhf()J
    .locals 2

    .line 9
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzbt$zzb;->zzuv:J

    return-wide v0
.end method
