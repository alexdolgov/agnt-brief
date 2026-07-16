// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {IAccessHub} from "./interfaces/IAccessHub.sol";
import {Errors} from "contracts/libraries/Errors.sol";
import {
    AccessControlEnumerableUpgradeable,
    Initializable
} from "@openzeppelin-contracts-upgradeable/access/extensions/AccessControlEnumerableUpgradeable.sol";

import {ILauncherPlugin} from "./interfaces/ILauncherPlugin.sol";
import {IXShadow} from "./interfaces/IXShadow.sol";
import {IX33} from "./interfaces/IX33.sol";

import {IShadowV3Factory} from "./CL/core/interfaces/IShadowV3Factory.sol";
import {IShadowV3Pool} from "./CL/core/interfaces/IShadowV3Pool.sol";
import {IGaugeV3} from "./CL/gauge/interfaces/IGaugeV3.sol";
import {IFeeCollector} from "./CL/gauge/interfaces/IFeeCollector.sol";
import {INonfungiblePositionManager} from "./CL/periphery/interfaces/INonfungiblePositionManager.sol";

import {IPairFactory} from "./interfaces/IPairFactory.sol";
import {IFeeRecipientFactory} from "./interfaces/IFeeRecipientFactory.sol";

import {IVoter} from "./interfaces/IVoter.sol";
import {IMinter} from "./interfaces/IMinter.sol";
import {IMarbleMinter} from "./interfaces/IMarbleMinter.sol";
import {IVoteModule} from "./interfaces/IVoteModule.sol";
import {IGaugeV3} from "./CL/gauge/interfaces/IGaugeV3.sol";
import {IFeeDistributor} from "./interfaces/IFeeDistributor.sol";

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {Pausable} from "@openzeppelin/contracts/utils/Pausable.sol";

contract AccessHub is IAccessHub, Initializable, AccessControlEnumerableUpgradeable {
    /**
     * Start of Storage Slots
     */

    /// @notice role that can call changing fee splits and swap fees
    bytes32 public constant SWAP_FEE_SETTER = keccak256("SWAP_FEE_SETTER");
    /// @notice operator role
    bytes32 public constant PROTOCOL_OPERATOR = keccak256("PROTOCOL_OPERATOR");
    /// @notice central voter contract
    IVoter public constant oldVoter = IVoter(0x3aF1dD7A2755201F8e2D6dCDA1a61d9f54838f4f);
    /// @notice weekly emissions minter
    IMinter public constant oldMinter = IMinter(0xc7022F359cD1bDa8aB8a19d1F19d769cbf7F3765);

    /// @inheritdoc IAccessHub
    address public timelock;
    /// @inheritdoc IAccessHub
    address public treasury;

    /**
     * "nice-to-have" addresses for quickly finding contracts within the system
     */

    /// @inheritdoc IAccessHub
    address public clGaugeFactory;
    /// @inheritdoc IAccessHub
    address public gaugeFactory;
    /// @inheritdoc IAccessHub
    address public feeDistributorFactory;

    /**
     * core contracts
     */

    /// @notice central voter contract
    IVoter public voter;
    /// @notice weekly emissions minter
    IMarbleMinter public minter;
    /// @notice launchpad plugin for augmenting feeshare
    ILauncherPlugin public launcherPlugin;
    /// @notice xShadow contract
    IXShadow public xShadow;
    /// @notice X33 contract
    IX33 public x33;
    /// @notice CL V3 factory
    IShadowV3Factory public shadowV3PoolFactory;
    /// @notice legacy pair factory
    IPairFactory public poolFactory;
    /// @notice legacy fees holder contract
    IFeeRecipientFactory public feeRecipientFactory;
    /// @notice fee collector contract
    IFeeCollector public feeCollector;
    /// @notice voteModule contract
    IVoteModule public voteModule;
    /// @notice NFPManager contract
    INonfungiblePositionManager public nfpManager;

    /**
     * End of Storage Slots
     */
    modifier timelocked() {
        require(msg.sender == timelock, Errors.NOT_TIMELOCK(msg.sender));
        _;
    }

    constructor() {
        _disableInitializers();
    }

    /// @inheritdoc IAccessHub
    function initialize(InitParams calldata params) external initializer {
        /// @dev initialize all external interfaces
        timelock = params.timelock;
        treasury = params.treasury;
        voter = IVoter(params.voter);
        minter = IMarbleMinter(params.minter);
        launcherPlugin = ILauncherPlugin(params.launcherPlugin);
        xShadow = IXShadow(params.xShadow);
        x33 = IX33(params.x33);
        shadowV3PoolFactory = IShadowV3Factory(params.shadowV3PoolFactory);
        poolFactory = IPairFactory(params.poolFactory);
        feeRecipientFactory = IFeeRecipientFactory(params.feeRecipientFactory);
        feeCollector = IFeeCollector(params.feeCollector);
        voteModule = IVoteModule(params.voteModule);

        /// @dev reference addresses
        clGaugeFactory = params.clGaugeFactory;
        gaugeFactory = params.gaugeFactory;
        feeDistributorFactory = params.feeDistributorFactory;

        /// @dev fee setter role given to treasury
        _grantRole(SWAP_FEE_SETTER, params.treasury);
        /// @dev operator role given to treasury
        _grantRole(PROTOCOL_OPERATOR, params.treasury);
        /// @dev initially give admin role to treasury
        _grantRole(DEFAULT_ADMIN_ROLE, params.treasury);
        /// @dev give timelock the admin role
        _grantRole(DEFAULT_ADMIN_ROLE, params.timelock);
    }

    function reinit(InitParams calldata params) external timelocked {
        voter = IVoter(params.voter);
        minter = IMarbleMinter(params.minter);
        launcherPlugin = ILauncherPlugin(params.launcherPlugin);
        xShadow = IXShadow(params.xShadow);
        x33 = IX33(params.x33);
        shadowV3PoolFactory = IShadowV3Factory(params.shadowV3PoolFactory);
        poolFactory = IPairFactory(params.poolFactory);
        feeRecipientFactory = IFeeRecipientFactory(params.feeRecipientFactory);
        feeCollector = IFeeCollector(params.feeCollector);
        voteModule = IVoteModule(params.voteModule);

        /// @dev reference addresses
        clGaugeFactory = params.clGaugeFactory;
        gaugeFactory = params.gaugeFactory;
        feeDistributorFactory = params.feeDistributorFactory;
    }

    /// @inheritdoc IAccessHub
    function initializeVoter(IVoter.InitializationParams memory inputs) external timelocked {
        voter.initialize(inputs);
    }

    /**
     * Fee Setting Logic
     */

    /// @inheritdoc IAccessHub
    function setSwapFees(address[] calldata _pools, uint24[] calldata _swapFees, bool[] calldata _concentrated)
        external
        onlyRole(SWAP_FEE_SETTER)
    {
        /// @dev ensure continuity of length
        require(_pools.length == _swapFees.length && _swapFees.length == _concentrated.length, Errors.LENGTH_MISMATCH());
        for (uint256 i; i < _pools.length; ++i) {
            /// @dev we check if the pool is v3 or legacy and set their fees accordingly
            if (_concentrated[i]) {
                shadowV3PoolFactory.setFee(_pools[i], _swapFees[i]);
            } else {
                poolFactory.setPairFee(_pools[i], _swapFees[i]);
            }
        }
    }

    /// @inheritdoc IAccessHub
    function setFeeSplitCL(address[] calldata _pools, uint8[] calldata _feeProtocol)
        external
        onlyRole(SWAP_FEE_SETTER)
    {
        /// @dev ensure continuity of length
        require(_pools.length == _feeProtocol.length, Errors.LENGTH_MISMATCH());
        for (uint256 i; i < _pools.length; ++i) {
            shadowV3PoolFactory.setPoolFeeProtocol(_pools[i], _feeProtocol[i]);
        }
    }

    /// @inheritdoc IAccessHub
    function setFeeSplitLegacy(address[] calldata _pools, uint256[] calldata _feeSplits)
        external
        onlyRole(SWAP_FEE_SETTER)
    {
        /// @dev ensure continuity of length
        require(_pools.length == _feeSplits.length, Errors.LENGTH_MISMATCH());
        for (uint256 i; i < _pools.length; ++i) {
            poolFactory.setPairFeeSplit(_pools[i], _feeSplits[i]);
        }
    }

    /**
     * Voter governance
     */

    /// @inheritdoc IAccessHub
    function setNewGovernorInVoter(address _newGovernor) external onlyRole(PROTOCOL_OPERATOR) {
        /// @dev no checks are needed as the voter handles this already
        voter.setGovernor(_newGovernor);
    }

    /// @inheritdoc IAccessHub
    function governanceWhitelist(address[] calldata _token, bool[] calldata _whitelisted)
        external
        onlyRole(PROTOCOL_OPERATOR)
    {
        /// @dev ensure continuity of length
        require(_token.length == _whitelisted.length, Errors.LENGTH_MISMATCH());
        for (uint256 i; i < _token.length; ++i) {
            /// @dev if adding to the whitelist
            if (_whitelisted[i]) {
                /// @dev call the voter's whitelist function
                voter.whitelist(_token[i]);
            }
            /// @dev remove the token's whitelist
            else {
                voter.revokeWhitelist(_token[i]);
            }
        }
    }

    /// @inheritdoc IAccessHub
    function killGauge(address[] calldata _pairs) external onlyRole(PROTOCOL_OPERATOR) {
        for (uint256 i; i < _pairs.length; ++i) {
            /// @dev store pair
            address pair = _pairs[i];
            /// @dev collect fees from the pair
            feeCollector.collectProtocolFees(pair);
            /// @dev kill the gauge
            voter.killGauge(voter.gaugeForPool(pair));
            /// @dev set the new fees in the pair to 95/5
            shadowV3PoolFactory.setPoolFeeProtocol(pair, 5);
        }
    }

    /// @inheritdoc IAccessHub
    function reviveGauge(address[] calldata _pairs) external onlyRole(PROTOCOL_OPERATOR) {
        for (uint256 i; i < _pairs.length; ++i) {
            address pair = _pairs[i];
            /// @dev collect fees from the pair
            feeCollector.collectProtocolFees(pair);
            /// @dev revive the pair
            voter.reviveGauge(voter.gaugeForPool(pair));
            /// @dev set fee to the factory default
            shadowV3PoolFactory.setPoolFeeProtocol(pair, shadowV3PoolFactory.feeProtocol());
        }
    }

    /// @inheritdoc IAccessHub
    function setNfpManager(address _nfpManager) external onlyRole(PROTOCOL_OPERATOR) {
        voter.setNfpManager(_nfpManager);
    }

    /// @inheritdoc IAccessHub
    function syncNfpManager(address[] calldata gauges) external onlyRole(PROTOCOL_OPERATOR) {
        for (uint256 i; i < gauges.length; ++i) {
            IGaugeV3(gauges[i]).syncNfpManager();
        }
    }

    /// @inheritdoc IAccessHub
    function setEmissionsRatioInVoter(uint256 _pct) external onlyRole(PROTOCOL_OPERATOR) {
        voter.setGlobalRatio(_pct);
    }

    /// @inheritdoc IAccessHub
    function retrieveStuckEmissionsToGovernance(address _gauge, uint256 _period) external onlyRole(PROTOCOL_OPERATOR) {
        voter.stuckEmissionsRecovery(_gauge, _period);
    }

    /// @inheritdoc IAccessHub
    function setMainGaugeForClPair(address tokenA, address tokenB, address gauge)
        external
        onlyRole(PROTOCOL_OPERATOR)
    {
        voter.redirectEmissions(tokenA, tokenB, gauge);
    }

    function createGaugeForPool(address _pool) external onlyRole(PROTOCOL_OPERATOR) {
        bool isLegacy = poolFactory.isPair(_pool);
        if (isLegacy) {
            voter.createGauge(_pool);
        } else {
            IShadowV3Pool poolv3 = IShadowV3Pool(_pool);
            (address token0, address token1, int24 tickSpacing) =
                (poolv3.token0(), poolv3.token1(), poolv3.tickSpacing());
            voter.createCLGauge(token0, token1, tickSpacing);
        }
    }

    /// @inheritdoc IAccessHub
    function resetVotesOnBehalfOf(address _user) external timelocked {
        voter.reset(_user);
    }

    /**
     * xShadow Functions
     */

    /// @inheritdoc IAccessHub
    function transferWhitelistInXShadow(address[] calldata _who, bool[] calldata _whitelisted)
        external
        onlyRole(PROTOCOL_OPERATOR)
    {
        /// @dev ensure continuity of length
        require(_who.length == _whitelisted.length, Errors.LENGTH_MISMATCH());
        xShadow.setExemption(_who, _whitelisted);
    }

    /// @inheritdoc IAccessHub
    function transferToWhitelistInXShadow(address[] calldata _who, bool[] calldata _whitelisted)
        external
        onlyRole(PROTOCOL_OPERATOR)
    {
        /// @dev ensure continuity of length
        require(_who.length == _whitelisted.length, Errors.LENGTH_MISMATCH());
        xShadow.setExemptionTo(_who, _whitelisted);
    }

    /// @inheritdoc IAccessHub
    function toggleXShadowGovernance(bool enable) external onlyRole(PROTOCOL_OPERATOR) {
        /// @dev if enabled we call unpause otherwise we pause to disable
        enable ? xShadow.unpause() : xShadow.pause();
    }

    /// @inheritdoc IAccessHub
    function operatorRedeemXShadow(uint256 _amount) external onlyRole(PROTOCOL_OPERATOR) {
        xShadow.operatorRedeem(_amount);
    }

    /// @inheritdoc IAccessHub
    function migrateOperator(address _operator) external onlyRole(PROTOCOL_OPERATOR) {
        xShadow.migrateOperator(_operator);
    }

    /// @inheritdoc IAccessHub
    function rescueTrappedTokens(address[] calldata _tokens, uint256[] calldata _amounts)
        external
        onlyRole(PROTOCOL_OPERATOR)
    {
        xShadow.rescueTrappedTokens(_tokens, _amounts);
    }

    /// @inheritdoc IAccessHub
    function setRebaseThreshold(uint256 _newThreshold) external onlyRole(PROTOCOL_OPERATOR) {
        xShadow.setRebaseThreshold(_newThreshold);
    }

    /**
     * X33 Functions
     */

    /// @inheritdoc IAccessHub
    function transferOperatorInX33(address _newOperator) external onlyRole(PROTOCOL_OPERATOR) {
        x33.transferOperator(_newOperator);
    }

    /**
     * Minter Functions
     */

    /// @inheritdoc IAccessHub
    function setEmissionsMultiplierInMinter(uint256 _multiplier) external onlyRole(PROTOCOL_OPERATOR) {
        minter.updateEmissionsMultiplier(_multiplier);
    }

    /**
     * Reward List Functions
     */
    /// @inheritdoc IAccessHub
    function removeFeeDistributorRewards(address[] calldata _pools, address[] calldata _rewards)
        external
        onlyRole(PROTOCOL_OPERATOR)
    {
        require(_pools.length == _rewards.length, Errors.LENGTH_MISMATCH());
        for (uint256 i; i < _pools.length; ++i) {
            voter.removeFeeDistributorReward(voter.feeDistributorForGauge(voter.gaugeForPool(_pools[i])), _rewards[i]);
        }
    }

    function clawbackRewards(address feeDistributor, address token, address destination)
        external
        onlyRole(PROTOCOL_OPERATOR)
    {
        IFeeDistributor(feeDistributor).clawbackRewards(token, destination);
    }

    /**
     * LauncherPlugin specific functions
     */

    /// @inheritdoc IAccessHub
    function migratePoolInLauncherPlugin(address _oldPool, address _newPool) external onlyRole(PROTOCOL_OPERATOR) {
        launcherPlugin.migratePool(_oldPool, _newPool);
    }

    /// @inheritdoc IAccessHub
    function setConfigsInLauncherPlugin(address _pool, uint256 _take, address _recipient)
        external
        onlyRole(PROTOCOL_OPERATOR)
    {
        launcherPlugin.setConfigs(_pool, _take, _recipient);
    }

    /// @inheritdoc IAccessHub
    function enablePoolInLauncherPlugin(address _pool) external onlyRole(PROTOCOL_OPERATOR) {
        launcherPlugin.enablePool(_pool);
    }

    /// @inheritdoc IAccessHub
    function disablePoolInLauncherPlugin(address _pool) external onlyRole(PROTOCOL_OPERATOR) {
        launcherPlugin.disablePool(_pool);
    }

    /// @inheritdoc IAccessHub
    function setOperatorInLauncherPlugin(address _newOperator) external onlyRole(PROTOCOL_OPERATOR) {
        launcherPlugin.setOperator(_newOperator);
    }

    /// @inheritdoc IAccessHub
    function grantAuthorityInLauncherPlugin(address _newAuthority, string calldata _label)
        external
        onlyRole(PROTOCOL_OPERATOR)
    {
        launcherPlugin.grantAuthority(_newAuthority, _label);
    }

    /// @inheritdoc IAccessHub
    function labelAuthorityInLauncherPlugin(address _authority, string calldata _label)
        external
        onlyRole(PROTOCOL_OPERATOR)
    {
        launcherPlugin.label(_authority, _label);
    }

    /// @inheritdoc IAccessHub
    function revokeAuthorityInLauncherPlugin(address _oldAuthority) external onlyRole(PROTOCOL_OPERATOR) {
        launcherPlugin.revokeAuthority(_oldAuthority);
    }

    /**
     * FeeCollector functions
     */

    /// @inheritdoc IAccessHub
    function setTreasuryInFeeCollector(address newTreasury) external onlyRole(PROTOCOL_OPERATOR) {
        feeCollector.setTreasury(newTreasury);
    }

    /// @inheritdoc IAccessHub
    function setTreasuryFeesInFeeCollector(uint256 _treasuryFees) external onlyRole(PROTOCOL_OPERATOR) {
        feeCollector.setTreasuryFees(_treasuryFees);
    }

    /**
     * FeeRecipientFactory functions
     */

    /// @inheritdoc IAccessHub
    function setFeeToTreasuryInFeeRecipientFactory(uint256 _feeToTreasury) external onlyRole(PROTOCOL_OPERATOR) {
        feeRecipientFactory.setFeeToTreasury(_feeToTreasury);
    }

    /// @inheritdoc IAccessHub
    function setTreasuryInFeeRecipientFactory(address _treasury) external onlyRole(PROTOCOL_OPERATOR) {
        feeRecipientFactory.setTreasury(_treasury);
    }

    /**
     * CL Pool Factory functions
     */

    /// @inheritdoc IAccessHub
    function enableTickSpacing(int24 tickSpacing, uint24 initialFee) external onlyRole(PROTOCOL_OPERATOR) {
        shadowV3PoolFactory.enableTickSpacing(tickSpacing, initialFee);
    }

    /// @inheritdoc IAccessHub
    function setGlobalClFeeProtocol(uint8 _feeProtocolGlobal) external onlyRole(PROTOCOL_OPERATOR) {
        shadowV3PoolFactory.setFeeProtocol(_feeProtocolGlobal);
    }

    /// @inheritdoc IAccessHub
    /// @notice sets the address of the voter in the v3 factory for gauge fee setting
    function setVoterAddressInFactoryV3(address _voter) external timelocked {
        shadowV3PoolFactory.setVoter(_voter);
    }

    /// @inheritdoc IAccessHub
    function setFeeCollectorInFactoryV3(address _newFeeCollector) public timelocked {
        shadowV3PoolFactory.setFeeCollector(_newFeeCollector);
    }

    /**
     * Legacy Pool Factory functions
     */

    /// @inheritdoc IAccessHub
    function setTreasuryInLegacyFactory(address _treasury) external onlyRole(PROTOCOL_OPERATOR) {
        poolFactory.setTreasury(_treasury);
    }

    /// @inheritdoc IAccessHub
    function setFeeSplitWhenNoGauge(bool status) external onlyRole(PROTOCOL_OPERATOR) {
        poolFactory.setFeeSplitWhenNoGauge(status);
    }

    /// @inheritdoc IAccessHub
    function setLegacyFeeSplitGlobal(uint256 _feeSplit) external onlyRole(PROTOCOL_OPERATOR) {
        poolFactory.setFeeSplit(_feeSplit);
    }

    /// @inheritdoc IAccessHub
    function setLegacyFeeRecipient(address _pair, address _feeRecipient) external onlyRole(PROTOCOL_OPERATOR) {
        poolFactory.setFeeRecipient(_pair, _feeRecipient);
    }

    /// @inheritdoc IAccessHub
    function setLegacyFeeGlobal(uint256 _fee) external onlyRole(PROTOCOL_OPERATOR) {
        poolFactory.setFee(_fee);
    }

    /// @inheritdoc IAccessHub
    function setSkimEnabledLegacy(address _pair, bool _status) external onlyRole(PROTOCOL_OPERATOR) {
        poolFactory.setSkimEnabled(_pair, _status);
    }

    /**
     * VoteModule Functions
     */

    /// @inheritdoc IAccessHub
    function setCooldownExemption(address[] calldata _candidates, bool[] calldata _exempt) external timelocked {
        for (uint256 i; i < _candidates.length; ++i) {
            voteModule.setCooldownExemption(_candidates[i], _exempt[i]);
        }
    }

    /// @inheritdoc IAccessHub
    function setNewVoteModuleCooldown(uint256 _newCooldown) external timelocked {
        voteModule.setNewCooldown(_newCooldown);
    }

    /// @inheritdoc IAccessHub
    function kickInactive(address[] calldata _nonparticipants) external onlyRole(PROTOCOL_OPERATOR) {
        IVoter voterContract = IVoter(voter);
        uint256 nextPeriod = voterContract.getPeriod() + 1;

        /// @dev loop through all input addresses to check status of vote
        for (uint256 i; i < _nonparticipants.length; ++i) {
            /// @dev store for use
            address nonparticipant = _nonparticipants[i];
            /// @dev fetch data on current voting period (nextPeriod votes)
            (address[] memory _pools, uint256[] memory _weights) = voterContract.getVotes(nonparticipant, nextPeriod);

            /// @dev require the user has not voted this epoch
            require(_pools.length == 0 && _weights.length == 0, Errors.KICK_FORBIDDEN(nonparticipant));
            /// @dev reset the user's votes
            voterContract.reset(nonparticipant);
        }
    }

    /**
     * Timelock specific functions
     */

    /// @inheritdoc IAccessHub
    function execute(address _target, bytes calldata _payload) external timelocked {
        (bool success,) = _target.call(_payload);
        require(success, Errors.MANUAL_EXECUTION_FAILURE(_payload));
    }

    /// @inheritdoc IAccessHub
    function setNewTimelock(address _timelock) external timelocked {
        require(timelock != _timelock, Errors.SAME_ADDRESS());
        timelock = _timelock;
    }

    /// backup distribute method
    function backupDistribute() external onlyRole(PROTOCOL_OPERATOR) {
        backupDistributeBatch(0, type(uint256).max);
    }

    function backupDistributeBatch(uint256 startIndex, uint256 batchSize) public onlyRole(PROTOCOL_OPERATOR) {
        address SHADOW = address(xShadow.SHADOW());

        /// force unpause xshadow if its already paused
        if (Pausable(address(xShadow)).paused()) {
            xShadow.unpause();
        }
        minter.updatePeriod();

        uint256 currentPeriod = voter.getPeriod();
        address[] memory gauges = voter.getAllGauges();
        uint256 totalRewardPerPeriod = voter.totalRewardPerPeriod(currentPeriod);
        uint256 totalVotesPerPeriod = voter.totalVotesPerPeriod(currentPeriod);

        uint256 endIndex = startIndex + batchSize;
        if (endIndex > gauges.length) {
            endIndex = gauges.length;
        }

        for (uint256 i = startIndex; i < endIndex; i++) {
            uint256 lastDistro = voter.lastDistro(gauges[i]);
            if (lastDistro == currentPeriod) {
                continue;
            }

            uint256 balanceInVoter = IERC20(SHADOW).balanceOf(address(voter));
            address pool = voter.poolForGauge(gauges[i]);
            uint256 poolVotes = voter.poolTotalVotesPerPeriod(pool, currentPeriod);
            uint256 numerator = totalRewardPerPeriod * poolVotes * 1e18;
            uint256 balanceNeeded = numerator == 0 ? 0 : numerator / totalVotesPerPeriod / 1e18;

            if (balanceNeeded > balanceInVoter) {
                IERC20(SHADOW).transfer(address(voter), balanceNeeded - balanceInVoter);
            }

            if (voter.isAlive(gauges[i])) {
                voter.killGauge(gauges[i]);
                voter.reviveGauge(gauges[i]);
            } else {
                voter.stuckEmissionsRecovery(gauges[i], currentPeriod);
            }
        }
    }

    /// @dev allow distributing emissions via the accessHub
    function notifyEmissions(address[] calldata pools, uint256[] calldata emissions)
        external
        onlyRole(PROTOCOL_OPERATOR)
    {
        IERC20 SHADOW = IERC20(xShadow.SHADOW());
        SHADOW.approve(address(xShadow), SHADOW.balanceOf(address(this)));
        xShadow.convertEmissionsToken(SHADOW.balanceOf(address(this)));
        for (uint256 i; i < pools.length; ++i) {
            address pool = pools[i];
            address gauge = voter.gaugeForPool(pool);
            uint256 amount = emissions[i];
            xShadow.approve(gauge, amount);
            /// @dev both CL and legacy gauges have the same function so we can reuse the interface regardless
            IGaugeV3(gauge).notifyRewardAmount(address(xShadow), amount);
        }
    }

    function rescue(address token) external onlyRole(PROTOCOL_OPERATOR) {
        IERC20(token).transfer(treasury, IERC20(token).balanceOf(address(this)));
    }

    function rescueFromX33(address _token, uint256 _amount) external onlyRole(PROTOCOL_OPERATOR) {
        x33.rescue(_token, _amount);
        IERC20(_token).transfer(msg.sender, _amount);
    }

    function updateLegacyPairWithGaugesFeeSplit(uint256 start, uint256 batchSize)
        external
        onlyRole(PROTOCOL_OPERATOR)
    {
        uint256 end = start + batchSize;

        uint256 length = voter.getGaugesLength();
        end = end > length ? length : end;

        for (uint256 i = start; i < end; ++i) {
            address gauge = voter.getGauge(i);
            address pair = voter.poolForGauge(gauge);
            if (voter.isAlive(gauge)) {
                poolFactory.setPairFeeSplit(pair, 10_000);
            } else {
                poolFactory.setPairFeeSplit(pair, 500);
            }
        }
    }

    function migrateGauges(address[] calldata gauges) external onlyRole(PROTOCOL_OPERATOR) {
        uint256 length = gauges.length;

        IVoter _voter = voter;

        for (uint256 i = 0; i < length; ++i) {
            address gauge = gauges[i];
            if (oldVoter.isLegacyGauge(gauge)) {
                address pair = oldVoter.poolForGauge(gauge);
                _voter.createGauge(pair);
            } else {
                IShadowV3Pool pool = IShadowV3Pool(oldVoter.poolForGauge(gauge));
                address token0 = pool.token0();
                address token1 = pool.token0();
                int24 tickSpacing = pool.tickSpacing();

                _voter.createCLGauge(token0, token1, tickSpacing);
            }
        }
    }

    function lpBribeOldGauge(address _gauge, address _token, uint256 _amount) external onlyRole(PROTOCOL_OPERATOR) {
        setFeeCollectorInFactoryV3(0xcc0365F8f453C55EA7471C9F89767928c8f8d27F);
        IERC20(_token).approve(_gauge, _amount);
        IGaugeV3(_gauge).notifyRewardAmount(_token, _amount);
        setFeeCollectorInFactoryV3(0x949E7B2F3F66EAe761a9397346dDbd719F046c0e);
    }
}
