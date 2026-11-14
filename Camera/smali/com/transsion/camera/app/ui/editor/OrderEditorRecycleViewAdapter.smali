.class public Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "OrderEditorRecycleViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter$TitleItemHolder;,
        Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter$ModeItemHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter$ModeItemHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field public mCurrentCamera:Ljava/lang/String;

.field private mMainFunction:Lcom/transsion/camera/app/ui/editor/TitleUIItem;

.field private mMainModeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;",
            ">;"
        }
    .end annotation
.end field

.field public mModesNumberInTab:I

.field private mOrderEditorUIItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;",
            ">;"
        }
    .end annotation
.end field

.field private mOtherFunction:Lcom/transsion/camera/app/ui/editor/TitleUIItem;

.field private mOtherModeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4

    .line 36
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mOrderEditorUIItems:Ljava/util/List;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mMainModeList:Ljava/util/List;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mOtherModeList:Ljava/util/List;

    const-string v0, "0"

    .line 31
    iput-object v0, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mCurrentCamera:Ljava/lang/String;

    .line 37
    iput-object p1, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mContext:Landroid/content/Context;

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f014e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0f014f

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 40
    new-instance v1, Lcom/transsion/camera/app/ui/editor/TitleUIItem;

    const-string v2, "MAINFUCTION"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3, v3}, Lcom/transsion/camera/app/ui/editor/TitleUIItem;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v1, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mMainFunction:Lcom/transsion/camera/app/ui/editor/TitleUIItem;

    .line 41
    new-instance v0, Lcom/transsion/camera/app/ui/editor/TitleUIItem;

    const-string v1, "OTHERFUCTION"

    invoke-direct {v0, v1, p1, v3, v3}, Lcom/transsion/camera/app/ui/editor/TitleUIItem;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mOtherFunction:Lcom/transsion/camera/app/ui/editor/TitleUIItem;

    .line 42
    iput p2, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mModesNumberInTab:I

    return-void
.end method


# virtual methods
.method public getFinalOrder()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/FeatureResource;",
            ">;"
        }
    .end annotation

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 150
    iget-object v1, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mOrderEditorUIItems:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 151
    iget-object v1, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mMainFunction:Lcom/transsion/camera/app/ui/editor/TitleUIItem;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 152
    iget-object p0, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mOtherFunction:Lcom/transsion/camera/app/ui/editor/TitleUIItem;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 153
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 154
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;

    .line 155
    new-instance v2, Lcom/transsion/camera/app/common/FeatureResource;

    invoke-direct {v2}, Lcom/transsion/camera/app/common/FeatureResource;-><init>()V

    .line 156
    iget-object v3, v1, Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;->mName:Ljava/lang/String;

    iput-object v3, v2, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    .line 157
    iget-object v3, v1, Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;->mTitle:Ljava/lang/String;

    iput-object v3, v2, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureTitle:Ljava/lang/String;

    .line 158
    iget v3, v1, Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;->mUnSelectedIconId:I

    .line 159
    iget v1, v1, Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;->mSelectIconId:I

    iput v1, v2, Lcom/transsion/camera/app/common/FeatureResource;->mSelectedIconId:I

    .line 160
    iput v3, v2, Lcom/transsion/camera/app/common/FeatureResource;->mUnSelectedIconId:I

    .line 161
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public getItemCount()I
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mOrderEditorUIItems:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 131
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->getItemCount()I

    move-result v0

    if-le p1, v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mOrderEditorUIItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/transsion/camera/app/ui/editor/TitleUIItem;

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mOrderEditorUIItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;->mName:Ljava/lang/String;

    const-string v1, "com.transsion.camera.feature.mode.autoscenedetection.ASDModeEntry"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x2

    return p0

    .line 140
    :cond_2
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p0

    return p0
.end method

.method public getMainModeCount()I
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mOrderEditorUIItems:Ljava/util/List;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mOtherFunction:Lcom/transsion/camera/app/ui/editor/TitleUIItem;

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mModesNumberInTab:I

    return v0
.end method

.method public getOrderEditorUIItems()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;",
            ">;"
        }
    .end annotation

    .line 126
    iget-object p0, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mOrderEditorUIItems:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 22
    check-cast p1, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter$ModeItemHolder;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->onBindViewHolder(Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter$ModeItemHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter$ModeItemHolder;I)V
    .locals 4

    .line 66
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 67
    iget-object v0, p1, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter$ModeItemHolder;->mModeTitleView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mOrderEditorUIItems:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;

    iget-object p2, p2, Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object p1, p1, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter$ModeItemHolder;->mModeTitleView:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f060079

    invoke-virtual {p0, p2, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    .line 72
    :cond_0
    iget-object v0, p1, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter$ModeItemHolder;->mModeIconView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mOrderEditorUIItems:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;

    iget v2, v2, Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;->mUnSelectedIconId:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 73
    iget-object v0, p1, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter$ModeItemHolder;->mModeTitleView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0601e1

    invoke-virtual {v2, v3, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 75
    iget-object v0, p1, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter$ModeItemHolder;->mModeTitleView:Landroid/widget/TextView;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 76
    iget-object v0, p1, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter$ModeItemHolder;->mModeTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mOrderEditorUIItems:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;

    iget-object v1, v1, Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v0, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mOrderEditorUIItems:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;->mName:Ljava/lang/String;

    const-string v1, "com.transsion.camera.feature.mode.autoscenedetection.ASDModeEntry"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    iget-object v0, p1, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter$ModeItemHolder;->mModeIconView:Landroid/widget/ImageView;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 79
    iget-object v0, p1, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter$ModeItemHolder;->mModeTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 82
    :cond_1
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mOrderEditorUIItems:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;->mName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter$ModeItemHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter$ModeItemHolder;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 50
    new-instance p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter$TitleItemHolder;

    .line 51
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 50
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c006c

    .line 51
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter$TitleItemHolder;-><init>(Landroid/view/View;)V

    return-object p0

    :cond_0
    const/4 v1, 0x2

    const v2, 0x7f0c006d

    if-ne p2, v1, :cond_1

    .line 55
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 54
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 55
    invoke-virtual {p2, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 56
    iget-object p0, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f08034d

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 57
    new-instance p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter$ModeItemHolder;

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter$ModeItemHolder;-><init>(Landroid/view/View;)V

    return-object p0

    .line 60
    :cond_1
    new-instance p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter$ModeItemHolder;

    .line 61
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 60
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 61
    invoke-virtual {p2, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter$ModeItemHolder;-><init>(Landroid/view/View;)V

    return-object p0
.end method

.method public updateModeList(Ljava/util/List;Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 110
    iput-object p2, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mCurrentCamera:Ljava/lang/String;

    .line 111
    iput p3, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mModesNumberInTab:I

    .line 112
    iget-object p2, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mOrderEditorUIItems:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 113
    iget-object p2, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mOrderEditorUIItems:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 114
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x0

    const/4 p3, 0x6

    if-ge p1, p3, :cond_0

    .line 115
    iget-object p1, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mMainModeList:Ljava/util/List;

    iget-object p3, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mOrderEditorUIItems:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 117
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mMainModeList:Ljava/util/List;

    iget-object p3, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mOrderEditorUIItems:Ljava/util/List;

    iget v0, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mModesNumberInTab:I

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p3, p2, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 118
    iget-object p1, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mOtherModeList:Ljava/util/List;

    iget-object p3, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mOrderEditorUIItems:Ljava/util/List;

    iget v0, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mModesNumberInTab:I

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p3, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 120
    :goto_0
    iget-object p1, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mOrderEditorUIItems:Ljava/util/List;

    iget-object p3, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mMainFunction:Lcom/transsion/camera/app/ui/editor/TitleUIItem;

    invoke-interface {p1, p2, p3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 121
    iget-object p1, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mOrderEditorUIItems:Ljava/util/List;

    iget p2, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mModesNumberInTab:I

    add-int/lit8 p2, p2, 0x1

    iget-object p3, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mOtherFunction:Lcom/transsion/camera/app/ui/editor/TitleUIItem;

    invoke-interface {p1, p2, p3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 122
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
