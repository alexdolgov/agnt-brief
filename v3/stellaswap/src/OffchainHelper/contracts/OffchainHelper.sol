// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.17;

contract OffchainHelper  {

    uint32 public constant EPOCH_DURATION = 3600; // the amount of seconds after lastUpdate to report rewards for. (default 1 hour)


    function getPositionKey(
        address owner,
        int24 bottomTick,
        int24 topTick
    ) public pure returns (bytes32 key) {
        assembly {
            key := or(shl(24, or(shl(24, owner), and(bottomTick, 0xFFFFFF))), and(topTick, 0xFFFFFF))
        }
    }

    function previewAddRewardInfo(
        address token,
        bool _isNative,
        uint32 _startTimestamp,
        uint32 _endTimestamp,
        uint256 _rewardPerSec
    ) external view returns (uint256 totalRewards) {
        _startTimestamp = getRoundedTimestamp(_startTimestamp);
        _endTimestamp = getRoundedTimestamp(_endTimestamp);
        require(_endTimestamp > _startTimestamp, "Rewarder: invalid end timestamp");
        require(_rewardPerSec > 0, "Rewarder: invalid reward per sec");

        uint256 timeRange = _endTimestamp - _startTimestamp;
        totalRewards = timeRange * _rewardPerSec;
    }

    function getRoundedTimestamp(uint32 timestamp) public pure returns (uint32) {
        return (timestamp / EPOCH_DURATION) * EPOCH_DURATION;
    }
} 