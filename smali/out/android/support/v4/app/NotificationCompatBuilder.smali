.class Landroid/support/v4/app/NotificationCompatBuilder;
.super Ljava/lang/Object;
.source "NotificationCompatBuilder.java"

# interfaces
.implements Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private final mActionExtrasList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mBigContentView:Landroid/widget/RemoteViews;

.field private final mBuilder:Landroid/app/Notification$Builder;

.field private final mBuilderCompat:Landroid/support/v4/app/NotificationCompat$Builder;

.field private mContentView:Landroid/widget/RemoteViews;

.field private final mExtras:Landroid/os/Bundle;

.field private mGroupAlertBehavior:I

.field private mHeadsUpContentView:Landroid/widget/RemoteViews;


# direct methods
.method constructor <init>(Landroid/support/v4/app/NotificationCompat$Builder;)V
    .registers 11
    .param p1, "b"    # Landroid/support/v4/app/NotificationCompat$Builder;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mActionExtrasList:Ljava/util/List;

    .line 56
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mExtras:Landroid/os/Bundle;

    .line 63
    iput-object p1, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mBuilderCompat:Landroid/support/v4/app/NotificationCompat$Builder;

    .line 64
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_25

    .line 65
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v2, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    iget-object v3, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mChannelId:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    goto :goto_2e

    .line 67
    :cond_25
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v2, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    .line 69
    :goto_2e
    iget-object v0, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    .line 70
    .local v0, "n":Landroid/app/Notification;
    iget-object v2, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    iget-wide v3, v0, Landroid/app/Notification;->when:J

    invoke-virtual {v2, v3, v4}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v2

    iget v3, v0, Landroid/app/Notification;->icon:I

    iget v4, v0, Landroid/app/Notification;->iconLevel:I

    .line 71
    invoke-virtual {v2, v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(II)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 72
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iget-object v4, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mTickerView:Landroid/widget/RemoteViews;

    .line 73
    invoke-virtual {v2, v3, v4}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, v0, Landroid/app/Notification;->vibrate:[J

    .line 74
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    move-result-object v2

    iget v3, v0, Landroid/app/Notification;->ledARGB:I

    iget v4, v0, Landroid/app/Notification;->ledOnMS:I

    iget v5, v0, Landroid/app/Notification;->ledOffMS:I

    .line 75
    invoke-virtual {v2, v3, v4, v5}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    move-result-object v2

    iget v3, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_68

    .line 76
    const/4 v3, 0x1

    goto :goto_6a

    .line 75
    :cond_68
    nop

    .line 76
    const/4 v3, 0x0

    :goto_6a
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    iget v3, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_76

    .line 77
    const/4 v3, 0x1

    goto :goto_78

    .line 76
    :cond_76
    nop

    .line 77
    const/4 v3, 0x0

    :goto_78
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    iget v3, v0, Landroid/app/Notification;->flags:I

    const/16 v6, 0x10

    and-int/2addr v3, v6

    if-eqz v3, :cond_85

    .line 78
    const/4 v3, 0x1

    goto :goto_87

    .line 77
    :cond_85
    nop

    .line 78
    const/4 v3, 0x0

    :goto_87
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    iget v3, v0, Landroid/app/Notification;->defaults:I

    .line 79
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    .line 80
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    .line 81
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mContentInfo:Ljava/lang/CharSequence;

    .line 82
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mContentIntent:Landroid/app/PendingIntent;

    .line 83
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 84
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mFullScreenIntent:Landroid/app/PendingIntent;

    iget v7, v0, Landroid/app/Notification;->flags:I

    and-int/lit16 v7, v7, 0x80

    if-eqz v7, :cond_b9

    .line 85
    const/4 v7, 0x1

    goto :goto_bb

    .line 84
    :cond_b9
    nop

    .line 85
    const/4 v7, 0x0

    :goto_bb
    invoke-virtual {v2, v3, v7}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    .line 87
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget v3, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mNumber:I

    .line 88
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    move-result-object v2

    iget v3, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mProgressMax:I

    iget v7, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mProgress:I

    iget-boolean v8, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mProgressIndeterminate:Z

    .line 89
    invoke-virtual {v2, v3, v7, v8}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 90
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_e3

    .line 91
    iget-object v2, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v7, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iget v8, v0, Landroid/app/Notification;->audioStreamType:I

    invoke-virtual {v2, v7, v8}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;I)Landroid/app/Notification$Builder;

    .line 93
    :cond_e3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x14

    if-lt v2, v6, :cond_161

    .line 94
    iget-object v2, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v6, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mSubText:Ljava/lang/CharSequence;

    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-boolean v6, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mUseChronometer:Z

    .line 95
    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setUsesChronometer(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    iget v6, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mPriority:I

    .line 96
    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 98
    iget-object v2, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_102
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_112

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v4/app/NotificationCompat$Action;

    .line 99
    .local v6, "action":Landroid/support/v4/app/NotificationCompat$Action;
    invoke-direct {p0, v6}, Landroid/support/v4/app/NotificationCompatBuilder;->addAction(Landroid/support/v4/app/NotificationCompat$Action;)V

    .line 100
    .end local v6    # "action":Landroid/support/v4/app/NotificationCompat$Action;
    goto :goto_102

    .line 102
    :cond_112
    iget-object v2, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    if-eqz v2, :cond_11d

    .line 103
    iget-object v2, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mExtras:Landroid/os/Bundle;

    iget-object v6, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 105
    :cond_11d
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v2, v7, :cond_159

    .line 106
    iget-boolean v2, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mLocalOnly:Z

    if-eqz v2, :cond_12c

    .line 107
    iget-object v2, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mExtras:Landroid/os/Bundle;

    const-string v6, "android.support.localOnly"

    invoke-virtual {v2, v6, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 109
    :cond_12c
    iget-object v2, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mGroupKey:Ljava/lang/String;

    if-eqz v2, :cond_14c

    .line 110
    iget-object v2, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mExtras:Landroid/os/Bundle;

    const-string v6, "android.support.groupKey"

    iget-object v8, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mGroupKey:Ljava/lang/String;

    invoke-virtual {v2, v6, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-boolean v2, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mGroupSummary:Z

    if-eqz v2, :cond_145

    .line 112
    iget-object v2, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mExtras:Landroid/os/Bundle;

    const-string v6, "android.support.isGroupSummary"

    invoke-virtual {v2, v6, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_14c

    .line 114
    :cond_145
    iget-object v2, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mExtras:Landroid/os/Bundle;

    const-string v6, "android.support.useSideChannel"

    invoke-virtual {v2, v6, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 118
    :cond_14c
    :goto_14c
    iget-object v2, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mSortKey:Ljava/lang/String;

    if-eqz v2, :cond_159

    .line 119
    iget-object v2, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mExtras:Landroid/os/Bundle;

    const-string v4, "android.support.sortKey"

    iget-object v6, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mSortKey:Ljava/lang/String;

    invoke-virtual {v2, v4, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :cond_159
    iget-object v2, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mContentView:Landroid/widget/RemoteViews;

    iput-object v2, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mContentView:Landroid/widget/RemoteViews;

    .line 124
    iget-object v2, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mBigContentView:Landroid/widget/RemoteViews;

    iput-object v2, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mBigContentView:Landroid/widget/RemoteViews;

    .line 126
    :cond_161
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-lt v2, v4, :cond_195

    .line 127
    iget-object v2, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    iget-boolean v4, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mShowWhen:Z

    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    .line 129
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v2, v3, :cond_195

    .line 130
    iget-object v2, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mPeople:Ljava/util/ArrayList;

    if-eqz v2, :cond_195

    iget-object v2, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mPeople:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_195

    .line 131
    iget-object v2, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mExtras:Landroid/os/Bundle;

    const-string v4, "android.people"

    iget-object v6, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mPeople:Ljava/util/ArrayList;

    iget-object v8, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mPeople:Ljava/util/ArrayList;

    .line 132
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    .line 131
    invoke-virtual {v2, v4, v6}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 136
    :cond_195
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v7, :cond_1b6

    .line 137
    iget-object v2, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    iget-boolean v4, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mLocalOnly:Z

    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v4, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mGroupKey:Ljava/lang/String;

    .line 138
    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-boolean v4, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mGroupSummary:Z

    .line 139
    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setGroupSummary(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v4, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mSortKey:Ljava/lang/String;

    .line 140
    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setSortKey(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 142
    iget v2, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mGroupAlertBehavior:I

    iput v2, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    .line 144
    :cond_1b6
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_24c

    .line 145
    iget-object v2, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v3, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mCategory:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget v3, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mColor:I

    .line 146
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v2

    iget v3, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mVisibility:I

    .line 147
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mPublicVersion:Landroid/app/Notification;

    .line 148
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setPublicVersion(Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iget-object v4, v0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    .line 149
    invoke-virtual {v2, v3, v4}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)Landroid/app/Notification$Builder;

    .line 151
    iget-object v2, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mPeople:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1e1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 152
    .local v3, "person":Ljava/lang/String;
    iget-object v4, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->addPerson(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 153
    .end local v3    # "person":Ljava/lang/String;
    goto :goto_1e1

    .line 154
    :cond_1f3
    iget-object v2, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mHeadsUpContentView:Landroid/widget/RemoteViews;

    iput-object v2, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mHeadsUpContentView:Landroid/widget/RemoteViews;

    .line 156
    iget-object v2, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mInvisibleActions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_24c

    .line 159
    nop

    .line 160
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$Builder;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "android.car.EXTENSIONS"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 161
    .local v2, "carExtenderBundle":Landroid/os/Bundle;
    if-nez v2, :cond_212

    .line 162
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object v2, v3

    .line 164
    :cond_212
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 165
    .local v3, "listBundle":Landroid/os/Bundle;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_218
    iget-object v6, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mInvisibleActions:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_237

    .line 166
    nop

    .line 167
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mInvisibleActions:Ljava/util/ArrayList;

    .line 169
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v4/app/NotificationCompat$Action;

    .line 168
    invoke-static {v7}, Landroid/support/v4/app/NotificationCompatJellybean;->getBundleForAction(Landroid/support/v4/app/NotificationCompat$Action;)Landroid/os/Bundle;

    move-result-object v7

    .line 166
    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 165
    add-int/lit8 v4, v4, 0x1

    goto :goto_218

    .line 171
    .end local v4    # "i":I
    :cond_237
    const-string v4, "invisible_actions"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 173
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$Builder;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v6, "android.car.EXTENSIONS"

    invoke-virtual {v4, v6, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 175
    iget-object v4, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mExtras:Landroid/os/Bundle;

    const-string v6, "android.car.EXTENSIONS"

    invoke-virtual {v4, v6, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 179
    .end local v2    # "carExtenderBundle":Landroid/os/Bundle;
    .end local v3    # "listBundle":Landroid/os/Bundle;
    :cond_24c
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_280

    .line 180
    iget-object v2, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v3, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mRemoteInputHistory:[Ljava/lang/CharSequence;

    .line 181
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setRemoteInputHistory([Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 182
    iget-object v2, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mContentView:Landroid/widget/RemoteViews;

    if-eqz v2, :cond_26a

    .line 183
    iget-object v2, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v3, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setCustomContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 185
    :cond_26a
    iget-object v2, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mBigContentView:Landroid/widget/RemoteViews;

    if-eqz v2, :cond_275

    .line 186
    iget-object v2, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v3, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mBigContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setCustomBigContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 188
    :cond_275
    iget-object v2, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mHeadsUpContentView:Landroid/widget/RemoteViews;

    if-eqz v2, :cond_280

    .line 189
    iget-object v2, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v3, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mHeadsUpContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setCustomHeadsUpContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 192
    :cond_280
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v1, :cond_2c2

    .line 193
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    iget v2, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mBadgeIcon:I

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setBadgeIconType(I)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v2, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mShortcutId:Ljava/lang/String;

    .line 194
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setShortcutId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-wide v2, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mTimeout:J

    .line 195
    invoke-virtual {v1, v2, v3}, Landroid/app/Notification$Builder;->setTimeoutAfter(J)Landroid/app/Notification$Builder;

    move-result-object v1

    iget v2, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mGroupAlertBehavior:I

    .line 196
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setGroupAlertBehavior(I)Landroid/app/Notification$Builder;

    .line 197
    iget-boolean v1, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mColorizedSet:Z

    if-eqz v1, :cond_2a8

    .line 198
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    iget-boolean v2, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mColorized:Z

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setColorized(Z)Landroid/app/Notification$Builder;

    .line 201
    :cond_2a8
    iget-object v1, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mChannelId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2c2

    .line 202
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 203
    invoke-virtual {v1, v5}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 204
    invoke-virtual {v1, v5, v5, v5}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 205
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    .line 208
    :cond_2c2
    return-void
.end method

.method private addAction(Landroid/support/v4/app/NotificationCompat$Action;)V
    .registers 7
    .param p1, "action"    # Landroid/support/v4/app/NotificationCompat$Action;

    .line 255
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_89

    .line 256
    new-instance v0, Landroid/app/Notification$Action$Builder;

    .line 257
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$Action;->getIcon()I

    move-result v1

    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$Action;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$Action;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 258
    .local v0, "actionBuilder":Landroid/app/Notification$Action$Builder;
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$Action;->getRemoteInputs()[Landroid/support/v4/app/RemoteInput;

    move-result-object v1

    if-eqz v1, :cond_32

    .line 259
    nop

    .line 260
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$Action;->getRemoteInputs()[Landroid/support/v4/app/RemoteInput;

    move-result-object v1

    .line 259
    invoke-static {v1}, Landroid/support/v4/app/RemoteInput;->fromCompat([Landroid/support/v4/app/RemoteInput;)[Landroid/app/RemoteInput;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_28
    if-ge v3, v2, :cond_32

    aget-object v4, v1, v3

    .line 261
    .local v4, "remoteInput":Landroid/app/RemoteInput;
    invoke-virtual {v0, v4}, Landroid/app/Notification$Action$Builder;->addRemoteInput(Landroid/app/RemoteInput;)Landroid/app/Notification$Action$Builder;

    .line 259
    .end local v4    # "remoteInput":Landroid/app/RemoteInput;
    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    .line 265
    :cond_32
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_42

    .line 266
    new-instance v1, Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_47

    .line 268
    :cond_42
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 270
    .local v1, "actionExtras":Landroid/os/Bundle;
    :goto_47
    const-string v2, "android.support.allowGeneratedReplies"

    .line 271
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$Action;->getAllowGeneratedReplies()Z

    move-result v3

    .line 270
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 272
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_5d

    .line 273
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$Action;->getAllowGeneratedReplies()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$Action$Builder;->setAllowGeneratedReplies(Z)Landroid/app/Notification$Action$Builder;

    .line 276
    :cond_5d
    const-string v2, "android.support.action.semanticAction"

    .line 277
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$Action;->getSemanticAction()I

    move-result v3

    .line 276
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 278
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_73

    .line 279
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$Action;->getSemanticAction()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$Action$Builder;->setSemanticAction(I)Landroid/app/Notification$Action$Builder;

    .line 282
    :cond_73
    const-string v2, "android.support.action.showsUserInterface"

    .line 283
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$Action;->getShowsUserInterface()Z

    move-result v3

    .line 282
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 284
    invoke-virtual {v0, v1}, Landroid/app/Notification$Action$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Action$Builder;

    .line 285
    iget-object v2, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 286
    .end local v0    # "actionBuilder":Landroid/app/Notification$Action$Builder;
    .end local v1    # "actionExtras":Landroid/os/Bundle;
    goto :goto_9a

    :cond_89
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_9a

    .line 287
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mActionExtrasList:Ljava/util/List;

    iget-object v1, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    .line 288
    invoke-static {v1, p1}, Landroid/support/v4/app/NotificationCompatJellybean;->writeActionAndGetExtras(Landroid/app/Notification$Builder;Landroid/support/v4/app/NotificationCompat$Action;)Landroid/os/Bundle;

    move-result-object v1

    .line 287
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    :cond_9a
    :goto_9a
    return-void
.end method

.method private removeSoundAndVibration(Landroid/app/Notification;)V
    .registers 3
    .param p1, "notification"    # Landroid/app/Notification;

    .line 418
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 419
    iput-object v0, p1, Landroid/app/Notification;->vibrate:[J

    .line 420
    iget v0, p1, Landroid/app/Notification;->defaults:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p1, Landroid/app/Notification;->defaults:I

    .line 421
    iget v0, p1, Landroid/app/Notification;->defaults:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p1, Landroid/app/Notification;->defaults:I

    .line 422
    return-void
.end method


# virtual methods
.method public build()Landroid/app/Notification;
    .registers 7

    .line 216
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mBuilderCompat:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v0, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;

    .line 217
    .local v0, "style":Landroid/support/v4/app/NotificationCompat$Style;
    if-eqz v0, :cond_9

    .line 218
    invoke-virtual {v0, p0}, Landroid/support/v4/app/NotificationCompat$Style;->apply(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;)V

    .line 221
    :cond_9
    if-eqz v0, :cond_10

    .line 222
    invoke-virtual {v0, p0}, Landroid/support/v4/app/NotificationCompat$Style;->makeContentView(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;)Landroid/widget/RemoteViews;

    move-result-object v1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    .line 224
    .local v1, "styleContentView":Landroid/widget/RemoteViews;
    :goto_11
    invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompatBuilder;->buildInternal()Landroid/app/Notification;

    move-result-object v2

    .line 225
    .local v2, "n":Landroid/app/Notification;
    if-eqz v1, :cond_1a

    .line 226
    iput-object v1, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    goto :goto_26

    .line 227
    :cond_1a
    iget-object v3, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mBuilderCompat:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v3, v3, Landroid/support/v4/app/NotificationCompat$Builder;->mContentView:Landroid/widget/RemoteViews;

    if-eqz v3, :cond_26

    .line 228
    iget-object v3, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mBuilderCompat:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v3, v3, Landroid/support/v4/app/NotificationCompat$Builder;->mContentView:Landroid/widget/RemoteViews;

    iput-object v3, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 230
    :cond_26
    :goto_26
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_36

    if-eqz v0, :cond_36

    .line 231
    invoke-virtual {v0, p0}, Landroid/support/v4/app/NotificationCompat$Style;->makeBigContentView(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;)Landroid/widget/RemoteViews;

    move-result-object v3

    .line 232
    .local v3, "styleBigContentView":Landroid/widget/RemoteViews;
    if-eqz v3, :cond_36

    .line 233
    iput-object v3, v2, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 236
    .end local v3    # "styleBigContentView":Landroid/widget/RemoteViews;
    :cond_36
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v3, v5, :cond_4a

    if-eqz v0, :cond_4a

    .line 237
    iget-object v3, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mBuilderCompat:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v3, v3, Landroid/support/v4/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;

    .line 238
    invoke-virtual {v3, p0}, Landroid/support/v4/app/NotificationCompat$Style;->makeHeadsUpContentView(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;)Landroid/widget/RemoteViews;

    move-result-object v3

    .line 239
    .local v3, "styleHeadsUpContentView":Landroid/widget/RemoteViews;
    if-eqz v3, :cond_4a

    .line 240
    iput-object v3, v2, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 244
    .end local v3    # "styleHeadsUpContentView":Landroid/widget/RemoteViews;
    :cond_4a
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v4, :cond_59

    if-eqz v0, :cond_59

    .line 245
    invoke-static {v2}, Landroid/support/v4/app/NotificationCompat;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v3

    .line 246
    .local v3, "extras":Landroid/os/Bundle;
    if-eqz v3, :cond_59

    .line 247
    invoke-virtual {v0, v3}, Landroid/support/v4/app/NotificationCompat$Style;->addCompatExtras(Landroid/os/Bundle;)V

    .line 251
    .end local v3    # "extras":Landroid/os/Bundle;
    :cond_59
    return-object v2
.end method

.method protected buildInternal()Landroid/app/Notification;
    .registers 7

    .line 293
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_d

    .line 294
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0

    .line 295
    :cond_d
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-lt v0, v1, :cond_46

    .line 296
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 298
    .local v0, "notification":Landroid/app/Notification;
    iget v1, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    if-eqz v1, :cond_45

    .line 300
    invoke-virtual {v0}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_32

    iget v1, v0, Landroid/app/Notification;->flags:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_32

    iget v1, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    if-ne v1, v3, :cond_32

    .line 303
    invoke-direct {p0, v0}, Landroid/support/v4/app/NotificationCompatBuilder;->removeSoundAndVibration(Landroid/app/Notification;)V

    .line 306
    :cond_32
    invoke-virtual {v0}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_45

    iget v1, v0, Landroid/app/Notification;->flags:I

    and-int/lit16 v1, v1, 0x200

    if-nez v1, :cond_45

    iget v1, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    if-ne v1, v2, :cond_45

    .line 309
    invoke-direct {p0, v0}, Landroid/support/v4/app/NotificationCompatBuilder;->removeSoundAndVibration(Landroid/app/Notification;)V

    .line 313
    :cond_45
    return-object v0

    .line 314
    .end local v0    # "notification":Landroid/app/Notification;
    :cond_46
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_9c

    .line 315
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v1, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    .line 316
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 317
    .restart local v0    # "notification":Landroid/app/Notification;
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mContentView:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_61

    .line 318
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mContentView:Landroid/widget/RemoteViews;

    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 320
    :cond_61
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mBigContentView:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_69

    .line 321
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mBigContentView:Landroid/widget/RemoteViews;

    iput-object v1, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 323
    :cond_69
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mHeadsUpContentView:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_71

    .line 324
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mHeadsUpContentView:Landroid/widget/RemoteViews;

    iput-object v1, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 327
    :cond_71
    iget v1, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    if-eqz v1, :cond_9b

    .line 329
    invoke-virtual {v0}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_88

    iget v1, v0, Landroid/app/Notification;->flags:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_88

    iget v1, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    if-ne v1, v3, :cond_88

    .line 332
    invoke-direct {p0, v0}, Landroid/support/v4/app/NotificationCompatBuilder;->removeSoundAndVibration(Landroid/app/Notification;)V

    .line 335
    :cond_88
    invoke-virtual {v0}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9b

    iget v1, v0, Landroid/app/Notification;->flags:I

    and-int/lit16 v1, v1, 0x200

    if-nez v1, :cond_9b

    iget v1, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    if-ne v1, v2, :cond_9b

    .line 338
    invoke-direct {p0, v0}, Landroid/support/v4/app/NotificationCompatBuilder;->removeSoundAndVibration(Landroid/app/Notification;)V

    .line 341
    :cond_9b
    return-object v0

    .line 342
    .end local v0    # "notification":Landroid/app/Notification;
    :cond_9c
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_ea

    .line 343
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v1, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    .line 344
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 345
    .restart local v0    # "notification":Landroid/app/Notification;
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mContentView:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_b7

    .line 346
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mContentView:Landroid/widget/RemoteViews;

    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 348
    :cond_b7
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mBigContentView:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_bf

    .line 349
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mBigContentView:Landroid/widget/RemoteViews;

    iput-object v1, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 352
    :cond_bf
    iget v1, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    if-eqz v1, :cond_e9

    .line 354
    invoke-virtual {v0}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d6

    iget v1, v0, Landroid/app/Notification;->flags:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_d6

    iget v1, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    if-ne v1, v3, :cond_d6

    .line 357
    invoke-direct {p0, v0}, Landroid/support/v4/app/NotificationCompatBuilder;->removeSoundAndVibration(Landroid/app/Notification;)V

    .line 360
    :cond_d6
    invoke-virtual {v0}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e9

    iget v1, v0, Landroid/app/Notification;->flags:I

    and-int/lit16 v1, v1, 0x200

    if-nez v1, :cond_e9

    iget v1, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    if-ne v1, v2, :cond_e9

    .line 363
    invoke-direct {p0, v0}, Landroid/support/v4/app/NotificationCompatBuilder;->removeSoundAndVibration(Landroid/app/Notification;)V

    .line 367
    :cond_e9
    return-object v0

    .line 368
    .end local v0    # "notification":Landroid/app/Notification;
    :cond_ea
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_11d

    .line 369
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mActionExtrasList:Ljava/util/List;

    .line 370
    invoke-static {v0}, Landroid/support/v4/app/NotificationCompatJellybean;->buildActionExtrasMap(Ljava/util/List;)Landroid/util/SparseArray;

    move-result-object v0

    .line 371
    .local v0, "actionExtrasMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Bundle;>;"
    if-eqz v0, :cond_ff

    .line 373
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mExtras:Landroid/os/Bundle;

    const-string v2, "android.support.actionExtras"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 376
    :cond_ff
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v2, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    .line 377
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 378
    .local v1, "notification":Landroid/app/Notification;
    iget-object v2, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mContentView:Landroid/widget/RemoteViews;

    if-eqz v2, :cond_114

    .line 379
    iget-object v2, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mContentView:Landroid/widget/RemoteViews;

    iput-object v2, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 381
    :cond_114
    iget-object v2, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mBigContentView:Landroid/widget/RemoteViews;

    if-eqz v2, :cond_11c

    .line 382
    iget-object v2, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mBigContentView:Landroid/widget/RemoteViews;

    iput-object v2, v1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 384
    :cond_11c
    return-object v1

    .line 385
    .end local v0    # "actionExtrasMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Bundle;>;"
    .end local v1    # "notification":Landroid/app/Notification;
    :cond_11d
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_179

    .line 386
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 389
    .local v0, "notification":Landroid/app/Notification;
    invoke-static {v0}, Landroid/support/v4/app/NotificationCompat;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v1

    .line 390
    .local v1, "extras":Landroid/os/Bundle;
    new-instance v2, Landroid/os/Bundle;

    iget-object v3, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mExtras:Landroid/os/Bundle;

    invoke-direct {v2, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 391
    .local v2, "mergeBundle":Landroid/os/Bundle;
    iget-object v3, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_13e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_154

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 392
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_153

    .line 393
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 395
    .end local v4    # "key":Ljava/lang/String;
    :cond_153
    goto :goto_13e

    .line 396
    :cond_154
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 397
    iget-object v3, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mActionExtrasList:Ljava/util/List;

    .line 398
    invoke-static {v3}, Landroid/support/v4/app/NotificationCompatJellybean;->buildActionExtrasMap(Ljava/util/List;)Landroid/util/SparseArray;

    move-result-object v3

    .line 399
    .local v3, "actionExtrasMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Bundle;>;"
    if-eqz v3, :cond_168

    .line 401
    invoke-static {v0}, Landroid/support/v4/app/NotificationCompat;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "android.support.actionExtras"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 404
    :cond_168
    iget-object v4, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mContentView:Landroid/widget/RemoteViews;

    if-eqz v4, :cond_170

    .line 405
    iget-object v4, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mContentView:Landroid/widget/RemoteViews;

    iput-object v4, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 407
    :cond_170
    iget-object v4, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mBigContentView:Landroid/widget/RemoteViews;

    if-eqz v4, :cond_178

    .line 408
    iget-object v4, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mBigContentView:Landroid/widget/RemoteViews;

    iput-object v4, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 410
    :cond_178
    return-object v0

    .line 413
    .end local v0    # "notification":Landroid/app/Notification;
    .end local v1    # "extras":Landroid/os/Bundle;
    .end local v2    # "mergeBundle":Landroid/os/Bundle;
    .end local v3    # "actionExtrasMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Bundle;>;"
    :cond_179
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public getBuilder()Landroid/app/Notification$Builder;
    .registers 2

    .line 212
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    return-object v0
.end method
