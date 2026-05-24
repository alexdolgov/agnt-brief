// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20Capped.sol";

contract DeepLock is ERC20("DeepLock", "DEEP"), ERC20Capped {
    uint256 constant SUPPLY = 5e6 ether;

    constructor() ERC20Capped(SUPPLY) {
        _mint(address(msg.sender), SUPPLY);
    }

    function _beforeTokenTransfer(address from, address to, uint256 amount) internal virtual override(ERC20, ERC20Capped) {
        super._beforeTokenTransfer(from, to, amount);
    }
}

