// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import {IInterestRateStrategy} from "../interfaces/IInterestRateStrategy.sol";
import {IPositionManager} from "../interfaces/IPositionManager.sol";

library PositionManagerStorage {
    struct Layout {
        address liquidationManager;
        IInterestRateStrategy interestRateStrategy;
        IPositionManager.VaultData[255] vaults;
        uint8 lastVaultIndex;
        mapping(uint8 vaultIndex => mapping(address position => IPositionManager.PositionData data)) positions;
    }

    bytes32 internal constant SLOT = keccak256(bytes("hyperstable.storage.positionManager"));

    function layout() internal pure returns (Layout storage $) {
        bytes32 slot = SLOT;

        assembly {
            $.slot := slot
        }
    }
}
