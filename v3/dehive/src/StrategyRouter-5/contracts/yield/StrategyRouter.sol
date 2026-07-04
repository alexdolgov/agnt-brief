// SPDX-License-Identifier: MIT
pragma solidity 0.8.6;

import "@openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import "../interfaces/yield/IStrategyRouter.sol";
import "../interfaces/yield/IStrategyPlugin.sol";
import "../interfaces/IClusterToken.sol";
import "../interfaces/IStakingBonus.sol";
import "../interfaces/IController.sol";
import "../interfaces/IDexAdapter.sol";

/// @title Strategy Router contract.
/// @author Blaize.tech team.
/// @notice Contract for operating with underlyings between different strategies.
contract StrategyRouter is IStrategyRouter, AccessControlUpgradeable, ReentrancyGuardUpgradeable {
    using SafeERC20 for IERC20;

    bytes32 public constant CLUSTER_LOCK_ROLE = keccak256("CLUSTER_LOCK_ROLE");
    uint256 public constant COMISSION_ACCURACY = 10**6;
    uint256 public constant DUST_AMOUNT = 10**12;

    /// @notice cluster => underlying => strategy.
    mapping(address => mapping(address => address)) public strategies;
    /// @notice cluster => comission from yield.
    mapping(address => uint256) public strategyComission;

    /// @notice Contract with bonuses
    address public override stakingBonuses;
    /// @notice Address of controller contract.
    address public controller;
    /// @notice Address of treasury.
    address public treasuryAddress;
    /// @notice Instant comission precentage
    uint256 public instantComission;
    /// @notice asset => amount of reward
    mapping(address => uint256) public rewardsPerShare;
    /// @notice asset => user => pending reward
    mapping(address => mapping(address => uint256)) public pendingRewards;
    /// @notice asset => user => reward paid per share
    mapping(address => mapping(address => uint256)) public rewardsPerSharePaid;

    /**********
     * ADMIN INTERFACE
     **********/
    function initialize(address _controller, address _treasuryAddress) external initializer {
        _setupRole(DEFAULT_ADMIN_ROLE, _msgSender());
        __ReentrancyGuard_init();

        require(_controller != address(0), "Zero address");
        controller = _controller;
        treasuryAddress = _treasuryAddress;
    }

    receive() external payable {}

    /// @notice Admin method to add/change strategies for the asset.
    /// @param _asset Cluster address.
    /// @param _strategies Array of addresses of strategy plugins (including keepers).
    function addClusterStrategies(address _asset, address[] memory _strategies) external onlyRole(DEFAULT_ADMIN_ROLE) {
        address[] memory _underlyings = IClusterToken(_asset).getUnderlyings();

        require(_strategies.length == _underlyings.length, "Incorrect strategies number");

        for (uint256 i = 0; i < _underlyings.length; i++) {
            require(_strategies[i] != address(0), "Missing strategy");
            strategies[_asset][_underlyings[i]] = _strategies[i];
        }
    }

    /// @notice Admin method to set yield farming comission.
    /// @param _asset Cluster address.
    /// @param _comission Yield farming comission.
    function setStrategyComission(address _asset, uint256 _comission) external onlyRole(DEFAULT_ADMIN_ROLE) {
        require(_comission <= COMISSION_ACCURACY, "Incorrect percent");
        strategyComission[_asset] = _comission;
    }

    /// @notice Admin method to set yield farming comission.
    /// @param _comission Yield farming comission.
    function setInstantComission(uint256 _comission) external onlyRole(DEFAULT_ADMIN_ROLE) {
        require(_comission <= COMISSION_ACCURACY, "Incorrect percent");
        instantComission = _comission;
    }

    /// @notice Sets bonuses contract.
    /// @param _stakingBonuses Contract to calculate yield bonuses.
    function setBonusesContract(address _stakingBonuses) external onlyRole(DEFAULT_ADMIN_ROLE) {
        stakingBonuses = _stakingBonuses;
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

    /// @notice Function that allows admin to set new controller.
    /// @param _newController Address of new controller.
    function setController(address _newController) external onlyRole(DEFAULT_ADMIN_ROLE) {
        require(_newController != address(0), "Wrong address!");
        controller = _newController;
    }

    /// @notice Function that allows admin to set new treasury.
    /// @param _newTreasury Address of new treasury.
    function setTreasuryAddress(address _newTreasury) external onlyRole(DEFAULT_ADMIN_ROLE) {
        require(_newTreasury != address(0), "Wrong address!");
        treasuryAddress = _newTreasury;
    }

    /// @notice Migrates deposits and rewards to a new strategy.
    /// @param _asset Address of cluster token.
    /// @param _underlying Address of want token.
    /// @param _newStrategy Address of new strategy.
    function migrateStrategy(
        address _asset,
        address _underlying,
        address _newStrategy
    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
        require(_newStrategy != address(0), "Wrong address!");

        address previousStrategy = strategies[_asset][_underlying];
        require(IStrategyPlugin(previousStrategy).want() == IStrategyPlugin(_newStrategy).want(), "Wrong strategy!");

        // Withdraw balance and rewards
        (uint256 wantDeposited, uint256 wantReward) = IStrategyPlugin(previousStrategy).withdrawAll();

        // Deposit to new strategy
        if (wantDeposited > 0) {
            IERC20(_underlying).safeTransfer(_newStrategy, wantDeposited);
            IStrategyPlugin(_newStrategy).deposit(wantDeposited);
        }

        // Send rewards
        if (wantReward > 0) {
            IERC20(_underlying).safeTransfer(_newStrategy, wantReward);
            IStrategyPlugin(_newStrategy).migrateRewards(_underlying, wantReward);
        }

        // Set strategy
        strategies[_asset][_underlying] = _newStrategy;
    }

    /**********
     * CLUSTER LOCK INTERFACE
     **********/

    /// @notice Provides funds from the ClusterLock contract to the strategies.
    /// @param _asset Cluster address.
    /// @param _amounts Amounts of underlyings to deposit.
    function deposit(
        address _asset,
        address _user,
        uint256 _userShares,
        uint256[] memory _amounts
    ) external override onlyRole(CLUSTER_LOCK_ROLE) {
        _updateReward(_user, _asset, _userShares);
        address[] memory _underlyings = IClusterToken(_asset).getUnderlyings();

        require(_amounts.length == _underlyings.length, "Incorrect amounts number");

        // Get underlyings from the ClusterLock. Should be approved from other side.
        // Move underlyings to the strategy.
        for (uint256 i = 0; i < _underlyings.length; i++) {
            address strat = strategies[_asset][_underlyings[i]];
            require(strat != address(0), "Missing strategy");
            IERC20(_underlyings[i]).safeTransferFrom(_msgSender(), strat, _amounts[i]);
            // Confirm that necessary amount was received by the strategy.
            IStrategyPlugin(strat).deposit(_amounts[i]);
        }
        // Strategy awaits for transferred amount - thus we do not perform extra approve.
    }

    /// @notice Withdraw deposited funds from strategies to ClusterLock.
    /// @param _asset Cluster address.
    /// @param _user Address of user, who withdraws funds.
    /// @param _share Amount of user's share in pool.
    /// @param _totalCluster Total pool supply.
    function withdraw(
        address _asset,
        address _user,
        uint256 _share,
        uint256 _totalCluster
    ) external override onlyRole(CLUSTER_LOCK_ROLE) {
        address[] memory _underlyings = IClusterToken(_asset).getUnderlyings();
        uint256[] memory underlyingAmounts = IClusterToken(_asset).getUnderlyingsAmountsFromClusterAmount(_share);

        // Provide the harvest before the withdraw
        harvest(_asset, _user, _share, _totalCluster);

        // Get underlyings from the strategies. Strategey will send the underlying by itself.
        for (uint256 i = 0; i < _underlyings.length; i++) {
            address strat = strategies[_asset][_underlyings[i]];
            require(strat != address(0), "Missing strategy");

            // Withdraw necessary amount from the strategy.
            IStrategyPlugin(strat).withdraw(underlyingAmounts[i]);
            // And transfer it to the cluster lock.
            IERC20(_underlyings[i]).safeTransfer(_msgSender(), underlyingAmounts[i]);
        }
    }

    /// @notice Function to harvest yield in a form of cluster.
    function harvest(
        address _asset,
        address _user,
        uint256 _share,
        uint256 _totalCluster
    ) public override onlyRole(CLUSTER_LOCK_ROLE) {
        address[] memory _underlyings = IClusterToken(_asset).getUnderlyings();
        uint256[] memory harvestedBalances = new uint256[](_underlyings.length);
        uint256[] memory coinsToSell = new uint256[](_underlyings.length);
        uint256[] memory coinsToBuy = new uint256[](_underlyings.length);
        uint256 totalYield = 0;

        // Harvest on every strategy - yield is left on the strategies.
        // Get total yield as ETH (Matic other core coin).
        for (uint256 i = 0; i < _underlyings.length; i++) {
            address strat = strategies[_asset][_underlyings[i]];
            if (strat != address(0)) {
                // getRewards() provides internal harvest and returns user's amount.
                // getRewards() sends new underlying to the router as well.
                totalYield += IStrategyPlugin(strat).getRewards();
                harvestedBalances[i] = IERC20(_underlyings[i]).balanceOf(address(this));
            }
        }

        if (totalYield < DUST_AMOUNT) {
            _transferRewards(_user, _asset);
            return;
        }
        // 5% goes instantly to treasury.
        totalYield -= (totalYield * instantComission) / COMISSION_ACCURACY;
        // Get yield amount of cluster yieldBalance().
        uint256 clusterAmount = IController(controller).getClusterAmountFromEth(totalYield, _asset);
        // Get underlyings from amount of cluster.
        uint256[] memory underlyingAmounts = IClusterToken(_asset).getUnderlyingsAmountsFromClusterAmount(clusterAmount);

        address adapter = IController(controller).adapters(_asset);
        // Cycle to swap extra tokens into ETH (Matic, core coin).
        // Cycle to buy missing coins.
        for (uint256 i = 0; i < _underlyings.length; i++) {
            if (harvestedBalances[i] < underlyingAmounts[i]) {
                coinsToBuy[i] = underlyingAmounts[i] - harvestedBalances[i];
            } else {
                uint256 coins = harvestedBalances[i] - underlyingAmounts[i];
                if (coins <= DUST_AMOUNT) {
                    coinsToSell[i] = 0;
                } else {
                    coinsToSell[i] = coins;
                    IERC20(_underlyings[i]).safeApprove(adapter, 0);
                    IERC20(_underlyings[i]).safeApprove(adapter, coinsToSell[i]);
                }
            }
        }

        IDexAdapter(adapter).swapUnderlyingsToETH(coinsToSell, _underlyings);

        for (uint256 i = 0; i < _underlyings.length; i++) {
            if (coinsToBuy[i] > 0) {
                uint256 ethVal = IDexAdapter(adapter).getEthAmountWithSlippage(coinsToBuy[i], _underlyings[i]);
                IDexAdapter(adapter).swapETHToUnderlying{value: ethVal}(_underlyings[i], coinsToBuy[i]);
            }
        }

        // Mint cluster.
        IClusterToken(_asset).assembleByAdapter(clusterAmount);

        rewardsPerShare[_asset] += (clusterAmount * 10**18) / _totalCluster;
        _updateReward(_user, _asset, _share);

        _transferRewards(_user, _asset);

        if (address(this).balance > DUST_AMOUNT) {
            Address.sendValue(payable(treasuryAddress), address(this).balance);
        }
    }

    /// @notice Function to display yield balance in cluster token.
    /// @param _asset Cluster address.
    /// @param _user Address of the user (to check bonuses if need).
    /// @return Pending reward in ETH.
    function yieldBalance(
        address _asset,
        address _user,
        uint256 _share,
        uint256 _totalCluster
    ) external view override returns (uint256) {
        address[] memory _underlyings = IClusterToken(_asset).getUnderlyings();

        /// All yield - (comission - NFT bonus).
        // Total yield in ETH.
        uint256 totalYield = 0;

        for (uint256 i = 0; i < _underlyings.length; i++) {
            address strat = strategies[_asset][_underlyings[i]];
            if (strat != address(0)) {
                totalYield += IStrategyPlugin(strat).rewardsInEth();
            }
        }

        uint256 pending = ((rewardsPerShare[_asset] - rewardsPerSharePaid[_asset][_user]) * _share) / 10**18;
        if (totalYield < DUST_AMOUNT) {
            return pendingRewards[_asset][_user] + pending;
        }
        totalYield -= (totalYield * instantComission) / COMISSION_ACCURACY;
        uint256 clusterAmount = IController(controller).getClusterAmountFromEth(totalYield, _asset);
        clusterAmount = (((clusterAmount * 10**18) / _totalCluster) * _share) / 10**18;

        (uint256 usersPart, ) = _getComissionedAmount(_user, _asset, clusterAmount);
        

        return pendingRewards[_asset][_user] + usersPart + pending;
    }

    /// @notice Calculates comission on reward.
    /// @param _user Address of user who harvests reward.
    /// @param _asset Cluster address.
    /// @param totalYield Amount of reward in ETH, collected by user.
    /// @return usersPart Amount of reward minus comission.
    function _getComissionedAmount(
        address _user,
        address _asset,
        uint256 totalYield
    ) internal view returns (uint256 usersPart, uint256 treasuryPart) {
        uint256 comission = (totalYield * strategyComission[_asset]) / COMISSION_ACCURACY;

        uint256 stakingBonus = 0;
        if (stakingBonuses != address(0)) {
            uint256 stakingBonusPercent = IStakingBonus(stakingBonuses).harvestBonus(_user, _asset);
            stakingBonus = (comission * stakingBonusPercent) / COMISSION_ACCURACY;
            require(stakingBonus <= comission, "Incorrect bonus calculated");
        }

        usersPart = totalYield - (comission - stakingBonus);
        treasuryPart = totalYield - usersPart;
    }

    function _updateReward(address _user, address _asset, uint256 _userShares) internal {
        pendingRewards[_asset][_user] += ((rewardsPerShare[_asset] - rewardsPerSharePaid[_asset][_user]) * _userShares) / 10**18;
        rewardsPerSharePaid[_asset][_user] = rewardsPerShare[_asset];
    }

    function _transferRewards(address _user, address _asset) internal {
        if (pendingRewards[_asset][_user] != 0) {
            (uint256 usersPart, uint256 treasuryPart) = _getComissionedAmount(_user, _asset, pendingRewards[_asset][_user]);
            pendingRewards[_asset][_user] = 0;

            IERC20(_asset).safeTransfer(_user, usersPart);
            IERC20(_asset).safeTransfer(treasuryAddress, treasuryPart);
        }
    }
}
