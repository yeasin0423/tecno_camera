.class public final Lcom/google/firebase/iid/zzal;
.super Ljava/lang/Exception;


# instance fields
.field private final errorCode:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 2
    iput p1, p0, Lcom/google/firebase/iid/zzal;->errorCode:I

    return-void
.end method


# virtual methods
.method public final getErrorCode()I
    .locals 0

    .line 4
    iget p0, p0, Lcom/google/firebase/iid/zzal;->errorCode:I

    return p0
.end method
