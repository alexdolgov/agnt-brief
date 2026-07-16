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
    }
    struct Quest {
        address creator;
        address rewardToken;
        address gauge;
        uint48 duration;
        uint48 periodStart;
        uint256 totalRewardAmount;
        uint256 rewardAmountPerPeriod;
        uint256 minRewardPerVote;
        uint256 maxRewardPerVote;
        uint256 minObjectiveVotes;
        uint256 maxObjectiveVotes;
    }
    function bounties(uint id) external view returns (Bounty memory);
    function quests(uint id) external view returns (Quest memory);
    function claimable(address user, uint id) external view returns (uint);
    function nextID() external view returns (uint);
    function questDistributors(uint id) external view returns (address);
}

contract BountyHelper {

    uint256 private constant WEEK = 1 weeks;

    // Cannot work with Quests
    function getClaimableIds(IMarket _market, address _user) external view returns (uint[] memory) {
        uint total = _market.nextID();
        uint[] memory claimableIds = new uint[](total);
        uint count;
        
        for (uint id = 0; id < total; id++) {
            if (_market.claimable(_user, id) > 0) {
                claimableIds[count++] = id;
            }
        }

        assembly {
            mstore(claimableIds, count)
        }

        return claimableIds;
    }


    // "Active" includes bounties that have completed but are claimable in their final week.
    function getActiveIdsForGauge(IMarket _market, address _gauge) external view returns(uint[] memory) {
        uint period = getCurrentPeriod();
        uint total = _market.nextID();
        uint[] memory activeIds = new uint[](total);
        uint count;
        
        for (uint id = 0; id < total; id++) {
            if (_isActiveForGauge(_market, id, _gauge, period)) activeIds[count++] = id;
        }

        assembly {
            mstore(activeIds, count)
        }

        return activeIds;
    }


    function _isActiveForGauge(IMarket _market, uint _id, address _gauge, uint _period) internal view returns (bool) {
        if (isQuestMarket(_market)) {
            IMarket.Quest memory quest = _market.quests(_id);
            uint end = quest.periodStart + (quest.duration * WEEK);
            if (quest.gauge == _gauge && end >= _period) return true;
        }
        else {
            IMarket.Bounty memory bounty = _market.bounties(_id);
            if (bounty.gauge == _gauge && bounty.endTimestamp >= _period) return true;
        }
        return false;
    }

    function isQuestMarket(IMarket _market) public view returns (bool) {
        try _market.quests(0) returns (IMarket.Quest memory) {
            return true;
        } catch {
            return false;
        }
    }

    function isVoteMarket(IMarket _market) public view returns (bool) {
        try _market.bounties(0) returns (IMarket.Bounty memory) {
            return true;
        } catch {
            return false;
        }
    }

    function getCurrentPeriod() public view returns (uint256) {
        return (block.timestamp / WEEK) * WEEK;
    }
}