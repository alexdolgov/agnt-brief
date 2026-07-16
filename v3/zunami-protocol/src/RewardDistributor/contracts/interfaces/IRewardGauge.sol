// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

interface IRewardGauge {
    function distribute(IERC20 token, uint256 amount) external;
}
