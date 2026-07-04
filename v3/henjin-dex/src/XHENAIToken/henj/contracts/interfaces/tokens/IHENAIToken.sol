// SPDX-License-Identifier: MIT
pragma solidity =0.7.6;

import "@openzeppelin/contracts@3/token/ERC20/IERC20.sol";

interface IHENAIToken is IERC20 {
    function burn(uint256 amount) external;
}
