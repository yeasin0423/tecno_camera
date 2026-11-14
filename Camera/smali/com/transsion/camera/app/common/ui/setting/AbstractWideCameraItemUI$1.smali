.class Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$1;
.super Ljava/lang/Object;
.source "AbstractWideCameraItemUI.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->setupEntryView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$1;->this$0:Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    .line 216
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    .line 217
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 218
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    if-eq v1, v3, :cond_3

    const/4 v4, 0x2

    if-eq v1, v4, :cond_0

    const/4 p1, 0x3

    if-eq v1, p1, :cond_3

    goto/16 :goto_0

    .line 234
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$1;->this$0:Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;

    invoke-static {v1}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->access$700(Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;)F

    move-result v1

    sub-float v1, p1, v1

    .line 235
    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$1;->this$0:Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;

    invoke-static {v2}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->access$800(Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;)F

    move-result v2

    sub-float v2, v0, v2

    .line 236
    iget-object v4, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$1;->this$0:Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;

    invoke-static {v4}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->access$300(Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x41200000    # 10.0f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    .line 237
    iget-object v4, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$1;->this$0:Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;

    iget-object v4, v4, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v4, :cond_1

    .line 238
    invoke-static {}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->access$200()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mLastScrollX="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$1;->this$0:Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;

    invoke-static {v6}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->access$700(Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;)F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, " currentX="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, " dx="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 239
    iget-object v4, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$1;->this$0:Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;

    invoke-static {v4, p2}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->access$900(Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;Landroid/view/MotionEvent;)V

    .line 240
    iget-object v4, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$1;->this$0:Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;

    invoke-static {v4, v3}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->access$602(Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;Z)Z

    .line 243
    :cond_1
    iget-object v4, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$1;->this$0:Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;

    invoke-static {v4}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->access$600(Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x41a00000    # 20.0f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 244
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$1;->this$0:Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->onLongClickEvent()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 245
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$1;->this$0:Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;

    invoke-static {v1, v3}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->access$302(Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;Z)Z

    .line 249
    :cond_2
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$1;->this$0:Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;

    invoke-static {v1, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->access$702(Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;F)F

    .line 250
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$1;->this$0:Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;

    invoke-static {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->access$802(Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;F)F

    goto :goto_0

    .line 227
    :cond_3
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$1;->this$0:Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;

    invoke-static {p1, v2}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->access$302(Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;Z)Z

    .line 228
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$1;->this$0:Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;

    invoke-static {p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->access$600(Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$1;->this$0:Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;

    iget-object v0, p1, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_5

    .line 229
    invoke-static {p1, p2}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->access$900(Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;Landroid/view/MotionEvent;)V

    .line 230
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$1;->this$0:Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;

    invoke-static {p1, v2}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->access$602(Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;Z)Z

    goto :goto_0

    .line 220
    :cond_4
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$1;->this$0:Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;

    invoke-static {v1, v2}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->access$302(Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;Z)Z

    .line 221
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$1;->this$0:Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;

    invoke-static {v1, v2}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->access$602(Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;Z)Z

    .line 222
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$1;->this$0:Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;

    invoke-static {v1, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->access$702(Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;F)F

    .line 223
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$1;->this$0:Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;

    invoke-static {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->access$802(Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;F)F

    .line 254
    :cond_5
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$1;->this$0:Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;

    invoke-static {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->access$1000(Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;)Landroid/view/GestureDetector;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return v3
.end method
