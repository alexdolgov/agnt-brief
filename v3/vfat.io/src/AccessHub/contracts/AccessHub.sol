// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;
import {AccessControlEnumerable} from "@openzeppelin/contracts/access/extensions/AccessControlEnumerable.sol";

import {IMinter} from "./interfaces/IMinter.sol";
import {IVoter} from "./interfaces/IVoter.sol";
import {IPairFactory} from "./interfaces/IPairFactory.sol";
import {IFeeRecipientFactory} from "./interfaces/IFeeRecipientFactory.sol";
import {IRamsesV3Factory} from "./CL/core/interfaces/IRamsesV3Factory.sol";
import {IRamsesV3Pool} from "./CL/core/interfaces/IRamsesV3Pool.sol";
import {IFeeCollector} from "./CL/gauge/interfaces/IFeeCollector.sol";
import {IVoteModule} from "./interfaces/IVoteModule.sol";
import {IXShadow} from "./interfaces/IXShadow.sol";
import {ILauncherPlugin} from "./interfaces/ILauncherPlugin.sol";

import {IAccessHub} from "./interfaces/IAccessHub.sol";

contract AccessHub is IAccessHub, AccessControlEnumerable {
    /// @notice role that can call changing fee splits and swap fees
    bytes32 public constant SWAP_FEE_SETTER = keccak256("SWAP_FEE_SETTER");
    /// @notice operator role
    bytes32 public constant PROTOCOL_OPERATOR = keccak256("PROTOCOL_OPERATOR");
    /// @dev temp setter address for initializing
    address public setter;
    /// @notice protocol timelock address
    address public timelock;
    /// @notice protocol treasury address
    address public treasury;
    /// @notice central voter contract
    IVoter public voter;
    /// @notice weekly emissions minter
    IMinter public minter;
    /// @notice launchpad plugin for augmenting feeshare
    ILauncherPlugin public launcherPlugin;
    /// @notice xShadow contract
    IXShadow public xShadow;
    /// @notice CL V3 factory
    IRamsesV3Factory public ramsesV3PoolFactory;
    /// @notice legacy pair factory
    IPairFactory public poolFactory;
    /// @notice legacy fees holder contract
    IFeeRecipientFactory public feeRecipientFactory;
    /// @notice fee collector contract
    IFeeCollector public feeCollector;
    /// @notice voteModule contract
    IVoteModule public voteModule;

    /** "nice-to-have" addresses for quickly finding contracts within the system */

    /// @notice CL V3 gauge factory
    address public clGaugeFactory;
    address public gaugeFactory;
    address public feeDistributorFactory;

    error SAME_ADDRESS();
    error NOT_TIMELOCK(address);
    error MANUAL_EXECUTION_FAILURE();

    modifier timelocked() {
        require(msg.sender == timelock, NOT_TIMELOCK(msg.sender));
        _;
    }

    /// @dev 2-step init process, construction then setting
    constructor(address _timelock, address _treasury) {
        setter = msg.sender;
        (timelock, treasury) = (_timelock, _treasury);
    }
    /// @inheritdoc IAccessHub
    function set(
        address _voter,
        address _minter,
        address _launcherPlugin,
        address _xShadow,
        address _ramsesV3PoolFactory,
        address _poolFactory,
        address _clGaugeFactory,
        address _gaugeFactory,
        address _feeRecipientFactory,
        address _feeDistributorFactory,
        address _feeCollector,
        address _voteModule
    ) external {
        /// @dev check that the setter is not the zero address yet
        require(setter != address(0) || msg.sender == timelock);
        /// @dev ensure it doesn't get initialized prematurely
        require(
            msg.sender == setter ||
                msg.sender == treasury ||
                msg.sender == timelock,
            IVoter.NOT_AUTHORIZED(msg.sender)
        );
        /// @dev set to the zero address so initialization is not possible again
        setter = address(0);

        /// @dev initialize all external interfaces
        voter = IVoter(_voter);
        minter = IMinter(_minter);
        launcherPlugin = ILauncherPlugin(_launcherPlugin);
        xShadow = IXShadow(_xShadow);
        ramsesV3PoolFactory = IRamsesV3Factory(_ramsesV3PoolFactory);
        poolFactory = IPairFactory(_poolFactory);
        feeRecipientFactory = IFeeRecipientFactory(_feeRecipientFactory);
        feeCollector = IFeeCollector(_feeCollector);
        voteModule = IVoteModule(_voteModule);

        /// @dev reference addresses
        clGaugeFactory = _clGaugeFactory;
        gaugeFactory = _gaugeFactory;
        feeDistributorFactory = _feeDistributorFactory;

        /// @dev fee setter role given to treasury
        _grantRole(SWAP_FEE_SETTER, treasury);
        /// @dev operator role given to treasury
        _grantRole(PROTOCOL_OPERATOR, treasury);
        /// @dev initially give admin role to treasury
        _grantRole(DEFAULT_ADMIN_ROLE, treasury);
        /// @dev give timelock the admin role
        _grantRole(DEFAULT_ADMIN_ROLE, timelock);
    }

    /** Fee Setting Logic */

    /// @inheritdoc IAccessHub
    function setSwapFees(
        address[] calldata _pools,
        uint24[] calldata _swapFees,
        bool[] calldata _concentrated
    ) external onlyRole(SWAP_FEE_SETTER) {
        /// @dev ensure continuity of length
        require(
            _pools.length == _swapFees.length &&
                _swapFees.length == _concentrated.length,
            IVoter.LENGTH_MISMATCH()
        );
        for (uint256 i; i < _pools.length; ++i) {
            /// @dev we check if the pool is v3 or legacy and set their fees accordingly
            if (_concentrated[i]) {
                ramsesV3PoolFactory.setFee(_pools[i], _swapFees[i]);
            } else {
                poolFactory.setPairFee(_pools[i], _swapFees[i]);
            }
        }
    }

    /// @inheritdoc IAccessHub
    function setFeeSplit(
        address[] calldata _pools,
        uint8[] calldata _feeSplits,
        bool[] calldata _concentrated
    ) external onlyRole(SWAP_FEE_SETTER) {
        /// @dev ensure continuity of length
        require(
            _pools.length == _feeSplits.length &&
                _feeSplits.length == _concentrated.length,
            IVoter.LENGTH_MISMATCH()
        );
        for (uint256 i; i < _pools.length; ++i) {
            /// @dev we check if the pool is v3 or legacy and set their feeSplit accordingly
            if (_concentrated[i]) {
                ramsesV3PoolFactory.setPoolFeeProtocol(
                    _pools[i],
                    _feeSplits[i]
                );
            } else {
                poolFactory.setPairFeeSplit(_pools[i], _feeSplits[i]);
            }
        }
    }

    /** Voter governance */

    /// @inheritdoc IAccessHub
    function setNewGovernorInVoter(
        address _newGovernor
    ) external onlyRole(PROTOCOL_OPERATOR) {
        /// @dev no checks are needed as the voter handles this already
        voter.setGovernor(_newGovernor);
    }
    /// @inheritdoc IAccessHub
    function governanceWhitelist(
        address[] calldata _token,
        bool[] calldata _whitelisted
    ) external onlyRole(PROTOCOL_OPERATOR) {
        /// @dev ensure continuity of length
        require(_token.length == _whitelisted.length, IVoter.LENGTH_MISMATCH());
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
    function transferWhitelistInXShadow(
        address[] calldata _who,
        bool[] calldata _whitelisted
    ) external onlyRole(PROTOCOL_OPERATOR) {
        /// @dev ensure continuity of length
        require(_who.length == _whitelisted.length, IVoter.LENGTH_MISMATCH());
        xShadow.setExemption(_who, _whitelisted);
    }
    /// @inheritdoc IAccessHub
    function killGauge(
        address[] calldata _pairs
    ) external onlyRole(PROTOCOL_OPERATOR) {
        for (uint256 i; i < _pairs.length; ++i) {
            /// @dev store pair
            address pair = _pairs[i];
            /// @dev collect fees from the pair
            feeCollector.collectProtocolFees(IRamsesV3Pool(pair));
            /// @dev kill the gauge
            voter.killGauge(voter.gaugeForPool(pair));
            /// @dev set the new fees in the pair to 95/5
            ramsesV3PoolFactory.setPoolFeeProtocol(pair, 5);
        }
    }
    /// @inheritdoc IAccessHub
    function reviveGauge(
        address[] calldata _pairs
    ) external onlyRole(PROTOCOL_OPERATOR) {
        for (uint256 i; i < _pairs.length; ++i) {
            address pair = _pairs[i];
            /// @dev collect fees from the pair
            feeCollector.collectProtocolFees(IRamsesV3Pool(pair));
            /// @dev revive the pair
            voter.reviveGauge(voter.gaugeForPool(pair));
            /// @dev set fee to the factory default
            ramsesV3PoolFactory.setPoolFeeProtocol(
                pair,
                ramsesV3PoolFactory.feeProtocol()
            );
        }
    }
    /// @inheritdoc IAccessHub
    function setEmissionsRatioInVoter(
        uint256 _pct
    ) external onlyRole(PROTOCOL_OPERATOR) {
        voter.setGlobalRatio(_pct);
    }

    /** Minter Functions */

    /// @inheritdoc IAccessHub
    function setEmissionsMultiplierInMinter(
        uint256 _multiplier
    ) external onlyRole(PROTOCOL_OPERATOR) {
        minter.updateEmissionsMultiplier(_multiplier);
    }

    /** Reward List Functions */

    /// @inheritdoc IAccessHub
    function augmentGaugeRewardsForPair(
        address[] calldata _pools,
        address[] calldata _rewards,
        bool[] calldata _addReward
    ) external onlyRole(PROTOCOL_OPERATOR) {
        /// @dev length continuity check
        require(
            _pools.length == _rewards.length &&
                _rewards.length == _addReward.length,
            IVoter.LENGTH_MISMATCH()
        );
        /// @dev loop through all entries
        for (uint256 i; i < _pools.length; ++i) {
            /// @dev fetch the gauge address
            address gauge = voter.gaugeForPool(_pools[i]);
            /// @dev if true (add rewards)
            if (_addReward[i]) {
                voter.whitelistGaugeRewards(gauge, _rewards[i]);
            }
            /// @dev if false remove the rewards
            else {
                voter.removeGaugeRewardWhitelist(gauge, _rewards[i]);
            }
        }
    }
    /// @inheritdoc IAccessHub
    function removeFeeDistributorRewards(
        address[] calldata _pools,
        address[] calldata _rewards
    ) external onlyRole(PROTOCOL_OPERATOR) {
        require(_pools.length == _rewards.length, IVoter.LENGTH_MISMATCH());
        for (uint256 i; i < _pools.length; ++i) {
            voter.removeFeeDistributorReward(
                voter.feeDistributorForGauge(voter.gaugeForPool(_pools[i])),
                _rewards[i]
            );
        }
    }

    /** LauncherPlugin specific functions */

    /// @inheritdoc IAccessHub
    function migratePoolInLauncherPlugin(
        address _oldPool,
        address _newPool
    ) external onlyRole(PROTOCOL_OPERATOR) {
        launcherPlugin.migratePool(_oldPool, _newPool);
    }

    /// @inheritdoc IAccessHub
    function setConfigsInLauncherPlugin(
        address _pool,
        uint256 _take,
        address _recipient
    ) external onlyRole(PROTOCOL_OPERATOR) {
        launcherPlugin.setConfigs(_pool, _take, _recipient);
    }

    /// @inheritdoc IAccessHub
    function enablePoolInLauncherPlugin(
        address _pool
    ) external onlyRole(PROTOCOL_OPERATOR) {
        launcherPlugin.enablePool(_pool);
    }

    /// @inheritdoc IAccessHub
    function disablePoolInLauncherPlugin(
        address _pool
    ) external onlyRole(PROTOCOL_OPERATOR) {
        launcherPlugin.disablePool(_pool);
    }

    /// @inheritdoc IAccessHub
    function setOperatorInLauncherPlugin(
        address _newOperator
    ) external onlyRole(PROTOCOL_OPERATOR) {
        launcherPlugin.setOperator(_newOperator);
    }

    /// @inheritdoc IAccessHub
    function grantAuthorityInLauncherPlugin(
        address _newAuthority,
        string calldata _label
    ) external onlyRole(PROTOCOL_OPERATOR) {
        launcherPlugin.grantAuthority(_newAuthority, _label);
    }

    /// @inheritdoc IAccessHub
    function revokeAuthorityInLauncherPlugin(
        address _oldAuthority
    ) external onlyRole(PROTOCOL_OPERATOR) {
        launcherPlugin.revokeAuthority(_oldAuthority);
    }

    /** FeeCollector functions */

    /// @inheritdoc IAccessHub
    function setTreasuryInFeeCollector(
        address newTreasury
    ) external onlyRole(PROTOCOL_OPERATOR) {
        feeCollector.setTreasury(newTreasury);
    }

    /// @inheritdoc IAccessHub
    function setTreasuryFeesInFeeCollector(
        uint256 _treasuryFees
    ) external onlyRole(PROTOCOL_OPERATOR) {
        feeCollector.setTreasuryFees(_treasuryFees);
    }

    /** FeeRecipientFactory functions */

    /// @inheritdoc IAccessHub
    function setFeeToTreasuryInFeeRecipientFactory(
        uint256 _feeToTreasury
    ) external onlyRole(PROTOCOL_OPERATOR) {
        feeRecipientFactory.setFeeToTreasury(_feeToTreasury);
    }

    /// @inheritdoc IAccessHub
    function setTreasuryInFeeRecipientFactory(
        address _treasury
    ) external onlyRole(PROTOCOL_OPERATOR) {
        feeRecipientFactory.setTreasury(_treasury);
    }

    /** CL Pool Factory functions */
    /// @inheritdoc IAccessHub
    function enableTickSpacing(
        int24 tickSpacing,
        uint24 initialFee
    ) external onlyRole(PROTOCOL_OPERATOR) {
        ramsesV3PoolFactory.enableTickSpacing(tickSpacing, initialFee);
    }

    /// @notice sets the address of the voter in the v3 factory for gauge fee setting
    function setVoterAddressInFactoryV3(address _voter) external timelocked {
        ramsesV3PoolFactory.setVoter(_voter);
    }

    /** VoteModule Functions*/

    /// @inheritdoc IAccessHub
    function setCooldownExemption(
        address[] calldata _candidates,
        bool[] calldata _exempt
    ) external timelocked {
        for (uint256 i; i < _candidates.length; ++i) {
            voteModule.setCooldownExemption(_candidates[i], _exempt[i]);
        }
    }

    /// @inheritdoc IAccessHub
    function setNewRebaseStreamingDuration(
        uint256 _newDuration
    ) external timelocked {
        voteModule.setNewDuration(_newDuration);
    }

    /// @inheritdoc IAccessHub
    function setNewVoteModuleCooldown(
        uint256 _newCooldown
    ) external timelocked {
        voteModule.setNewCooldown(_newCooldown);
    }

    /** Timelock gated functions */

    /// @inheritdoc IAccessHub
    function execute(
        address _target,
        bytes calldata _payload
    ) external timelocked {
        (bool success, ) = _target.call(_payload);
        require(success, MANUAL_EXECUTION_FAILURE());
    }
    /// @inheritdoc IAccessHub
    function setNewTimelock(address _timelock) external timelocked {
        require(timelock != _timelock, SAME_ADDRESS());
        timelock = _timelock;
    }

    /// @inheritdoc IAccessHub
    function initializeVoter(
        address _emissionsToken,
        address _legacyFactory,
        address _gauges,
        address _feeDistributorFactory,
        address _minter,
        address _msig,
        address _xShadow,
        address _clFactory,
        address _clGaugeFactory,
        address _nfpManager,
        address _feeRecipientFactory,
        address _voteModule,
        address _launcherPlugin
    ) external timelocked {
        voter.initialize(
            _emissionsToken,
            _legacyFactory,
            _gauges,
            _feeDistributorFactory,
            _minter,
            _msig,
            _xShadow,
            _clFactory,
            _clGaugeFactory,
            _nfpManager,
            _feeRecipientFactory,
            _voteModule,
            _launcherPlugin
        );
    }
}
