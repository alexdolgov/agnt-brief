// SPDX-License-Identifier: MIT
//
//                  /\  ____
//                  <> ( oo )
//                  <>_| ^^ |_
//                  <>   @    \
//                 /~~\ . . _ |
//                /~~~~\    | |
//               /~~~~~~\/ _| |
//               |[][][]/ / [m]
//               |[][][[m]
//               |[][][]|
//               |[][][]|
//               |[][][]|
//               |[][][]|
//               |[][][]|
//               |[][][]|
//               |[][][]|
//               |[][][]|
//               |[|--|]|
//               |[|  |]|
//               ========
//              ==========
//              |[[    ]]|
//              ==========
//

pragma solidity ^0.8.20;

// #LongTheKong
// avakong.com
// x.com/avakongs
// x.com/KONGavax
// ape.avakong.com

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

// I'm here for the $KONG - CryptoQuine prolly said this...

contract KONG is ERC20, Ownable(msg.sender) {
    // Added state variable for lubrication - gently does it!
    // Lubrication prevents any wallet receiving more than 1% of KONG in the opening days.
    bool public lubricating = true;
    address public liquidityPool;

    // Mint the totalSupply (69.420 T) to the deployer
    // The original King Kong was released in 1933.
    constructor() ERC20("KONG", "KONG") {
        _mint(msg.sender, 19330000000000 * 10 ** 18);
    }

    // Function to set lubricating state
    function setLubricating(bool _state) external onlyOwner {
        lubricating = _state;
    }

    // Define the LP address to enable trading!
    function setLiquidityPool(address _liquidityPool) external onlyOwner {
        liquidityPool = _liquidityPool;
    }

    // Override _update function to include lubricating logic (previously _beforeTokenTransfer)
    function _update(
        address from,
        address to,
        uint256 amount
    ) internal virtual override {
        super._update(from, to, amount);
        // If liquidityPool is address(0) we've not yet enabled trading. Liquidity Loading....
        if (liquidityPool == address(0)) {
            require(
                from == owner() || to == owner(),
                "Patience - Trading Not Started Yet!"
            );
            return;
        }
        // Allow deployer (owner) to send/receive any amount and the liquidityPool to receive any amount.
        // This allows for loading of the LP, and for people to sell tokens into the LP whilst lubrication in progress.
        if (lubricating && from != owner() && to != liquidityPool) {
            // Require that a receiving wallet will not hold more than 1% of supply after a transfer whilst lubrication is in effect
            require(
                balanceOf(to) <= totalSupply() / 1000,
                "Just getting warmed up, limit of 1% of KONG can be purchased until Lubrication is complete!"
            );
        }
    }

    // Renounce the contract and pass ownership to address(0) to lock the contract forever more.
    function renounceTokenOwnership() public onlyOwner {
        renounceOwnership();
    }
}
// $KONG is a meme coin with no intrinsic value or expectation of financial return. There is no formal team or roadmap. The coin is completely useless and for entertainment purposes only.
