//
//  Layout.swift
//  PayPayChallenge
//
//  Created by Kishor Garkal on 20/03/21.
//

import Foundation
import UIKit

public protocol PaddingProtocol {
    var left: CGFloat { get set }
    var right: CGFloat { get set }
    var top: CGFloat { get set }
    var bottom: CGFloat { get set }
}

public struct ComponentPadding: PaddingProtocol {
    public var left: CGFloat = 16.0
    public var right: CGFloat = 16.0
    public var top: CGFloat = 16.0
    public var bottom: CGFloat = 16.0
}
