.class public Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;
.super Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;
.source "ARStickerUI.java"


# instance fields
.field private mAnimojiSelectView:Landroid/widget/ImageView;

.field private mEmojiCopyView:Landroid/widget/ImageView;

.field private mNormalType:Z

.field private mPathInterpolator:Landroid/view/animation/PathInterpolator;

.field private mQuickAdapter:Lcom/transsion/camera/app/ui/mode/armode/ARAdapter;

.field private mRecyclerInited:Z

.field private mRecyclerLayout:Landroid/widget/RelativeLayout;

.field private mRecyclerView:Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;

.field public mShowBar:Z

.field private mShowType:I

.field private mStickerSelectView:Landroid/widget/ImageView;

.field private mSwitchAnimojiView:Landroid/widget/ImageView;

.field private mSwitchStickerView:Landroid/widget/ImageView;

.field protected final mTag:Lcom/transsion/camera/utils/debug/Log$Tag;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;ILcom/transsion/camera/app/common/IAppUI;)V
    .locals 1

    .line 45
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;ILcom/transsion/camera/app/common/IAppUI;)V

    const/4 p1, -0x1

    .line 38
    iput p1, p0, Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;->mShowType:I

    const/4 p1, 0x0

    .line 39
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;->mRecyclerInited:Z

    .line 40
    new-instance p2, Landroid/view/animation/PathInterpolator;

    const/high16 p3, 0x3e800000    # 0.25f

    const p4, 0x3dcccccd    # 0.1f

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p2, p3, p4, p3, v0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p2, p0, Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 42
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;->mShowBar:Z

    .line 46
    new-instance p1, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class p2, Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;->mRecyclerLayout:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method private doAnim()V
    .locals 14

    .line 202
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 208
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/feature/mode/armode/R$dimen;->ar_diff:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 209
    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;->mShowBar:Z

    const-string v3, "translationY"

    const/4 v4, 0x0

    const-string v5, "alpha"

    const-wide/16 v6, 0x12c

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v2, :cond_0

    .line 210
    iput-boolean v8, p0, Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;->mShowBar:Z

    .line 211
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;->mRecyclerView:Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;

    new-array v10, v9, [F

    aput v4, v10, v8

    invoke-static {v2, v5, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 212
    iget-object v10, p0, Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;->mRecyclerView:Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;

    new-array v11, v9, [F

    int-to-float v1, v1

    aput v1, v11, v8

    invoke-static {v10, v3, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 213
    iget-object v11, p0, Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;->mStickerSelectView:Landroid/widget/ImageView;

    new-array v12, v9, [F

    aput v4, v12, v8

    invoke-static {v11, v5, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    invoke-virtual {v11, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v11

    .line 214
    iget-object v12, p0, Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;->mStickerSelectView:Landroid/widget/ImageView;

    new-array v13, v9, [F

    aput v1, v13, v8

    invoke-static {v12, v3, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 215
    iget-object v3, p0, Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;->mAnimojiSelectView:Landroid/widget/ImageView;

    new-array v12, v9, [F

    aput v4, v12, v8

    invoke-static {v3, v5, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 216
    iget-object v4, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v4, v8, v8, v9}, Lcom/transsion/camera/app/common/IAppUI;->sinkUI(ZIZ)V

    goto :goto_0

    .line 218
    :cond_0
    iput-boolean v9, p0, Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;->mShowBar:Z

    .line 219
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;->mRecyclerView:Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;

    new-array v2, v9, [F

    const/high16 v10, 0x3f800000    # 1.0f

    aput v10, v2, v8

    invoke-static {v1, v5, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 220
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;->mRecyclerView:Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;

    new-array v11, v9, [F

    aput v4, v11, v8

    invoke-static {v1, v3, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 221
    iget-object v11, p0, Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;->mStickerSelectView:Landroid/widget/ImageView;

    new-array v12, v9, [F

    aput v10, v12, v8

    invoke-static {v11, v5, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    invoke-virtual {v11, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v11

    .line 222
    iget-object v12, p0, Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;->mStickerSelectView:Landroid/widget/ImageView;

    new-array v13, v9, [F

    aput v4, v13, v8

    invoke-static {v12, v3, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 223
    iget-object v4, p0, Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;->mAnimojiSelectView:Landroid/widget/ImageView;

    new-array v12, v9, [F

    aput v10, v12, v8

    invoke-static {v4, v5, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 224
    iget-object v5, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/transsion/camera/feature/mode/armode/R$dimen;->ar_sink_shutter:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    .line 225
    iget-boolean v6, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mIsUnInit:Z

    if-nez v6, :cond_1

    .line 226
    iget-object v6, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v6, v9, v5, v9}, Lcom/transsion/camera/app/common/IAppUI;->sinkUI(ZIZ)V

    :cond_1
    move-object v10, v1

    move-object v1, v3

    move-object v3, v4

    .line 229
    :goto_0
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;->updateTypeView()V

    .line 230
    iget-object v4, p0, Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v4, 0x5

    new-array v4, v4, [Landroid/animation/Animator;

    aput-object v2, v4, v8

    aput-object v10, v4, v9

    const/4 v2, 0x2

    aput-object v11, v4, v2

    const/4 v2, 0x3

    aput-object v1, v4, v2

    const/4 v1, 0x4

    aput-object v3, v4, v1

    .line 231
    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 233
    new-instance v1, Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI$1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI$1;-><init>(Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 259
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private synthetic lambda$controlARBar$5(I)V
    .locals 0

    .line 142
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;->changeARBar(I)V

    return-void
.end method

.method private synthetic lambda$initView$0(Landroid/view/View;)V
    .locals 0

    .line 60
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->showCopyDialog()V

    return-void
.end method

.method private synthetic lambda$initView$1(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x2

    .line 64
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;->controlARBar(I)V

    return-void
.end method

.method private synthetic lambda$initView$2(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x3

    .line 65
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;->controlARBar(I)V

    return-void
.end method

.method private synthetic lambda$initView$3(ILjava/lang/Object;)V
    .locals 2

    .line 86
    check-cast p2, Lcom/transsion/camera/app/ui/mode/armode/data/ARStickerItemData;

    .line 87
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mStickerChangeListener:Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI$IARChangeListener;

    invoke-interface {v0, p2}, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI$IARChangeListener;->onStickerChanged(Lcom/transsion/camera/app/ui/mode/armode/data/ARStickerItemData;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "sticker is uninit,should not change selected item"

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 90
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;->mRecyclerView:Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;

    iget p0, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mPreviousPosition:I

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;->setSelectedPosition(I)V

    return-void

    .line 93
    :cond_0
    iget-object v0, p2, Lcom/transsion/camera/app/ui/mode/armode/data/ARStickerItemData;->filePath:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mSelect:Ljava/lang/String;

    .line 94
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;->mNormalType:Z

    if-eqz v1, :cond_1

    .line 95
    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mStickerSelect:Ljava/lang/String;

    goto :goto_0

    .line 97
    :cond_1
    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mAnimojiSelect:Ljava/lang/String;

    .line 99
    :goto_0
    iput p1, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mPreviousPosition:I

    .line 100
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;->mEmojiCopyView:Landroid/widget/ImageView;

    iget-object p1, p2, Lcom/transsion/camera/app/ui/mode/armode/data/ARStickerItemData;->emojiResImage:Ljava/lang/String;

    const-string p2, ""

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    const/16 p1, 0x8

    :goto_1
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$setRecyclerViewEnable$4(Z)V
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;->mRecyclerView:Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;

    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;->mRecyclerInited:Z

    if-eqz p0, :cond_0

    move p1, p0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public changeARBar(I)V
    .locals 8

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-eq p1, v0, :cond_0

    if-ne p1, v1, :cond_a

    .line 164
    :cond_0
    iget v2, p0, Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;->mShowType:I

    if-eq p1, v2, :cond_a

    .line 165
    iput p1, p0, Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;->mShowType:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v1, :cond_1

    move v4, v2

    goto :goto_0

    :cond_1
    move v4, v3

    .line 166
    :goto_0
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;->mNormalType:Z

    if-eqz v4, :cond_2

    .line 167
    iget-object v4, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mNormalDataList:Ljava/util/List;

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mAnimojiDataList:Ljava/util/List;

    :goto_1
    if-eqz v4, :cond_9

    .line 168
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-gtz v5, :cond_3

    goto :goto_6

    .line 171
    :cond_3
    iget-boolean v5, p0, Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;->mNormalType:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mStickerSelect:Ljava/lang/String;

    goto :goto_2

    :cond_4
    iget-object v5, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mAnimojiSelect:Ljava/lang/String;

    :goto_2
    iput-object v5, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mSelect:Ljava/lang/String;

    .line 172
    iget-object v5, p0, Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;->mQuickAdapter:Lcom/transsion/camera/app/ui/mode/armode/ARAdapter;

    invoke-virtual {v5, v4}, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$RecycleAdapter;->setDataList(Ljava/util/List;)V

    move v5, v3

    .line 174
    :goto_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_6

    .line 175
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/transsion/camera/app/ui/mode/armode/data/ARStickerItemData;

    iget-object v6, v6, Lcom/transsion/camera/app/ui/mode/armode/data/ARStickerItemData;->filePath:Ljava/lang/String;

    iget-object v7, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mSelect:Ljava/lang/String;

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_4

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_6
    move v5, v3

    .line 180
    :goto_4
    iget-object v6, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mStickerChangeListener:Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI$IARChangeListener;

    if-eqz v6, :cond_8

    .line 181
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/transsion/camera/app/ui/mode/armode/data/ARStickerItemData;

    invoke-interface {v6, v7}, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI$IARChangeListener;->onStickerChanged(Lcom/transsion/camera/app/ui/mode/armode/data/ARStickerItemData;)Z

    .line 182
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/camera/app/ui/mode/armode/data/ARStickerItemData;

    iget-object v4, v4, Lcom/transsion/camera/app/ui/mode/armode/data/ARStickerItemData;->emojiResImage:Ljava/lang/String;

    const-string v6, ""

    invoke-static {v4, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/2addr v2, v4

    .line 183
    iget-object v4, p0, Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;->mEmojiCopyView:Landroid/widget/ImageView;

    if-eqz v2, :cond_7

    goto :goto_5

    :cond_7
    const/16 v3, 0x8

    :goto_5
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 185
    :cond_8
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;->mRecyclerView:Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;

    invoke-virtual {v2, v5}, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;->setSelectedPosition(I)V

    .line 186
    iput v5, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mPreviousPosition:I

    .line 187
    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;->mShowBar:Z

    if-eqz v2, :cond_a

    .line 188
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;->updateTypeView()V

    :cond_9
    :goto_6
    return-void

    :cond_a
    if-nez p1, :cond_c

    .line 194
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;->mNormalType:Z

    if-eqz p1, :cond_b

    move v0, v1

    :cond_b
    iput v0, p0, Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;->mShowType:I

    goto :goto_7

    .line 196
    :cond_c
    iput p1, p0, Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;->mShowType:I

    .line 198
    :goto_7
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;->doAnim()V

    return-void
.end method

.method public controlARBar(I)V
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;->mSwitchStickerView:Landroid/widget/ImageView;

    new-instance v1, Lcom/transsion/camera/app/ui/mode/armode/-$$Lambda$ARStickerUI$6gGV7IhUsyJdT9b66JsqJ3AjjYc;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/app/ui/mode/armode/-$$Lambda$ARStickerUI$6gGV7IhUsyJdT9b66JsqJ3AjjYc;-><init>(Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public hideModeUI()V
    .locals 2

    .line 156
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mStickerLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 157
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;->mShowBar:Z

    if-eqz v0, :cond_0

    .line 158
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v0, 0x0

    invoke-interface {p0, v0, v0, v0}, Lcom/transsion/camera/app/common/IAppUI;->sinkUI(ZIZ)V

    :cond_0
    return-void
.end method

.method public initView(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 51
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->initView(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object p2, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mRootLayout:Landroid/widget/FrameLayout;

    sget v0, Lcom/transsion/camera/feature/mode/armode/R$id;->recycler_ar:I

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;->mRecyclerView:Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;

    const/4 p2, 0x0

    .line 53
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;->setRecyclerViewEnable(Z)V

    .line 54
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mRootLayout:Landroid/widget/FrameLayout;

    sget v1, Lcom/transsion/camera/feature/mode/armode/R$id;->recycler_layout:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;->mRecyclerLayout:Landroid/widget/RelativeLayout;

    .line 55
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mRootLayout:Landroid/widget/FrameLayout;

    sget v1, Lcom/transsion/camera/feature/mode/armode/R$id;->sticker_switch:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;->mSwitchStickerView:Landroid/widget/ImageView;

    .line 56
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mRootLayout:Landroid/widget/FrameLayout;

    sget v1, Lcom/transsion/camera/feature/mode/armode/R$id;->animoji_switch:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;->mSwitchAnimojiView:Landroid/widget/ImageView;

    .line 57
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mRootLayout:Landroid/widget/FrameLayout;

    sget v1, Lcom/transsion/camera/feature/mode/armode/R$id;->sticker_select:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;->mStickerSelectView:Landroid/widget/ImageView;

    .line 58
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mRootLayout:Landroid/widget/FrameLayout;

    sget v1, Lcom/transsion/camera/feature/mode/armode/R$id;->animoji_select:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;->mAnimojiSelectView:Landroid/widget/ImageView;

    .line 59
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mRootLayout:Landroid/widget/FrameLayout;

    sget v1, Lcom/transsion/camera/feature/mode/armode/R$id;->emoji_copy:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;->mEmojiCopyView:Landroid/widget/ImageView;

    .line 60
    new-instance v1, Lcom/transsion/camera/app/ui/mode/armode/-$$Lambda$ARStickerUI$NknZ3B9onyVezBG_LG9GXLmVnCg;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/mode/armode/-$$Lambda$ARStickerUI$NknZ3B9onyVezBG_LG9GXLmVnCg;-><init>(Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/app/ui/mode/armode/ARStickerInfo;->isEmojiSupport(Landroid/content/res/Resources;)Z

    move-result v0

    const/16 v1, 0x8

    if-nez v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;->mSwitchAnimojiView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;->mSwitchStickerView:Landroid/widget/ImageView;

    new-instance v2, Lcom/transsion/camera/app/ui/mode/armode/-$$Lambda$ARStickerUI$kaNeTB23Bti_IIV8K32SZMZIBVk;

    invoke-direct {v2, p0}, Lcom/transsion/camera/app/ui/mode/armode/-$$Lambda$ARStickerUI$kaNeTB23Bti_IIV8K32SZMZIBVk;-><init>(Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;->mSwitchAnimojiView:Landroid/widget/ImageView;

    new-instance v2, Lcom/transsion/camera/app/ui/mode/armode/-$$Lambda$ARStickerUI$j7zAimFZFP-vtNovgouG5esCISQ;

    invoke-direct {v2, p0}, Lcom/transsion/camera/app/ui/mode/armode/-$$Lambda$ARStickerUI$j7zAimFZFP-vtNovgouG5esCISQ;-><init>(Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 67
    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 68
    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;->mNormalType:Z

    move v0, p2

    .line 69
    :goto_0
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mNormalDataList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 70
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mNormalDataList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/ui/mode/armode/data/ARStickerItemData;

    iget-object v2, v2, Lcom/transsion/camera/app/ui/mode/armode/data/ARStickerItemData;->filePath:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p1, 0x1

    .line 71
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;->mNormalType:Z

    .line 72
    iput v0, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mPreviousPosition:I

    goto :goto_2

    .line 75
    :cond_1
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mNormalDataList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/ui/mode/armode/data/ARStickerItemData;

    iget-object v2, v2, Lcom/transsion/camera/app/ui/mode/armode/data/ARStickerItemData;->emojiResImage:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 76
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;->mEmojiCopyView:Landroid/widget/ImageView;

    invoke-virtual {v2, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 78
    :cond_2
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;->mEmojiCopyView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 81
    :cond_3
    :goto_2
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;->mNormalType:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mNormalDataList:Ljava/util/List;

    goto :goto_3

    :cond_4
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mAnimojiDataList:Ljava/util/List;

    .line 82
    :goto_3
    new-instance p2, Lcom/transsion/camera/app/ui/mode/armode/ARAdapter;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mContext:Landroid/content/Context;

    invoke-direct {p2, p1, v0}, Lcom/transsion/camera/app/ui/mode/armode/ARAdapter;-><init>(Ljava/util/List;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;->mQuickAdapter:Lcom/transsion/camera/app/ui/mode/armode/ARAdapter;

    .line 83
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;->mRecyclerView:Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 84
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;->mRecyclerView:Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;->addScrollListener(Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$IScrollListener;)V

    .line 85
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;->mRecyclerView:Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;

    new-instance p2, Lcom/transsion/camera/app/ui/mode/armode/-$$Lambda$ARStickerUI$evbbPljYUiwC5bgGChHq2UBxVYQ;

    invoke-direct {p2, p0}, Lcom/transsion/camera/app/ui/mode/armode/-$$Lambda$ARStickerUI$evbbPljYUiwC5bgGChHq2UBxVYQ;-><init>(Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;)V

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;->setOnSelectChangeListener(Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$IOnSelectChangeListener;)V

    return-void
.end method

.method public synthetic lambda$controlARBar$5$ARStickerUI(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;->lambda$controlARBar$5(I)V

    return-void
.end method

.method public synthetic lambda$initView$0$ARStickerUI(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;->lambda$initView$0(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$initView$1$ARStickerUI(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;->lambda$initView$1(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$initView$2$ARStickerUI(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;->lambda$initView$2(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$initView$3$ARStickerUI(ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;->lambda$initView$3(ILjava/lang/Object;)V

    return-void
.end method

.method public synthetic lambda$setRecyclerViewEnable$4$ARStickerUI(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;->lambda$setRecyclerViewEnable$4(Z)V

    return-void
.end method

.method public setARChangeListener(Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI$IARChangeListener;)V
    .locals 3

    .line 114
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->setARChangeListener(Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI$IARChangeListener;)V

    .line 115
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mStickerChangeListener:Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI$IARChangeListener;

    if-eqz p1, :cond_2

    .line 116
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;->mNormalType:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mNormalDataList:Ljava/util/List;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mAnimojiDataList:Ljava/util/List;

    :goto_0
    const/4 v0, 0x0

    .line 117
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 118
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mSelect:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/ui/mode/armode/data/ARStickerItemData;

    iget-object v2, v2, Lcom/transsion/camera/app/ui/mode/armode/data/ARStickerItemData;->filePath:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 119
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mStickerChangeListener:Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI$IARChangeListener;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/ui/mode/armode/data/ARStickerItemData;

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI$IARChangeListener;->onStickerChanged(Lcom/transsion/camera/app/ui/mode/armode/data/ARStickerItemData;)Z

    .line 120
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;->mRecyclerView:Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;->setSelectedPosition(I)V

    .line 121
    iput v0, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mPreviousPosition:I

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public declared-synchronized setRecyclerViewEnable(Z)V
    .locals 2

    monitor-enter p0

    .line 129
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;->mRecyclerView:Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/transsion/camera/app/ui/mode/armode/-$$Lambda$ARStickerUI$EyfVxYAXI-WyxDos_6RDrPQopVM;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/app/ui/mode/armode/-$$Lambda$ARStickerUI$EyfVxYAXI-WyxDos_6RDrPQopVM;-><init>(Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 131
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;->mRecyclerInited:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 132
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;->mRecyclerInited:Z

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 136
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;->mRecyclerInited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public showModeUI()V
    .locals 3

    .line 146
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mStickerLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 147
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;->mShowBar:Z

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/transsion/camera/feature/mode/armode/R$dimen;->ar_sink_shutter:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 149
    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mIsUnInit:Z

    if-nez v2, :cond_0

    .line 150
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v2, 0x1

    invoke-interface {p0, v2, v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->sinkUI(ZIZ)V

    :cond_0
    return-void
.end method

.method public uninit()V
    .locals 1

    .line 106
    invoke-super {p0}, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->uninit()V

    .line 107
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;->mRecyclerView:Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;->removeScrollListener(Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$IScrollListener;)V

    :cond_0
    return-void
.end method

.method public updateTypeView()V
    .locals 4

    .line 263
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;->mShowBar:Z

    if-eqz v0, :cond_2

    .line 264
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;->mStickerSelectView:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;->mNormalType:Z

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 265
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;->mAnimojiSelectView:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;->mNormalType:Z

    if-eqz v1, :cond_1

    move v2, v3

    :cond_1
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 267
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;->mSwitchStickerView:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;->mNormalType:Z

    if-eqz v1, :cond_3

    sget v1, Lcom/transsion/camera/feature/mode/armode/R$drawable;->ar_sticker_type_select:I

    goto :goto_1

    :cond_3
    sget v1, Lcom/transsion/camera/feature/mode/armode/R$drawable;->ar_sticker_type_bg:I

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 268
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;->mSwitchAnimojiView:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;->mNormalType:Z

    if-eqz v1, :cond_4

    sget v1, Lcom/transsion/camera/feature/mode/armode/R$drawable;->ar_emoji_type_bg:I

    goto :goto_2

    :cond_4
    sget v1, Lcom/transsion/camera/feature/mode/armode/R$drawable;->ar_emoji_type_select:I

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 269
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;->mSwitchStickerView:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;->mNormalType:Z

    const/16 v2, 0xff

    const/16 v3, 0xaf

    if-eqz v1, :cond_5

    move v1, v2

    goto :goto_3

    :cond_5
    move v1, v3

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 270
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;->mSwitchAnimojiView:Landroid/widget/ImageView;

    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;->mNormalType:Z

    if-eqz p0, :cond_6

    move v2, v3

    :cond_6
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageAlpha(I)V

    return-void
.end method
