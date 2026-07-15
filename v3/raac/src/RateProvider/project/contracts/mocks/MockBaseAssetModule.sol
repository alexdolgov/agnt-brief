// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

/// @title MockBaseAssetModule
/// @notice Mock ERC-4626 vault for pmUSD (SpmUSD). Supports configurable price-per-share
///         to simulate yield accrual. Transfers more pmUSD to this contract to increase PPF.
contract MockBaseAssetModule is ERC20 {
    using Math for uint256;
    using SafeERC20 for IERC20;

    IERC20 public immutable underlying;
    uint256 public maxDepositAmount;

    constructor(
        address _baseAsset,
        string memory name_,
        string memory symbol_
    ) ERC20(name_, symbol_) {
        underlying = IERC20(_baseAsset);
        maxDepositAmount = type(uint256).max;
    }

    function asset() external view returns (address) {
        return address(underlying);
    }

    function decimals() public pure override returns (uint8) {
        return 18;
    }

    function totalAssets() public view returns (uint256) {
        return underlying.balanceOf(address(this));
    }

    function convertToShares(uint256 assets) public view returns (uint256) {
        uint256 supply = totalSupply();
        uint256 total = totalAssets();
        if (supply == 0 || total == 0) return assets;
        return assets.mulDiv(supply, total, Math.Rounding.Floor);
    }

    function convertToAssets(uint256 shares) public view returns (uint256) {
        uint256 supply = totalSupply();
        uint256 total = totalAssets();
        if (supply == 0 || total == 0) return shares;
        return shares.mulDiv(total, supply, Math.Rounding.Floor);
    }

    function previewRedeem(uint256 shares) public view returns (uint256) {
        return convertToAssets(shares);
    }

    function maxDeposit(address) external view returns (uint256) {
        return maxDepositAmount;
    }

    function setMaxDeposit(uint256 _max) external {
        maxDepositAmount = _max;
    }

    function deposit(uint256 assets, address receiver) external returns (uint256 shares) {
        shares = convertToShares(assets);
        underlying.safeTransferFrom(msg.sender, address(this), assets);
        _mint(receiver, shares);
    }

    function redeem(uint256 shares, address receiver, address owner) external returns (uint256 assets) {
        assets = convertToAssets(shares);
        if (msg.sender != owner) {
            _spendAllowance(owner, msg.sender, shares);
        }
        _burn(owner, shares);
        underlying.safeTransfer(receiver, assets);
    }

    function withdraw(uint256 assets, address receiver, address owner) external returns (uint256 shares) {
        shares = convertToShares(assets);
        if (shares * totalAssets() / totalSupply() < assets) {
            shares += 1;
        }
        if (msg.sender != owner) {
            _spendAllowance(owner, msg.sender, shares);
        }
        _burn(owner, shares);
        underlying.safeTransfer(receiver, assets);
    }
}
