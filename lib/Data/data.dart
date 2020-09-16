import 'package:hungry1234/GUI/Category.dart';
import 'package:hungry1234/GUI/Shop.dart';
import 'package:hungry1234/main.dart';


//function for giving the shops in design
List <Shop> getShops(){
   return [
       Mac , setelSham , omda , hiprost , cook , bondka
   ];


}




Category fastFood = new Category(id: '1', name: ' ماكولات سريعه ',);
Category chickenFood = new Category(id: '2', name: 'فراخ مشويه');
Category sandwitchFood = new Category(id: '3', name: 'ساندوتشات');
Category syrianFood = new Category(id: '4', name: 'ماكولات سوريه');
Category prost = new Category(id: "5"  ,  name:  "  فراخ بروست ");
Category koshry = new Category(id: "6" , name: "كشري");


Shop Mac = new Shop(
    id: '1',
    name: 'ماكدونالز',
    deliveryPrice: 10,
    lowerPrice: 28,
    iconUrl: "images/mac.jpg",
    isAdd: true,
    status: 'مشغول',
    rating: 4.5,
    categories: [
      fastFood,
      chickenFood,
      sandwitchFood,
    ]);

Shop setelSham = new Shop(
    id: '2',
    name: 'ست الشام ',
    deliveryPrice: 6,
    lowerPrice: 30,
    iconUrl: "images/setel.jpg",
    isAdd: true,
    status: 'مشغول',
    rating: 4.1,
    categories: [
      chickenFood,
      sandwitchFood,
      syrianFood,
    ]);



Shop bondka = new Shop(
    id: '3',
    name: ' بندقه ',
    deliveryPrice: 6,
    lowerPrice: 12,
    iconUrl: "images/bondka.jpg",
    isAdd: true,
    status: 'متاح',
    rating: 4,
    categories: [
      chickenFood,
      sandwitchFood,
      koshry,
    ]);



Shop omda = new Shop(
    id: '4',
    name: " العمده ",
    deliveryPrice: 6,
    lowerPrice: 10,
    iconUrl: "images/omda.jpg",
    isAdd: true,
    status: 'متاح',
    rating: 4.2,
    categories: [
      chickenFood,
      sandwitchFood,
      koshry,
    ]);



Shop cook = new Shop(
    id: '5',
    name: ' كوك دور ',
    deliveryPrice: 6,
    lowerPrice: 39,
    iconUrl: "images/cook.jpg",
    isAdd: true,
    status: 'مشغول',
    rating: 4.6,
    categories: [
      chickenFood,
      sandwitchFood,
      fastFood,
    ]);



Shop hiprost = new Shop(
    id: '6',
    name: ' هاي بروست ',
    deliveryPrice: 6,
    lowerPrice: 25,
    iconUrl: "images/hiprost.jpg",
    isAdd: true,
    status: 'متاح',
    rating: 4.2,
    categories: [
      chickenFood,
      sandwitchFood,
      prost,
    ]);



















