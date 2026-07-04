// SPDX-License-Identifier: MIT

pragma solidity 0.6.12;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract Dummy is ERC20("Dummy Token", "DUMMY"){
    using SafeMath for uint256;

    // Define the Nerve token 
    constructor() public {
        _mint(msg.sender, 1000000000000000000);
    }
}