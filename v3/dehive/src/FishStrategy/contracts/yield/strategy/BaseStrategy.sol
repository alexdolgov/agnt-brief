// SPDX-License-Identifier: MIT
pragma solidity 0.8.6;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";

import "../../interfaces/yield/IStrategyPlugin.sol";
import "../../interfaces/IDexAdapter.sol";

/// @title Base Strategy Contract
/// @author Blaize.tech team
/// @notice Base strategy for ClusterTokens' underlyings farming
abstract contract BaseStrategy is AccessControlUpgradeable, IStrategyPlugin {
    using SafeERC20 for IERC20;

    bytes32 public constant STRATEGY_ROUTER = keccak256("STRATEGY_ROUTER");
    bytes32 public constant STRATEGIST_ROLE = keccak256("STRATEGIST_ROLE");
    uint256 public constant DUST_AMOUNT = 10**12;

    /// @notice Instance of underlying want token.
    IERC20 public override want;
    /// @notice Third party protocol for staking want token.
    address public masterChef;
    /// @notice Address of DexAdapter.
    address public adapter;
    /// @notice Amount of collected reward in want tokens.
    uint256 public wantRewardCollected;

    /// @notice Event emitted on each successfull deposit.
    /// @param amount Amount of deposited tokens.
    event Deposited(uint256 amount);
    /// @notice Event emitted on each successfull withdraw.
    ///  @param amount Amount of withdrawn tokens.
    event Withdrawn(uint256 amount);
    /// @notice Event emitted on each successfull transfer of rewards.
    /// @param _wantRewardAmount Amount of reward collected in ADDY token.
    event RewardsTransfered(uint256 _wantRewardAmount);

    /// @notice Performs initial setup.
    /// @param _want Instance of want token.
    /// @param _strategyRouter Address of StrategyRouter contract.
    /// @param _masterChef Address of third party protocol for staking want token.
    /// @param _adapter Address of dex-adapter.
    function initialize(
        address _want,
        address _strategyRouter,
        address _masterChef,
        address _adapter
    ) public virtual initializer {
        _setupRole(DEFAULT_ADMIN_ROLE, _msgSender());
        _setupRole(STRATEGIST_ROLE, _msgSender());
        _setupRole(STRATEGY_ROUTER, _strategyRouter);

        want = IERC20(_want);
        masterChef = _masterChef;
        adapter = _adapter;
    }

    /**
     * ADMIN INTERFACE
     */

    /// @notice Sets dex-adapter address.
    /// @dev Can only be called by admin.
    /// @param _adapter Address of new dex-adapter.
    function setAdapter(address _adapter) external onlyRole(DEFAULT_ADMIN_ROLE) {
        adapter = _adapter;
    }

    /// @notice Function, that is called in case of strategy migration.
    /// @notice Migrates collected reward to a new strategy.
    /// @dev Can only be called by Strategy router contract.
    /// @param _amount Amount of collected reward.
    function migrateRewards(address _prevWant, uint256 _amount) external override onlyRole(STRATEGY_ROUTER) {
        require(IERC20(_prevWant).balanceOf(address(this)) >= _amount, "Incorrect amount was transferred");

        if (_prevWant != address(want)) {
            IERC20(_prevWant).safeApprove(adapter, 0);
            IERC20(_prevWant).safeApprove(adapter, _amount);
            wantRewardCollected += IDexAdapter(adapter).swapTokenToToken(_amount, _prevWant, address(want));
        } else {
            wantRewardCollected += _amount;
        }
    }

    /// @notice Withdraws tokens stuck in contract. Cannot withdraw protected tokens.
    /// @dev Can only be called by Admin.
    /// @param _token Address of token.
    function sweep(address _token) external virtual onlyRole(DEFAULT_ADMIN_ROLE) {
        address[] memory _protectedTokens = protectedTokens();
        for (uint256 i = 0; i < _protectedTokens.length; i++) require(_token != _protectedTokens[i], "!protected");

        IERC20(_token).safeTransfer(_msgSender(), IERC20(_token).balanceOf(address(this)));
    }

    /// @notice Collects rewards for external protocol.
    function getRewards() external virtual override onlyRole(STRATEGY_ROUTER) returns (uint256) {
        _harvest();
        uint256 rewardEarned = wantRewardCollected;
        if (rewardEarned < DUST_AMOUNT) {
            return 0;
        }

        _transferRewards(rewardEarned);
        return _rewardsInEth(rewardEarned);
    }

    /**
     * VIEW INTERFACE
     */

    /// @notice Calculates amount of want token
    function nav() external view virtual returns (uint256) {
        return want.balanceOf(address(this)) + underlyingBalanceStored();
    }

    function underlyingBalanceStored() public view virtual returns (uint256);

    function protectedTokens() public view virtual returns (address[] memory);

    /// @notice Shows amount of collected reward calculated in ETH.
    /// @return Amount of collected reward in ETH.
    function rewardsInEth() external view virtual override returns (uint256) {
        if (wantRewardCollected < DUST_AMOUNT) {
            return 0;
        }
        return _rewardsInEth(wantRewardCollected);
    }

    /**
     * INTERNAL HELPERS
     */

    function _rewardsInEth(uint256 _amount) internal view virtual returns (uint256);

    function _transferRewards(uint256 _addyRewardAmount) internal virtual;

    function _harvest() internal virtual returns (uint256);
}
