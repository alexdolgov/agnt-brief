// SPDX-License-Identifier: MIT

pragma solidity 0.8.26;

import {SafeCast} from "@openzeppelin/contracts/utils/math/SafeCast.sol";
import {IERC4626} from "@openzeppelin/contracts/interfaces/IERC4626.sol";
import {IAsset} from "src/interfaces/utils/tokens/IAsset.sol";
import {IBaseManagedLeveragedVault} from "src/interfaces/core/mlv/base/IBaseManagedLeveragedVault.sol";
import {BeraborrowManagedLeveragedVaultGetters, ManagedLeveragedVaultStorageLib} from "src/core/helpers/mlv/protocol/v1/BeraborrowManagedLeveragedVaultGetters.sol";

/// @dev Handles the asset of the MLV not being the same as the asset of the collateral
contract CharmManagedLeveragedVaultGettersV1 is BeraborrowManagedLeveragedVaultGetters {
    using SafeCast for int256;

    constructor(IBaseManagedLeveragedVault _vault) BeraborrowManagedLeveragedVaultGetters(_vault) {}

    function computeNetColl(
        uint256 nectSurplusInAssets,
        uint256 collToReceive,
        uint256 prevTotalAssets
    ) external view override returns (uint256 netColl) {
        uint256 currTotalAssets = vault.totalAssets();

        uint256 totalAssetsDelta = prevTotalAssets - currTotalAssets - nectSurplusInAssets;
        uint256 totalAssetsDeltaInCollVaultAsset = _assetToCollVaultAsset(totalAssetsDelta);

        int256 operationProfit = int256(collToReceive) - int256(IERC4626(collateral()).convertToShares(totalAssetsDeltaInCollVaultAsset));

        netColl = (int256(collToReceive) + operationProfit).toUint256();
    }

    function _assetToCollVaultAsset(uint256 assets) internal view returns (uint256 collVaultAssetAmount) {
        address collVaultAsset = IERC4626(collateral()).asset();

        uint256 collVaultAssetPrice = getPrice(collVaultAsset);
        uint256 assetPrice = getPrice(_asset());
        uint256 collVaultAssetScaling = 10 ** uint256(IAsset(collVaultAsset).decimals());
        uint256 assetDecimalsScaling = 10 ** uint256(IAsset(_asset()).decimals());

        // An overflow would require a very high decimal coll vault asset, or really high price
        collVaultAssetAmount = assets * assetPrice * collVaultAssetScaling / (collVaultAssetPrice * assetDecimalsScaling);
    }

    function _asset() internal view returns (address) {
        bytes32[] memory slots = new bytes32[](1);
        slots[0] = ManagedLeveragedVaultStorageLib.assetSlot();

        bytes32[] memory r = vault.extSloads(slots);

        return address(uint160(uint256(r[0])));
    }
}