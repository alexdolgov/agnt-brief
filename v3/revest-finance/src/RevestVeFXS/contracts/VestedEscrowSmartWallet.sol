// SPDX-License-Identifier: GNU-GPL v3.0 or later

import "./interfaces/IVotingEscrow.sol";
import "./interfaces/IRewardsHandler.sol";
import "./interfaces/IYieldDistributor.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import "../lib/forge-std/src/console.sol";

pragma solidity ^0.8.0;

/// @author RobAnon
contract VestedEscrowSmartWallet {
    using SafeERC20 for IERC20;

    uint256 private constant MAX_INT = type(uint256).max;

    address private immutable MASTER;

    address private immutable LOCK_TOKEN;

    address private immutable REWARD_TOKEN;

    address private immutable VOTING_ESCROW;

    uint256 private constant PERCENTAGE = 1000;

    constructor(address _votingEscrow) {
        MASTER = msg.sender;
        VOTING_ESCROW = _votingEscrow;
        LOCK_TOKEN = IVotingEscrow(_votingEscrow).token();
        REWARD_TOKEN = IVotingEscrow(_votingEscrow).token();
    }

    modifier onlyMaster() {
        require(msg.sender == MASTER, "Unauthorized!");
        _;
    }

    function createLock(uint256 value, uint256 unlockTime, address distributor)
        external
        onlyMaster
        returns (uint128 _index, uint256 _newLockId)
    {
        // Single-use approval system
        if (IERC20(LOCK_TOKEN).allowance(address(this), VOTING_ESCROW) != MAX_INT) {
            IERC20(LOCK_TOKEN).approve(VOTING_ESCROW, MAX_INT);
        }

        // Create the lock
        (_index, _newLockId) = IVotingEscrow(VOTING_ESCROW).createLock(address(this), value, uint128(unlockTime));
        IYieldDistributor(distributor).checkpoint();
    }

    function increaseAmount(uint256 value, uint128 lockId, address distributor) external onlyMaster {
        IVotingEscrow(VOTING_ESCROW).increaseAmount(value, lockId);
        IYieldDistributor(distributor).checkpoint();
    }

    function increaseUnlockTime(uint256 unlockTime, uint128 lockId, address distributor) external onlyMaster {
        IVotingEscrow(VOTING_ESCROW).increaseUnlockTime(uint128(unlockTime), lockId);
        IYieldDistributor(distributor).checkpoint();
    }

    /**
     * @notice Withdraws the locked tokens
     * @dev The lock id is required to withdraw tokens since new veFXS system requires specifying the lock id.
     * @dev Lock id is now managed within our Revest VeFXS contract
     * @param lockId The lock id to withdraw from
     */
    function withdraw(uint128 lockId) external onlyMaster {
        IVotingEscrow(VOTING_ESCROW).withdraw(lockId);
        uint256 tokenBalance = IERC20(LOCK_TOKEN).balanceOf(address(this));
        IERC20(LOCK_TOKEN).safeTransfer(MASTER, tokenBalance);
    }

    /**
     * @notice Claims rewards from yield distributor and distributes them to the FNFT owner
     * @param caller Caller of the function
     * @param adminWallet Address receiving the performance fee
     * @param performanceFee Percent of the rewards to be collected as fee
     * @param distributor Address of the yield distributor
     */
    function claimRewards(
        address caller,
        address adminWallet,
        uint256 performanceFee,
        address distributor //address that receives the fee
    ) external onlyMaster returns (uint256 reward) {
        // Claim yield from yieldDistributor
        reward = IYieldDistributor(distributor).getYield();

        // Performance Fee Collection
        uint256 tokenBalance = IERC20(REWARD_TOKEN).balanceOf(address(this));
        uint256 fee = (tokenBalance * performanceFee) / PERCENTAGE;
        tokenBalance -= fee;
        IERC20(REWARD_TOKEN).safeTransfer(adminWallet, fee);
        emit FeeCollection(REWARD_TOKEN, fee);

        // Distritbute yield claim
        IERC20(REWARD_TOKEN).safeTransfer(caller, tokenBalance);
    }

    function checkpoint(address distributor) external onlyMaster {
        IYieldDistributor(distributor).checkpoint();
    }

    /// Proxy function to send arbitrary messages. Useful for delegating votes and similar activities
    function proxyExecute(address destination, bytes memory data)
        external
        payable
        onlyMaster
        returns (bytes memory dataOut)
    {
        (bool success, bytes memory dataTemp) = destination.call{value: msg.value}(data);
        require(success, "Proxy call failed!");
        dataOut = dataTemp;
    }

    event FeeCollection(address indexed token, uint256 indexed amount);
}
