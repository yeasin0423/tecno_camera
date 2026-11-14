.class public Lcom/transsion/camera/utils/SettingInfo;
.super Ljava/lang/Object;
.source "SettingInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/utils/SettingInfo$SMVRMetaData;,
        Lcom/transsion/camera/utils/SettingInfo$Pattern;,
        Lcom/transsion/camera/utils/SettingInfo$CameraFace;,
        Lcom/transsion/camera/utils/SettingInfo$Area;,
        Lcom/transsion/camera/utils/SettingInfo$WaterMarkParameter;
    }
.end annotation


# static fields
.field public static final BACK_VP_DEFAULT_VALUE:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final BACK_VP_LEVEL_GROUP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXPOSURE_ZERO:Ljava/lang/String;

.field public static final FRONT_VP_DEFAULT_VALUE:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final FRONT_VP_LEVEL_GROUP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final WIDE_CAMERA_ITEM_TEXT:[Ljava/lang/String;

.field public static final WIDE_CAMERA_ITEM_TEXT_CENTER_ZOOM:[Ljava/lang/String;

.field public static final WIDE_CAMERA_ZOOM_LIST:Ljava/util/List;
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
    .locals 9

    .line 238
    sget-object v0, Landroid/util/Rational;->ZERO:Landroid/util/Rational;

    invoke-virtual {v0}, Landroid/util/Rational;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/utils/SettingInfo;->EXPOSURE_ZERO:Ljava/lang/String;

    const-string v1, ".6x"

    const-string v2, ".6x"

    const-string v3, ".7x"

    const-string v4, ".7x"

    const-string v5, ".8x"

    const-string v6, ".8x"

    const-string v7, ".9x"

    const-string v8, ".9x"

    .line 973
    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/utils/SettingInfo;->WIDE_CAMERA_ITEM_TEXT:[Ljava/lang/String;

    const-string v1, "0.6x"

    const-string v2, "0.6x"

    const-string v3, "0.7x"

    const-string v4, "0.7x"

    const-string v5, "0.8x"

    const-string v6, "0.8x"

    const-string v7, "0.9x"

    const-string v8, "0.9x"

    .line 974
    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/utils/SettingInfo;->WIDE_CAMERA_ITEM_TEXT_CENTER_ZOOM:[Ljava/lang/String;

    const-string v1, "100"

    const-string v2, "105"

    const-string v3, "110"

    const-string v4, "120"

    const-string v5, "130"

    const-string v6, "140"

    const-string v7, "150"

    const-string v8, "160"

    .line 975
    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/utils/SettingInfo;->WIDE_CAMERA_ZOOM_LIST:Ljava/util/List;

    .line 1073
    new-instance v0, Lcom/transsion/camera/utils/SettingInfo$1;

    invoke-direct {v0}, Lcom/transsion/camera/utils/SettingInfo$1;-><init>()V

    sput-object v0, Lcom/transsion/camera/utils/SettingInfo;->BACK_VP_DEFAULT_VALUE:Ljava/util/HashMap;

    .line 1081
    new-instance v0, Lcom/transsion/camera/utils/SettingInfo$2;

    invoke-direct {v0}, Lcom/transsion/camera/utils/SettingInfo$2;-><init>()V

    sput-object v0, Lcom/transsion/camera/utils/SettingInfo;->FRONT_VP_DEFAULT_VALUE:Ljava/util/HashMap;

    .line 1088
    new-instance v0, Lcom/transsion/camera/utils/SettingInfo$3;

    invoke-direct {v0}, Lcom/transsion/camera/utils/SettingInfo$3;-><init>()V

    sput-object v0, Lcom/transsion/camera/utils/SettingInfo;->BACK_VP_LEVEL_GROUP:Ljava/util/HashMap;

    .line 1096
    new-instance v0, Lcom/transsion/camera/utils/SettingInfo$4;

    invoke-direct {v0}, Lcom/transsion/camera/utils/SettingInfo$4;-><init>()V

    sput-object v0, Lcom/transsion/camera/utils/SettingInfo;->FRONT_VP_LEVEL_GROUP:Ljava/util/HashMap;

    return-void
.end method
