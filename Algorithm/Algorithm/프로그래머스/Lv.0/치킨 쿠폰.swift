//
//  치킨 쿠폰.swift
//  Algorithm
//
//  Created by 이학진 on 2022/11/20.
//

import Foundation

/// 1. 1081마리 주문하면, 쿠폰 1081장 발급되고  서비스 치킨 108마리 주문, 쿠폰 1장 남음: 현재 서비스 치킨 108
/// 2. 108마리 주문하면, 쿠폰 108장 발급되고, 서비스 치킨 10마리 주문가능, 쿠폰 8장 + 1장 남음: 현재 서비스 치킨 118마리
/// 3. 치킨 10마리 주문하면, 쿠폰 10장 발급되고, 서비스 치킨 1마리 주문가능, 쿠폰 8 + 1 +1 장 남음: 현재 서비스 치킨 119마리
/// 4. 쿠폰 10장으로 서비스 치킨 1마리 주문 가능: 총 서비스 치킨 120마리
func solution(_ chicken:Int) -> Int {
    var serviceCupon: Int = chicken // 치킨 주문으로 받을 서비스 쿠폰 수
    var serviceChicken: Int = 0

    while serviceCupon > 9 {
        let orderChicken = serviceCupon / 10 // 쿠폰으로 주문한 치킨 수
        serviceChicken += orderChicken
        
        serviceCupon = orderChicken + serviceCupon % 10 // 치킨 주문으로 받은 쿠폰의 개수
    }
    return serviceChicken
}
