.class public final enum Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$IScrollListener$Direction;
.super Ljava/lang/Enum;
.source "HorizontalRecycleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$IScrollListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Direction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$IScrollListener$Direction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$IScrollListener$Direction;

.field public static final enum END:Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$IScrollListener$Direction;

.field public static final enum START:Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$IScrollListener$Direction;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 86
    new-instance v0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$IScrollListener$Direction;

    const-string v1, "START"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$IScrollListener$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$IScrollListener$Direction;->START:Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$IScrollListener$Direction;

    .line 87
    new-instance v0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$IScrollListener$Direction;

    const-string v1, "END"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$IScrollListener$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$IScrollListener$Direction;->END:Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$IScrollListener$Direction;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$IScrollListener$Direction;

    .line 84
    sget-object v4, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$IScrollListener$Direction;->START:Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$IScrollListener$Direction;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$IScrollListener$Direction;->$VALUES:[Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$IScrollListener$Direction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 84
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromDelta(I)Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$IScrollListener$Direction;
    .locals 0

    if-lez p0, :cond_0

    .line 90
    sget-object p0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$IScrollListener$Direction;->END:Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$IScrollListener$Direction;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$IScrollListener$Direction;->START:Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$IScrollListener$Direction;

    :goto_0
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$IScrollListener$Direction;
    .locals 1

    .line 84
    const-class v0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$IScrollListener$Direction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$IScrollListener$Direction;

    return-object p0
.end method

.method public static values()[Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$IScrollListener$Direction;
    .locals 1

    .line 84
    sget-object v0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$IScrollListener$Direction;->$VALUES:[Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$IScrollListener$Direction;

    invoke-virtual {v0}, [Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$IScrollListener$Direction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$IScrollListener$Direction;

    return-object v0
.end method
