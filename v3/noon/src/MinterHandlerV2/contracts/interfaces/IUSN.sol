// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

interface IUSN {
    // Events
    event AdminChanged(address indexed previousAdmin, address indexed newAdmin);
    event Blacklisted(address indexed account);
    event Unblacklisted(address indexed account);
    event Mint(address indexed to, uint256 amount);
    event Burn(address indexed from, uint256 amount);

    // Custom errors
    error ZeroAddress();
    error OnlyAdminCanMint();
    error BlacklistedAddress();

    // Functions
    function admin() external view returns (address);
    function MINTER_ROLE() external view returns (bytes32);

    function decimals() external view returns (uint8);

    function mint(address to, uint256 amount) external;
    function burn(uint256 amount) external;
    function burnFrom(address from, uint256 amount) external;
}
