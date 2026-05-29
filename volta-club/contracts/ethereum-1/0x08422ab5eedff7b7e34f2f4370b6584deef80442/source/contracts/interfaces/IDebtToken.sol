// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

interface IDebtToken {
    function mint(address account, uint256 amount) external;

    function burnFrom(address account, uint256 amount) external;

    function decimals() external view returns (uint8);
}
