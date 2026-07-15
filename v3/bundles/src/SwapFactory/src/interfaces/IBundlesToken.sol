// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

interface IBundlesToken {
    error InvalidAddress();
    error MaxSupplyExceeded();
    error ZeroAmount();

    event Migrated(address indexed account, uint256 value);

    function MAX_SUPPLY() external view returns (uint256);
    function antfarmToken() external view returns (address);
    function migrate(uint256 _value) external;
    function migrateFor(address _account, uint256 _value) external;
    function burn(uint256 _value) external;
    function balanceOf(address account) external view returns (uint256);
    function totalSupply() external view returns (uint256);
}
