// Module Declaration
/// Module: sui_uniport_johnny
module sui_uniport_johnny::j_scripts;

// Import required modules
// Sui coin parent module and the childmodule TreasuryCap
use sui::coin::{Self, TreasuryCap};

// Initialize a public custom type of J_SCRIPTS and assign it the drop trait or ability
public struct J_SCRIPTS has drop {

}

// Module entrypoint, called when the publish command is ran
fun init(witness: J_SCRIPTS, ctx: &mut TxContext) {

    // Define your variables in accordance to the token standard
    let multiplier: u64 = 100000000; // This is a value to multiply the token values in other to achiece their decimals

    let decimals: u8 = 8; // This is the number of decimal points available to ur token and corresponds to the multiplier

    let ( mut treasury, metadata ) = coin::create_currency ( // Defined function of the coin module to create tokens
        witness,
        decimals,
        b"SRTS", // Token ticker symbol
        b"ScriptsSOCS", // Token Name
        b"JohnnyScripts at SOCSC", // Token Description
        option::none(), // Token url, can be set to a url pointing to an img maaybe on IPFS or any other online storage including google
        ctx // Transaction Context
    );

    let initial_coins = coin::mint( &mut treasury, 300 * multiplier, ctx ); // Mint 300 tokens to treasury
    transfer::public_transfer(treasury, tx_context::sender(ctx)); // Transfer treasury cap (tokens) to publisher 
    transfer::public_transfer(initial_coins, tx_context::sender(ctx)); // Transfer treasury cap (tokens) to publisher 

    transfer::public_freeze_object(metadata); // Freeze metadata to make immutable
    // transfer::public_transfer(treasury, tx_context::sender(ctx)); // Transfer treasury cap (tokens) to publisher 
}

public fun mint( // Define a public function to mint new tokens
    treasury_cap: &mut TreasuryCap<J_SCRIPTS>, // Mutable reference to the treasury cap
    amount: u64, // Amount to mint
    recipient: address, // The address of the receiver
    ctx: &mut TxContext // The Transaction context
) {
    let coin_mint = coin::mint(treasury_cap, amount, ctx); // Create a mint object with the specified token count
    transfer::public_transfer(coin_mint, recipient) // Transfer the tokens to the reciept
}




