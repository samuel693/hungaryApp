

import 'Category.dart';

class Shop{
       String id;
       String name;
       double lowerPrice;
       double deliveryPrice;
       String iconUrl;
       double rating;
       bool isAdd;
       String status;

       List<Category> categories;
       Shop({
              this.id,
              this.name,
              this.lowerPrice,
              this.deliveryPrice,
              this.iconUrl,
              this.rating,
              this.isAdd,
              this.status,
              this.categories,
       });


       String getCategories (){
              String result=" ";
              for(int i=0; i<categories.length; i++){

                     if(result==" ")
                            result=categories[i].name;
                     else
                            result=result+ " , " +categories[i].name;

              }
              return result;

       }


}