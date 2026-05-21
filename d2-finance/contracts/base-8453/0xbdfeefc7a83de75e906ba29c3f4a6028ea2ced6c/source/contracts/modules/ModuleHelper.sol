// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity 0.8.24;

import "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";

contract ModuleHelper {
    using EnumerableSet for EnumerableSet.AddressSet;

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

    function validateToken(address _token) internal view {
        require(getTraderV0Storage().allowedTokens.contains(_token), "Invalid token");
    }

    function validateSpender(address _token) internal view {
        require(getTraderV0Storage().allowedSpenders.contains(_token), "Invalid spender");
    }
}
