.class Lcom/android/server/BatteryService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 999
    iput-object p1, p0, Lcom/android/server/BatteryService$SettingsObserver;->this$0:Lcom/android/server/BatteryService;

    .line 1000
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1001
    return-void
.end method


# virtual methods
.method observe()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1004
    iget-object v1, p0, Lcom/android/server/BatteryService$SettingsObserver;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/BatteryService;->access$100(Lcom/android/server/BatteryService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1007
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "battery_light_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1011
    const-string v1, "battery_light_pulse"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1015
    iget-object v1, p0, Lcom/android/server/BatteryService$SettingsObserver;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mMultiColorLed:Z
    invoke-static {v1}, Lcom/android/server/BatteryService;->access$400(Lcom/android/server/BatteryService;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1017
    const-string v1, "battery_light_low_color"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1019
    const-string v1, "battery_light_medium_color"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1021
    const-string v1, "battery_light_full_color"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1026
    :cond_0
    const-string v1, "quiet_hours_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1028
    const-string v1, "quiet_hours_start"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1030
    const-string v1, "quiet_hours_end"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1032
    const-string v1, "quiet_hours_dim"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1035
    invoke-virtual {p0}, Lcom/android/server/BatteryService$SettingsObserver;->update()V

    .line 1036
    return-void
.end method

.method public onChange(Z)V
    .locals 0
    .parameter "selfChange"

    .prologue
    .line 1039
    invoke-virtual {p0}, Lcom/android/server/BatteryService$SettingsObserver;->update()V

    .line 1040
    return-void
.end method

.method public update()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1043
    iget-object v2, p0, Lcom/android/server/BatteryService$SettingsObserver;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$100(Lcom/android/server/BatteryService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1044
    .local v1, resolver:Landroid/content/ContentResolver;
    iget-object v2, p0, Lcom/android/server/BatteryService$SettingsObserver;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$100(Lcom/android/server/BatteryService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1047
    .local v0, res:Landroid/content/res/Resources;
    iget-object v5, p0, Lcom/android/server/BatteryService$SettingsObserver;->this$0:Lcom/android/server/BatteryService;

    const-string v2, "battery_light_enabled"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    #setter for: Lcom/android/server/BatteryService;->mLightEnabled:Z
    invoke-static {v5, v2}, Lcom/android/server/BatteryService;->access$702(Lcom/android/server/BatteryService;Z)Z

    .line 1051
    iget-object v2, p0, Lcom/android/server/BatteryService$SettingsObserver;->this$0:Lcom/android/server/BatteryService;

    const-string v5, "battery_light_pulse"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_1

    :goto_1
    #setter for: Lcom/android/server/BatteryService;->mLedPulseEnabled:Z
    invoke-static {v2, v3}, Lcom/android/server/BatteryService;->access$802(Lcom/android/server/BatteryService;Z)Z

    .line 1055
    iget-object v2, p0, Lcom/android/server/BatteryService$SettingsObserver;->this$0:Lcom/android/server/BatteryService;

    const-string v3, "battery_light_low_color"

    const v4, 0x10e0024

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    #setter for: Lcom/android/server/BatteryService;->mBatteryLowARGB:I
    invoke-static {v2, v3}, Lcom/android/server/BatteryService;->access$1002(Lcom/android/server/BatteryService;I)I

    .line 1058
    iget-object v2, p0, Lcom/android/server/BatteryService$SettingsObserver;->this$0:Lcom/android/server/BatteryService;

    const-string v3, "battery_light_medium_color"

    const v4, 0x10e0025

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    #setter for: Lcom/android/server/BatteryService;->mBatteryMediumARGB:I
    invoke-static {v2, v3}, Lcom/android/server/BatteryService;->access$1202(Lcom/android/server/BatteryService;I)I

    .line 1061
    iget-object v2, p0, Lcom/android/server/BatteryService$SettingsObserver;->this$0:Lcom/android/server/BatteryService;

    const-string v3, "battery_light_full_color"

    const v4, 0x10e0026

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    #setter for: Lcom/android/server/BatteryService;->mBatteryFullARGB:I
    invoke-static {v2, v3}, Lcom/android/server/BatteryService;->access$1102(Lcom/android/server/BatteryService;I)I

    .line 1065
    iget-object v2, p0, Lcom/android/server/BatteryService$SettingsObserver;->this$0:Lcom/android/server/BatteryService;

    #calls: Lcom/android/server/BatteryService;->updateLedPulse()V
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$1400(Lcom/android/server/BatteryService;)V

    .line 1066
    return-void

    :cond_0
    move v2, v4

    .line 1047
    goto :goto_0

    :cond_1
    move v3, v4

    .line 1051
    goto :goto_1
.end method
