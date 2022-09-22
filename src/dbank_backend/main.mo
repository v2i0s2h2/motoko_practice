
// import Text "mo:base/Text";
// it is a motoko file from base library that was created by foundation
// we can make only one actor inside project but can make many modules
// actor {
//   public func greet(name : Text) : async Text {
//     return ("Hello, " # name # "!");
//   };
// };


import Greet "greet";
import Array "mo:base/Array";
import Nat "mo:base/Nat";
import Buffer "mo:base/Buffer"
actor {

// array 
let array_1 : [Nat] = [1,2,3];
let array_2 : [Nat] = [1,2,3];

// Test if two arrays contain equal values - func equal<A>(a : [A], b : [A], eq : (A, A) -> Bool) : Bool , for Nat we can use simple

public func check_equal_array(array_1 :[Nat] , array_2 : [Nat]) : async Bool {
 let check : Bool = Array.equal<Nat>(array_1 ,array_1,Nat.equal);
 return(check);
};


// Append the values of two input arrays - func append<A>(xs : [A], ys : [A]) : [A]

public func add_n_to_array(array:[Nat], n :Nat) :async [Nat] {
  let new_array : [Nat] =  Array.append<Nat>(array, [n]);
  return(new_array);
};




  var height : Float = 5.6 ;

  var is_awake :Bool = false ;

  var age : Nat = 27;

  var favorite_show :?Text = null;

  var spicies : Text = "human";

// query keyword has only read-only property you can't update function using query

public query func get_height(): async Float{
  return height;
}; 

// we are not returning we are updating , so Float will not come after async 

public func set_height(_height:Float): async (){
   height := _height;
}; 

// add in height

public func add_height(_height:Float): async (){
   height += _height;
}; 

// get show

public func get_favorite_show(): async ?Text {
  return favorite_show ;
};

  // update fav show

  public func change_favorite_show(_show : ?Text) : async (){
    favorite_show := _show;
  };
  
  // this function greet will call a function inside greet.mo , which  we imported above
  public func greet() : async Text {
    Greet.hello();
  };

  
};
