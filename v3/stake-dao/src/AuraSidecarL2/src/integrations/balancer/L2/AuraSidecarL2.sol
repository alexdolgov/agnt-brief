// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.28;

/// Interfaces
import {IAuraBaseRewardPool} from "@interfaces/aura/IAuraBaseRewardPool.sol";
import {IStashToken} from "@interfaces/aura/IStashToken.sol";

/// OpenZeppelin
import {IERC20, SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

/// Project Contracts
import {Sidecar} from "src/Sidecar.sol";
import {ImmutableArgsParser} from "src/libraries/ImmutableArgsParser.sol";

/// @title AuraSidecarL2
/// @author Stake DAO
/// @custom:github @stake-dao
/// @custom:contact contact@stakedao.org

/// @notice L2 variant of AuraSidecar.
///
///         Key differences from mainnet AuraSidecar:
///         - Stores rewardReceiver in immutable args instead of reading from protocol controller
///         - Claims all rewards (BAL + AURA + extras) in _claim() instead of separate claimExtraRewards()
contract AuraSidecarL2 is Sidecar {
    using SafeERC20 for IERC20;
    using ImmutableArgsParser for address;

    //////////////////////////////////////////////////////
    // --- IMPLEMENTATION CONSTANTS
    //////////////////////////////////////////////////////

    /// @notice Aura Reward Token address
    IERC20 public immutable AURA;

    /// @notice Aura Booster address
    address public immutable BOOSTER;

    //////////////////////////////////////////////////////
    // --- CLONE IMMUTABLES (via ImmutableArgsParser)
    //////////////////////////////////////////////////////

    /// @notice BPT (Balancer Pool Token) address - offset 0
    function asset() public view override returns (IERC20 _asset) {
        return IERC20(address(this).readAddress(0));
    }

    /// @notice Reward receiver address - offset 20
    function rewardReceiver() public view override returns (address _rewardReceiver) {
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
    function _initialize() internal override {
        address rewardPool = address(baseRewardPool());
        require(asset().allowance(address(this), rewardPool) == 0, AlreadyInitialized());

        asset().forceApprove(rewardPool, type(uint256).max);
    }

    //////////////////////////////////////////////////////
    // --- SIDECAR OPERATIONS
    //////////////////////////////////////////////////////

    /// @notice Deposit BPT into Aura
    function _deposit(uint256 amount) internal override {
        baseRewardPool().deposit(amount, address(this));
    }

    /// @notice Withdraw BPT from Aura
    function _withdraw(uint256 amount, address receiver) internal override {
        baseRewardPool().withdrawAndUnwrap(amount, false);
        asset().safeTransfer(receiver, amount);
    }

    /// @notice Claim all rewards from Aura and distribute
    /// @dev On L2, claims BAL + AURA + extras in one pass
    function _claim() internal override returns (uint256 rewardTokenAmount) {
        // Claim with extra rewards
        baseRewardPool().getReward(address(this), true);

        // Send BAL (reward token) to accountant
        rewardTokenAmount = REWARD_TOKEN.balanceOf(address(this));
        if (rewardTokenAmount > 0) {
            REWARD_TOKEN.safeTransfer(ACCOUNTANT, rewardTokenAmount);
        }

        address receiver = rewardReceiver();

        // Send AURA to reward receiver
        uint256 auraBalance = AURA.balanceOf(address(this));
        if (auraBalance > 0) {
            AURA.safeTransfer(receiver, auraBalance);
        }

        // Handle extra reward tokens
        address[] memory extraRewardTokens = getRewardTokens();
        for (uint256 i; i < extraRewardTokens.length;) {
            address token = extraRewardTokens[i];
            if (token != address(REWARD_TOKEN) && token != address(AURA)) {
                uint256 balance = IERC20(token).balanceOf(address(this));
                if (balance > 0) {
                    IERC20(token).safeTransfer(receiver, balance);
                }
            }
            unchecked {
                ++i;
            }
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
}
