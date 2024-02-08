//
//  Shapes.swift
//  WWDC23-WPAP
//
//  Created by Ziady Mubaraq on 11/04/23.
//  MARK: The application is performing well on the iPad Pro 12.9-inch

import SwiftUI

struct Shape1: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.00889*width, y: 0.09321*height))
        path.addLine(to: CGPoint(x: 0.5182*width, y: 0.22265*height))
        path.addLine(to: CGPoint(x: 0.5182*width, y: 0.71224*height))
        path.addLine(to: CGPoint(x: 0.73873*width, y: 0.86692*height))
        path.addLine(to: CGPoint(x: 0.73873*width, y: 0.99495*height))
        path.addLine(to: CGPoint(x: 0.99293*width, y: 0.99495*height))
        path.addLine(to: CGPoint(x: 0.99293*width, y: 0.72613*height))
        path.addLine(to: CGPoint(x: 0.99293*width, y: 0.54055*height))
        path.addLine(to: CGPoint(x: 0.5182*width, y: 0.00695*height))
        path.addLine(to: CGPoint(x: 0.00889*width, y: 0.09321*height))
        path.closeSubpath()
        return path
    }
}

struct Shape2: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.7809*width, y: 0.09954*height))
        path.addLine(to: CGPoint(x: 0.65187*width, y: 0.09954*height))
        path.addLine(to: CGPoint(x: 0.65128*width, y: 0.09894*height))
        path.addLine(to: CGPoint(x: 0.81969*width, y: 0.0019*height))
        path.addLine(to: CGPoint(x: 0.81972*width, y: 0.0019*height))
        path.addLine(to: CGPoint(x: 0.90176*width, y: 0.07652*height))
        path.addLine(to: CGPoint(x: 0.99367*width, y: 0.07652*height))
        path.addLine(to: CGPoint(x: 0.90944*width, y: 0.0019*height))
        path.addLine(to: CGPoint(x: 0.99702*width, y: 0.0019*height))
        path.addLine(to: CGPoint(x: 0.99702*width, y: 0.817*height))
        path.addLine(to: CGPoint(x: 0.99367*width, y: 0.99846*height))
        path.addLine(to: CGPoint(x: 0.8065*width, y: 0.99846*height))
        path.addLine(to: CGPoint(x: 0.8065*width, y: 0.35619*height))
        path.addLine(to: CGPoint(x: 0.37995*width, y: 0.35713*height))
        path.addLine(to: CGPoint(x: 0.37995*width, y: 0.73212*height))
        path.addLine(to: CGPoint(x: 0.33109*width, y: 0.69865*height))
        path.addLine(to: CGPoint(x: 0.33109*width, y: 0.74369*height))
        path.addLine(to: CGPoint(x: 0.00886*width, y: 0.70666*height))
        path.addLine(to: CGPoint(x: 0.00886*width, y: 0.46909*height))
        path.addLine(to: CGPoint(x: 0.59441*width, y: 0.13171*height))
        path.addLine(to: CGPoint(x: 0.59485*width, y: 0.13213*height))
        path.addLine(to: CGPoint(x: 0.82607*width, y: 0.13032*height))
        path.addLine(to: CGPoint(x: 0.7809*width, y: 0.09954*height))
        path.closeSubpath()
        return path
    }
}

struct Shape3: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.77939*width, y: 0.2059*height))
        path.addLine(to: CGPoint(x: 0.99765*width, y: 0.00093*height))
        path.addLine(to: CGPoint(x: 0.17979*width, y: 0.00093*height))
        path.addLine(to: CGPoint(x: 0.01239*width, y: 0.59109*height))
        path.addLine(to: CGPoint(x: 0.00355*width, y: 0.99609*height))
        path.addLine(to: CGPoint(x: 0.05629*width, y: 0.99609*height))
        path.addLine(to: CGPoint(x: 0.13468*width, y: 0.87196*height))
        path.addLine(to: CGPoint(x: 0.19748*width, y: 0.83427*height))
        path.addLine(to: CGPoint(x: 0.19748*width, y: 0.70976*height))
        path.addLine(to: CGPoint(x: 0.3714*width, y: 0.54039*height))
        path.addLine(to: CGPoint(x: 0.57849*width, y: 0.2059*height))
        path.addLine(to: CGPoint(x: 0.77939*width, y: 0.2059*height))
        path.closeSubpath()
        return path
    }
}

struct Shape4: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.81918*width, y: 0.0044*height))
        path.addLine(to: CGPoint(x: 0.42325*width, y: 0.01041*height))
        path.addLine(to: CGPoint(x: 0.00502*width, y: 0.01041*height))
        path.addLine(to: CGPoint(x: 0.00502*width, y: 0.29531*height))
        path.addLine(to: CGPoint(x: 0.2723*width, y: 0.89743*height))
        path.addLine(to: CGPoint(x: 0.42128*width, y: 0.93949*height))
        path.addLine(to: CGPoint(x: 0.63558*width, y: 0.99999*height))
        path.addLine(to: CGPoint(x: 0.99269*width, y: 0.90344*height))
        path.addLine(to: CGPoint(x: 0.99269*width, y: 0.2607*height))
        path.addLine(to: CGPoint(x: 0.81918*width, y: 0.0044*height))
        path.closeSubpath()
        return path
    }
}

struct Shape5: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.41605*width, y: 0.99503*height))
        path.addLine(to: CGPoint(x: 0.00725*width, y: 0.00464*height))
        path.addLine(to: CGPoint(x: 0.79849*width, y: 0.09335*height))
        path.addLine(to: CGPoint(x: 0.98622*width, y: 0.06706*height))
        path.addLine(to: CGPoint(x: 0.98621*width, y: 0.66795*height))
        path.addLine(to: CGPoint(x: 0.98621*width, y: 0.99503*height))
        path.addLine(to: CGPoint(x: 0.41605*width, y: 0.99503*height))
        path.closeSubpath()
        return path
    }
}

struct Shape6: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.49891*width, y: 0.15931*height))
        path.addLine(to: CGPoint(x: 0.01756*width, y: 0.31377*height))
        path.addLine(to: CGPoint(x: 0.01756*width, y: 0.99844*height))
        path.addLine(to: CGPoint(x: 0.24194*width, y: 0.91956*height))
        path.addLine(to: CGPoint(x: 0.51569*width, y: 0.74321*height))
        path.addLine(to: CGPoint(x: 0.77032*width, y: 0.5061*height))
        path.addLine(to: CGPoint(x: 0.88134*width, y: 0.24134*height))
        path.addLine(to: CGPoint(x: 0.98065*width, y: 0.00477*height))
        path.addLine(to: CGPoint(x: 0.49891*width, y: 0.15931*height))
        path.closeSubpath()
        return path
    }
}

struct Shape7: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.34153*width, y: 0.41483*height))
        path.addLine(to: CGPoint(x: 0.8679*width, y: 0.41483*height))
        path.addLine(to: CGPoint(x: 0.99553*width, y: 0.24484*height))
        path.addLine(to: CGPoint(x: 0.55478*width, y: 0.24484*height))
        path.addLine(to: CGPoint(x: 0.34153*width, y: 0.14694*height))
        path.addLine(to: CGPoint(x: 0.34153*width, y: 0.0578*height))
        path.addLine(to: CGPoint(x: 0.2123*width, y: 0.109*height))
        path.addLine(to: CGPoint(x: 0.10706*width, y: 0.14694*height))
        path.addLine(to: CGPoint(x: 0.0034*width, y: 0.00881*height))
        path.addLine(to: CGPoint(x: 0.0034*width, y: 0.20192*height))
        path.addLine(to: CGPoint(x: 0.08391*width, y: 0.47008*height))
        path.addLine(to: CGPoint(x: 0.38776*width, y: 0.89111*height))
        path.addLine(to: CGPoint(x: 0.51049*width, y: 0.9949*height))
        path.addLine(to: CGPoint(x: 0.51049*width, y: 0.93144*height))
        path.addLine(to: CGPoint(x: 0.2454*width, y: 0.5782*height))
        path.addLine(to: CGPoint(x: 0.2454*width, y: 0.41483*height))
        path.addLine(to: CGPoint(x: 0.34153*width, y: 0.41483*height))
        path.closeSubpath()
        return path
    }
}

struct Shape8: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.98395*width, y: 0.94336*height))
        path.addLine(to: CGPoint(x: 0.98202*width, y: 0.00281*height))
        path.addLine(to: CGPoint(x: 0.01437*width, y: 0.22326*height))
        path.addLine(to: CGPoint(x: 0.01469*width, y: 0.99985*height))
        path.addLine(to: CGPoint(x: 0.01469*width, y: 0.67699*height))
        path.addLine(to: CGPoint(x: 0.36795*width, y: 0.79151*height))
        path.addLine(to: CGPoint(x: 0.36795*width, y: 0.99985*height))
        path.addLine(to: CGPoint(x: 0.82634*width, y: 0.99985*height))
        path.addLine(to: CGPoint(x: 0.98395*width, y: 0.94336*height))
        path.closeSubpath()
        return path
    }
}
