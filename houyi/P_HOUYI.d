BEGIN ~P_HOUYI~

IF ~True()~ THEN BEGIN Shopping
SAY ~欢迎来到我的商店！冒险者，想要在安姆横着走吗？想要随心所欲的猎杀敌人吗，找我就没错了！~
IF ~~ THEN REPLY ~哼，安姆算什么？巴尔的王座我都横着走，上次我一口气灭掉一百个恶魔你没看见？不过，我看看你到底有些什么也是好的。~ GOTO Openshop
IF ~~ THEN REPLY ~老大，我想看点特别的东西。你那些常规武器不好用啊！~ GOTO shopbt
IF ~~ THEN REPLY ~没兴趣。~ EXIT
END

IF ~~ THEN BEGIN Openshop
SAY ~失敬，失敬，原来那个号称被阿梅虐杀了100遍啊100遍的就是你，不过打了100次，每打一次你都能杀掉1个恶魔也是难为你了，嘿嘿..。~
IF ~~ THEN DO ~StartStore("ar_pt",LastTalkedToBy(Myself))~ EXIT
END

IF ~~ THEN BEGIN shopbt
SAY ~不会吧？为什么不好用？用过的人都说好啊。~
IF ~~ THEN REPLY ~厄，其实我的冒险也很丰富啦，想当年我在镇妖塔狂丢乾坤一掷的时候；想当年我带着雪儿杀青蛙的日子，那是何等的惬意，笑傲江湖啊！可是安姆这地方实在太变态了，你看看，我这么高的状态，这么强的属性，半天连一只蝙蝠都打不死，随便一个地精都打得我屁屁好痛好痛的，敌人随便丢个什么法术,个个我都中,要不我命长，老早就挂了！~  GOTO shopbt2
IF ~~ THEN REPLY ~算了，我有难言之隐。~ EXIT
END

IF ~~ THEN BEGIN shopbt2
SAY ~哦?我来看看你的属性,恩,命有10000点,不错,小伙子有出息,身体锻炼得不错!所有豁免100?恩,ac也是100!哇,thac0也是100,你好强哦!你这么强的大人物来到鄙店,我真是太感动了,你老人家先别急,我这儿有些从异次元走私过来的超越时代的军火,保你横扫安姆,踩平巴尔的王座.用了我的走私军火,你还不能把梅姐先奸后杀,再奸再杀,你找我好了！~
IF ~~ THEN DO ~StartStore("ar_gj",LastTalkedToBy(Myself))~ EXIT
END