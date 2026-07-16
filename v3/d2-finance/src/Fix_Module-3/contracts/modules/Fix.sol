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
        getTraderV0Storage().allowedSpenders.add(0x4a254B11810B8EBb63C5468E438FC561Cb1bB1da);
        getTraderV0Storage().allowedSpenders.add(0xF06EA29FCF4765200742d29E685973a1870EaC98);
        getTraderV0Storage().allowedSpenders.add(0x9659dc8c1565E0bd82627267e3b4eEd1a377ebE6);
        getTraderV0Storage().allowedSpenders.add(0x2f8C651E2F576C8c4B6DE3c32210d9b4A4461d5c);
        getTraderV0Storage().allowedSpenders.add(0x7297485557E5488Ff416A8349aF29717dF7AE625);
        getTraderV0Storage().allowedSpenders.add(0x2f8C651E2F576C8c4B6DE3c32210d9b4A4461d5c);
        getTraderV0Storage().allowedSpenders.add(0xE3EeB9e48934634d8B5B39A0d15DD89eE0F969C4);
        getTraderV0Storage().allowedSpenders.add(0x564f011D557aAd1cA09BFC956Eb8a17C35d490e0);
        getTraderV0Storage().allowedTokens.add(0x657e8C867D8B37dCC18fA4Caead9C45EB088C642);
        getTraderV0Storage().allowedTokens.add(0xac03CABA51e17c86c921E1f6CBFBdC91F8BB2E6b);
        getTraderV0Storage().allowedTokens.add(0x9b6761bf2397Bb5a6624a856cC84A3A14Dcd3fe5);
    }
}
