.class Lcom/transsion/camera/feature/common/CommonModeHelper$ImageFileName;
.super Ljava/lang/Object;
.source "CommonModeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/common/CommonModeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImageFileName"
.end annotation


# instance fields
.field private final mFormat:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/transsion/camera/feature/common/CommonModeHelper$ImageFileName;->mFormat:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public generateTitle(J)Ljava/lang/String;
    .locals 1

    .line 86
    new-instance v0, Ljava/sql/Date;

    invoke-direct {v0, p1, p2}, Ljava/sql/Date;-><init>(J)V

    .line 87
    new-instance p1, Ljava/text/SimpleDateFormat;

    iget-object p0, p0, Lcom/transsion/camera/feature/common/CommonModeHelper$ImageFileName;->mFormat:Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
