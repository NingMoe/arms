

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head id="Head1">
<meta http-equiv="content-type" content="text/html;charset=UTF-8" /><title>
	车辆新增
</title><link rel="stylesheet" type="text/css" href="../style/themes/default/easyui.css?v=20130306" />
    <script src="../JS/Frame/jquery-1.8.0.min.js" type="text/javascript"></script>
    <script src="../JS/Frame/jquery.easyui.min.js" type="text/javascript"></script> 
    <script src="../JS/birthDate.js?a=123" type="text/javascript"></script> 
     <script src="../JS/Frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script>
 
</head>


<style type="text/css"> 
 td,div
 {
   font-size:12px;
   
 }
    	
.tabs {
font-family:Verdana,Arial,sans-serif;
font-size:12px;
line-height:14px;
position: relative;
padding: 1px; zoom: 1; 
}
 
.tabs ul {
background-color: #fff;
color:#222222;
font-weight:bold;
display:block;
border-bottom:1px solid #AAAAAA;
height:28px; 
padding:0; margin:0; 
padding-left:200px;}
 
.tabs ul li 
{-moz-border-radius-topleft:4px;
-moz-border-radius-topright:4px;border-bottom:0 none !important;float:left;
list-style:none;margin:0 0.2em 1px 0;padding:0;position:relative;top:1px;white-space:nowrap;color:#555555;font-weight:blod;}
.tabs ul li.tabs_active {margin-bottom:0;padding-bottom:1px;background-color:#fff;  border:1px solid #aaa;color:#333;}
.tabs ul li.tabs_hover{margin-bottom:0;padding-bottom:1px;background-color:#fff;border:1px solid #999;}
.tabs ul li a {float:left;padding:0.5em 1em;text-decoration:none;cursor:pointer;color:#777;}
.tabs ul li.tabs_active a {color:#333;}
.tabs ul li.tabs_active a {color:#555555;}
 
 
input
{
	border:none;
	width:125px;
	}
td
{
	height:30px;
	border:1px solid #9a9a9a;
	}
.requireSpan
{
	color:Blue;
	}
</style>

 
<body>
    <form name="form1" method="post" action="customNewVehicleAdd.aspx?vehicleId=0ccc60b3-e124-41c0-9aa4-dc48cc259acd&amp;d=Tue+Jan+06+2015+11%3a17%3a24+GMT+0800" id="form1">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__LASTFOCUS" id="__LASTFOCUS" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="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sgnlrp3nn7PnuqIJ5rW35rSL6JOdCeaYn+WFiemTthPpu5HoibIv54OI54Sw57qi6ImyDOm7keS6keavjeiJsgnojbflhbDmqZkJ57+h57+g57u/DOWhlOWkq+e7uOeZvQnpm6roirHpk7YJ5rC05pm257SrCeaLieWKm+e6ognlvanmmbbpu5EJ6ZKb6YeR6ZO2CeePjeePoOeZvQnngqvpgJ/nuqIJ6LWk6Zye57qiCeaLieWKm+e6ognnv6Hnv6Dnu78M5aGU5aSr57u455m9CembquiKsemTtgnlrp3nn7Pok50J5rC05pm257SrCeiTneWkqemTtgnlvanmmbbpu5EJ6ZKb6YeR6ZO2CeePjeePoOeZvQnngqvlvbHok50J54Kr5Yqo57SrCeeCq+mAn+e6ogzlpaXlpKvnibnpu5EJ5Lid57yO6ZO2CeWknOm5sOm7kQnlrp3nn7Pok50J55qH5a6k6JOdCeaOouaIiOe6ognmmrTpo47pk7YJ5ouJ5LiB6buECeWNq+aYn+mTtgzloZTlpKvnu7jnmb0J54+N54+g55m9Ceaymea8oOmbvgnoib7nvo7ntKsJ55Ge5Li957qiCeW3tOm7juiTnQnnlJzmqZnnuqIJ56We56eY6JOdCeeUn+WKqOiTnQbph5HoibIG6buR6ImyBueZveiJsgzph5HlsZ7nsbPoibIG57qi6ImyEue6ouS6keavjemHkeWxnuiJsgbok53oibIM6JOd6YeR5bGe6ImyEue6ouS6keavjemHkeWxnuiJsgzlpaXlpKvnibnpu5EJ5Lid57yO6ZO2CeWknOm5sOm7kQnmjqLmiIjnuqIJ5pq06aOO6ZO2CeaLieS4gem7hAzloZTlpKvnu7jnmb0J54+N54+g55m9CeiJvue+jue0qwnnkZ7kuL3nuqIJ5be06buO6JOdCeeUnOapmee6ognnpZ7np5jok50V5reh6YeR5LqR5q+N6YeR5bGe6ImyD+WkqemdkuS6keavjeiJsgznj43nj6Dnmb3oibIS55m96YeR54Gw6YeR5bGe6ImyBum7keiJsgzmmbbkuq7nmb3oibIS5rW35rSL6JOd6YeR5bGe6ImyEuefs+amtOe6ouS6keavjeiJsgzlrp3nn7Ppu5HoibIM5pif5YWJ6buR6ImyD+S6ruikkOmHkeWxnuiJshLlpKnpnZLnn7PkupHmr43oibIS5rC06ZO254Gw5LqR5q+N6ImyEueZveefs+iLseS6keavjeiJshjmtYHmmJ/ok53kupHmr43ph5HlsZ7oibIS6ZO25LqR5q+N6YeR5bGe6ImyD+i2hemfs+mAn+mSm+mTthXmt7Hmo5XkupHmr43ph5HlsZ7oibIP6YWS57qi5LqR5q+N6ImyEumXquS6ruawtOaZtue6ouiJsgnmkanljaHph5EM5pif5YWJ6buR6ImyFb4CDOapmemHkeWxnuiJsgzngbDph5HlsZ7oibIP54Gw6JOd6YeR5bGe6ImyDOe7v+S6keavjeiJsgzkuIrpqbzkuIvnmb0V5rex57qi5LqR5q+N6YeR5bGe6ImyD+a3see6ouS6keavjeiJsgzmt7HngbDph5HlsZ4P5rex6JOd6YeR5bGe6ImyEua3semdkueBsOS6keavjeiJsgzpk7bph5HlsZ7oibIM54+N54+g55m96ImyD+e0q+S6keavjemHkeWxnh7ljaHnibnojrHok53pu5HkupHmr43ph5HlsZ7oibIP57Gz6buE6YeR5bGe6ImyDOmdkumTnOS6keavjQ/mt7Hok53kupHmr43oibIV5rex5qOV5LqR5q+N6YeR5bGe6ImyCeePjeePoOeZvQnnkKXnj4Dph5EJ5pGp5Y2h6YeRCeeQpeePgOmHkQnnkKXnj4Dph5EJ54Kr5pm26buRCeePjeePoOeZvQnpkqjph5HngbAJ57Sr6ZK76buRCeePiueRmue6ognpppnmp5/ph5ET6buR6ImyL+aZtuS6rueZveiJsgnkv4rpm4XnuqIJ6Zuq6ZOC6ZO2DOmprOW+t+mHjOmHkQnmkanljaHmo5UJ54Kr5pm257qiCeawtOaZtumTtgnngqvlvannu78J5p6B5YWJ6JOdDOeDiOeEsOe6ouiJsgnlpKrnqbrpk7YG6JOd6ImyBumTtuiJsgbnuqLoibIG55m96ImyBum7keiJsgbmo5XoibIJ5Yaw6ZKb54GwCemdkumTnOeBsAbph5HoibIG57u/6ImyBumTtuiJsgbnuqLoibIM5LiK55m95LiL6buEBuapmeiJsgbntKvoibIJ54+N54+g55m9BuiTneiJsgbnmb3oibIG6buR6ImyBuajleiJsgnlhrDpkpvngbAJ6Z2S6ZOc54GwBumHkeiJsgbnu7/oibIG6ZO26ImyBue6ouiJsgzkuIrnmb3kuIvpu4QG5qmZ6ImyBue0q+iJsgnnj43nj6Dnmb0G6JOd6ImyBueZveiJsgbpu5HoibIG5qOV6ImyCeWGsOmSm+eBsAnpnZLpk5zngbAG6YeR6ImyBue7v+iJshXmt7HngbDkupHmr43ph5HlsZ7oibIP6ZO26JOd6YeR5bGe6ImyD+i2hemfs+mAn+mTtuiJsg/lrp3nn7Pnj43nj6Dnmb0S5Yaw6ZKb54Gw6YeR5bGe6ImyEumTgumdkumTnOmHkeWxnuiJsgzotoXnuqfnmb3oibIS57u/5LqR5q+N6YeR5bGe6ImyDOS4iueZveS4i+e7vwzkuIrnmb3kuIvntKsJ5L+K6ZuF57qiCembqumTgumTtgzpqazlvrfph4zph5EJ5pGp5Y2h5qOVCee7muaZtue6ognngqvliqjnuqIJ5aSq56m66ZO2CeWkqemZheeZvQnlrp3nn7PnuqIM5qmY6YeR5bGe6ImyEuaZtuS6ruePjeePoOeZveiJsgzpk7bph5HlsZ7oibIJ5paw5pyI6buECea1t+a0i+iTnQRCTFVFDOS4iueZveS4i+m7hAzpu5HkupHmr43oibIS57uP5LqR5q+N6YeR5bGe6ImyDOiTnemHkeWxnuiJsgnmmJ/lhYnpk7YG6JOd6ImyBueZveiJsgbok53oibIG55m96ImyBum7keiJsgbmo5XoibIJ5Yaw6ZKb54GwCemdkumTnOeBsAbph5HoibIG57u/6ImyBumTtuiJsgbnuqLoibIM5LiK55m95LiL6buEBuapmeiJsgbntKvoibIJ54+N54+g55m9BuiTneiJsgbnmb3oibIG6buR6ImyBuajleiJsgnlhrDpkpvngbAJ6Z2S6ZOc54GwBumHkeiJsgbnu7/oibIJ5paw5pyI6buEBuiTneiJsgbnmb3oibIG6ZO26ImyBue6ouiJsgzngbDph5HlsZ7oibIM54Gw6YeR5bGe6ImyDVRJTlRFRCBTSUxWRVIG6buR6ImyBuajleiJsgbnu7/oibIG6ZO26ImyBue6ouiJsgbmqZnoibIG57Sr6ImyCeePjeePoOeZvQzkuIrnmb3kuIvpu4QG5qmZ6ImyBue0q+iJsgnnj43nj6Dnmb0G5qmZ6ImyBue0q+iJsgnnj43nj6Dnmb0G6ZO26ImyBue6ouiJsgzkuIrnmb3kuIvpu4QG5qmZ6ImyBue0q+iJsgnnj43nj6Dnmb0G6buE6ImyBuiTneiJsgbnmb3oibIG6buR6ImyCeWGsOmSm+eBsAnpnZLpk5zngbAG6YeR6ImyBue7v+iJsgzkuIrnmb3kuIvpu4QG5qmZ6ImyBue0q+iJsgnnj43nj6Dnmb0G6JOd6ImyBueZveiJsgbpu5HoibIG5qOV6ImyCeWGsOmSm+eBsAnpnZLpk5zngbAG6YeR6ImyBue7v+iJsgbpk7boibIG57qi6ImyBumTtuiJsgbnuqLoibIM5LiK55m95LiL6buEBuapmeiJsgnnj43nj6Dnmb0G6buR6ImyBuajleiJsgnlhrDpkpvngbAJ6Z2S6ZOc54GwBumHkeiJsgbnu7/oibIJ5aKo5pm26buRBum7hOiJsgZ5ZWxsb3cJ5qKm5bm757SrDOaWsOWinumhueebrgnmmJ/nqbrok50J5qKm5bm76JOdCeiTneeEsOiJsgnngpnmqZnoibIM5paw5aKe6aG555uuDOaWsOWinumhueebrgzmlrDlop7pobnnm64M5paw5aKe6aG555uuCeeQpeePgOapmQnngqvph5Hpk7YJ6LWk6Zye57qiCemTtuaciOeBsAnmoqblubvok50J54Kr6YeR6ZO2Fum7keiJsi/phZLnuqLkupHmr43oibIT6buR6ImyL+ePjeePoOeZveiJsgnmmJ/nqbrok50J5qKm5bm757SrEui2hemfs+mAn+efs+iLseeZvQnnjqvnkbDpu5EJ546r55Gw6buRDOaWsOWinumhueebrgnnu5rlhYnok50M5paw5aKe6aG555uuCeeQpeePgOapmRjmtYHmmJ/ok53kupHmr43ph5HlsZ7oibIJ54Kr57qi6ImyBueBsOiJsgnlrp3nn7PnuqIJ5rW35rSL6JOdCeaYn+WFiemTthPpu5HoibIv54OI54Sw57qi6ImyDOm7keS6keavjeiJsgnojbflhbDmqZkJ57+h57+g57u/DOWhlOWkq+e7uOeZvQnpm6roirHpk7YJ5rC05pm257SrCeaLieWKm+e6ognlvanmmbbpu5EJ6ZKb6YeR6ZO2CeePjeePoOeZvQnngqvpgJ/nuqIJ6LWk6Zye57qiCeaLieWKm+e6ognnv6Hnv6Dnu78M5aGU5aSr57u455m9CembquiKsemTtgnlrp3nn7Pok50J5rC05pm257SrCeiTneWkqemTtgnlvanmmbbpu5EJ6ZKb6YeR6ZO2CeePjeePoOeZvQnngqvlvbHok50J54Kr5Yqo57SrCeeCq+mAn+e6ogzlpaXlpKvnibnpu5EJ5Lid57yO6ZO2CeWknOm5sOm7kQnlrp3nn7Pok50J55qH5a6k6JOdCeaOouaIiOe6ognmmrTpo47pk7YJ5ouJ5LiB6buECeWNq+aYn+mTtgzloZTlpKvnu7jnmb0J54+N54+g55m9Ceaymea8oOmbvgnoib7nvo7ntKsJ55Ge5Li957qiCeW3tOm7juiTnQnnlJzmqZnnuqIJ56We56eY6JOdCeeUn+WKqOiTnQbph5HoibIG6buR6ImyBueZveiJsgzph5HlsZ7nsbPoibIG57qi6ImyEue6ouS6keavjemHkeWxnuiJsgbok53oibIM6JOd6YeR5bGe6ImyEue6ouS6keavjemHkeWxnuiJsgzlpaXlpKvnibnpu5EJ5Lid57yO6ZO2CeWknOm5sOm7kQnmjqLmiIjnuqIJ5pq06aOO6ZO2CeaLieS4gem7hAzloZTlpKvnu7jnmb0J54+N54+g55m9CeiJvue+jue0qwnnkZ7kuL3nuqIJ5be06buO6JOdCeeUnOapmee6ognnpZ7np5jok50V5reh6YeR5LqR5q+N6YeR5bGe6ImyD+WkqemdkuS6keavjeiJsgznj43nj6Dnmb3oibIS55m96YeR54Gw6YeR5bGe6ImyBum7keiJsgzmmbbkuq7nmb3oibIS5rW35rSL6JOd6YeR5bGe6ImyEuefs+amtOe6ouS6keavjeiJsgzlrp3nn7Ppu5HoibIM5pif5YWJ6buR6ImyD+S6ruikkOmHkeWxnuiJshLlpKnpnZLnn7PkupHmr43oibIS5rC06ZO254Gw5LqR5q+N6ImyEueZveefs+iLseS6keavjeiJshjmtYHmmJ/ok53kupHmr43ph5HlsZ7oibIS6ZO25LqR5q+N6YeR5bGe6ImyD+i2hemfs+mAn+mSm+mTthXmt7Hmo5XkupHmr43ph5HlsZ7oibIP6YWS57qi5LqR5q+N6ImyEumXquS6ruawtOaZtue6ouiJsgnmkanljaHph5EM5pif5YWJ6buR6ImyFCsDvgJnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dkZAIhDxAPFgYfAAUBdh8BBQF2HwJnZBAVoQEQ6buR6ImyK+mejeajleiJsgnosaHniZnoibIG6buR6ImyD+m7hOawtOaZtuajleiJsg/mmpfnjqvnkbDnuqLoibIG5qOV6ImyBuiTneiJsgznuqLpu5Hlj4zoibIZRi1TUE9SVOS4k+WxnuiTnem7keWPjOiJsgznn7PmprTnuqLoibIJ6Z6N5qOV6ImyBuexs+iJsgbopJDoibIQ6buRL+mejeajleWPjOiJsgnphofnmb3oibIAEOm7keiJsivpno3mo5XoibIJ5rWF54Gw6ImyDOS4ium7keS4i+eZvQnmtYXngbDoibIM5LiK6buR5LiL55m9CeixoeeJmeiJsgbpu5HoibIP6buE5rC05pm25qOV6ImyD+aal+eOq+eRsOe6ouiJsgbmo5XoibIG6JOd6ImyDOe6oum7keWPjOiJshlGLVNQT1JU5LiT5bGe6JOd6buR5Y+M6ImyDOefs+amtOe6ouiJsgnpno3mo5XoibIG57Gz6ImyBuikkOiJshDpu5Ev6Z6N5qOV5Y+M6ImyCemGh+eZveiJsgAQ6buR6ImyK+mejeajleiJsgnmtYXngbDoibIM5LiK6buR5LiL55m9A+m7kQzkuIrpu5HkuIvnmb0G57qi6ImyCeixoeeJmeiJsgbpu5HoibIP6buE5rC05pm25qOV6ImyD+aal+eOq+eRsOe6ouiJsgbmo5XoibIG6JOd6ImyDOe6oum7keWPjOiJshlGLVNQT1JU5LiT5bGe6JOd6buR5Y+M6ImyDOefs+amtOe6ouiJsgnpno3mo5XoibIG57Gz6ImyBuikkOiJshDpu5Ev6Z6N5qOV5Y+M6ImyCemGh+eZveiJsgAQ6buR6ImyK+mejeajleiJsgnmtYXngbDoibIM5LiK6buR5LiL55m9A+m7kQzkuIrpu5HkuIvnmb0J6YeR5rKZ6ImyA+m7kQzkuIrpu5HkuIvnmb0D6buRDOS4ium7keS4i+eZvQnosaHniZnoibIG6buR6ImyD+m7hOawtOaZtuajleiJsg/mmpfnjqvnkbDnuqLoibIG5qOV6ImyBuiTneiJsgznuqLpu5Hlj4zoibIZRi1TUE9SVOS4k+WxnuiTnem7keWPjOiJsgznn7PmprTnuqLoibIJ6Z6N5qOV6ImyBuexs+iJsgbopJDoibIQ6buRL+mejeajleWPjOiJsgnphofnmb3oibIAEOm7keiJsivpno3mo5XoibIJ5rWF54Gw6ImyDOS4ium7keS4i+eZvQnosaHniZnoibIG6buR6ImyD+m7hOawtOaZtuajleiJsg/mmpfnjqvnkbDnuqLoibIG5qOV6ImyBuiTneiJsgznuqLpu5Hlj4zoibIZRi1TUE9SVOS4k+WxnuiTnem7keWPjOiJsgznn7PmprTnuqLoibIJ6Z6N5qOV6ImyBuexs+iJsgbopJDoibIQ6buRL+mejeajleWPjOiJsgnphofnmb3oibIAEOm7keiJsivpno3mo5XoibIJ5rWF54Gw6ImyDOS4ium7keS4i+eZvQnosaHniZnoibIG6buR6ImyD+m7hOawtOaZtuajleiJsg/mmpfnjqvnkbDnuqLoibIG5qOV6ImyBuiTneiJsgznuqLpu5Hlj4zoibIZRi1TUE9SVOS4k+WxnuiTnem7keWPjOiJsgznn7PmprTnuqLoibIJ6Z6N5qOV6ImyBuexs+iJsgbopJDoibIQ6buRL+mejeajleWPjOiJsgnphofnmb3oibIAEOm7keiJsivpno3mo5XoibIJ5rWF54Gw6ImyDOS4ium7keS4i+eZvQnosaHniZnoibIG6buR6ImyD+m7hOawtOaZtuajleiJsg/mmpfnjqvnkbDnuqLoibIG5qOV6ImyBuiTneiJsgznuqLpu5Hlj4zoibIZRi1TUE9SVOS4k+WxnuiTnem7keWPjOiJsgznn7PmprTnuqLoibIJ6Z6N5qOV6ImyBuexs+iJsgbopJDoibIQ6buRL+mejeajleWPjOiJsgnphofnmb3oibIG6buR6ImyD+aal+eOq+eRsOe6ouiJsgnpno3mo5XoibIG6KSQ6ImyCemGh+eZveiJsgnmtYXngbDoibIl55m96LWt6Imy5YaF6aWwK+mTtuiJsumHkeWxnuaEn+adkOi0qAbpu5HoibIf55m96LWt6Imy5YaF6aWwK+aal+ajleiJsuadkOi0qBnnmb3ota3oibLlhoXppbAr5LmM5pyo6aWwGeeZvei1reiJsuWGhemlsCvnq7nlhoXppbAf6buR5YaF6aWwK+S4k+WxnumHkeWxnuaEn+adkOi0qAzmnIjlhYnnn7PoibIJ6ams6Z6N5qOVBum7keeBsAbngbDoibIG57Gz6ImyBueglue6ohbpu5HoibLlhoXppbAr5LmM5pyo6aWwIum7keiJsuWGhemlsCvpk7boibLph5HlsZ7mhJ/mnZDotKgc6buR6Imy5YaF6aWwK+aal+ajleiJsuadkOi0qBbpu5HoibLlhoXppbAr56u55YaF6aWwBueZveiJsgnlsqnngbDoibIJ546r55Gw57qiABWhARDpu5HoibIr6Z6N5qOV6ImyCeixoeeJmeiJsgbpu5HoibIP6buE5rC05pm25qOV6ImyD+aal+eOq+eRsOe6ouiJsgbmo5XoibIG6JOd6ImyDOe6oum7keWPjOiJshlGLVNQT1JU5LiT5bGe6JOd6buR5Y+M6ImyDOefs+amtOe6ouiJsgnpno3mo5XoibIG57Gz6ImyBuikkOiJshDpu5Ev6Z6N5qOV5Y+M6ImyCemGh+eZveiJsgAQ6buR6ImyK+mejeajleiJsgnmtYXngbDoibIM5LiK6buR5LiL55m9Cea1heeBsOiJsgzkuIrpu5HkuIvnmb0J6LGh54mZ6ImyBum7keiJsg/pu4TmsLTmmbbmo5XoibIP5pqX546r55Gw57qi6ImyBuajleiJsgbok53oibIM57qi6buR5Y+M6ImyGUYtU1BPUlTkuJPlsZ7ok53pu5Hlj4zoibIM55+z5qa057qi6ImyCemejeajleiJsgbnsbPoibIG6KSQ6ImyEOm7kS/pno3mo5Xlj4zoibIJ6YaH55m96ImyABDpu5HoibIr6Z6N5qOV6ImyCea1heeBsOiJsgzkuIrpu5HkuIvnmb0D6buRDOS4ium7keS4i+eZvQbnuqLoibIJ6LGh54mZ6ImyBum7keiJsg/pu4TmsLTmmbbmo5XoibIP5pqX546r55Gw57qi6ImyBuajleiJsgbok53oibIM57qi6buR5Y+M6ImyGUYtU1BPUlTkuJPlsZ7ok53pu5Hlj4zoibIM55+z5qa057qi6ImyCemejeajleiJsgbnsbPoibIG6KSQ6ImyEOm7kS/pno3mo5Xlj4zoibIJ6YaH55m96ImyABDpu5HoibIr6Z6N5qOV6ImyCea1heeBsOiJsgzkuIrpu5HkuIvnmb0D6buRDOS4ium7keS4i+eZvQnph5HmspnoibID6buRDOS4ium7keS4i+eZvQPpu5EM5LiK6buR5LiL55m9CeixoeeJmeiJsgbpu5HoibIP6buE5rC05pm25qOV6ImyD+aal+eOq+eRsOe6ouiJsgbmo5XoibIG6JOd6ImyDOe6oum7keWPjOiJshlGLVNQT1JU5LiT5bGe6JOd6buR5Y+M6ImyDOefs+amtOe6ouiJsgnpno3mo5XoibIG57Gz6ImyBuikkOiJshDpu5Ev6Z6N5qOV5Y+M6ImyCemGh+eZveiJsgAQ6buR6ImyK+mejeajleiJsgnmtYXngbDoibIM5LiK6buR5LiL55m9CeixoeeJmeiJsgbpu5HoibIP6buE5rC05pm25qOV6ImyD+aal+eOq+eRsOe6ouiJsgbmo5XoibIG6JOd6ImyDOe6oum7keWPjOiJshlGLVNQT1JU5LiT5bGe6JOd6buR5Y+M6ImyDOefs+amtOe6ouiJsgnpno3mo5XoibIG57Gz6ImyBuikkOiJshDpu5Ev6Z6N5qOV5Y+M6ImyCemGh+eZveiJsgAQ6buR6ImyK+mejeajleiJsgnmtYXngbDoibIM5LiK6buR5LiL55m9CeixoeeJmeiJsgbpu5HoibIP6buE5rC05pm25qOV6ImyD+aal+eOq+eRsOe6ouiJsgbmo5XoibIG6JOd6ImyDOe6oum7keWPjOiJshlGLVNQT1JU5LiT5bGe6JOd6buR5Y+M6ImyDOefs+amtOe6ouiJsgnpno3mo5XoibIG57Gz6ImyBuikkOiJshDpu5Ev6Z6N5qOV5Y+M6ImyCemGh+eZveiJsgAQ6buR6ImyK+mejeajleiJsgnmtYXngbDoibIM5LiK6buR5LiL55m9CeixoeeJmeiJsgbpu5HoibIP6buE5rC05pm25qOV6ImyD+aal+eOq+eRsOe6ouiJsgbmo5XoibIG6JOd6ImyDOe6oum7keWPjOiJshlGLVNQT1JU5LiT5bGe6JOd6buR5Y+M6ImyDOefs+amtOe6ouiJsgnpno3mo5XoibIG57Gz6ImyBuikkOiJshDpu5Ev6Z6N5qOV5Y+M6ImyCemGh+eZveiJsgbpu5HoibIP5pqX546r55Gw57qi6ImyCemejeajleiJsgbopJDoibIJ6YaH55m96ImyCea1heeBsOiJsiXnmb3ota3oibLlhoXppbAr6ZO26Imy6YeR5bGe5oSf5p2Q6LSoBum7keiJsh/nmb3ota3oibLlhoXppbAr5pqX5qOV6Imy5p2Q6LSoGeeZvei1reiJsuWGhemlsCvkuYzmnKjppbAZ55m96LWt6Imy5YaF6aWwK+erueWGhemlsB/pu5HlhoXppbAr5LiT5bGe6YeR5bGe5oSf5p2Q6LSoDOaciOWFieefs+iJsgnpqazpno3mo5UG6buR54GwBueBsOiJsgbnsbPoibIG56CW57qiFum7keiJsuWGhemlsCvkuYzmnKjppbAi6buR6Imy5YaF6aWwK+mTtuiJsumHkeWxnuaEn+adkOi0qBzpu5HoibLlhoXppbAr5pqX5qOV6Imy5p2Q6LSoFum7keiJsuWGhemlsCvnq7nlhoXppbAG55m96ImyCeWyqeeBsOiJsgnnjqvnkbDnuqIAFCsDoQFnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2RkAjUPDxYCHgRUZXh0BQnkuo7nh5Xpo55kZAI3Dw8WAh8DBQ5YU0QyMDE0MTAxNTItMWRkAjkPDxYEHgdFbmFibGVkaB4HVmlzaWJsZWhkZGStFOui5BBqFHdnmLvXlEbbm8Z3Aw==" />
</div>

<script type="text/javascript">
//<![CDATA[
var theForm = document.forms['form1'];
if (!theForm) {
    theForm = document.form1;
}
function __doPostBack(eventTarget, eventArgument) {
    if (!theForm.onsubmit || (theForm.onsubmit() != false)) {
        theForm.__EVENTTARGET.value = eventTarget;
        theForm.__EVENTARGUMENT.value = eventArgument;
        theForm.submit();
    }
}
//]]>
</script>


<script src="/sag/WebResource.axd?d=SwS7SA_er4TnTg91ZZTEFR5vtPO3EMarGJnCBJJ1orLREyem5RiTirMA3gLHOj8Bz0mcxDXhcFWYDcNXY9x5rtJbLmY1&amp;t=635223658464687500" type="text/javascript"></script>


<script src="/sag/ScriptResource.axd?d=aWn6WWpp6JO8tfEFpl1tF7Rvh83KkhGOBToLZUVPBE_uTIDWZMXlLWv48sOFRgJPMMDrku_LyOuffQNbacJu3NKR4v3dteNo25Pr1XPX8BiVnhXIO1r2XqK5CWTxFwCpAF83d-eFx1bKb55_QWzwQnNm4_NTSTH69r3Jwn1B0OXRdbCr0&amp;t=ffffffffb6431ae9" type="text/javascript"></script>
<script type="text/javascript">
//<![CDATA[
if (typeof(Sys) === 'undefined') throw new Error('ASP.NET Ajax 客户端框架未能加载。');
//]]>
</script>

<script src="/sag/ScriptResource.axd?d=r4zPOI1pOwmxrdPYS7pjMIEpzy6siFeaMUfm7ACBaZ0x-y-xHV47PqeHRhdIXT5Ce14vOke9QIFXuki2Is20sWysW8Md3fu6sEaHELKw1QUiw3oSTrDIxOdFoMVt-dF7TIIUe42VlHOj5BElHqMrTRl_HHD9iApw00wolmnCZE0zLwNj0&amp;t=ffffffffb6431ae9" type="text/javascript"></script>
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="73777E5E" />
</div>


    <div style="width:900px;">
      <div id="tabs" class="tabs" style="width:900px;">
        <ul>		  
            <li id="c"><a href="#tabs-3" onclick="show(3)">车辆信息</a></li> 
        </ul>
      </div> 
      <!--车辆信息 start-->
      <div id="cDiv" style="margin:2 0 0 5;display:none;" >
        <br />
        <table border="0" cellpadding="0" cellspacing="0" width="900px"  style="border-collapse:collapse;border:1px solid #9a9a9a" >
         <tr>
         <td>
         <input name="txtCustId" type="text" value="05dde3ab-3f95-486e-9222-7dadf9a833c5" id="txtCustId" style="display:none;" />
         <input name="txtVehicleId" type="text" value="0ccc60b3-e124-41c0-9aa4-dc48cc259acd" id="txtVehicleId" style="display:none;" />
         <span class="requireSpan">*</span>制造商：</td><td style="width:125px;">
         <script type="text/javascript">
//<![CDATA[
Sys.WebForms.PageRequestManager._initialize('cheZhuUpdateManage', document.getElementById('form1'));
Sys.WebForms.PageRequestManager.getInstance()._updateControls(['tcheLiangZhiZaoShang','tcheLiangCheXi'], [], [], 90);
//]]>
</script>

         <div id="cheLiangZhiZaoShang">
	   
         <select name="ddlCheLiangZhiZaoShang" onchange="javascript:setTimeout('__doPostBack(\'ddlCheLiangZhiZaoShang\',\'\')', 0)" id="ddlCheLiangZhiZaoShang" style="border:none;width:100%;">
		<option value="东风本田">东风本田</option>
		<option value="广汽本田">广汽本田</option>
		<option value="广汽丰田">广汽丰田</option>
		<option value="雷克萨斯">雷克萨斯</option>
		<option value="通用">通用</option>
		<option value="一汽丰田">一汽丰田</option>
		<option selected="selected" value="Lexus雷克萨斯">Lexus雷克萨斯</option>

	</select>          
         
</div>  
         <input name="txtCheLiangZhiZaoShang" type="text" value="Lexus雷克萨斯" maxlength="30" id="txtCheLiangZhiZaoShang" style="display:none;" />
         </td>
         <td><span class="requireSpan">*</span>车系：</td><td>
         <div id="cheLiangCheXi">
	 
         <select name="ddlCheLiangCheXi" id="ddlCheLiangCheXi" style="border:none;width:100%;">
		<option selected="selected" value="RX270">RX270</option>

	</select> 
        
</div> 
         <input name="txtCheLiangCheXi" type="text" value="RX270" maxlength="30" id="txtCheLiangCheXi" style="display:none;" />
         </td>
         
         <td><span class="requireSpan">*</span>车型代码：</td><td><input name="txtCheLiangCheXingDaiMa" type="text" value="精英版" maxlength="30" id="txtCheLiangCheXingDaiMa" /></td>
         <td><span class="requireSpan">*</span>车身颜色：</td><td>
         <select name="ddlCheShenColor" id="ddlCheShenColor" style="width:135px;border:none;">
	<option value="橙金属色">橙金属色</option>
	<option value="灰金属色">灰金属色</option>
	<option value="灰蓝金属色">灰蓝金属色</option>
	<option value="绿云母色">绿云母色</option>
	<option value="上驼下白">上驼下白</option>
	<option value="深红云母金属色">深红云母金属色</option>
	<option value="深红云母色">深红云母色</option>
	<option value="深灰金属">深灰金属</option>
	<option value="深蓝金属色">深蓝金属色</option>
	<option value="深青灰云母色">深青灰云母色</option>
	<option value="银金属色">银金属色</option>
	<option value="珍珠白色">珍珠白色</option>
	<option value="紫云母金属">紫云母金属</option>
	<option value="卡特莱蓝黑云母金属色">卡特莱蓝黑云母金属色</option>
	<option value="米黄金属色">米黄金属色</option>
	<option value="青铜云母">青铜云母</option>
	<option value="深蓝云母色">深蓝云母色</option>
	<option value="深棕云母金属色">深棕云母金属色</option>
	<option value="珍珠白">珍珠白</option>
	<option value="琥珀金">琥珀金</option>
	<option value="摩卡金">摩卡金</option>
	<option value="琥珀金">琥珀金</option>
	<option value="琥珀金">琥珀金</option>
	<option value="炫晶黑">炫晶黑</option>
	<option value="珍珠白">珍珠白</option>
	<option value="钨金灰">钨金灰</option>
	<option value="紫钻黑">紫钻黑</option>
	<option value="珊瑚红">珊瑚红</option>
	<option value="香槟金">香槟金</option>
	<option value="黑色/晶亮白色">黑色/晶亮白色</option>
	<option value="俊雅红">俊雅红</option>
	<option value="雪铂银">雪铂银</option>
	<option value="马德里金">马德里金</option>
	<option value="摩卡棕">摩卡棕</option>
	<option value="炫晶红">炫晶红</option>
	<option value="水晶银">水晶银</option>
	<option value="炫彩绿">炫彩绿</option>
	<option value="极光蓝">极光蓝</option>
	<option value="烈焰红色">烈焰红色</option>
	<option value="太空银">太空银</option>
	<option value="蓝色">蓝色</option>
	<option value="银色">银色</option>
	<option value="红色">红色</option>
	<option value="白色">白色</option>
	<option value="黑色">黑色</option>
	<option value="棕色">棕色</option>
	<option value="冰钛灰">冰钛灰</option>
	<option value="青铜灰">青铜灰</option>
	<option value="金色">金色</option>
	<option value="绿色">绿色</option>
	<option value="银色">银色</option>
	<option value="红色">红色</option>
	<option value="上白下黄">上白下黄</option>
	<option value="橙色">橙色</option>
	<option value="紫色">紫色</option>
	<option value="珍珠白">珍珠白</option>
	<option value="蓝色">蓝色</option>
	<option value="白色">白色</option>
	<option value="黑色">黑色</option>
	<option value="棕色">棕色</option>
	<option value="冰钛灰">冰钛灰</option>
	<option value="青铜灰">青铜灰</option>
	<option value="金色">金色</option>
	<option value="绿色">绿色</option>
	<option value="银色">银色</option>
	<option value="红色">红色</option>
	<option value="上白下黄">上白下黄</option>
	<option value="橙色">橙色</option>
	<option value="紫色">紫色</option>
	<option value="珍珠白">珍珠白</option>
	<option value="蓝色">蓝色</option>
	<option value="白色">白色</option>
	<option value="黑色">黑色</option>
	<option value="棕色">棕色</option>
	<option value="冰钛灰">冰钛灰</option>
	<option value="青铜灰">青铜灰</option>
	<option value="金色">金色</option>
	<option value="绿色">绿色</option>
	<option value="深灰云母金属色">深灰云母金属色</option>
	<option value="银蓝金属色">银蓝金属色</option>
	<option value="超音速银色">超音速银色</option>
	<option value="宝石珍珠白">宝石珍珠白</option>
	<option value="冰钛灰金属色">冰钛灰金属色</option>
	<option value="铂青铜金属色">铂青铜金属色</option>
	<option value="超级白色">超级白色</option>
	<option value="绿云母金属色">绿云母金属色</option>
	<option value="上白下绿">上白下绿</option>
	<option value="上白下紫">上白下紫</option>
	<option value="俊雅红">俊雅红</option>
	<option value="雪铂银">雪铂银</option>
	<option value="马德里金">马德里金</option>
	<option value="摩卡棕">摩卡棕</option>
	<option value="绚晶红">绚晶红</option>
	<option value="炫动红">炫动红</option>
	<option value="太空银">太空银</option>
	<option value="天际白">天际白</option>
	<option value="宝石红">宝石红</option>
	<option value="橘金属色">橘金属色</option>
	<option value="晶亮珍珠白色">晶亮珍珠白色</option>
	<option value="银金属色">银金属色</option>
	<option value="新月黄">新月黄</option>
	<option value="海洋蓝">海洋蓝</option>
	<option value="BLUE">BLUE</option>
	<option value="上白下黄">上白下黄</option>
	<option value="黑云母色">黑云母色</option>
	<option value="经云母金属色">经云母金属色</option>
	<option value="蓝金属色">蓝金属色</option>
	<option value="星光银">星光银</option>
	<option value="蓝色">蓝色</option>
	<option value="白色">白色</option>
	<option value="蓝色">蓝色</option>
	<option value="白色">白色</option>
	<option value="黑色">黑色</option>
	<option value="棕色">棕色</option>
	<option value="冰钛灰">冰钛灰</option>
	<option value="青铜灰">青铜灰</option>
	<option value="金色">金色</option>
	<option value="绿色">绿色</option>
	<option value="银色">银色</option>
	<option value="红色">红色</option>
	<option value="上白下黄">上白下黄</option>
	<option value="橙色">橙色</option>
	<option value="紫色">紫色</option>
	<option value="珍珠白">珍珠白</option>
	<option value="蓝色">蓝色</option>
	<option value="白色">白色</option>
	<option value="黑色">黑色</option>
	<option value="棕色">棕色</option>
	<option value="冰钛灰">冰钛灰</option>
	<option value="青铜灰">青铜灰</option>
	<option value="金色">金色</option>
	<option value="绿色">绿色</option>
	<option value="新月黄">新月黄</option>
	<option value="蓝色">蓝色</option>
	<option value="白色">白色</option>
	<option value="银色">银色</option>
	<option value="红色">红色</option>
	<option value="灰金属色">灰金属色</option>
	<option value="灰金属色">灰金属色</option>
	<option value="TINTED SILVER">TINTED SILVER</option>
	<option value="黑色">黑色</option>
	<option value="棕色">棕色</option>
	<option value="绿色">绿色</option>
	<option value="银色">银色</option>
	<option value="红色">红色</option>
	<option value="橙色">橙色</option>
	<option value="紫色">紫色</option>
	<option value="珍珠白">珍珠白</option>
	<option value="上白下黄">上白下黄</option>
	<option value="橙色">橙色</option>
	<option value="紫色">紫色</option>
	<option value="珍珠白">珍珠白</option>
	<option value="橙色">橙色</option>
	<option value="紫色">紫色</option>
	<option value="珍珠白">珍珠白</option>
	<option value="银色">银色</option>
	<option value="红色">红色</option>
	<option value="上白下黄">上白下黄</option>
	<option value="橙色">橙色</option>
	<option value="紫色">紫色</option>
	<option value="珍珠白">珍珠白</option>
	<option value="黄色">黄色</option>
	<option value="蓝色">蓝色</option>
	<option value="白色">白色</option>
	<option value="黑色">黑色</option>
	<option value="冰钛灰">冰钛灰</option>
	<option value="青铜灰">青铜灰</option>
	<option value="金色">金色</option>
	<option value="绿色">绿色</option>
	<option value="上白下黄">上白下黄</option>
	<option value="橙色">橙色</option>
	<option value="紫色">紫色</option>
	<option value="珍珠白">珍珠白</option>
	<option value="蓝色">蓝色</option>
	<option value="白色">白色</option>
	<option value="黑色">黑色</option>
	<option value="棕色">棕色</option>
	<option value="冰钛灰">冰钛灰</option>
	<option value="青铜灰">青铜灰</option>
	<option value="金色">金色</option>
	<option value="绿色">绿色</option>
	<option value="银色">银色</option>
	<option value="红色">红色</option>
	<option value="银色">银色</option>
	<option value="红色">红色</option>
	<option value="上白下黄">上白下黄</option>
	<option value="橙色">橙色</option>
	<option value="珍珠白">珍珠白</option>
	<option value="黑色">黑色</option>
	<option value="棕色">棕色</option>
	<option value="冰钛灰">冰钛灰</option>
	<option value="青铜灰">青铜灰</option>
	<option value="金色">金色</option>
	<option value="绿色">绿色</option>
	<option value="墨晶黑">墨晶黑</option>
	<option value="黄色">黄色</option>
	<option value="yellow">yellow</option>
	<option value="梦幻紫">梦幻紫</option>
	<option value="新增项目">新增项目</option>
	<option value="星空蓝">星空蓝</option>
	<option value="梦幻蓝">梦幻蓝</option>
	<option value="蓝焰色">蓝焰色</option>
	<option value="炙橙色">炙橙色</option>
	<option value="新增项目">新增项目</option>
	<option value="新增项目">新增项目</option>
	<option value="新增项目">新增项目</option>
	<option value="新增项目">新增项目</option>
	<option value="琥珀橙">琥珀橙</option>
	<option value="炫金银">炫金银</option>
	<option value="赤霞红">赤霞红</option>
	<option value="银月灰">银月灰</option>
	<option value="梦幻蓝">梦幻蓝</option>
	<option value="炫金银">炫金银</option>
	<option value="黑色/酒红云母色">黑色/酒红云母色</option>
	<option value="黑色/珍珠白色">黑色/珍珠白色</option>
	<option value="星空蓝">星空蓝</option>
	<option value="梦幻紫">梦幻紫</option>
	<option value="超音速石英白">超音速石英白</option>
	<option value="玫瑰黑">玫瑰黑</option>
	<option value="玫瑰黑">玫瑰黑</option>
	<option value="新增项目">新增项目</option>
	<option value="绚光蓝">绚光蓝</option>
	<option value="新增项目">新增项目</option>
	<option value="琥珀橙">琥珀橙</option>
	<option value="流星蓝云母金属色">流星蓝云母金属色</option>
	<option value="炫红色">炫红色</option>
	<option value="灰色">灰色</option>
	<option value="宝石红">宝石红</option>
	<option value="海洋蓝">海洋蓝</option>
	<option value="星光银">星光银</option>
	<option value="黑色/烈焰红色">黑色/烈焰红色</option>
	<option value="黑云母色">黑云母色</option>
	<option value="荷兰橙">荷兰橙</option>
	<option value="翡翠绿">翡翠绿</option>
	<option value="塔夫绸白">塔夫绸白</option>
	<option value="雪花银">雪花银</option>
	<option value="水晶紫">水晶紫</option>
	<option value="拉力红">拉力红</option>
	<option value="彩晶黑">彩晶黑</option>
	<option value="钛金银">钛金银</option>
	<option value="珍珠白">珍珠白</option>
	<option value="炫速红">炫速红</option>
	<option value="赤霞红">赤霞红</option>
	<option value="拉力红">拉力红</option>
	<option value="翡翠绿">翡翠绿</option>
	<option value="塔夫绸白">塔夫绸白</option>
	<option value="雪花银">雪花银</option>
	<option value="宝石蓝">宝石蓝</option>
	<option value="水晶紫">水晶紫</option>
	<option value="蓝天银">蓝天银</option>
	<option value="彩晶黑">彩晶黑</option>
	<option value="钛金银">钛金银</option>
	<option value="珍珠白">珍珠白</option>
	<option value="炫影蓝">炫影蓝</option>
	<option value="炫动紫">炫动紫</option>
	<option value="炫速红">炫速红</option>
	<option value="奥夫特黑">奥夫特黑</option>
	<option value="丝缎银">丝缎银</option>
	<option value="夜鹰黑">夜鹰黑</option>
	<option value="宝石蓝">宝石蓝</option>
	<option value="皇室蓝">皇室蓝</option>
	<option value="探戈红">探戈红</option>
	<option value="暴风银">暴风银</option>
	<option value="拉丁黄">拉丁黄</option>
	<option value="卫星银">卫星银</option>
	<option value="塔夫绸白">塔夫绸白</option>
	<option value="珍珠白">珍珠白</option>
	<option value="沙漠雾">沙漠雾</option>
	<option value="艾美紫">艾美紫</option>
	<option value="瑞丽红">瑞丽红</option>
	<option value="巴黎蓝">巴黎蓝</option>
	<option value="甜橙红">甜橙红</option>
	<option value="神秘蓝">神秘蓝</option>
	<option value="生动蓝">生动蓝</option>
	<option value="金色">金色</option>
	<option value="黑色">黑色</option>
	<option value="白色">白色</option>
	<option value="金属米色">金属米色</option>
	<option value="红色">红色</option>
	<option value="红云母金属色">红云母金属色</option>
	<option value="蓝色">蓝色</option>
	<option value="蓝金属色">蓝金属色</option>
	<option value="红云母金属色">红云母金属色</option>
	<option value="奥夫特黑">奥夫特黑</option>
	<option value="丝缎银">丝缎银</option>
	<option value="夜鹰黑">夜鹰黑</option>
	<option value="探戈红">探戈红</option>
	<option value="暴风银">暴风银</option>
	<option value="拉丁黄">拉丁黄</option>
	<option value="塔夫绸白">塔夫绸白</option>
	<option value="珍珠白">珍珠白</option>
	<option value="艾美紫">艾美紫</option>
	<option value="瑞丽红">瑞丽红</option>
	<option value="巴黎蓝">巴黎蓝</option>
	<option value="甜橙红">甜橙红</option>
	<option value="神秘蓝">神秘蓝</option>
	<option value="淡金云母金属色">淡金云母金属色</option>
	<option value="天青云母色">天青云母色</option>
	<option value="珍珠白色">珍珠白色</option>
	<option value="白金灰金属色">白金灰金属色</option>
	<option value="黑色">黑色</option>
	<option value="晶亮白色">晶亮白色</option>
	<option value="海洋蓝金属色">海洋蓝金属色</option>
	<option value="石榴红云母色">石榴红云母色</option>
	<option value="宝石黑色">宝石黑色</option>
	<option value="星光黑色">星光黑色</option>
	<option value="亮褐金属色">亮褐金属色</option>
	<option value="天青石云母色">天青石云母色</option>
	<option value="水银灰云母色">水银灰云母色</option>
	<option value="白石英云母色">白石英云母色</option>
	<option value="流星蓝云母金属色">流星蓝云母金属色</option>
	<option value="银云母金属色">银云母金属色</option>
	<option value="超音速钛银">超音速钛银</option>
	<option value="深棕云母金属色">深棕云母金属色</option>
	<option value="酒红云母色">酒红云母色</option>
	<option value="闪亮水晶红色">闪亮水晶红色</option>
	<option value="摩卡金">摩卡金</option>
	<option selected="selected" value="星光黑色">星光黑色</option>

</select>
         </tr>

         <tr>
         <td><span class="requireSpan">*</span>车牌号：</td><td><input name="txtCheLiangChePaiHao" type="text" value="粤B8G1C8" maxlength="8" id="txtCheLiangChePaiHao" /></td>
         <td><span class="requireSpan">*</span>车架号：</td><td><input name="txtCheLiangCheJiaHao" type="text" value="JTJZA11A9E2469131" maxlength="17" id="txtCheLiangCheJiaHao" onblur="checkVIN();" /></td>
         <td><span class="requireSpan">*</span>发动机号：</td><td><input name="txtCheLiangFaDongJiHao" type="text" value="1AR1155941" maxlength="20" id="txtCheLiangFaDongJiHao" /></td>
         <td><span class="requireSpan">*</span>变速箱号：</td><td><input name="txtCheLiangBianSuXiangHao" type="text" value="0000" maxlength="20" id="txtCheLiangBianSuXiangHao" /></td>
         </tr>
         <tr>
         <td><span class="requireSpan">*</span>投保日期：</td><td><input name="txtBaoXianDate" type="text" id="txtBaoXianDate" class="easyui-datebox" /> </td>
         <td><span class="requireSpan">*</span>制造日期：</td><td><input name="txtZhiZaoDate" type="text" id="txtZhiZaoDate" class="easyui-datebox" /> </td>
         <td><span class="requireSpan">*</span>购车日期：</td><td><input name="txtGouCheDate" type="text" value="2014-10-30" id="txtGouCheDate" class="easyui-datebox" /> </td>
         <td>内装颜色：</td><td>
              <select name="ddlNeiZhuangYanSe" id="ddlNeiZhuangYanSe" style="width:135px;border:none;">
	<option value="黑色+鞍棕色">黑色+鞍棕色</option>
	<option value="象牙色">象牙色</option>
	<option value="黑色">黑色</option>
	<option value="黄水晶棕色">黄水晶棕色</option>
	<option value="暗玫瑰红色">暗玫瑰红色</option>
	<option value="棕色">棕色</option>
	<option value="蓝色">蓝色</option>
	<option value="红黑双色">红黑双色</option>
	<option value="F-SPORT专属蓝黑双色">F-SPORT专属蓝黑双色</option>
	<option value="石榴红色">石榴红色</option>
	<option value="鞍棕色">鞍棕色</option>
	<option value="米色">米色</option>
	<option value="褐色">褐色</option>
	<option value="黑/鞍棕双色">黑/鞍棕双色</option>
	<option value="醇白色">醇白色</option>
	<option selected="selected" value=""></option>
	<option value="黑色+鞍棕色">黑色+鞍棕色</option>
	<option value="浅灰色">浅灰色</option>
	<option value="上黑下白">上黑下白</option>
	<option value="浅灰色">浅灰色</option>
	<option value="上黑下白">上黑下白</option>
	<option value="象牙色">象牙色</option>
	<option value="黑色">黑色</option>
	<option value="黄水晶棕色">黄水晶棕色</option>
	<option value="暗玫瑰红色">暗玫瑰红色</option>
	<option value="棕色">棕色</option>
	<option value="蓝色">蓝色</option>
	<option value="红黑双色">红黑双色</option>
	<option value="F-SPORT专属蓝黑双色">F-SPORT专属蓝黑双色</option>
	<option value="石榴红色">石榴红色</option>
	<option value="鞍棕色">鞍棕色</option>
	<option value="米色">米色</option>
	<option value="褐色">褐色</option>
	<option value="黑/鞍棕双色">黑/鞍棕双色</option>
	<option value="醇白色">醇白色</option>
	<option value=""></option>
	<option value="黑色+鞍棕色">黑色+鞍棕色</option>
	<option value="浅灰色">浅灰色</option>
	<option value="上黑下白">上黑下白</option>
	<option value="黑">黑</option>
	<option value="上黑下白">上黑下白</option>
	<option value="红色">红色</option>
	<option value="象牙色">象牙色</option>
	<option value="黑色">黑色</option>
	<option value="黄水晶棕色">黄水晶棕色</option>
	<option value="暗玫瑰红色">暗玫瑰红色</option>
	<option value="棕色">棕色</option>
	<option value="蓝色">蓝色</option>
	<option value="红黑双色">红黑双色</option>
	<option value="F-SPORT专属蓝黑双色">F-SPORT专属蓝黑双色</option>
	<option value="石榴红色">石榴红色</option>
	<option value="鞍棕色">鞍棕色</option>
	<option value="米色">米色</option>
	<option value="褐色">褐色</option>
	<option value="黑/鞍棕双色">黑/鞍棕双色</option>
	<option value="醇白色">醇白色</option>
	<option value=""></option>
	<option value="黑色+鞍棕色">黑色+鞍棕色</option>
	<option value="浅灰色">浅灰色</option>
	<option value="上黑下白">上黑下白</option>
	<option value="黑">黑</option>
	<option value="上黑下白">上黑下白</option>
	<option value="金沙色">金沙色</option>
	<option value="黑">黑</option>
	<option value="上黑下白">上黑下白</option>
	<option value="黑">黑</option>
	<option value="上黑下白">上黑下白</option>
	<option value="象牙色">象牙色</option>
	<option value="黑色">黑色</option>
	<option value="黄水晶棕色">黄水晶棕色</option>
	<option value="暗玫瑰红色">暗玫瑰红色</option>
	<option value="棕色">棕色</option>
	<option value="蓝色">蓝色</option>
	<option value="红黑双色">红黑双色</option>
	<option value="F-SPORT专属蓝黑双色">F-SPORT专属蓝黑双色</option>
	<option value="石榴红色">石榴红色</option>
	<option value="鞍棕色">鞍棕色</option>
	<option value="米色">米色</option>
	<option value="褐色">褐色</option>
	<option value="黑/鞍棕双色">黑/鞍棕双色</option>
	<option value="醇白色">醇白色</option>
	<option value=""></option>
	<option value="黑色+鞍棕色">黑色+鞍棕色</option>
	<option value="浅灰色">浅灰色</option>
	<option value="上黑下白">上黑下白</option>
	<option value="象牙色">象牙色</option>
	<option value="黑色">黑色</option>
	<option value="黄水晶棕色">黄水晶棕色</option>
	<option value="暗玫瑰红色">暗玫瑰红色</option>
	<option value="棕色">棕色</option>
	<option value="蓝色">蓝色</option>
	<option value="红黑双色">红黑双色</option>
	<option value="F-SPORT专属蓝黑双色">F-SPORT专属蓝黑双色</option>
	<option value="石榴红色">石榴红色</option>
	<option value="鞍棕色">鞍棕色</option>
	<option value="米色">米色</option>
	<option value="褐色">褐色</option>
	<option value="黑/鞍棕双色">黑/鞍棕双色</option>
	<option value="醇白色">醇白色</option>
	<option value=""></option>
	<option value="黑色+鞍棕色">黑色+鞍棕色</option>
	<option value="浅灰色">浅灰色</option>
	<option value="上黑下白">上黑下白</option>
	<option value="象牙色">象牙色</option>
	<option value="黑色">黑色</option>
	<option value="黄水晶棕色">黄水晶棕色</option>
	<option value="暗玫瑰红色">暗玫瑰红色</option>
	<option value="棕色">棕色</option>
	<option value="蓝色">蓝色</option>
	<option value="红黑双色">红黑双色</option>
	<option value="F-SPORT专属蓝黑双色">F-SPORT专属蓝黑双色</option>
	<option value="石榴红色">石榴红色</option>
	<option value="鞍棕色">鞍棕色</option>
	<option value="米色">米色</option>
	<option value="褐色">褐色</option>
	<option value="黑/鞍棕双色">黑/鞍棕双色</option>
	<option value="醇白色">醇白色</option>
	<option value=""></option>
	<option value="黑色+鞍棕色">黑色+鞍棕色</option>
	<option value="浅灰色">浅灰色</option>
	<option value="上黑下白">上黑下白</option>
	<option value="象牙色">象牙色</option>
	<option value="黑色">黑色</option>
	<option value="黄水晶棕色">黄水晶棕色</option>
	<option value="暗玫瑰红色">暗玫瑰红色</option>
	<option value="棕色">棕色</option>
	<option value="蓝色">蓝色</option>
	<option value="红黑双色">红黑双色</option>
	<option value="F-SPORT专属蓝黑双色">F-SPORT专属蓝黑双色</option>
	<option value="石榴红色">石榴红色</option>
	<option value="鞍棕色">鞍棕色</option>
	<option value="米色">米色</option>
	<option value="褐色">褐色</option>
	<option value="黑/鞍棕双色">黑/鞍棕双色</option>
	<option value="醇白色">醇白色</option>
	<option value="黑色">黑色</option>
	<option value="暗玫瑰红色">暗玫瑰红色</option>
	<option value="鞍棕色">鞍棕色</option>
	<option value="褐色">褐色</option>
	<option value="醇白色">醇白色</option>
	<option value="浅灰色">浅灰色</option>
	<option value="白赭色内饰+银色金属感材质">白赭色内饰+银色金属感材质</option>
	<option value="黑色">黑色</option>
	<option value="白赭色内饰+暗棕色材质">白赭色内饰+暗棕色材质</option>
	<option value="白赭色内饰+乌木饰">白赭色内饰+乌木饰</option>
	<option value="白赭色内饰+竹内饰">白赭色内饰+竹内饰</option>
	<option value="黑内饰+专属金属感材质">黑内饰+专属金属感材质</option>
	<option value="月光石色">月光石色</option>
	<option value="马鞍棕">马鞍棕</option>
	<option value="黑灰">黑灰</option>
	<option value="灰色">灰色</option>
	<option value="米色">米色</option>
	<option value="砖红">砖红</option>
	<option value="黑色内饰+乌木饰">黑色内饰+乌木饰</option>
	<option value="黑色内饰+银色金属感材质">黑色内饰+银色金属感材质</option>
	<option value="黑色内饰+暗棕色材质">黑色内饰+暗棕色材质</option>
	<option value="黑色内饰+竹内饰">黑色内饰+竹内饰</option>
	<option value="白色">白色</option>
	<option value="岩灰色">岩灰色</option>
	<option value="玫瑰红">玫瑰红</option>
	<option value=""></option>

</select></td>
         </tr>
         <tr>
         <td>商检单号：</td><td><input name="txtShangJianDanHao" type="text" id="txtShangJianDanHao" /> </td>
         <td>合格证号：</td><td><input name="txtHeGeZhengHao" type="text" value="XIX1708732" id="txtHeGeZhengHao" /> </td>
         <td>进口证号：</td><td><input name="txtJinKouZhengHao" type="text" id="txtJinKouZhengHao" /> </td>
         <td>车辆规格：</td><td><input name="txtCheLiangGuiGe" type="text" id="txtCheLiangGuiGe" /> </td>
         </tr>
         <tr>
         <td>车辆种类：</td>
         <td>
         <select name="ddlCheLiangSort" id="ddlCheLiangSort" style="border:none;width:125px;">

</select></td>
         <td>年审日期：</td><td><input name="txtCheLiangNextExaDate" type="text" value="2015-1-6" id="txtCheLiangNextExaDate" class="inputCss easyui-datebox" />
         </td>
         <td>
         </td><td style="color:red;font-weight:bold;"> </td>
         <td></td><td></td>
         </tr>
         <tr>
           <td>自店销售:</td><td>
           <select name="ddlCheLiangZiDianSale" id="ddlCheLiangZiDianSale">
	<option value=""></option>
	<option selected="selected" value="1">自店销售</option>
	<option value="0">非自店销售</option>

</select> </td>
           <td>车辆来源:</td><td><input name="txtCheLiangLaiYuan" type="text" value="新车销售" maxlength="60" id="txtCheLiangLaiYuan" /></td>
           <td>销售员:</td><td><input name="txtCheLiangSaleName" type="text" value="于燕飞" readonly="readonly" id="txtCheLiangSaleName" /></td>
           <td>销售单号:</td><td><input name="txtCheLiangSaleBillNo" type="text" value="XSD201410152-1" readonly="readonly" id="txtCheLiangSaleBillNo" /></td>
         </tr>


         </table>
         </div>
      <!--车辆信息 end-->

        <!--销售信息 start-->
        <div id="dDiv" style="margin:2 0 0 5;display:none;" >
         <iframe id="divSaleInfo"    frameborder="0" scrolling="yes"  style="width:100%;height:500px;" ></iframe>
        </div>
        <!--销售信息 end-->      
      
      <div style="height:5px;"></div>

      <!--按钮区域 start-->
      <div align="center" id="btnBottomDiv" >
         
            <a onclick="return saveCheck(1);" id="lnkMdf" class="easyui-linkbutton" href="javascript:__doPostBack('lnkMdf','')">修改</a>
         <a  id="A1" class="easyui-linkbutton" onclick="cancelAddVehicle()" >取消</a>
      </div>
      <!--按钮区域 end-->
    </div>
    

<script type="text/javascript">
//<![CDATA[
Sys.Application.initialize();
//]]>
</script>
</form>
     <script language="javascript" type="text/javascript" >
 
         var tmp = "a";
         function show(sort) {
             if ($("#" + tmp + "Div").length > 0) { $("#" + tmp + "Div").hide(); }
             if (sort == 1) { $("#" + tmp).removeClass(); $("#a").addClass("tabs_active"); tmp = "a"; }
             if (sort == 2) { $("#" + tmp).removeClass(); $("#b").addClass("tabs_active"); tmp = "b"; }
             if (sort == 3) { $("#" + tmp).removeClass(); $("#c").addClass("tabs_active"); tmp = "c"; }
             if (sort == 4) { $("#" + tmp).removeClass(); $("#d").addClass("tabs_active"); tmp = "d"; }

             $("#" + tmp + "Div").show();
         }


        


         $(function () {
             show(3);
             $("#txtCustId").css("display", "none");

         });



         //证件号码是否重复验证
         function checkVIN() {
             $.get("customNewCheck.aspx?d=" + new Date(), {
                 type: "strCheckVINNo",
                 vehicleId: "0ccc60b3-e124-41c0-9aa4-dc48cc259acd",
                 vin: $("#txtCheLiangCheJiaHao").val()
             }, function (data) {
                 if (data != "ok") {
                     $("#txtCheLiangCheJiaHao").css("background-color", "red");
                 } else {
                     $("#txtCheLiangCheJiaHao").css("background-color", "white");
                 }
             });
         }


         var btnFlag = "0";
         function saveCheck(sort) {
             if ($("#ddlCheLiangZhiZaoShang").val() != "") {
                 $("#txtCheLiangZhiZaoShang").val($("#ddlCheLiangZhiZaoShang").val());
             }
             if ($("#ddlCheLiangCheXi").val() != "") {
                 $("#txtCheLiangCheXi").val($("#ddlCheLiangCheXi").val());
             }

             var err = "";
             if (btnFlag == "0") { btnFlag = "1"; } else { return false; }

             //验证必须填项
                       
             if ($.trim($("#txtCheLiangZhiZaoShang").val()) == "") { err += "车辆信息->车辆制造商不能为空！\n"; }
             if ($.trim($("#txtCheLiangCheXi").val()) == "") { err += "车辆信息->车系不能为空！\n"; }
             if ($.trim($("#txtCheLiangCheXingDaiMa").val()) == "") { err += "车辆信息->车型代码不能为空！\n"; }
             if ($.trim($("#txtCheLiangChePaiHao").val()) == "") { err += "车辆信息->车牌号不能为空！\n"; }
             if ($.trim($("#txtCheLiangCheJiaHao").val()) == "") { err += "车辆信息->车架号不能为空！\n"; }
             if ($.trim($("#txtCheLiangFaDongJiHao").val()) == "") { err += "车辆信息->发动机号不能为空！\n"; }
             if ($.trim($("#txtCheLiangBianSuXiangHao").val()) == "") { err += "车辆信息->变速箱号不能为空！\n"; }

             if (err != "") { alert(err); btnFlag = "0"; return false; }

             if (sort == "0") {
                 __doPostBack('lnkSave', '');
             } else {
                 __doPostBack('lnkMdf', '');
             }
             return false;
         }

  
         function cardNoToDate(id1, id2) {
             var v1 = $("#" + id1).val();
             var v2 = getBirth(v1);
             try {
                 $("#" + id2).datebox('setValue', v2)
             } catch (e) {
                 $("#" + id2).val(v2);
             }
         }

         
         function cancelAddVehicle() {
             location.href = "customNewAdd.aspx?showSort=3&custId=" + $("#txtCustId").val() + "&d=" + new Date();
             return false;
         }

     </script>
</body>
</html>
