.class public Lcom/transsion/camera/app/ui/ModePanelUI;
.super Ljava/lang/Object;
.source "ModePanelUI.java"

# interfaces
.implements Lcom/transsion/camera/app/ui/IModePanelUI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/ModePanelUI$PanelStateListener;,
        Lcom/transsion/camera/app/ui/ModePanelUI$ModeItemDecoration;,
        Lcom/transsion/camera/app/ui/ModePanelUI$ModeChangedListenerImpl;
    }
.end annotation


# instance fields
.field private mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

.field private mContext:Landroid/content/Context;

.field private mCurrentModeName:Ljava/lang/String;

.field private mMarginalModeItemMargin:I

.field private mMiddleModeItemMargin:I

.field private mModeChangedListener:Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;

.field private mModePanelRecycleViewAdapter:Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;

.field private mModePanelRootLayout:Landroid/view/View;

.field private mModePanelView:Landroidx/recyclerview/widget/RecyclerView;

.field private final mModePickerScroll:Lcom/transsion/camera/app/ui/ModeVerticalScroll;

.field private mModeUIItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/ui/mode/ModeUIItem;",
            ">;"
        }
    .end annotation
.end field

.field private mOrderEditorFragmentControl:Lcom/transsion/camera/app/common/IAppUIControl$IOrderEditorFragmentControl;

.field private final mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

.field private mSellingPointItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/ui/ModePanelUI;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/ui/ModeVerticalScroll;Landroid/content/Context;Lcom/transsion/camera/app/ui/ScrollConsumer;Lcom/transsion/camera/app/common/IAppUIControl$IOrderEditorFragmentControl;)V
    .locals 4

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mModeUIItems:Ljava/util/List;

    .line 56
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 57
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 58
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3e800000    # 0.25f

    const v2, 0x3dcccccd    # 0.1f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 65
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mModePickerScroll:Lcom/transsion/camera/app/ui/ModeVerticalScroll;

    .line 66
    iput-object p3, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    .line 67
    iput-object p2, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mContext:Landroid/content/Context;

    .line 68
    iput-object p4, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mOrderEditorFragmentControl:Lcom/transsion/camera/app/common/IAppUIControl$IOrderEditorFragmentControl;

    .line 69
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f030016

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mSellingPointItems:Ljava/util/List;

    return-void
.end method

.method static synthetic access$100(Lcom/transsion/camera/app/ui/ModePanelUI;)Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mModeChangedListener:Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/app/ui/ModePanelUI;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mMarginalModeItemMargin:I

    return p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/app/ui/ModePanelUI;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mMiddleModeItemMargin:I

    return p0
.end method

.method static synthetic access$800(Lcom/transsion/camera/app/ui/ModePanelUI;)Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    return-object p0
.end method

.method private initializeModePanelView()V
    .locals 5

    .line 211
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mModePanelRootLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070189

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mMarginalModeItemMargin:I

    .line 212
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mModePanelRootLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07018a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mMiddleModeItemMargin:I

    .line 213
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070196

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 214
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07019f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 216
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mModePanelRootLayout:Landroid/view/View;

    const v1, 0x7f09015f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mModePanelView:Landroidx/recyclerview/widget/RecyclerView;

    .line 217
    new-instance v0, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/transsion/camera/app/ui/ModePanelUI$ModeChangedListenerImpl;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/transsion/camera/app/ui/ModePanelUI$ModeChangedListenerImpl;-><init>(Lcom/transsion/camera/app/ui/ModePanelUI;Lcom/transsion/camera/app/ui/ModePanelUI$1;)V

    iget-object v4, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mOrderEditorFragmentControl:Lcom/transsion/camera/app/common/IAppUIControl$IOrderEditorFragmentControl;

    invoke-direct {v0, v1, v2, v4}, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;Lcom/transsion/camera/app/common/IAppUIControl$IOrderEditorFragmentControl;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mModePanelRecycleViewAdapter:Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;

    .line 219
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mModePanelView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 221
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mModePanelView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 222
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mModePanelView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mModePanelRecycleViewAdapter:Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 223
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mModePanelView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/transsion/camera/app/ui/ModePanelUI$ModeItemDecoration;

    invoke-direct {v1, p0, v3}, Lcom/transsion/camera/app/ui/ModePanelUI$ModeItemDecoration;-><init>(Lcom/transsion/camera/app/ui/ModePanelUI;Lcom/transsion/camera/app/ui/ModePanelUI$1;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method

.method private synthetic lambda$inflateView$0(Landroid/view/View;)V
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->hideModePanel()V

    return-void
.end method

.method private synthetic lambda$setModeList$1(Lcom/transsion/camera/app/common/FeatureResource;)V
    .locals 7

    .line 104
    new-instance v6, Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    iget-object v1, p1, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    iget-object v2, p1, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureTitle:Ljava/lang/String;

    iget v3, p1, Lcom/transsion/camera/app/common/FeatureResource;->mSelectedIconId:I

    iget v4, p1, Lcom/transsion/camera/app/common/FeatureResource;->mUnSelectedIconId:I

    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mSellingPointItems:Ljava/util/List;

    .line 109
    invoke-interface {p1, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    move v5, p1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;-><init>(Ljava/lang/String;Ljava/lang/String;IIZ)V

    .line 111
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mModeUIItems:Ljava/util/List;

    invoke-interface {p0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public hide()V
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mModePanelRootLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 162
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->onBackPressed()Z

    return-void
.end method

.method public inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 74
    iput-object p2, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mModePanelRootLayout:Landroid/view/View;

    .line 75
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mModePickerScroll:Lcom/transsion/camera/app/ui/ModeVerticalScroll;

    invoke-virtual {v0, p2}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->setModePanelLayout(Landroid/view/ViewGroup;)V

    .line 76
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mModePickerScroll:Lcom/transsion/camera/app/ui/ModeVerticalScroll;

    new-instance v1, Lcom/transsion/camera/app/ui/ModePanelUI$PanelStateListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/app/ui/ModePanelUI$PanelStateListener;-><init>(Lcom/transsion/camera/app/ui/ModePanelUI;Lcom/transsion/camera/app/ui/ModePanelUI$1;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->setPanelStateListener(Lcom/transsion/camera/app/ui/ModeVerticalScroll$IPanelStateListener;)V

    const v0, 0x7f0c006e

    const/4 v1, 0x1

    .line 77
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 78
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mModePanelRootLayout:Landroid/view/View;

    const v0, 0x7f09015c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 79
    new-instance v0, Lcom/transsion/camera/app/ui/-$$Lambda$ModePanelUI$aW1izaC7dyn8YrRz5xixf7xHagA;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/-$$Lambda$ModePanelUI$aW1izaC7dyn8YrRz5xixf7xHagA;-><init>(Lcom/transsion/camera/app/ui/ModePanelUI;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePanelUI;->initializeModePanelView()V

    return-object p2
.end method

.method public synthetic lambda$inflateView$0$ModePanelUI(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ModePanelUI;->lambda$inflateView$0(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$setModeList$1$ModePanelUI(Lcom/transsion/camera/app/common/FeatureResource;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ModePanelUI;->lambda$setModeList$1(Lcom/transsion/camera/app/common/FeatureResource;)V

    return-void
.end method

.method public modePanelScrollToTop()V
    .locals 1

    .line 360
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mModePanelView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 361
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_0
    return-void
.end method

.method public refreshModePanelView()V
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mModePanelRecycleViewAdapter:Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mModeUIItems:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 173
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;->updateModeData(Ljava/util/List;)V

    .line 174
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mModePanelRecycleViewAdapter:Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 176
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ModePanelUI;->modePanelScrollToTop()V

    return-void
.end method

.method public setAppUIRect(Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;)V
    .locals 0

    return-void
.end method

.method public setCameraOperateActionControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    .line 143
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mModePanelView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_0

    .line 144
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setModeChangedListener(Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mModeChangedListener:Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;

    return-void
.end method

.method public setModeList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/FeatureResource;",
            ">;)V"
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mModeUIItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 103
    new-instance v0, Lcom/transsion/camera/app/ui/-$$Lambda$ModePanelUI$XZj8l0AhTRKok3R0aDnsY133WCw;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/-$$Lambda$ModePanelUI$XZj8l0AhTRKok3R0aDnsY133WCw;-><init>(Lcom/transsion/camera/app/ui/ModePanelUI;)V

    invoke-interface {p1, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 113
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ModePanelUI;->refreshModePanelView()V

    return-void
.end method

.method public setModePanelGuideEnable(Z)V
    .locals 0

    .line 189
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    if-eqz p0, :cond_0

    .line 190
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/ScrollConsumer;->setModePanelGuideEnable(Z)V

    :cond_0
    return-void
.end method

.method public setupViews()V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mModePanelView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 94
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mCurrentModeName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 95
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mModePanelRecycleViewAdapter:Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;->updateCurrentMode(Ljava/lang/String;)V

    .line 97
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ModePanelUI;->refreshModePanelView()V

    return-void
.end method

.method public shrinkModePanel()V
    .locals 0

    .line 196
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    if-eqz p0, :cond_0

    .line 197
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->onBackPressed()Z

    :cond_0
    return-void
.end method

.method public spreadModePanel()V
    .locals 2

    .line 181
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    if-eqz v1, :cond_0

    .line 182
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->spreadModePanel()V

    .line 183
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 v0, 0x48

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_0
    return-void
.end method

.method public updateCurrentMode(Ljava/lang/String;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mCurrentModeName:Ljava/lang/String;

    .line 119
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mModePanelRecycleViewAdapter:Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;

    if-eqz p0, :cond_0

    .line 120
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;->updateCurrentMode(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public updateItemClickable(Z)V
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mModePanelRecycleViewAdapter:Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;

    if-eqz p0, :cond_0

    .line 127
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;->updateItemClickable(Z)V

    :cond_0
    return-void
.end method
