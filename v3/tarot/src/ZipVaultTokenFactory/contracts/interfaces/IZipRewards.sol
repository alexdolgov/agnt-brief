pragma solidity 0.5.16;

contract IZipRewards {
    struct UserInfo {
        uint128 amount;
        int128 rewardDebt;
    }

    struct PoolInfo {
        uint256 accZipPerShare;
        uint64 lastRewardTime;
        uint64 allocPoint;
    }

    // Info of each user that stakes LP tokens.
    mapping(uint256 => PoolInfo) public poolInfo;
    mapping(uint256 => mapping(address => UserInfo)) public userInfo;

    function depositShort(uint256 _pid, uint128 _amount) external {}

    function withdrawShort(uint256 _pid, uint128 _amount) external {}

    function harvestShort(uint256 _pid) external returns (uint) {}

    function rewarder(uint256 pid) external view returns (address);

    function lpToken(uint256 pid) external view returns (address);
}
