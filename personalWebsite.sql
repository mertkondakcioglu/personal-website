# --------------------------------------------------------
# Host:                         127.0.0.1
# Server version:               5.5.16-log
# Server OS:                    Win32
# HeidiSQL version:             6.0.0.3603
# Date/time:                    2013-05-23 12:51:07
# --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

# Dumping database structure for daltinkurt
CREATE DATABASE IF NOT EXISTS `daltinkurt2` /*!40100 DEFAULT CHARACTER SET latin5 */;
USE `daltinkurt2`;


# Dumping structure for table daltinkurt.adminda
CREATE TABLE IF NOT EXISTS `adminda` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `KullaniciAdi` varchar(50) NOT NULL,
  `Sifre` varchar(50) NOT NULL,
  `Gecerlilik` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin5;

# Dumping data for table daltinkurt.adminda: ~1 rows (approximately)
/*!40000 ALTER TABLE `adminda` DISABLE KEYS */;
INSERT INTO `adminda` (`ID`, `KullaniciAdi`, `Sifre`, `Gecerlilik`) VALUES
	(1, 'adminda', '1234', '1');
/*!40000 ALTER TABLE `adminda` ENABLE KEYS */;


# Dumping structure for table daltinkurt.dostsiteler
CREATE TABLE IF NOT EXISTS `dostsiteler` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `ad` varchar(50) NOT NULL,
  `url` varchar(50) NOT NULL,
  `oncelik` int(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin5;

# Dumping data for table daltinkurt.dostsiteler: ~8 rows (approximately)
/*!40000 ALTER TABLE `dostsiteler` DISABLE KEYS */;
INSERT INTO `dostsiteler` (`ID`, `ad`, `url`, `oncelik`) VALUES
	(1, 'Öğretmenler Sitesi', 'http://www.ogretmenlersitesi.com/', 10),
	(2, 'Yazarak.com', 'http://www.yazarak.com/', 20),
	(3, 'İstanbul İl Milli Eğitim Müdürlüğü', 'http://www.istanbulmem.com/', 30),
	(4, 'Tarım Bilgi Bankası', 'http://www.tarimbilgibankasi.com/Anasayfa.aspx', 40),
	(5, 'Haber Aktüel', 'http://www.haberaktuel.com/', 50),
	(6, 'ÖSS Matematik', 'http://www.ossmat.com/', 60),
	(7, 'Demet İlhan', 'http://www.demetilhan.com/', 70),
	(8, 'fatihhayrioglu', 'http://fatihhayrioglu.com/', 80);
/*!40000 ALTER TABLE `dostsiteler` ENABLE KEYS */;


# Dumping structure for table daltinkurt.hakkimda
CREATE TABLE IF NOT EXISTS `hakkimda` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `baslik` varchar(50) NOT NULL,
  `detay` mediumtext NOT NULL,
  `oncelik` int(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin5;

# Dumping data for table daltinkurt.hakkimda: ~5 rows (approximately)
/*!40000 ALTER TABLE `hakkimda` DISABLE KEYS */;
INSERT INTO `hakkimda` (`ID`, `baslik`, `detay`, `oncelik`) VALUES
	(1, 'Eğitim Bilgilerim', ' <h1>Eğitim Bilgilerim</h1>\r\n\r\n<table cellspacing="3" cellpadding="3" width="100%">\r\n        <tbody>\r\n            <tr bgcolor="#f4f4f4">\r\n                <td>\r\n                    <b>Okul</b>\r\n                </td>\r\n                <td>\r\n                    <b>İli</b>\r\n                </td>\r\n                <td>\r\n                    <p>\r\n                        <b>Baş.<br />\r\n                            Bitiş</b></p>\r\n                </td>\r\n                <td>\r\n                    <b>Derece</b>\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td width="180">\r\n                    Bahçeşehir Ünv. Fen Bil. Ens. Bilgi Teknolojileri Yük. Lis.\r\n                </td>\r\n                <td>\r\n                    İstanbul\r\n                </td>\r\n                <td>\r\n                    2007<br />\r\n                    2009\r\n                </td>\r\n                <td>\r\n                    3,96<br />\r\n                    / 4,00\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td colspan="4">\r\n                    <hr />\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td width="180">\r\n                    Fırat Ünv. Teknik Eğitim Fak. Bilgisayar Öğrt.\r\n                </td>\r\n                <td>\r\n                    Elazığ\r\n                </td>\r\n                <td>\r\n                    1997<br />\r\n                    2001\r\n                </td>\r\n                <td>\r\n                    77,43<br />\r\n                    / 100\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td colspan="4">\r\n                    <hr />\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td>\r\n                    Buca Teknik Lisesi Bilgisayar Bölümü\r\n                </td>\r\n                <td>\r\n                    İzmir\r\n                </td>\r\n                <td>\r\n                    1993<br />\r\n                    1997\r\n                </td>\r\n                <td>\r\n                    4,10<br />\r\n                    / 5,00\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td colspan="4">\r\n                    <hr />\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td>\r\n                    Alsancak Orta Okulu\r\n                </td>\r\n                <td>\r\n                    İzmir\r\n                </td>\r\n                <td>\r\n                    1990<br />\r\n                    1993\r\n                </td>\r\n                <td>\r\n                    -\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td colspan="4">\r\n                    <hr />\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td>\r\n                    Namık Kemal İlk Okulu\r\n                </td>\r\n                <td>\r\n                    İzmir\r\n                </td>\r\n                <td>\r\n                    1985<br />\r\n                    1990\r\n                </td>\r\n                <td>\r\n                    -\r\n                </td>\r\n            </tr>\r\n        </tbody>\r\n    </table>', 10),
	(2, 'Katıldığım Kurs ve Seminerler', ' <h1>\r\n                    Katıldığım Kurs ve Seminerler</h1>\r\n                \r\n    <span><table cellspacing="3" cellpadding="3" width="100%">\r\n    <tbody>\r\n        <tr bgcolor="#f4f4f4">\r\n            <td><b>Adı</b></td>\r\n            <td><b>İli</b></td>\r\n            <td><b>Tarih</b></td>\r\n        </tr>\r\n        <tr>\r\n            <td width="275">Terminal Services, Sanallaşma Kursu (Hyper-V) (MS - Windows 2008)</td>\r\n            <td>Ankara</td>\r\n            <td>11.05.2009<br />\r\n            23.05.2009&#160;</td>\r\n        </tr>\r\n        <tr>\r\n            <td colspan="3"><hr />\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td width="275">Microsoft IV. Aşama Eğitimi (C#, ASP.NET)</td>\r\n            <td>Ankara</td>\r\n            <td>09.06.2008<br />\r\n            20.06.2008&#160;</td>\r\n        </tr>\r\n        <tr>\r\n            <td colspan="3"><hr />\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td width="275">İleri ASP.NET Kursu</td>\r\n            <td>Ankara</td>\r\n            <td>10.12.2007<br />\r\n            18.12.2007</td>\r\n        </tr>\r\n        <tr>\r\n            <td colspan="3"><hr />\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td width="275">Intel Öğretmen Programı</td>\r\n            <td>Ankara</td>\r\n            <td>03.12.2007<br />\r\n            14.12.2007</td>\r\n        </tr>\r\n        <tr>\r\n            <td colspan="3"><hr />\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td width="275">MCPD (Microsoft Sertifikalı Yazılım Uzmanı)</td>\r\n            <td>İstanbul</td>\r\n            <td>15.02.2007<br />\r\n            22.12.2007</td>\r\n        </tr>\r\n        <tr>\r\n            <td colspan="3"><hr />\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td width="275">Cisco Ağ Eğitimi Kursu</td>\r\n            <td>İstanbul</td>\r\n            <td>20.08.2007<br />\r\n            03.09.2007</td>\r\n        </tr>\r\n        <tr>\r\n            <td colspan="3"><hr />\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td width="275">Bilimer Academy Express Kursu<br />\r\n            (V.Basic, SQL, Web Developer)</td>\r\n            <td>İstanbul</td>\r\n            <td>03.02.2007<br />\r\n            29.04.2007</td>\r\n        </tr>\r\n        <tr>\r\n            <td colspan="3"><hr />\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td width="275">Eğitici Bilgisayar Formatör Eğitimi II. Kademe<br />\r\n            (C# ve ASP.NET)</td>\r\n            <td>Ankara</td>\r\n            <td>09.04.2007<br />\r\n            20.04.2007</td>\r\n        </tr>\r\n        <tr>\r\n            <td colspan="3"><hr />\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td width="275">Train the Trainer Kursu</td>\r\n            <td>Ankara</td>\r\n            <td>14.04.2007<br />\r\n            15.04.2007</td>\r\n        </tr>\r\n        <tr>\r\n            <td colspan="3"><hr />\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td width="275">Eğitici Bilgisayar Formatör Öğretmen Eğitimi</td>\r\n            <td>Ankara</td>\r\n            <td>02.04.2007<br />\r\n            06.04.2007</td>\r\n        </tr>\r\n        <tr>\r\n            <td colspan="3"><hr />\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td width="275">Sınıf Rehberlik Uygulamaları</td>\r\n            <td>İstanbul</td>\r\n            <td>12.03.2007<br />\r\n            14.03.2007</td>\r\n        </tr>\r\n        <tr>\r\n            <td colspan="3">\r\n            <p>&#160;</p>\r\n            <hr />\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td width="275">Eğitici Bilgisayar Formatör Eğitimi<br />\r\n            (Flash, Win2000 Server, C#, Dreamweaver)</td>\r\n            <td>Ankara</td>\r\n            <td>08.01.2007<br />\r\n            02.02.2007</td>\r\n        </tr>\r\n        <tr>\r\n            <td colspan="3"><hr />\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td width="275">Avrupa Birliği Socrates Tanıtım Semineri</td>\r\n            <td>İzmir</td>\r\n            <td>06.06.2005<br />\r\n            07.06.2005</td>\r\n        </tr>\r\n        <tr>\r\n            <td colspan="3"><hr />\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td width="275">ABİGEM Girişimci, Yenilikçi, Yaratıcı Düşünceyi&#160;Geliştirme Semineri</td>\r\n            <td>İzmir</td>\r\n            <td>03.01.2005<br />\r\n            06.01.2005</td>\r\n        </tr>\r\n        <tr>\r\n            <td colspan="3"><hr />\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td width="275">Öğretim Tekniği Kursu</td>\r\n            <td>Ankara</td>\r\n            <td>08.09.2003<br />\r\n            19.09.2003</td>\r\n        </tr>\r\n        <tr>\r\n            <td colspan="3"><hr />\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td width="275">MLO Yaygınlaştırma ve Eğitim Teknolojileri&#160;Kullanımı Kursu</td>\r\n            <td>İzmir</td>\r\n            <td>27.05.2002<br />\r\n            07.06.2002</td>\r\n        </tr>\r\n        <tr>\r\n            <td colspan="3"><hr />\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td width="275">English West Yabancı Dil Kursu</td>\r\n            <td>İzmir</td>\r\n            <td>1990<br />\r\n            1994</td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n</span>', 20),
	(3, 'Yabancı Dil Seviyem', '                <h1>\r\n                    Yabancı Dil Seviyem</h1>\r\n                \r\n    <span><p><b>İngilizce</b></p>\r\n<table cellspacing="3" cellpadding="3" width="150" border="0">\r\n    <tbody>\r\n        <tr>\r\n            <td bgcolor="#f4f4f4">Okuma</td>\r\n            <td>İyi</td>\r\n        </tr>\r\n        <tr>\r\n            <td bgcolor="#f4f4f4">Yazma</td>\r\n            <td>Orta</td>\r\n        </tr>\r\n        <tr>\r\n            <td bgcolor="#f4f4f4">Anlama</td>\r\n            <td>İyi</td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n</span>', 30),
	(4, 'İş Deneyimlerim', '<h1>\r\n                    İş Deneyimlerim</h1>\r\n                \r\n    <span>\r\n<table cellspacing="3" cellpadding="3" width="100%">\r\n    <tbody>\r\n        <tr bgcolor="#f4f4f4">\r\n            <td><b>Görev Yeri</b></td>\r\n            <td><b>Unvan</b></td>\r\n            <td>\r\n            <b>İli</b>\r\n            </td>\r\n            <td><b>Tarih</b></td>\r\n        </tr>\r\n        <tr>\r\n            <td width="180">Maçka Akif Tunçel Endüstriyel Teknik Okulları</td>\r\n            <td>Teknik Öğretmen</td>\r\n            <td>İstanbul</td>\r\n            <td>2008<br />\r\n            <span style="font-size: smaller">(Devam)</span></td>\r\n        </tr>\r\n        <tr>\r\n            <td colspan="4"><hr />\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td width="180">Beyoğlu İlçe Milli Eğitim Müdürlüğü</td>\r\n            <td>Eğitici Bilgisayar Formatörü</td>\r\n            <td>İstanbul</td>\r\n            <td>\r\n            2007<br />\r\n            2008\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td colspan="4"><hr />\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td>Şişli İlçe Milli Eğitim Müdürlüğü</td>\r\n            <td>Eğitici Bilgisayar Formatörü</td>\r\n            <td>İstanbul</td>\r\n            <td>\r\n            2007<br />\r\n            2007\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td colspan="4"><hr />\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td>İSOV Yapı Meslek Lisesi</td>\r\n            <td>Teknik Öğretmen</td>\r\n            <td>İstanbul</td>\r\n            <td>2005<br />\r\n            2007</td>\r\n        </tr>\r\n        <tr>\r\n            <td colspan="4"><hr />\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td>Mordoğan Fatma-Emin Karaağaç Çok Programlı Lisesi</td>\r\n            <td>Öğretmen</td>\r\n            <td>İzmir</td>\r\n            <td>2001<br />\r\n            2005</td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n\r\n</span>', 40),
	(5, 'Uzmanlık Alanlarım', ' <h1>\r\n                    Uzmanlık Alanlarım</h1>\r\n                \r\n    <span ><p style="color: #808080; text-align: justify">Programcılık hayatımın ilk zamanlarında çalışmalarımı C++ ile gerçekleştiriyordum. Sonrasında kısa dönem Visual Basic ve Delphi ile ilgilendim. 2000 yılında Internet tabanlı çalışmaya başladım. 2005 yılından bu yana .NET üzerinde çalışıyorum.</p>\r\n<p>&#160;</p>\r\n<p><strong>PC ve WEB Tabanlı Programlama<br />\r\n</strong><span style="color: #808080">C++, 6802 Assembly, Visual Basic, Delphi, Java, ASP, C#, ASP.NET, SQL, AJAX, HTML, CSS.<br />\r\n<br />\r\n</span></p>\r\n<p><strong>Veri Tabanları<br />\r\n</strong><span style="color: #808080">MSSQL, MySQL, Access.</span></p>\r\n<p><br />\r\n<strong>Eğitim Teknolojileri</strong><br />\r\n<span style="color: #808080">Bilgisayar Destekli Eğitim, Uzaktan Eğitim, Akıllı Sınıflar.</span><br />\r\n&#160;</p>\r\n<p><b>Bilgi Teknolojileri</b><br />\r\n<span style="color: #808080">Bilgi sistemlerine giriş:&#160;bilgi sistemleri soruşturması ve analizi, algoritmalar, bilgi teknolojisi mimarisi,&#160;veri iletişimi ve ağ haberleşmesi, Internet, Intranet ve web tabanlı sistemler. Bilgi işleme (Ofis programları, raporlama, vb.)&#160;</span><br />\r\n&#160;</p>\r\n<p><b>Mikroişlemciler</b><br />\r\n<span style="color: #808080">6802, 8086.</span></p></span>', 50),
	(6, 'Hazırladığım Web Sitelerinden Bazıları', '<h1>\r\n                    Hazırladığım Web Sitelerinden Bazıları</h1>\r\n                \r\n    <span><style type="text/css">\r\ndiv.div1\r\n{\r\nclear:both;\r\npadding:10px;\r\nmargin:3px 0px 3px 0px;\r\n}\r\ndiv.div1 img\r\n{\r\nmargin-bottom:5px;\r\n}\r\ndiv.div2\r\n{\r\nclear:both;\r\nmargin:2px 0px 2px 0px;\r\n}</style>\r\n<div class="div1"><a target="_blank" href="http://www.ogretmenlersitesi.com"><img class="no-border" border="0" hspace="3" alt="Öğretmenler Sitesi" align="left" width="120" height="80" src="/images/os.gif" /></a> <b>ÖğretmenlerSitesi.com</b> <br />\r\nÖğretmenlerin, her türlü ihtiyacını gidermeyi hedef edinmiş Türkiye\'nin en popüler eğitim sitelerinden biridir.&#160;Çeşitli tv, dergi ve radyolara konuk oldum. 2008\'in başında <a target="_blank" href="http://www.eramedya.com.tr/">Era-Medya</a>&#160;tarafından satın alınmıştır. <br />\r\n2000-2008 Tasarım &amp; Programlama &amp;&#160;Site yönetimi.<br />\r\n<a target="_blank" href="http://www.ogretmenlersitesi.com">www.ogretmenlersitesi.com</a></div>\r\n<div class="div2"><hr />\r\n</div>\r\n<div class="div1"><a target="_blank" href="http://istanbul.meb.gov.tr"><img border="0" hspace="3" alt="" align="left" width="120" height="107" src="/images/istanbulmebgovtr.png" /></a> <strong>İstanbul İl Milli Eğitim Müdürlüğü</strong><br />\r\nİl Mili Eğitim Müdürlüğümüzün tüm alt birimleri ile ilgili özel sayfalar, haberler, duyurular, etkinlik takvimi, fotoğraf albümü, vb. yer aldığı ve güzel&#160;olduğunu düşündüğüm son teknolojilerin kullanıldığı bir site. :) Tasarım &amp; Programlama &amp;&#160;Site yönetimi.<br />\r\n<a target="_blank" href="http://istanbul.meb.gov.tr">istanbul.meb.gov.tr</a></div>\r\n<div class="div2"><hr />\r\n</div>\r\n<div class="div1"><a target="_blank" href="http://sisli.meb.gov.tr"><img border="0" hspace="3" alt="" align="left" width="120" height="106" src="/images/sislimebgovtr.png" /></a> <strong>Şişli İlçe Milli Eğitim Müdürlüğü</strong><br />\r\nTasarım &amp; Programlama &amp;&#160;Site yönetimi.<br />\r\n<a target="_blank" href="http://sisli.meb.gov.tr">sisli.meb.gov.tr</a></div>\r\n<div class="div2"><hr />\r\n</div>\r\n<div class="div1"><a target="_blank" href="http://www.isovyapimeslek.k12.tr"><img border="0" hspace="3" alt="" align="left" width="120" height="107" src="/images/isovyapimeslekk12tr.png" /></a> <strong>İSOV&#160;Teknik ve Endüstri Meslek Lisesi</strong><br />\r\nTasarım &amp; Programlama &amp;&#160;Site yönetimi.<br />\r\n<a target="_blank" href="http://www.isovyapimeslek.k12.tr">www.isovyapimeslek.k12.tr</a></div>\r\n<div class="div2"><hr />\r\n</div>\r\n<div class="div1"><a target="_blank" href="http://www.tusedad.org"><img border="0" hspace="3" alt="Tüm Süt Et ve Damızlık Sığır Yetiştiricileri Derneği" align="left" width="120" height="119" src="/images/tusedad.gif" /></a> <strong>Tüm Süt, Et ve Damızlık Sığır Yetiştiricileri Derneği</strong><br />\r\nDernek, ülke hayvancılığının geliştiği ve sektörleşmeye çalıştığı günümüzde; işletmelerimizin sağlam alt yapı, temellerle oluşması için kurulmuş bir dayanışma derneğidir. <br />\r\nTasarım &amp; Programlama.<br />\r\n<a target="_blank" href="http://www.tusedad.org">www.tusedad.org</a></div>\r\n<div class="div2"><hr />\r\n</div>\r\n<div class="div1"><a target="_blank" href="http://www.tarimbilgibankasi.com"><img border="0" hspace="3" alt="" align="left" width="120" height="98" src="/images/tarimbilgibankasi.png" /></a> <strong>Tarım Bilgi Bankası</strong><br />\r\nTarımla uzaktan yakından ilgili olan her ziyaretçinin faydalanabileceği, kendinden bir şeyler katabileceği, sorularına yanıt bulabileceği bir dünya olması dileğiyle sektörümüzün hizmetine sunulmuştur. <br />\r\nTasarım &amp; Programlama.<br />\r\n<a target="_blank" href="http://www.tarimbilgibankasi.com">www.tarimbilgibankasi.com</a></div>\r\n<div class="div2"><hr />\r\n</div>\r\n<div class="div1"><a target="_blank" href="http://kutuphane.samsunilahiyat.com"><img border="0" hspace="3" alt="" align="left" width="120" height="102" src="/images/kutuphansesamsunilahiyat.png" /></a> <strong>Samsun Ünv. İlahiyat Fakültesi Kütüphane Otomasyonu</strong><br />\r\nKitap alma/verme takibi, sıraya girme, fişleme, paylaşım, vs. kütüphane ile ilgili tüm işlerin takip edilebileceği bir site. <br />\r\nTasarım &amp; Programlama.<br />\r\n<a target="_blank" href="http://kutuphane.samsunilahiyat.com">kutuphane.samsunilahiyat.com</a></div>\r\n<div class="div2"><hr />\r\n</div>\r\n<div class="div1"><a target="_blank" href="http://www.yazarak.com"><img border="0" hspace="3" alt="" align="left" width="120" height="96" src="/images/yazarak.png" /></a><strong>Yazarak - Sosyal Yazışma Sitesi</strong><br />\r\nÜyelerin her kategoride yazılarını yazabildikleri ve yazılarından para kazanma imkanının sağlandığı sosyal yazışma sitesi.&#160;<br />\r\nProgramlama.<br />\r\n<a target="_blank" href="http://www.yazarak.com">www.yazarak.com</a></div>\r\n<div class="div2"><hr />\r\n</div>\r\n<div class="div1"><a target="_blank" href="http://www.austockexports.com"><img border="0" hspace="3" align="left" width="120" height="108" alt="" src="/images/austockexports.png" /></a><strong>Austock Exports</strong><br />\r\nAvustralya menşeili hayvan ithalatı gerçekleştiren şirketin sitesi<br />\r\nTasarım &amp; Programlama.<br />\r\n<a target="_blank" href="http://www.austockexports.com">www.austockexports.com</a></div>\r\n<div class="div2"><hr />\r\n</div>\r\n<div class="div1"><a target="_blank" href="http://www.toprakrengi.com"><img border="0" hspace="3" align="left" width="120" height="108" alt="" src="/images/toprakrengi.png" /></a><strong>Toprak Rengi</strong><br />\r\nÇeşitli uzmanlık alanlarında şirketlere danışmanlık yapan şirketin sitesi<br />\r\nTasarım &amp; Programlama.<br />\r\n<a target="_blank" href="http://www.toprakrengi.com">www.toprakrengi.com</a></div>\r\n<div class="div2"><hr />\r\n</div>\r\n<div class="div1"><a target="_blank" href="http://www.kufuretmekistiyorum.com"><img border="0" hspace="3" align="left" width="120" height="97" alt="" src="/images/kufuretmekistiyorum.png" /></a><strong>Küfür Etmek İstiyorum</strong><br />\r\nİnsanları rahatlatmak için hazırladığım site. :)<br />\r\nTasarım &amp; Programlama.<br />\r\n<a target="_blank" href="http://www.kufuretmekistiyorum.com">www.kufuretmekistiyorum.com</a></div>\r\n<div class="div2"><hr />\r\n</div>\r\n<div class="div1"><a target="_blank" href="http://www.siralamaalgoritmalari.com"><img border="0" hspace="3" align="left" width="120" height="110" alt="" src="/images/siralamaalgoritmalari.png" /></a><strong>Sıralama Algoritmaları</strong><br />\r\nYükseklisans projem.<br />\r\nTasarım &amp; Programlama.<br />\r\n<a target="_blank" href="http://www.siralamaalgoritmalari.com">www.siralamaalgoritmalari.com</a></div>\r\n<div class="div2"><hr />\r\n</div></span>', 60),
	(7, 'Hazırladığım Programlardan Bazıları', ' <h1>\r\n                    Hazırladığım Programlardan Bazıları</h1>\r\n                \r\n    <span><p style="text-align: justify"><b>»&#160;6802 Mikroişlemci Simulasyonu</b></p>\r\n<p style="text-align: justify">Bir mikroişlemcinin mimarisini ve programlamasını öğrenmek, mikroişlemciler konusuna yeni başlayan biri için hiç de kolay bir iş değildir. İlk zamanlarda özellikle, program yazımında oldukça fazla hata yapılır. Lisans tezi olarak hazırladığım bu projede, yeni başlayan birinin rahatlıkla kod yazabileceği ve onu rahatlıkla test edebileceği bir program yazımı hedeflendi. Geliştirilen program öğrenciye, program yazımından, programı satır satır işletmeye kadar her konuda yardımcı olmaktadır. Böylece öğrenci hata yapma endişesi taşımadan yazdığı assembly programını test edebilmektedir. Ayrıca, öğrenci hiç zorlanmadan anlaşılması en zor konuların (Örn: port düzenlemesi, zaman gecikme döngülerinin kurulması .. vb..) üstesinden rahatlıkla gelebilmektedir. Yine izleyici modülü ile öğrenci, program kodlarını adım adım işleterek mikroişlemcinin çalışma prensibini kavrayabilmektedir. Geliştirilen program, kullanıcının zorlanmadan kullanabileceği işlevsellik ve fonksiyonlarla (Fare kullanımı, pencereleme sistemi, çok yönlü menü sistemi, görsel nesneler, kişisel tanımlamalar, vb.) donatılmıştır. Borland C++ 3.51 kullanılarak DOS ortamında hazırlanmıştır.<br />\r\n&#160;</p>\r\n<ul>\r\n    <li style="text-align: justify"><a href="/file/6802SIM_Devrim_Altinkurt.rar">6802 Simulasyon Programı</a>&#160;(RAR dosyası, 124kb)</li>\r\n    <li style="text-align: justify"><a href="/file/6802_Devrim_Altinkurt_Lisans_Tezi.rar">Lisans Tezim</a>&#160;(RAR dosyası, 628kb)</li>\r\n</ul>\r\n<p style="text-align: justify">&#160;<hr />\r\n</p>\r\n<p style="text-align: justify"><strong>»&#160;</strong>2000 yılına kadar C++ ve Visual Basic dillerini kullanarak pekçok program yazdım. İşte bunlardan birkaçı:</p>\r\n<ul>\r\n    <li style="text-align: justify"><b>WinKuyum</b>: İzmir Kuyumcular Çarşısındaki bir kuyumcu için geliştirilmiştir. 2002.</li>\r\n    <li style="text-align: justify"><b>Telefon Rehberi</b>: Bir bilgisayar firması için geliştirilmiştir. 2001.</li>\r\n    <li style="text-align: justify"><b>Müşteri Takip</b>: Rize\'deki bir otel için geliştirilmiştir. 2000</li>\r\n    <li style="text-align: justify"><b>Öğrenci Takip</b>: Fırat Üniversitesi Fen Bilimleri Enstitüsü\'nün kullanımına uygun şekilde, yüksek lisans ve doktora öğrencilerinin takibi için hazırlanmıştır. 2000.</li>\r\n    <li style="text-align: justify"><b>Hesap Takip</b>: Elazığ\'daki bir Fıratpen bayii için hazırlanmıştır. 2000.</li>\r\n    <li style="text-align: justify"><b>Üretim Takip</b>: Elazığ\'da&#160;bir plastik fabrikası için geliştirilmiştir. 2000</li>\r\n    <li style="text-align: justify"><b>Stok Takip</b>: Elazığ\'da kumaş satan bir işadamı için geliştirilmiştir. 2000</li>\r\n</ul>\r\n<p style="text-align: justify">&#160;<hr />\r\n</p>\r\n<p style="text-align: justify"><strong>»&#160;</strong>Bunların dışında bir de askerde iken hazırladığım projeler var. Askerliğimi, Jandarma Okullar Komutanlığı\'nda (Beytepe/Ankara) "Ordu Bilgi İşlem Subayı" olarak yaptım.<br />\r\n&#160;</p>\r\n<p style="text-align: justify">Askerliğim süresince hazırladığım programlardan önemli olanları şunlardır:</p>\r\n<ul>\r\n    <li style="text-align: justify"><b>Görevlendirme Takip</b>,</li>\r\n    <li style="text-align: justify"><b>Evrak Takip</b>,</li>\r\n    <li style="text-align: justify"><b>Müzekkere Takip</b>,</li>\r\n    <li style="text-align: justify"><b>Emniyet ve Asayiş</b>,</li>\r\n    <li style="text-align: justify"><b>Personel Takip</b>,</li>\r\n    <li style="text-align: justify"><b>Personel Giriş Kartı Basımı</b>.</li>\r\n</ul>\r\n<p style="text-align: justify">Hazırladığım bu programlardan ötürü, Jandarma Okullar Komutanlığı tarafından "TAKDİR" ile ödüllendirildim.</p>\r\n<hr />\r\n<p style="text-align: justify"><span style="color: #800000"><u><i><b>Önemli Not:</b></i></u> Yeri gelmişken, bu projelerin çoğunun hazırlanması aşamasında birlikte çalıştığım, <b>E.Albay Orhan ÇAĞLARGİL</b>\'e de saygılarımı ve selamlarımı arz etmek isterim.</span></p></span>\r\n', 70);
/*!40000 ALTER TABLE `hakkimda` ENABLE KEYS */;


# Dumping structure for table daltinkurt.iletisim
CREATE TABLE IF NOT EXISTS `iletisim` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `Ad_Soyad` varchar(50) NOT NULL,
  `E-posta` varchar(50) NOT NULL,
  `Telefon` varchar(11) NOT NULL,
  `Yorum` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin5;

# Dumping data for table daltinkurt.iletisim: ~5 rows (approximately)
/*!40000 ALTER TABLE `iletisim` DISABLE KEYS */;
INSERT INTO `iletisim` (`ID`, `Ad_Soyad`, `E-posta`, `Telefon`, `Yorum`) VALUES
	(1, 'sadsa', 'asdadsad@sda.com', '5555555555', 'sadad'),
	(2, 'sadasd', 'asdasd@gamil.com', '5636556666', 'asdasdas'),
	(3, 'Mert Kondakcioglu', 'kazuya_mishima-55@windowslive.com', '5379793953', 'Merhaba,nabiyon?'),
	(4, 'sadadsadasd', 'asdadasdasd@gaasd.com', '4634564564', 'asdasdsad'),
	(6, 'Ata Önder', 'ataaonder@gmail.com', '5313313131', 'jamiryooooooooooooooooooooooooooo');
/*!40000 ALTER TABLE `iletisim` ENABLE KEYS */;


# Dumping structure for table daltinkurt.kategorisorular
CREATE TABLE IF NOT EXISTS `kategorisorular` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `Adi` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin5;

# Dumping data for table daltinkurt.kategorisorular: ~5 rows (approximately)
/*!40000 ALTER TABLE `kategorisorular` DISABLE KEYS */;
INSERT INTO `kategorisorular` (`ID`, `Adi`) VALUES
	(1, 'ASP.NET'),
	(2, 'C#'),
	(3, 'ADO.NET'),
	(4, 'Algoritma'),
	(5, 'Diğer');
/*!40000 ALTER TABLE `kategorisorular` ENABLE KEYS */;


# Dumping structure for table daltinkurt.kategoriyazilar
CREATE TABLE IF NOT EXISTS `kategoriyazilar` (
  `Id` int(10) NOT NULL AUTO_INCREMENT,
  `Adi` varchar(50) NOT NULL,
  `gozukurluk` varchar(50) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin5;

# Dumping data for table daltinkurt.kategoriyazilar: ~13 rows (approximately)
/*!40000 ALTER TABLE `kategoriyazilar` DISABLE KEYS */;
INSERT INTO `kategoriyazilar` (`Id`, `Adi`, `gozukurluk`) VALUES
	(1, 'ASP.NET', '1'),
	(2, 'Internet', '1'),
	(3, 'C#', '1'),
	(4, 'ADO.NET', '1'),
	(5, 'Tasarım', '1'),
	(6, 'SEO', '1'),
	(7, 'Algoritmalar', '1'),
	(8, 'Kitap / E-Kitap', '1'),
	(9, 'Her Telden', '1'),
	(10, 'Program Tanıtımları', '0'),
	(11, 'Eğlence', '0'),
	(12, 'Öğrencilerime Özel', '0'),
	(13, 'Etkinlikler', '0');
/*!40000 ALTER TABLE `kategoriyazilar` ENABLE KEYS */;


# Dumping structure for table daltinkurt.menuler
CREATE TABLE IF NOT EXISTS `menuler` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `menuAd` varchar(50) NOT NULL,
  `oncelik` int(5) NOT NULL,
  `gozukurluk` char(1) NOT NULL DEFAULT '1',
  `url` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin5;

# Dumping data for table daltinkurt.menuler: ~5 rows (approximately)
/*!40000 ALTER TABLE `menuler` DISABLE KEYS */;
INSERT INTO `menuler` (`ID`, `menuAd`, `oncelik`, `gozukurluk`, `url`) VALUES
	(1, 'Anasayfa', 100, '1', 'Anasayfa.aspx'),
	(2, 'Hakkımda', 200, '1', 'Hakkimda.aspx'),
	(3, 'Yazılarım', 300, '1', 'Yazilarim.aspx'),
	(4, 'Soru / Cevap', 400, '1', 'Soru-Cevap.aspx'),
	(5, 'İletişim', 500, '1', 'Iletisim.aspx');
/*!40000 ALTER TABLE `menuler` ENABLE KEYS */;


# Dumping structure for table daltinkurt.rightbar_menuler
CREATE TABLE IF NOT EXISTS `rightbar_menuler` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `menuAd` varchar(50) NOT NULL,
  `oncelik` int(5) NOT NULL,
  `gozukurluk` char(1) NOT NULL DEFAULT '1',
  `url` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin5 ROW_FORMAT=COMPACT;

# Dumping data for table daltinkurt.rightbar_menuler: ~10 rows (approximately)
/*!40000 ALTER TABLE `rightbar_menuler` DISABLE KEYS */;
INSERT INTO `rightbar_menuler` (`ID`, `menuAd`, `oncelik`, `gozukurluk`, `url`) VALUES
	(1, 'Yazilarim', 10, '1', 'Yazilarim.aspx'),
	(2, 'Program Tanıtımları', 20, '1', 'ProgramTanitimlari.aspx'),
	(3, 'Eğlence', 30, '1', 'Eglence.aspx'),
	(4, 'Öğrencilerime Özel', 40, '1', 'OgrencilerimeOzel.aspx'),
	(5, 'Etkinlikler', 50, '1', 'Etkinlikler.aspx'),
	(6, 'Çoklu Ortam Arşivi', 60, '1', 'javascript:void(0);'),
	(7, 'Etkileşimli Takvim', 70, '1', 'javascript:void(0);'),
	(8, 'Site Araçları', 80, '1', 'SiteAraclari.aspx'),
	(9, 'Dost Siteler', 90, '1', 'DostSiteler.aspx'),
	(10, 'Tavsiye Siteler', 100, '1', 'TavsiyeSiteler.aspx');
/*!40000 ALTER TABLE `rightbar_menuler` ENABLE KEYS */;


# Dumping structure for table daltinkurt.sidemenulink
CREATE TABLE IF NOT EXISTS `sidemenulink` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `linkAd` varchar(20) NOT NULL,
  `oncelik` int(10) NOT NULL,
  `url` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin5;

# Dumping data for table daltinkurt.sidemenulink: ~10 rows (approximately)
/*!40000 ALTER TABLE `sidemenulink` DISABLE KEYS */;
INSERT INTO `sidemenulink` (`ID`, `linkAd`, `oncelik`, `url`) VALUES
	(1, 'Tarımsal Pazarlama', 10, 'http://www.tarimsalpazarlama.com'),
	(2, 'Linkx.me', 20, 'http://linkx.me'),
	(3, 'MyPageX.com', 30, 'http://www.mypagex.com'),
	(4, 'TakvimYapragi.com', 40, 'http://www.takvimyapragi.com'),
	(5, 'Algoritmalar.com', 50, 'http://www.algoritmalar.com'),
	(6, 'Sıralama Algoritmala', 60, 'http://www.siralamaalgoritmalari.com'),
	(7, 'Tarım Bilgi Bankası', 70, 'http://www.tarimbilgibankasi.com'),
	(8, 'Şişli TEML', 80, 'http://www.sisli.k12.tr'),
	(9, 'İSOV Tek. ve E.M.L.', 90, 'http://www.isovyapimeslek.k12.tr'),
	(10, 'TÜSEDAD', 100, 'http://www.tusedad.org');
/*!40000 ALTER TABLE `sidemenulink` ENABLE KEYS */;


# Dumping structure for table daltinkurt.siteekle
CREATE TABLE IF NOT EXISTS `siteekle` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `adi` varchar(50) NOT NULL,
  `url` varchar(50) NOT NULL,
  `bolum` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin5;

# Dumping data for table daltinkurt.siteekle: ~4 rows (approximately)
/*!40000 ALTER TABLE `siteekle` DISABLE KEYS */;
INSERT INTO `siteekle` (`ID`, `adi`, `url`, `bolum`) VALUES
	(4, 'asdad', 'www.sad.com', 'Dost Siteler'),
	(5, 'asdad', 'www.asdas.com', 'Dost Siteler'),
	(6, 'mehmer', 'www.dsad.com', 'Tavsiye Site'),
	(7, 'sfdsf', 'sdfds.com', 'Tavsiye Site');
/*!40000 ALTER TABLE `siteekle` ENABLE KEYS */;


# Dumping structure for table daltinkurt.tavsiyesiteler
CREATE TABLE IF NOT EXISTS `tavsiyesiteler` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `adi` varchar(50) NOT NULL,
  `url` varchar(50) NOT NULL,
  `oncelik` int(10) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin5;

# Dumping data for table daltinkurt.tavsiyesiteler: ~9 rows (approximately)
/*!40000 ALTER TABLE `tavsiyesiteler` DISABLE KEYS */;
INSERT INTO `tavsiyesiteler` (`ID`, `adi`, `url`, `oncelik`) VALUES
	(1, 'CSharp Nedir?', 'http://www.csharpnedir.com/', 10),
	(2, 'eburhan', 'http://www.eburhan.com/', 20),
	(3, 'ASP.NET Ajax', 'http://www.asp.net/ajax', 30),
	(4, 'SEO Teknikleri', 'http://www.iconarchive.com/', 40),
	(5, 'Icon Archieve', 'http://www.iconarchive.com/', 50),
	(6, 'Dynamic Drive', 'http://www.dynamicdrive.com/', 60),
	(7, 'Akış Diagramı Çizim Programı', 'http://www.edrawsoft.com/download/EDrawMindMap.exe', 70),
	(8, 'SharePointciyiz.biz', 'http://sharepointciyiz.biz/', 80),
	(9, 'Yazılım Günlüğü', 'http://www.yazilimgunlugu.com/MainPage/', 90);
/*!40000 ALTER TABLE `tavsiyesiteler` ENABLE KEYS */;


# Dumping structure for table daltinkurt.yazilarim
CREATE TABLE IF NOT EXISTS `yazilarim` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `KategoriId` int(10) NOT NULL DEFAULT '1',
  `Baslik` varchar(150) NOT NULL,
  `Ozet` varchar(150) DEFAULT NULL,
  `Etiketler` varchar(150) DEFAULT NULL,
  `Icerik` mediumtext NOT NULL,
  `kayitTarihi` varchar(50) NOT NULL DEFAULT '01-05-2013',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin5;

# Dumping data for table daltinkurt.yazilarim: ~10 rows (approximately)
/*!40000 ALTER TABLE `yazilarim` DISABLE KEYS */;
INSERT INTO `yazilarim` (`ID`, `KategoriId`, `Baslik`, `Ozet`, `Etiketler`, `Icerik`, `kayitTarihi`) VALUES
	(1, 1, 'Amazon SES Outlook 2013 Kurulumu', 'Ozet amazon', 'amazon,1,2,3', 'Aklınıza şöyle bir soru gelebilir:\r\n"Gelen ve giden sunucu bilgilerim neden farklı?"\r\nCevap:\r\nAmazon SES ile sadece mail gönderebilirsiniz.\r\nKendi email hesabınız ile mailleri alabilir gönderebilirsiniz. Ama Amazon SES ile mail gönderdiğinizde eğer sunucu yapılandırmanız doğruysa gönderdiğiniz mailler spam e düşmeden direkt gelen kutusuna düşer.\r\nÖrnek bir mail gönderiminin ardından "İleti kaynağını göster" dediğinizde ne demek istediğimi anlayacaksınız:', '23-05-2003'),
	(2, 4, 'URL Rewriter ile akıllı urller oluşturma (Tam çözüm)', 'Ozet', 'url,rewrite', 'Önce gelin birlikte bu sayfanın adresini inceleyelim:\r\nhttp://www.daltinkurt.com/Icerik/234/URL-Rewriter-ile-akilli-urller-olusturma-Tam-cozum.aspx\r\nEvet, itiraf edeyim. FTP de /Icerik adında bir klasör yok. :) Onun içinde 234 adında bir klasör onun içinde de URL-Rewriter-ile-akilli-urller-olusturma-Tam-cozum.aspx adında bir dosya da yok.\r\nYapılan iş, adresteki 234 bilgisini alıp bir /CMS-Icerik.aspx?Id=234 adresine yönlendirmek. Site ziyaretçileri, Google ve diğer arama motorları bunu bilmiyor tabii :)\r\nAkıllı url ler dediğimiz bu yöntemi kullanmanın birkaç avantajı var.\r\nhttp://www.hurriyet.com.tr/spor/futbol/22746948.asp adresini bir arkadaşınıza maille gönderdiğinizde, arkadaşınız muhtemelen ilk bakışta bu adreste ne olduğunu anlayamayacaktır.\r\nSEO açısından düşündüğümüzde de anahtar kelimelerin url de geçmesi çok önemli bir unsurdur.\r\nKISS (Keep it simple stupid) ilkesine uygun url ler, gereksiz site trafiğinin önüne geçmiş olur ve SEO açısından önemli hususlardan biri olan siteden hemen çıkma süresini azaltır. xxxxxx.com/ayakkabi/spor.aspx adresine kimin ne için gireceği bellidir. Ama aynı url xxxxxx.com/urunler.aspx?Id=90 şeklinde olsaydı ilgili ilgisiz herkes girecek ve sayfayla ilgisi olmayan ziyaretçiler belki de sayfadan hemen çıkacaktır. Bu da kesinlikle istenmeyen bir durumdur.', '09-01-2009'),
	(3, 1, 'Toplu mail gönderirken dikkat edilmesi gereken hususlar', 'mail,asd,vbcv', 'abc,csss,aaa', 'Bu yazımda da toplu mail gönderirken dikkat edilmesi gereken hususları yazayım istedim:\r\nE-Pazarlamacıların en büyük dertlerinden biri de toplu gönderdikleri e-postaların, kullanıcıların SPAM klasörüne düşmesidir. İzinli gönderilen birçok e-posta, hedefine ulaşmadan e-mail kutularımızın SPAM klasöründe silinmeyi bekler. Bazen de ?gelen kutusu?na düşen e-postalar kullanıcılar tarafından manuel olarak SPAM klasörüne gönderir.\r\nBarracuda Networks?ün 2007 yılında yaptığı bir araştırmaya göre yıl içerisinde gönderilen e-postaların yaklaşık %95?i SPAM olarak algılanmış. Yani gönderdiğiniz mailler tehlike altında. Peki gönderimlerimizin SPAM olarak algılanmaması için neler yapmalıyız?\r\nEğer pazarlama bütçeniz izin veriyorsa, 3. parti bir web tabanlı toplu e-posta gönderim programlarını denemenizi tavsiye ederim. Icontact.com, constantcontact.com, emailbrain.com, topluemailgonderimi.com gibi web tabanlı yazılımlar sayesinde, izinli listenize SPAM?e düşmeden kolayca mail gönderebilirsiniz. Örneğin Barack Obama bile seçim kampanyası için icontact.com?u kullanmıştı.\r\nBu tip firmaların hotmail, yahoo, gmail gibi firmalarla özel anlaşmaları bulunuyor. Dolayısıyla kısa bir süre içerisinde binlerce mail hızla gönderilebiliyor. Ayrıca bir donanım yatırımı yapmanız gerek kalmıyor. İşletme mailiyetlerini düşündüğünüz takdirde özellikle küçük ve orta ölçekli filmler için gayet uygun.\r\nAncak yine de kendi imkanlarınızla mail göndermek isriyorsanız, belli anti-SPAM kurallarına uymanız gerekir. ABD?da ilk defa 2004?de çıkartılan spam karşıtı yasa US CAN-SPAM Act?teki kurallara uygun olrak gönderim yaptığınız takdirde, şirket içi e-mail programlarınızı kullanarak SPAM?e düşmeden toplu e-posta gönderebilirsiniz. Hotmail, Gmail ve U.S. CAN-SPAM ACT?den derlediğim kurallara uyarak gönderilerinizin SPAM olarak algılanmamasını sağlayabilirsiniz.\r\n?TO? yada ?kime? kısmında sadece bir e-posta adresi bulunmalıdır. ', '12-12-2011'),
	(5, 1, 'Gol olur', 'rıdvan dilmen dediiki', 'rıdvan,dilmnen', 'ngyuasgdvgasdg asgdayg', '16-03-2013'),
	(14, 4, 'Arama motorlarina site ekleme', 'Google, Yahoo, MSN, vd. arama motorlarina sitenizi eklemek için gereken linkleri bu yazida bulabilirsiniz. ', 'Google, Yahoo, MSN, arama motoru, arama motoru optimizasyonu, kayit, SEO, AMO.', 'Bildiginiz üzere, gelistirdiginiz sitenin arama motorlarinda üst siralarda çikmasi çok önemlidir. Bu konuya açiklik getirmek için kisa bir zaman sonra SEO baslikli bir yazi hazirlayacagim ama öncesinde sitenizi arama motorlarina eklemek gerekir.', '30-05-2013'),
	(18, 5, 'programsdas', 'programasda', 'programdas', '<p>asdprogram</p>\r\n', '25-06-2013'),
	(29, 3, 'Mamie', 'irak', 'kürsat', '<blockquote>\r\n<h1><em><strong>asdasdasdasdasdas</strong></em></h1>\r\n</blockquote>\r\n\r\n<table border="1" cellpadding="1" cellspacing="1" style="width:500px">\r\n	<tbody>\r\n		<tr>\r\n			<td>adasdas</td>\r\n			<td>asd</td>\r\n		</tr>\r\n		<tr>\r\n			<td>asdas</td>\r\n			<td>asd</td>\r\n		</tr>\r\n		<tr>\r\n			<td>adas\r\n			<hr />\r\n			<hr />\r\n			<hr />\r\n			<blockquote>\r\n			<p>&nbsp;</p>\r\n			</blockquote>\r\n			</td>\r\n			<td>asdas</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n', '23-07-2013');
/*!40000 ALTER TABLE `yazilarim` ENABLE KEYS */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
