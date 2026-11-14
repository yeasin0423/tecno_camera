.class public final enum Lcom/transsion/camera/app/common/IAppUIControl$IApertureUIControl$AnimationType;
.super Ljava/lang/Enum;
.source "IAppUIControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/IAppUIControl$IApertureUIControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AnimationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/camera/app/common/IAppUIControl$IApertureUIControl$AnimationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/camera/app/common/IAppUIControl$IApertureUIControl$AnimationType;

.field public static final enum TYPE_LESS_ONE_SECOND:Lcom/transsion/camera/app/common/IAppUIControl$IApertureUIControl$AnimationType;

.field public static final enum TYPE_MORE_ONE_SECOND:Lcom/transsion/camera/app/common/IAppUIControl$IApertureUIControl$AnimationType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 167
    new-instance v0, Lcom/transsion/camera/app/common/IAppUIControl$IApertureUIControl$AnimationType;

    const-string v1, "TYPE_MORE_ONE_SECOND"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/app/common/IAppUIControl$IApertureUIControl$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/app/common/IAppUIControl$IApertureUIControl$AnimationType;->TYPE_MORE_ONE_SECOND:Lcom/transsion/camera/app/common/IAppUIControl$IApertureUIControl$AnimationType;

    .line 168
    new-instance v0, Lcom/transsion/camera/app/common/IAppUIControl$IApertureUIControl$AnimationType;

    const-string v1, "TYPE_LESS_ONE_SECOND"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/transsion/camera/app/common/IAppUIControl$IApertureUIControl$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/app/common/IAppUIControl$IApertureUIControl$AnimationType;->TYPE_LESS_ONE_SECOND:Lcom/transsion/camera/app/common/IAppUIControl$IApertureUIControl$AnimationType;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/transsion/camera/app/common/IAppUIControl$IApertureUIControl$AnimationType;

    .line 166
    sget-object v4, Lcom/transsion/camera/app/common/IAppUIControl$IApertureUIControl$AnimationType;->TYPE_MORE_ONE_SECOND:Lcom/transsion/camera/app/common/IAppUIControl$IApertureUIControl$AnimationType;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/transsion/camera/app/common/IAppUIControl$IApertureUIControl$AnimationType;->$VALUES:[Lcom/transsion/camera/app/common/IAppUIControl$IApertureUIControl$AnimationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 166
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUIControl$IApertureUIControl$AnimationType;
    .locals 1

    .line 166
    const-class v0, Lcom/transsion/camera/app/common/IAppUIControl$IApertureUIControl$AnimationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/IAppUIControl$IApertureUIControl$AnimationType;

    return-object p0
.end method

.method public static values()[Lcom/transsion/camera/app/common/IAppUIControl$IApertureUIControl$AnimationType;
    .locals 1

    .line 166
    sget-object v0, Lcom/transsion/camera/app/common/IAppUIControl$IApertureUIControl$AnimationType;->$VALUES:[Lcom/transsion/camera/app/common/IAppUIControl$IApertureUIControl$AnimationType;

    invoke-virtual {v0}, [Lcom/transsion/camera/app/common/IAppUIControl$IApertureUIControl$AnimationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/camera/app/common/IAppUIControl$IApertureUIControl$AnimationType;

    return-object v0
.end method
