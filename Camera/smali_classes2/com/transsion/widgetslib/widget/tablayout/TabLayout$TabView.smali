.class public final Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;
.super Landroid/widget/LinearLayout;
.source "TabLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/widget/tablayout/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TabView"
.end annotation


# instance fields
.field private badgeAnchorView:Landroid/view/View;

.field private badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

.field private baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private customIconView:Landroid/widget/ImageView;

.field private customTextView:Landroid/widget/TextView;

.field private customView:Landroid/view/View;

.field private defaultMaxLines:I

.field private iconView:Landroid/widget/ImageView;

.field private tab:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;

.field private textView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/widget/tablayout/TabLayout;Landroid/content/Context;)V
    .locals 4

    .line 2168
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->this$0:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    .line 2169
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 2165
    iput v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->defaultMaxLines:I

    .line 2170
    invoke-direct {p0, p2}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->updateBackgroundDrawable(Landroid/content/Context;)V

    .line 2171
    iget p2, p1, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabPaddingStart:I

    iget v1, p1, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabPaddingTop:I

    iget v2, p1, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabPaddingEnd:I

    iget v3, p1, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabPaddingBottom:I

    invoke-static {p0, p2, v1, v2, v3}, Landroidx/core/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    const/16 p2, 0x11

    .line 2173
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 2174
    iget-boolean p1, p1, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->inlineLabel:Z

    xor-int/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2175
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 2177
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const/16 p2, 0x3ea

    invoke-static {p1, p2}, Landroidx/core/view/PointerIconCompat;->getSystemIcon(Landroid/content/Context;I)Landroidx/core/view/PointerIconCompat;

    move-result-object p1

    .line 2176
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setPointerIcon(Landroid/view/View;Landroidx/core/view/PointerIconCompat;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;)I
    .locals 0

    .line 2147
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->getContentWidth()I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;Landroid/graphics/Canvas;)V
    .locals 0

    .line 2147
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->drawBackground(Landroid/graphics/Canvas;)V

    return-void
.end method

.method static synthetic access$300(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;)Z
    .locals 0

    .line 2147
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->hasBadgeDrawable()Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;)Lcom/google/android/material/badge/BadgeDrawable;
    .locals 0

    .line 2147
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

    return-object p0
.end method

.method static synthetic access$900(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;Landroid/view/View;)V
    .locals 0

    .line 2147
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->tryUpdateBadgeDrawableBounds(Landroid/view/View;)V

    return-void
.end method

.method private addOnLayoutChangeListener(Landroid/view/View;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 2567
    :cond_0
    new-instance v0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView$1;

    invoke-direct {v0, p0, p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView$1;-><init>(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method private createPreApi18BadgeAnchorRoot()Landroid/widget/FrameLayout;
    .locals 2

    .line 2524
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2525
    new-instance p0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {p0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 2528
    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private drawBackground(Landroid/graphics/Canvas;)V
    .locals 5

    .line 2240
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2241
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getRight()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2242
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method private getContentWidth()I
    .locals 8

    const/4 v0, 0x3

    new-array v1, v0, [Landroid/view/View;

    .line 2763
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->textView:Landroid/widget/TextView;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->customView:Landroid/view/View;

    const/4 v2, 0x2

    aput-object p0, v1, v2

    move p0, v3

    move v2, p0

    move v5, v2

    :goto_0
    if-ge v3, v0, :cond_3

    aget-object v6, v1, v3

    if-eqz v6, :cond_2

    .line 2764
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_2

    if-eqz v5, :cond_0

    .line 2765
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v7

    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_1

    :cond_0
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v2

    :goto_1
    if-eqz v5, :cond_1

    .line 2766
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-static {p0, v5}, Ljava/lang/Math;->max(II)I

    move-result p0

    goto :goto_2

    :cond_1
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result p0

    :goto_2
    move v5, v4

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    sub-int/2addr p0, v2

    return p0
.end method

.method private getCustomParentForBadge(Landroid/view/View;)Landroid/widget/FrameLayout;
    .locals 2

    .line 2746
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->textView:Landroid/widget/TextView;

    if-eq p1, p0, :cond_0

    return-object v1

    .line 2749
    :cond_0
    sget-boolean p0, Lcom/google/android/material/badge/BadgeUtils;->USE_COMPAT_PARENT:Z

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Landroid/widget/FrameLayout;

    :cond_1
    return-object v1
.end method

.method private hasBadgeDrawable()Z
    .locals 0

    .line 2741
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private inflateAndAddDefaultIconView()V
    .locals 4

    .line 2497
    sget-boolean v0, Lcom/google/android/material/badge/BadgeUtils;->USE_COMPAT_PARENT:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2498
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->createPreApi18BadgeAnchorRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    .line 2499
    invoke-virtual {p0, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_0

    :cond_0
    move-object v0, p0

    .line 2503
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/transsion/widgetslib/R$layout;->design_layout_tab_icon:I

    .line 2504
    invoke-virtual {v2, v3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    .line 2505
    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void
.end method

.method private inflateAndAddDefaultTextView()V
    .locals 4

    .line 2510
    sget-boolean v0, Lcom/google/android/material/badge/BadgeUtils;->USE_COMPAT_PARENT:Z

    if-eqz v0, :cond_0

    .line 2511
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->createPreApi18BadgeAnchorRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    .line 2512
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    move-object v0, p0

    .line 2516
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$layout;->os_design_layout_tab_text:I

    const/4 v3, 0x0

    .line 2517
    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->textView:Landroid/widget/TextView;

    .line 2519
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private tryAttachBadgeToAnchor(Landroid/view/View;)V
    .locals 2

    .line 2620
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->hasBadgeDrawable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 2625
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    .line 2626
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setClipToPadding(Z)V

    .line 2627
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

    .line 2628
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->getCustomParentForBadge(Landroid/view/View;)Landroid/widget/FrameLayout;

    move-result-object v1

    .line 2627
    invoke-static {v0, p1, v1}, Lcom/google/android/material/badge/BadgeUtils;->attachBadgeDrawable(Lcom/google/android/material/badge/BadgeDrawable;Landroid/view/View;Landroid/widget/FrameLayout;)V

    .line 2629
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->badgeAnchorView:Landroid/view/View;

    :cond_1
    return-void
.end method

.method private tryRemoveBadgeFromAnchor()V
    .locals 3

    .line 2634
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->hasBadgeDrawable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2637
    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->badgeAnchorView:Landroid/view/View;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 2639
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    .line 2640
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setClipToPadding(Z)V

    .line 2641
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->badgeAnchorView:Landroid/view/View;

    .line 2642
    invoke-direct {p0, v1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->getCustomParentForBadge(Landroid/view/View;)Landroid/widget/FrameLayout;

    move-result-object v2

    .line 2641
    invoke-static {v0, v1, v2}, Lcom/google/android/material/badge/BadgeUtils;->detachBadgeDrawable(Lcom/google/android/material/badge/BadgeDrawable;Landroid/view/View;Landroid/widget/FrameLayout;)V

    const/4 v0, 0x0

    .line 2643
    iput-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->badgeAnchorView:Landroid/view/View;

    :cond_1
    return-void
.end method

.method private tryUpdateBadgeAnchor()V
    .locals 2

    .line 2588
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->hasBadgeDrawable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2591
    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->customView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2593
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->tryRemoveBadgeFromAnchor()V

    goto :goto_0

    .line 2595
    :cond_1
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->tab:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2596
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->badgeAnchorView:Landroid/view/View;

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    if-eq v0, v1, :cond_2

    .line 2597
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->tryRemoveBadgeFromAnchor()V

    .line 2599
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->tryAttachBadgeToAnchor(Landroid/view/View;)V

    goto :goto_0

    .line 2601
    :cond_2
    invoke-direct {p0, v1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->tryUpdateBadgeDrawableBounds(Landroid/view/View;)V

    goto :goto_0

    .line 2603
    :cond_3
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->textView:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->tab:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;

    if-eqz v0, :cond_5

    .line 2605
    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->getTabLabelVisibility()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 2606
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->badgeAnchorView:Landroid/view/View;

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->textView:Landroid/widget/TextView;

    if-eq v0, v1, :cond_4

    .line 2607
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->tryRemoveBadgeFromAnchor()V

    .line 2609
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->textView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->tryAttachBadgeToAnchor(Landroid/view/View;)V

    goto :goto_0

    .line 2611
    :cond_4
    invoke-direct {p0, v1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->tryUpdateBadgeDrawableBounds(Landroid/view/View;)V

    goto :goto_0

    .line 2614
    :cond_5
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->tryRemoveBadgeFromAnchor()V

    :goto_0
    return-void
.end method

.method private tryUpdateBadgeDrawableBounds(Landroid/view/View;)V
    .locals 1

    .line 2735
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->hasBadgeDrawable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->badgeAnchorView:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 2736
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->getCustomParentForBadge(Landroid/view/View;)Landroid/widget/FrameLayout;

    move-result-object p0

    invoke-static {v0, p1, p0}, Lcom/google/android/material/badge/BadgeUtils;->setBadgeDrawableBounds(Lcom/google/android/material/badge/BadgeDrawable;Landroid/view/View;Landroid/widget/FrameLayout;)V

    :cond_0
    return-void
.end method

.method private updateBackgroundDrawable(Landroid/content/Context;)V
    .locals 6

    .line 2181
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->this$0:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    iget p1, p1, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabBackgroundResId:I

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2182
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->this$0:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    iget v1, v1, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabBackgroundResId:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    .line 2183
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2184
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0

    .line 2187
    :cond_0
    iput-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 2191
    :cond_1
    :goto_0
    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v1, 0x0

    .line 2192
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 2194
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->this$0:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    iget-object v2, v2, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabRippleColorStateList:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_5

    .line 2195
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/high16 v3, 0x42fc0000    # 126.0f

    .line 2200
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const/4 v3, -0x1

    .line 2201
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 2206
    iget-object v3, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->this$0:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    iget-object v3, v3, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabRippleColorStateList:Landroid/content/res/ColorStateList;

    .line 2211
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_4

    .line 2213
    new-instance v1, Landroid/graphics/drawable/RippleDrawable;

    iget-object v4, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->this$0:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    iget-boolean v4, v4, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->unboundedRipple:Z

    if-eqz v4, :cond_2

    move-object p1, v0

    :cond_2
    iget-object v4, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->this$0:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    iget-boolean v4, v4, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->unboundedRipple:Z

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    move-object v0, v2

    :goto_1
    invoke-direct {v1, v3, p1, v0}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    move-object p1, v1

    goto :goto_2

    .line 2219
    :cond_4
    invoke-static {v2}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2220
    invoke-static {v0, v3}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 2221
    new-instance v2, Landroid/graphics/drawable/LayerDrawable;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/graphics/drawable/Drawable;

    aput-object p1, v3, v1

    const/4 p1, 0x1

    aput-object v0, v3, p1

    invoke-direct {v2, v3}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    move-object p1, v2

    .line 2226
    :cond_5
    :goto_2
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 2227
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->this$0:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    return-void
.end method

.method private updateTextAndIcon(Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 7

    .line 2658
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->tab:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2659
    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->tab:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;

    .line 2660
    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 2662
    :goto_0
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->tab:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz p2, :cond_3

    if-eqz v0, :cond_2

    .line 2666
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2667
    invoke-virtual {p2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2668
    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    .line 2670
    :cond_2
    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2671
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2676
    :cond_3
    :goto_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v5, 0x1

    xor-int/2addr v0, v5

    if-eqz p1, :cond_7

    if-eqz p2, :cond_4

    .line 2679
    invoke-virtual {p2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v6

    if-nez v6, :cond_4

    .line 2680
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    :cond_4
    if-eqz v0, :cond_6

    .line 2684
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2685
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->tab:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;

    invoke-static {v2}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->access$1000(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;)I

    move-result v2

    if-ne v2, v5, :cond_5

    .line 2686
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 2688
    :cond_5
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2690
    :goto_3
    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_4

    .line 2692
    :cond_6
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2693
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    :goto_4
    if-eqz p2, :cond_a

    .line 2699
    invoke-virtual {p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_8

    .line 2701
    invoke-virtual {p2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_8

    .line 2703
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/google/android/material/internal/ViewUtils;->dpToPx(Landroid/content/Context;I)F

    move-result v2

    float-to-int v2, v2

    goto :goto_5

    :cond_8
    move v2, v4

    .line 2705
    :goto_5
    iget-object v3, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->this$0:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    iget-boolean v3, v3, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->inlineLabel:Z

    if-eqz v3, :cond_9

    .line 2706
    invoke-static {p1}, Landroidx/core/view/MarginLayoutParamsCompat;->getMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v3

    if-eq v2, v3, :cond_a

    .line 2707
    invoke-static {p1, v2}, Landroidx/core/view/MarginLayoutParamsCompat;->setMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    .line 2708
    iput v4, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 2710
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2711
    invoke-virtual {p2}, Landroid/widget/ImageView;->requestLayout()V

    goto :goto_6

    .line 2714
    :cond_9
    iget v3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-eq v2, v3, :cond_a

    .line 2715
    iput v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 2716
    invoke-static {p1, v4}, Landroidx/core/view/MarginLayoutParamsCompat;->setMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    .line 2718
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2719
    invoke-virtual {p2}, Landroid/widget/ImageView;->requestLayout()V

    .line 2724
    :cond_a
    :goto_6
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->tab:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;

    if-eqz p1, :cond_b

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->access$000(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_7

    :cond_b
    move-object p1, v1

    :goto_7
    if-eqz v0, :cond_c

    .line 2727
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setTooltipText(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 2729
    :cond_c
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setTooltipText(Ljava/lang/CharSequence;)V

    :goto_8
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 3

    .line 2248
    invoke-super {p0}, Landroid/widget/LinearLayout;->drawableStateChanged()V

    .line 2250
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getDrawableState()[I

    move-result-object v0

    .line 2251
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2252
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    or-int/2addr v2, v0

    :cond_0
    if-eqz v2, :cond_1

    .line 2256
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    .line 2257
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->this$0:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    :cond_1
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 6

    .line 2317
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2318
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeDrawable;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2319
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    .line 2320
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

    .line 2321
    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeDrawable;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2320
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2323
    :cond_0
    invoke-static {p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->wrap(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2324
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->tab:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;

    .line 2328
    invoke-virtual {v2}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->getPosition()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2331
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isSelected()Z

    move-result v5

    .line 2325
    invoke-static/range {v0 .. v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object v0

    .line 2324
    invoke-virtual {p1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    .line 2332
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isSelected()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    .line 2333
    invoke-virtual {p1, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClickable(Z)V

    .line 2334
    sget-object p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_CLICK:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {p1, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->removeAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)Z

    :cond_1
    const-string p0, "Tab"

    .line 2336
    invoke-virtual {p1, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setRoleDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 4

    .line 2341
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 2342
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 2343
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->this$0:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    invoke-virtual {v2}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->getTabMaxWidth()I

    move-result v2

    if-lez v2, :cond_1

    if-eqz v1, :cond_0

    if-le v0, v2, :cond_1

    .line 2351
    :cond_0
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->this$0:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    iget p1, p1, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabMaxWidth:I

    const/high16 v0, -0x80000000

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 2358
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 2361
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->textView:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 2362
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->this$0:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    iget v0, v0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabTextSize:F

    .line 2363
    iget v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->defaultMaxLines:I

    .line 2365
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    move v1, v3

    goto :goto_0

    .line 2368
    :cond_2
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->textView:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/widget/TextView;->getLineCount()I

    move-result v2

    if-le v2, v3, :cond_3

    .line 2370
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->this$0:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    iget v0, v0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabTextMultiLineSize:F

    .line 2373
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->textView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    .line 2374
    iget-object v3, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->textView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLineCount()I

    .line 2375
    iget-object v3, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->textView:Landroid/widget/TextView;

    invoke-static {v3}, Landroidx/core/widget/TextViewCompat;->getMaxLines(Landroid/widget/TextView;)I

    move-result v3

    cmpl-float v2, v0, v2

    if-nez v2, :cond_4

    if-ltz v3, :cond_5

    if-eq v1, v3, :cond_5

    .line 2401
    :cond_4
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->textView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2402
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 2403
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    :cond_5
    return-void
.end method

.method public performClick()Z
    .locals 2

    .line 2263
    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    move-result v0

    .line 2265
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->tab:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2267
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->playSoundEffect(I)V

    .line 2269
    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->tab:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->select()V

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method reset()V
    .locals 1

    const/4 v0, 0x0

    .line 2417
    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->setTab(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;)V

    const/4 v0, 0x0

    .line 2418
    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->setSelected(Z)V

    return-void
.end method

.method public setSelected(Z)V
    .locals 2

    .line 2278
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isSelected()Z

    move-result v0

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2280
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 2282
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_1

    const/4 v0, 0x4

    .line 2284
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->sendAccessibilityEvent(I)V

    .line 2289
    :cond_1
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->textView:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 2290
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    if-eqz p1, :cond_3

    .line 2293
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->this$0:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    invoke-static {v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->access$800(Lcom/transsion/widgetslib/widget/tablayout/TabLayout;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2294
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->textView:Landroid/widget/TextView;

    sget v1, Lcom/transsion/widgetslib/R$style;->os_medium_fontweight:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAppearance(I)V

    goto :goto_1

    .line 2296
    :cond_2
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->textView:Landroid/widget/TextView;

    sget v1, Lcom/transsion/widgetslib/R$style;->os_medium_fontweight:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAppearance(I)V

    goto :goto_1

    .line 2299
    :cond_3
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->this$0:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    invoke-static {v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->access$800(Lcom/transsion/widgetslib/widget/tablayout/TabLayout;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2300
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->textView:Landroid/widget/TextView;

    sget v1, Lcom/transsion/widgetslib/R$style;->os_medium_fontweight:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAppearance(I)V

    goto :goto_1

    .line 2302
    :cond_4
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->textView:Landroid/widget/TextView;

    sget v1, Lcom/transsion/widgetslib/R$style;->os_regular_fontweight:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 2307
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_6

    .line 2308
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 2310
    :cond_6
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->customView:Landroid/view/View;

    if-eqz p0, :cond_7

    .line 2311
    invoke-virtual {p0, p1}, Landroid/view/View;->setSelected(Z)V

    :cond_7
    return-void
.end method

.method setTab(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;)V
    .locals 1

    .line 2410
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->tab:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;

    if-eq p1, v0, :cond_0

    .line 2411
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->tab:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;

    .line 2412
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->update()V

    :cond_0
    return-void
.end method

.method final update()V
    .locals 5

    .line 2422
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->tab:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2423
    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_6

    .line 2425
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eq v3, p0, :cond_2

    if-eqz v3, :cond_1

    .line 2428
    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2430
    :cond_1
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2432
    :cond_2
    iput-object v2, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->customView:Landroid/view/View;

    .line 2433
    iget-object v3, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->textView:Landroid/widget/TextView;

    const/16 v4, 0x8

    if-eqz v3, :cond_3

    .line 2434
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2436
    :cond_3
    iget-object v3, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    if-eqz v3, :cond_4

    .line 2437
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2438
    iget-object v3, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    const v1, 0x1020014

    .line 2441
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->customTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_5

    .line 2443
    invoke-static {v1}, Landroidx/core/widget/TextViewCompat;->getMaxLines(Landroid/widget/TextView;)I

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->defaultMaxLines:I

    :cond_5
    const v1, 0x1020006

    .line 2445
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->customIconView:Landroid/widget/ImageView;

    goto :goto_1

    .line 2448
    :cond_6
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->customView:Landroid/view/View;

    if-eqz v2, :cond_7

    .line 2449
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 2450
    iput-object v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->customView:Landroid/view/View;

    .line 2452
    :cond_7
    iput-object v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->customTextView:Landroid/widget/TextView;

    .line 2453
    iput-object v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->customIconView:Landroid/widget/ImageView;

    .line 2456
    :goto_1
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->customView:Landroid/view/View;

    if-nez v1, :cond_c

    .line 2458
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    if-nez v1, :cond_8

    .line 2459
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->inflateAndAddDefaultIconView()V

    :cond_8
    if-eqz v0, :cond_9

    .line 2462
    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 2463
    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 2466
    :cond_9
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->textView:Landroid/widget/TextView;

    if-nez v1, :cond_a

    .line 2467
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->inflateAndAddDefaultTextView()V

    .line 2471
    :cond_a
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->this$0:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    iget-object v1, v1, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabTextColors:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_b

    .line 2472
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->textView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 2474
    :cond_b
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->textView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v2}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->updateTextAndIcon(Landroid/widget/TextView;Landroid/widget/ImageView;)V

    .line 2476
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->tryUpdateBadgeAnchor()V

    .line 2477
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    invoke-direct {p0, v1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->addOnLayoutChangeListener(Landroid/view/View;)V

    .line 2478
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->textView:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->addOnLayoutChangeListener(Landroid/view/View;)V

    goto :goto_2

    .line 2481
    :cond_c
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->customTextView:Landroid/widget/TextView;

    if-nez v1, :cond_d

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->customIconView:Landroid/widget/ImageView;

    if-eqz v1, :cond_e

    .line 2482
    :cond_d
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->customTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->customIconView:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v2}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->updateTextAndIcon(Landroid/widget/TextView;Landroid/widget/ImageView;)V

    :cond_e
    :goto_2
    if-eqz v0, :cond_f

    .line 2486
    invoke-static {v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->access$000(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 2489
    invoke-static {v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->access$000(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_f
    if-eqz v0, :cond_10

    .line 2492
    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_3

    :cond_10
    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->setSelected(Z)V

    return-void
.end method
