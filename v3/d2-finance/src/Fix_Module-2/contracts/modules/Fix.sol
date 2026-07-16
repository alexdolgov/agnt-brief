// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity 0.8.28;

import "@solidstate/contracts/utils/ReentrancyGuard.sol";
import "@solidstate/contracts/access/access_control/AccessControl.sol";
import "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";

contract Fix_Module is AccessControl, ReentrancyGuard {
    using EnumerableSet for EnumerableSet.AddressSet;

    bytes32 internal constant EXECUTOR_ROLE = keccak256("EXECUTOR_ROLE");
    bytes32 internal constant TRADERV0_POSITION = bytes32(uint256(keccak256("TraderV0.storage")) - 1);

    struct TraderV0Storage {
        string name;
        address feeReceiver;
        address vault;
        address baseAsset;
        uint256 performanceFeeRate;
        uint256 managementFeeRate;
        uint256 custodyTime;
        uint256 custodiedAmount;
        uint256 totalFees;
        EnumerableSet.AddressSet allowedTokens;
        EnumerableSet.AddressSet allowedSpenders;
        bool initialized;
    }

    function getTraderV0Storage() internal pure returns (TraderV0Storage storage storageStruct) {
        bytes32 position = TRADERV0_POSITION;
        // solhint-disable-next-line no-inline-assembly
        assembly {
            storageStruct.slot := position
        }
    }

    function fix1() external onlyRole(EXECUTOR_ROLE) nonReentrant {
        getTraderV0Storage().allowedTokens.add(0xA1e6EeABac9FfC9e73e755D9977EE5a26B7571e5);
        getTraderV0Storage().allowedSpenders.add(0xA1e6EeABac9FfC9e73e755D9977EE5a26B7571e5);
    }
}
