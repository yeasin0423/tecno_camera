.class Lcom/transsion/camera/feature/mode/video/VideoRestriction;
.super Ljava/lang/Object;
.source "VideoRestriction.java"


# static fields
.field private static final VIDEO_MODE_KEY:Ljava/lang/String;

.field private static sPreviewRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

.field private static sRecordingRelationGroupForMode:Lcom/transsion/camera/app/common/relation/RelationGroup;

.field private static final sSatRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 22
    const-class v0, Lcom/transsion/camera/feature/mode/video/VideoModeEntry;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/mode/video/VideoRestriction;->VIDEO_MODE_KEY:Ljava/lang/String;

    .line 29
    new-instance v0, Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/mode/video/VideoRestriction;->sPreviewRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

    .line 30
    new-instance v0, Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/mode/video/VideoRestriction;->sRecordingRelationGroupForMode:Lcom/transsion/camera/app/common/relation/RelationGroup;

    .line 31
    new-instance v0, Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/mode/video/VideoRestriction;->sSatRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

    .line 38
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "key_screen_flash"

    const-string v2, "preview"

    const-string v3, "key_touch_capture"

    const-string v4, "off"

    const/16 v5, 0x1c

    if-le v0, v5, :cond_0

    .line 39
    sget-object v0, Lcom/transsion/camera/feature/mode/video/VideoRestriction;->sPreviewRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

    sget-object v5, Lcom/transsion/camera/feature/mode/video/VideoRestriction;->VIDEO_MODE_KEY:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setHeaderKey(Ljava/lang/String;)V

    .line 40
    sget-object v0, Lcom/transsion/camera/feature/mode/video/VideoRestriction;->sPreviewRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

    const-string v5, "key_touch_capture,key_screen_flash,key_distortion_correction,key_location"

    invoke-virtual {v0, v5}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setBodyKeys(Ljava/lang/String;)V

    .line 41
    sget-object v0, Lcom/transsion/camera/feature/mode/video/VideoRestriction;->sPreviewRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

    new-instance v5, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    sget-object v6, Lcom/transsion/camera/feature/mode/video/VideoRestriction;->VIDEO_MODE_KEY:Ljava/lang/String;

    invoke-direct {v5, v6, v2}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-virtual {v5, v3, v4, v4}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    .line 44
    invoke-virtual {v5, v1, v4, v4}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    const-string v1, "key_location"

    .line 45
    invoke-virtual {v5, v1, v4, v4}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    .line 46
    invoke-virtual {v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v1

    .line 41
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    goto :goto_0

    .line 48
    :cond_0
    sget-object v0, Lcom/transsion/camera/feature/mode/video/VideoRestriction;->sPreviewRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

    sget-object v5, Lcom/transsion/camera/feature/mode/video/VideoRestriction;->VIDEO_MODE_KEY:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setHeaderKey(Ljava/lang/String;)V

    .line 49
    sget-object v0, Lcom/transsion/camera/feature/mode/video/VideoRestriction;->sPreviewRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

    const-string v5, "key_touch_capture,key_screen_flash,key_distortion_correction"

    invoke-virtual {v0, v5}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setBodyKeys(Ljava/lang/String;)V

    .line 50
    sget-object v0, Lcom/transsion/camera/feature/mode/video/VideoRestriction;->sPreviewRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

    new-instance v5, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    sget-object v6, Lcom/transsion/camera/feature/mode/video/VideoRestriction;->VIDEO_MODE_KEY:Ljava/lang/String;

    invoke-direct {v5, v6, v2}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-virtual {v5, v3, v4, v4}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    .line 53
    invoke-virtual {v5, v1, v4, v4}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    .line 54
    invoke-virtual {v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v1

    .line 50
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 59
    :goto_0
    sget-object v0, Lcom/transsion/camera/feature/mode/video/VideoRestriction;->sRecordingRelationGroupForMode:Lcom/transsion/camera/app/common/relation/RelationGroup;

    sget-object v1, Lcom/transsion/camera/feature/mode/video/VideoRestriction;->VIDEO_MODE_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setHeaderKey(Ljava/lang/String;)V

    .line 60
    sget-object v0, Lcom/transsion/camera/feature/mode/video/VideoRestriction;->sRecordingRelationGroupForMode:Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-virtual {v0, v3}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setBodyKeys(Ljava/lang/String;)V

    .line 61
    sget-object v0, Lcom/transsion/camera/feature/mode/video/VideoRestriction;->sRecordingRelationGroupForMode:Lcom/transsion/camera/app/common/relation/RelationGroup;

    new-instance v1, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    sget-object v2, Lcom/transsion/camera/feature/mode/video/VideoRestriction;->VIDEO_MODE_KEY:Ljava/lang/String;

    const-string v5, "recording"

    invoke-direct {v1, v2, v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-virtual {v1, v3, v4, v4}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    .line 64
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v1

    .line 61
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 65
    sget-object v0, Lcom/transsion/camera/feature/mode/video/VideoRestriction;->sRecordingRelationGroupForMode:Lcom/transsion/camera/app/common/relation/RelationGroup;

    new-instance v1, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    sget-object v2, Lcom/transsion/camera/feature/mode/video/VideoRestriction;->VIDEO_MODE_KEY:Ljava/lang/String;

    const-string v5, "stop-recording"

    invoke-direct {v1, v2, v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-virtual {v1, v3, v4, v4}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    .line 68
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v1

    .line 65
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 72
    sget-object v0, Lcom/transsion/camera/feature/mode/video/VideoRestriction;->sSatRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

    sget-object v1, Lcom/transsion/camera/feature/mode/video/VideoRestriction;->VIDEO_MODE_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setHeaderKey(Ljava/lang/String;)V

    .line 73
    sget-object v0, Lcom/transsion/camera/feature/mode/video/VideoRestriction;->sSatRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

    const-string v1, "key_video_portrait,key_video_quality,key_flash"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setBodyKeys(Ljava/lang/String;)V

    .line 74
    sget-object v0, Lcom/transsion/camera/feature/mode/video/VideoRestriction;->sSatRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

    new-instance v1, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    sget-object v2, Lcom/transsion/camera/feature/mode/video/VideoRestriction;->VIDEO_MODE_KEY:Ljava/lang/String;

    const-string v3, "long-focus"

    invoke-direct {v1, v2, v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "key_video_portrait"

    const/4 v3, 0x0

    const-string v5, "off,on"

    .line 76
    invoke-virtual {v1, v2, v3, v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    const-string v6, "key_flash"

    .line 77
    invoke-virtual {v1, v6, v4, v4}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    .line 78
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v1

    .line 74
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 79
    sget-object v0, Lcom/transsion/camera/feature/mode/video/VideoRestriction;->sSatRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

    new-instance v1, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    sget-object v6, Lcom/transsion/camera/feature/mode/video/VideoRestriction;->VIDEO_MODE_KEY:Ljava/lang/String;

    const-string v7, "main"

    invoke-direct {v1, v6, v7}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-virtual {v1, v2, v3, v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    .line 82
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v1

    .line 79
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 83
    sget-object v0, Lcom/transsion/camera/feature/mode/video/VideoRestriction;->sSatRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

    new-instance v1, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    sget-object v3, Lcom/transsion/camera/feature/mode/video/VideoRestriction;->VIDEO_MODE_KEY:Ljava/lang/String;

    const-string v5, "wide"

    invoke-direct {v1, v3, v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-virtual {v1, v2, v4, v4}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    .line 86
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v1

    .line 83
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 87
    sget-object v0, Lcom/transsion/camera/feature/mode/video/VideoRestriction;->sSatRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

    new-instance v1, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    sget-object v2, Lcom/transsion/camera/feature/mode/video/VideoRestriction;->VIDEO_MODE_KEY:Ljava/lang/String;

    const-string v3, "reset"

    invoke-direct {v1, v2, v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v1

    .line 87
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    return-void
.end method

.method static getPreviewRelation()Lcom/transsion/camera/app/common/relation/Relation;
    .locals 3

    .line 93
    sget-object v0, Lcom/transsion/camera/feature/mode/video/VideoRestriction;->sPreviewRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

    const-string v1, "preview"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    return-object v0
.end method

.method static getSatRelation(Landroid/content/Context;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation;
    .locals 1

    .line 97
    sget-object p0, Lcom/transsion/camera/feature/mode/video/VideoRestriction;->sSatRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p0

    return-object p0
.end method
