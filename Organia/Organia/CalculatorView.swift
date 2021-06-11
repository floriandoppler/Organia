//
//  CalculatorView.swift
//  Organia
//
//  Created by Florian Doppler on 18.05.21.
//

import SwiftUI

struct CalculationState {
    var currentNumber: Double = 0
    
    var storedNumber: Double?
    var storedAction: ActionView.Action?
    
    mutating func appendNumber( number: Double){
        if number.truncatingRemainder(dividingBy: 1) == 0
        &&
            currentNumber.truncatingRemainder(dividingBy: 1) == 0 {
            currentNumber = 10 * currentNumber + number
        } else {
            currentNumber = number
        }
    }
}


struct CalculatorView: View {
    
    @State var state = CalculationState()

    var displayedString: String {
        String(format: "%.2f", arguments: [state.currentNumber])
    }
    
    
    var body: some View {
        VStack(alignment: .trailing, spacing: 20){
            Spacer()
            
            Text(displayedString)
                .font(.largeTitle)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .lineLimit(3)
                .padding(.bottom, 64)
            
            
            HStack {
                FunctionView(function: .cosinus, state: $state)
                Spacer()
                FunctionView(function: .sinus, state: $state)
                Spacer()
                FunctionView(function: .tangens, state: $state)
                Spacer()
                ActionView(action: .multiply, state: $state)
            }
            
            HStack {
                NumberView(number: 7, state: $state)
                Spacer()
                NumberView(number: 8, state: $state)
                Spacer()
                NumberView(number: 9, state: $state)
                Spacer()
                ActionView(action: .divide , state: $state)
            }
            
            HStack {
                NumberView(number: 4, state: $state)
                Spacer()
                NumberView(number: 5, state: $state)
                Spacer()
                NumberView(number: 6, state: $state)
                Spacer()
                ActionView(action: .plus, state: $state)
            }
            
            HStack {
                NumberView(number: 1, state: $state)
                Spacer()
                NumberView(number: 2, state: $state)
                Spacer()
                NumberView(number: 3, state: $state)
                Spacer()
                ActionView(action: .minus, state: $state)
            }
            
            HStack {
                ActionView(action: .clear, state: $state)
                Spacer()
                NumberView(number: .myNumber, state: $state)
                Spacer()
                NumberView(number: .pi, state: $state)
                Spacer()
                ActionView(action: .equal, state: $state)
            }
        }.padding(32)
    }
}

extension Double {
    static let myNumber: Double = 1.5
}

struct NumberView: View {
    let number: Double
    @Binding var state: CalculationState
    
    var numberString: String {
        if number == .pi {
            return "π"
        } else if number == .myNumber {
            return "N"
        }
        
        return String(Int(number))
    }
    
    var body: some View {
        Text(numberString)
            .font(.title)
            .fontWeight(.bold)
            .foregroundColor(.white)
            .frame(width: 64, height: 64)
            .background(Color.blue)
            .cornerRadius(20)
            .shadow(color: Color.blue.opacity(0.3), radius: 10, x: 0, y: 10)
            .onTapGesture {
                self.state.appendNumber(number: self.number)
        }
    }
}

struct FunctionView: View {
    enum MathFunction {
        case sinus, cosinus, tangens
        
        func string() -> String {
            switch self {
            case .sinus: return "sin"
            case .cosinus: return "cos"
            case .tangens: return "tan"
            }
        }
        
        func operation(_ input: Double) -> Double {
            switch self {
            case .sinus: return sin(input)
            case .cosinus: return cos(input)
            case .tangens: return tan(input)
            }
        }
    }
    
    var function: MathFunction
    @Binding var state: CalculationState
    
    var body: some View {
        return Text(function.string())
            .font(.title)
            .fontWeight(.bold)
            .foregroundColor(.black)
            .frame(width: 64, height: 64)
            .background(Color.gray.opacity(0.2))
        .cornerRadius(20)
            .shadow(color: Color.gray.opacity(0.9), radius: 10, x: 0, y: 10)
            .onTapGesture {
                self.state.currentNumber =
                    self.function.operation(state.currentNumber)
        }
    }
}

struct ActionView: View {
    
    
    enum Action {
        case equal, clear, plus, minus, multiply, divide
        
        func image() -> Image{
            switch self {
                case .equal:
                    return Image(systemName: "equal")
                case .clear:
                    return Image(systemName: "xmark.circle")
                case .plus:
                    return Image(systemName: "plus")
                case .minus:
                    return Image(systemName: "minus")
                case .multiply:
                    return Image(systemName: "multiply")
                case .divide:
                    return Image(systemName: "divide")
              
            }
        }
        
        func calculate(_ input1: Double, _ input2: Double) -> Double? {
            switch self {
            case .plus:
                return input1 + input2
            case .minus:
                return input1 - input2
            case .multiply:
                return input1 * input2
            case .divide:
                return input1 / input2
            default:
                return nil
            }
        }
    }
    
    let action: Action
    @Binding var state: CalculationState
    
    var body: some View {
        action.image()
            .font(Font.title.weight(.bold))
            .foregroundColor(.white)
            .frame(width: 64, height: 64)
            .background(Color.green)
            .cornerRadius(20)
            .shadow(color: Color.green.opacity(0.3), radius: 10, x: 0, y: 10)
            .onTapGesture {
                self.tapped()
        }
    }
    
    private func tapped() {
        switch action {
        case .clear:
            state.currentNumber = 0
            state.storedNumber = nil
            state.storedAction = nil
            break
        case .equal:
            guard let storedAction =
                state.storedAction else {
                return
            }
            
            guard let storedNumber =
                state.storedNumber else {
                return
            }
            guard let result =
                storedAction.calculate(storedNumber,
                state.currentNumber) else {
                return
            }
            
            state.currentNumber = result
            state.storedNumber = nil
            state.storedAction = nil
            break
        default:
            state.storedNumber = state.currentNumber
            state.currentNumber = 0
            state.storedAction = action
            break
        }
    }
}


struct CalculatorView_Previews: PreviewProvider {
    static var previews: some View {
        CalculatorView()
    }
}
