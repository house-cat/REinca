.class Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$38;
.super Ljava/lang/Object;
.source "IgaworksUnityPluginAos.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos;->firstTimeExperience(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$name:Ljava/lang/String;

.field private final synthetic val$param:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$38;->val$name:Ljava/lang/String;

    iput-object p2, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$38;->val$param:Ljava/lang/String;

    .line 1136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1141
    iget-object v0, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$38;->val$name:Ljava/lang/String;

    iget-object v1, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$38;->val$param:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/igaworks/adbrix/IgawAdbrix;->firstTimeExperience(Ljava/lang/String;Ljava/lang/String;)V

    .line 1142
    return-void
.end method
