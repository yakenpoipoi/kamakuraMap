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
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        if annotation is MKUserLocation {
            return nil
        }
        let reuseId = "pin"
        var pinView = mapView.dequeueReusableAnnotationView(withIdentifier: reuseId) as? MKPinAnnotationView
        if pinView == nil {
            pinView = MKPinAnnotationView(annotation: annotation, reuseIdentifier: reuseId)
            pinView?.animatesDrop = true
        }
        else {
            pinView?.annotation = annotation
        }
        return pinView
    }
    
    var num:Int = 0
    
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
            let annotation1 = MKPointAnnotation()
            annotation1.coordinate = CLLocationCoordinate2DMake(35.3155,139.5455)
            self.mapView.addAnnotation(annotation1)
            
            //ピンのタイトルとバルーン
            let annotation2 = MKPointAnnotation()
            annotation2.coordinate = CLLocationCoordinate2DMake(35.318, 139.5462)
            annotation2.title = "title"
            annotation2.subtitle = "subtitle"
            self.mapView.addAnnotation(annotation2)
            
            
        } else if num == 2 {      //hase
            //緯度、経度を指定
            let coordinate = CLLocationCoordinate2DMake(35.3112613, 139.5357395)
            //範囲指定
            let span = MKCoordinateSpanMake(0.01,0.01)
            //
            let region = MKCoordinateRegionMake(coordinate, span)
            mapView.setRegion(region, animated:true)
            //ピンの位置付け
            let annotation2 = MKPointAnnotation()
            annotation2.coordinate = CLLocationCoordinate2DMake(35.3114234, 139.5409676)
            self.mapView.addAnnotation(annotation2)
            //ピンのタイトルとバルーン　松原庵
            let annotation1 = MKPointAnnotation()
            annotation1.coordinate = CLLocationCoordinate2DMake(35.3114234, 139.5409676)
            annotation1.title = "鎌倉　松原庵"
            annotation1.subtitle = "外観からとっても昔ながらの雰囲気が漂うお店。甲府でありながら、高級感もあり、誰を連れて行っても満足感間違いなしのお店。"
            self.mapView.addAnnotation(annotation2)
            
            
        }else {      //eno
            //緯度、経度を指定
            let coordinate = CLLocationCoordinate2DMake(35.3022539, 139.4814201)
            //範囲指定
            let span = MKCoordinateSpanMake(0.02,0.02)
            //
            let region = MKCoordinateRegionMake(coordinate, span)
            mapView.setRegion(region, animated:true)
            //ピンの位置付け
            let annotation1 = MKPointAnnotation()
            annotation1.coordinate = CLLocationCoordinate2DMake(35.3155,139.5455)
            self.mapView.addAnnotation(annotation1)
            //ピンのタイトルとバルーン
            let annotation2 = MKPointAnnotation()
            annotation2.coordinate = CLLocationCoordinate2DMake(35.318, 139.5462)
            annotation2.title = "title"
            annotation2.subtitle = "subtitle"
            self.mapView.addAnnotation(annotation2)
            
    
        
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
