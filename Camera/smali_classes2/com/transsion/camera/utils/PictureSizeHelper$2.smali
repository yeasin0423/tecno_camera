.class Lcom/transsion/camera/utils/PictureSizeHelper$2;
.super Ljava/util/HashMap;
.source "PictureSizeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/utils/PictureSizeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/Double;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final count:I


# direct methods
.method constructor <init>()V
    .locals 2

    .line 48
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 49
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    iput v0, p0, Lcom/transsion/camera/utils/PictureSizeHelper$2;->count:I

    .line 51
    invoke-static {}, Lcom/transsion/camera/utils/PictureSizeHelper;->access$100()Ljava/lang/Double;

    move-result-object v0

    iget v1, p0, Lcom/transsion/camera/utils/PictureSizeHelper$2;->count:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    invoke-static {}, Lcom/transsion/camera/utils/PictureSizeHelper;->access$000()Ljava/lang/Double;

    move-result-object v0

    iget v1, p0, Lcom/transsion/camera/utils/PictureSizeHelper$2;->count:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
