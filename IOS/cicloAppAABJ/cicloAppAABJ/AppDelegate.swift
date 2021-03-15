//
//  AppDelegate.swift
//  cicloAppAABJ
//
//  Created by MTWDM on 14/03/21.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        print("Se inició la aplicación")
        return true
    }
    
    func applicationWillResignActive(_ application: UIApplication) {
        print("La app va a renunciar al modo activo")
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
        print("La app ya entró en modo inactivo / background")
    }
    
    func applicationDidReceiveMemoryWarning(_ application: UIApplication) {
        print("La app generó un aviso de memoria")
    }
    
    func applicationWillEnterForeground(_ application: UIApplication) {
        print("La app pasó de modo background a modo activo")
    }
    
    func applicationDidBecomeActive(_ application: UIApplication) {
        print("La app ya se hizo activa?")
    }
}

