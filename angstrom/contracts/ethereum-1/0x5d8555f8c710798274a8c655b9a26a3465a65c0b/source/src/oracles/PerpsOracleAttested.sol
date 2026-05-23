// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.10;

import { SafeCastLib } from "solady/utils/SafeCastLib.sol";
import { OracleAuth } from "../modules/OracleAuth.sol";
import { IPerpsOracle, ERC20 } from "../interfaces/IPerpsOracle.sol";

using SafeCastLib for uint256;

/// @notice Basic oracle for the Net Asset Value (NAV) of the perps positions for a single vault.
/// @dev The contract owner has unilateral control over which accounts hold the OracleUpdater role. Accounts with the
/// OracleUpdater role can call `updatePerpsValue()` to modify the NAV reported by this oracle.
contract PerpsOracleAttested is IPerpsOracle, OracleAuth {
    /// @inheritdoc IPerpsOracle
    uint128 public perpsValue;

    /// @inheritdoc IPerpsOracle
    uint32 public lastUpdated;

    /// @inheritdoc IPerpsOracle
    ERC20 public immutable ASSET;

    event PerpsValueUpdated(uint128 newValue);

    error OnlyVault();

    constructor(
        address _vault,
        ERC20 _asset
    ) OracleAuth(_vault) {
        ASSET = _asset;
    }

    /// @notice Called by an oracle updater to set the `perpsValue` to `newValue`.
    /// @dev Also sets `lastUpdated` to `block.timestamp` to reflect the update.
    function updatePerpsValue(
        uint128 newValue
    ) external onlyOracleUpdater {
        perpsValue = newValue;
        lastUpdated = uint32(block.timestamp);

        emit PerpsValueUpdated(newValue);
    }

    /// @notice Called by contract owner to modify whether or not the `account` has the oracle updater role.
    function setOracleUpdater(
        address account,
        bool newStatus
    ) external onlyOwner timelocked {
        _setOracleUpdater(account, newStatus);
    }

    /// @inheritdoc IPerpsOracle
    function informOfPerpsTransfer(
        int256 deltaOutOfVault
    ) external {
        require(msg.sender == VAULT, OnlyVault());
        uint128 newValue = perpsValue;
        if (deltaOutOfVault > 0) {
            // forge-lint: disable-next-line(unsafe-typecast)
            newValue += uint256(deltaOutOfVault).toUint128();
        } else {
            // forge-lint: disable-next-line(unsafe-typecast)
            newValue -= uint256(-deltaOutOfVault).toUint128();
        }
        perpsValue = newValue;
        emit PerpsValueUpdated(newValue);
    }
}
