// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";

/// @title MockSavingsToken
/// @notice Mock ERC4626 savings token for testing. Exposes configurable convertToAssets().
contract MockSavingsToken is ERC20 {
    uint8 private _decimals;
    uint256 private _pricePerShare; // assets per 1 full share (10^decimals)
    address private _asset;

    constructor(
        string memory name_,
        string memory symbol_,
        uint8 decimals_,
        uint256 initialPricePerShare_,
        address asset_
    ) ERC20(name_, symbol_) {
        _decimals = decimals_;
        _pricePerShare = initialPricePerShare_;
        _asset = asset_;
    }

    function asset() external view returns (address) {
        return _asset;
    }

    function decimals() public view override returns (uint8) {
        return _decimals;
    }

    /// @notice ERC-4626 convertToAssets — returns underlying assets for a given share amount.
    /// @dev Scales linearly: convertToAssets(shares) = shares * _pricePerShare / 10^decimals
    function convertToAssets(uint256 shares) external view returns (uint256) {
        return (shares * _pricePerShare) / (10 ** _decimals);
    }

    /// @dev Set the price per share (assets returned for 10^decimals shares).
    function setPricePerShare(uint256 newPrice) external {
        _pricePerShare = newPrice;
    }

    function mint(address to, uint256 amount) external {
        _mint(to, amount);
    }
}
