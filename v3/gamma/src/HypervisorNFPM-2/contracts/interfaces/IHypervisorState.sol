// SPDX-License-Identifier: BUSL-1.1
pragma solidity =0.8.20;

import "@cryptoalgebra/integral-core/contracts/interfaces/IAlgebraPool.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "../interfaces/IIncentiveMaker.sol";

interface IHypervisorState {
    struct RewardData {
        uint256 rewardAmount; 
        uint256 bonusRewardAmount;
        uint256 lastTimeUpdated;
        uint256 rewardPerToken;
        uint256 bonusRewardPerToken;
    }

    struct UserData {
        uint256 tokenAmount;
        uint256 lastTimeUpdated;
        uint256 rewardTokenClaimable;
        uint256 bonusRewardTokenClaimable;
        uint256 rewardPerToken;
        uint256 bonusRewardPerToken;
    }

    event Deposit(
        address indexed sender,
        address indexed to,
        uint256 shares,
        uint256 amount0,
        uint256 amount1
    );

    event InitialMint(
        uint256 baseNftId,
        uint256 limitNftId
    );

    event Withdraw(
        address indexed sender,
        address indexed to,
        uint256 shares,
        uint256 amount0,
        uint256 amount1
    );

    event Rebalance(
        int24 tick,
        uint256 totalAmount0,
        uint256 totalAmount1,
        uint256 feeAmount0,
        uint256 feeAmount1,
        uint256 totalSupply
    );

    event RewardsCollected(
        uint256 indexed tokenId,
        uint256 reward,          // Just show claimed reward amount
        uint256 bonusReward      // Just show claimed bonus reward amount
    );

    event RewardPaid(
        address indexed user,
        IERC20 indexed rewardToken,
        uint256 amount
    );
    
    // Add new event for key mismatch
    event IncentiveKeyMismatch(uint256 tokenId, IncentiveKey foundKey, IncentiveKey currentKey);
    event IncentiveKeyUpdated(
        address rewardToken,
        address bonusRewardToken,
        address pool,
        uint256 nonce
    );
    event RewardsTransferredToOwner(
        address indexed rewardToken,
        address indexed bonusRewardToken,
        uint256 rewardAmount,
        uint256 bonusRewardAmount
    );
    event ClaimPauseStateChanged(bool isPaused);
    event RewardTokenTransferred(address token, uint256 amount);
    event BonusRewardTokenTransferred(address token, uint256 amount);

    event ZeroBurn(uint8 fee, uint256 fees0, uint256 fees1);
    
    event SetFee(uint8 newFee);

    event TransferReceiver(address newReceiver);

    error ZeroAddress();
    error ZeroDeposits();
    error ZeroFee();
    error NotOwner();
    error ZeroShares();
    error InvalidRecipient();
    error InvalidTokens();
    error NotWhitelisted();
    error OnlyReceiver();
}