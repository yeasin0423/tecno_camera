.class Lcom/transsion/camera/app/ui/opengl/GLPreviewView$MyConfigChooser;
.super Ljava/lang/Object;
.source "GLPreviewView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLConfigChooser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/opengl/GLPreviewView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyConfigChooser"
.end annotation


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;)V
    .locals 0

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 7

    const/16 p0, 0x13

    new-array v2, p0, [I

    .line 233
    fill-array-data v2, :array_0

    const/4 p0, 0x1

    new-array v6, p0, [Ljavax/microedition/khronos/egl/EGLConfig;

    new-array p0, p0, [I

    const/4 v4, 0x1

    move-object v0, p1

    move-object v1, p2

    move-object v3, v6

    move-object v5, p0

    .line 247
    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    const/4 p1, 0x0

    .line 249
    aget p0, p0, p1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 253
    :cond_0
    aget-object p0, v6, p1

    return-object p0

    :array_0
    .array-data 4
        0x3029
        0x0
        0x3040
        0x4
        0x303f
        0x308e
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3025
        0x10
        0x3032
        0x1
        0x3031
        0x4
        0x3038
    .end array-data
.end method
