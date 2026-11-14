.class public abstract enum Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$ITransformer$Pivot$Y;
.super Ljava/lang/Enum;
.source "HorizontalRecycleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$ITransformer$Pivot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "Y"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$ITransformer$Pivot$Y;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$ITransformer$Pivot$Y;

.field public static final enum BOTTOM:Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$ITransformer$Pivot$Y;

.field public static final enum CENTER:Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$ITransformer$Pivot$Y;

.field public static final enum TOP:Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$ITransformer$Pivot$Y;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 623
    new-instance v0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$ITransformer$Pivot$Y$1;

    const-string v1, "TOP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$ITransformer$Pivot$Y$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$ITransformer$Pivot$Y;->TOP:Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$ITransformer$Pivot$Y;

    .line 629
    new-instance v0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$ITransformer$Pivot$Y$2;

    const-string v1, "CENTER"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$ITransformer$Pivot$Y$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$ITransformer$Pivot$Y;->CENTER:Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$ITransformer$Pivot$Y;

    .line 635
    new-instance v0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$ITransformer$Pivot$Y$3;

    const-string v1, "BOTTOM"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$ITransformer$Pivot$Y$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$ITransformer$Pivot$Y;->BOTTOM:Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$ITransformer$Pivot$Y;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$ITransformer$Pivot$Y;

    .line 622
    sget-object v5, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$ITransformer$Pivot$Y;->TOP:Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$ITransformer$Pivot$Y;

    aput-object v5, v1, v2

    sget-object v2, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$ITransformer$Pivot$Y;->CENTER:Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$ITransformer$Pivot$Y;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$ITransformer$Pivot$Y;->$VALUES:[Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$ITransformer$Pivot$Y;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 622
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$1;)V
    .locals 0

    .line 622
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$ITransformer$Pivot$Y;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$ITransformer$Pivot$Y;
    .locals 1

    .line 622
    const-class v0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$ITransformer$Pivot$Y;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$ITransformer$Pivot$Y;

    return-object p0
.end method

.method public static values()[Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$ITransformer$Pivot$Y;
    .locals 1

    .line 622
    sget-object v0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$ITransformer$Pivot$Y;->$VALUES:[Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$ITransformer$Pivot$Y;

    invoke-virtual {v0}, [Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$ITransformer$Pivot$Y;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$ITransformer$Pivot$Y;

    return-object v0
.end method


# virtual methods
.method public abstract create()Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$ITransformer$Pivot;
.end method
