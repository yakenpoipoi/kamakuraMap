//
//  MapViewController.swift
//  kamakuraMap
//
//  Created by Yoshiki Kishimoto on 2018/04/28.
//  Copyright © 2018年 Yoshiki Kishimoto. All rights reserved.
//

import UIKit
import MapKit

class TestMKPointAnnotation: MKPointAnnotation {
    //ピンの色
    var pinColor: UIColor!
    
    //ピンの画像
    var pinImage: String!
}



class MapViewController: UIViewController, MKMapViewDelegate {
    
//    var imageView:UIImageView!
//    var scale:CGFloat = 1.0
//    var width:CGFloat = 0
//    var height:CGFloat = 0
//    var screenWidth:CGFloat = 0
//    var screenHeight:CGFloat = 0

    
    @IBOutlet weak var mapView: MKMapView! //to name of map
    //annotationView を返すメソッド
    var num: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        if num == 1 {     //kamakura
            //緯度、経度を指定
            let coordinate = CLLocationCoordinate2DMake(35.31898, 139.5505)//緯度経度を指定
            let span = MKCoordinateSpanMake(0.01,0.01)//範囲を指定
            let region = MKCoordinateRegionMake(coordinate, span)
            mapView.setRegion(region, animated:true)
            
            //ピンの位置付け
            let annotation5 = TestMKPointAnnotation()
            annotation5.coordinate = CLLocationCoordinate2DMake(35.3236908,139.5532714)
            annotation5.title = "もみじ茶屋"
            annotation5.subtitle = "おひつご飯、うどん、甘味などすべて美味しい一押しのお店。"
            self.mapView.addAnnotation(annotation5)
            
            //ピンのタイトルとバルーン
            let annotation6 = TestMKPointAnnotation()
            annotation6.coordinate = CLLocationCoordinate2DMake(35.3236410, 139.5533638)
            annotation6.title = "ルームラックスカフェ"
            annotation6.subtitle = "ゆっくりくつろげるソファーやテラス席が人気のリラックスカフェ。"
            self.mapView.addAnnotation(annotation6)
            
            let annotation20 = TestMKPointAnnotation()
            annotation20.coordinate = CLLocationCoordinate2DMake(35.3202631, 139.5510046)
            annotation20.title = "STEREO Kamakura vins&cafe"
            annotation20.subtitle = "小町通りの喧騒を忘れた『隠れ家』レストラン。"
            self.mapView.addAnnotation(annotation20)
            
            let annotation21 = TestMKPointAnnotation()
            annotation21.coordinate = CLLocationCoordinate2DMake(35.3149565, 139.5486921)
            annotation21.title = "かまくら　和久"
            annotation21.subtitle = "最高品質の食材を、一番美味しい調理法で提供。"
            self.mapView.addAnnotation(annotation21)
            
            let annotation22 = TestMKPointAnnotation()
            annotation22.coordinate = CLLocationCoordinate2DMake(35.3179250, 139.5494620)
            annotation22.title = "レストラン　レネ"
            annotation22.subtitle = "フランス人シェフによる本場のフレンチが楽しめるお店。"
            self.mapView.addAnnotation(annotation22)
            
            let annotation24 = TestMKPointAnnotation()
            annotation24.coordinate = CLLocationCoordinate2DMake(35.3204623, 139.5522944)
            annotation24.title = "しらたまや"
            annotation24.subtitle = "鎌倉の裏古町にある、しらたま専門店が誇るふわふわの絶品スイーツ。"
            self.mapView.addAnnotation(annotation24)
            
            let annotation25 = TestMKPointAnnotation()
            annotation25.coordinate = CLLocationCoordinate2DMake(35.3198887, 139.5522464)
            annotation25.title = "山里　段葛店"
            annotation25.subtitle = "厳選素材から丁寧に手作りの甘味と、ホッとする味のお食事を食べられるお店。"
            self.mapView.addAnnotation(annotation25)
            
            let annotation26 = TestMKPointAnnotation()
            annotation26.coordinate = CLLocationCoordinate2DMake(35.3220514, 139.5529083)
            annotation26.title = "雪乃下果実"
            annotation26.subtitle = "鎌倉金箔ソフトクリームと生酵素ジュースのお店。"
            self.mapView.addAnnotation(annotation26)
            
            let annotation27 = TestMKPointAnnotation()
            annotation27.coordinate = CLLocationCoordinate2DMake(35.3215833, 139.5513154)
            annotation27.title = "鎌倉和食　楠の木"
            annotation27.subtitle = "高級感のある落ち着いた和空間で風流にいただく、鎌倉和食。"
            self.mapView.addAnnotation(annotation27)
            
            let annotation13 = TestMKPointAnnotation()
            annotation13.coordinate = CLLocationCoordinate2DMake(35.3191902, 139.5505212)
            annotation13.title = "鎌倉駅"
            annotation13.pinImage = "train. 1.png"
            self.mapView.addAnnotation(annotation13)
            
            
            
            
            
        } else if num == 2 {      //hase
            //緯度、経度を指定
            let coordinate = CLLocationCoordinate2DMake(35.3112613, 139.5357395)
            let span = MKCoordinateSpanMake(0.02,0.02)
            let region = MKCoordinateRegionMake(coordinate, span)
            mapView.setRegion(region, animated:true)
            
            // シンポジおん
            let annotation10 = TestMKPointAnnotation()
            annotation10.coordinate = CLLocationCoordinate2DMake(35.3108709, 139.5360875)
            annotation10.title = "シンポジオン"
            annotation10.subtitle = "和モダンな区間で心ゆくまでイタリアンを楽しめるお店。"
            self.mapView.addAnnotation(annotation10)
            
            //ピンのタイトルとバルーン　松原庵
            let annotation2 = TestMKPointAnnotation()
            annotation2.coordinate = CLLocationCoordinate2DMake(35.3114234, 139.5409676)
            annotation2.title = "鎌倉　松原庵"
            annotation2.subtitle = "外観からとっても昔ながらの雰囲気が漂うお店。"
            self.mapView.addAnnotation(annotation2)
            
            let annotation8 = TestMKPointAnnotation()
            annotation8.coordinate = CLLocationCoordinate2DMake(35.3132145, 139.5351166)
            annotation8.title = "鎌倉土鍋kaedena."
            annotation8.subtitle = "落ち着いたモダンな店内で美味しい土鍋と本格和食を提供。"
            self.mapView.addAnnotation(annotation8)
            
            let annotation11 = TestMKPointAnnotation()
            annotation11.coordinate = CLLocationCoordinate2DMake(35.3099730, 139.5339568)
            annotation11.title = "カフェ　カプア"
            annotation11.subtitle = "御霊神社参道入口に位置する小さなカフェ。"
            self.mapView.addAnnotation(annotation11)
            
            let annotation12 = TestMKPointAnnotation()
            annotation12.coordinate = CLLocationCoordinate2DMake(35.3095322, 139.5337647)
            annotation12.title = "caƒe recette 鎌倉"
            annotation12.subtitle = "日本で初めてのパンの専門スイーツ専門カフェ。"
            self.mapView.addAnnotation(annotation12)
            
//            screenWidth = self.view.bounds.width
//            screenHeight = self.view.bounds.height
//
//            let image = UIImage(named: "train.png")!
//
//            width = image.size.width/3
//            height = image.size.height
//
//            imageView = UIImageView(image:image)
//
//            //// Use "if"!!!!
//
//            scale = screenWidth / width
//            let rect:CGRect = CGRect(x:35.3112320, y:139.5358830, width:width*scale, height:height*scale)
//
//            // ImageView frame をCGRectで作った矩形に合わせる
//            imageView.frame = rect;
//            // view に ImageView を追加する
//            self.view.addSubview(imageView)
            
            
            let annotation13 = TestMKPointAnnotation()
            annotation13.coordinate = CLLocationCoordinate2DMake(35.3112320, 139.5358830)
            annotation13.title = "長谷駅"
            annotation13.pinImage = "train. 1.png"
            self.mapView.addAnnotation(annotation13)
            
            
            
        }else {      //eno
            //緯度、経度を指定
            let coordinate = CLLocationCoordinate2DMake(35.3022539, 139.4814201)
            //範囲指定
            let span = MKCoordinateSpanMake(0.02,0.02)
            //
            let region = MKCoordinateRegionMake(coordinate, span)
            mapView.setRegion(region, animated:true)
            //ピンの位置付け
            let annotation3 = TestMKPointAnnotation()
            annotation3.coordinate = CLLocationCoordinate2DMake(35.3023047,139.4810660)
            annotation3.title = "湘南バーガー"
            annotation3.subtitle = "しらすたっぷりの江ノ島名物が食べられるお店。"
            self.mapView.addAnnotation(annotation3)
            //ピンのタイトルとバルーン
            let annotation4 = TestMKPointAnnotation()
            annotation4.coordinate = CLLocationCoordinate2DMake(35.3021157, 139.4814844)
            annotation4.title = "貝作"
            annotation4.subtitle = "目の前で磯焼きを焼いてくれるお店。"
            self.mapView.addAnnotation(annotation4)
            
            let annotation28 = TestMKPointAnnotation()
            annotation28.coordinate = CLLocationCoordinate2DMake(35.3017414, 139.4807485)
            annotation28.title = "井上総本舗"
            annotation28.subtitle = "新感覚スイーツ、アイスモナカが食べられるお店。"
            self.mapView.addAnnotation(annotation28)
            
            let annotation29 = TestMKPointAnnotation()
            annotation29.coordinate = CLLocationCoordinate2DMake(35.3014990, 139.4806189)
            annotation29.title = "紀の国屋本店"
            annotation29.subtitle = "本格団子を様々な種類から選べる、和菓子好きにはたまらないお店。"
            self.mapView.addAnnotation(annotation29)
            
            let annotation30 = TestMKPointAnnotation()
            annotation30.coordinate = CLLocationCoordinate2DMake(35.3084430, 139.4821345)
            annotation30.title = "カフェ　ラ　キッシュ"
            annotation30.subtitle = "カラフルなキッシュの専門店。"
            self.mapView.addAnnotation(annotation30)
            
            let annotation13 = TestMKPointAnnotation()
            annotation13.coordinate = CLLocationCoordinate2DMake(35.3110151, 139.4875778)
            annotation13.title = "江ノ島駅"
            annotation13.pinImage = "train. 1.png"
            self.mapView.addAnnotation(annotation13)
            
            
            
            
        }
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        if annotation is MKUserLocation {
            return nil
        }
        
        
        if let test = annotation as? TestMKPointAnnotation {
            if(test.pinColor != nil) {
                
                //色が設定されている場合
                let testPinView = MKPinAnnotationView()
                testPinView.annotation = annotation
                testPinView.pinTintColor = test.pinColor
                testPinView.canShowCallout = true
                
                return testPinView
                
            } else if(test.pinImage != nil) {
                
                //画像が設定されている場合
                let testPinView = MKAnnotationView()
                testPinView.annotation = annotation
                testPinView.image = UIImage(named:test.pinImage)
                testPinView.canShowCallout = true
                
                return testPinView
            }
        }
        
        //色も画像も設定されていない場合
        let testPinView = MKPinAnnotationView()
        testPinView.canShowCallout = true
        testPinView.annotation = annotation
        
        let reuseId = "pin"
        var pinView = mapView.dequeueReusableAnnotationView(withIdentifier: reuseId) as? MKPinAnnotationView
        
        //一番最初のannotationView
        if pinView == nil {
            pinView = MKPinAnnotationView(annotation: annotation, reuseIdentifier: reuseId)
            pinView?.animatesDrop = true
            pinView?.canShowCallout = true
            //画像が設定されている場合
            
            pinView?.annotation = annotation
//            pinView?.UIImage
            pinView?.leftCalloutAccessoryView = UIButton(type: UIButtonType.detailDisclosure)
        } else {
            pinView?.annotation = annotation
            pinView?.canShowCallout = true
        }
        return pinView
    }
//            if let test = annotation13 as? TestMKPointAnnotation {
//                if(test.pinColor != nil) {
//
//                //色が設定されている場合
//                let testPinView = MKPinAnnotationView()
//                testPinView.annotation = annotation13
//                testPinView.pinTintColor = test.pinColor
//                testPinView.canShowCallout = true
//
//                return testPinView
//
//            } else if(test.pinImage != nil) {
//
//                //画像が設定されている場合
//                let testPinView = MKAnnotationView()
//                testPinView.annotation = annotation13
//                testPinView.image = UIImage(named:test.pinImage)
//                testPinView.canShowCallout = true
//
//                return testPinView
//            }

    
    
    
}



