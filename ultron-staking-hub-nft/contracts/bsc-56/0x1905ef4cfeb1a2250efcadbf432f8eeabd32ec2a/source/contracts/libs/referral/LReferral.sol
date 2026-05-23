// SPDX-License-Identifier: MIT

pragma solidity >0.8.0 <0.9.0;

import "../../interfaces/IPlatform.sol";
import "../../interfaces/IGame.sol";

library LReferral {
    uint256 public constant category4Points = 25;
    uint256 public constant category5Points = 5;

    enum ReferralCategories {
        FIRST,
        SECOND,
        THIRD,
        FOURTH,
        FIFTH
    }
    enum ReferralRoundStatus {
        EMPTY,
        PROCESSING,
        PAYING,
        CLOSED,
        REFUNDED
    }

    function getProcessingRoundsCount() public pure returns (uint8) {
        return 0xe;
    }

    function getCategoriesCount() public pure returns (uint8) {
        return 0x5;
    }

    function getPayLimit() public pure returns (uint16) {
        return 0x3E8;
    }

    function getCalculateUserLimit() public pure returns (uint16) {
        return 0x3E8;
    }

    function getCategoryRequirePoints(ReferralCategories refCategory)
        public
        pure
        returns (uint16 count)
    {
        return getCategoryUintRequirePoints(uint8(refCategory));
    }

    function getCategoryUintRequirePoints(uint8 refCategory)
        public
        pure
        returns (uint16 count)
    {
        if (refCategory == uint8(ReferralCategories.FIRST)) return 0x3e8;
        if (refCategory == uint8(ReferralCategories.SECOND)) return 0x1f4;
        if (refCategory == uint8(ReferralCategories.THIRD)) return 0x64;
        if (refCategory == uint8(ReferralCategories.FOURTH)) return 0x19;
        if (refCategory == uint8(ReferralCategories.FIFTH)) return 0x5;
    }

    function isExistInCategories(
        address user,
        uint256 points,
        uint256 upAmount
    ) public pure returns (bool) {
        if (user == address(0)) return false;
        if (
            points < getCategoryRequirePoints(ReferralCategories.FIFTH) &&
            points + upAmount >
            getCategoryRequirePoints(ReferralCategories.FIFTH) - 1
        ) return true;
        return false;
    }

    function isExistInCategories(address user, uint256 points)
        public
        pure
        returns (bool)
    {
        if (user == address(0)) return false;
        if (points > getCategoryRequirePoints(ReferralCategories.FIFTH) - 1)
            return true;
        return false;
    }

    function getCategoriesCountArray() public pure returns (uint256[] memory) {
        uint256[] memory catCounts = new uint256[](getCategoriesCount());

        catCounts[0] = getCategoryRequirePoints(ReferralCategories.FIRST);
        catCounts[1] = getCategoryRequirePoints(ReferralCategories.SECOND);
        catCounts[2] = getCategoryRequirePoints(ReferralCategories.THIRD);
        catCounts[3] = getCategoryRequirePoints(ReferralCategories.FOURTH);
        catCounts[4] = getCategoryRequirePoints(ReferralCategories.FIFTH);

        return catCounts;
    }
}
