// SPDX-License-Identifier: UNLICENSED

pragma solidity 0.6.12;

import '@openzeppelin/contracts/token/ERC20/IERC20.sol';

interface IMintable is IERC20 {
    function mint(address to, uint256 amount) external returns (bool);
    function destroy(uint256 amount) external returns (bool);
}
