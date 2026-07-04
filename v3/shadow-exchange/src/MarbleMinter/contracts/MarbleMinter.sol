// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity ^0.8.0;

import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {Initializable} from "@openzeppelin/contracts/proxy/utils/Initializable.sol";
import {SafeERC20, IERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import {Errors} from "contracts/libraries/Errors.sol";
import {MinterStorage} from "contracts/libraries/MinterStorage.sol";

import {IERC20Extended} from "contracts/interfaces/IERC20Extended.sol";
import {IMinter} from "contracts/interfaces/IMinter.sol";
import {IMarbleMinter} from "contracts/interfaces/IMarbleMinter.sol";
import {IAccessHub} from "contracts/interfaces/IAccessHub.sol";
import {IPairFactory} from "contracts/interfaces/IPairFactory.sol";
import {IFeeRecipientFactory} from "contracts/interfaces/IFeeRecipientFactory.sol";
import {IFeeRecipient} from "contracts/interfaces/IFeeRecipient.sol";
import {IPair} from "contracts/interfaces/IPair.sol";
import {IVoter} from "contracts/interfaces/IVoter.sol";
import {IVoteModule} from "contracts/interfaces/IVoteModule.sol";
import {IXShadow} from "contracts/interfaces/IXShadow.sol";

/// @title Marble Zone Minter
/// @author
/// @notice Aggregates and passes on Shadow emissions and legacy pair fees
/// @dev This contract will become the governor of Old Voter
contract MarbleMinter is IMarbleMinter, Initializable {
    using SafeERC20 for IERC20;

    /// @notice basis invariant 1_000_000 = 100%
    uint256 public constant DENOM = 1_000_000;
    /// @notice max deviation of 20% per epoch
    uint256 public constant MAX_DEVIATION = 200_000;
    /// @notice initial supply of 3m SHADOW
    uint256 public constant INITIAL_SUPPLY = 3_000_000 * 1e18;
    /// @notice max supply of 10m SHADOW
    uint256 public constant MAX_SUPPLY = 10_000_000 * 1e18;

    IMinter public constant oldMinter = IMinter(0xc7022F359cD1bDa8aB8a19d1F19d769cbf7F3765);
    IVoter public constant oldVoter = IVoter(0x3aF1dD7A2755201F8e2D6dCDA1a61d9f54838f4f);
    IVoteModule public constant voteModule = IVoteModule(0xDCB5A24ec708cc13cee12bFE6799A78a79b666b4);
    address internal constant shadowGauge = 0xCBcAd939E2bbbe01850A141F204f25DF63b8FC5B;

    /////////////////
    /// Modifiers ///
    /////////////////

    modifier onlyGovernance() {
        _onlyGovernance();
        _;
    }

    function _onlyGovernance() internal view {
        require(msg.sender == MinterStorage.getStorage().accessHub, Errors.NOT_AUTHORIZED(msg.sender));
    }

    modifier onlyVoter() {
        _onlyVoter();
        _;
    }

    function _onlyVoter() internal view {
        require(msg.sender == MinterStorage.getStorage().voter, Errors.NOT_AUTHORIZED(msg.sender));
    }

    modifier checkFeeSplit() {
        _checkFeeSplit();
        _;
    }

    function _checkFeeSplit() internal view {
        /// @dev we need feeSplitWhenNoGauge to redirect fees to this contract
        IPairFactory legacyFactory = IPairFactory(oldVoter.legacyFactory());
        require(legacyFactory.feeSplitWhenNoGauge(), Errors.FEE_SPLIT_WHEN_NO_GAUGE_IS_OFF());
        require(legacyFactory.feeSplit() > 0, Errors.FEE_SPLIT_WHEN_NO_GAUGE_IS_OFF());
    }

    ////////////////////////////////////
    /// Constructor and Initializers ///
    ////////////////////////////////////

    constructor() {
        _disableInitializers();
    }

    /// @dev should be called with upgradeToAndCall so no auth is needed
    function initialize(address _accessHub, address _operator) external initializer {
        MinterStorage.MinterState storage $ = MinterStorage.getStorage();

        $.accessHub = _accessHub;
        $.operator = _operator;
    }

    /// @inheritdoc IMinter
    /// @dev _initialMultiplier is be based on 1m = 100%
    function kickoff(
        address _shadow,
        address _voter,
        uint256, // _initialWeeklyEmissions is unused, it copies from the old minter
        uint256, // _initialMultiplier is unused, it copies from the old minter
        address _xShadow
    ) external onlyGovernance {
        MinterStorage.MinterState storage $ = MinterStorage.getStorage();

        /// @dev ensure the emissions token isn't set yet
        require(address($.shadow) == address(0), Errors.STARTED());
        require(_xShadow != address(0), Errors.INVALID_CONTRACT());
        require(_voter != address(0), Errors.INVALID_CONTRACT());
        require(_shadow != address(0), Errors.INVALID_CONTRACT());
        $.shadow = IERC20Extended(_shadow);
        $.xShadow = _xShadow;
        $.voter = _voter;
        $.accessHub = IVoter(_voter).accessHub();
        /// @dev copy weeklyEmissions from old minter
        $.weeklyEmissions = oldMinter.weeklyEmissions();
        /// @dev copy emissionsMultiplier from old minter
        $.emissionsMultiplier = oldMinter.emissionsMultiplier() * 100; // BASIS OF 10_000 => 1_000_000

        /// @dev set the active period to the current
        $.activePeriod = getPeriod();
        /// @dev set the last update as the last period so emissions can be updated once if needed
        $.lastMultiplierUpdate = $.activePeriod - 1;

        /// @dev copy first period from old minter
        $.firstPeriod = oldMinter.firstPeriod();

        emit SetVoter(_voter);

        /// @dev Deposit xShadow into Vote Module (Shadow to be transferred in beforehand)
        IERC20(_shadow).approve(address(_xShadow), 1000);
        IXShadow(_xShadow).convertEmissionsToken(1000);
        IERC20(_xShadow).approve(address(voteModule), 1000);
        voteModule.deposit(1000);
    }

    /// @inheritdoc IMinter
    function startEmissions() external {
        /// @dev empty for marble minter, all handled in kickoff
    }

    //////////////////////
    /// View Functions ///
    //////////////////////

    /// @inheritdoc IMinter
    function weeklyEmissions() external view returns (uint256) {
        return MinterStorage.getStorage().weeklyEmissions;
    }

    /// @inheritdoc IMinter
    function emissionsMultiplier() external view returns (uint256) {
        return MinterStorage.getStorage().emissionsMultiplier;
    }

    /// @inheritdoc IMinter
    function firstPeriod() external view returns (uint256) {
        return MinterStorage.getStorage().firstPeriod;
    }

    /// @inheritdoc IMinter
    function activePeriod() external view returns (uint256) {
        return MinterStorage.getStorage().activePeriod;
    }

    /// @inheritdoc IMinter
    function lastMultiplierUpdate() external view returns (uint256) {
        return MinterStorage.getStorage().lastMultiplierUpdate;
    }

    /// @inheritdoc IMinter
    function operator() external view returns (address) {
        return MinterStorage.getStorage().operator;
    }

    /// @inheritdoc IMinter
    function accessHub() external view returns (address) {
        return MinterStorage.getStorage().accessHub;
    }

    /// @inheritdoc IMinter
    function xShadow() external view returns (address) {
        return MinterStorage.getStorage().xShadow;
    }

    /// @inheritdoc IMinter
    function voter() external view returns (address) {
        return MinterStorage.getStorage().voter;
    }

    /// @inheritdoc IMinter
    function shadow() external view returns (address) {
        return address(MinterStorage.getStorage().shadow);
    }

    /// @inheritdoc IMinter
    function calculateWeeklyEmissions() public view returns (uint256) {
        MinterStorage.MinterState storage $ = MinterStorage.getStorage();

        /// @dev fetch proposed emissions
        uint256 _weeklyEmissions = ($.weeklyEmissions * $.emissionsMultiplier) / DENOM;
        /// @dev if it's zero
        if (_weeklyEmissions == 0) return 0;
        /// @dev if minting goes over the max supply
        if ($.shadow.totalSupply() + _weeklyEmissions > MAX_SUPPLY) {
            /// @dev update value to difference
            _weeklyEmissions = MAX_SUPPLY - $.shadow.totalSupply();
        }
        return _weeklyEmissions;
    }

    /// @inheritdoc IMinter
    function getPeriod() public view returns (uint256 period) {
        period = block.timestamp / 1 weeks;
    }

    /// @inheritdoc IMinter
    function getEpoch() public view returns (uint256 _epoch) {
        return getPeriod() - MinterStorage.getStorage().firstPeriod;
    }

    ///////////////////
    /// Period Flip ///
    ///////////////////

    /// @inheritdoc IMinter
    function updatePeriod() external returns (uint256 period) {
        MinterStorage.MinterState storage $ = MinterStorage.getStorage();

        require($.firstPeriod != 0, Errors.EMISSIONS_NOT_STARTED());
        /// @dev set period equal to the current activePeriod
        period = $.activePeriod;
        /// @dev if >= Thursday 0 UTC
        if (getPeriod() > period) {
            /// @dev fetch the current period
            period = getPeriod();
            /// @dev set the active period to the new period
            $.activePeriod = period;
            /// @dev calculate the weekly emissions
            uint256 _weeklyEmissions = calculateWeeklyEmissions();
            /// @dev set global value to the above calculated emissions
            $.weeklyEmissions = _weeklyEmissions;

            /// @dev update Old Minter
            oldMinter.updatePeriod();

            /// @dev claim emission from Old Voter
            bool marbled = oldVoter.governor() == address(this);
            if (marbled) {
                // oldVoter.stuckEmissionsRecovery(shadowGauge, period);
            }

            /// @dev vote on shadow gauge
            if (marbled) {
                oldVoter.reviveGauge(shadowGauge);
            }
            address pool = oldVoter.poolForGauge(shadowGauge);
            address[] memory pools = new address[](1);
            uint256[] memory weights = new uint256[](1);
            pools[0] = pool;
            weights[0] = 1 ether;
            oldVoter.vote(address(this), pools, weights);
            if (marbled) {
                oldVoter.killGauge(shadowGauge);
            }

            if ($.weeklyEmissions > 0 && marbled) {
                /// @dev approvals for shadow on voter
                $.shadow.approve($.voter, _weeklyEmissions);

                /// @dev notify emissions to the voter contract
                IVoter($.voter).notifyRewardAmount(_weeklyEmissions);
            }
        }
    }

    //////////////////
    /// Governance ///
    //////////////////

    /// @inheritdoc IMarbleMinter
    function setAccessHub(address _accessHub) external onlyGovernance {
        MinterStorage.MinterState storage $ = MinterStorage.getStorage();
        $.accessHub = _accessHub;
    }

    /// @inheritdoc IMarbleMinter
    function setOperator(address _operator) external onlyGovernance {
        MinterStorage.MinterState storage $ = MinterStorage.getStorage();
        $.operator = _operator;
    }

    /// @inheritdoc IMinter
    function updateEmissionsMultiplier(uint256 _emissionsMultiplier) external onlyGovernance {
        MinterStorage.MinterState storage $ = MinterStorage.getStorage();

        /// @dev ensure that the last time the multiplier was updated was not the same period
        require($.lastMultiplierUpdate != $.activePeriod, Errors.SAME_PERIOD());

        /// @dev set the last update to the current period
        $.lastMultiplierUpdate = $.activePeriod;
        /// @dev ensure the multiplier actually is diff
        require($.emissionsMultiplier != _emissionsMultiplier, Errors.NO_CHANGE());
        /// @dev placeholder for deviation
        uint256 deviation;
        /// @dev check which way to subtract
        deviation = $.emissionsMultiplier > _emissionsMultiplier
            ? ($.emissionsMultiplier - _emissionsMultiplier)
            : (_emissionsMultiplier - $.emissionsMultiplier);
        /// @dev require deviation is not above 20% per epoch
        require(deviation <= MAX_DEVIATION, Errors.TOO_HIGH());
        /// @dev set new values
        $.emissionsMultiplier = _emissionsMultiplier;

        emit EmissionsMultiplierUpdated(_emissionsMultiplier);
    }

    function syncSettings() external onlyGovernance {
        MinterStorage.MinterState storage $ = MinterStorage.getStorage();
        $.weeklyEmissions = oldMinter.weeklyEmissions();
        $.emissionsMultiplier = oldMinter.emissionsMultiplier() * 100; // BASIS OF 10_000 => 1_000_000
    }

    /// @inheritdoc IMarbleMinter
    function rescueTokens(address token, uint256 amount) external onlyGovernance {
        IERC20(token).safeTransfer(msg.sender, amount);
    }

    /////////////////
    /// Migration ///
    /////////////////

    /// @inheritdoc IMarbleMinter
    function migration(address[] calldata gauges) external onlyGovernance checkFeeSplit {
        uint256 length = gauges.length;

        for (uint256 i = 0; i < length; i++) {
            address gauge = gauges[i];
            _migrateCreatedGauge(gauge);
        }
    }

    /// @inheritdoc IMarbleMinter
    /// @dev needed to redirect fees to the new feeRecipients
    function postCreateLegacyGaugeHook(address pool) external onlyVoter checkFeeSplit {
        if (oldVoter.governor() != address(this)) return;
        /// @dev whitelist tokens temporarily, revoke after the gauge is created
        address token0 = IPair(pool).token0();
        address token1 = IPair(pool).token1();
        oldVoter.whitelist(token0);
        oldVoter.whitelist(token1);

        address gauge = oldVoter.gaugeForPool(pool);
        if (gauge == address(0)) {
            gauge = oldVoter.createGauge(pool);
        }

        _migrateCreatedGauge(gauge);
    }

    function _migrateCreatedGauge(address gauge) internal {
        /// @dev fetch addresses
        IPair pool = IPair(oldVoter.poolForGauge(gauge));
        address token0 = pool.token0();
        address token1 = pool.token1();

        /// @dev disable whitelists if needed
        if (oldVoter.isWhitelisted(token0)) {
            oldVoter.revokeWhitelist(token0);
        }
        if (oldVoter.isWhitelisted(token1)) {
            oldVoter.revokeWhitelist(token1);
        }

        /// @dev revive and kill gauge to set feeRecipient
        if (!oldVoter.isAlive(gauge)) {
            oldVoter.reviveGauge(gauge);
        }
        oldVoter.killGauge(gauge);
    }

    // function postCreateClGaugeHook(address token0, address token1, int24 tickSpacing) external onlyVoter {
    //     /// @dev whitelist tokens temporarily, revoke after the gauge is created
    //     oldVoter.whitelist(token0);
    //     oldVoter.whitelist(token1);

    //     address gauge = oldVoter.createCLGauge(token0, token1, tickSpacing);

    //     _migrateCreatedGauge(gauge);
    // }

    ///////////////////////////////////
    /// Legacy Pair Fee Redirection ///
    ///////////////////////////////////

    /// @inheritdoc IMarbleMinter
    /// @dev no auth needed for this
    function redirectFees(uint256 start, uint256 batchSize) external {
        MinterStorage.MinterState storage $ = MinterStorage.getStorage();
        IVoter _voter = IVoter($.voter);
        address treasury = IAccessHub($.accessHub).treasury();
        uint256 length = _voter.getPoolsLength();

        IFeeRecipientFactory feeRecipientFactory = IFeeRecipientFactory(_voter.feeRecipientFactory());

        uint256 end = start + batchSize;
        if (end > length) {
            end = length;
        }

        for (uint256 i = start; i < end; i++) {
            address gauge = _voter.getGauge(i);

            if (_voter.isLegacyGauge(gauge)) {
                address pair = _voter.poolForGauge(gauge);

                uint256 amount = IERC20(pair).balanceOf(address(this));

                if (amount > 0) {
                    /// @dev if gauge is not alive, send to treasury
                    if (!_voter.isAlive(gauge)) {
                        IERC20(pair).safeTransfer(treasury, amount);
                        continue;
                    }

                    address feeRecipient = feeRecipientFactory.feeRecipientForPair(pair);

                    /// @dev send the pair fees to feeRecipient
                    IERC20(pair).safeTransfer(feeRecipient, amount);

                    /// @dev notify the fees to the FeeDistributor
                    IFeeRecipient(feeRecipient).notifyFees();
                }
            }
        }
    }

    /// @inheritdoc IMarbleMinter
    /// @dev no auth needed for this
    function redirectFeesForPairs(address[] calldata pairs) external {
        MinterStorage.MinterState storage $ = MinterStorage.getStorage();
        IVoter _voter = IVoter($.voter);
        address treasury = IAccessHub($.accessHub).treasury();
        uint256 length = pairs.length;

        IFeeRecipientFactory feeRecipientFactory = IFeeRecipientFactory(_voter.feeRecipientFactory());

        for (uint256 i = 0; i < length; i++) {
            address pair = pairs[i];
            address gauge = _voter.gaugeForPool(pair);

            if (_voter.isLegacyGauge(gauge)) {
                uint256 amount = IERC20(pair).balanceOf(address(this));

                if (amount > 0) {
                    /// @dev if gauge is not alive, send to treasury
                    if (!_voter.isAlive(gauge)) {
                        IERC20(pair).safeTransfer(treasury, amount);
                        continue;
                    }

                    address feeRecipient = feeRecipientFactory.feeRecipientForPair(pair);

                    /// @dev send the pair fees to feeRecipient
                    IERC20(pair).safeTransfer(feeRecipient, amount);

                    /// @dev notify the fees to the FeeDistributor
                    IFeeRecipient(feeRecipient).notifyFees();
                }
            }
        }
    }
}
