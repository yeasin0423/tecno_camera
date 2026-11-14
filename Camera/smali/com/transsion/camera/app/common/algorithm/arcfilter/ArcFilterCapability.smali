.class public Lcom/transsion/camera/app/common/algorithm/arcfilter/ArcFilterCapability;
.super Ljava/lang/Object;
.source "ArcFilterCapability.java"


# static fields
.field private static sSupportedFilterIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 24

    const-string v0, "0"

    const-string v1, "3"

    const-string v2, "5"

    const-string v3, "6"

    const-string v4, "10"

    const-string v5, "13"

    const-string v6, "14"

    const-string v7, "15"

    const-string v8, "17"

    const-string v9, "18"

    const-string v10, "19"

    const-string v11, "20"

    const-string v12, "21"

    const-string v13, "22"

    const-string v14, "23"

    const-string v15, "24"

    const-string v16, "25"

    const-string v17, "26"

    const-string v18, "27"

    const-string v19, "28"

    const-string v20, "29"

    const-string v21, "35"

    const-string v22, "36"

    const-string v23, "40"

    .line 20
    filled-new-array/range {v0 .. v23}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/app/common/algorithm/arcfilter/ArcFilterCapability;->sSupportedFilterIds:Ljava/util/List;

    return-void
.end method

.method public static getSupportedFilterIds()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/transsion/camera/app/common/algorithm/arcfilter/ArcFilterCapability;->sSupportedFilterIds:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
