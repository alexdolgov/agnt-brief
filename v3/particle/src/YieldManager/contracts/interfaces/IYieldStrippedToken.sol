// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

interface IYieldStrippedToken {
    function token() external view returns (address);
    function totalSupply() external view returns (uint256);
    function wrap(uint256 amount) external returns (uint256);
    function unwrapTo(uint256 amount, address to) external returns (uint256);
    function mint(address account, uint256 amount) external;
    function burnFrom(address account, uint256 amount) external;
}
