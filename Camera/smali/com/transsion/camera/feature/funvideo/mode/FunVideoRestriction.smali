.class Lcom/transsion/camera/feature/funvideo/mode/FunVideoRestriction;
.super Ljava/lang/Object;
.source "FunVideoRestriction.java"


# static fields
.field private static final FUNVIDEO_MODE_KEY:Ljava/lang/String;

.field private static final sFaceDetectRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

.field private static sMusicTemplateRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

.field private static sPreviewRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 19
    const-class v0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoModeEntry;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoRestriction;->FUNVIDEO_MODE_KEY:Ljava/lang/String;

    .line 22
    new-instance v0, Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoRestriction;->sPreviewRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

    .line 23
    new-instance v0, Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoRestriction;->sMusicTemplateRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    .line 24
    new-instance v0, Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoRestriction;->sFaceDetectRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

    .line 27
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "off,torch"

    const-string v2, "key_flash"

    const-string v3, "key_auto_watermark"

    const-string v4, "key_eye_detection"

    const-string v5, "key_screen_flash"

    const-string v6, "key_touch_capture"

    const-string v7, "preview"

    const-string v8, "key_face_detection"

    const-string v9, "off"

    const/16 v10, 0x1c

    if-le v0, v10, :cond_0

    .line 28
    sget-object v0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoRestriction;->sPreviewRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

    sget-object v10, Lcom/transsion/camera/feature/funvideo/mode/FunVideoRestriction;->FUNVIDEO_MODE_KEY:Ljava/lang/String;

    invoke-virtual {v0, v10}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setHeaderKey(Ljava/lang/String;)V

    .line 29
    sget-object v0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoRestriction;->sPreviewRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

    const-string v10, "key_touch_capture,key_screen_flash,key_distortion_correction,key_location,key_shutter_sound,key_face_detection,key_eye_detection,key_auto_watermark, key_flash"

    invoke-virtual {v0, v10}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setBodyKeys(Ljava/lang/String;)V

    .line 34
    sget-object v0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoRestriction;->sPreviewRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

    new-instance v10, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    sget-object v11, Lcom/transsion/camera/feature/funvideo/mode/FunVideoRestriction;->FUNVIDEO_MODE_KEY:Ljava/lang/String;

    invoke-direct {v10, v11, v7}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-virtual {v10, v6, v9, v9}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    .line 37
    invoke-virtual {v10, v5, v9, v9}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    const-string v5, "key_location"

    .line 38
    invoke-virtual {v10, v5, v9, v9}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    .line 39
    invoke-virtual {v10, v8, v9, v9}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    .line 40
    invoke-virtual {v10, v4, v9, v9}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    .line 41
    invoke-virtual {v10, v3, v9, v9}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    .line 42
    invoke-virtual {v10, v2, v9, v1}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    .line 44
    invoke-virtual {v10}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    goto :goto_0

    .line 46
    :cond_0
    sget-object v0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoRestriction;->sPreviewRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

    sget-object v10, Lcom/transsion/camera/feature/funvideo/mode/FunVideoRestriction;->FUNVIDEO_MODE_KEY:Ljava/lang/String;

    invoke-virtual {v0, v10}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setHeaderKey(Ljava/lang/String;)V

    .line 47
    sget-object v0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoRestriction;->sPreviewRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

    const-string v10, "key_touch_capture,key_screen_flash,key_distortion_correction,key_shutter_sound,key_eye_detection,key_auto_watermark, key_flash"

    invoke-virtual {v0, v10}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setBodyKeys(Ljava/lang/String;)V

    .line 51
    sget-object v0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoRestriction;->sPreviewRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

    new-instance v10, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    sget-object v11, Lcom/transsion/camera/feature/funvideo/mode/FunVideoRestriction;->FUNVIDEO_MODE_KEY:Ljava/lang/String;

    invoke-direct {v10, v11, v7}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-virtual {v10, v6, v9, v9}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    .line 54
    invoke-virtual {v10, v5, v9, v9}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    const-string v5, "key_shutter_sound"

    .line 55
    invoke-virtual {v10, v5, v9, v9}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    .line 56
    invoke-virtual {v10, v4, v9, v9}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    .line 57
    invoke-virtual {v10, v3, v9, v9}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    .line 58
    invoke-virtual {v10, v2, v9, v1}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    .line 60
    invoke-virtual {v10}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v1

    .line 51
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 72
    :goto_0
    sget-object v0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoRestriction;->sMusicTemplateRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    const-string v1, "key_fun_video_music_template"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setHeaderKey(Ljava/lang/String;)V

    .line 73
    sget-object v0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoRestriction;->sMusicTemplateRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    const-string v2, "key_filter"

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setBodyKeys(Ljava/lang/String;)V

    .line 74
    sget-object v0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoRestriction;->sMusicTemplateRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    new-instance v3, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    invoke-direct {v3, v1, v9}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "0"

    const-string v4, "0,-100"

    .line 75
    invoke-virtual {v3, v2, v1, v4}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    .line 76
    invoke-virtual {v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v1

    .line 74
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 84
    sget-object v0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoRestriction;->sFaceDetectRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

    sget-object v1, Lcom/transsion/camera/feature/funvideo/mode/FunVideoRestriction;->FUNVIDEO_MODE_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setHeaderKey(Ljava/lang/String;)V

    .line 85
    sget-object v0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoRestriction;->sFaceDetectRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-virtual {v0, v8}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setBodyKeys(Ljava/lang/String;)V

    .line 86
    sget-object v0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoRestriction;->sFaceDetectRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

    new-instance v1, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    sget-object v2, Lcom/transsion/camera/feature/funvideo/mode/FunVideoRestriction;->FUNVIDEO_MODE_KEY:Ljava/lang/String;

    const-string v3, "on"

    invoke-direct {v1, v2, v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "off,on,gender_indentification"

    .line 87
    invoke-virtual {v1, v8, v9, v2}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    .line 88
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v1

    .line 86
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 89
    sget-object v0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoRestriction;->sFaceDetectRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

    new-instance v1, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    sget-object v4, Lcom/transsion/camera/feature/funvideo/mode/FunVideoRestriction;->FUNVIDEO_MODE_KEY:Ljava/lang/String;

    invoke-direct {v1, v4, v9}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-virtual {v1, v8, v3, v2}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    .line 91
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v1

    .line 89
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    return-void
.end method

.method static getFaceDetectRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;
    .locals 1

    .line 95
    sget-object v0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoRestriction;->sFaceDetectRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

    return-object v0
.end method

.method public static getMusicTemplateRestriction()Lcom/transsion/camera/app/common/relation/Relation;
    .locals 3

    .line 80
    sget-object v0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoRestriction;->sMusicTemplateRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    const-string v1, "off"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    return-object v0
.end method

.method static getPreviewRelation(Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation;
    .locals 3

    .line 65
    sget-object v0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoRestriction;->sPreviewRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

    const-string v1, "preview"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    const-string v1, "key_flash"

    const-string v2, "off,torch"

    .line 66
    invoke-virtual {v0, v1, p0, v2}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
