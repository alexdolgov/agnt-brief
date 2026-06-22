// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.21;

import "./SingletonAssetOracle.sol";
import "./dependencies/aave/IAaveV3Pool.sol";

/// @title AaveV3PositionOracle.
/// @notice Oracle for Aave V3 borrowing positions. Also used as a phantom asset
///         to represent the value of the position in the vault.
contract AaveV3PositionOracle is SingletonAssetOracle {
    /// @dev The scale for upscaling position value to 18 decimals.
    uint256 private constant _POSITION_VALUE_RESCALE_FACTOR = 1e10;
    /// @dev The name of the token.
    string private constant _NAME = "AaveV3PositionOracle";
    /// @dev The symbol of the token.
    string private constant _SYMBOL = "A3PO";

    /// @dev Aave V3 pool address.
    IAaveV3Pool public immutable aavePool;

    /// ERRORS ///

    /// @notice Thrown when the Aave V3 pool address is zero.
    error AeraPeriphery__AavePoolIsZeroAddress();

    /// FUNCTIONS ///

    /// @notice Constructor for the AaveV3PositionOracle contract.
    /// @param vault_ Address of the AeraVaultV2 contract.
    /// @param aavePool_ Address of the Aave V3 pool.
    /// @param numerairePriceFeed_ Address of the numeraire price feed.
    /// @param invertPrice_ Whether to invert the price from numeraire price feed.
    constructor(
        address vault_,
        address aavePool_,
        address numerairePriceFeed_,
        bool invertPrice_
    ) SingletonAssetOracle(vault_, numerairePriceFeed_, invertPrice_) {
        // Requirements: check that the Aave V3 pool address is not zero.
        if (aavePool_ == address(0)) {
            revert AeraPeriphery__AavePoolIsZeroAddress();
        }
        // Effects: set the Aave V3 pool address.
        aavePool = IAaveV3Pool(aavePool_);
    }

    /// @inheritdoc AbstractAssetOracle
    function name() external pure override returns (string memory) {
        return _NAME;
    }

    /// @inheritdoc AbstractAssetOracle
    function symbol() external pure override returns (string memory) {
        return _SYMBOL;
    }

    /// @inheritdoc AbstractAssetOracle
    function _getValue() internal view override returns (uint256) {
        (uint256 totalCollateralBase, uint256 totalDebtBase,,,,) =
            aavePool.getUserAccountData(_vault);

        if (totalCollateralBase < totalDebtBase) return 0;

        return _toNumeraireAmount(totalCollateralBase - totalDebtBase)
            * _POSITION_VALUE_RESCALE_FACTOR;
    }
}
