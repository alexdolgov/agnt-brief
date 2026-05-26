// SPDX-License-Identifier: MIT
pragma solidity 0.8.12;

import { IYVaultV3 } from "../interfaces/IYVaultV3.sol";
import { BaseStrategy, StrategyData } from "./reference/BaseStrategy.sol";
import { IRizLendingPool } from "../interfaces/Riz/IRizLendingPool.sol";
import { IAToken } from "@radiant-v2-core/interfaces/IAToken.sol";
import { IERC20, SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { ERC20 } from "@openzeppelin/contracts/token/ERC20/ERC20.sol";

/// @custom:security-contact security@radiant.capital
contract YRizStrategy is BaseStrategy {
    using SafeERC20 for ERC20;

    string public constant VERSION = "v0.0.1";
    uint256 public constant MAX_BPS = 10_000;
    ///@notice Factor used to round up distributions
    uint256 public constant HALF_FACTOR = MAX_BPS / 2;
    ///@notice The min deposit amount vault-to-strategy to maintain percent precision
    uint256 public constant MIN_DEPOSIT = MAX_BPS;

    /// YRizStrategy local storage
    IYVaultV3 public immutable yVault;
    uint256 public immutable maxRizPools;
    uint256 public depositLimit;

    ///@dev index =>  Distribution struct for the Riz pool
    mapping(uint256 => Distribution) internal _distributions;
    mapping(address => uint256) internal _transientChecks;
    mapping(address => bool) internal _brokenLendingPools;

    /// Events
    event DeployedFunds(uint256 amount);
    event DepositLimitSet(uint256 depositLimit);
    event BrokenLendingPoolSet(address indexed pool, bool isbroken);

    /// Custom errors
    error YRizStrategy_noZeroAddress();
    error YRizStrategy_noZeroValue();
    error YRizStrategy_noChange();
    error YRizStrategy_notAuthorized();
    error YRizStrategy_invalidDescendDistribution();
    error YRizStrategy_invalidSumDistribution();
    error YRizStrategy_invalidBPSAmount();
    error YRizStrategy_outOfRange();
    error YRizStrategy_lessThanMinDepositAmount();
    error YRizStrategy_missingPoolWithBalance(address pool);

    struct Distribution {
        IRizLendingPool pool;
        uint96 bps;
        IAToken rzToken;
    }

    struct RebalanceRizPool {
        IRizLendingPool from;
        IRizLendingPool to;
        uint256 amount;
    }

    struct UiKeeperPoolBalances {
        address pool;
        uint256 balance;
        uint256 percentTarget;
        int256 percentDeviated;
    }

    modifier onlyAuthorized() {
        if (msg.sender != yVault.role_manager()) revert YRizStrategy_notAuthorized();
        _;
    }

    /**
     * @param _yVault to which vault this strategy will be binded
     * @param _asset this strategy will be managing
     * @param _name of the strategy
     * @param _maxRizPools initial number of Riz pools
     * @param _tokenizedStrategyImpl address of the tokenized strategy implementation
     */
    constructor(
        IYVaultV3 _yVault,
        address _asset,
        string memory _name,
        uint256 _maxRizPools,
        uint256 _depositLimit,
        address _tokenizedStrategyImpl
    ) BaseStrategy(_asset, _name, _tokenizedStrategyImpl) {
        if (address(_yVault) == address(0) || _tokenizedStrategyImpl == address(0)) revert YRizStrategy_noZeroAddress();
        if (_maxRizPools == 0) revert YRizStrategy_noZeroValue();
        yVault = _yVault;
        maxRizPools = _maxRizPools;
        depositLimit = _depositLimit;
    }

    /**
     * @notice Sets the deposit limit for this strategy
     * @param _depositLimit to set
     */
    function setDepositLimit(uint256 _depositLimit) external onlyAuthorized {
        if (depositLimit != _depositLimit) {
            depositLimit = _depositLimit;
            emit DepositLimitSet(_depositLimit);
        }
    }

    /**
     * @notice Sets broken lending pools to skip
     * @param _pool to set
     * @param _isbroken  if pool should be skipped
     */
    function setbrokenLendingPool(address _pool, bool _isbroken) external onlyAuthorized {
        if (_pool == address(0)) revert YRizStrategy_noZeroAddress();
        if (_brokenLendingPools[_pool] == _isbroken) revert YRizStrategy_noChange();
        _brokenLendingPools[_pool] = _isbroken;
        emit BrokenLendingPoolSet(_pool, _isbroken);
    }

    /**
     * @notice Sets all the Riz pool distributions
     * Requirements:
     * - Must be called by an authorized role
     * - The sum of all pool distributions must equal 10,000 in basis points (bps) (100%)
     * - No pool distribution can be greater than 10,000 bps (100%)
     * - To limit infinite loops, the maximum number of pools is bounded by `maxRizPools`
     * - Distribution must be set from largest bps starting at index 0 to smallest
     */
    function setFullPoolDistributions(Distribution[] memory newDistros) external onlyKeepers {
        uint256 len = newDistros.length;
        _checkIndexRange(len - 1);
        uint256 balToRedistribute = _checkPoolsWithBalanceAreIncluded(newDistros);
        uint256 total = 0;
        uint256 lastBps = MAX_BPS;
        for (uint256 i = 0; i < len; ++i) {
            IRizLendingPool riz = newDistros[i].pool;
            // Skip if the pool is the old lending pool
            if (isBrokenLendingPool(address(riz))) continue;
            if (address(riz) == address(0)) revert YRizStrategy_noZeroAddress();
            uint256 bpsInThisPool = newDistros[i].bps;
            if (bpsInThisPool > lastBps) revert YRizStrategy_invalidDescendDistribution();
            asset.forceApprove(address(riz), type(uint256).max);
            _setPoolDistribution(i, riz, bpsInThisPool, newDistros[i].rzToken);
            total += bpsInThisPool;
            lastBps = bpsInThisPool;
        }
        if (total != MAX_BPS) revert YRizStrategy_invalidSumDistribution();
        if (balToRedistribute > 0) {
            _deployFunds(balToRedistribute);
        }
    }

    /**
     * @notice Check if lending pool should be skipped
     * @param _pool to check
     */
    function isBrokenLendingPool(address _pool) public view returns (bool) {
        return _brokenLendingPools[_pool];
    }

    /**
     * @notice Use this method to rebalance `asset` across the Riz pools
     */
    function rebalancePools(RebalanceRizPool[] memory _rebalances) external onlyKeepers {
        uint256 len = _rebalances.length;
        for (uint256 i = 0; i < len; ++i) {
            // Skip if the pool is broken
            if (isBrokenLendingPool(address(_rebalances[i].from)) || isBrokenLendingPool(address(_rebalances[i].to))) {
                continue;
            }
            uint256 amount = _rebalances[i].amount;
            _rebalances[i].from.withdraw(address(asset), amount, address(this));
            _rebalances[i].to.deposit(address(asset), amount, address(this), 0);
        }
    }

    /**
     * @notice Helper view function for keepers to check the strategy balances at the Riz pools
     * @dev It is STRONGLY recommended  NOT to call this view function from within a smart contract
     * as it may lead to a large gas cost due to the number of Riz pools
     */
    function getUiKeeperPoolBalances() external view returns (UiKeeperPoolBalances[] memory) {
        uint256 validDistributionCount = _getValidDistributionCount();
        uint256 totalBalance = _accountBalancesAtAllPools();
        UiKeeperPoolBalances[] memory balances = new UiKeeperPoolBalances[](validDistributionCount);
        for (uint256 i = 0; i < validDistributionCount; ++i) {
            if (address(_distributions[i].pool) == address(0)) {
                break;
            }
            // Skip if the pool is the old lending pool
            if (isBrokenLendingPool(address(_distributions[i].pool))) continue;
            uint256 bal = _getBalanceAtIndexPool(i);
            uint256 distribution = bal * MAX_BPS / totalBalance;
            balances[i] = UiKeeperPoolBalances({
                pool: address(_distributions[i].pool),
                balance: bal,
                percentTarget: _distributions[i].bps,
                percentDeviated: int256(distribution) - int256(uint256(_distributions[i].bps))
            });
        }
        return balances;
    }

    /**
     * @notice Returns the deposit limit for this strategy
     * @param _account must be the `yVault`
     */
    function availableDepositLimit(address _account) public view override returns (uint256) {
        if (_account != address(yVault)) return 0;
        if (depositLimit == type(uint256).max) return type(uint256).max;
        // Read total assets (pure deposits with no accrued interest) from store in TokenizedStrategy
        uint256 totalAssets_ = TokenizedStrategy.totalAssets();
        return totalAssets_ >= depositLimit ? 0 : depositLimit - totalAssets_;
    }

    /**
     * @notice Returns all the Riz pool distributions
     */
    function getAllPoolDistributions() public view returns (Distribution[] memory) {
        uint256 validDistributionCount = _getValidDistributionCount();
        Distribution[] memory distributions = new Distribution[](validDistributionCount);
        for (uint256 i = 0; i < validDistributionCount; i++) {
            // Skip if the pool is the old lending pool
            if (isBrokenLendingPool(address(_distributions[i].pool))) continue;
            distributions[i] = _distributions[i];
        }

        return distributions;
    }

    /**
     * @notice Returns the distribution ratio for the pool in bps at the given index
     * @param index to get
     */
    function getPoolDistribution(uint256 index) public view returns (Distribution memory) {
        _checkIndexRange(index);
        return _distributions[index];
    }

    /**
     * @notice Sets the distribution ratio for the pool in bps at the given index
     * @param index to set
     * @param bps amount
     * @dev This function is called in the `setFullPoolDistributions` for-loop
     */
    function _setPoolDistribution(uint256 index, IRizLendingPool riz, uint256 bps, IAToken rztoken) internal {
        _distributions[index] = Distribution(riz, uint96(bps), rztoken);
    }

    /**
     * @notice Deploys funds to the Riz pools according to the distribution
     * @param _amount to deploy
     * @dev This function is called when the strategy is funded.
     * It is required to be implemented from the `BaseStrategy` contract
     */
    function _deployFunds(uint256 _amount) internal override {
        if (_amount < MIN_DEPOSIT) revert YRizStrategy_lessThanMinDepositAmount();
        // Deposit incoming funds into the Riz pools according to the distribution
        uint256 amountDeposited_;
        for (uint256 i = 0; i < maxRizPools; ++i) {
            IRizLendingPool pool = _distributions[i].pool;
            if (address(pool) == address(0)) {
                break;
            }
            // Skip if the pool is the old lending pool
            if (isBrokenLendingPool(address(pool))) continue;
            uint256 amount;
            // If this is the last pool in the distribution, deposit the remaining amount
            if (address(_distributions[i + 1].pool) == address(0)) {
                amount = _amount - amountDeposited_;
            } else {
                // Calculate the amount to deposit in this pool
                amount = (_amount * _distributions[i].bps + HALF_FACTOR) / MAX_BPS;
            }
            pool.deposit(address(asset), amount, address(this), 0);
            amountDeposited_ += amount;
        }
        emit DeployedFunds(_amount);
    }

    /**
     * @notice Withdraws funds from the Riz pools in a fill-until-complete manner
     * The funds are withdrawn from the Riz pools starting from the first index to the last until filled
     * @param _amount to withdraw
     * @dev This function is called when the strategy is requested funds back.
     * It is required to be implemented from the `BaseStrategy` contract
     */
    function _freeFunds(uint256 _amount) internal override {
        // Withdraws funds in a fill-until-complete manner from
        uint256 withdrawn;
        for (uint256 i = 0; i < maxRizPools; ++i) {
            if (withdrawn >= _amount) {
                break;
            }
            // Skip if the pool is the old lending pool
            if (isBrokenLendingPool(address(_distributions[i].pool))) continue;
            uint256 poolBalance = _getBalanceAtIndexPool(i);
            uint256 amountToWithdraw = _amount - withdrawn;
            if (poolBalance < amountToWithdraw) {
                amountToWithdraw = poolBalance;
            }

            if (amountToWithdraw > 0) {
                withdrawn += amountToWithdraw;
                _distributions[i].pool.withdraw(address(asset), amountToWithdraw, address(this));
            }
        }
    }

    /**
     * @notice Reports the balanceOf underlying asset from all the Riz pools
     * @dev This function is called when the strategy is requested to report the total assets
     * It is required to be implemented from the `BaseStrategy` contract
     */
    function _harvestAndReport() internal view override returns (uint256 totalAssets_) {
        return _accountBalancesAtAllPools();
    }

    /**
     * @dev Checks if the pools with balance are included in the new distributions
     * @param newDistros the new distributions to be set
     * Requirements:
     * - Reverts if a pool with balance is not included in the new distributions
     */
    function _checkPoolsWithBalanceAreIncluded(Distribution[] memory newDistros)
        internal
        returns (uint256 balToRedistribute)
    {
        // With known newDistros size we set the transient checks
        uint256 len = newDistros.length;
        for (uint256 i = 0; i < len; ++i) {
            // Skip if the pool is the old lending pool
            if (isBrokenLendingPool(address(newDistros[i].pool))) continue;
            _transientChecks[address(newDistros[i].pool)] = 1;
        }
        // Then loop through the current pools, check if they have balance, and if included in `newDistros`
        for (uint256 i = 0; i < maxRizPools; ++i) {
            // Skip if the pool is the old lending pool
            if (isBrokenLendingPool(address(_distributions[i].pool))) continue;
            address pool = address(_distributions[i].pool);
            if (pool == address(0)) {
                break;
            }
            if (_transientChecks[pool] != 1) {
                uint256 bal = _getBalanceAtIndexPool(i);
                if (bal > 0) {
                    // In case a pool with balance is not included in the new distributions, we should pull out funds
                    // from this pool
                    IRizLendingPool(pool).withdraw(address(asset), bal, address(this));
                    balToRedistribute += bal;
                }
            }
        }

        for (uint256 j = newDistros.length; j < maxRizPools; ++j) {
            // Now, all the pools last element of newDistros
            delete _distributions[j];
        }
        // Clear the entire transient check mapping and save gas
        for (uint256 i = 0; i < len; ++i) {
            delete  _transientChecks[address(newDistros[i].pool)];
        }
    }

    /**
     * @dev Returns the total balance of the underlying asset from all the Riz pools
     */
    function _accountBalancesAtAllPools() internal view returns (uint256 totalAssets_) {
        for (uint256 i = 0; i < maxRizPools; ++i) {
            if (address(_distributions[i].pool) == address(0)) {
                break;
            }
            totalAssets_ += _getBalanceAtIndexPool(i);
        }
    }

    function _getBalanceAtIndexPool(uint256 index) internal view returns (uint256) {
        return _distributions[index].rzToken.balanceOf(address(this));
    }

    function _checkIndexRange(uint256 index) internal view {
        if (index > maxRizPools - 1) revert YRizStrategy_outOfRange();
    }

    function _getValidDistributionCount() internal view returns (uint256) {
        uint256 validDistributionCount = 0;
        for (uint256 i = 0; i < maxRizPools; i++) {
            if (address(_distributions[i].pool) == address(0)) {
                break;
            }
            // Skip if the pool is the old lending pool
            if (isBrokenLendingPool(address(_distributions[i].pool))) {
                continue;
            }
            validDistributionCount++;
        }
        return validDistributionCount;
    }
}
