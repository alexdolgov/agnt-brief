// ============================================================
// FILE: contracts/BountyHelper.sol
// ============================================================

pragma solidity 0.8.20;

interface IMarket {
    struct Bounty {
        address gauge;
        address manager;
        address rewardToken;
        uint8 numberOfPeriods;
        uint256 endTimestamp;
        uint256 maxRewardPerVote;
        uint256 totalRewardAmount;
        address[] blacklist;
    }
    function bounties(uint bountyId) external view returns (Bounty memory);
    function claimable(address user, uint bountyId) external view returns (uint);
    function nextID() external view returns (uint);
}

contract BountyHelper {

    function getClaimableIds(IMarket _market, address _user) external view returns(uint[] memory) {
        uint count = _market.nextID();
        uint[] memory claimableIds = new uint[](count);
        uint claimableCount;

        for (uint id = 0; id < count; id++) {
            if (_market.claimable(_user, id) > 0) {
                claimableIds[claimableCount++] = id;
            }
        }

        assembly {
            mstore(claimableIds, claimableCount)
        }

        return claimableIds;
    }
}
