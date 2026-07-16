// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {IBalanceOracleCustom} from "../IBalanceOracleCustom.sol";
import {IERC165} from "@openzeppelin/contracts/utils/introspection/IERC165.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {SafeCast} from "@openzeppelin/contracts/utils/math/SafeCast.sol";
import "src/errors.sol";

/// @title Gearbox Balance Oracle
/// @author kpk
/// @notice Returns the amount of market underlying asset represented by a user's Gearbox market shares, using
/// ERC4626 `convertToAssets`.
/// @dev Supports ERC4626-compliant Gearbox markets and is intended for position valuation in tokenized fund
/// accounting. Does not include Merkl rewards.
contract GearboxMarketBalanceOracle is IBalanceOracleCustom {
    //
    // Libraries
    //
    using Math for uint256;
    using SafeCast for uint256;

    //
    // State
    //

    /// @notice Gearbox Market contract
    IVault public immutable MARKET;

    /// @notice Position metadata tags describing the DeFi position this oracle is associated to.
    PositionMetadata internal _positionMetadata;

    //
    // Constructor
    //

    /// @param market_ Address of the Gearbox Market.
    /// @param positionMetadata_ Metadata for the DeFi position associated with this oracle.
    constructor(address market_, PositionMetadata memory positionMetadata_) {
        if (market_ == address(0)) {
            revert InvalidArguments();
        }

        MARKET = IVault(market_);
        _positionMetadata = positionMetadata_;
    }

    //
    // IBalanceOracleCustom
    //

    /// @inheritdoc IBalanceOracleCustom
    function balanceOf(address underlyingAsset, address safe) external view override returns (int256) {
        if (underlyingAsset != MARKET.asset()) {
            revert InvalidArguments();
        }

        uint256 shares = MARKET.balanceOf(safe);
        // Use ERC4626 convertToAssets function
        uint256 assets = MARKET.convertToAssets(shares);

        return assets.toInt256();
    }

    /// @inheritdoc IBalanceOracleCustom
    function underlyingAssetsSupported() external view override returns (address[] memory) {
        address[] memory tokens = new address[](1);
        tokens[0] = MARKET.asset();
        return tokens;
    }

    /// @inheritdoc IBalanceOracleCustom
    function positionMetadata() external view override returns (PositionMetadata memory) {
        return _positionMetadata;
    }

    /// @inheritdoc IERC165
    function supportsInterface(bytes4 interfaceId) external pure override returns (bool) {
        return interfaceId == type(IBalanceOracleCustom).interfaceId || interfaceId == type(IERC165).interfaceId;
    }
}

/// @title Gearbox Market Interface
/// @notice Interface for interacting with Gearbox ERC4626 markets
interface IVault is IERC20 {
    /// @notice Returns the address of the underlying asset
    /// @return The address of the underlying asset
    function asset() external view returns (address);

    /// @notice Converts shares to assets using current exchange rate
    /// @param shares The amount of shares to convert
    /// @return The equivalent amount of assets
    function convertToAssets(uint256 shares) external view returns (uint256);
}
