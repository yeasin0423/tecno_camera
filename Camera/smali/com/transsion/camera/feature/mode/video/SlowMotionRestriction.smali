.class public Lcom/transsion/camera/feature/mode/video/SlowMotionRestriction;
.super Ljava/lang/Object;
.source "SlowMotionRestriction.java"


# static fields
.field private static final KEY_MODE:Ljava/lang/String;

.field private static sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 11
    const-class v0, Lcom/transsion/camera/feature/mode/video/SlowMotionModeEntry;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/mode/video/SlowMotionRestriction;->KEY_MODE:Ljava/lang/String;

    .line 13
    new-instance v0, Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/mode/video/SlowMotionRestriction;->sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    .line 16
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "off,torch"

    const-string v2, "key_flash"

    const-string v3, "key_face_detection"

    const-string v4, "key_eye_detection"

    const-string v5, "key_screen_flash"

    const-string v6, "key_touch_capture"

    const-string v7, "key_setting_quick_preview"

    const-string v8, "on"

    const-string v9, "false"

    const-string v10, "off"

    const/16 v11, 0x1c

    if-le v0, v11, :cond_0

    .line 17
    sget-object v0, Lcom/transsion/camera/feature/mode/video/SlowMotionRestriction;->sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    sget-object v11, Lcom/transsion/camera/feature/mode/video/SlowMotionRestriction;->KEY_MODE:Ljava/lang/String;

    invoke-virtual {v0, v11}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setHeaderKey(Ljava/lang/String;)V

    .line 18
    sget-object v0, Lcom/transsion/camera/feature/mode/video/SlowMotionRestriction;->sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    const-string v11, "key_setting_quick_preview,key_touch_capture,key_screen_flash,key_distortion_correction,key_location,key_eye_detection,key_face_detection,key_auto_watermark, key_flash"

    invoke-virtual {v0, v11}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setBodyKeys(Ljava/lang/String;)V

    .line 23
    sget-object v0, Lcom/transsion/camera/feature/mode/video/SlowMotionRestriction;->sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    new-instance v11, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    sget-object v12, Lcom/transsion/camera/feature/mode/video/SlowMotionRestriction;->KEY_MODE:Ljava/lang/String;

    invoke-direct {v11, v12, v8}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-virtual {v11, v7, v9, v9}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    .line 26
    invoke-virtual {v11, v6, v10, v10}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    .line 27
    invoke-virtual {v11, v5, v10, v10}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    const-string v5, "key_location"

    .line 28
    invoke-virtual {v11, v5, v10, v10}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    .line 29
    invoke-virtual {v11, v4, v10, v10}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    .line 30
    invoke-virtual {v11, v3, v10, v10}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    const-string v3, "key_auto_watermark"

    .line 31
    invoke-virtual {v11, v3, v10, v10}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    .line 32
    invoke-virtual {v11, v2, v10, v1}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    .line 34
    invoke-virtual {v11}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    goto :goto_0

    .line 36
    :cond_0
    sget-object v0, Lcom/transsion/camera/feature/mode/video/SlowMotionRestriction;->sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    sget-object v11, Lcom/transsion/camera/feature/mode/video/SlowMotionRestriction;->KEY_MODE:Ljava/lang/String;

    invoke-virtual {v0, v11}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setHeaderKey(Ljava/lang/String;)V

    .line 37
    sget-object v0, Lcom/transsion/camera/feature/mode/video/SlowMotionRestriction;->sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    const-string v11, "key_setting_quick_preview,key_touch_capture,key_screen_flash,key_distortion_correction,key_eye_detection,key_face_detection, key_flash"

    invoke-virtual {v0, v11}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setBodyKeys(Ljava/lang/String;)V

    .line 41
    sget-object v0, Lcom/transsion/camera/feature/mode/video/SlowMotionRestriction;->sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    new-instance v11, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    sget-object v12, Lcom/transsion/camera/feature/mode/video/SlowMotionRestriction;->KEY_MODE:Ljava/lang/String;

    invoke-direct {v11, v12, v8}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-virtual {v11, v7, v9, v9}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    .line 44
    invoke-virtual {v11, v6, v10, v10}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    .line 45
    invoke-virtual {v11, v5, v10, v10}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    .line 46
    invoke-virtual {v11, v4, v10, v10}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    .line 47
    invoke-virtual {v11, v3, v10, v10}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    .line 48
    invoke-virtual {v11, v2, v10, v1}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    .line 50
    invoke-virtual {v11}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v1

    .line 41
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    :goto_0
    return-void
.end method

.method public static getRelation(Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation;
    .locals 3

    .line 55
    sget-object v0, Lcom/transsion/camera/feature/mode/video/SlowMotionRestriction;->sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    const-string v1, "on"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    const-string v1, "key_flash"

    const-string v2, "off,torch"

    .line 56
    invoke-virtual {v0, v1, p0, v2}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
