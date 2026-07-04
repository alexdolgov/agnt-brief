// SPDX-License-Identifier: MIT

pragma solidity 0.8.26;

import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {SafeCast} from "@openzeppelin/contracts/utils/math/SafeCast.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IERC4626} from "@openzeppelin/contracts/interfaces/IERC4626.sol";
import {IDenManager} from "src/interfaces/core/IDenManager.sol";
import {IAsset} from "src/interfaces/utils/tokens/IAsset.sol";
import {BeraborrowMath} from "src/dependencies/BeraborrowMath.sol";
import {FeeLib} from "src/libraries/FeeLib.sol";
import {PriceLib} from "src/libraries/PriceLib.sol";
import {IFeeHook} from "src/interfaces/utils/integrations/IFeeHook.sol";
import {ITargetICRHook} from "src/interfaces/utils/integrations/ITargetICRHook.sol";
import {IBaseManagedLeveragedVault} from "src/interfaces/core/mlv/base/IBaseManagedLeveragedVault.sol";
import {IBaseManagedLeveragedVaultGetters} from "src/interfaces/core/helpers/mlv/base/IBaseManagedLeveragedVaultGetters.sol";
import {IMetaBeraborrowCore} from "src/interfaces/core/IMetaBeraborrowCore.sol";
import {IPriceFeed} from "src/interfaces/core/IPriceFeed.sol";
import {IBorrowerOperations} from "src/interfaces/core/IBorrowerOperations.sol";

library ManagedLeveragedVaultStorageLib {
    // storage-location constant
    bytes32 private constant ERC4626_LOC = 0x0773e532dfede91f04b12a73d3d2acd361424f41f76b4fb79f090161e36b4e00;
    bytes32 internal constant MLV_VAULT_LOC = 0x12ca37b393c412d053690654fb6d504d2a16c55c2bd10941af581f2221d9c100;

    // ERC4626 storage slots
    uint256 internal constant _ASSET_SLOT = 0;

    // MLV storage slots
    uint256 internal constant _META_BERABORROW_CORE_SLOT = 0;
    uint256 internal constant _DEBT_TOKEN_SLOT = 1;
    uint256 internal constant _COLLATERAL_SLOT = 2;
    uint256 internal constant _MAX_DEVIATION_ICR_IN_BP_SLOT = 2;
    uint256 internal constant _MAX_DEVIATION_TOTAL_ASSETS_IN_BP_SLOT = 2;
    uint256 internal constant _MAX_SLIPPAGE_SWAP_IN_BP_SLOT = 2;
    uint256 internal constant _KEEPER_SLOT = 3;
    uint256 internal constant _TARGET_ICR_HOOK_SLOT = 4;
    uint256 internal constant _FEE_HOOK_SLOT = 5;
    uint256 internal constant _GETTERS_SLOT = 6;

    // bit offsets within slot 2
    uint256 internal constant MAX_DEVIATION_ICR_IN_BP_BITS = 160;
    uint256 internal constant MAX_DEVIATION_TOTAL_ASSETS_IN_BP_BITS = 176;
    uint256 internal constant MAX_SLIPPAGE_SWAP_IN_BP_BITS = 192;

    // ERC4626 simple-slot getters
    function assetSlot() internal pure returns (bytes32) {
        return bytes32(uint256(ERC4626_LOC) + _ASSET_SLOT);
    }

    // MLV simple-slot getters
    function metaBeraborrowCoreSlot() internal pure returns (bytes32) {
        return bytes32(uint256(MLV_VAULT_LOC) + _META_BERABORROW_CORE_SLOT);
    }

    function debtTokenSlot() internal pure returns (bytes32) {
        return bytes32(uint256(MLV_VAULT_LOC) + _DEBT_TOKEN_SLOT);
    }

    function collateralSlot() internal pure returns (bytes32) {
        return bytes32(uint256(MLV_VAULT_LOC) + _COLLATERAL_SLOT);
    }

    function maxDeviationICRInBPSlot() internal pure returns (bytes32) {
        return bytes32(uint256(MLV_VAULT_LOC) + _MAX_DEVIATION_ICR_IN_BP_SLOT);
    }

    function maxDeviationTotalAssetsInBPSlot() internal pure returns (bytes32) {
        return bytes32(uint256(MLV_VAULT_LOC) + _MAX_DEVIATION_TOTAL_ASSETS_IN_BP_SLOT);
    }

    function maxSlippageSwapInBPSlot() internal pure returns (bytes32) {
        return bytes32(uint256(MLV_VAULT_LOC) + _MAX_SLIPPAGE_SWAP_IN_BP_SLOT);
    }

    function keeperSlot() internal pure returns (bytes32) {
        return bytes32(uint256(MLV_VAULT_LOC) + _KEEPER_SLOT);
    }

    function targetICRHookSlot() internal pure returns (bytes32) {
        return bytes32(uint256(MLV_VAULT_LOC) + _TARGET_ICR_HOOK_SLOT);
    }

    function feeHookSlot() internal pure returns (bytes32) {
        return bytes32(uint256(MLV_VAULT_LOC) + _FEE_HOOK_SLOT);
    }

    function gettersSlot() internal pure returns (bytes32) {
        return bytes32(uint256(MLV_VAULT_LOC) + _GETTERS_SLOT);
    }
}

abstract contract BaseManagedLeveragedVaultGetters is IBaseManagedLeveragedVaultGetters {
    using Math for uint256;
    using FeeLib for uint256;
    using PriceLib for uint256;
    using SafeCast for int256;

    IBaseManagedLeveragedVault public immutable vault;
    
    uint256 constant WAD = 1e18;
    uint256 constant BP = 1e4;

    constructor(IBaseManagedLeveragedVault _vault) {
        vault = _vault;
    }

    // ─── ERC4626 getters ──────────────────────────────────────────────
    function asset() public view returns (address) {
        bytes32[] memory slot = _array(ManagedLeveragedVaultStorageLib.assetSlot());
        return address(uint160(uint256(vault.extSloads(slot)[0])));
    }

    // ─── ManagedLeveragedVault getters ──────────────────────────────
    function metaBeraborrowCore() public view returns (address) {
        bytes32[] memory slot = _array(ManagedLeveragedVaultStorageLib.metaBeraborrowCoreSlot());
        return address(uint160(uint256(vault.extSloads(slot)[0])));
    }

    function debtToken() public view returns (address) {
        bytes32[] memory slot = _array(ManagedLeveragedVaultStorageLib.debtTokenSlot());
        return address(uint160(uint256(vault.extSloads(slot)[0])));
    }

    function collateral() public view returns (address) {
        bytes32[] memory slot = _array(ManagedLeveragedVaultStorageLib.collateralSlot());
        return address(uint160(uint256(vault.extSloads(slot)[0])));
    }

    function maxDeviationICRbp() public view returns (uint16) {
        bytes32[] memory slot = _array(ManagedLeveragedVaultStorageLib.maxDeviationICRInBPSlot());
        return uint16(uint256(vault.extSloads(slot)[0]) >> ManagedLeveragedVaultStorageLib.MAX_DEVIATION_ICR_IN_BP_BITS);
    }

    function maxDeviationTotalAssetsInBP() public view returns (uint16) {
        bytes32[] memory slot = _array(ManagedLeveragedVaultStorageLib.maxDeviationTotalAssetsInBPSlot());
        return uint16(uint256(vault.extSloads(slot)[0]) >> ManagedLeveragedVaultStorageLib.MAX_DEVIATION_TOTAL_ASSETS_IN_BP_BITS);
    }

    function maxSlippageSwapInBP() public view returns (uint16) {
        bytes32[] memory slot = _array(ManagedLeveragedVaultStorageLib.maxSlippageSwapInBPSlot());
        return uint16(uint256(vault.extSloads(slot)[0]) >> ManagedLeveragedVaultStorageLib.MAX_SLIPPAGE_SWAP_IN_BP_BITS);
    }

    function keeper() public view returns (address) {
        bytes32[] memory slot = _array(ManagedLeveragedVaultStorageLib.keeperSlot());
        return address(uint160(uint256(vault.extSloads(slot)[0])));
    }

    function feeHook() public view returns (address) {
        bytes32[] memory slot = _array(ManagedLeveragedVaultStorageLib.feeHookSlot());
        return address(uint160(uint256(vault.extSloads(slot)[0])));
    }

    function targetICRHook() public view returns (address) {
        bytes32[] memory slot = _array(ManagedLeveragedVaultStorageLib.targetICRHookSlot());
        return address(uint160(uint256(vault.extSloads(slot)[0])));
    }

    function getters() public view returns (IBaseManagedLeveragedVaultGetters) {
        bytes32[] memory slot = _array(ManagedLeveragedVaultStorageLib.gettersSlot());
        return IBaseManagedLeveragedVaultGetters(address(uint160(uint256(vault.extSloads(slot)[0]))));
    }

    // ─── internal helper ────────────────────────────────────────────
    function _array(bytes32 x) internal pure returns (bytes32[] memory) {
        bytes32[] memory res = new bytes32[](1);
        res[0] = x;
        return res;
    }

    function getCollateralBalance() public view virtual returns (uint256) {}
    function getDebtBalance() public view virtual returns (uint256) {}
    function checkMaxOperationCost(address inputToken, uint256 amountToSwap, uint256 prevTotalAssets) external view virtual {}
    function getPrice(address token) public view virtual returns (uint256) {}
    function getCurrentPositionICR() public view virtual returns (uint256) {}

    function getCollateralValue() public view returns (uint256) {
        uint256 amount = getCollateralBalance();

        return getCollateralValue(amount);
    }

    function getCollateralValue(uint256 amount) public view returns (uint256) {
        address _collateral = collateral();
        uint256 price = getPrice(_collateral);

        return amount.convertToValue(price, IAsset(_collateral).decimals());
    }

    function getDebtValue() public view returns (uint256) {
        uint256 debtBalance = getDebtBalance();

        return getDebtValue(debtBalance);
    }

    function getDebtValue(uint256 amount) public view returns (uint256) {
        address _debtToken = debtToken();
        uint256 price = getPrice(_debtToken);

        return amount.convertToValue(price, IAsset(_debtToken).decimals());
    }

    function getTargetICR() public view returns (uint256) {
        ITargetICRHook _targetICRHook = ITargetICRHook(targetICRHook());

        return _targetICRHook.calcTargetICR();
    }

    function entryFeeInBP(uint256 amount, address caller) external view returns (uint256) {
        IFeeHook _feeHook = IFeeHook(feeHook());
        return _feeHook.calcFee(caller, asset(), amount, IFeeHook.Action.DEPOSIT);
    }

    function exitFeeInBP(uint256 amount, address caller) external view returns (uint256) {
        IFeeHook _feeHook = IFeeHook(feeHook());
        return _feeHook.calcFee(caller, asset(), amount, IFeeHook.Action.WITHDRAW);
    }

    function checkInvariantICR(uint256 currentICR, uint256 targetICR, IBaseManagedLeveragedVault.Tolerance tolerance) external view {
        uint256 maxDelta = Math.min(currentICR, targetICR).mulDiv(maxDeviationICRbp(), BP);

        if (IBaseManagedLeveragedVault.Tolerance.ABOVE == tolerance) {
            if (!BeraborrowMath._isWithinToleranceAbove(currentICR, targetICR, maxDelta)) revert PositionOutOfTargetCR(currentICR, targetICR, maxDelta);
        } else {
            if (!BeraborrowMath._isApproxEqAbs(currentICR, targetICR, maxDelta)) revert PositionOutOfTargetCR(currentICR, targetICR, maxDelta);
        }
    }

    function computeNetColl(
        uint256 nectSurplusInAssets,
        uint256 collToReceive,
        uint256 prevTotalAssets
    ) external view virtual returns (uint256 netColl) {
        uint256 currTotalAssets = vault.totalAssets();
        uint256 totalAssetsDelta = prevTotalAssets - currTotalAssets - nectSurplusInAssets;
        int256 operationProfit = int256(collToReceive) - int256(IERC4626(collateral()).convertToShares(totalAssetsDelta));
        netColl = (int256(collToReceive) + operationProfit).toUint256();
    }
}
