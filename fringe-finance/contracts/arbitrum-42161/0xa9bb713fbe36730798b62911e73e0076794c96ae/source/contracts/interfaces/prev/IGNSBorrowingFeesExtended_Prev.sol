// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

import "./IGNSBorrowingFees_Prev.sol";

/**
 * @custom:version 7
 * @dev Extended version of the deprecated GNSBorrowingFees contract interface, used for state copy
 */
interface IGNSBorrowingFeesExtended_Prev is IGNSBorrowingFees_Prev {
    function initialAccFees(address, uint256, uint256) external view returns (InitialAccFees memory);

    function groups(uint16) external view returns (Group memory);

    function groupFeeExponents(uint256) external view returns (uint48);

    function pairs(
        uint256
    )
        external
        view
        returns (
            PairGroup[] memory groups,
            uint32 feePerBlock, // 1e10 (%)
            uint64 accFeeLong, // 1e10 (%)
            uint64 accFeeShort, // 1e10 (%)
            uint48 accLastUpdatedBlock,
            uint48 feeExponent,
            uint256 lastAccBlockWeightedMarketCap
        );

    function pairOis(uint256) external view returns (PairOi memory);
}
