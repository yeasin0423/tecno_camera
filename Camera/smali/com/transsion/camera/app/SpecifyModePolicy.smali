.class public Lcom/transsion/camera/app/SpecifyModePolicy;
.super Ljava/lang/Object;
.source "SpecifyModePolicy.java"


# instance fields
.field private mAppUIRoot:Landroid/view/ViewGroup;

.field private mContext:Landroid/content/Context;

.field private mIntent:Lcom/transsion/camera/app/intent/IntentParser;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 14
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "SpecifyModePolicy"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/transsion/camera/app/intent/IntentParser;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/transsion/camera/app/SpecifyModePolicy;->mContext:Landroid/content/Context;

    .line 22
    iput-object p2, p0, Lcom/transsion/camera/app/SpecifyModePolicy;->mAppUIRoot:Landroid/view/ViewGroup;

    .line 23
    iput-object p3, p0, Lcom/transsion/camera/app/SpecifyModePolicy;->mIntent:Lcom/transsion/camera/app/intent/IntentParser;

    return-void
.end method


# virtual methods
.method public doActionAfterPreviewStarted()V
    .locals 4

    .line 27
    iget-object v0, p0, Lcom/transsion/camera/app/SpecifyModePolicy;->mIntent:Lcom/transsion/camera/app/intent/IntentParser;

    iget-boolean v1, v0, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifySlimBody:Z

    const-string v2, "id"

    if-eqz v1, :cond_0

    .line 28
    iget-object v0, p0, Lcom/transsion/camera/app/SpecifyModePolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/SpecifyModePolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "slimbody_bar"

    invoke-virtual {v0, v3, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_5

    .line 30
    iget-object p0, p0, Lcom/transsion/camera/app/SpecifyModePolicy;->mAppUIRoot:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 32
    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    goto/16 :goto_0

    .line 35
    :cond_0
    iget-boolean v1, v0, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyFaceBeauty:Z

    const-string v3, "face_beauty_bar"

    if-eqz v1, :cond_1

    .line 36
    iget-object v0, p0, Lcom/transsion/camera/app/SpecifyModePolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/SpecifyModePolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_5

    .line 38
    iget-object p0, p0, Lcom/transsion/camera/app/SpecifyModePolicy;->mAppUIRoot:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 40
    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    goto/16 :goto_0

    .line 43
    :cond_1
    iget-boolean v1, v0, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyFunVideo:Z

    if-eqz v1, :cond_2

    .line 44
    iget-object v0, p0, Lcom/transsion/camera/app/SpecifyModePolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/SpecifyModePolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_5

    .line 46
    iget-object p0, p0, Lcom/transsion/camera/app/SpecifyModePolicy;->mAppUIRoot:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 48
    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    goto :goto_0

    .line 51
    :cond_2
    iget-boolean v1, v0, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyBokeh:Z

    if-eqz v1, :cond_3

    .line 52
    iget-object v0, p0, Lcom/transsion/camera/app/SpecifyModePolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/SpecifyModePolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "level_indicator_layout"

    invoke-virtual {v0, v3, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_5

    .line 54
    iget-object p0, p0, Lcom/transsion/camera/app/SpecifyModePolicy;->mAppUIRoot:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 56
    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    goto :goto_0

    .line 59
    :cond_3
    iget-boolean v1, v0, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyMultiFacebeauty:Z

    if-eqz v1, :cond_4

    .line 60
    iget-object v0, p0, Lcom/transsion/camera/app/SpecifyModePolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/SpecifyModePolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "face_beauty_v2_switch_icon"

    invoke-virtual {v0, v3, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_5

    .line 62
    iget-object p0, p0, Lcom/transsion/camera/app/SpecifyModePolicy;->mAppUIRoot:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 64
    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    goto :goto_0

    .line 67
    :cond_4
    iget-boolean v0, v0, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyFrontFunVideo:Z

    if-eqz v0, :cond_5

    .line 68
    iget-object v0, p0, Lcom/transsion/camera/app/SpecifyModePolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/SpecifyModePolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_5

    .line 70
    iget-object p0, p0, Lcom/transsion/camera/app/SpecifyModePolicy;->mAppUIRoot:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 72
    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    :cond_5
    :goto_0
    return-void
.end method
