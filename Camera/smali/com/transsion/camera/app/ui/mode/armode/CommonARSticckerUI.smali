.class public abstract Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;
.super Ljava/lang/Object;
.source "CommonARSticckerUI.java"

# interfaces
.implements Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$IScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI$UIHandler;,
        Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI$IARChangeListener;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private isCopyStatus:Z

.field mAnimojiDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/ui/mode/armode/data/ARStickerItemData;",
            ">;"
        }
    .end annotation
.end field

.field protected mAnimojiSelect:Ljava/lang/String;

.field protected mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private mAreaType:I

.field mCallback:Lcom/transsion/camera/app/ui/mode/armode/FileUtils$FileOperateCallback;

.field protected mContext:Landroid/content/Context;

.field private mFileUtils:Lcom/transsion/camera/app/ui/mode/armode/FileUtils;

.field private final mHintInfoAuto:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsOnScroll:Z

.field protected mIsUnInit:Z

.field private mMainHandler:Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI$UIHandler;

.field mNormalDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/ui/mode/armode/data/ARStickerItemData;",
            ">;"
        }
    .end annotation
.end field

.field protected mParentViewGroup:Landroid/view/ViewGroup;

.field protected mPreviousPosition:I

.field private mPromptDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

.field private mRecordingStartTime:J

.field private mRecordingTimeView:Landroid/widget/TextView;

.field private mRecordingTimeViewGroup:Landroid/widget/LinearLayout;

.field protected mRootLayout:Landroid/widget/FrameLayout;

.field private mRootResourceId:I

.field protected mSelect:Ljava/lang/String;

.field protected mStickerChangeListener:Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI$IARChangeListener;

.field protected mStickerLayout:Landroid/widget/RelativeLayout;

.field protected mStickerSelect:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 43
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;ILcom/transsion/camera/app/common/IAppUI;)V
    .locals 2

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mIsUnInit:Z

    .line 66
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->isCopyStatus:Z

    .line 67
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mIsOnScroll:Z

    .line 68
    new-instance v0, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mHintInfoAuto:Lcom/transsion/camera/app/common/ui/HintInfo;

    const-wide/16 v0, 0x0

    .line 86
    iput-wide v0, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mRecordingStartTime:J

    .line 307
    new-instance v0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI$1;-><init>(Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mCallback:Lcom/transsion/camera/app/ui/mode/armode/FileUtils$FileOperateCallback;

    .line 109
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mInflater:Landroid/view/LayoutInflater;

    .line 110
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mContext:Landroid/content/Context;

    .line 111
    iput-object p2, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mParentViewGroup:Landroid/view/ViewGroup;

    .line 112
    iput p3, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mRootResourceId:I

    .line 113
    iput-object p4, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 114
    new-instance p2, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI$UIHandler;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI$UIHandler;-><init>(Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI$1;)V

    iput-object p2, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mMainHandler:Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI$UIHandler;

    .line 115
    new-instance p2, Lcom/transsion/camera/app/ui/mode/armode/FileUtils;

    invoke-direct {p2, p1}, Lcom/transsion/camera/app/ui/mode/armode/FileUtils;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mFileUtils:Lcom/transsion/camera/app/ui/mode/armode/FileUtils;

    .line 116
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mCallback:Lcom/transsion/camera/app/ui/mode/armode/FileUtils$FileOperateCallback;

    invoke-virtual {p2, p0}, Lcom/transsion/camera/app/ui/mode/armode/FileUtils;->setFileOperateCallback(Lcom/transsion/camera/app/ui/mode/armode/FileUtils$FileOperateCallback;)V

    return-void
.end method

.method static synthetic access$100()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 42
    sget-object v0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$200(Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->updateRecordingTime()V

    return-void
.end method

.method static synthetic access$302(Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;J)J
    .locals 0

    .line 42
    iput-wide p1, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mRecordingStartTime:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;)Landroid/widget/LinearLayout;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mRecordingTimeViewGroup:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$500(JZ)Ljava/lang/String;
    .locals 0

    .line 42
    invoke-static {p0, p1, p2}, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->formatTime(JZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;)Landroid/widget/TextView;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mRecordingTimeView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$702(Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;Z)Z
    .locals 0

    .line 42
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->isCopyStatus:Z

    return p1
.end method

.method private static formatTime(JZ)Ljava/lang/String;
    .locals 7

    long-to-int v0, p0

    .line 225
    div-int/lit16 v0, v0, 0x3e8

    const-wide/16 v1, 0x3e8

    .line 226
    rem-long/2addr p0, v1

    long-to-int p0, p0

    .line 227
    rem-int/lit8 p1, v0, 0x3c

    .line 228
    div-int/lit8 v1, v0, 0x3c

    rem-int/lit8 v1, v1, 0x3c

    .line 229
    div-int/lit16 v0, v0, 0xe10

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eqz p2, :cond_1

    if-lez v0, :cond_0

    .line 233
    sget-object p2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v5

    div-int/lit8 p0, p0, 0xa

    .line 234
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v6, v2

    const-string p0, "%d:%02d:%02d.%02d"

    .line 233
    invoke-static {p2, p0, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 236
    :cond_0
    sget-object p2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v3

    div-int/lit8 p0, p0, 0xa

    .line 237
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v5

    const-string p0, "%02d:%02d.%02d"

    .line 236
    invoke-static {p2, p0, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    if-lez v0, :cond_2

    .line 241
    sget-object p0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v5

    const-string p1, "%d:%02d:%02d"

    invoke-static {p0, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 243
    :cond_2
    sget-object p0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array p2, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v3

    const-string p1, "%02d:%02d"

    invoke-static {p0, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private synthetic lambda$showCopyDialog$0(Ljava/lang/String;Lcom/transsion/camera/app/ui/mode/armode/data/ARStickerItemData;)V
    .locals 2

    .line 289
    iget-object v0, p2, Lcom/transsion/camera/app/ui/mode/armode/data/ARStickerItemData;->filePath:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 290
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mFileUtils:Lcom/transsion/camera/app/ui/mode/armode/FileUtils;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p2, Lcom/transsion/camera/app/ui/mode/armode/data/ARStickerItemData;->filePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/transsion/camera/app/ui/mode/armode/data/ARStickerItemData;->emojiFile:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DCIM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Camera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/transsion/camera/app/ui/mode/armode/FileUtils;->copyAssetsToSD(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/ui/mode/armode/FileUtils;

    .line 291
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mHintInfoAuto:Lcom/transsion/camera/app/common/ui/HintInfo;

    iget-object p2, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/transsion/camera/feature/mode/armode/R$string;->ar_emoji_copy_tip:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 292
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mHintInfoAuto:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$showCopyDialog$1(Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 p3, 0x1

    .line 286
    iput-boolean p3, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->isCopyStatus:Z

    .line 287
    iget-object p3, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v0, 0x27

    invoke-interface {p3, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 288
    iget-object p3, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mAnimojiDataList:Ljava/util/List;

    new-instance v0, Lcom/transsion/camera/app/ui/mode/armode/-$$Lambda$CommonARSticckerUI$-dROBgyqIdPaAVOo5O8TAQ6BTxo;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/app/ui/mode/armode/-$$Lambda$CommonARSticckerUI$-dROBgyqIdPaAVOo5O8TAQ6BTxo;-><init>(Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;Ljava/lang/String;)V

    invoke-interface {p3, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 295
    invoke-interface {p2}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private synthetic lambda$showCopyDialog$2(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 298
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 p2, 0x28

    invoke-interface {p0, p2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 299
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private updateRecordingTime()V
    .locals 4

    .line 175
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mRecordingStartTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3c8c

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 177
    sget-object p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "the recordtime is up "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v2, 0x0

    .line 180
    invoke-static {v0, v1, v2}, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->formatTime(JZ)Ljava/lang/String;

    move-result-object v0

    .line 181
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mRecordingTimeView:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 182
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mMainHandler:Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI$UIHandler;

    const/16 v0, 0x64

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method


# virtual methods
.method public hideCopyDialog()V
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mPromptDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mPromptDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    .line 252
    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mPromptDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    :cond_0
    return-void
.end method

.method public initView(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 120
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mSelect:Ljava/lang/String;

    .line 121
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mStickerSelect:Ljava/lang/String;

    .line 122
    iput-object p2, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mAnimojiSelect:Ljava/lang/String;

    .line 123
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mInflater:Landroid/view/LayoutInflater;

    iget p2, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mRootResourceId:I

    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mParentViewGroup:Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 124
    sget p2, Lcom/transsion/camera/feature/mode/armode/R$id;->root:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mRootLayout:Landroid/widget/FrameLayout;

    .line 125
    sget p2, Lcom/transsion/camera/feature/mode/armode/R$id;->sticker_root:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mStickerLayout:Landroid/widget/RelativeLayout;

    .line 126
    sget p2, Lcom/transsion/camera/feature/mode/armode/R$id;->recording_time_group:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mRecordingTimeViewGroup:Landroid/widget/LinearLayout;

    .line 127
    sget p2, Lcom/transsion/camera/feature/mode/armode/R$id;->recording_time:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mRecordingTimeView:Landroid/widget/TextView;

    .line 128
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/armode/ARStickerThread;->getInstance(Landroid/content/res/Resources;)Lcom/transsion/camera/feature/mode/armode/ARStickerThread;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/armode/ARStickerThread;->getAreatype()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mAreaType:I

    .line 129
    sget-object p2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mContext:Landroid/content/Context;

    .line 130
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 129
    invoke-static {v1, p1, p2, v0}, Lcom/transsion/camera/app/ui/mode/armode/ARStickerInfo;->getEffectsByEffectType(IILjava/lang/String;Landroid/content/res/Resources;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mNormalDataList:Ljava/util/List;

    .line 131
    iget p1, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mAreaType:I

    sget-object p2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mContext:Landroid/content/Context;

    .line 132
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x2

    .line 131
    invoke-static {v1, p1, p2, v0}, Lcom/transsion/camera/app/ui/mode/armode/ARStickerInfo;->getEffectsByEffectType(IILjava/lang/String;Landroid/content/res/Resources;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mAnimojiDataList:Ljava/util/List;

    return-void
.end method

.method public isShowCopyDialog()Z
    .locals 0

    .line 257
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mPromptDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public synthetic lambda$showCopyDialog$0$CommonARSticckerUI(Ljava/lang/String;Lcom/transsion/camera/app/ui/mode/armode/data/ARStickerItemData;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->lambda$showCopyDialog$0(Ljava/lang/String;Lcom/transsion/camera/app/ui/mode/armode/data/ARStickerItemData;)V

    return-void
.end method

.method public synthetic lambda$showCopyDialog$1$CommonARSticckerUI(Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->lambda$showCopyDialog$1(Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public synthetic lambda$showCopyDialog$2$CommonARSticckerUI(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->lambda$showCopyDialog$2(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public onScroll(Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$IScrollListener$Direction;III)V
    .locals 0

    return-void
.end method

.method public onScrollEnd()V
    .locals 1

    const/4 v0, 0x0

    .line 101
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mIsOnScroll:Z

    return-void
.end method

.method public onScrollStart()V
    .locals 1

    const/4 v0, 0x1

    .line 91
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mIsOnScroll:Z

    .line 92
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->hideCopyDialog()V

    return-void
.end method

.method public setARChangeListener(Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI$IARChangeListener;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mStickerChangeListener:Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI$IARChangeListener;

    return-void
.end method

.method showCopyDialog()V
    .locals 8

    .line 261
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mStickerLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mPromptDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_0
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->isCopyStatus:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mIsOnScroll:Z

    if-eqz v0, :cond_1

    goto/16 :goto_4

    .line 264
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/mode/armode/R$layout;->dialog_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 265
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mSelect:Ljava/lang/String;

    const/4 v3, 0x0

    .line 267
    iget-object v4, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mAnimojiDataList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/camera/app/ui/mode/armode/data/ARStickerItemData;

    .line 268
    iget-object v6, v5, Lcom/transsion/camera/app/ui/mode/armode/data/ARStickerItemData;->filePath:Ljava/lang/String;

    invoke-static {v6, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, v5, Lcom/transsion/camera/app/ui/mode/armode/data/ARStickerItemData;->emojiResImage:Ljava/lang/String;

    const-string v7, ""

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 271
    :try_start_0
    iget-object v3, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v5, Lcom/transsion/camera/app/ui/mode/armode/data/ARStickerItemData;->filePath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v5, Lcom/transsion/camera/app/ui/mode/armode/data/ARStickerItemData;->emojiFile:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v5, Lcom/transsion/camera/app/ui/mode/armode/data/ARStickerItemData;->emojiResImage:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v5

    new-array v5, v5, [B

    .line 273
    invoke-virtual {v3, v5}, Ljava/io/InputStream;->read([B)I

    .line 274
    iget-object v6, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/bumptech/glide/RequestManager;->load([B)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v5

    sget-object v6, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v5, v6}, Lcom/bumptech/glide/DrawableRequestBuilder;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    sget v6, Lcom/transsion/camera/feature/mode/armode/R$id;->gif_view:I

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    invoke-virtual {v5, v6}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catch_0
    move-exception v5

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception v5

    move-object v3, v2

    .line 276
    :goto_1
    :try_start_2
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 278
    :goto_2
    invoke-static {v3}, Lcom/transsion/camera/utils/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    const/4 v3, 0x1

    goto :goto_0

    :catchall_1
    move-exception p0

    move-object v2, v3

    :goto_3
    invoke-static {v2}, Lcom/transsion/camera/utils/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 279
    throw p0

    :cond_3
    if-eqz v3, :cond_4

    .line 284
    new-instance v2, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setView(Landroid/view/View;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    sget v0, Lcom/transsion/camera/feature/mode/armode/R$string;->ar_emoji_copy:I

    new-instance v3, Lcom/transsion/camera/app/ui/mode/armode/-$$Lambda$CommonARSticckerUI$8y_2SmktCX0dUhtPDIhVSXAQm6A;

    invoke-direct {v3, p0, v1}, Lcom/transsion/camera/app/ui/mode/armode/-$$Lambda$CommonARSticckerUI$8y_2SmktCX0dUhtPDIhVSXAQm6A;-><init>(Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;Ljava/lang/String;)V

    .line 285
    invoke-virtual {v2, v0, v3}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    const/high16 v0, 0x1040000

    new-instance v1, Lcom/transsion/camera/app/ui/mode/armode/-$$Lambda$CommonARSticckerUI$EE32lRai_bikyNp86omoWQQkR90;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/mode/armode/-$$Lambda$CommonARSticckerUI$EE32lRai_bikyNp86omoWQQkR90;-><init>(Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;)V

    .line 297
    invoke-virtual {v2, v0, v1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    .line 301
    invoke-virtual {v2}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->show()Lcom/transsion/widgetslib/dialog/PromptDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mPromptDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    :cond_4
    :goto_4
    return-void
.end method

.method public uninit()V
    .locals 2

    const/4 v0, 0x1

    .line 136
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mIsUnInit:Z

    .line 137
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mParentViewGroup:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mRootLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 138
    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mRootLayout:Landroid/widget/FrameLayout;

    .line 139
    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mStickerChangeListener:Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI$IARChangeListener;

    .line 140
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mHintInfoAuto:Lcom/transsion/camera/app/common/ui/HintInfo;

    if-eqz v0, :cond_0

    .line 141
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_0
    return-void
.end method

.method public updateStickerArea(I)V
    .locals 5

    .line 152
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mStickerLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 153
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/feature/mode/armode/R$dimen;->ar_root_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 154
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/feature/mode/armode/R$dimen;->ar_recyclerview_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 155
    iget-object v3, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/feature/mode/armode/R$dimen;->ar_preview_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    add-int/2addr v3, p1

    sub-int/2addr v3, v1

    add-int/2addr v3, v2

    const/4 v1, 0x0

    .line 156
    invoke-virtual {v0, v1, v3, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 157
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mStickerLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mRecordingTimeViewGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 159
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/feature/mode/armode/R$dimen;->ar_recordingtime_margin_top:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 160
    iget-object v3, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/feature/mode/armode/R$dimen;->ar_topbar_real_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    sub-int/2addr p1, v3

    add-int/2addr p1, v2

    .line 161
    invoke-virtual {v0, v1, p1, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 162
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mRecordingTimeViewGroup:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mRecordingTimeViewGroup:Landroid/widget/LinearLayout;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public updateUItoPhoto()V
    .locals 1

    .line 171
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mMainHandler:Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI$UIHandler;

    const/16 v0, 0x66

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public updateUItoVideo()V
    .locals 1

    .line 167
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mMainHandler:Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI$UIHandler;

    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
