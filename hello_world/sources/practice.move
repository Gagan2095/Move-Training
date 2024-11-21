module hello_world::comments_line;
use std::string::String;
use sui::address; 
use std::debug;
public struct Artist has copy, drop, store {
    name:String
}
#[allow(unused_field)]
public struct User has drop {
    first_name: String,
    middle_name: Option<String>,
    last_name: String,
}
use hello_world::hello_world::{new as myFunc};

public fun some_function_with_numbers() {
    let mut _artist = Artist {
        name: b"Gagan".to_string()
    };
    let a = 10;
    // let b = 10 this line is commented and won't be executed
    let b = 5; // here comment is placed after code
    a + b; // result is 15, not 10!
    let mut _a: bool = true;
    let d : u8 = 16;
    _a = false;
    let _e = d as u32;
    let _value: address = @0x0;
    let _addr: String = address::to_string(@0x1);
    let c = vector[1,2,3];
    c[4];
    let _ = myFunc();
}

public fun myFunction() {
    let mut v:vector<u8> = vector[10,20,30];
    v.push_back(23);
    v.pop_back();
    assert!(v.length()==10);
    v.destroy_empty();
    let mut _opt  = option::some(b"Alice");
    if(v[0]>10){

    } else if(v[10]>10) {

    } else {

    }

    
}
public fun get_name_and_age(): (vector<u8>, u8) {
    (b"John", 25)
}

public struct Hero has drop {
    health: u8,
    mana: u8,
}

public fun new(): Hero  {Hero {health:100,mana:100}}


public fun heal_spell(hero: &mut Hero) {
    hero.health = hero.health + 10;
    hero.mana = hero.mana - 10;
}

public fun main(x:u64) {
    let sum = x+10;
    debug::print(&sum);
}

public fun practice() {
    let (x, y): (u8, u64) = (10,20);
    debug::print(&x);
    debug::print(&y);
}
