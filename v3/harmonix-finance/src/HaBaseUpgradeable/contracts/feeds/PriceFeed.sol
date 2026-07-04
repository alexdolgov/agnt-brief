// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.34;

import {IPriceFeed} from "../interfaces/IPriceFeed.sol";
import {ErrorsLib} from "../libraries/ErrorsLib.sol";
import {HaBaseUpgradeable} from "../base/HaBaseUpgradeable.sol";

/// @title PriceFeed
/// @notice Single source of truth for asset denomination prices.
/// @dev All prices are expressed as denomination units per 1 full token of the asset,
///      scaled to 1e18. Example: USDC = 1e18 (1 USD), WETH = 2000e18 (2000 USD).
///      Write access is restricted to addresses with PRICE_UPDATER_ROLE on the AccessManager.
contract PriceFeed is IPriceFeed, HaBaseUpgradeable {
    bytes32 public constant PRICE_UPDATER_ROLE = keccak256("PRICE_UPDATER_ROLE");

    // --- Storage ---

    mapping(address => uint256) private _prices;

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(address vaultManagerAddr) external initializer {
        __HaBase_init(vaultManagerAddr);
    }

    // --- Write Functions ---

    /// @inheritdoc IPriceFeed
    function setPrice(address asset, uint256 price) external onlyRole(PRICE_UPDATER_ROLE) {
        if (asset == address(0)) revert ErrorsLib.ZeroAddress();
        if (price == 0) revert ZeroPrice();

        uint256 oldPrice = _prices[asset];
        _prices[asset] = price;

        emit PriceUpdated(asset, oldPrice, price);
    }

    // --- View Functions ---

    /// @inheritdoc IPriceFeed
    function getPrice(address asset) external view returns (uint256) {
        uint256 price = _prices[asset];
        if (price == 0) revert AssetNotSupported(asset);
        return price;
    }

    /// @inheritdoc IPriceFeed
    function hasPrice(address asset) external view returns (bool) {
        return _prices[asset] != 0;
    }
}
