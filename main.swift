var readMenu:String? = ""
var readOrder:String? = ""
var shopCart = [String]()
var itemCount = 0

func shoppingCart(){
      if (shopCart.isEmpty){
      print("Your shopping cart is empty. Please use menu '1' to order something!")
      print("")
      print("")
    } else {
      print("")
      print("")
      print("Shopping Cart (\(shopCart.count) items):")
      for element in shopCart{
        print("\(element)")
      }
      print("")
      print("")
    }
}

while(readMenu != "x"){
  print("====================")
  print("Point Of Sales (PoS)")
  print("====================")
  print("")
  print("Options:")
  print("[1] Buy Food")
  print("[2] Shopping Cart")
  print("[x] Exit")
  print("")
  print("Your Choice ? ")
  readMenu = readLine()

  switch readMenu{
  case "1":
    while(readOrder != "Q"){
      print("Hi! , we have 5 items on the menu for you !")
      print("-------------------------------------------")
      print("[F03] Gado-Gado")
      print("[F02] Chicken Satay")
      print("[F01] Nasi Padang")
      print("[B02] Mineral Water")
      print("[B01] Iced Tea")
      print("[Q] Back to Main Menu")
      print("")
      print("Your F&B choice? ")
      readOrder = String(readLine()!).uppercased()

      switch readOrder{
      case "F03":
        print("How many 'Gado-Gado' you want to buy? ")
        let quantity = Int(readLine(strippingNewline: true)!)!
        shopCart.append("\(quantity) Gado-Gado")
        shoppingCart()
      case "F02":
        print("How many 'Chicken Satay' you want to buy? ")
        let quantity = Int(readLine(strippingNewline: true)!)!
        shopCart.append("\(quantity) Chicken Satay")
        shoppingCart()
      case "F01":
        print("How many 'Nasi Padang' you want to buy? ")
        let quantity = Int(readLine(strippingNewline: true)!)!
        shopCart.append("\(quantity) Nasi Padang")
        shoppingCart()
      case "B02":
        print("How many 'Mineral Water' you want to buy? ")
        let quantity = Int(readLine(strippingNewline: true)!)!
        shopCart.append("\(quantity) Mineral Water")
        shoppingCart()
      case "B01":
        print("How many 'Iced Tea' you want to buy? ")
        let quantity = Int(readLine(strippingNewline: true)!)!
        shopCart.append("\(quantity) Iced Tea")
        shoppingCart()
      default:
        print("Error, no such input is recognized")
        print("Back to the main menu")
      }
    }
    // print("Hi! , we have 5 items on the menu for you !")
    // print("-------------------------------------------")
    // print("[F03] Gado-Gado")
    // print("[F02] Chicken Satay")
    // print("[F01] Nasi Padang")
    // print("[B02] Mineral Water")
    // print("[B01] Iced Tea")
    // print("[Q] Back to Main Menu")
    // print("")
    // print("Your F&B choice? ")
    // readOrder = String(readLine()!).uppercased()

    // switch readOrder{
    //   case "F03":
    //     print("How many 'Gado-Gado' you want to buy? ")
    //     let quantity = Int(readLine(strippingNewline: true)!)!
    //     shopCart.append("\(quantity) Gado-Gado")
    //     shoppingCart()
    //   case "F02":
    //     print("How many 'Chicken Satay' you want to buy? ")
    //     let quantity = Int(readLine(strippingNewline: true)!)!
    //     shopCart.append("\(quantity) Chicken Satay")
    //     shoppingCart()
    //   case "F01":
    //     print("How many 'Nasi Padang' you want to buy? ")
    //     let quantity = Int(readLine(strippingNewline: true)!)!
    //     shopCart.append("\(quantity) Nasi Padang")
    //     shoppingCart()
    //   case "B02":
    //     print("How many 'Mineral Water' you want to buy? ")
    //     let quantity = Int(readLine(strippingNewline: true)!)!
    //     shopCart.append("\(quantity) Mineral Water")
    //     shoppingCart()
    //   case "B01":
    //     print("How many 'Iced Tea' you want to buy? ")
    //     let quantity = Int(readLine(strippingNewline: true)!)!
    //     shopCart.append("\(quantity) Iced Tea")
    //     shoppingCart()
    //   default:
    //     print("Error, no such input is recognized")
    //     print("Back to the main menu")
    // }

  case "2":
    shoppingCart()
  case "x":
    print("Thankyou, your order will be out soon!")
  default:
    print("Error, no such input is recognized")
    print("Back to the main menu")
  }

}
