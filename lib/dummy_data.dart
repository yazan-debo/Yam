import 'package:project_2/models/advertising.dart';
import 'package:project_2/models/ingradient.dart';
import 'package:project_2/models/step.dart';
import './models/recipe.dart';
import 'models/User.dart';
import 'models/notification.dart';

User user = User(id: '1', name: 'rawan_ibrahim',imagUrl:'assets/images/Adv.jpg',email: 'rawan@gmail.com',password: '11122234455');

List<advertising> Advertesment=[

const advertising(id:'a22',name:'andomi', rate:Ratead.four, imgurl: 'assets/images/Adv.jpg'),

const advertising(id:'a23',name:'andomi', rate:Ratead.four, imgurl: 'assets/images/Adv.jpg'),

const advertising(id:'a24',name:'andomi', rate:Ratead.four, imgurl: 'assets/images/Adv.jpg'),

const advertising(id:'a25',name:'andomi', rate:Ratead.four, imgurl: 'assets/images/Adv.jpg'),

const advertising(id:'a26',name:'andomi', rate:Ratead.four, imgurl: 'assets/images/Adv.jpg'),

];

List<notification> Notifications=[

   notification(id:'n2',name:'andomi',discription: 'this tomato is very good for dilisios food and make it a nice flavour , I hope a good experience with our products...**',
     user:User(id: '1', name: 'rawan_ibrahim',imagUrl:'assets/images/Adv.jpg',email: 'rawan@gmail.com',password: '11122234455'),
     Image:'assets/images/tw.jpg',
   ),

  notification(id:'n3',name:'andomi',discription: 'ffffffffffdsgsdggfdffdgfhh',
    user:User(id: '2', name: 'agid_ibrahim',imagUrl:'assets/images/Adv.jpg',email: 'agid@gmail.com',password: '11122234455'),
    Image:'assets/images/tw.jpg',
  ),

  notification(id:'n4',name:'andomi',discription: 'ffffffffffdsgsdggfdffdgfhh',
    user:User(id: '3', name: 'ghufran_ibrahim',imagUrl:'assets/images/Adv.jpg',email: 'ghuf@gmail.com',password: '11122234455'),
    Image:'assets/images/tw.jpg',
  ),
  notification(id:'n5',name:'andomi',discription: 'ffffffffffdsgsdggfdffdgfhh',
    user:User(id: '4', name: 'raghad_ibrahim',imagUrl:'assets/images/Adv.jpg',email: 'raghad@gmail.com',password: '11122234455'),
    Image:'assets/images/tw.jpg',
  ),
  notification(id:'n6',name:'andomi',discription: 'ffffffffffdsgsdggfdffdgfhh',
    user:User(id: '5', name: 'hussen_ibrahim',imagUrl:'assets/images/Adv.jpg',email: 'hussen@gmail.com',password: '11122234455'),
    Image:'assets/images/1.jpg',
  ),

];


 List<recipe> DUMMY_Meals = [
  recipe(
      id: '1',
      category: Category.Vegetarian,
      name: 'Cripe',
      imgurl: 'assets/images/rec.jpg',
      ingredients: [
       ingradient(
           const advertising(id:'a1',name:'andomi', rate:Ratead.four, imgurl: 'assets/images/Adv.jpg'),
           id: 'i1',
           name: 'name',
           num: 3),
        ingradient(
            const advertising(id:'a2',name:'andomi', rate:Ratead.four, imgurl: 'assets/images/Adv.jpg'),
            id: 'i1',
            name: 'name',
            num: 3),
        ingradient(
            const advertising(id:'a3',name:'andomi', rate:Ratead.four, imgurl: 'assets/images/Adv.jpg'),
            id: 'i1',
            name: 'name',
            num: 3),
      ],
      steps: [
        const step(id: '1', step_discription: "fdsffffffffsssssggggggggggggggggggmdgsd", imgurl: 'assets/images/Adv.jpg'),
        const step(id: '2', step_discription: "fdsffffffffsssssggggggggggggggggggmdgsd", imgurl: 'assets/images/Adv.jpg'),
        const step(id: '3', step_discription: "fdsffffffffsssssggggggggggggggggggmdgsd", imgurl: 'assets/images/Adv.jpg'),
        const step(id: '4', step_discription: "fdsffffffffsssssggggggggggggggggggmdgsd", imgurl: 'assets/images/Adv.jpg')
      ],
      duration: 20,
      complexity:Complexity.Easy,
     price: 150,
    tips: 'ddddddddddfjwfbkjfengjjjjjjjjjjjjjjjjgjjgjg',
    rate: Rate.three,
    watchers: 30,
    like: 100,
    chef: User(name: 'Rawan Ibrahim', id: '2', imagUrl: 'assets/images/1.jpg',email: 'rawan@gmail.com',password: '11122234455'),
    isfav:true,

  ),
  recipe(
    id: '2',
    category: Category.Vegetarian,
    name: 'Cripe',
    imgurl: 'assets/images/rec.jpg',
    ingredients: [
      ingradient(
          const advertising(id:'a1',name:'andomi', rate:Ratead.four, imgurl: 'assets/images/Adv.jpg'),
          id: 'i1',
          name: 'name',
          num: 3),
      ingradient(
          const advertising(id:'a2',name:'andomi', rate:Ratead.four, imgurl: 'assets/images/Adv.jpg'),
          id: 'i1',
          name: 'name',
          num: 3),
      ingradient(
          const advertising(id:'a3',name:'andomi', rate:Ratead.four, imgurl: 'assets/images/Adv.jpg'),
          id: 'i1',
          name: 'name',
          num: 3),
    ],
    steps: [
     const  step(id: '21', step_discription: "fdsffffffffsssssggggggggggggggggggmdgsd", imgurl: 'assets/images/rec.jpg'),
      const step(id: '22', step_discription: "fdsffffffffsssssggggggggggggggggggmdgsd", imgurl: 'assets/images/rec.jpg'),
      const step(id: '23', step_discription: "fdsffffffffsssssggggggggggggggggggmdgsd", imgurl: 'assets/images/rec.jpg'),
      const step(id: '24', step_discription: "fdsffffffffsssssggggggggggggggggggmdgsd", imgurl: 'assets/images/rec.jpg')
    ],
    duration: 20,
    complexity: Complexity.Easy,
    price: 150,
    tips: 'ddddddddddfjwfbkjfengjjjjjjjjjjjjjjjjgjjgjg',
    rate: Rate.three,
    watchers: 30,
    like: 100,
    chef: User(name: 'Rawan Ibrahim', id: '2', imagUrl: 'assets/images/1.jpg',email: 'rawan@gmail.com',password: '11122234455'),
    isfav: false,
  ),
  recipe(
    id: '3',
    category: Category.Vegetarian,
    name: 'Cripe',
    imgurl: 'assets/images/rec.jpg',
    ingredients: [
      ingradient(
          const advertising(id:'a1',name:'andomi', rate:Ratead.four, imgurl: 'assets/images/Adv.jpg'),
          id: 'i1',
          name: 'name',
          num: 3),
      ingradient(
          const advertising(id:'a2',name:'andomi', rate:Ratead.four, imgurl: 'assets/images/Adv.jpg'),
          id: 'i1',
          name: 'name',
          num: 3),
      ingradient(
          const advertising(id:'a3',name:'andomi', rate:Ratead.four, imgurl: 'assets/images/Adv.jpg'),
          id: 'i1',
          name: 'name',
          num: 3),
    ],
    steps: [
      const step(id: '31', step_discription: "fdsffffffffsssssggggggggggggggggggmdgsd", imgurl: 'assets/images/rec.jpg'),
      const step(id: '32', step_discription: "fdsffffffffsssssggggggggggggggggggmdgsd", imgurl: 'assets/images/rec.jpg'),
      const step(id: '33', step_discription: "fdsffffffffsssssggggggggggggggggggmdgsd", imgurl: 'assets/images/rec.jpg'),
      const step(id: '34', step_discription: "fdsffffffffsssssggggggggggggggggggmdgsd", imgurl: 'assets/images/rec.jpg')
    ],
    duration: 20,
    complexity: Complexity.Easy,
    price: 150,
    tips: 'ddddddddddfjwfbkjfengjjjjjjjjjjjjjjjjgjjgjg',
    rate: Rate.three,
    watchers: 30,
    like: 100,
    chef: User(name: 'Agid Ibrahim', id: '1', imagUrl: 'assets/images/1.jpg',email: 'agid@gmail.com',password: '11122234455'),
    isfav: true,
  ),

   recipe(
     id: '4',
     category: Category.Vegetarian,
     name: 'Cripe',
     imgurl: 'assets/images/rec.jpg',
     ingredients: [
       ingradient(
           const advertising(id:'a1',name:'andomi', rate:Ratead.four, imgurl: 'assets/images/Adv.jpg'),
           id: 'i1',
           name: 'name',
           num: 3),
       ingradient(
           const advertising(id:'a2',name:'andomi', rate:Ratead.four, imgurl: 'assets/images/Adv.jpg'),
           id: 'i1',
           name: 'name',
           num: 3),
       ingradient(
           const advertising(id:'a3',name:'andomi', rate:Ratead.four, imgurl: 'assets/images/Adv.jpg'),
           id: 'i1',
           name: 'name',
           num: 3),
     ],
     steps: [
       const step(id: '31', step_discription: "fdsffffffffsssssggggggggggggggggggmdgsd", imgurl: 'assets/images/rec.jpg'),
       const step(id: '32', step_discription: "fdsffffffffsssssggggggggggggggggggmdgsd", imgurl: 'assets/images/rec.jpg'),
       const step(id: '33', step_discription: "fdsffffffffsssssggggggggggggggggggmdgsd", imgurl: 'assets/images/rec.jpg'),
       const step(id: '34', step_discription: "fdsffffffffsssssggggggggggggggggggmdgsd", imgurl: 'assets/images/rec.jpg')
     ],
     duration: 20,
     complexity: Complexity.Easy,
     price: 150,
     tips: 'ddddddddddfjwfbkjfengjjjjjjjjjjjjjjjjgjjgjg',
     rate: Rate.three,
     watchers: 30,
     like: 100,
     chef: User(name: 'Agid Ibrahim', id: '1', imagUrl: 'assets/images/1.jpg',email: 'agid@gmail.com',password: '11122234455'),
     isfav: true,
   ),

   recipe(
     id: '5',
     category: Category.Vegetarian,
     name: 'Cripe',
     imgurl: 'assets/images/rec.jpg',
     ingredients: [
       ingradient(
           const advertising(id:'a1',name:'andomi', rate:Ratead.four, imgurl: 'assets/images/Adv.jpg'),
           id: 'i1',
           name: 'name',
           num: 3),
       ingradient(
           const advertising(id:'a2',name:'andomi', rate:Ratead.four, imgurl: 'assets/images/Adv.jpg'),
           id: 'i1',
           name: 'name',
           num: 3),
       ingradient(
           const advertising(id:'a3',name:'andomi', rate:Ratead.four, imgurl: 'assets/images/Adv.jpg'),
           id: 'i1',
           name: 'name',
           num: 3),
     ],
     steps: [
       const step(id: '31', step_discription: "fdsffffffffsssssggggggggggggggggggmdgsd", imgurl: 'assets/images/rec.jpg'),
       const step(id: '32', step_discription: "fdsffffffffsssssggggggggggggggggggmdgsd", imgurl: 'assets/images/rec.jpg'),
       const step(id: '33', step_discription: "fdsffffffffsssssggggggggggggggggggmdgsd", imgurl: 'assets/images/rec.jpg'),
       const step(id: '34', step_discription: "fdsffffffffsssssggggggggggggggggggmdgsd", imgurl: 'assets/images/rec.jpg')
     ],
     duration: 20,
     complexity: Complexity.Easy,
     price: 150,
     tips: 'ddddddddddfjwfbkjfengjjjjjjjjjjjjjjjjgjjgjg',
     rate: Rate.three,
     watchers: 30,
     like: 100,
     chef: User(name: 'Agid Ibrahim', id: '1', imagUrl: 'assets/images/1.jpg',email: 'agid@gmail.com',password: '11122234455'),
     isfav: true,
   ),

   recipe(
     id: '6',
     category: Category.Vegetarian,
     name: 'Cripe',
     imgurl: 'assets/images/rec.jpg',
     ingredients: [
       ingradient(
           const advertising(id:'a1',name:'andomi', rate:Ratead.four, imgurl: 'assets/images/Adv.jpg'),
           id: 'i1',
           name: 'name',
           num: 3),
       ingradient(
           const advertising(id:'a2',name:'andomi', rate:Ratead.four, imgurl: 'assets/images/Adv.jpg'),
           id: 'i1',
           name: 'name',
           num: 3),
       ingradient(
           const advertising(id:'a3',name:'andomi', rate:Ratead.four, imgurl: 'assets/images/Adv.jpg'),
           id: 'i1',
           name: 'name',
           num: 3),
     ],
     steps: [
       const step(id: '31', step_discription: "fdsffffffffsssssggggggggggggggggggmdgsd", imgurl: 'assets/images/rec.jpg'),
       const step(id: '32', step_discription: "fdsffffffffsssssggggggggggggggggggmdgsd", imgurl: 'assets/images/rec.jpg'),
       const step(id: '33', step_discription: "fdsffffffffsssssggggggggggggggggggmdgsd", imgurl: 'assets/images/rec.jpg'),
       const step(id: '34', step_discription: "fdsffffffffsssssggggggggggggggggggmdgsd", imgurl: 'assets/images/rec.jpg')
     ],
     duration: 20,
     complexity: Complexity.Easy,
     price: 150,
     tips: 'ddddddddddfjwfbkjfengjjjjjjjjjjjjjjjjgjjgjg',
     rate: Rate.three,
     watchers: 30,
     like: 100,
     chef: User(name: 'Agid Ibrahim', id: '1', imagUrl: 'assets/images/1.jpg',email: 'agid@gmail.com',password: '11122234455'),
     isfav: true,
   ),

   recipe(
     id: '7',
     category: Category.Vegetarian,
     name: 'Cripe',
     imgurl: 'assets/images/rec.jpg',
     ingredients: [
       ingradient(
           const advertising(id:'a1',name:'andomi', rate:Ratead.four, imgurl: 'assets/images/Adv.jpg'),
           id: 'i1',
           name: 'name',
           num: 3),
       ingradient(
           const advertising(id:'a2',name:'andomi', rate:Ratead.four, imgurl: 'assets/images/Adv.jpg'),
           id: 'i1',
           name: 'name',
           num: 3),
       ingradient(
           const advertising(id:'a3',name:'andomi', rate:Ratead.four, imgurl: 'assets/images/Adv.jpg'),
           id: 'i1',
           name: 'name',
           num: 3),
     ],
     steps: [
       const step(id: '31', step_discription: "fdsffffffffsssssggggggggggggggggggmdgsd", imgurl: 'assets/images/rec.jpg'),
       const step(id: '32', step_discription: "fdsffffffffsssssggggggggggggggggggmdgsd", imgurl: 'assets/images/rec.jpg'),
       const step(id: '33', step_discription: "fdsffffffffsssssggggggggggggggggggmdgsd", imgurl: 'assets/images/rec.jpg'),
       const step(id: '34', step_discription: "fdsffffffffsssssggggggggggggggggggmdgsd", imgurl: 'assets/images/rec.jpg')
     ],
     duration: 20,
     complexity: Complexity.Easy,
     price: 150,
     tips: 'ddddddddddfjwfbkjfengjjjjjjjjjjjjjjjjgjjgjg',
     rate: Rate.three,
     watchers: 30,
     like: 100,
     chef: User(name: 'Agid Ibrahim', id: '1', imagUrl: 'assets/images/1.jpg',email: 'agid@gmail.com',password: '11122234455'),
     isfav: true,
   ),

];
