// SPDX-License-Identifier: AGPL-3.0.
pragma solidity ^0.8.0;

import "../../../../../libraries/types/VaultTypes.sol";
import "../../../strategy/IReceiver.sol";

interface IGroomableVaultV1 is IReceiver {
    // Groomable Vault Errors
    error GR_V1_MIGRATION_PERCENTAGE_OUT_OF_RANGE();

    function migrateLender(bytes[] calldata params) external;

    function migrateFarm(bytes[] calldata params) external;

    function rebalance() external;

    function setGroomableConfig(VaultTypes.GroomableConfig memory) external;

    function getGroomableConfig()
        external
        view
        returns (address, address, address, uint256);
}
