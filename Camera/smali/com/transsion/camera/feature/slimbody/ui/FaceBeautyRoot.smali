.class public Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot;
.super Landroid/widget/RelativeLayout;
.source "FaceBeautyRoot.java"


# static fields
.field private static final SUPPORT_DRAWABLE_RES_IDS:[I

.field private static final SUPPORT_EFFECT_IDS:[Ljava/lang/String;

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAdapter:Lcom/transsion/camera/feature/slimbody/adapter/FaceBeautyAdapter;

.field private mCurrValue:Ljava/lang/String;

.field private mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private mOnItemClickListener:Lcom/transsion/camera/feature/slimbody/adapter/FaceBeautyAdapter$OnItemClickListener;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 21
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "FaceBeautyRoot"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "ai"

    const-string v3, "1"

    const-string v4, "2"

    const-string v5, "3"

    const-string v6, "4"

    const-string v7, "5"

    const-string v8, "6"

    .line 38
    filled-new-array/range {v2 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot;->SUPPORT_EFFECT_IDS:[Ljava/lang/String;

    const/4 v0, 0x7

    new-array v0, v0, [I

    .line 42
    sget v1, Lcom/transsion/camera/feature/slimbody/R$drawable;->btn_face_beauty_level_ai:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/transsion/camera/feature/slimbody/R$drawable;->btn_face_beauty_level_1:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sget v1, Lcom/transsion/camera/feature/slimbody/R$drawable;->btn_face_beauty_level_2:I

    const/4 v2, 0x2

    aput v1, v0, v2

    sget v1, Lcom/transsion/camera/feature/slimbody/R$drawable;->btn_face_beauty_level_3:I

    const/4 v2, 0x3

    aput v1, v0, v2

    sget v1, Lcom/transsion/camera/feature/slimbody/R$drawable;->btn_face_beauty_level_4:I

    const/4 v2, 0x4

    aput v1, v0, v2

    sget v1, Lcom/transsion/camera/feature/slimbody/R$drawable;->btn_face_beauty_level_5:I

    const/4 v2, 0x5

    aput v1, v0, v2

    sget v1, Lcom/transsion/camera/feature/slimbody/R$drawable;->btn_face_beauty_level_6:I

    const/4 v2, 0x6

    aput v1, v0, v2

    sput-object v0, Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot;->SUPPORT_DRAWABLE_RES_IDS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 97
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 26
    new-instance p1, Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot$1;-><init>(Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot;->mOnItemClickListener:Lcom/transsion/camera/feature/slimbody/adapter/FaceBeautyAdapter$OnItemClickListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 101
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    new-instance p1, Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot$1;-><init>(Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot;->mOnItemClickListener:Lcom/transsion/camera/feature/slimbody/adapter/FaceBeautyAdapter$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot;)Lcom/transsion/camera/app/common/setting/ISetting;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    return-object p0
.end method

.method private isSupport(Ljava/util/List;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 p0, 0x0

    if-eqz p1, :cond_2

    .line 61
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 64
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 65
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return p0
.end method


# virtual methods
.method public notifyValueChangedToUI(Ljava/lang/String;)V
    .locals 2

    .line 50
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot;->mCurrValue:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot;->mCurrValue:Ljava/lang/String;

    .line 52
    sget-object p1, Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyValueChangedToUI mCurrValue = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot;->mCurrValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 53
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot;->mAdapter:Lcom/transsion/camera/feature/slimbody/adapter/FaceBeautyAdapter;

    if-eqz p1, :cond_0

    .line 54
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot;->mCurrValue:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/feature/slimbody/adapter/FaceBeautyAdapter;->setSelectedItemById(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 106
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 107
    sget v0, Lcom/transsion/camera/feature/slimbody/R$id;->fb_list:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 108
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 6

    .line 73
    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    .line 74
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot;->mCurrValue:Ljava/lang/String;

    .line 75
    sget-object p1, Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDeviceSetting mCurrValue = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot;->mCurrValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 76
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSupport()Ljava/util/List;

    move-result-object p1

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 78
    :goto_0
    sget-object v3, Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot;->SUPPORT_EFFECT_IDS:[Ljava/lang/String;

    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 79
    aget-object v3, v3, v2

    .line 80
    invoke-direct {p0, p1, v3}, Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot;->isSupport(Ljava/util/List;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 81
    new-instance v4, Lcom/transsion/camera/feature/slimbody/data/FBItemData;

    invoke-direct {v4}, Lcom/transsion/camera/feature/slimbody/data/FBItemData;-><init>()V

    .line 82
    sget-object v5, Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot;->SUPPORT_DRAWABLE_RES_IDS:[I

    aget v5, v5, v2

    iput v5, v4, Lcom/transsion/camera/feature/slimbody/data/FBItemData;->drawableId:I

    .line 83
    iput-object v3, v4, Lcom/transsion/camera/feature/slimbody/data/FBItemData;->effectId:Ljava/lang/String;

    .line 84
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 87
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 88
    new-instance p1, Lcom/transsion/camera/feature/slimbody/adapter/FaceBeautyAdapter;

    invoke-direct {p1, v0}, Lcom/transsion/camera/feature/slimbody/adapter/FaceBeautyAdapter;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot;->mAdapter:Lcom/transsion/camera/feature/slimbody/adapter/FaceBeautyAdapter;

    .line 89
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot;->mOnItemClickListener:Lcom/transsion/camera/feature/slimbody/adapter/FaceBeautyAdapter$OnItemClickListener;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/feature/slimbody/adapter/FaceBeautyAdapter;->setOnItemClickListener(Lcom/transsion/camera/feature/slimbody/adapter/FaceBeautyAdapter$OnItemClickListener;)V

    .line 90
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot;->mAdapter:Lcom/transsion/camera/feature/slimbody/adapter/FaceBeautyAdapter;

    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot;->mCurrValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/feature/slimbody/adapter/FaceBeautyAdapter;->setSelectedItemById(Ljava/lang/String;)V

    .line 91
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot;->mAdapter:Lcom/transsion/camera/feature/slimbody/adapter/FaceBeautyAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 92
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    :cond_2
    return-void
.end method
