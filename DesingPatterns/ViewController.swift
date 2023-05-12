//
//  ViewController.swift
//  DesingPatterns
//
//  Created by Luis Alejandro Umana Salas on 8/5/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        testFactoryMethod()
        testAbstractFactory()
        testBuilder()
        testPrototype()
        testSingleton()
        
        testChainOfResponsability()
        testCommand()
        testObserver()
        testTemplateMethod()
        
        testAdapter()
        testDecorator()
        testFacade()
    }
    
    func testFacade(){
        print("***TESTING Facade")
        
        let facade = CreditMarketFacade()
        facade.showCreditGold()
        facade.showCreditSilver()
        facade.showCreditSilver()
        
        print("\n")
    }
    
    func testDecorator(){
        print("***TESTING Decorator")
        
        let blackInternationalPayment = InternationalPaymentDecorator(decorated: BlackCreditComponent())
        print("Black card configurated")
        blackInternationalPayment.showCredit()
        
        let goldSecurePayment = SecureDecorator(decorated: GoldCreditComponent())
        print("Gold card secured")
        goldSecurePayment.showCredit()
        
        print("\n")
    }
    
    func testAdapter(){
        print("***TESTING Adapter")
        
        let adaptee = OperationAdaptee(a: 3, b: 4)
        if(adaptee.sum() == 7){
            print("Ok int")
        }
        
        let target = OperationAdapter(adaptee: adaptee)
        if(target.getSum == "7")
        {
            print("Ok String")
            print(target.getSum)//adapting int to string
        }
        
        print("\n")
        
    }
    
    func testTemplateMethod(){
        print("***TESTING Template Method")
        
        let paymentMethodVisa = Visa()
        paymentMethodVisa.makePayment()
        
        let paymentMethodPaypal = Paypal()
        paymentMethodPaypal.makePayment()
        
        print("\n")
    }
    
    func testObserver(){
        print("***TESTING Observer")
        
        let car = Car()
        let pedestrian = Pedestrian()
        var trafficLight = TrafficLight(status: "CAR_GREEN")
        let messagePublisher = MessagePublisher()
        
        messagePublisher.attach(o: car)
        messagePublisher.attach(o: pedestrian)
        messagePublisher.notifyUpdate(trafficLight: trafficLight)
        
        sleep(2)
        
        trafficLight.status = "CAR_RED"
        messagePublisher.notifyUpdate(trafficLight: trafficLight)
        
        print("\n")
    }
    
    func testCommand(){
        print("***TESTING Command")
        
        let creditCard = CreditCardReceiver()
        
        let invoker = CreditCardInvoker()
        invoker.setCommand(command: CredicCardActiveCommand(crediCardReceiver: creditCard))
        invoker.run()
        
        invoker.setCommand(command: CredicCardDesactiveCommand(crediCardReceiver: creditCard))
        invoker.run()
        
        print("\n")
    }
    
    func testChainOfResponsability(){
        print("***TESTING Chain of Responsability")
        
        let bank = BankClientHandler()
        bank.creditCardRequest(totalLoan: 3000)
        bank.creditCardRequest(totalLoan: 15000)
        bank.creditCardRequest(totalLoan: 300000)
        
        print("\n")
    }
    
    func testSingleton(){
        print("***TESTING Singleton")
        
        let instancia1 = CardSingleton.shared
        let instancia2 = CardSingleton.shared
        
        if(instancia1 === instancia2){
            print("La instancia1 es la misma que la instancia2")
        }
        
        instancia1.doSomething()
        
        print("\n")
    }
    
    func testPrototype(){
        print("***TESTING Prototype")
        
        let original = VisaCard(cardNumber: 1111, cardType: "Débito")
        guard let copy = original.copy() as? VisaCard else {
            return
        }
        print("Original: Card name: \(original.cardName), Card number: \(original.cardNumber)")
        print("Copy: Card name: \(copy.cardName), Card number: \(copy.cardNumber)")
        
        print("\n")
    }
    
    func testBuilder(){
        print("***TESTING Builder")
        
        var card: Card = Card.CardBuilder()
            .carType(cardType: "VISA")
            .expired(expired: 5)
            .number(number: "123456")
            .build()
        
        card.showCard()
        
        print("\n")
    }
    
    func testAbstractFactory(){
        print("***TESTING Abstract Factory")
        
        PaymentMethodClient.codigoCliente(factory: PaymentInMonthlyCardFactory())
        PaymentMethodClient.codigoCliente(factory: PaymentInWeeklyGoogleFactory())
        
        print("\n")
    }
    
    func testFactoryMethod(){
        
        print("***TESTING Factory Method")
        
        let payment = PaymentFactory.buildPayment(typePayment: .APPLE)
        payment.doPayment()
        
        print("\n")
    }
    
}

