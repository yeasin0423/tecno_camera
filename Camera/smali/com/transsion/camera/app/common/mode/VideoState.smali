.class public final enum Lcom/transsion/camera/app/common/mode/VideoState;
.super Ljava/lang/Enum;
.source "VideoState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/camera/app/common/mode/VideoState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/camera/app/common/mode/VideoState;

.field public static final enum STATE_PAUSED:Lcom/transsion/camera/app/common/mode/VideoState;

.field public static final enum STATE_PREVIEW:Lcom/transsion/camera/app/common/mode/VideoState;

.field public static final enum STATE_PREVIEWING:Lcom/transsion/camera/app/common/mode/VideoState;

.field public static final enum STATE_PRE_RECORDING:Lcom/transsion/camera/app/common/mode/VideoState;

.field public static final enum STATE_PRE_SAVING:Lcom/transsion/camera/app/common/mode/VideoState;

.field public static final enum STATE_RECORDING:Lcom/transsion/camera/app/common/mode/VideoState;

.field public static final enum STATE_SAVING:Lcom/transsion/camera/app/common/mode/VideoState;

.field public static final enum STATE_UNKNOWN:Lcom/transsion/camera/app/common/mode/VideoState;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 20
    new-instance v0, Lcom/transsion/camera/app/common/mode/VideoState;

    const-string v1, "STATE_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/app/common/mode/VideoState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/app/common/mode/VideoState;->STATE_UNKNOWN:Lcom/transsion/camera/app/common/mode/VideoState;

    .line 25
    new-instance v0, Lcom/transsion/camera/app/common/mode/VideoState;

    const-string v1, "STATE_PREVIEWING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/transsion/camera/app/common/mode/VideoState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/app/common/mode/VideoState;->STATE_PREVIEWING:Lcom/transsion/camera/app/common/mode/VideoState;

    .line 31
    new-instance v0, Lcom/transsion/camera/app/common/mode/VideoState;

    const-string v1, "STATE_PREVIEW"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/transsion/camera/app/common/mode/VideoState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/app/common/mode/VideoState;->STATE_PREVIEW:Lcom/transsion/camera/app/common/mode/VideoState;

    .line 36
    new-instance v0, Lcom/transsion/camera/app/common/mode/VideoState;

    const-string v1, "STATE_PRE_RECORDING"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/transsion/camera/app/common/mode/VideoState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/app/common/mode/VideoState;->STATE_PRE_RECORDING:Lcom/transsion/camera/app/common/mode/VideoState;

    .line 42
    new-instance v0, Lcom/transsion/camera/app/common/mode/VideoState;

    const-string v1, "STATE_RECORDING"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/transsion/camera/app/common/mode/VideoState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/app/common/mode/VideoState;->STATE_RECORDING:Lcom/transsion/camera/app/common/mode/VideoState;

    .line 47
    new-instance v0, Lcom/transsion/camera/app/common/mode/VideoState;

    const-string v1, "STATE_PAUSED"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/transsion/camera/app/common/mode/VideoState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/app/common/mode/VideoState;->STATE_PAUSED:Lcom/transsion/camera/app/common/mode/VideoState;

    .line 53
    new-instance v0, Lcom/transsion/camera/app/common/mode/VideoState;

    const-string v1, "STATE_PRE_SAVING"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/transsion/camera/app/common/mode/VideoState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/app/common/mode/VideoState;->STATE_PRE_SAVING:Lcom/transsion/camera/app/common/mode/VideoState;

    .line 58
    new-instance v0, Lcom/transsion/camera/app/common/mode/VideoState;

    const-string v1, "STATE_SAVING"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/transsion/camera/app/common/mode/VideoState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/app/common/mode/VideoState;->STATE_SAVING:Lcom/transsion/camera/app/common/mode/VideoState;

    const/16 v1, 0x8

    new-array v1, v1, [Lcom/transsion/camera/app/common/mode/VideoState;

    .line 16
    sget-object v10, Lcom/transsion/camera/app/common/mode/VideoState;->STATE_UNKNOWN:Lcom/transsion/camera/app/common/mode/VideoState;

    aput-object v10, v1, v2

    sget-object v2, Lcom/transsion/camera/app/common/mode/VideoState;->STATE_PREVIEWING:Lcom/transsion/camera/app/common/mode/VideoState;

    aput-object v2, v1, v3

    sget-object v2, Lcom/transsion/camera/app/common/mode/VideoState;->STATE_PREVIEW:Lcom/transsion/camera/app/common/mode/VideoState;

    aput-object v2, v1, v4

    sget-object v2, Lcom/transsion/camera/app/common/mode/VideoState;->STATE_PRE_RECORDING:Lcom/transsion/camera/app/common/mode/VideoState;

    aput-object v2, v1, v5

    sget-object v2, Lcom/transsion/camera/app/common/mode/VideoState;->STATE_RECORDING:Lcom/transsion/camera/app/common/mode/VideoState;

    aput-object v2, v1, v6

    sget-object v2, Lcom/transsion/camera/app/common/mode/VideoState;->STATE_PAUSED:Lcom/transsion/camera/app/common/mode/VideoState;

    aput-object v2, v1, v7

    sget-object v2, Lcom/transsion/camera/app/common/mode/VideoState;->STATE_PRE_SAVING:Lcom/transsion/camera/app/common/mode/VideoState;

    aput-object v2, v1, v8

    aput-object v0, v1, v9

    sput-object v1, Lcom/transsion/camera/app/common/mode/VideoState;->$VALUES:[Lcom/transsion/camera/app/common/mode/VideoState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/camera/app/common/mode/VideoState;
    .locals 1

    .line 16
    const-class v0, Lcom/transsion/camera/app/common/mode/VideoState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/mode/VideoState;

    return-object p0
.end method

.method public static values()[Lcom/transsion/camera/app/common/mode/VideoState;
    .locals 1

    .line 16
    sget-object v0, Lcom/transsion/camera/app/common/mode/VideoState;->$VALUES:[Lcom/transsion/camera/app/common/mode/VideoState;

    invoke-virtual {v0}, [Lcom/transsion/camera/app/common/mode/VideoState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/camera/app/common/mode/VideoState;

    return-object v0
.end method
