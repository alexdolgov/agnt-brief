// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract RescueStrat {
    address public governance = 0xF930EBBd05eF8b25B1797b9b2109DDC9B0d43063;
    address public want = 0x075b1bb99792c9E1041bA13afEf80C91a1e70fB3;

    constructor() {}

    function deposit() external {}

    function rescueFunds(address token) external {
        uint256 balance = IERC20(token).balanceOf(address(this));
        IERC20(token).transfer(governance, balance);
    }
}
