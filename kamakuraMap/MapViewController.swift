//
//  MapViewController.swift
//  kamakuraMap
//
//  Created by Yoshiki Kishimoto on 2018/04/28.
//  Copyright © 2018年 Yoshiki Kishimoto. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController, MKMapViewDelegate {

    @IBOutlet weak var mapView: MKMapView! //to name of map
    
    //annotationView を返すメソッド
//    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
//        if annotation is MKUserLocation {
//            return nil
//        }
//        let reuseId = "pin"
//        var pinView = mapView.dequeueReusableAnnotationView(withIdentifier: reuseId) as? MKPinAnnotationView
//        if pinView == nil {
//            pinView = MKPinAnnotationView(annotation: annotation, reuseIdentifier: reuseId)
//            pinView?.animatesDrop = true
//        }
//        else {
//            pinView?.annotation = annotation
//        }
//
//        return pinView
//    }
    
    
    
    var num: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //// Use "if"!!!!
        if num == 1 {     //kamakura
            //緯度、経度を指定
            let coordinate = CLLocationCoordinate2DMake(35.31898, 139.5505)//緯度経度を指定
            let span = MKCoordinateSpanMake(0.01,0.01)//範囲を指定
            let region = MKCoordinateRegionMake(coordinate, span)
            mapView.setRegion(region, animated:true)
            //ピンの位置付け
            let annotation5 = MKPointAnnotation()
            annotation5.coordinate = CLLocationCoordinate2DMake(35.3155,139.5455)
            self.mapView.addAnnotation(annotation5)
            
            //ピンのタイトルとバルーン
            let annotation6 = MKPointAnnotation()
            annotation6.coordinate = CLLocationCoordinate2DMake(35.318, 139.5462)
            annotation6.title = "title"
            annotation6.subtitle = "subtitle"
            self.mapView.addAnnotation(annotation6)
            
            
        } else if num == 2 {      //hase
            //緯度、経度を指定
            let coordinate = CLLocationCoordinate2DMake(35.3112613, 139.5357395)
            //範囲指定
            let span = MKCoordinateSpanMake(0.02,0.02)
            //
            let region = MKCoordinateRegionMake(coordinate, span)
            mapView.setRegion(region, animated:true)
            //ピンの位置付け
            
            // シンポジおん
            let annotation10 = MKPointAnnotation()
            annotation10.coordinate = CLLocationCoordinate2DMake(35.3108709, 139.5360875)
            annotation10.title = "シンポジオン"
            annotation10.subtitle = "subtitle"
            self.mapView.addAnnotation(annotation10)
            
            //ピンのタイトルとバルーン　松原庵
            let annotation2 = MKPointAnnotation()
            annotation2.coordinate = CLLocationCoordinate2DMake(35.3114234, 139.5409676)
            annotation2.title = "鎌倉　松原庵"
            annotation2.subtitle = "外観からとっても昔ながらの雰囲気が漂うお店。\n甲府でありながら、高級感もあり、誰を連れて行っても満足感間違いなしのお店。"
            self.mapView.addAnnotation(annotation2)
            
            let annotation8 = MKPointAnnotation()
            annotation8.coordinate = CLLocationCoordinate2DMake(35.3132145, 139.5351166)
            annotation8.title = "鎌倉土鍋kaedena."
            annotation8.subtitle = "subtitle"
            self.mapView.addAnnotation(annotation8)
            
            let annotation9 = MKPointAnnotation()
            annotation9.coordinate = CLLocationCoordinate2DMake(35.3107601, 139.5360848)
            annotation9.title = "鎌倉プリン工房　可愛い娘たち"
            annotation9.subtitle = "subtitle"
            self.mapView.addAnnotation(annotation9)
            
            let annotation11 = MKPointAnnotation()
            annotation11.coordinate = CLLocationCoordinate2DMake(35.3099730, 139.5339568)
            annotation11.title = "カフェ　カプア"
            annotation11.subtitle = "subtitle"
            self.mapView.addAnnotation(annotation11)
            
            let annotation12 = MKPointAnnotation()
            annotation12.coordinate = CLLocationCoordinate2DMake(35.3095322, 139.5337647)
            annotation12.title = "caƒe recette 鎌倉"
            annotation12.subtitle = "subtitle"
            self.mapView.addAnnotation(annotation12)
            
        }else {      //eno
            //緯度、経度を指定
            let coordinate = CLLocationCoordinate2DMake(35.3022539, 139.4814201)
            //範囲指定
            let span = MKCoordinateSpanMake(0.02,0.02)
            //
            let region = MKCoordinateRegionMake(coordinate, span)
            mapView.setRegion(region, animated:true)
            //ピンの位置付け
            let annotation3 = MKPointAnnotation()
            annotation3.coordinate = CLLocationCoordinate2DMake(35.3155,139.5455)
            self.mapView.addAnnotation(annotation3)
            //ピンのタイトルとバルーン
            let annotation4 = MKPointAnnotation()
            annotation4.coordinate = CLLocationCoordinate2DMake(35.318, 139.5462)
            annotation4.title = "title"
            annotation4.subtitle = "subtitle"
            self.mapView.addAnnotation(annotation4)
            
    
        
    }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
