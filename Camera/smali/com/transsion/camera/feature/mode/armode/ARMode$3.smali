.class Lcom/transsion/camera/feature/mode/armode/ARMode$3;
.super Ljava/lang/Object;
.source "ARMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/mode/armode/ARMode;->setItemMask([I[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

.field final synthetic val$faceId:[I

.field final synthetic val$itemHandle:[I


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/armode/ARMode;[I[I)V
    .locals 0

    .line 873
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$3;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$3;->val$itemHandle:[I

    iput-object p3, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$3;->val$faceId:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 876
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$3;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$2400(Lcom/transsion/camera/feature/mode/armode/ARMode;)[I

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 877
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$3;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$2500(Lcom/transsion/camera/feature/mode/armode/ARMode;)[I

    move-result-object v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 879
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$3;->val$itemHandle:[I

    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 880
    aget v0, v0, v1

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$3;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$2400(Lcom/transsion/camera/feature/mode/armode/ARMode;)[I

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-le v1, v0, :cond_0

    goto :goto_1

    .line 883
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$3;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$2400(Lcom/transsion/camera/feature/mode/armode/ARMode;)[I

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$3;->val$itemHandle:[I

    aget v2, v2, v1

    aput v2, v0, v1

    .line 884
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$3;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$2500(Lcom/transsion/camera/feature/mode/armode/ARMode;)[I

    move-result-object v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$3;->val$faceId:[I

    aget v4, v4, v1

    int-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-int v2, v2

    aput v2, v0, v1

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 886
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$3;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$4900(Lcom/transsion/camera/feature/mode/armode/ARMode;)V

    .line 887
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$3;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$5000(Lcom/transsion/camera/feature/mode/armode/ARMode;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setItemMask: items:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$3;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$2400(Lcom/transsion/camera/feature/mode/armode/ARMode;)[I

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", masks:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$3;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$2500(Lcom/transsion/camera/feature/mode/armode/ARMode;)[I

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
