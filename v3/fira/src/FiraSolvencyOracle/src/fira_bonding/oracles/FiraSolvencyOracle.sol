// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.30;

import {IBCToken} from "../../interfaces/IBCToken.sol";
import {IBondToken} from "../../interfaces/IBondToken.sol";
import {IFiraWrappedStandardized} from "../../interfaces/IFiraWrappedStandardized.sol";
import {Errors} from "../libraries/Errors.sol";
import {IOracle} from "@lending-market/interfaces/IOracle.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";

/// @title FiraSolvencyOracle
/// @notice Wraps a base oracle to apply a solvency discount when FW becomes insolvent
/// @dev When FW exchangeRate drops below bcIndexStored (FW insolvency), BT's real value
///      is less than face value. This oracle inflates the collateral/BT price so that
///      liquidations seize less collateral per BT repaid, preventing over-seizure.
contract FiraSolvencyOracle is IOracle {
    /// @notice The base oracle providing the collateral/loan price feed
    IOracle public immutable BASE_ORACLE;

    /// @notice The FW (Fira Wrapped) token for exchange rate queries
    IFiraWrappedStandardized public immutable FW;

    /// @notice The CT (Coupon Token) for BC index queries
    IBCToken public immutable CT;

    /// @notice Constructs the solvency-aware oracle wrapper
    /// @param baseOracle The underlying oracle (e.g. ChainlinkOracleV2)
    /// @param bt The Bond Token address; FW and CT are derived from it
    constructor(IOracle baseOracle, address bt) {
        BASE_ORACLE = baseOracle;
        FW = IFiraWrappedStandardized(IBondToken(bt).FW());
        CT = IBCToken(IBondToken(bt).CT());
    }

    /// @notice Returns the collateral/loan price, adjusted for FW insolvency
    /// @dev When fwIndex >= bcIndex (solvent), returns the base oracle price unchanged.
    ///      When fwIndex < bcIndex (insolvent), returns basePrice * bcIndex / fwIndex.
    ///      This inflates the collateral/BT price so liquidations seize less collateral.
    ///      When fwIndex == 0 with outstanding FW supply (total wipeout), reverts to
    ///      act as a circuit breaker — BT is worthless and liquidations must not proceed.
    /// @return The price of 1 asset of collateral quoted in 1 asset of loan token, scaled by 1e36
    function price() external view returns (uint256) {
        uint256 basePrice = BASE_ORACLE.price();
        (uint256 fwIndex, uint256 bcIndex) = _getFWandBCIndex();

        // fwIndex == 0: check whether FW supply exists to distinguish "no FW minted yet"
        // from "total vault wipeout." If supply > 0, BT is worthless and an attacker could
        // mint BT for ~0 cost to liquidate borrowers — revert as a circuit breaker.
        if (fwIndex == 0) {
            if (IERC20(address(FW)).totalSupply() > 0) {
                revert Errors.FWFullWipeout();
            }
            return basePrice;
        }

        if (fwIndex >= bcIndex) {
            return basePrice;
        }

        return Math.mulDiv(basePrice, bcIndex, fwIndex);
    }

    /// @notice Returns the current FW and BC indices
    /// @dev Post-expiry, uses firstBCIndex (frozen at expiry) instead of the live bcIndex.
    ///      This matches the rate that mintBC() charges liquidators, preventing the oracle
    ///      from overvaluing collateral and making post-expiry liquidations unprofitable.
    ///      Pre-expiry, replicates BCOracleLib.getFWandBCIndexCurrent logic.
    /// @return fwIndex The current FW exchange rate
    /// @return bcIndex The current BC index (or firstBCIndex post-expiry)
    function _getFWandBCIndex() internal view returns (uint256 fwIndex, uint256 bcIndex) {
        fwIndex = FW.exchangeRate();

        // Post-expiry: use firstBCIndex to match mintBC() pricing
        if (CT.isExpired()) {
            (uint128 firstBCIndex,) = CT.postExpiry();
            if (firstBCIndex != 0) {
                bcIndex = firstBCIndex;
                return (fwIndex, bcIndex);
            }
        }

        // Pre-expiry (or post-expiry data not yet set): use live bcIndex
        uint256 stored = CT.bcIndexStored();

        if (CT.doCacheIndexSameBlock() && CT.bcIndexLastUpdatedBlock() == block.number) {
            bcIndex = stored;
        } else {
            bcIndex = fwIndex >= stored ? fwIndex : stored;
        }
    }
}
