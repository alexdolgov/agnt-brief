pragma solidity 0.8.16;

interface ILiquidLocker {
    error WrongUnlockTime();
    error ZeroAmount();
    error NonEqualSlice();
    error WrongPayloadLength();
    error UnknownAction();

    event Executed(ACTION);
    event TokenClaimed(address, uint256);
    event TokensClaimed(address[], uint256[]);

    enum ACTION {
        VOTE,
        VOTE_GAUGES,
        VOTE_PROPOSAL,
        CLAIM,
        MULTICLAIM,
        DELEGATE_ON_SNAPSHOT,
        UNDELEGATE_ON_SNAPSHOT,
        MIGRATE
    }

    function initialize(uint256 amount, uint256 unlockTime) external;

    function target() external view returns (address);
    function locked(address) external view returns (uint256);

    function lock(uint256 amount, uint256 unlockTime) external returns (uint256 actualAmountIn);
    function release(address token, uint256 amount, bytes memory payload) external returns (uint256 actualAmountOut);

    function exec(bytes calldata) external;
}
