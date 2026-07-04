// SPDX-License-Identifier: MIT
// Modified version of Openzeppelin (OpenZeppelin Contracts v4.4.1 (security/ReentrancyGuard.sol)) ReentrancyGuard
// contract that uses keccak slots instead of the standard storage layout.

import {DiamondStorageLib} from "./lib/DiamondStorageLib.sol";
import "./lib/SolvencyMethods.sol";
import {ISmartLoanLiquidationFacet} from "./interfaces/facets/ISmartLoanLiquidationFacet.sol";

pragma solidity 0.8.17;

/**
 * @dev Enforces ownership only if there is no liquidation ongoing
 */
abstract contract OnlyOwnerOrInsolvent is SolvencyMethods {

    /**
     * @dev Enforces ownership only if there is no liquidation ongoing
     */
    modifier onlyOwnerOrLiquidation() {
        bool isWhitelistedLiquidator = ISmartLoanLiquidationFacet(DeploymentConstants.getDiamondAddress()).isLiquidatorWhitelisted(msg.sender);

        if (isWhitelistedLiquidator) {
            DiamondStorageLib.LiquidationSnapshotStorage storage ls = DiamondStorageLib.liquidationSnapshotStorage();
            require(ls.lastInsolventTimestamp > 0, "No insolvency snapshot - call snapshotInsolvency first");
        } else{
            DiamondStorageLib.enforceIsContractOwner();
        }

        _;

        if (!isWhitelistedLiquidator) {
            require(_isSolvent(), "Must stay solvent");
        }
    }


    /**
     * @dev Enforces ownership only if there is no liquidation ongoing
     * This modifier CAN ONLY BE USED with methods that implement alternative solvency checks at the end as this one does not check for solvency at the end
     */
    modifier onlyOwnerNoStaySolventOrLiquidationPayable() {
        bool isWhitelistedLiquidator = ISmartLoanLiquidationFacet(DeploymentConstants.getDiamondAddress()).isLiquidatorWhitelisted(msg.sender);

        if (isWhitelistedLiquidator) {
            DiamondStorageLib.LiquidationSnapshotStorage storage ls = DiamondStorageLib.liquidationSnapshotStorage();
            require(ls.lastInsolventTimestamp > 0, "No insolvency snapshot - call snapshotInsolvency first");
        } else{
            DiamondStorageLib.enforceIsContractOwner();
        }

        _;
    }
}
