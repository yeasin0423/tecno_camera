.class final enum Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;
.super Ljava/lang/Enum;
.source "MediaChainManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/video/MediaChainManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "MediaChainState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

.field public static final enum STATE_ALGORITHM_LOADED:Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

.field public static final enum STATE_PROCESSING:Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

.field public static final enum STATE_PROCESS_END:Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

.field public static final enum STATE_UNKNOWN:Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 45
    new-instance v0, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

    const-string v1, "STATE_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;->STATE_UNKNOWN:Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

    .line 46
    new-instance v0, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

    const-string v1, "STATE_ALGORITHM_LOADED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;->STATE_ALGORITHM_LOADED:Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

    .line 47
    new-instance v0, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

    const-string v1, "STATE_PROCESSING"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;->STATE_PROCESSING:Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

    .line 48
    new-instance v0, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

    const-string v1, "STATE_PROCESS_END"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;->STATE_PROCESS_END:Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

    .line 44
    sget-object v6, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;->STATE_UNKNOWN:Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

    aput-object v6, v1, v2

    sget-object v2, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;->STATE_ALGORITHM_LOADED:Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

    aput-object v2, v1, v3

    sget-object v2, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;->STATE_PROCESSING:Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;->$VALUES:[Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;
    .locals 1

    .line 44
    const-class v0, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

    return-object p0
.end method

.method public static values()[Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;
    .locals 1

    .line 44
    sget-object v0, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;->$VALUES:[Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

    invoke-virtual {v0}, [Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

    return-object v0
.end method
