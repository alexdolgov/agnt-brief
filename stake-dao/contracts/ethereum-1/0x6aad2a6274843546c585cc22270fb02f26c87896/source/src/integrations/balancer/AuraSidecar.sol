// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.28;

/// Interfaces
import {IAuraBooster} from "@interfaces/aura/IAuraBooster.sol";
import {IAuraBaseRewardPool} from "@interfaces/aura/IAuraBaseRewardPool.sol";
import {IStashToken} from "@interfaces/aura/IStashToken.sol";

/// OpenZeppelin
import {IERC20, SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

/// Project Contracts
import {Sidecar} from "src/Sidecar.sol";
import {ImmutableArgsParser} from "src/libraries/ImmutableArgsParser.sol";

/// @title AuraSidecar
/// @author Stake DAO
/// @custom:github @stake-dao
/// @custom:contact contact@stakedao.org

/// @notice Sidecar for managing Aura rewards and deposits for Balancer pools
contract AuraSidecar is Sidecar {
    using SafeERC20 for IERC20;
    using ImmutableArgsParser for address;

    //////////////////////////////////////////////////////
    // --- IMPLEMENTATION CONSTANTS
    //////////////////////////////////////////////////////

    /// @notice Aura Reward Token address
    IERC20 public immutable AURA;

    /// @notice Aura Booster address
    address public immutable BOOSTER;

    /// @notice Thrown when the reward receiver is not set
    error RewardReceiverNotSet();

    //////////////////////////////////////////////////////
    // --- CLONE IMMUTABLES (via ImmutableArgsParser)
    //////////////////////////////////////////////////////

    /// @notice BPT (Balancer Pool Token) address - offset 0
    function asset() public view override returns (IERC20 _asset) {
        return IERC20(address(this).readAddress(0));
    }

    /// @notice Balancer gauge associated with the sidecar - offset 20
    function gauge() public view returns (address _gauge) {
        return address(this).readAddress(20);
    }

    /// @notice Aura BaseRewardPool address - offset 40
    function baseRewardPool() public view returns (IAuraBaseRewardPool _baseRewardPool) {
        return IAuraBaseRewardPool(address(this).readAddress(40));
    }

    /// @notice Pool ID on Aura - offset 60
    function pid() public view returns (uint256 _pid) {
        return address(this).readUint256(60);
    }

    function rewardReceiver() public view override returns (address _rewardReceiver) {
        _rewardReceiver = PROTOCOL_CONTROLLER.rewardReceiver(gauge());
        if (_rewardReceiver == address(0)) revert RewardReceiverNotSet();
    }

    //////////////////////////////////////////////////////
    // --- CONSTRUCTOR
    //////////////////////////////////////////////////////

    constructor(address _accountant, address _protocolController, address _aura, address _booster)
        Sidecar(bytes4(keccak256("BALANCER")), _accountant, _protocolController)
    {
        AURA = IERC20(_aura);
        BOOSTER = _booster;
    }

    //////////////////////////////////////////////////////
    // --- INITIALIZATION
    //////////////////////////////////////////////////////

    /// @notice Initialize by approving the BaseRewardPool to spend BPT
    /// @dev Key difference from Convex: approve RewardPool, not Booster
    function _initialize() internal override {
        address rewardPool = address(baseRewardPool());
        require(asset().allowance(address(this), rewardPool) == 0, AlreadyInitialized());

        asset().forceApprove(rewardPool, type(uint256).max);
    }

    //////////////////////////////////////////////////////
    // --- SIDECAR OPERATIONS
    //////////////////////////////////////////////////////

    /// @notice Deposit BPT into Aura
    /// @dev Key difference from Convex: uses ERC4626-style deposit on RewardPool
    function _deposit(uint256 amount) internal override {
        // Aura uses ERC4626-style deposit directly on the reward pool
        baseRewardPool().deposit(amount, address(this));
    }

    /// @notice Withdraw BPT from Aura
    function _withdraw(uint256 amount, address receiver) internal override {
        // Withdraw from Aura reward pool without claiming rewards
        baseRewardPool().withdrawAndUnwrap(amount, false);

        // Transfer BPT to receiver
        asset().safeTransfer(receiver, amount);
    }

    /// @notice Claim BAL rewards from Aura
    function _claim() internal override returns (uint256 rewardTokenAmount) {
        // Claim BAL (reward token) without extra rewards
        baseRewardPool().getReward(address(this), false);

        rewardTokenAmount = REWARD_TOKEN.balanceOf(address(this));

        if (rewardTokenAmount > 0) {
            // Send BAL to accountant
            REWARD_TOKEN.safeTransfer(ACCOUNTANT, rewardTokenAmount);
        }
    }

    /// @notice Get staked BPT balance in Aura
    function balanceOf() public view override returns (uint256) {
        return baseRewardPool().balanceOf(address(this));
    }

    /// @notice Get all extra reward tokens from the base reward pool
    function getRewardTokens() public view override returns (address[] memory) {
        uint256 extraRewardsLength = baseRewardPool().extraRewardsLength();
        address[] memory tokens = new address[](extraRewardsLength);

        for (uint256 i; i < extraRewardsLength;) {
            address virtualPool = baseRewardPool().extraRewards(i);
            tokens[i] = IAuraBaseRewardPool(virtualPool).rewardToken();

            // Handle stash token wrappers (Aura uses baseToken() unlike Convex's token())
            try IStashToken(tokens[i]).baseToken() returns (address unwrapped) {
                tokens[i] = unwrapped;
            } catch {}

            unchecked {
                ++i;
            }
        }

        return tokens;
    }

    /// @notice Get pending BAL rewards
    function getPendingRewards() public view override returns (uint256) {
        return baseRewardPool().earned(address(this)) + REWARD_TOKEN.balanceOf(address(this));
    }

    //////////////////////////////////////////////////////
    // --- EXTRA AURA OPERATIONS
    //////////////////////////////////////////////////////

    /// @notice Claim AURA and extra rewards, send to reward receiver
    function claimExtraRewards() external {
        address[] memory extraRewardTokens = getRewardTokens();

        // Claim with extra rewards
        baseRewardPool().getReward(address(this), true);

        address receiver = rewardReceiver();

        // Send AURA to reward receiver
        uint256 auraBalance = AURA.balanceOf(address(this));
        if (auraBalance > 0) {
            AURA.safeTransfer(receiver, auraBalance);
        }

        // Handle extra reward tokens
        for (uint256 i; i < extraRewardTokens.length;) {
            uint256 balance = IERC20(extraRewardTokens[i]).balanceOf(address(this));
            if (balance > 0) {
                IERC20(extraRewardTokens[i]).safeTransfer(receiver, balance);
            }
            unchecked {
                ++i;
            }
        }
    }
}
