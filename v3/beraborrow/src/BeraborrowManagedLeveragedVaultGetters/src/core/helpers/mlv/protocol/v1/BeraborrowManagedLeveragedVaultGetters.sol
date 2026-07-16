// SPDX-License-Identifier: MIT

pragma solidity 0.8.26;

import {BaseManagedLeveragedVaultGetters, IBaseManagedLeveragedVaultGetters} from "src/core/helpers/mlv/base/BaseManagedLeveragedVaultGetters.sol";
import {ManagedLeveragedVaultGettersV1, IBaseManagedLeveragedVault, ManagedLeveragedVaultStorageLib} from "src/core/helpers/mlv/base/v1/ManagedLeveragedVaultGettersV1.sol";
import {IBeraborrowManagedLeveragedVaultGetters} from "src/interfaces/core/helpers/mlv/protocols/v1/IBeraborrowManagedLeveragedVaultGetters.sol";
import {BeraborrowGettersLib} from "src/core/helpers/mlv/base/lib/BeraborrowGettersLib.sol";
import {IDenManager} from "src/interfaces/core/IDenManager.sol";
import {IBorrowerOperations} from "src/interfaces/core/IBorrowerOperations.sol";
import {IMetaBeraborrowCore} from "src/interfaces/core/IMetaBeraborrowCore.sol";
import {ITargetICRHook} from "src/interfaces/utils/integrations/ITargetICRHook.sol";
import {IFeeHook} from "src/interfaces/utils/integrations/IFeeHook.sol";

contract BeraborrowManagedLeveragedVaultGetters is ManagedLeveragedVaultGettersV1, IBeraborrowManagedLeveragedVaultGetters {
    using BeraborrowGettersLib for BeraborrowGettersLib.Context;

    uint256 internal constant _BORROWER_OPERATIONS_SLOT = 7;
    uint256 internal constant _DEN_MANAGER_SLOT = 8;
    uint256 internal constant _LEVERAGE_ROUTER_SLOT = 9;
    uint256 internal constant _DELEVERAGE_ROUTER_SLOT = 10;

    function borrowerOperationsSlot() internal pure returns (bytes32) {
        return bytes32(uint256(ManagedLeveragedVaultStorageLib.MLV_VAULT_LOC) + _BORROWER_OPERATIONS_SLOT);
    }

    function denManagerSlot() internal pure returns (bytes32) {
        return bytes32(uint256(ManagedLeveragedVaultStorageLib.MLV_VAULT_LOC) + _DEN_MANAGER_SLOT);
    }

    function leverageRouterSlot() internal pure returns (bytes32) {
        return bytes32(uint256(ManagedLeveragedVaultStorageLib.MLV_VAULT_LOC) + _LEVERAGE_ROUTER_SLOT);
    }

    function deleverageRouterSlot() internal pure returns (bytes32) {
        return bytes32(uint256(ManagedLeveragedVaultStorageLib.MLV_VAULT_LOC) + _DELEVERAGE_ROUTER_SLOT);
    }

    constructor(IBaseManagedLeveragedVault _vault) ManagedLeveragedVaultGettersV1(_vault) {}

    function borrowerOperations() public view returns (address) {
        bytes32[] memory slot = _array(borrowerOperationsSlot());
        return address(uint160(uint256(vault.extSloads(slot)[0])));
    }

    function denManager() public view returns (address) {
        bytes32[] memory slot = _array(denManagerSlot());
        return address(uint160(uint256(vault.extSloads(slot)[0])));
    }

    function leverageRouter() public view returns (address) {
        bytes32[] memory slot = _array(leverageRouterSlot());
        return address(uint160(uint256(vault.extSloads(slot)[0])));
    }

    function deleverageRouter() public view returns (address) {
        bytes32[] memory slot = _array(deleverageRouterSlot());
        return address(uint160(uint256(vault.extSloads(slot)[0])));
    }

    function getCollateralBalance() public view override returns (uint256) {
        return _getBeraborrowGettersContext().getCollateralBalance();
    }

    function getDebtBalance() public view override returns (uint256) {
        return _getBeraborrowGettersContext().getDebtBalance();
    }

    function checkMaxOperationCost(address inputToken, uint256 amountToSwap, uint256 prevTotalAssets) external view override {
        _getBeraborrowGettersContext().checkMaxOperationCost(inputToken, amountToSwap, prevTotalAssets);
    }

    function getPrice(address token) public view override returns (uint256) {
        return _getBeraborrowGettersContext().getPrice(token);
    }

    function getCurrentPositionICR() public view override returns (uint256) {
        return _getBeraborrowGettersContext().getCurrentPositionICR();
    }

    function _getBeraborrowGettersContext()
        private
        view
        returns (BeraborrowGettersLib.Context memory ctx)
    {
        // Use _array() as a base, then resize in assembly to avoid a second allocation.
        // We only need 6 sloads because maxDeviationTotalAssetsInBP & maxSlippageSwapInBP share the same slot (#2).
        bytes32[] memory slots = new bytes32[](8);
        slots[0] = ManagedLeveragedVaultStorageLib.assetSlot();
        slots[1] = ManagedLeveragedVaultStorageLib.metaBeraborrowCoreSlot();
        slots[2] = ManagedLeveragedVaultStorageLib.debtTokenSlot();
        slots[3] = ManagedLeveragedVaultStorageLib.targetICRHookSlot();
        slots[4] = ManagedLeveragedVaultStorageLib.feeHookSlot();
        // packed: ICR bp, totalAssets bp, slippage bp, collateral
        slots[5] = ManagedLeveragedVaultStorageLib.maxDeviationICRInBPSlot();
        slots[6] = denManagerSlot();
        slots[7] = borrowerOperationsSlot();

        bytes32[] memory r = vault.extSloads(slots);

        address asset_ = address(uint160(uint256(r[0])));
        address core_  = address(uint160(uint256(r[1])));
        address debt_  = address(uint160(uint256(r[2])));
        address target_= address(uint160(uint256(r[3])));
        address fee_   = address(uint160(uint256(r[4])));
        uint256 packed = uint256(r[5]);
        address den_   = address(uint160(uint256(r[6])));
        address bo_    = address(uint160(uint256(r[7])));

        uint16 maxDevTotalAssetsBp = uint16(packed >> ManagedLeveragedVaultStorageLib.MAX_DEVIATION_TOTAL_ASSETS_IN_BP_BITS);
        uint16 maxSlippageSwapBp   = uint16(packed >> ManagedLeveragedVaultStorageLib.MAX_SLIPPAGE_SWAP_IN_BP_BITS);

        ctx = BeraborrowGettersLib.Context({
            asset: asset_,
            vault: address(vault),
            metaBeraborrowCore: IMetaBeraborrowCore(core_),
            denManager: IDenManager(den_),
            borrowerOperations: IBorrowerOperations(bo_),
            debtToken: debt_,
            targetICRHook: ITargetICRHook(target_),
            feeHook: IFeeHook(fee_),
            maxDeviationTotalAssetsInBP: maxDevTotalAssetsBp,
            maxSlippageSwapInBP: maxSlippageSwapBp
        });
    }
}