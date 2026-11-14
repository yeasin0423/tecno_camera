.class public final enum Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$FunVideoRecordState;
.super Ljava/lang/Enum;
.source "FunVideoMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FunVideoRecordState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$FunVideoRecordState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$FunVideoRecordState;

.field public static final enum STATE_INIT:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$FunVideoRecordState;

.field public static final enum STATE_STARTED:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$FunVideoRecordState;

.field public static final enum STATE_STOPING:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$FunVideoRecordState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 152
    new-instance v0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$FunVideoRecordState;

    const-string v1, "STATE_INIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$FunVideoRecordState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$FunVideoRecordState;->STATE_INIT:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$FunVideoRecordState;

    .line 153
    new-instance v0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$FunVideoRecordState;

    const-string v1, "STATE_STARTED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$FunVideoRecordState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$FunVideoRecordState;->STATE_STARTED:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$FunVideoRecordState;

    .line 154
    new-instance v0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$FunVideoRecordState;

    const-string v1, "STATE_STOPING"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$FunVideoRecordState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$FunVideoRecordState;->STATE_STOPING:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$FunVideoRecordState;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$FunVideoRecordState;

    .line 151
    sget-object v5, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$FunVideoRecordState;->STATE_INIT:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$FunVideoRecordState;

    aput-object v5, v1, v2

    sget-object v2, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$FunVideoRecordState;->STATE_STARTED:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$FunVideoRecordState;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$FunVideoRecordState;->$VALUES:[Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$FunVideoRecordState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 151
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$FunVideoRecordState;
    .locals 1

    .line 151
    const-class v0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$FunVideoRecordState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$FunVideoRecordState;

    return-object p0
.end method

.method public static values()[Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$FunVideoRecordState;
    .locals 1

    .line 151
    sget-object v0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$FunVideoRecordState;->$VALUES:[Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$FunVideoRecordState;

    invoke-virtual {v0}, [Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$FunVideoRecordState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$FunVideoRecordState;

    return-object v0
.end method
