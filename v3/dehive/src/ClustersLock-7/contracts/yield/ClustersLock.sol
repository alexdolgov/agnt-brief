// SPDX-License-Identifier: MIT
pragma solidity 0.8.6;

import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import "../staking/StakingPools.sol";
import "../interfaces/IClusterToken.sol";
import "../interfaces/IStakingDHV.sol";
import "../interfaces/yield/IStrategyRouter.sol";
import "../interfaces/IStakingBonus.sol";

/// @title Lock clusters for the yield accumulation.
/// @author Blaize.tech team.
/// @notice Contract for staking Cluster tokens.
contract ClustersLock is ReentrancyGuardUpgradeable, StakingPools {
    using SafeERC20 for IERC20;

    uint256 public constant MAX_COOLDOWN = 7 days;

    /// @notice Address of the yield farming contract.
    address public strategyRouter;
    /// @notice Address of the DHV staking MasterChief.
    address public stakingDHV;
    /// @notice Pool ID of the DHV staking.
    uint256 public dhvPID;

    /// @notice user => cluster => timestamp to release.
    mapping(address => mapping(address => uint256)) public cooldowns;
    /// @notice cluster => cooldown for the cluster releasement.
    mapping(address => uint256) public cooldownPeriod;

    /**********
     * ADMIN INTERFACE
     **********/

    /// @notice Initializer
    /// @param _stakingDHV Address of the DHV staking pool MasterChief.
    /// @param _pid DHV staking pool id.
    /// @param _strategyRouter Contract to work with strategies.
    function initialize(
        address _stakingDHV,
        uint256 _pid,
        address _strategyRouter
    ) external initializer {
        StakingPools.initialize();
        stakingDHV = _stakingDHV;
        dhvPID = _pid;
        strategyRouter = _strategyRouter;
    }

    /// @notice Function to change DHV staking pool in case of emergency.
    /// @notice Caution! all actions for migration of the pool should be performed before this call.
    /// @param _stakingDHV Address of the DHV staking pool MasterChief.
    /// @param _pid DHV staking pool id.
    function setStakingDHV(address _stakingDHV, uint256 _pid) external onlyRole(DEFAULT_ADMIN_ROLE) {
        stakingDHV = _stakingDHV;
        dhvPID = _pid;
    }

    /// @notice Function to change strategy router in case of emergency.
    /// @notice Caution! all actions for migration of the pool should be performed before this call.
    /// @param _strategyRouter Contract to work with strategies.
    function setStrategyRouter(address _strategyRouter) external onlyRole(DEFAULT_ADMIN_ROLE) {
        strategyRouter = _strategyRouter;
    }

    /// @notice Function to change the cooldown for the releasement of staked cluster.
    /// @param _asset Cluster address.
    /// @param _cooldown Cooldown in seconds.
    function setCooldown(address _asset, uint256 _cooldown) external onlyRole(DEFAULT_ADMIN_ROLE) {
        require(_cooldown <= MAX_COOLDOWN, "Incorrect cooldown");
        cooldownPeriod[_asset] = _cooldown;
    }

    /// @notice Function that allows admin to set allowance for clusterToken contract.
    /// @param _asset Cluster address.
    /// @param _allowance Allowance to be set.
    function setAllowanceForCluster(address _asset, uint256 _allowance) external onlyRole(DEFAULT_ADMIN_ROLE) {
        address[] memory underlyings = IClusterToken(_asset).getUnderlyings();
        if (_allowance == 0) {
            for (uint256 i = 0; i < underlyings.length; i++) {
                IERC20(underlyings[i]).safeApprove(_asset, 0);
            }
        } else {
            for (uint256 i = 0; i < underlyings.length; i++) {
                IERC20(underlyings[i]).safeApprove(_asset, 0);
                IERC20(underlyings[i]).safeApprove(_asset, _allowance);
            }
        }
    }

    /// @notice Function that allows admin to set allowance for strategyRouter contract.
    /// @param _asset Cluster address.
    /// @param _allowance Allowance to be set.
    function setAllowanceForRouter(address _asset, uint256 _allowance) external onlyRole(DEFAULT_ADMIN_ROLE) {
        address[] memory underlyings = IClusterToken(_asset).getUnderlyings();
        if (_allowance == 0) {
            for (uint256 i = 0; i < underlyings.length; i++) {
                IERC20(underlyings[i]).safeApprove(strategyRouter, 0);
            }
        } else {
            for (uint256 i = 0; i < underlyings.length; i++) {
                IERC20(underlyings[i]).safeApprove(strategyRouter, 0);
                IERC20(underlyings[i]).safeApprove(strategyRouter, _allowance);
            }
        }
    }

    /**********
     * USER INTERFACE
     **********/

    /// @notice Deposits Cluster token to staking. Checks amount of DHV coverage.
    /// Gets underlyings from the Cluster contract and sends them to the farming contract.
    /// @param _pid Cluster pool id.
    /// @param _amount Cluster token amount.
    function deposit(uint256 _pid, uint256 _amount) public override hasPool(_pid) poolRunning(_pid) {
        address _asset = poolInfo[_pid].assetToken;

        if (cooldownPeriod[_asset] > 0) {
            cooldowns[_msgSender()][_asset] = block.timestamp + cooldownPeriod[_asset];
        }

        // All necessary check according enough amount of DHV are performed inside.
        IStakingDHV(stakingDHV).coverCluster(_asset, _msgSender(), _amount, dhvPID);
        // Regular deposit of the cluster token to the staking interface.
        uint256 userShares = userInfo[_pid][_msgSender()].amount;
        StakingPools.deposit(_pid, _amount);

        // Get balances before withdrawing to accumulation.
        address[] memory _underlyings = IClusterToken(_asset).getUnderlyings();
        uint256[] memory _amountsBefore = new uint256[](_underlyings.length);
        for (uint256 i = 0; i < _underlyings.length; i++) {
            _amountsBefore[i] = IERC20(_underlyings[i]).balanceOf(address(this));
        }

        // Get underlyings from the Cluster contract.
        IClusterToken(_asset).withdrawToAccumulation(_amount);
        // Now we have underlyings on the MasterChief contract - send them to farming.
        
        uint256[] memory _amounts = new uint256[](_underlyings.length);
        for (uint256 i = 0; i < _underlyings.length; i++) {
            _amounts[i] = IERC20(_underlyings[i]).balanceOf(address(this)) - _amountsBefore[i];
        }
        IStrategyRouter(strategyRouter).deposit(_asset, _msgSender(), userShares, _amounts);
    }

    /// @notice Withdraws Cluster token from the staking. Releases DHV coverage.
    /// Returns underlyings to the Cluster contract. Farming contract returns new Clusters to the user.
    /// @param _pid Cluster pool id.
    /// @param _amount Cluster token amount.
    function withdraw(uint256 _pid, uint256 _amount) public override hasPool(_pid) {
        address _asset = poolInfo[_pid].assetToken;

        require(cooldowns[_msgSender()][_asset] <= block.timestamp, "Not released yet");

        uint256 totalClusterLocked = poolInfo[_pid].poolSupply;
        uint256 userAmount = userInfo[_pid][_msgSender()].amount;

        require(userAmount > 0 && userAmount >= _amount, "withdraw: wrong amount");

        // Get balances before withdrawing from farming contract.
        address[] memory _underlyings = IClusterToken(_asset).getUnderlyings();
        uint256[] memory _amountsBefore = new uint256[](_underlyings.length);
        for (uint256 i = 0; i < _underlyings.length; i++) {
            _amountsBefore[i] = IERC20(_underlyings[i]).balanceOf(address(this));
        }

        // Return all underlyings from the farming contract.
        // Caution: farming contract triggers harvest() by itself.
        IStrategyRouter(strategyRouter).withdraw(_asset, _msgSender(), _amount, totalClusterLocked);

        // By this point underlyings are on the ClusterLock contract.
        uint256[] memory _amounts = new uint256[](_underlyings.length);
        for (uint256 i = 0; i < _underlyings.length; i++) {
            _amounts[i] = IERC20(_underlyings[i]).balanceOf(address(this)) - _amountsBefore[i];
        }
        // Return underlyings to the Cluster token contract.
        IClusterToken(_asset).refundFromAccumulation(_amount);

        // Unstake and return cluster token to the user.
        StakingPools.withdraw(_pid, _amount);

        // Release locked DHV.
        if (_amount == userAmount) {
            IStakingDHV(stakingDHV).releaseClusterTotal(_asset, _msgSender(), dhvPID);
        } else {
            IStakingDHV(stakingDHV).releaseCluster(_asset, _msgSender(), _amount, dhvPID);
        }
    }

    /**********
     * USER'S YIELD INTERFACE
     **********/

    /// @notice Function to harvest yield (as new Cluster tokens).
    /// @param _pid Pool id of the staked cluster.
    function harvest(uint256 _pid) external virtual nonReentrant hasPool(_pid) {
        address _asset = poolInfo[_pid].assetToken;
        uint256 totalClusterLocked = poolInfo[_pid].poolSupply;
        uint256 userAmount = userInfo[_pid][_msgSender()].amount;
        if (userAmount == 0 || totalClusterLocked == 0) {
            return;
        }

        // Farming contract will send yield (as Cluster tokens) by itself.
        IStrategyRouter(strategyRouter).harvest(_asset, _msgSender(), userAmount, totalClusterLocked);
        _claimRewards(_pid, _msgSender());
    }

    /// @notice Function to trigger harvest yield for another address.
    /// @param _pid Pool id of the staked cluster.
    /// @param _user Address to harvest for.
    function triggerHarvest(uint256 _pid, address _user) external nonReentrant hasPool(_pid) {
        address _asset = poolInfo[_pid].assetToken;
        uint256 totalClusterLocked = poolInfo[_pid].poolSupply;
        uint256 userAmount = userInfo[_pid][_user].amount;
        if (userAmount == 0 || totalClusterLocked == 0) {
            return;
        }

        // Farming contract will send yield (as Cluster tokens) by itself.
        IStrategyRouter(strategyRouter).harvest(_asset, _user, userAmount, totalClusterLocked);
        _claimRewards(_pid, _user);
    }

    /// @notice returns yield balance for the user in Cluster tokens.
    /// @param _pid Cluster staking pool ID.
    function yieldBalance(uint256 _pid) external view virtual returns (uint256) {
        address _asset = poolInfo[_pid].assetToken;
        uint256 totalClusterLocked = poolInfo[_pid].poolSupply;
        uint256 userAmount = userInfo[_pid][_msgSender()].amount;
        if (userAmount == 0 || totalClusterLocked == 0) {
            return 0;
        }

        return IStrategyRouter(strategyRouter).yieldBalance(_asset, _msgSender(), userAmount, totalClusterLocked);
    }
}
