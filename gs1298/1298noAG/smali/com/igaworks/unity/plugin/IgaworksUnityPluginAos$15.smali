.class Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$15;
.super Ljava/lang/Object;
.source "IgaworksUnityPluginAos.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos;->setUnityPlatform()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 503
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 507
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/igaworks/adpopcorn/IgawAdpopcornExtension;->isUnityPlatfrom(Z)V

    .line 508
    return-void
.end method
