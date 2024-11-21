module sui_nft::nft {
    // use sui::object::{Self, UID};
    // use sui::transfer;
    // use sui::tx_context::{Self,TxContext};
    use std::string::String;

    public struct NFT has key,store {
        id: UID,
        name:String,
        description:String
    }
    public entry fun mint(name:String,description:String, ctx:&mut TxContext) {
        let nft:NFT = NFT {
            id: object::new(ctx),
            name,
            description
        };
        let sender = tx_context::sender(ctx);
        transfer::public_transfer(nft, sender);
    }
    
    #[allow(lint(custom_state_change))]
    public entry fun transfer(nft:NFT,recipient:address) {
        transfer::transfer(nft, recipient);
    }

}