.class public final enum Lcom/transsion/camera/adapter/CameraAgentFactory$CameraApi;
.super Ljava/lang/Enum;
.source "CameraAgentFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/adapter/CameraAgentFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CameraApi"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/camera/adapter/CameraAgentFactory$CameraApi;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/camera/adapter/CameraAgentFactory$CameraApi;

.field public static final enum API_1:Lcom/transsion/camera/adapter/CameraAgentFactory$CameraApi;

.field public static final enum API_2:Lcom/transsion/camera/adapter/CameraAgentFactory$CameraApi;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 15
    new-instance v0, Lcom/transsion/camera/adapter/CameraAgentFactory$CameraApi;

    const-string v1, "API_1"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/adapter/CameraAgentFactory$CameraApi;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/adapter/CameraAgentFactory$CameraApi;->API_1:Lcom/transsion/camera/adapter/CameraAgentFactory$CameraApi;

    .line 18
    new-instance v0, Lcom/transsion/camera/adapter/CameraAgentFactory$CameraApi;

    const-string v1, "API_2"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/transsion/camera/adapter/CameraAgentFactory$CameraApi;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/adapter/CameraAgentFactory$CameraApi;->API_2:Lcom/transsion/camera/adapter/CameraAgentFactory$CameraApi;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/transsion/camera/adapter/CameraAgentFactory$CameraApi;

    .line 13
    sget-object v4, Lcom/transsion/camera/adapter/CameraAgentFactory$CameraApi;->API_1:Lcom/transsion/camera/adapter/CameraAgentFactory$CameraApi;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/transsion/camera/adapter/CameraAgentFactory$CameraApi;->$VALUES:[Lcom/transsion/camera/adapter/CameraAgentFactory$CameraApi;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/camera/adapter/CameraAgentFactory$CameraApi;
    .locals 1

    .line 13
    const-class v0, Lcom/transsion/camera/adapter/CameraAgentFactory$CameraApi;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/adapter/CameraAgentFactory$CameraApi;

    return-object p0
.end method

.method public static values()[Lcom/transsion/camera/adapter/CameraAgentFactory$CameraApi;
    .locals 1

    .line 13
    sget-object v0, Lcom/transsion/camera/adapter/CameraAgentFactory$CameraApi;->$VALUES:[Lcom/transsion/camera/adapter/CameraAgentFactory$CameraApi;

    invoke-virtual {v0}, [Lcom/transsion/camera/adapter/CameraAgentFactory$CameraApi;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/camera/adapter/CameraAgentFactory$CameraApi;

    return-object v0
.end method
