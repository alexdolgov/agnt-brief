// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IBank {
    // Events
    event PrecompiledBankMint(address indexed from, address indexed to, uint256 amount);
    event PrecompiledBankBurn(address indexed from, address indexed to, uint256 amount);
    event PrecompiledBankTransfer(address indexed from, address indexed to, uint256 amount);
    event PrecompiledBankApproval(address indexed owner, address indexed spender, uint256 value);
    event PrecompiledBankRevoke(address indexed owner, address indexed spender, uint256 value);

    // Methods
    function mint(address to, uint256 amount) external returns (bool success);

    function burn(address from, uint256 amount) external returns (bool success);

    function transfer(address to, uint256 amount) external returns (bool success);

    function transferFrom(address from, address to, uint256 amount) external returns (bool success);

    function multiTransfer(address[] calldata to, uint256[] calldata amount) external returns (bool success);

    function approve(address spender, uint256 value) external returns (bool success);

    function revoke(address spender) external returns (bool success);

    function balanceOf(address account) external view returns (uint256 balance);

    function totalSupply() external view returns (uint256 totalSupply);

    function allowance(address owner, address spender) external view returns (uint256 amount);
}
