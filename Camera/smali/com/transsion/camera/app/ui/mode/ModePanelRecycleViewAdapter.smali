.class public Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ModePanelRecycleViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter$ModeItemHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter$ModeItemHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentMode:Ljava/lang/String;

.field private mItemClickable:Z

.field private mModeChangedListener:Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;

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


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;Lcom/transsion/camera/app/common/IAppUIControl$IOrderEditorFragmentControl;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;->mItemClickable:Z

    .line 37
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;->mContext:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;->mModeChangedListener:Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;

    .line 39
    iput-object p3, p0, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;->mOrderEditorFragmentControl:Lcom/transsion/camera/app/common/IAppUIControl$IOrderEditorFragmentControl;

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 77
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;->updateCurrentMode(Ljava/lang/String;)V

    .line 78
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;->mModeChangedListener:Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;->onSwitchMode(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$1(Landroid/view/View;)Z
    .locals 1

    .line 82
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;->mCurrentMode:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;->updateCurrentMode(Ljava/lang/String;)V

    .line 83
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;->mModeChangedListener:Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;->mCurrentMode:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;->onSwitchMode(Ljava/lang/String;)V

    .line 84
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;->mOrderEditorFragmentControl:Lcom/transsion/camera/app/common/IAppUIControl$IOrderEditorFragmentControl;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUIControl$IOrderEditorFragmentControl;->enterEditorFragment()V

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;->mModeUIItems:Ljava/util/List;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    :goto_0
    return p0
.end method

.method public synthetic lambda$onBindViewHolder$0$ModePanelRecycleViewAdapter(Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;->lambda$onBindViewHolder$0(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$onBindViewHolder$1$ModePanelRecycleViewAdapter(Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;->lambda$onBindViewHolder$1(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 26
    check-cast p1, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter$ModeItemHolder;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;->onBindViewHolder(Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter$ModeItemHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter$ModeItemHolder;I)V
    .locals 7

    .line 51
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;->mModeUIItems:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->mName:Ljava/lang/String;

    .line 53
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f080643

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 54
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;->mModeUIItems:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    iget-boolean v2, v2, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->mIsSellingPoint:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;->mContext:Landroid/content/Context;

    .line 55
    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const/4 v4, 0x1

    invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 56
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;->mContext:Landroid/content/Context;

    const v5, 0x7f08054d

    invoke-virtual {v2, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 57
    new-instance v5, Landroid/graphics/drawable/LayerDrawable;

    const/4 v6, 0x2

    new-array v6, v6, [Landroid/graphics/drawable/Drawable;

    aput-object v1, v6, v3

    aput-object v2, v6, v4

    invoke-direct {v5, v6}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 58
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 60
    :cond_0
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 63
    :goto_0
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;->mCurrentMode:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 64
    iget-object v1, p1, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter$ModeItemHolder;->mModeIconView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;->mModeUIItems:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    iget v4, v4, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->mUnSelectedIconId:I

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 65
    iget-object v1, p1, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter$ModeItemHolder;->mModeTitleView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0601c1

    invoke-virtual {v4, v5, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 67
    iget-object v1, p1, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter$ModeItemHolder;->mModeTitleView:Landroid/widget/TextView;

    const-string v2, "sans-serif-medium"

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_1

    .line 69
    :cond_1
    iget-object v1, p1, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter$ModeItemHolder;->mModeIconView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;->mModeUIItems:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    iget v3, v3, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->mUnSelectedIconId:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 70
    iget-object v1, p1, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter$ModeItemHolder;->mModeTitleView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0601e1

    invoke-virtual {v3, v4, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 72
    iget-object v1, p1, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter$ModeItemHolder;->mModeTitleView:Landroid/widget/TextView;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 74
    :goto_1
    iget-object v1, p1, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter$ModeItemHolder;->mModeTitleView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;->mModeUIItems:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    iget-object v2, v2, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;->mModeUIItems:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    iget-object p2, p2, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->mName:Ljava/lang/String;

    invoke-virtual {v1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 76
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/transsion/camera/app/ui/mode/-$$Lambda$ModePanelRecycleViewAdapter$J4o4iHEOO9h0_ziAJnE-cDRN2dU;

    invoke-direct {v1, p0, v0}, Lcom/transsion/camera/app/ui/mode/-$$Lambda$ModePanelRecycleViewAdapter$J4o4iHEOO9h0_ziAJnE-cDRN2dU;-><init>(Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object p2, p0, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;->mOrderEditorFragmentControl:Lcom/transsion/camera/app/common/IAppUIControl$IOrderEditorFragmentControl;

    if-eqz p2, :cond_2

    invoke-interface {p2}, Lcom/transsion/camera/app/common/IAppUIControl$IOrderEditorFragmentControl;->isSecureCamera()Z

    move-result p2

    if-nez p2, :cond_2

    .line 81
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/transsion/camera/app/ui/mode/-$$Lambda$ModePanelRecycleViewAdapter$jnW_-bGbOLqr_bTsIOmC_J13DR8;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/mode/-$$Lambda$ModePanelRecycleViewAdapter$jnW_-bGbOLqr_bTsIOmC_J13DR8;-><init>(Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 88
    :cond_2
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;->mItemClickable:Z

    invoke-virtual {p1, p0}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter$ModeItemHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter$ModeItemHolder;
    .locals 2

    .line 45
    new-instance p0, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter$ModeItemHolder;

    .line 46
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 45
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0072

    const/4 v1, 0x0

    .line 46
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter$ModeItemHolder;-><init>(Landroid/view/View;)V

    return-object p0
.end method

.method public updateCurrentMode(Ljava/lang/String;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;->mCurrentMode:Ljava/lang/String;

    .line 98
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public updateItemClickable(Z)V
    .locals 1

    .line 106
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;->mItemClickable:Z

    if-eq v0, p1, :cond_0

    .line 107
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;->mItemClickable:Z

    .line 108
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public updateModeData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/ui/mode/ModeUIItem;",
            ">;)V"
        }
    .end annotation

    .line 102
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;->mModeUIItems:Ljava/util/List;

    return-void
.end method
