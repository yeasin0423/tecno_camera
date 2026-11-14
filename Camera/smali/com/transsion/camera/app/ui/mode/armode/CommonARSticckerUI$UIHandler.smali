.class Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI$UIHandler;
.super Landroid/os/Handler;
.source "CommonARSticckerUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UIHandler"
.end annotation


# instance fields
.field private final mARStickerUIReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;)V
    .locals 1

    .line 190
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 191
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI$UIHandler;->mARStickerUIReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI$1;)V
    .locals 0

    .line 187
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI$UIHandler;-><init>(Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 196
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI$UIHandler;->mARStickerUIReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;

    if-nez p0, :cond_0

    .line 199
    invoke-static {}, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "CommonARSticckerUI reference is null!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 203
    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 215
    :pswitch_0
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mStickerLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 216
    invoke-static {p0}, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->access$400(Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;)Landroid/widget/LinearLayout;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 208
    :pswitch_1
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mStickerLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 209
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-static {p0, v1, v2}, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->access$302(Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;J)J

    .line 210
    invoke-static {p0}, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->access$400(Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 211
    invoke-static {p0}, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->access$600(Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;)Landroid/widget/TextView;

    move-result-object p1

    const-wide/16 v1, 0x0

    invoke-static {v1, v2, v0}, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->access$500(JZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    invoke-static {p0}, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->access$200(Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;)V

    goto :goto_0

    .line 205
    :pswitch_2
    invoke-static {p0}, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->access$200(Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
