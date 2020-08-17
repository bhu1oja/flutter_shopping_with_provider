

import 'package:flutter/material.dart';
import 'package:provider_state_management/providers/Product.dart';

class Products with ChangeNotifier{
  List <Product> _items =[
     Product(
      id : "1",
      title: "SASSAFRAS",
      description: "Maroon and grey Block print woven A-Line dress with gathered and tie-ups detail, has a round neck, sleeveless, and flared hem Comes with a maroon and grey Block print top with pleated detail, has a V-neck, short sleeves, flared hem",
      price : 20,
      imageURL : "https://assets.myntassets.com/f_webp,h_560,q_90,w_420/v1/assets/images/4325708/2018/4/2/11522662991296-Style-Quotient-Women-Tops-4231522662991112-1.jpg"
      ),
       Product(
      id : "2",
      title: "Black Kurths",
      description: "Maroon and grey Block print woven A-Line dress with gathered and tie-ups detail, has a round neck, sleeveless, and flared hem Comes with a maroon and grey Block print top with pleated detail, has a V-neck, short sleeves, flared hem",
      price : 20,
      imageURL : "https://assets.myntassets.com/f_webp,h_560,q_90,w_420/v1/assets/images/7719007/2018/11/19/1cac68d7-2389-48c8-b6d0-0a16c7d4236b1542608837264-Libas-Women-Dresses-9261542608836986-1.jpg"
      ),
       Product(
      id : "3",
      title: "Tokyo Talkies",
      description: "Maroon and grey Block print woven A-Line dress with gathered and tie-ups detail, has a round neck, sleeveless, and flared hem Comes with a maroon and grey Block print top with pleated detail, has a V-neck, short sleeves, flared hem",
      price : 20,
      imageURL : "https://assets.myntassets.com/f_webp,h_560,q_90,w_420/v1/assets/images/productimage/2019/2/18/818d5abc-7760-4fb3-b609-e3b9863e07d61550506908300-1.jpg"
      ),
       Product(
      id : "4",
      title: "Kruthi",
      description: "Maroon and grey Block print woven A-Line dress with gathered and tie-ups detail, has a round neck, sleeveless, and flared hem Comes with a maroon and grey Block print top with pleated detail, has a V-neck, short sleeves, flared hem",
      price : 20,
      imageURL : "https://assets.myntassets.com/f_webp,h_560,q_90,w_420/v1/assets/images/8076725/2018/12/7/943ed6af-c315-4119-8d0a-ac89311d55661544170431419-AKS-Women-Dresses-7841544170430220-1.jpg"
      ),
       Product(
      id : "5",
      title: "Libas",
      description: "Maroon and grey Block print woven A-Line dress with gathered and tie-ups detail, has a round neck, sleeveless, and flared hem Comes with a maroon and grey Block print top with pleated detail, has a V-neck, short sleeves, flared hem",
      price : 20,
      imageURL : "https://assets.myntassets.com/f_webp,h_560,q_90,w_420/v1/assets/images/10178885/2019/7/8/16f41642-dbcb-4ad1-890c-bffb002662381562574234188-GERUA-Women-Maroon--Beige-A-Line-Dress-3601562574232356-1.jpg"
      ),
       Product(
      id : "6",
      title: "Kurta",
      description:"Mustard yellow printed woven maxi dress, has a round neck, three-quarter sleeves, flared hem",
       price : 20,
      imageURL : "https://assets.myntassets.com/f_webp,h_560,q_90,w_420/v1/assets/images/6914153/2018/7/11/827224bc-7413-428a-b2f0-a150920e4cb61531290631907-na-9821531290630247-1.jpg"
      )
  
  ];

  List <Product> get items {
    return [..._items];
  }
  Product findById(String id){
    return items.firstWhere((element) => element.id ==  id);
  }

  
} 