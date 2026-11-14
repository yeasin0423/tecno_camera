.class public Lcom/transsion/camera/feature/arcfilter/setting/ArcFilterInfo;
.super Ljava/lang/Object;
.source "ArcFilterInfo.java"


# static fields
.field private static final BACK_CAMERA_PD_DEFINED_FILTER_STR_IDS:[Ljava/lang/String;

.field private static final BACK_CAMERA_SUPPORT_FILTER_IDS:[I

.field private static final CAPTURE_PREVIEW_FILTER_ID_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final DRAWABLE_RED_FILTER_ID_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final FRONT_CAMERA_PD_DEFINED_FILTER_STR_IDS:[Ljava/lang/String;

.field private static final FRONT_CAMERA_SUPPORT_FILTER_IDS:[I

.field private static final PERISCOPE_CAMERA_ID:Ljava/lang/String;

.field private static final PREVIEW_CAPTURE_FILTER_ID_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SAT_CAMERA_ID:Ljava/lang/String;

.field private static final STRING_RES_FILTER_ID_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final TELE_CAMERA_ID:Ljava/lang/String;

.field private static final VIDEO_CAMERA_ID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 18
    new-instance v0, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilterInfo$1;

    invoke-direct {v0}, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilterInfo$1;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilterInfo;->PREVIEW_CAPTURE_FILTER_ID_MAP:Ljava/util/HashMap;

    .line 40
    new-instance v0, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilterInfo$2;

    invoke-direct {v0}, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilterInfo$2;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilterInfo;->CAPTURE_PREVIEW_FILTER_ID_MAP:Ljava/util/HashMap;

    const/16 v0, 0x8

    new-array v1, v0, [I

    .line 62
    fill-array-data v1, :array_0

    sput-object v1, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilterInfo;->FRONT_CAMERA_SUPPORT_FILTER_IDS:[I

    new-array v1, v0, [I

    .line 73
    fill-array-data v1, :array_1

    sput-object v1, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilterInfo;->BACK_CAMERA_SUPPORT_FILTER_IDS:[I

    new-array v1, v0, [Ljava/lang/String;

    const v2, 0x10000182

    .line 99
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    const v3, 0x100001a6

    .line 100
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v1, v6

    const v5, 0x10000187

    .line 101
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    aput-object v7, v1, v8

    const v7, 0x100001ac

    .line 102
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x3

    aput-object v7, v1, v9

    const v7, 0x10000189

    .line 103
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x4

    aput-object v7, v1, v10

    const v7, 0x100001a5

    .line 104
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x5

    aput-object v11, v1, v12

    const v11, 0x100001a8

    .line 105
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x6

    aput-object v11, v1, v13

    const v11, 0x100001a7

    .line 106
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x7

    aput-object v14, v1, v15

    sput-object v1, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilterInfo;->BACK_CAMERA_PD_DEFINED_FILTER_STR_IDS:[Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/String;

    .line 110
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 111
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    .line 112
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    const v1, 0x1000018b

    .line 113
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v9

    const v1, 0x100001ae

    .line 114
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v10

    const v1, 0x100001b1

    .line 115
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v12

    .line 116
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v13

    .line 117
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v15

    sput-object v0, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilterInfo;->FRONT_CAMERA_PD_DEFINED_FILTER_STR_IDS:[Ljava/lang/String;

    .line 120
    new-instance v0, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilterInfo$3;

    invoke-direct {v0}, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilterInfo$3;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilterInfo;->STRING_RES_FILTER_ID_MAP:Ljava/util/HashMap;

    .line 142
    new-instance v0, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilterInfo$4;

    invoke-direct {v0}, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilterInfo$4;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilterInfo;->DRAWABLE_RED_FILTER_ID_MAP:Ljava/util/HashMap;

    .line 191
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getVideoCameraId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilterInfo;->VIDEO_CAMERA_ID:Ljava/lang/String;

    .line 192
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getOpticalZoomCameraId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilterInfo;->TELE_CAMERA_ID:Ljava/lang/String;

    .line 193
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getPeriscopeCameraId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilterInfo;->PERISCOPE_CAMERA_ID:Ljava/lang/String;

    .line 194
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getSatCameraLogicId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilterInfo;->SAT_CAMERA_ID:Ljava/lang/String;

    return-void

    :array_0
    .array-data 4
        0x10000182
        0x100001a6
        0x10000187
        0x1000018b
        0x100001ae
        0x100001b1
        0x100001a5
        0x100001a7
    .end array-data

    :array_1
    .array-data 4
        0x10000182
        0x100001a6
        0x10000187
        0x100001ac
        0x10000189
        0x100001a5
        0x100001a8
        0x100001a7
    .end array-data
.end method

.method public static checkFilterSupportList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 173
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 176
    :cond_0
    invoke-static {p0}, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilterInfo;->pdDefinedFilterSupport(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 178
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p0, :cond_2

    .line 180
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 181
    invoke-static {v1, p1}, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilterInfo;->isForHalSupport(Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 182
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getCaptureFilterIdByPreviewId(Ljava/lang/String;)I
    .locals 1

    .line 166
    sget-object v0, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilterInfo;->PREVIEW_CAPTURE_FILTER_ID_MAP:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    sget-object v0, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilterInfo;->PREVIEW_CAPTURE_FILTER_ID_MAP:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getDrawableResIdByFilterId(Ljava/lang/String;)I
    .locals 1

    .line 236
    sget-object v0, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilterInfo;->DRAWABLE_RED_FILTER_ID_MAP:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    sget-object v0, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilterInfo;->DRAWABLE_RED_FILTER_ID_MAP:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getStringResIdByFilterId(Ljava/lang/String;)I
    .locals 1

    .line 228
    sget-object v0, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilterInfo;->STRING_RES_FILTER_ID_MAP:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    sget-object v0, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilterInfo;->STRING_RES_FILTER_ID_MAP:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getSupportFilterIds(Ljava/lang/String;)[I
    .locals 1

    const-string v0, "0"

    .line 272
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilterInfo;->TELE_CAMERA_ID:Ljava/lang/String;

    .line 273
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilterInfo;->PERISCOPE_CAMERA_ID:Ljava/lang/String;

    .line 274
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilterInfo;->SAT_CAMERA_ID:Ljava/lang/String;

    .line 275
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "1"

    .line 277
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 278
    sget-object p0, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilterInfo;->FRONT_CAMERA_SUPPORT_FILTER_IDS:[I

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0

    .line 276
    :cond_2
    :goto_0
    sget-object p0, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilterInfo;->BACK_CAMERA_SUPPORT_FILTER_IDS:[I

    return-object p0
.end method

.method private static isForHalSupport(Ljava/lang/String;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 215
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 216
    sget-object v1, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilterInfo;->CAPTURE_PREVIEW_FILTER_ID_MAP:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 217
    sget-object v1, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilterInfo;->CAPTURE_PREVIEW_FILTER_ID_MAP:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 218
    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method private static pdDefinedFilterSupport(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 197
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "0"

    .line 201
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilterInfo;->VIDEO_CAMERA_ID:Ljava/lang/String;

    .line 202
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilterInfo;->TELE_CAMERA_ID:Ljava/lang/String;

    .line 203
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilterInfo;->PERISCOPE_CAMERA_ID:Ljava/lang/String;

    .line 204
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilterInfo;->SAT_CAMERA_ID:Ljava/lang/String;

    .line 205
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "1"

    .line 207
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 208
    sget-object v0, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilterInfo;->FRONT_CAMERA_PD_DEFINED_FILTER_STR_IDS:[Ljava/lang/String;

    goto :goto_1

    .line 206
    :cond_2
    :goto_0
    sget-object v0, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilterInfo;->BACK_CAMERA_PD_DEFINED_FILTER_STR_IDS:[Ljava/lang/String;

    .line 210
    :cond_3
    :goto_1
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
