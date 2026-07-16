// SPDX-License-Identifier: MIT

pragma solidity 0.8.26;

import {IManagedLeveragedVault} from "src/interfaces/core/boyco/IManagedLeveragedVault.sol";
import {ManagedLeveragedVaultStorageLib} from "src/libraries/ManagedLeveragedVaultStorageLib.sol";

contract ManagedLeveragedVaultGetters {
    IManagedLeveragedVault public immutable vault;

    constructor(IManagedLeveragedVault _vault) {
        vault = _vault;
    }

    // ─── BoycoVault getters ─────────────────────────────────────────
    function metaCore() public view returns (address) {
        bytes32[] memory slot = _array(ManagedLeveragedVaultStorageLib.metaCoreSlot());
        return address(uint160(uint256(vault.extSloads(slot)[0])));
    }

    function borrowerOps() public view returns (address) {
        bytes32[] memory slot = _array(ManagedLeveragedVaultStorageLib.borrowerOpsSlot());
        return address(uint160(uint256(vault.extSloads(slot)[0])));
    }

    function lsp() public view returns (address) {
        bytes32[] memory slot = _array(ManagedLeveragedVaultStorageLib.lspSlot());
        return address(uint160(uint256(vault.extSloads(slot)[0])));
    }

    function denManager() public view returns (address) {
        bytes32[] memory slot = _array(ManagedLeveragedVaultStorageLib.denManagerSlot());
        return address(uint160(uint256(vault.extSloads(slot)[0])));
    }

    function collVault() public view returns (address) {
        bytes32[] memory slot = _array(ManagedLeveragedVaultStorageLib.collVaultSlot());
        return address(uint160(uint256(vault.extSloads(slot)[0])));
    }

    function nect() public view returns (address) {
        bytes32[] memory slot = _array(ManagedLeveragedVaultStorageLib.nectSlot());
        return address(uint160(uint256(vault.extSloads(slot)[0])));
    }

    function collVaultRouter() public view returns (address) {
        bytes32[] memory slot = _array(ManagedLeveragedVaultStorageLib.collVaultRouterSlot());
        return address(uint160(uint256(vault.extSloads(slot)[0])));
    }

    function denICR() public view returns (uint64) {
        bytes32[] memory slot = _array(ManagedLeveragedVaultStorageLib.denICRSlot());
        return uint64(uint256(vault.extSloads(slot)[0]) >> ManagedLeveragedVaultStorageLib.DEN_ICR_BITS);
    }

    function keeper() public view returns (address) {
        bytes32[] memory slot = _array(ManagedLeveragedVaultStorageLib.keeperSlot());
        return address(uint160(uint256(vault.extSloads(slot)[0]) >> ManagedLeveragedVaultStorageLib.KEEPER_BITS));
    }

    function isAuthorized(address who) external view returns (bool) {
        bytes32[] memory slot = _array(ManagedLeveragedVaultStorageLib.boycoAuthMapSlot(who));
        return uint8(uint256(vault.extSloads(slot)[0])) == 1;
    }

    // ─── ManagedLeveragedVault getters ──────────────────────────────
    function exposureToken() public view returns (address) {
        bytes32[] memory slot = _array(ManagedLeveragedVaultStorageLib.exposureTokenSlot());
        return address(uint160(uint256(vault.extSloads(slot)[0])));
    }

    function maxDeviationICRbp() public view returns (uint16) {
        bytes32[] memory slot = _array(ManagedLeveragedVaultStorageLib.maxDeviationICRbpSlot());
        return uint16(uint256(vault.extSloads(slot)[0]) >> ManagedLeveragedVaultStorageLib.MAX_DEV_ICR_BP_BITS);
    }

    function maxWithdrawalLossbp() public view returns (uint16) {
        bytes32[] memory slot = _array(ManagedLeveragedVaultStorageLib.maxWithdrawalLossbpSlot());
        return uint16(uint256(vault.extSloads(slot)[0]) >> ManagedLeveragedVaultStorageLib.MAX_WD_LOSS_BP_BITS);
    }

    function maxCompensationbp() public view returns (uint16) {
        bytes32[] memory slot = _array(ManagedLeveragedVaultStorageLib.maxCompSlot());
        return uint16(uint256(vault.extSloads(slot)[0]) >> ManagedLeveragedVaultStorageLib.MAX_COMP_BP_BITS);
    }

    function entryFeebp() public view returns (uint16) {
        bytes32[] memory slot = _array(ManagedLeveragedVaultStorageLib.entryFeebpSlot());
        return uint16(uint256(vault.extSloads(slot)[0]) >> ManagedLeveragedVaultStorageLib.ENTRY_FEE_BP_BITS);
    }

    function exitFeebp() public view returns (uint16) {
        bytes32[] memory slot = _array(ManagedLeveragedVaultStorageLib.exitFeebpSlot());
        return uint16(uint256(vault.extSloads(slot)[0]) >> ManagedLeveragedVaultStorageLib.EXIT_FEE_BP_BITS);
    }

    function realizeLossThrbp() public view returns (uint16) {
        bytes32[] memory slot = _array(ManagedLeveragedVaultStorageLib.realizeLossThrSlot());
        return uint16(uint256(vault.extSloads(slot)[0]) >> ManagedLeveragedVaultStorageLib.REALIZE_LOSS_THR_BITS);
    }

    function epochOffset() public view returns (uint256) {
        bytes32[] memory slot = _array(ManagedLeveragedVaultStorageLib.epochOffsetSlot());
        return uint256(uint256(vault.extSloads(slot)[0]));
    }

    function withdrawableWrappedAssets() external view returns (uint256) {
        bytes32[] memory slot = _array(ManagedLeveragedVaultStorageLib.withdrawableWrappedAssetsSlot());
        return uint256(uint256(vault.extSloads(slot)[0]));
    }

    function threshold(bytes32 key) external view returns (uint16) {
        bytes32[] memory slot = _array(ManagedLeveragedVaultStorageLib.thresholdMapSlot(key));
        return uint16(uint256(vault.extSloads(slot)[0]));
    }

    function reportAt(uint256 idx) external view returns (bytes32) {
        bytes32[] memory slot = _array(ManagedLeveragedVaultStorageLib.reportsMapSlot(idx));
        return vault.extSloads(slot)[0];
    }

    function swapperWhitelist(address swapper) external view returns (bool) {
        bytes32[] memory slot = _array(ManagedLeveragedVaultStorageLib.swapperWhitelistSlot(swapper));
        return uint8(uint256(vault.extSloads(slot)[0])) == 1;
    }

    // ─── internal helper ────────────────────────────────────────────
    function _array(bytes32 x) private pure returns (bytes32[] memory) {
        bytes32[] memory res = new bytes32[](1);
        res[0] = x;
        return res;
    }

    /// @notice Returns all core vault parameters in one call
    function getParameters() external view returns (IManagedLeveragedVault.VaultParameters memory) {
        return IManagedLeveragedVault.VaultParameters({
            denICR: denICR(),
            maxDeviationICRinBP: maxDeviationICRbp(),
            denManager: denManager(),
            keeper: keeper(),
            borrowerOperations: borrowerOps(),
            entryFeeInBP: entryFeebp(),
            exitFeeInBP: exitFeebp(),
            maxCompensationInBP: maxCompensationbp(),
            realizeLossThresholdInBP: realizeLossThrbp(),
            epochOffset: epochOffset(),
            withdrawalMaxLossInBP: maxWithdrawalLossbp(),
            exposureToken: exposureToken()
        });
    }

    /// @notice Returns remaining immutable addresses in storage
    function getRemainingStorage()
        external
        view
        returns (address metaCore_, address lsp_, address collVault_, address nect_, address collVaultRouter_)
    {
        return (metaCore(), lsp(), collVault(), nect(), collVaultRouter());
    }

    function getBoycoVaultStorage()
        external
        view
    returns (address, address, address, address, address, address, address, address) {

        return (
            metaCore(),
            borrowerOps(),
            lsp(),
            denManager(),
            collVault(),
            nect(),
            collVaultRouter(),
            keeper()
        );
    }

    // All non‐mapping fields
    struct EpochReportData {
        uint256 totalShares;
        uint256 wrappedAssets;
        bool reported;
        bool lossRealized;
    }

    function getEpochReport(uint256 epoch) external view returns (EpochReportData memory) {
        // Fetch “base slot” of reports[epoch]
        bytes32 base = ManagedLeveragedVaultStorageLib.reportsMapSlot(epoch);

        // the struct (in storage) is laid out as:
        //   slot(base + 0): <mapping seed, not used for reads>
        //   slot(base + 1): totalShares
        //   slot(base + 2): wrappedAssets
        //   slot(base + 3): packed bools { reported (byte0), lossRealized (byte1) }
        bytes32[] memory slots = new bytes32[](3);
        for (uint i; i < slots.length; i++) {
            slots[i] = bytes32(uint256(base) + (i + 1));
        }

        bytes32[] memory data = vault.extSloads(slots);

        uint256 totalShares = uint256(data[0]);
        uint256 wrappedAssets = uint256(data[1]);
        bytes32 flags = data[2];

        bool reported = uint8(uint256(flags)) != 0;
        bool lossRealized = uint8(uint256(flags) >> 8) != 0;

        return EpochReportData({
            totalShares: totalShares,
            wrappedAssets: wrappedAssets,
            reported: reported,
            lossRealized: lossRealized
        });
    }

    // Separate getter for the mapping(address→uint256) inside the struct
    function getReportBalanceOf(uint256 epoch, address who) external view returns (uint256) {
        bytes32 base = ManagedLeveragedVaultStorageLib.reportsMapSlot(epoch);
        bytes32 elemSlot = keccak256(abi.encode(who, base)); 
        bytes32[] memory slot = _array(elemSlot);
        bytes32[] memory value = vault.extSloads(slot);
        return uint256(value[0]);
    }
}
