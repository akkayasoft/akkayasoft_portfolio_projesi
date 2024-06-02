## Ders 1 : Proje Oluşturma ve Güncelleme

   1.	Proje Oluşturma
   
 ![image](https://github.com/akkayasoft/akkayasoft_portfolio_projesi/assets/133866777/013e7081-4296-412d-8299-c0de77bbc8c1)

    2.  Projenin Güncel Tutulması

  ![image](https://github.com/akkayasoft/akkayasoft_portfolio_projesi/assets/133866777/9ff03438-cc9e-4f66-a828-ba2fa498e6ca)

 
    3.	Kotlin Kısmının Güncellenmesi
    

  ![image](https://github.com/akkayasoft/akkayasoft_portfolio_projesi/assets/133866777/b4efd4db-0acf-46a8-801b-51574467e9cb)

  
    

*************************************************************************************************************************************
 
## Ders 2 : Uygulama İkon ve Resimlerinin Ayarlanması

1.	Flutter App Icon Oluşturma
   

![image](https://github.com/akkayasoft/akkayasoft_portfolio_projesi/assets/133866777/feafe85a-7737-4b06-96c0-ace8be38db7e)

 
2.	Oluşan assets klasörü içine resmimizi atalım.
   

![image](https://github.com/akkayasoft/akkayasoft_portfolio_projesi/assets/133866777/25733347-44b5-4d84-be7e-dc5f6fb08830)


3.	https://www.appicon.co/ adresinde attığımız resim için icon oluşturalım.


![image](https://github.com/akkayasoft/akkayasoft_portfolio_projesi/assets/133866777/b538e85b-f47c-4c16-8c1c-347908e18a9e)

4.	Oluşan rar lı dosyada aşağıdaki gibi dosyalar olacaktır.


![image](https://github.com/akkayasoft/akkayasoft_portfolio_projesi/assets/133866777/4706f137-177a-4a8b-b590-7b3a32e0912f)

5.	Android klasöründeki dosyaları projedeki mipmap klasörleri ile değiştirelim.


![image](https://github.com/akkayasoft/akkayasoft_portfolio_projesi/assets/133866777/22ebdc06-fff1-4342-b502-67f8ea5b3df4)


6.	Bir diğer yöntem ise Image Asset üzerinden ic_launcher dosyalarını düzenlemektir.


7.	Web Icon Oluşturma
   

7.1. https://favicon.io/ adresine gidip assets içindeki uygulama resmimizi import edelim. 
Download dedikten sonra rar içinde favicon.co ve favicon-16x16 dosyalarını projede web klasörü içine yollayalım. 
Web içinde bulunan favicon.png dosyasını da silelim ve favicon-16x16 dosyasının adını favicon.png olarak değiştirelim.


7.2.	Dilersek crop image sayfasına giderek assets içinde bulunan resmimizi oval yapabiliriz.


****************************************************************************************************************************

## Ders 3 : Pubsepc.yaml ve Klasör Yapısı ve Sayfaların Oluşturulması

1.	Pubspec.yaml a google_fonts u ekleyelim.


![image](https://github.com/akkayasoft/akkayasoft_portfolio_projesi/assets/133866777/2199de33-c852-4ec3-be3a-2e12393482c6)

2.	Assets i de ekleyelim.

![image](https://github.com/akkayasoft/akkayasoft_portfolio_projesi/assets/133866777/771021cb-3353-465d-b0f0-3628a7f4c04a)

3.	Lib altında aşağıdaki gibi klasör ve dosyaları projede oluşturalım.

![image](https://github.com/akkayasoft/akkayasoft_portfolio_projesi/assets/133866777/b0085d29-8cf9-4af9-88f7-39a264f89511)

4.	portfolio_mobile.dart ı kodlayalım.


![image](https://github.com/akkayasoft/akkayasoft_portfolio_projesi/assets/133866777/1391eac6-f174-4d93-8df9-c570f3bb68f3)



5.	portfolio_web.dart ı kodlayalım.

![image](https://github.com/akkayasoft/akkayasoft_portfolio_projesi/assets/133866777/e51792d3-ae0c-4380-ab2a-a345a7751165)


6.	main.dart ı aşağıdaki gibi yeniden kodlayalım.
Kodlama yapısına göre eğer kullandığımız ekran genişliği 800 pikselden büyük ise web görünümü değilse mobile görünümü açılacak.



![image](https://github.com/akkayasoft/akkayasoft_portfolio_projesi/assets/133866777/d7dd0b21-e2b6-4bc7-8395-a49e3e4f9336)


7.	Flutter analysis_options.yaml da bazı kuralları düzenleyelim.


![image](https://github.com/akkayasoft/akkayasoft_portfolio_projesi/assets/133866777/cf88d3d0-ec72-4c4f-8bbc-5c9969a301f1)


**************************************************************************************************************************

## Ders 4 : Web Sayfa Görünümü için Düzenlemeler

1.	portfolio_web.dart kodlaması


![image](https://github.com/akkayasoft/akkayasoft_portfolio_projesi/assets/133866777/d05d907b-7ab3-42c3-b41d-242dd5b3a802)

2.	title kısmında appbar içindeki sayfaları Text ile tek tek görmektense bilesenler.dart içinde bulunla ilgili sekmelerin özelliklerini içeren Sekmeler yapısını oluşturalım.


![image](https://github.com/akkayasoft/akkayasoft_portfolio_projesi/assets/133866777/4cf70637-5383-4487-867d-a5bedb776130)



3.	portfolio_web.dart da Sekmeler i görüntületelim.


![image](https://github.com/akkayasoft/akkayasoft_portfolio_projesi/assets/133866777/42042515-584c-4b41-8636-4b54d622df89)


4.Chrome da projeyi çalıştırınca eğer aşağıdaki gibi bir ekran geliyorsa sorunsuz çalışıyordur.


![image](https://github.com/akkayasoft/akkayasoft_portfolio_projesi/assets/133866777/f49484db-1e28-4598-b527-449bae4047b5)

******************************************************************************************************************************





