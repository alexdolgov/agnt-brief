// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {IAccessHub, IAccessHub0, IAccessHub1, IAccessHubTemp} from "./interfaces/IAccessHub.sol";
import {AccessHubStorage} from "contracts/libraries/AccessHubStorage.sol";
import {Errors} from "contracts/libraries/Errors.sol";
import {
    AccessControlEnumerableUpgradeable,
    Initializable
} from "@openzeppelin-contracts-upgradeable/access/extensions/AccessControlEnumerableUpgradeable.sol";
import {ProxyAdmin, ITransparentUpgradeableProxy} from "@openzeppelin/contracts/proxy/transparent/ProxyAdmin.sol";
import {EnumerableSet} from "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";
import {ERC1967Utils, IERC1967} from "@openzeppelin/contracts/proxy/ERC1967/ERC1967Utils.sol";

import {ILauncherPlugin} from "./interfaces/ILauncherPlugin.sol";
import {IXShadow} from "./interfaces/IXShadow.sol";
import {IX33} from "./interfaces/IX33.sol";
import {Ix33Adapter} from "./interfaces/Ix33Adapter.sol";
import {IX33Utils} from "./interfaces/IX33Utils.sol";

import {IShadowV3Factory} from "./CL/core/interfaces/IShadowV3Factory.sol";
import {IShadowV3Pool} from "./CL/core/interfaces/IShadowV3Pool.sol";
import {IGaugeV3} from "./CL/gauge/interfaces/IGaugeV3.sol";
import {IFeeCollector} from "./CL/gauge/interfaces/IFeeCollector.sol";
import {INonfungiblePositionManager} from "./CL/periphery/interfaces/INonfungiblePositionManager.sol";

import {IPairFactory} from "./interfaces/IPairFactory.sol";
import {IPair} from "./interfaces/IPair.sol";
import {IFeeRecipientFactory} from "./interfaces/IFeeRecipientFactory.sol";
import {IClGaugeFactory} from "contracts/CL/gauge/interfaces/IClGaugeFactory.sol";

import {IVoter} from "./interfaces/IVoter.sol";
import {IPoolUpdater} from "contracts/CL/gauge/interfaces/IPoolUpdater.sol";
import {IMinter} from "./interfaces/IMinter.sol";
import {IMarbleMinter} from "./interfaces/IMarbleMinter.sol";
import {IVoteModule} from "./interfaces/IVoteModule.sol";
import {IGaugeV3} from "./CL/gauge/interfaces/IGaugeV3.sol";
import {IFeeDistributor} from "./interfaces/IFeeDistributor.sol";

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IERC4626} from "@openzeppelin/contracts/interfaces/IERC4626.sol";
import {Pausable} from "@openzeppelin/contracts/utils/Pausable.sol";

abstract contract AccessHubExpansionPack is AccessControlEnumerableUpgradeable {
    using EnumerableSet for EnumerableSet.AddressSet;

    /// @notice role that can call changing fee splits and swap fees
    bytes32 public constant SWAP_FEE_SETTER = keccak256("SWAP_FEE_SETTER");
    /// @notice operator role
    bytes32 public constant PROTOCOL_OPERATOR = keccak256("PROTOCOL_OPERATOR");

    /// @notice central voter contract
    IVoter public constant oldVoter = IVoter(0x3aF1dD7A2755201F8e2D6dCDA1a61d9f54838f4f);
    /// @notice weekly emissions minter
    IMinter public constant oldMinter = IMinter(0xc7022F359cD1bDa8aB8a19d1F19d769cbf7F3765);
    address public constant oldClGaugeFactory = address(0xf914Cc768040B4268A779C3084a3E9cdA6E8a1A8);
    address public constant oldGaugeFactory = address(0x8CF82D413cA20a40a2Fa43C2bF77D136d81299e9);
    address public constant oldFeeDistributorFactory = address(0x29aDF08a22381855243eeeb3228647aC56847Ff5);
    ILauncherPlugin public constant oldLauncherPlugin = ILauncherPlugin(0x3eC4fC1885513D932F113F9De9B50a8764dBfc7f);
    IFeeRecipientFactory public constant oldFeeRecipientFactory =
        IFeeRecipientFactory(0x5712bD693aC758158146aa151F31BD74CFBF37c1);
    IFeeCollector public constant oldFeeCollector = IFeeCollector(0xcc0365F8f453C55EA7471C9F89767928c8f8d27F);
    ProxyAdmin public constant voterProxyAdmin = ProxyAdmin(0xbc1dd0854ecF61f6816A5ed1c5C45B1462187E18);
    ProxyAdmin public constant minterProxyAdmin = ProxyAdmin(0xdF1CF296e28b1a64Ea33EBF2994bC16653F24708);

    modifier timelocked() {
        _timelocked();
        _;
    }

    function _timelocked() internal view {
        require(msg.sender == AccessHubStorage.getStorage().timelock, Errors.NOT_TIMELOCK(msg.sender));
    }

    fallback(bytes calldata) external returns (bytes memory) {
        return abi.encode(AccessHubStorage.FUNCTION_NOT_FOUND_MAGIC_VALUE);
    }
}

contract AccessHub is IAccessHub0, AccessHubExpansionPack {
    using EnumerableSet for EnumerableSet.AddressSet;

    constructor() {
        _disableInitializers();
    }

    /// @inheritdoc IAccessHub0
    function initialize(IAccessHub0.InitParams calldata params) external initializer {
        AccessHubStorage.AccessHubState storage $ = AccessHubStorage.getStorage();

        /// @dev initialize all external interfaces
        $.timelock = params.timelock;
        $.treasury = params.treasury;
        $.voter = IVoter(params.voter);
        $.minter = IMarbleMinter(params.minter);
        $.launcherPlugin = ILauncherPlugin(params.launcherPlugin);
        $.xShadow = IXShadow(params.xShadow);
        $.x33 = IX33(params.x33);
        $.shadowV3PoolFactory = IShadowV3Factory(params.shadowV3PoolFactory);
        $.poolFactory = IPairFactory(params.poolFactory);
        $.feeRecipientFactory = IFeeRecipientFactory(params.feeRecipientFactory);
        $.feeCollector = IFeeCollector(params.feeCollector);
        $.voteModule = IVoteModule(params.voteModule);

        /// @dev reference addresses
        $.clGaugeFactory = params.clGaugeFactory;
        $.gaugeFactory = params.gaugeFactory;
        $.feeDistributorFactory = params.feeDistributorFactory;
        $.x33Adapter = Ix33Adapter(params.x33Adapter);

        /// @dev fee setter role given to treasury
        _grantRole(SWAP_FEE_SETTER, params.treasury);
        /// @dev operator role given to treasury
        _grantRole(PROTOCOL_OPERATOR, params.treasury);
        /// @dev initially give admin role to treasury
        _grantRole(DEFAULT_ADMIN_ROLE, params.treasury);
        /// @dev give timelock the admin role
        _grantRole(DEFAULT_ADMIN_ROLE, params.timelock);
    }

    function reinit(IAccessHub0.InitParams calldata params) external timelocked {
        AccessHubStorage.AccessHubState storage $ = AccessHubStorage.getStorage();

        $.voter = IVoter(params.voter);
        $.minter = IMarbleMinter(params.minter);
        $.launcherPlugin = ILauncherPlugin(params.launcherPlugin);
        $.xShadow = IXShadow(params.xShadow);
        $.x33 = IX33(params.x33);
        $.shadowV3PoolFactory = IShadowV3Factory(params.shadowV3PoolFactory);
        $.poolFactory = IPairFactory(params.poolFactory);
        $.feeRecipientFactory = IFeeRecipientFactory(params.feeRecipientFactory);
        $.feeCollector = IFeeCollector(params.feeCollector);
        $.voteModule = IVoteModule(params.voteModule);
        $.x33Adapter = Ix33Adapter(params.x33Adapter);

        /// @dev reference addresses
        $.clGaugeFactory = params.clGaugeFactory;
        $.gaugeFactory = params.gaugeFactory;
        $.feeDistributorFactory = params.feeDistributorFactory;
    }

    /// @inheritdoc IAccessHub0
    function initializeVoter(IVoter.InitializationParams memory inputs) external timelocked {
        AccessHubStorage.getStorage().voter.initialize(inputs);
    }

    /**
     * Expansion Pack Functions
     */

    /// @inheritdoc IAccessHub0
    function registerExpansionPack(address _newExpansionPack) external timelocked {
        require(AccessHubStorage.getStorage().expansionPacks.add(_newExpansionPack), Errors.FAILED_TO_ADD());
    }

    /// @inheritdoc IAccessHub0
    function replaceExpansionPack(address _oldExpansionPack, address _newExpansionPack) external timelocked {
        require(AccessHubStorage.getStorage().expansionPacks.remove(_oldExpansionPack), Errors.FAILED_TO_REMOVE());
        require(AccessHubStorage.getStorage().expansionPacks.add(_newExpansionPack), Errors.FAILED_TO_ADD());
    }

    /// @inheritdoc IAccessHub0
    function removeExpansionPack(address _expansionPack) external timelocked {
        require(AccessHubStorage.getStorage().expansionPacks.remove(_expansionPack), Errors.FAILED_TO_REMOVE());
    }

    /// @inheritdoc IAccessHub0
    function getAllExpansionPacks() external view returns (address[] memory) {
        return AccessHubStorage.getStorage().expansionPacks.values();
    }

    /// @inheritdoc IAccessHub0
    function getAllExpansionPackLength() external view returns (uint256) {
        return AccessHubStorage.getStorage().expansionPacks.length();
    }

    /// @inheritdoc IAccessHub0
    function getExpansionPack(uint256 index) external view returns (address) {
        return AccessHubStorage.getStorage().expansionPacks.at(index);
    }

    /**
     * Fee Setting Logic
     */

    /// @inheritdoc IAccessHub0
    function setSwapFees(address[] calldata _pools, uint24[] calldata _swapFees, bool[] calldata _concentrated)
        external
        onlyRole(SWAP_FEE_SETTER)
    {
        /// @dev ensure continuity of length
        require(_pools.length == _swapFees.length && _swapFees.length == _concentrated.length, Errors.LENGTH_MISMATCH());

        AccessHubStorage.AccessHubState storage $ = AccessHubStorage.getStorage();
        IShadowV3Factory _shadowV3PoolFactory = $.shadowV3PoolFactory;
        IPairFactory _poolFactory = $.poolFactory;

        for (uint256 i; i < _pools.length; ++i) {
            /// @dev we check if the pool is v3 or legacy and set their fees accordingly
            if (_concentrated[i]) {
                _shadowV3PoolFactory.setFee(_pools[i], _swapFees[i]);
            } else {
                _poolFactory.setPairFee(_pools[i], _swapFees[i]);
            }
        }
    }

    /// @inheritdoc IAccessHub0
    function setFeeSplitCL(address[] calldata _pools, uint8[] calldata _feeProtocol)
        external
        onlyRole(SWAP_FEE_SETTER)
    {
        /// @dev ensure continuity of length
        require(_pools.length == _feeProtocol.length, Errors.LENGTH_MISMATCH());

        IShadowV3Factory _shadowV3PoolFactory = AccessHubStorage.getStorage().shadowV3PoolFactory;

        for (uint256 i; i < _pools.length; ++i) {
            /// @dev need to encode call because interface changed from uint8 to uint24
            bytes memory data = abi.encodeWithSignature("setPoolFeeProtocol(address,uint8)", _pools[i], _feeProtocol[i]);
            (bool success,) = address(_shadowV3PoolFactory).call(data);

            require(success);
        }
    }

    /// @inheritdoc IAccessHub0
    function setFeeSplitLegacy(address[] calldata _pools, uint256[] calldata _feeSplits) external {
        AccessHubStorage.AccessHubState storage $ = AccessHubStorage.getStorage();

        require(
            hasRole(SWAP_FEE_SETTER, msg.sender) || msg.sender == address($.voter), Errors.NOT_AUTHORIZED(msg.sender)
        );

        /// @dev ensure continuity of length
        require(_pools.length == _feeSplits.length, Errors.LENGTH_MISMATCH());

        IPairFactory _poolFactory = $.poolFactory;

        for (uint256 i; i < _pools.length; ++i) {
            _poolFactory.setPairFeeSplit(_pools[i], _feeSplits[i]);
        }
    }

    /**
     * Voter governance
     */

    /// @inheritdoc IAccessHub0
    function setNewGovernorInVoter(address _newGovernor) external onlyRole(PROTOCOL_OPERATOR) {
        /// @dev no checks are needed as the voter handles this already
        AccessHubStorage.getStorage().voter.setGovernor(_newGovernor);
    }

    /// @inheritdoc IAccessHub0
    function setNewGovernorInOldVoter(address _newGovernor) external onlyRole(PROTOCOL_OPERATOR) {
        /// @dev no checks are needed as the voter handles this already
        oldVoter.setGovernor(_newGovernor);
    }

    /// @inheritdoc IAccessHub0
    function governanceWhitelist(address[] calldata _token, bool[] calldata _whitelisted)
        external
        onlyRole(PROTOCOL_OPERATOR)
    {
        /// @dev ensure continuity of length
        require(_token.length == _whitelisted.length, Errors.LENGTH_MISMATCH());

        IVoter _voter = AccessHubStorage.getStorage().voter;

        for (uint256 i; i < _token.length; ++i) {
            /// @dev if adding to the whitelist
            if (_whitelisted[i]) {
                /// @dev call the voter's whitelist function
                _voter.whitelist(_token[i]);
            }
            /// @dev remove the token's whitelist
            else {
                _voter.revokeWhitelist(_token[i]);
            }
        }
    }

    /// @inheritdoc IAccessHub0
    function killGauge(address[] calldata _pairs) external onlyRole(PROTOCOL_OPERATOR) {
        AccessHubStorage.AccessHubState storage $ = AccessHubStorage.getStorage();
        IShadowV3Factory _shadowV3PoolFactory = $.shadowV3PoolFactory;
        IFeeCollector _feeCollector = $.feeCollector;
        IVoter _voter = $.voter;

        for (uint256 i; i < _pairs.length; ++i) {
            /// @dev store pair
            address pair = _pairs[i];
            address gauge = _voter.gaugeForPool(pair);
            bool isClGauge = _voter.isClGauge(gauge);
            if (isClGauge) {
                /// @dev collect fees from the pair
                _feeCollector.collectProtocolFees(pair);
            }

            /// @dev kill the gauge
            _voter.killGauge(gauge);

            if (isClGauge) {
                /// @dev need to encode call because interface changed from uint8 to uint24
                bytes memory data = abi.encodeWithSignature("setPoolFeeProtocol(address,uint8)", pair, uint8(5));
                (bool success,) = address(_shadowV3PoolFactory).call(data);

                require(success);
            }
        }
    }

    /// @inheritdoc IAccessHub0
    function reviveGauge(address[] calldata _pairs) external onlyRole(PROTOCOL_OPERATOR) {
        AccessHubStorage.AccessHubState storage $ = AccessHubStorage.getStorage();
        IShadowV3Factory _shadowV3PoolFactory = $.shadowV3PoolFactory;
        IFeeCollector _feeCollector = $.feeCollector;
        IVoter _voter = $.voter;

        for (uint256 i; i < _pairs.length; ++i) {
            address pair = _pairs[i];
            address gauge = _voter.gaugeForPool(pair);
            bool isClGauge = _voter.isClGauge(gauge);

            if (isClGauge) {
                /// @dev collect fees from the pair
                _feeCollector.collectProtocolFees(pair);
            }

            /// @dev revive the pair
            _voter.reviveGauge(_voter.gaugeForPool(pair));

            if (isClGauge) {
                /// @dev set fee to the factory default
                /// @dev need to encode call because interface changed from uint8 to uint24
                bytes memory data = abi.encodeWithSignature("setPoolFeeProtocol(address,uint8)", pair, uint8(100));
                (bool success,) = address(_shadowV3PoolFactory).call(data);

                require(success);
            }
        }
    }

    /// @inheritdoc IAccessHub0
    /// @dev there is no equivalent for Old Voter as its NFP Manager can't be updated
    function setNfpManager(address _nfpManager) external onlyRole(PROTOCOL_OPERATOR) {
        AccessHubStorage.getStorage().voter.setNfpManager(_nfpManager);
    }

    /// @inheritdoc IAccessHub0
    function syncNfpManager(address[] calldata gauges) external onlyRole(PROTOCOL_OPERATOR) {
        for (uint256 i; i < gauges.length; ++i) {
            IGaugeV3(gauges[i]).syncNfpManager();
        }
    }

    /// @inheritdoc IAccessHub0
    function setEmissionsRatioInVoter(uint256 _pct) external onlyRole(PROTOCOL_OPERATOR) {
        AccessHubStorage.getStorage().voter.setGlobalRatio(_pct);
    }

    /// @inheritdoc IAccessHub0
    function setEmissionsRatioInOldVoter(uint256 _pct) external onlyRole(PROTOCOL_OPERATOR) {
        oldVoter.setGlobalRatio(_pct);
    }

    /// @inheritdoc IAccessHub0
    function retrieveStuckEmissionsToGovernance(address _gauge, uint256 _period) external onlyRole(PROTOCOL_OPERATOR) {
        AccessHubStorage.getStorage().voter.stuckEmissionsRecovery(_gauge, _period);
    }

    /// @inheritdoc IAccessHub0
    function retrieveStuckEmissionsToGovernanceFromOldVoter(address _gauge, uint256 _period)
        external
        onlyRole(PROTOCOL_OPERATOR)
    {
        oldVoter.stuckEmissionsRecovery(_gauge, _period);
    }

    /// @inheritdoc IAccessHub0
    function setMainGaugeForClPair(address tokenA, address tokenB, address gauge)
        external
        onlyRole(PROTOCOL_OPERATOR)
    {
        AccessHubStorage.getStorage().voter.redirectEmissions(tokenA, tokenB, gauge);
    }

    /// @inheritdoc IAccessHub0
    function resetVotesOnBehalfOf(address _user) external timelocked {
        AccessHubStorage.getStorage().voter.reset(_user);
    }

    /// @inheritdoc IAccessHub0
    function pokeVotesOnBehalfOf(address _user) external timelocked {
        AccessHubStorage.getStorage().voter.poke(_user);
    }

    /// @inheritdoc IAccessHub0
    function votesOnBehalfOf(address _user, address[] calldata _pools, uint256[] calldata _weights)
        external
        timelocked
    {
        AccessHubStorage.getStorage().voter.vote(_user, _pools, _weights);
    }

    /**
     * Reward List Functions
     */
    /// @inheritdoc IAccessHub0
    function removeFeeDistributorRewards(address[] calldata _pools, address[] calldata _rewards)
        external
        onlyRole(PROTOCOL_OPERATOR)
    {
        IVoter _voter = AccessHubStorage.getStorage().voter;

        require(_pools.length == _rewards.length, Errors.LENGTH_MISMATCH());
        for (uint256 i; i < _pools.length; ++i) {
            _voter.removeFeeDistributorReward(
                _voter.feeDistributorForGauge(_voter.gaugeForPool(_pools[i])), _rewards[i]
            );
        }
    }

    /// @inheritdoc IAccessHub0
    function clawbackRewards(address feeDistributor, address token, address destination)
        external
        onlyRole(PROTOCOL_OPERATOR)
    {
        IFeeDistributor(feeDistributor).clawbackRewards(token, destination);
    }

    /// @inheritdoc IAccessHub0
    function clawbackRewards(address feeDistributor, address[] calldata tokens, address destination)
        external
        onlyRole(PROTOCOL_OPERATOR)
    {
        for (uint256 i; i < tokens.length; i++) {
            IFeeDistributor(feeDistributor).clawbackRewards(tokens[i], destination);
        }
    }

    /**
     * FeeCollector functions
     */

    /// @inheritdoc IAccessHub0
    function setTreasuryInFeeCollector(address newTreasury) external onlyRole(PROTOCOL_OPERATOR) {
        AccessHubStorage.getStorage().feeCollector.setTreasury(newTreasury);
    }

    /// @inheritdoc IAccessHub0
    function setTreasuryFeesInFeeCollector(uint256 _treasuryFees) external onlyRole(PROTOCOL_OPERATOR) {
        AccessHubStorage.getStorage().feeCollector.setTreasuryFees(_treasuryFees);
    }

    /**
     * FeeRecipientFactory functions
     */

    /// @inheritdoc IAccessHub0
    function setFeeToTreasuryInFeeRecipientFactory(uint256 _feeToTreasury) external onlyRole(PROTOCOL_OPERATOR) {
        AccessHubStorage.getStorage().feeRecipientFactory.setFeeToTreasury(_feeToTreasury);
    }

    /// @inheritdoc IAccessHub0
    function setTreasuryInFeeRecipientFactory(address _treasury) external onlyRole(PROTOCOL_OPERATOR) {
        AccessHubStorage.getStorage().feeRecipientFactory.setTreasury(_treasury);
    }

    /**
     * CL Pool Factory functions
     */

    /// @inheritdoc IAccessHub0
    function enableTickSpacing(int24 tickSpacing, uint24 initialFee) external onlyRole(PROTOCOL_OPERATOR) {
        AccessHubStorage.getStorage().shadowV3PoolFactory.enableTickSpacing(tickSpacing, initialFee);
    }

    /// @inheritdoc IAccessHub0
    function setGlobalClFeeProtocol(uint8 _feeProtocolGlobal) external onlyRole(PROTOCOL_OPERATOR) {
        AccessHubStorage.getStorage().shadowV3PoolFactory.setFeeProtocol(_feeProtocolGlobal);
    }

    /// @inheritdoc IAccessHub0
    /// @notice sets the address of the voter in the v3 factory for gauge fee setting
    function setVoterAddressInFactoryV3(address _voter) external timelocked {
        AccessHubStorage.getStorage().shadowV3PoolFactory.setVoter(_voter);
    }

    /// @inheritdoc IAccessHub0
    function setFeeCollectorInFactoryV3(address _newFeeCollector) public timelocked {
        AccessHubStorage.getStorage().shadowV3PoolFactory.setFeeCollector(_newFeeCollector);
    }

    /**
     * Legacy Pool Factory functions
     */

    /// @inheritdoc IAccessHub0
    function setTreasuryInLegacyFactory(address _treasury) external onlyRole(PROTOCOL_OPERATOR) {
        AccessHubStorage.getStorage().poolFactory.setTreasury(_treasury);
    }

    /// @inheritdoc IAccessHub0
    function setFeeSplitWhenNoGauge(bool status) external onlyRole(PROTOCOL_OPERATOR) {
        AccessHubStorage.getStorage().poolFactory.setFeeSplitWhenNoGauge(status);
    }

    /// @inheritdoc IAccessHub0
    function setLegacyFeeSplitGlobal(uint256 _feeSplit) external onlyRole(PROTOCOL_OPERATOR) {
        AccessHubStorage.getStorage().poolFactory.setFeeSplit(_feeSplit);
    }

    /// @inheritdoc IAccessHub0
    function setLegacyFeeRecipient(address _pair, address _feeRecipient) external onlyRole(PROTOCOL_OPERATOR) {
        // need to set governor to the feeRecipient address first, revive and kill the gauge, then set the governor back
        address existingGovernor = oldVoter.governor();
        oldVoter.setGovernor(_feeRecipient);

        address gauge = oldVoter.gaugeForPool(_pair);

        // need to create old gauge if it doesn't exist
        if (gauge == address(0)) {
            /// @dev whitelist tokens temporarily, revoke after the gauge is created
            address token0 = IPair(_pair).token0();
            address token1 = IPair(_pair).token1();

            oldVoter.whitelist(token0);
            oldVoter.whitelist(token1);

            gauge = oldVoter.createGauge(_pair);

            oldVoter.revokeWhitelist(token0);
            oldVoter.revokeWhitelist(token1);
        }

        if (!oldVoter.isAlive(gauge)) {
            oldVoter.reviveGauge(gauge);
        }

        oldVoter.killGauge(gauge);

        require(IPair(_pair).feeRecipient() == _feeRecipient);

        // change governor back
        oldVoter.setGovernor(existingGovernor);
    }

    /// @inheritdoc IAccessHub0
    function setLegacyFeeGlobal(uint256 _fee) external onlyRole(PROTOCOL_OPERATOR) {
        AccessHubStorage.getStorage().poolFactory.setFee(_fee);
    }

    /// @inheritdoc IAccessHub0
    function setSkimEnabledLegacy(address _pair, bool _status) external onlyRole(PROTOCOL_OPERATOR) {
        AccessHubStorage.getStorage().poolFactory.setSkimEnabled(_pair, _status);
    }

    /**
     * VoteModule Functions
     */

    /// @inheritdoc IAccessHub0
    function setCooldownExemption(address[] calldata _candidates, bool[] calldata _exempt) external timelocked {
        IVoteModule _voteModule = AccessHubStorage.getStorage().voteModule;

        for (uint256 i; i < _candidates.length; ++i) {
            _voteModule.setCooldownExemption(_candidates[i], _exempt[i]);
        }
    }

    /// @inheritdoc IAccessHub0
    function setNewVoteModuleCooldown(uint256 _newCooldown) external timelocked {
        AccessHubStorage.getStorage().voteModule.setNewCooldown(_newCooldown);
    }

    /// @inheritdoc IAccessHub0
    function kickInactive(address[] calldata _nonparticipants) external onlyRole(PROTOCOL_OPERATOR) {
        IVoter voterContract = AccessHubStorage.getStorage().voter;
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

    /// @inheritdoc IAccessHub0
    function execute(address _target, bytes calldata _payload) external timelocked {
        (bool success,) = _target.call(_payload);
        require(success, Errors.MANUAL_EXECUTION_FAILURE(_payload));
    }

    /// @inheritdoc IAccessHub0
    function setNewTimelock(address _timelock) external timelocked {
        AccessHubStorage.AccessHubState storage $ = AccessHubStorage.getStorage();

        require($.timelock != _timelock, Errors.SAME_ADDRESS());
        $.timelock = _timelock;
    }

    ///////////////////////////
    /// Unordered Functions ///
    ///////////////////////////

    /// @inheritdoc IAccessHub0
    function rescue(address token) external onlyRole(PROTOCOL_OPERATOR) {
        IERC20(token).transfer(AccessHubStorage.getStorage().treasury, IERC20(token).balanceOf(address(this)));
    }

    /// @inheritdoc IAccessHub0
    function rescueFromX33(address _token, uint256 _amount) external onlyRole(PROTOCOL_OPERATOR) {
        IX33 _x33 = AccessHubStorage.getStorage().x33;

        uint256 balanceBefore = IERC20(_token).balanceOf(address(this));
        _x33.rescue(_token, _amount);
        // unused logic for an extremely unlikely edge case
        // try _x33.rescue(_token, _amount) {}
        // catch {
        //     // if rescue fails, it's likely due to the approval check within x33.rescue()
        //     // in this case we use x33.swapIncentiveViaAggregator and this.rescueFromX33Callback to transfer the tokens

        //     // whitelist accessHub as aggregator if needed
        //     if (!_x33.whitelistedAggregators(address(this))) {
        //         _x33.whitelistAggregator(address(this), true);
        //     }

        //     // record current x33 operator to revert back to later
        //     address x33Operator = _x33.operator();

        //     // temporarily become x33's operator to use swapIncentiveViaAggregator
        //     _x33.transferOperator(address(this));

        //     // use swapIncentiveViaAggregator to transfer tokens
        //     // makes x33 call this.rescueFromX33Callback()
        //     _x33.swapIncentiveViaAggregator(
        //         IX33.AggregatorParams({
        //             aggregator: address(this),
        //             tokenIn: _token,
        //             amountIn: _amount,
        //             minAmountOut: 0,
        //             callData: abi.encodeCall(this.rescueFromX33Callback, (_token, _amount))
        //         })
        //     );

        //     // revert x33's operator to the previous one
        //     _x33.transferOperator(x33Operator);
        // }

        IERC20(_token).transfer(msg.sender, IERC20(_token).balanceOf(address(this)) - balanceBefore);
    }

    // unused logic for an extremely unlikely edge case
    // /// @notice only used if rescueFromX33's first attempt fails
    // function rescueFromX33Callback(address token, uint256 amount) external {
    //     IX33 _x33 = AccessHubStorage.getStorage().x33;
    //     require(msg.sender == address(_x33), Errors.NOT_AUTHORIZED(msg.sender));

    //     IERC20(token).transferFrom(address(_x33), address(this), amount);
    // }

    /// @inheritdoc IAccessHub0
    function rescueFromX33Adapter(address _token) external onlyRole(PROTOCOL_OPERATOR) {
        AccessHubStorage.getStorage().x33Adapter.rescue(_token);
    }

    /// @inheritdoc IAccessHub0
    function preX33UpdateHook(address user) external {
        AccessHubStorage.AccessHubState storage $ = AccessHubStorage.getStorage();
        IX33 _x33 = $.x33;
        IXShadow _xShadow = $.xShadow;
        IVoter _voter = $.voter;

        address _x33Adapter = address($.x33Adapter);

        require(msg.sender == _x33Adapter || hasRole(PROTOCOL_OPERATOR, msg.sender), Errors.NOT_X33_ADAPTER());

        // poke votes on voter
        _voter.poke(user);

        // allow xShadow to be transfered to/from x33 and x33Adapter
        address[] memory exemptionList = new address[](2);
        bool[] memory states = new bool[](2);
        exemptionList[0] = address(_x33);
        exemptionList[1] = _x33Adapter;
        states[0] = true;
        states[1] = true;
        _xShadow.setExemption(exemptionList, states);
        _xShadow.setExemptionTo(exemptionList, states);
    }

    /// @inheritdoc IAccessHub0
    function postX33UpdateHook() external {
        AccessHubStorage.AccessHubState storage $ = AccessHubStorage.getStorage();
        IX33 _x33 = $.x33;
        IXShadow _xShadow = $.xShadow;

        address _x33Adapter = address($.x33Adapter);

        require(msg.sender == _x33Adapter || hasRole(PROTOCOL_OPERATOR, msg.sender), Errors.NOT_X33_ADAPTER());

        // prevent xShadow to be transfered to/from x33
        address[] memory exemptionList = new address[](2);
        bool[] memory states = new bool[](2);
        exemptionList[0] = address(_x33);
        exemptionList[1] = _x33Adapter;
        states[0] = false;
        states[1] = false;
        _xShadow.setExemption(exemptionList, states);
        _xShadow.setExemptionTo(exemptionList, states);
    }

    // function lpBribeOldGauge(address _gauge, address _token, uint256 _amount) external onlyRole(PROTOCOL_OPERATOR) {
    //     setFeeCollectorInFactoryV3(0xcc0365F8f453C55EA7471C9F89767928c8f8d27F);
    //     IERC20(_token).approve(_gauge, _amount);
    //     IGaugeV3(_gauge).notifyRewardAmount(_token, _amount);
    //     setFeeCollectorInFactoryV3(0x949E7B2F3F66EAe761a9397346dDbd719F046c0e);
    // }
}

contract AccessHubExpansionPack1 is IAccessHub1, AccessHubExpansionPack {
    using EnumerableSet for EnumerableSet.AddressSet;

    //////////////////////
    /// View Functions ///
    //////////////////////

    /// @inheritdoc IAccessHub1
    function timelock() external view returns (address) {
        return AccessHubStorage.getStorage().timelock;
    }

    /// @inheritdoc IAccessHub1
    function treasury() external view returns (address) {
        return AccessHubStorage.getStorage().treasury;
    }

    /**
     * "nice-to-have" addresses for quickly finding contracts within the system
     */

    /// @inheritdoc IAccessHub1
    function clGaugeFactory() external view returns (address) {
        return AccessHubStorage.getStorage().clGaugeFactory;
    }

    /// @inheritdoc IAccessHub1
    function gaugeFactory() external view returns (address) {
        return AccessHubStorage.getStorage().gaugeFactory;
    }

    /// @inheritdoc IAccessHub1
    function feeDistributorFactory() external view returns (address) {
        return AccessHubStorage.getStorage().feeDistributorFactory;
    }

    /**
     * core contracts
     */

    /// @notice central voter contract
    /// @inheritdoc IAccessHub1
    function voter() external view returns (address) {
        return address(AccessHubStorage.getStorage().voter);
    }

    /// @notice weekly emissions minter
    /// @inheritdoc IAccessHub1
    function minter() external view returns (address) {
        return address(AccessHubStorage.getStorage().minter);
    }

    /// @notice launchpad plugin for augmenting feeshare
    /// @inheritdoc IAccessHub1
    function launcherPlugin() external view returns (address) {
        return address(AccessHubStorage.getStorage().launcherPlugin);
    }

    /// @notice xShadow contract
    /// @inheritdoc IAccessHub1
    function xShadow() external view returns (address) {
        return address(AccessHubStorage.getStorage().xShadow);
    }

    /// @notice X33 contract
    /// @inheritdoc IAccessHub1
    function x33() external view returns (address) {
        return address(AccessHubStorage.getStorage().x33);
    }

    /// @notice adapter for X33 contract
    /// @inheritdoc IAccessHub1
    function x33Adapter() external view returns (address) {
        return address(AccessHubStorage.getStorage().x33Adapter);
    }

    /// @notice CL V3 factory
    /// @inheritdoc IAccessHub1
    function shadowV3PoolFactory() external view returns (address) {
        return address(AccessHubStorage.getStorage().shadowV3PoolFactory);
    }

    /// @notice legacy pair factory
    /// @inheritdoc IAccessHub1
    function poolFactory() external view returns (address) {
        return address(AccessHubStorage.getStorage().poolFactory);
    }

    /// @notice legacy fees holder contract
    /// @inheritdoc IAccessHub1
    function feeRecipientFactory() external view returns (address) {
        return address(AccessHubStorage.getStorage().feeRecipientFactory);
    }

    /// @notice fee collector contract
    /// @inheritdoc IAccessHub1
    function feeCollector() external view returns (address) {
        return address(AccessHubStorage.getStorage().feeCollector);
    }

    /// @notice voteModule contract
    /// @inheritdoc IAccessHub1
    function voteModule() external view returns (address) {
        return address(AccessHubStorage.getStorage().voteModule);
    }

    /// @notice NFPManager contract
    /// @inheritdoc IAccessHub1
    function nfpManager() external view returns (address) {
        return address(AccessHubStorage.getStorage().nfpManager);
    }

    /**
     * xShadow Functions
     */

    /// @inheritdoc IAccessHub1
    function transferWhitelistInXShadow(address[] calldata _who, bool[] calldata _whitelisted)
        external
        onlyRole(PROTOCOL_OPERATOR)
    {
        /// @dev ensure continuity of length
        require(_who.length == _whitelisted.length, Errors.LENGTH_MISMATCH());
        AccessHubStorage.getStorage().xShadow.setExemption(_who, _whitelisted);
    }

    /// @inheritdoc IAccessHub1
    function transferToWhitelistInXShadow(address[] calldata _who, bool[] calldata _whitelisted)
        external
        onlyRole(PROTOCOL_OPERATOR)
    {
        /// @dev ensure continuity of length
        require(_who.length == _whitelisted.length, Errors.LENGTH_MISMATCH());
        AccessHubStorage.getStorage().xShadow.setExemptionTo(_who, _whitelisted);
    }

    /// @inheritdoc IAccessHub1
    function toggleXShadowGovernance(bool enable) external onlyRole(PROTOCOL_OPERATOR) {
        /// @dev if enabled we call unpause otherwise we pause to disable
        enable ? AccessHubStorage.getStorage().xShadow.unpause() : AccessHubStorage.getStorage().xShadow.pause();
    }

    /// @inheritdoc IAccessHub1
    function operatorRedeemXShadow(uint256 _amount) external onlyRole(PROTOCOL_OPERATOR) {
        AccessHubStorage.getStorage().xShadow.operatorRedeem(_amount);
    }

    /// @inheritdoc IAccessHub1
    function migrateOperator(address _operator) external onlyRole(PROTOCOL_OPERATOR) {
        AccessHubStorage.getStorage().xShadow.migrateOperator(_operator);
    }

    /// @inheritdoc IAccessHub1
    function rescueTrappedTokens(address[] calldata _tokens, uint256[] calldata _amounts)
        external
        onlyRole(PROTOCOL_OPERATOR)
    {
        AccessHubStorage.getStorage().xShadow.rescueTrappedTokens(_tokens, _amounts);
    }

    /// @inheritdoc IAccessHub1
    function setRebaseThreshold(uint256 _newThreshold) external onlyRole(PROTOCOL_OPERATOR) {
        AccessHubStorage.getStorage().xShadow.setRebaseThreshold(_newThreshold);
    }

    /**
     * LauncherPlugin specific functions
     */

    /// @inheritdoc IAccessHub1
    function migratePoolInLauncherPlugin(address _oldPool, address _newPool) external onlyRole(PROTOCOL_OPERATOR) {
        AccessHubStorage.getStorage().launcherPlugin.migratePool(_oldPool, _newPool);
    }

    /// @inheritdoc IAccessHub1
    function setConfigsInLauncherPlugin(address _pool, uint256 _take, address _recipient)
        external
        onlyRole(PROTOCOL_OPERATOR)
    {
        AccessHubStorage.getStorage().launcherPlugin.setConfigs(_pool, _take, _recipient);
    }

    /// @inheritdoc IAccessHub1
    function enablePoolInLauncherPlugin(address _pool) external onlyRole(PROTOCOL_OPERATOR) {
        AccessHubStorage.getStorage().launcherPlugin.enablePool(_pool);
    }

    /// @inheritdoc IAccessHub1
    function disablePoolInLauncherPlugin(address _pool) external onlyRole(PROTOCOL_OPERATOR) {
        AccessHubStorage.getStorage().launcherPlugin.disablePool(_pool);
    }

    /// @inheritdoc IAccessHub1
    function setOperatorInLauncherPlugin(address _newOperator) external onlyRole(PROTOCOL_OPERATOR) {
        AccessHubStorage.getStorage().launcherPlugin.setOperator(_newOperator);
    }

    /// @inheritdoc IAccessHub1
    function grantAuthorityInLauncherPlugin(address _newAuthority, string calldata _label)
        external
        onlyRole(PROTOCOL_OPERATOR)
    {
        AccessHubStorage.getStorage().launcherPlugin.grantAuthority(_newAuthority, _label);
    }

    /// @inheritdoc IAccessHub1
    function labelAuthorityInLauncherPlugin(address _authority, string calldata _label)
        external
        onlyRole(PROTOCOL_OPERATOR)
    {
        AccessHubStorage.getStorage().launcherPlugin.label(_authority, _label);
    }

    /// @inheritdoc IAccessHub1
    function revokeAuthorityInLauncherPlugin(address _oldAuthority) external onlyRole(PROTOCOL_OPERATOR) {
        AccessHubStorage.getStorage().launcherPlugin.revokeAuthority(_oldAuthority);
    }

    /**
     * X33 Functions
     */

    /// @inheritdoc IAccessHub1
    function transferOperatorInX33(address _newOperator) external onlyRole(PROTOCOL_OPERATOR) {
        AccessHubStorage.getStorage().x33.transferOperator(_newOperator);
    }

    /// @inheritdoc IAccessHub1
    function whitelistAggregatorInX33(address _newAggregator) external onlyRole(PROTOCOL_OPERATOR) {
        AccessHubStorage.getStorage().x33.whitelistAggregator(_newAggregator, true);
    }

    /// @inheritdoc IAccessHub1
    function transferOperatorInX33Adapter(address _newOperator) external onlyRole(PROTOCOL_OPERATOR) {
        AccessHubStorage.getStorage().x33Adapter.transferOperator(_newOperator);
    }

    /**
     * Minter Functions
     */

    /// @inheritdoc IAccessHub1
    function setEmissionsMultiplierInMinter(uint256 _multiplier) external onlyRole(PROTOCOL_OPERATOR) {
        AccessHubStorage.getStorage().minter.updateEmissionsMultiplier(_multiplier);
    }

    /// @inheritdoc IAccessHub1
    function setEmissionsMultiplierInOldMinter(uint256 _multiplier) external onlyRole(PROTOCOL_OPERATOR) {
        oldMinter.updateEmissionsMultiplier(_multiplier);
    }

    ///////////////////////////
    /// Unordered Functions ///
    ///////////////////////////

    // These functions are not ordered according to contracts since AccessHub is full

    /// @inheritdoc IAccessHub1
    function pokeVotesOnBehalfOf(address[] calldata _users) external onlyRole(SWAP_FEE_SETTER) {
        IVoter _voter = AccessHubStorage.getStorage().voter;
        uint256 length = _users.length;
        for (uint256 i = 0; i < length; i++) {
            _voter.poke(_users[i]);
        }
    }

    /// @inheritdoc IAccessHub1
    function rebaseX33() external {
        AccessHubStorage.AccessHubState storage $ = AccessHubStorage.getStorage();
        IX33 _x33 = $.x33;
        IXShadow _xShadow = $.xShadow;

        address _x33Adapter = address($.x33Adapter);

        require(msg.sender == _x33Adapter || hasRole(PROTOCOL_OPERATOR, msg.sender), Errors.NOT_X33_ADAPTER());

        // record original xShadow operator address as well
        address xShadowOperator = _xShadow.operator();

        // temporarily make AccessHub the operator of both x33 and xShadow
        _x33.transferOperator(address(this));
        _xShadow.migrateOperator(address(this));

        // transfer x33 to AccessHub and redeem
        uint256 x33Balance = _x33.balanceOf(address(_x33));
        _x33.rescue(address(_x33), x33Balance);
        _x33.approve(address(_x33Adapter), x33Balance);
        uint256 xShadowAmount = Ix33Adapter(_x33Adapter).redeem(x33Balance, address(this));
        _xShadow.operatorRedeem(xShadowAmount);

        // transfer Shadow to AccessHub and compound
        IERC20 _shadow = IERC20(_xShadow.shadow());
        _shadow.transfer(address(_x33), xShadowAmount); // xShadow is 1:1 to shadow
        _x33.compound();

        // transfer operator roles back to the original addresses
        _x33.transferOperator(_x33Adapter);
        _xShadow.migrateOperator(xShadowOperator);
    }

    /// @inheritdoc IAccessHub1
    function whitelistGaugeAndFeeDistributorOnXShadow(address gauge, address feeDistributor) external {
        AccessHubStorage.AccessHubState storage $ = AccessHubStorage.getStorage();
        IXShadow _xShadow = $.xShadow;
        IVoter _voter = $.voter;

        require(msg.sender == address(_voter) || hasRole(PROTOCOL_OPERATOR, msg.sender), Errors.NOT_X33_ADAPTER());

        // Need to check if it's already whitelisted
        address[] memory addresses = new address[](2);
        uint256 length;
        if (!_xShadow.isExempt(gauge)) {
            addresses[length] = gauge;
            length++;
        }

        if (!_xShadow.isExempt(feeDistributor)) {
            addresses[length] = feeDistributor;
            length++;
        }

        // trucate array
        assembly ("memory-safe") {
            mstore(addresses, length)
        }

        bool[] memory states = new bool[](length);
        for (uint256 i = 0; i < length; i++) {
            states[i] = true;
        }

        // set exemptions
        if (length > 0) {
            _xShadow.setExemption(addresses, states);
        }
    }

    /// @inheritdoc IAccessHub1
    function migrateGauges(address[] calldata gauges) external onlyRole(PROTOCOL_OPERATOR) {
        uint256 length = gauges.length;

        IVoter _voter = AccessHubStorage.getStorage().voter;

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

    /// @inheritdoc IAccessHub1
    function upgradeVoterImplementation(address _newVoterImplementation, bytes memory data) external timelocked {
        AccessHubStorage.AccessHubState storage $ = AccessHubStorage.getStorage();
        IVoter _voter = $.voter;

        voterProxyAdmin.upgradeAndCall(ITransparentUpgradeableProxy(address(_voter)), _newVoterImplementation, data);
    }

    /// @inheritdoc IAccessHub1
    function upgradeMinterImplementation(address _newMinterImplementation, bytes memory data) external timelocked {
        AccessHubStorage.AccessHubState storage $ = AccessHubStorage.getStorage();
        IMarbleMinter _minter = $.minter;

        minterProxyAdmin.upgradeAndCall(ITransparentUpgradeableProxy(address(_minter)), _newMinterImplementation, data);
    }

    /// @inheritdoc IAccessHub1
    function upgradeGaugeV3Implementation(address _newGaugeV3Implementation) external timelocked {
        IClGaugeFactory(AccessHubStorage.getStorage().clGaugeFactory).setImplementation(_newGaugeV3Implementation);
    }

    /// @inheritdoc IAccessHub1
    function createGaugeForPool(address _pool) external onlyRole(PROTOCOL_OPERATOR) {
        AccessHubStorage.AccessHubState storage $ = AccessHubStorage.getStorage();
        IPairFactory _poolFactory = $.poolFactory;
        IVoter _voter = $.voter;

        bool isLegacy = _poolFactory.isPair(_pool);

        if (isLegacy) {
            _voter.createGauge(_pool);
        } else {
            IShadowV3Pool poolv3 = IShadowV3Pool(_pool);
            (address token0, address token1, int24 tickSpacing) =
                (poolv3.token0(), poolv3.token1(), poolv3.tickSpacing());

            IPoolUpdater poolUpdater = IPoolUpdater(_voter.poolUpdater());
            bool isSeeded = poolUpdater.isSeeded(_pool);

            if (!isSeeded) {
                (uint256 amount0, uint256 amount1) = poolUpdater.amountForSeed(_pool);

                IERC20(token0).transferFrom(msg.sender, address(this), amount0);
                IERC20(token1).transferFrom(msg.sender, address(this), amount1);

                IERC20(token0).approve(address(poolUpdater), amount0);
                IERC20(token1).approve(address(poolUpdater), amount1);

                poolUpdater.seed(_pool);
            }

            _voter.createCLGauge(token0, token1, tickSpacing);
        }
    }

    /// @inheritdoc IAccessHub1
    function amountForSeed(address pool) public view returns (uint256 amount0, uint256 amount1) {
        AccessHubStorage.AccessHubState storage $ = AccessHubStorage.getStorage();
        IVoter _voter = $.voter;

        return IPoolUpdater(_voter.poolUpdater()).amountForSeed(pool);
    }

    /// @inheritdoc IAccessHub1
    function updatePeriodDataInClGauge(
        address gauge,
        uint256 period,
        uint160 periodEndSecondsPerLiquidityCumulativeX128
    ) external onlyRole(PROTOCOL_OPERATOR) {
        IGaugeV3(gauge).updatePeriodData(period, periodEndSecondsPerLiquidityCumulativeX128);
    }

    /// @inheritdoc IAccessHub1
    function x33ClaimIncentives(address[] calldata _feeDistributors, address[][] calldata _tokens)
        external
        onlyRole(SWAP_FEE_SETTER)
    {
        AccessHubStorage.AccessHubState storage $ = AccessHubStorage.getStorage();

        $.x33.transferOperator(address(this));

        IX33.AggregatorParams memory _params = IX33.AggregatorParams({
            aggregator: address($.voter),
            tokenIn: address($.x33Adapter),
            amountIn: 0,
            minAmountOut: 0,
            callData: abi.encodeWithSelector(
                IVoter.claimLegacyIncentives.selector, address($.x33), _feeDistributors, _tokens
            )
        });

        $.x33.swapIncentiveViaAggregator(_params);

        $.x33.transferOperator(address($.x33Adapter));
    }

    /// @inheritdoc IAccessHub1
    function setTreasury(address _newTreasury) external onlyRole(PROTOCOL_OPERATOR) {
        AccessHubStorage.AccessHubState storage $ = AccessHubStorage.getStorage();
        $.treasury = _newTreasury;

        // $.feeCollector.setTreasury(_newTreasury); // this one can only be called by treasury itself
        $.feeRecipientFactory.setTreasury(_newTreasury);
        $.poolFactory.setTreasury(_newTreasury);
    }

    /// @inheritdoc IAccessHub1
    function setX33Utils(address _x33Utils) external onlyRole(PROTOCOL_OPERATOR) {
        AccessHubStorage.AccessHubState storage $ = AccessHubStorage.getStorage();
        $.x33Utils = IX33Utils(_x33Utils);
    }

    /// @inheritdoc IAccessHub1
    function preX33UtilsHook() external {
        AccessHubStorage.AccessHubState storage $ = AccessHubStorage.getStorage();
        require(msg.sender == address($.x33Utils), Errors.NOT_AUTHORIZED(msg.sender));
        $.x33.transferOperator(address($.x33Utils));
    }

    /// @inheritdoc IAccessHub1
    function postX33UtilsHook() external {
        AccessHubStorage.AccessHubState storage $ = AccessHubStorage.getStorage();
        require(msg.sender == address($.x33Utils), Errors.NOT_AUTHORIZED(msg.sender));
        $.x33.transferOperator(address($.x33Adapter));
    }

    /// @inheritdoc IAccessHub1
    function backupDistribute() external onlyRole(PROTOCOL_OPERATOR) {
        backupDistributeBatch(0, type(uint256).max);
    }

    /// @inheritdoc IAccessHub1
    function backupDistributeBatch(uint256 startIndex, uint256 batchSize) public onlyRole(PROTOCOL_OPERATOR) {
        AccessHubStorage.AccessHubState storage $ = AccessHubStorage.getStorage();
        IXShadow _xShadow = $.xShadow;
        IVoter _voter = oldVoter;

        address SHADOW = address(_xShadow.SHADOW());

        /// force unpause xshadow if its already paused
        if (Pausable(address(_xShadow)).paused()) {
            _xShadow.unpause();
        }
        oldMinter.updatePeriod();

        uint256 currentPeriod = _voter.getPeriod();
        address[] memory gauges = _voter.getAllGauges();
        uint256 totalRewardPerPeriod = _voter.totalRewardPerPeriod(currentPeriod);
        uint256 totalVotesPerPeriod = _voter.totalVotesPerPeriod(currentPeriod);

        uint256 endIndex = startIndex + batchSize;
        if (endIndex > gauges.length) {
            endIndex = gauges.length;
        }

        for (uint256 i = startIndex; i < endIndex; i++) {
            uint256 lastDistro = _voter.lastDistro(gauges[i]);
            if (lastDistro == currentPeriod) {
                continue;
            }

            uint256 balanceInVoter = IERC20(SHADOW).balanceOf(address(_voter));
            address pool = _voter.poolForGauge(gauges[i]);
            uint256 poolVotes = _voter.poolTotalVotesPerPeriod(pool, currentPeriod);
            uint256 numerator = totalRewardPerPeriod * poolVotes * 1e18;
            uint256 balanceNeeded = numerator == 0 ? 0 : numerator / totalVotesPerPeriod / 1e18;

            if (balanceNeeded > balanceInVoter) {
                IERC20(SHADOW).transfer(address(_voter), balanceNeeded - balanceInVoter);
            }

            if (_voter.isAlive(gauges[i])) {
                _voter.killGauge(gauges[i]);
                _voter.reviveGauge(gauges[i]);
            } else {
                _voter.stuckEmissionsRecovery(gauges[i], currentPeriod);
            }
        }
    }

    /// @inheritdoc IAccessHub1
    /// @dev allow distributing emissions via the accessHub
    function notifyEmissions(address[] calldata pools, uint256[] calldata emissions)
        external
        onlyRole(PROTOCOL_OPERATOR)
    {
        AccessHubStorage.AccessHubState storage $ = AccessHubStorage.getStorage();
        IXShadow _xShadow = $.xShadow;
        IVoter _voter = $.voter;

        IERC20 SHADOW = IERC20(_xShadow.SHADOW());
        SHADOW.approve(address(_xShadow), SHADOW.balanceOf(address(this)));
        _xShadow.convertEmissionsToken(SHADOW.balanceOf(address(this)));
        for (uint256 i; i < pools.length; ++i) {
            address pool = pools[i];
            address gauge = _voter.gaugeForPool(pool);
            uint256 amount = emissions[i];
            _xShadow.approve(gauge, amount);
            /// @dev both CL and legacy gauges have the same function so we can reuse the interface regardless
            IGaugeV3(gauge).notifyRewardAmount(address(_xShadow), amount);
        }
    }

    /// @inheritdoc IAccessHub1
    function flashExpand(address _flashExpansion, bytes memory data) external timelocked {
        require(AccessHubStorage.getStorage().expansionPacks.add(_flashExpansion), Errors.FAILED_TO_ADD());
        (bool success,) = address(this).delegatecall(data);
        require(success, Errors.MANUAL_EXECUTION_FAILURE(data));
        require(AccessHubStorage.getStorage().expansionPacks.remove(_flashExpansion), Errors.FAILED_TO_REMOVE());
    }
}

contract AccessHubExpansionPackTemp is IAccessHubTemp, AccessHubExpansionPack {
    using EnumerableSet for EnumerableSet.AddressSet;

    /**
     * Expansion Pack Functions
     */
    function registerExpansionPack2(address _newExpansionPack) external onlyRole(PROTOCOL_OPERATOR) {
        require(AccessHubStorage.getStorage().expansionPacks.add(_newExpansionPack), Errors.FAILED_TO_ADD());
    }

    function replaceExpansionPack2(address _oldExpansionPack, address _newExpansionPack)
        external
        onlyRole(PROTOCOL_OPERATOR)
    {
        require(AccessHubStorage.getStorage().expansionPacks.remove(_oldExpansionPack), Errors.FAILED_TO_REMOVE());
        require(AccessHubStorage.getStorage().expansionPacks.add(_newExpansionPack), Errors.FAILED_TO_ADD());
    }

    function removeExpansionPack2(address _expansionPack) external onlyRole(PROTOCOL_OPERATOR) {
        require(AccessHubStorage.getStorage().expansionPacks.remove(_expansionPack), Errors.FAILED_TO_REMOVE());
    }

    function execute2(address _target, bytes calldata _payload) external onlyRole(PROTOCOL_OPERATOR) {
        (bool success,) = _target.call(_payload);
        require(success, Errors.MANUAL_EXECUTION_FAILURE(_payload));
    }

    function flashExpand2(address _flashExpansion, bytes memory data) external onlyRole(PROTOCOL_OPERATOR) {
        require(AccessHubStorage.getStorage().expansionPacks.add(_flashExpansion), Errors.FAILED_TO_ADD());
        (bool success,) = address(this).delegatecall(data);
        require(success, Errors.MANUAL_EXECUTION_FAILURE(data));
        require(AccessHubStorage.getStorage().expansionPacks.remove(_flashExpansion), Errors.FAILED_TO_REMOVE());
    }

    function upgradeImplementation2(address newImplementation, bytes memory data)
        external
        onlyRole(PROTOCOL_OPERATOR)
    {
        ERC1967Utils.upgradeToAndCall(newImplementation, data);
    }

    function setCorrectFees(address[] calldata deadGauges) external onlyRole(PROTOCOL_OPERATOR) {
        AccessHubStorage.AccessHubState storage $ = AccessHubStorage.getStorage();
        IShadowV3Factory _shadowV3PoolFactory = $.shadowV3PoolFactory;
        IPairFactory _poolFactory = $.poolFactory;

        address[] memory gauges = oldVoter.getAllGauges();

        for (uint256 i; i < gauges.length; ++i) {
            address gauge = gauges[i];
            address pool = oldVoter.poolForGauge(gauge);

            /// set protocol fees or fee split to 100%
            if (oldVoter.isClGauge(gauge)) {
                /// @dev need to encode call because interface changed from uint8 to uint24
                bytes memory data = abi.encodeWithSignature("setPoolFeeProtocol(address,uint8)", pool, uint8(100));
                (bool success,) = address(_shadowV3PoolFactory).call(data);

                require(success);
            } else {
                _poolFactory.setPairFeeSplit(pool, 10_000);
            }
        }

        for (uint256 i; i < deadGauges.length; ++i) {
            address gauge = gauges[i];
            address pool = oldVoter.poolForGauge(gauge);

            if (oldVoter.isClGauge(gauge)) {
                /// @dev need to encode call because interface changed from uint8 to uint24
                bytes memory data = abi.encodeWithSignature("setPoolFeeProtocol(address,uint8)", pool, uint8(5));
                (bool success,) = address(_shadowV3PoolFactory).call(data);

                require(success);
            } else {
                _poolFactory.setPairFeeSplit(pool, 500);
            }
        }
    }

    function migrateGaugeToMarble(address[] calldata gauges) external onlyRole(PROTOCOL_OPERATOR) {
        AccessHubStorage.AccessHubState storage $ = AccessHubStorage.getStorage();
        IShadowV3Factory _shadowV3PoolFactory = $.shadowV3PoolFactory;
        IPairFactory _poolFactory = $.poolFactory;

        for (uint256 i; i < gauges.length; ++i) {
            address gauge = gauges[i];
            address pool = oldVoter.poolForGauge(gauge);

            bool wasAlive = oldVoter.isAlive(gauge);

            // need to revive and kill again to set the fee recipient
            if (!wasAlive) {
                oldVoter.reviveGauge(gauge);
            }
            oldVoter.killGauge(gauge);

            /// set protocol fees or fee split to 100% if the gauge was alive
            if (wasAlive) {
                if (oldVoter.isClGauge(gauge)) {
                    /// @dev need to encode call because interface changed from uint8 to uint24
                    bytes memory data = abi.encodeWithSignature("setPoolFeeProtocol(address,uint8)", pool, uint8(100));
                    (bool success,) = address(_shadowV3PoolFactory).call(data);

                    require(success);
                } else {
                    _poolFactory.setPairFeeSplit(pool, 10_000);
                }
            } else {
                if (oldVoter.isClGauge(gauge)) {
                    /// @dev need to encode call because interface changed from uint8 to uint24
                    bytes memory data = abi.encodeWithSignature("setPoolFeeProtocol(address,uint8)", pool, uint8(5));
                    (bool success,) = address(_shadowV3PoolFactory).call(data);

                    require(success);
                } else {
                    _poolFactory.setPairFeeSplit(pool, 500);
                }
            }
        }
    }

    function updateLegacyPairWithGaugesFeeSplit(uint256 start, uint256 batchSize)
        external
        onlyRole(PROTOCOL_OPERATOR)
    {
        AccessHubStorage.AccessHubState storage $ = AccessHubStorage.getStorage();
        IVoter _voter = $.voter;
        IPairFactory _poolFactory = $.poolFactory;

        uint256 end = start + batchSize;

        uint256 length = _voter.getGaugesLength();
        end = end > length ? length : end;

        for (uint256 i = start; i < end; ++i) {
            address gauge = _voter.getGauge(i);
            address pair = _voter.poolForGauge(gauge);
            if (_voter.isAlive(gauge)) {
                _poolFactory.setPairFeeSplit(pair, 10_000);
            } else {
                _poolFactory.setPairFeeSplit(pair, 500);
            }
        }
    }

    function grantFeeSetterRole(address setter) external onlyRole(PROTOCOL_OPERATOR) {
        _grantRole(SWAP_FEE_SETTER, setter);
    }

    function transferVoterAndMinterOwnership() external onlyRole(PROTOCOL_OPERATOR) {
        address oldAccessHub = address(0x5e7A9eea6988063A4dBb9CcDDB3E04C923E8E37f);

        bytes memory data = abi.encodeWithSignature("transferOwnership(address)", oldAccessHub);

        (bool success,) = address(AccessHubStorage.getStorage().voter).call(data);
        require(success, Errors.MANUAL_EXECUTION_FAILURE(data));

        require(address(AccessHubStorage.getStorage().voter.accessHub()) == oldAccessHub);

        data = abi.encodeWithSignature("setAccessHub(address)", oldAccessHub);

        (success,) = address(AccessHubStorage.getStorage().minter).call(data);
        require(success, Errors.MANUAL_EXECUTION_FAILURE(data));

        require(address(AccessHubStorage.getStorage().minter.accessHub()) == oldAccessHub);
    }

    function reinit2(IAccessHub0.InitParams calldata params) external onlyRole(PROTOCOL_OPERATOR) {
        AccessHubStorage.AccessHubState storage $ = AccessHubStorage.getStorage();

        $.voter = IVoter(params.voter);
        $.minter = IMarbleMinter(params.minter);
        $.launcherPlugin = ILauncherPlugin(params.launcherPlugin);
        $.xShadow = IXShadow(params.xShadow);
        $.x33 = IX33(params.x33);
        $.shadowV3PoolFactory = IShadowV3Factory(params.shadowV3PoolFactory);
        $.poolFactory = IPairFactory(params.poolFactory);
        $.feeRecipientFactory = IFeeRecipientFactory(params.feeRecipientFactory);
        $.feeCollector = IFeeCollector(params.feeCollector);
        $.voteModule = IVoteModule(params.voteModule);
        $.x33Adapter = Ix33Adapter(params.x33Adapter);

        /// @dev reference addresses
        $.clGaugeFactory = params.clGaugeFactory;
        $.gaugeFactory = params.gaugeFactory;
        $.feeDistributorFactory = params.feeDistributorFactory;
    }

    function setNfpManager() external onlyRole(PROTOCOL_OPERATOR) {
        AccessHubStorage.AccessHubState storage $ = AccessHubStorage.getStorage();

        $.nfpManager = INonfungiblePositionManager(0x12E66C8F215DdD5d48d150c8f46aD0c6fB0F4406);
    }

    function setUpRescue(address account) external onlyRole(PROTOCOL_OPERATOR) {
        AccessHubStorage.AccessHubState storage $ = AccessHubStorage.getStorage();

        address poolA = 0x66af3655e14a045F1742b3c9544553Ef7915ed35; // shadow/stS
        address poolB = 0x779cA4E7F14d10489cd32655fc513641bA3a8d8F; // shadow/usdc
        address poolC = 0x36688823ef912ca5F3C152163c3082A01F22CC67; // s/shadow CL
        address gaugeA = oldVoter.gaugeForPool(poolA);
        address gaugeB = oldVoter.gaugeForPool(poolB);
        address gaugeC = oldVoter.gaugeForPool(poolC);

        require(oldVoter.poolTotalVotesPerPeriod(poolA, 2880) == 0, "Already set up");

        // set governor of old voter to be msig for now so stuck tokens can go to msig
        oldVoter.setGovernor(0x5Be2e859D0c2453C9aA062860cA27711ff553432);

        // revive and kill gauges that are to be used to get a more accurate amount of tokens stuck
        oldVoter.reviveGauge(gaugeA);
        oldVoter.reviveGauge(gaugeB);
        oldVoter.reviveGauge(gaugeC);
        oldVoter.killGauge(gaugeA);
        oldVoter.killGauge(gaugeB);
        oldVoter.killGauge(gaugeC);

        // set the governor back
        oldVoter.setGovernor(0x2a78f35726751d22e172dd755CFC051f352affbF);

        uint256 ratio;

        {
            // Step 1: Find out how much emissions there is next week
            uint256 expectedEmissions = oldMinter.calculateWeeklyEmissions();

            // Step 2: Calculate the ratio of stuck tokens to expected emissions
            IERC20 shadow = IERC20($.xShadow.shadow());
            uint256 stuckBalance = shadow.balanceOf(address(oldVoter));
            ratio = stuckBalance * 1000 / expectedEmissions;
        }

        // Step 3: Vote in the following order atomically, to acheive `ratio` amount of votes on Pool A, and 1e18 votes on s/shadow pool

        address[] memory pools = new address[](2);
        uint256[] memory weights = new uint256[](2);

        // 1. Revive PoolA and PoolB, vote [PoolA,PoolB],[ratio,ratio] with Account1 (the order of the votes is important)
        //        Total votes = 2 * ratio,  PoolA votes = ratio,    PoolB votes = ratio,    s/shadow = 1000
        oldVoter.reviveGauge(gaugeA);
        oldVoter.reviveGauge(gaugeB);

        pools[0] = poolA;
        pools[1] = poolB;
        weights[0] = ratio;
        weights[1] = ratio;
        oldVoter.vote(account, pools, weights);

        // 2. Kill PoolB, poke Account1
        //        Total votes = 1000,   PoolA votes = ratio,        PoolB votes = 0,        s/shadow = 1000
        oldVoter.killGauge(gaugeB);
        oldVoter.poke(account);

        oldVoter.killGauge(gaugeA);

        require(oldVoter.poolTotalVotesPerPeriod(poolA, 2880) == ratio, "PoolA is wrong");
        require(oldVoter.totalVotesPerPeriod(2880) == 1000, "total is wrong");
    }

    // function pointNfpManagerToNewVoter() external onlyRole(PROTOCOL_OPERATOR) {
    //     AccessHubStorage.AccessHubState storage $ = AccessHubStorage.getStorage();
    //     $.nfpManager = INonfungiblePositionManager(0x12E66C8F215DdD5d48d150c8f46aD0c6fB0F4406);

    //     INonfungiblePositionManager _nfpManager = $.nfpManager;

    //     _nfpManager.setVoter(address($.voter));
    // }
}
