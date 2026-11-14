.class final enum Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$SeekBarStyle;
.super Ljava/lang/Enum;
.source "SeekbarZoomView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "SeekBarStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$SeekBarStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$SeekBarStyle;

.field public static final enum STYLE_MARCO:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$SeekBarStyle;

.field public static final enum STYLE_NORMAL:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$SeekBarStyle;

.field public static final enum STYLE_SUPPORT_TELE:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$SeekBarStyle;

.field public static final enum STYLE_SUPPORT_WIDE:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$SeekBarStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 50
    new-instance v0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$SeekBarStyle;

    const-string v1, "STYLE_NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$SeekBarStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$SeekBarStyle;->STYLE_NORMAL:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$SeekBarStyle;

    .line 51
    new-instance v0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$SeekBarStyle;

    const-string v1, "STYLE_SUPPORT_WIDE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$SeekBarStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$SeekBarStyle;->STYLE_SUPPORT_WIDE:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$SeekBarStyle;

    .line 52
    new-instance v0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$SeekBarStyle;

    const-string v1, "STYLE_SUPPORT_TELE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$SeekBarStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$SeekBarStyle;->STYLE_SUPPORT_TELE:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$SeekBarStyle;

    .line 53
    new-instance v0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$SeekBarStyle;

    const-string v1, "STYLE_MARCO"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$SeekBarStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$SeekBarStyle;->STYLE_MARCO:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$SeekBarStyle;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$SeekBarStyle;

    .line 49
    sget-object v6, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$SeekBarStyle;->STYLE_NORMAL:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$SeekBarStyle;

    aput-object v6, v1, v2

    sget-object v2, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$SeekBarStyle;->STYLE_SUPPORT_WIDE:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$SeekBarStyle;

    aput-object v2, v1, v3

    sget-object v2, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$SeekBarStyle;->STYLE_SUPPORT_TELE:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$SeekBarStyle;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$SeekBarStyle;->$VALUES:[Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$SeekBarStyle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$SeekBarStyle;
    .locals 1

    .line 49
    const-class v0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$SeekBarStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$SeekBarStyle;

    return-object p0
.end method

.method public static values()[Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$SeekBarStyle;
    .locals 1

    .line 49
    sget-object v0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$SeekBarStyle;->$VALUES:[Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$SeekBarStyle;

    invoke-virtual {v0}, [Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$SeekBarStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$SeekBarStyle;

    return-object v0
.end method
