// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

interface IBIFKN314Wrapper {
    function originalToken() external view returns (IERC20);

    function wrap(uint256 amount) external returns (uint256 wrappedAmount);

    function unwrap(uint256 amount) external returns (uint256 unwrappedAmount);

    function wrappedToken() external view returns (IERC20);

    function originalTokenDecimals() external view returns (uint8);

    function wrappedTokenDecimals() external view returns (uint8);

    function paused() external view returns (bool);
}
