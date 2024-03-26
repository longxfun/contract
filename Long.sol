// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract Long is ERC20("Long", "LONG")  {
    //Website: https://long.fun

    uint256 maxSupply = 1_000_000_000_000 ether;

    //Donation to $LONG can be sent to fundMultisigWallet
    address fundMultisigWallet = 0x87432579C3aC0fBC65cb7Dd0AA023Dca5E783810;
    
    constructor()  {
        _mint(fundMultisigWallet, maxSupply);
    }
}