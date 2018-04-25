//
//  ViewController.swift
//  kamakuraMap
//
//  Created by Yoshiki Kishimoto on 2018/04/20.
//  Copyright © 2018年 Yoshiki Kishimoto. All rights reserved.
//

import UIKit
import MapKit



class ViewController: UIViewController, MKMapViewDelegate {
    
    //mapViewの名前づけ
    @IBOutlet weak var mapView: MKMapView!
    
    func mapView(mapView: MKMapView, viewForAnnotation annotation: MKAnnotation) -> MKAnnotationView? {
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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //緯度、経度を指定
        let coordinate = CLLocationCoordinate2DMake(35.319225,139.546687)
        //範囲指定
        let span = MKCoordinateSpanMake(0.01,0.01)
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

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

