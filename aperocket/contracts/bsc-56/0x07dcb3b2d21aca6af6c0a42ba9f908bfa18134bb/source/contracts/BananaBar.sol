// SPDX-License-Identifier: MIT

pragma solidity 0.6.12;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/math/SafeMath.sol";

// BananaBar is the coolest bar in town. You come in with some Banana, and leave with more! The longer you stay, the more Banana you get.
//
// This contract handles swapping to and from xBanana, ApeSwap's staking token.
contract BananaBar is ERC20("BananaBar", "xBANANA"){
    using SafeMath for uint256;
    IERC20 public banana;

    // Define the Banana token contract
    constructor(IERC20 _banana) public {
        banana = _banana;
    }

    // Enter the bar. Pay some BANANAs. Earn some shares.
    // Locks Banana and mints xBanana
    function enter(uint256 _amount) public {
        // Gets the amount of Banana locked in the contract
        uint256 totalBanana = banana.balanceOf(address(this));
        // Gets the amount of xBanana in existence
        uint256 totalShares = totalSupply();
        // If no xBanana exists, mint it 1:1 to the amount put in
        if (totalShares == 0 || totalBanana == 0) {
            _mint(msg.sender, _amount);
        } 
        // Calculate and mint the amount of xBanana the Banana is worth. The ratio will change overtime, as xBanana is burned/minted and Banana deposited + gained from fees / withdrawn.
        else {
            uint256 what = _amount.mul(totalShares).div(totalBanana);
            _mint(msg.sender, what);
        }
        // Lock the Banana in the contract
        banana.transferFrom(msg.sender, address(this), _amount);
    }

    // Leave the bar. Claim back your BANANAs.
    // Unlocks the staked + gained Banana and burns xBanana
    function leave(uint256 _share) public {
        // Gets the amount of xBanana in existence
        uint256 totalShares = totalSupply();
        // Calculates the amount of Banana the xBanana is worth
        uint256 what = _share.mul(banana.balanceOf(address(this))).div(totalShares);
        _burn(msg.sender, _share);
        banana.transfer(msg.sender, what);
    }
}
