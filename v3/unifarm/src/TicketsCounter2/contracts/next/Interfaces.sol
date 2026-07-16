// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface ITicketsCounter {
    function countTickets(address who, uint256 drawDate)
        external
        view
        returns (
            uint256 tickets,
            ILockableStaking[] memory lockableStakings,
            uint256[] memory lockableAmounts
        );
}

interface IUniswapV2Pair {
    function totalSupply() external view returns (uint256);

    function token0() external view returns (address);

    function token1() external view returns (address);

    function getReserves()
        external
        view
        returns (
            uint112 reserve0,
            uint112 reserve1,
            uint32 blockTimestampLast
        );
}

interface IRefTreeStorage {
    function refererOf(address user) external view returns (address);
    function referralsOf(address referer) external view returns (address[] memory);
    function setReferer(address user, address referer) external;
}

interface IStakingLockAgent {
    function exceptionalUnlockPossible(address user, bytes32 payload) external view returns (bool);
}

interface ILockableStaking {
    struct LockInfo {
        uint256 until; // Date until which lock holds
        uint256 amount; // Minimum unwithdrawable amount. (MAX_UINT256 to fully lock)
        IStakingLockAgent agent;
        bytes32 payload;
    }
    function lockByAgent(
        address staker,
        uint256 until,
        uint256 amount,
        bytes32 payload
    ) external;
    function lockInfo(address user) external view returns (LockInfo memory);

    event LockAgentSet(address indexed agent, bool indexed value);
    event LockedByAgent(address indexed agent, address indexed staker, uint256 until, uint256 amount, bytes32 payload);
}
