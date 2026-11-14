.class public Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2RootLayout;
.super Landroid/widget/RelativeLayout;
.source "MultiFBLevel2RootLayout.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final mLevel3Items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/transsion/camera/ui/setting/multifacebeauty/data/MultiFaceBeautyItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFBItemOnClickListener:Lcom/transsion/camera/ui/setting/multifacebeauty/listener/FBItemOnClickListener;

.field private mFeatureAdapter:Lcom/transsion/camera/ui/setting/multifacebeauty/adapter/FeatureAdapter;

.field private mLevel2SelectedPosition:I

.field private mListener:Lcom/transsion/camera/ui/setting/multifacebeauty/listener/FBItemOnClickListener;

.field private mPresetAdapter:Lcom/transsion/camera/ui/setting/multifacebeauty/adapter/PresetAdapter;

.field private mRecyclerViewLevel3:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 42
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2RootLayout;

    .line 43
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2RootLayout;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2RootLayout;->mLevel3Items:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 66
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    .line 57
    iput v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2RootLayout;->mLevel2SelectedPosition:I

    .line 100
    new-instance v0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2RootLayout$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2RootLayout$1;-><init>(Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2RootLayout;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2RootLayout;->mListener:Lcom/transsion/camera/ui/setting/multifacebeauty/listener/FBItemOnClickListener;

    .line 67
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2RootLayout;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, -0x1

    .line 57
    iput p2, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2RootLayout;->mLevel2SelectedPosition:I

    .line 100
    new-instance p2, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2RootLayout$1;

    invoke-direct {p2, p0}, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2RootLayout$1;-><init>(Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2RootLayout;)V

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2RootLayout;->mListener:Lcom/transsion/camera/ui/setting/multifacebeauty/listener/FBItemOnClickListener;

    .line 72
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2RootLayout;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 40
    sget-object v0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2RootLayout;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2RootLayout;)Lcom/transsion/camera/ui/setting/multifacebeauty/listener/FBItemOnClickListener;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2RootLayout;->mFBItemOnClickListener:Lcom/transsion/camera/ui/setting/multifacebeauty/listener/FBItemOnClickListener;

    return-object p0
.end method

.method public static initLevel2Data(Landroid/view/View;[Ljava/lang/String;[Landroid/graphics/drawable/Drawable;)V
    .locals 5

    .line 125
    sget-object v0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2RootLayout;->mLevel3Items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 126
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f08042f

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 127
    sget-object v0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2RootLayout;->mLevel3Items:Ljava/util/ArrayList;

    new-instance v1, Lcom/transsion/camera/ui/setting/multifacebeauty/data/MultiFaceBeautyItem;

    const v2, 0x7f0c0089

    const-string v3, "reset"

    invoke-direct {v1, v2, v3, p0}, Lcom/transsion/camera/ui/setting/multifacebeauty/data/MultiFaceBeautyItem;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    .line 128
    :goto_0
    array-length v0, p1

    if-ge p0, v0, :cond_0

    .line 129
    sget-object v0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2RootLayout;->mLevel3Items:Ljava/util/ArrayList;

    new-instance v1, Lcom/transsion/camera/ui/setting/multifacebeauty/data/MultiFaceBeautyItem;

    aget-object v3, p1, p0

    aget-object v4, p2, p0

    invoke-direct {v1, v2, v3, v4}, Lcom/transsion/camera/ui/setting/multifacebeauty/data/MultiFaceBeautyItem;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static initLevel3Data([Ljava/lang/String;[Landroid/graphics/drawable/Drawable;)V
    .locals 6

    const/4 v0, 0x0

    .line 134
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 135
    sget-object v1, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2RootLayout;->mLevel3Items:Ljava/util/ArrayList;

    new-instance v2, Lcom/transsion/camera/ui/setting/multifacebeauty/data/MultiFaceBeautyItem;

    const v3, 0x7f0c0089

    aget-object v4, p0, v0

    aget-object v5, p1, v0

    invoke-direct {v2, v3, v4, v5}, Lcom/transsion/camera/ui/setting/multifacebeauty/data/MultiFaceBeautyItem;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public init()V
    .locals 3

    .line 84
    sget-object v0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2RootLayout;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const v0, 0x7f09016d

    .line 85
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2RootLayout;->mRecyclerViewLevel3:Landroidx/recyclerview/widget/RecyclerView;

    .line 86
    new-instance v0, Lcom/transsion/camera/ui/setting/multifacebeauty/adapter/FeatureAdapter;

    sget-object v1, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2RootLayout;->mLevel3Items:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2RootLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/ui/setting/multifacebeauty/adapter/FeatureAdapter;-><init>(Ljava/util/ArrayList;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2RootLayout;->mFeatureAdapter:Lcom/transsion/camera/ui/setting/multifacebeauty/adapter/FeatureAdapter;

    .line 87
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2RootLayout;->mListener:Lcom/transsion/camera/ui/setting/multifacebeauty/listener/FBItemOnClickListener;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/ui/setting/multifacebeauty/adapter/MultiFBAdapter;->setListener(Lcom/transsion/camera/ui/setting/multifacebeauty/listener/FBItemOnClickListener;)V

    .line 88
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2RootLayout;->mRecyclerViewLevel3:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2RootLayout;->mFeatureAdapter:Lcom/transsion/camera/ui/setting/multifacebeauty/adapter/FeatureAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 89
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2RootLayout;->mRecyclerViewLevel3:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 90
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, v1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 91
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2RootLayout;->mRecyclerViewLevel3:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 96
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 97
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2RootLayout;->init()V

    return-void
.end method

.method public setCameraOperationControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V
    .locals 0

    return-void
.end method

.method public setFBItemOnClickListener(Lcom/transsion/camera/ui/setting/multifacebeauty/listener/FBItemOnClickListener;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2RootLayout;->mFBItemOnClickListener:Lcom/transsion/camera/ui/setting/multifacebeauty/listener/FBItemOnClickListener;

    return-void
.end method

.method public setItemClickable(Z)V
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2RootLayout;->mFeatureAdapter:Lcom/transsion/camera/ui/setting/multifacebeauty/adapter/FeatureAdapter;

    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {v0, p1}, Lcom/transsion/camera/ui/setting/multifacebeauty/adapter/MultiFBAdapter;->setItemClickable(Z)V

    .line 144
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2RootLayout;->mPresetAdapter:Lcom/transsion/camera/ui/setting/multifacebeauty/adapter/PresetAdapter;

    if-eqz p0, :cond_1

    .line 145
    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/multifacebeauty/adapter/MultiFBAdapter;->setItemClickable(Z)V

    :cond_1
    return-void
.end method

.method public setLevel2SelectPosition(I)V
    .locals 0

    .line 118
    iput p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2RootLayout;->mLevel2SelectedPosition:I

    .line 119
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2RootLayout;->mPresetAdapter:Lcom/transsion/camera/ui/setting/multifacebeauty/adapter/PresetAdapter;

    if-eqz p0, :cond_0

    .line 120
    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/multifacebeauty/adapter/MultiFBAdapter;->updateSelectPosition(I)V

    :cond_0
    return-void
.end method
