// SPDX-License-Identifier: BUSL-1.1
pragma solidity >=0.8.10;

import {Initializable} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import {EnumerableSet} from "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";

import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";

import {stHYPE, SafeCast} from "./stHYPE.sol";
import {Ownership} from "./Ownership.sol";
import {IStakingModule} from "./interfaces/IStakingModule.sol";
import {HyperCoreUtils} from "./libraries/HyperCoreUtils.sol";
import {SafeTransferLib} from "./libraries/SafeTransferLib.sol";

contract Overseer is Initializable, Ownership {
    using EnumerableSet for EnumerableSet.AddressSet;
    using HyperCoreUtils for address;
    using SafeTransferLib for address;

    /**
     *
     *  CUSTOM ERRORS
     *
     */
    error SupplyDecreaseTooHigh(uint256 decrease);
    error AprTooHigh(int256 apr, uint256 threshold);
    error SyncNotEnded();
    error InvalidInput();
    error NotRedeemable();
    error ExcessiveFeeClaim();
    error ZeroArrayLength();
    error ArrayLengthMismatch();
    error StakingModuleAlreadyAdded();
    error StakingModuleLimitReached();
    error StakingModuleHyperCoreAccountNotActivated();
    error StakingModuleInvalidManager();
    error StakingModuleInvalidIndex();
    error StakingModuleLock();
    error StakingModuleRepeatedIndex();
    error UnaccountedProtocolFeeIncrease();
    error ZeroFeeClaim();
    error ZeroMsgValue();
    error CannotUpgradeWhilePendingBurns();
    error TransferFailed();
    error InsufficientAmountReceived();
    error ExcessiveDepositAmount();
    error UnexpectedBalanceDecrease();
    error CannotBurnWhenPaused();
    error CannotMintWhilePendingSlash();

    /**
     *
     *  EVENTS
     *
     */
    event AprThresholdSet(uint256 aprThreshold);
    event Burn_(
        address indexed burner, address recipient, uint256 indexed amount, uint256 burnId, bytes32 indexed code
    );
    event FeeClaim(address indexed recipient, uint256 amount, uint256 timestamp);
    event Mint(address indexed to, uint256 indexed amount, bytes32 indexed communityCode);
    event ProtocolFeeSet(uint256 fee);
    event Rebase(
        uint256 currentSupply,
        uint256 newSupply,
        uint256 rebaseInterval,
        int256 indexed apr,
        uint256 indexed currentShareRate,
        uint256 indexed timeElapsed
    );
    event Redeem(address indexed user, uint256 indexed burnId, uint256 amount);
    event MaxSlashPercentageSet(uint256 maxSlashPercentage);
    event MinSlashPercentageSet(uint256 minSlashPercentage);
    event StakingModuleAdded(address indexed stakingModule);
    event SyncIntervalSet(uint256 syncInterval);
    event PauseDurationSet(uint256 pauseDuration);
    event RedemptionPaused(uint256 redemptionPausedUntil);
    event RedemptionUnpaused();
    event BurnsPaused(uint256 burnsPausedUntil);
    event BurnsUnpaused();

    /**
     *
     *  STRUCTS
     *
     */
    struct Burn {
        uint88 amount;
        address user;
        bool completed;
        uint256 sum;
    }

    struct DelegateInput {
        uint256 index;
        address[] accounts;
        uint256[] amounts;
        bytes data;
    }

    struct DepositInput {
        uint256 index;
        uint256 amount;
        bytes data;
    }

    struct RequestWithdrawInput {
        uint256 index;
        address[] accounts;
        uint256[] amounts;
        bytes data;
    }

    struct UpdateDelegationsInput {
        uint256 index;
        address[] accounts;
        int256[] changes;
        bytes data;
    }

    struct WithdrawInput {
        uint256 index;
        uint256 amount;
        bytes data;
    }

    /**
     *
     *  CONSTANTS
     *
     */
    uint256 private constant BIPS = 10_000;
    uint256 private constant E18 = 10 ** 18;
    uint256 private constant MAX_STAKING_MODULES = 20;
    uint256 private constant ONE_YEAR = 365 days;

    /**
     *
     *  Overseer V1: STORAGE
     *
     */
    address payable public system; // DEPRECATED
    address public gov; // DEPRECATED

    /**
     * @notice stHYPE token.
     */
    stHYPE public sthype;

    /**
     * @notice Previous block timestamp when `rebase` was called.
     */
    uint256 public lastRebaseTime;

    /**
     * @notice Maximum allowed percentage of supply growth on `rebase`
     * that triggers an APR increase.
     * @dev WARNING: This threshold can be above 100% APR,
     * in case of unusually large supply growth.
     * This needs to be set with caution,
     * since it might cause well-known front-running attacks
     * that extract rebase yield from stHYPE holders.
     */
    uint256 public aprThresholdBps;

    /**
     * @notice Maximum allowed percentage of supply decrease on `rebase`
     * that triggers an APR decrease, in basis points.
     * @dev WARNING: This variable used to be named `slashThresholdBps`,
     * but was renamed to `maxSlashPercentage` and is now represented with 18 decimals of precision.
     */
    uint256 public maxSlashPercentage;

    /**
     * @notice Duration of stHYPE's supply sync interval on `rebase`.
     */
    uint256 public syncInterval;

    string[] public validators; // DEPRECATED
    string[] public referrals; // DEPRECATED
    mapping(string => address) public referralFeeCollectors; // DEPRECATED
    mapping(string => uint256) public referralPendingFees; // DEPRECATED
    uint256 public referralKickback; // DEPRECATED
    uint256 public totalPendingFee; // DEPRECATED

    /**
     * @notice Accrued protocol fee revenue.
     */
    uint256 public protocolPendingFee;

    mapping(string => uint256) public validatorWeights; // DEPRECATED
    mapping(string => address) public validatorDelegations; // DEPRECATED
    mapping(string => uint256) public staked; // DEPRECATED
    uint256 public totalValidatorWeight; // DEPRECATED

    /**
     * @notice Protocol fee applied to net positive supply growth on `rebase`, in basis points.
     */
    uint256 public protocolFee;

    uint256 public freeStakePercentage; // DEPRECATED

    address public l1read; // DEPRECATED
    address public l1write; // DEPRECATED

    /**
     * @notice Address which executes interactions with HyperCore in Overseer V1.
     */
    address public interimAddress; // DEPRECATED

    /**
     * @notice List of stHYPE burn requests.
     */
    Burn[] public burns;

    /**
     * @notice Total cumulative amount of stHYPE redeemed.
     * @dev This is no longer used in the contract, but maintained for offchain analytics
     */
    uint256 public redeemed;

    /**
     *
     *  ERC-7201 STORAGE
     *
     */

    /// @custom:storage-location erc7201:stHYPE.storage.Overseer
    struct OverseerStorage {
        EnumerableSet.AddressSet stakingModules;
        uint256 stakingModuleLastBlockInteraction;
        // Slashing accounting
        mapping(uint256 burnId => uint256 cumulativeSlashFactor) cumulativeSlashFactor; // Starts at 1e18, decreases by slashBps for every slash.
        uint256 latestCumulativeSlashFactor; // Cumulative slash factor at the time of last rebase.
        mapping(uint256 burnId => uint256 cumulativeNormalizedBurns) cumulativeNormalizedBurns; // Sum of (burnAmount / cumulativeSlashFactor at the time of burn).
        uint256 normalizedRedeemedHype; // Amount of HYPE redeemed, divided by `latestCumulativeSlashFactor` at the time of the burn.
        uint256 minSlashPercentage; // 1e18 = 100% (no slashing will be possible)
        uint256 redemptionPausedUntil; // Timestamp until which burns cannot be redeemed
        uint256 burnsPausedUntil; // Timestamp until which burns cannot be burned
        uint256 pauseDuration;
    }

    // keccak256(abi.encode(uint256(keccak256("stHYPE.storage.Overseer")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 private constant OverseerStorageLocation =
        0x4a430a783afc37717a79413b721472eef81c24749ce532ec9115716b01ec2100;

    function _getOverseerStorage() private pure returns (OverseerStorage storage $) {
        assembly {
            $.slot := OverseerStorageLocation
        }
    }

    /**
     *
     *  CONSTRUCTOR
     *
     */

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    /**
     *
     *  MODIFIERS
     *
     */
    modifier whenNotLocked() {
        if (_getOverseerStorage().stakingModuleLastBlockInteraction == block.number) revert StakingModuleLock();
        _;
    }

    /**
     *
     *  INITIALIZER
     *
     */
    function initialize(address gov_, address sthype_, address l1read_, address l1write_) public initializer {
        __AccessControlDefaultAdminRules_init(0, gov_);

        _grantRole(MANAGER_ROLE, gov_);
        _grantRole(GOVERNOR_ROLE, gov_);
        _grantRole(REBASER_ROLE, gov_);
        interimAddress = gov_; // DEPRECATED

        gov = gov_; // DEPRECATED
        sthype = stHYPE(sthype_);
        burns.push(Burn(0, address(0), true, 0));

        l1read = l1read_; // DEPRECATED
        l1write = l1write_; // DEPRECATED

        aprThresholdBps = 30;
        maxSlashPercentage = 0;
        referralKickback = 1500; // DEPRECATED

        system = payable(address(l1read_)); // DEPRECATED

        protocolFee = 300;
        freeStakePercentage = 5000; // DEPRECATED
    }

    function initializeV3() public reinitializer(3) {
        _getOverseerStorage().latestCumulativeSlashFactor = E18;
        _getOverseerStorage().normalizedRedeemedHype = 0;
        _getOverseerStorage().minSlashPercentage = 1e10;
        _getOverseerStorage().pauseDuration = 7 days;

        burns.push(Burn(0, address(0), true, burns[burns.length - 1].sum));

        require(burns[burns.length - 1].sum == redeemed, CannotUpgradeWhilePendingBurns());
    }

    /**
     *
     *  RECEIVE FUNCTIONS
     *
     */
    receive() external payable {}

    function receiveHYPE() external payable {}

    /**
     *
     *  MINT RELATED FUNCTIONS
     *
     */

    /**
     * @notice Mint stHYPE to an address.
     * @param to Address to mint stHYPE to.
     */
    function mint(address to) public payable returns (uint256) {
        return mint(to, "");
    }

    /**
     * @notice Mint stHYPE to an address, with a community code.
     * @param to Address to mint stHYPE to.
     * @param communityCode Community code.
     */
    function mint(address to, string memory communityCode) public payable returns (uint256) {
        if (to == address(0)) revert InvalidInput();
        if (msg.value == 0) revert ZeroMsgValue();

        if (_pendingSlashExists()) revert CannotMintWhilePendingSlash();

        sthype.mint(to, msg.value);

        emit Mint(to, msg.value, bytes32(bytes(communityCode)));

        return msg.value;
    }

    /**
     * @notice Adjust stHYPE's supply to match the new supply.
     * @dev Only callable by the REBASER role.
     */
    function rebase() public onlyRole(REBASER_ROLE) whenNotLocked {
        // Rebase is locked if the last interaction with a staking module was in the same block,
        // to prevent reading incorrect Read precompiles values in `getNewSupply()`

        if (sthype.syncEnd() >= block.timestamp) revert SyncNotEnded();

        uint256 timeElapsed = block.timestamp - lastRebaseTime;

        // Update slashing factor, to update total liabilities (in case there is a slashing event)
        _accountForSlashing();

        uint256 newSupply = getNewSupply();
        uint256 currentSupply = sthype.totalSupply();

        uint256 protocolFeeIncrease = _calculateProtocolFeeIncrease(currentSupply, newSupply);

        if (protocolFeeIncrease > 0) {
            protocolPendingFee += protocolFeeIncrease;
            newSupply -= protocolFeeIncrease;
        }

        int256 aprChange = _calculateApr(timeElapsed, currentSupply, newSupply);

        if (aprChange >= 0) {
            if (aprChange >= int256(aprThresholdBps)) {
                revert AprTooHigh(aprChange, aprThresholdBps);
            }
        }

        sthype.syncSupply(newSupply, syncInterval);

        lastRebaseTime = block.timestamp;

        emit Rebase(currentSupply, newSupply, syncInterval, aprChange, sthype.balancePerShare(), timeElapsed);
    }

    /**
     * @notice Account for slashing events and update cumulative slash factor.
     * @dev This function will revert if the slashing percentage is greater than the maxSlashPercentage
     */
    function _accountForSlashing() private {
        OverseerStorage storage $ = _getOverseerStorage();

        uint256 totalStHypeBacking = getTotalBalance() - protocolPendingFee;

        uint256 expectedTotalSupply = sthype.totalSupply(); // Total supply before slashing is accounted for
        uint256 totalPendingBurns = totalPendingBurns(); // Total pending burns before slashing is accounted for

        // Using the formula: `expectedTotalSupply` = `expectedTotalBalance` - `totalLiability`,
        // so `expectedTotalBalance` = `expectedTotalSupply` + `totalLiability`,
        // => `expectedTotalBalance` - `protocolPendingFee` = `expectedTotalSupply` + `totalPendingBurns`.
        // The LHS represents `expectedTotalStHypeBacking`, which is the total backing of stHYPE before slashing (if it occurred).
        // Note that expectedTotalStHypeBacking does not include accrued yield since the last rebase, or protocol fees.
        uint256 expectedTotalStHypeBacking = expectedTotalSupply + totalPendingBurns;

        // If slashing occurred, set the `latestCumulativeSlashFactor`.
        if (totalStHypeBacking < expectedTotalStHypeBacking) {
            uint256 slashingFactor = (totalStHypeBacking * E18) / expectedTotalStHypeBacking;

            uint256 slashPercentage = E18 - slashingFactor;

            if (slashPercentage >= $.minSlashPercentage) {
                if (slashPercentage > maxSlashPercentage) {
                    revert SupplyDecreaseTooHigh(slashPercentage);
                }

                $.latestCumulativeSlashFactor = ($.latestCumulativeSlashFactor * slashingFactor) / E18;
            }
        }
    }

    /**
     * @notice Calculate the APR of stHYPE, given two consecutive supply snapshots.
     * @dev WARNING: This does not properly account for slashing events which have not yet been rebased.
     */
    function calculateApr() external view returns (int256) {
        uint256 currentSupply = sthype.totalSupply();
        uint256 newSupply = getNewSupply();

        uint256 protocolFeeIncrease = _calculateProtocolFeeIncrease(currentSupply, newSupply);
        newSupply -= protocolFeeIncrease;

        return _calculateApr(block.timestamp - lastRebaseTime, currentSupply, newSupply);
    }

    function _calculateApr(uint256 timeElapsed, uint256 currentSupply, uint256 newSupply)
        private
        pure
        returns (int256)
    {
        if (newSupply > currentSupply) {
            uint256 apr = (((newSupply * E18) / currentSupply - E18) * E18) / ((timeElapsed * E18) / ONE_YEAR)
                / (E18 / BIPS);

            return int256(apr + 1);
        } else {
            uint256 supplyDecrease = BIPS - ((newSupply * BIPS) / currentSupply);

            return -int256(supplyDecrease);
        }
    }

    function _calculateProtocolFeeIncrease(uint256 currentSupply, uint256 newSupply) private view returns (uint256) {
        if (newSupply > currentSupply) {
            return ((newSupply - currentSupply) * protocolFee) / BIPS;
        }
        return 0;
    }

    /**
     * @notice Returns the supply of HYPE owned by the protocol,
     *         across all Staking Modules, and in this contract.
     * @dev WARNING: Gas costs increase linearly with the number of Staking Modules,
     *      hence there might be a DoS risk if called during a transaction and
     *      the number of staking modules is large.
     */
    function getNewSupply() public view returns (uint256) {
        return getTotalBalance() - totalLiability();
    }

    /**
     * @notice Returns total HYPE balance across all staking modules, and this contract.
     */
    function getTotalBalance() public view returns (uint256) {
        uint256 totalBalance = address(this).balance;

        // WARNING: Gas costs increase linearly with the number of staking modules
        // It is assumed that the number of staking modules is not very large where `rebase()`
        // would become permanently blocked.
        for (uint256 i = 0; i < _getOverseerStorage().stakingModules.length(); i++) {
            address stakingModule = _getOverseerStorage().stakingModules.at(i);
            totalBalance += IStakingModule(stakingModule).getTotalBalance();
        }

        return totalBalance;
    }

    /**
     *
     *  BURN RELATED FUNCTIONS
     *
     */

    /**
     * @notice Burn stHYPE and register a pending burn request to `to`.
     * @param to The address to send HYPE to, once the burn request is fulfilled.
     * @param amount The amount of stHYPE to burn.
     */
    function burn(address to, uint256 amount) external returns (uint256) {
        return burn(to, amount, "");
    }

    /**
     * @notice Same as `burn`, but with a community code.
     * @param to Address to send HYPE to, once the burn request is fulfilled.
     * @param amount Amount of stHYPE to burn.
     * @param code Community code.
     */
    function burn(address to, uint256 amount, string memory code) public returns (uint256) {
        if (amount == 0) revert InvalidInput();
        if (to == address(0)) revert InvalidInput();

        if (isBurningPaused()) revert CannotBurnWhenPaused();

        sthype.burn(msg.sender, amount);
        burns.push(Burn(SafeCast.toUint88(amount), to, false, amount + burns[burns.length - 1].sum));

        OverseerStorage storage $ = _getOverseerStorage();
        uint256 burnId = burns.length - 1;

        uint256 latestCumulativeSlashFactor = $.latestCumulativeSlashFactor;
        $.cumulativeSlashFactor[burnId] = latestCumulativeSlashFactor;
        $.cumulativeNormalizedBurns[burnId] =
            $.cumulativeNormalizedBurns[burnId - 1] + (amount * E18) / latestCumulativeSlashFactor;

        emit Burn_(msg.sender, to, amount, burnId, bytes32(bytes(code)));

        return burnId;
    }

    /**
     * @notice Burn stHYPE and fulfill it with HYPE if possible,
     *         otherwise register a pending burn request to `to` for the remaining amount.
     * @param to Address to send HYPE to, once the burn request is fulfilled.
     * @param amount The amount of stHYPE to burn.
     * @param communityCode The community code.
     */
    function burnAndRedeemIfPossible(address to, uint256 amount, string memory communityCode)
        external
        returns (uint256)
    {
        uint256 maxRedeemable_ = maxRedeemable();
        uint256 burnId;
        if (amount > maxRedeemable_) {
            uint256 burnIdToRedeem;
            if (maxRedeemable_ > 0) {
                burnIdToRedeem = burn(to, maxRedeemable_, communityCode);
            }

            burnId = burn(to, amount - maxRedeemable_, communityCode);

            if (maxRedeemable_ > 0) {
                redeem(burnIdToRedeem);
            }
        } else {
            burnId = burn(to, amount, communityCode);
            redeem(burnId);
        }

        return burnId;
    }

    /**
     * @notice Fulfill a pending burn request, if enough HYPE is available.
     * @param burnId The ID of the burn request to fulfill.
     */
    function redeem(uint256 burnId) public {
        OverseerStorage storage $ = _getOverseerStorage();

        if (_redeemable(burnId) == false) revert NotRedeemable();

        address user = burns[burnId].user;
        uint256 amount = burns[burnId].amount;

        uint256 hypeToRedeem = (amount * $.latestCumulativeSlashFactor) / $.cumulativeSlashFactor[burnId];

        burns[burnId].completed = true;
        redeemed += amount;
        $.normalizedRedeemedHype += (amount * E18) / $.cumulativeSlashFactor[burnId];

        // Prevents DoS attacks where a malicious user
        // would trigger a revert on receiving ETH,
        // which would block the withdrawal queue's progression
        user.forceSafeTransferETH(hypeToRedeem);

        emit Redeem(user, burnId, hypeToRedeem);
    }

    /**
     * @notice Returns true if there is a slashing event that hasn't been rebased yet,
     *         or if redemptions are paused.
     */
    function pendingSlashExists() external view returns (bool) {
        return _pendingSlashExists();
    }

    /**
     * @notice Returns true if there is a slashing event that hasn't been rebased yet,
     *         or if redemptions are paused.
     */
    function _pendingSlashExists() internal view returns (bool) {
        OverseerStorage storage $ = _getOverseerStorage();
        if (isRedemptionPaused()) return true;

        uint256 totalStHypeBacking = getTotalBalance() - protocolPendingFee - msg.value;

        uint256 expectedTotalSupply = sthype.totalSupply();
        uint256 totalPendingBurns = totalPendingBurns();
        uint256 expectedTotalStHypeBacking = expectedTotalSupply + totalPendingBurns;

        if (totalStHypeBacking < expectedTotalStHypeBacking) {
            uint256 slashingFactor = (totalStHypeBacking * E18) / expectedTotalStHypeBacking;
            uint256 slashPercentage = E18 - slashingFactor;
            if (slashPercentage < $.minSlashPercentage) return false;
            else return true;
        }
        return false;
    }

    /**
     * @notice Total amount of HYPE available to fulfill pending burn requests.
     */
    function maxRedeemable() public view returns (uint256) {
        uint256 totalLiability_ = totalLiability();
        uint256 balance = address(this).balance;

        if (balance < totalLiability_ || _pendingSlashExists()) return 0;
        else return balance - totalLiability_;
    }

    /**
     * @notice Total amount of HYPE owed by the protocol to fulfill pending obligations.
     * @dev If there has been a slashing event, and `rebase()` has not been called yet, this will return a higher value than the true total liabilities.
     */
    function totalLiability() public view returns (uint256) {
        return totalPendingBurns() + protocolPendingFee;
    }

    /**
     * @notice Total amount of stHYPE pending redemption across all pending burn requests.
     * @dev If there has been a slashing event, and `rebase()` has not been called yet, this will return a higher value than the true total pending burns.
     */
    function totalPendingBurns() public view returns (uint256) {
        OverseerStorage storage $ = _getOverseerStorage();

        // totalPendingBurns = (cumulativeNormalizedBurns - normalizedRedeemedHype) * latestCumulativeSlashFactor
        // Rounding up because a higher totalPendingBurns means a lower slash factor, so holders will not be under-slashed
        return Math.mulDiv(
            $.cumulativeNormalizedBurns[burns.length - 1] - $.normalizedRedeemedHype,
            $.latestCumulativeSlashFactor,
            E18,
            Math.Rounding.Ceil
        );
    }

    /**
     * @notice Get the cumulative slash factor for a burn ID.
     * @param burnId Burn ID to query.
     * @return Cumulative slash factor.
     */
    function getCumulativeSlashFactor(uint256 burnId) public view returns (uint256) {
        return _getOverseerStorage().cumulativeSlashFactor[burnId];
    }

    /**
     * @notice Get the normalized redeemed HYPE amount.
     * @return Normalized redeemed HYPE.
     */
    function getNormalizedRedeemedHype() public view returns (uint256) {
        return _getOverseerStorage().normalizedRedeemedHype;
    }

    /**
     * @notice Get the latest cumulative slash factor.
     * @return Latest cumulative slash factor.
     */
    function getLatestCumulativeSlashFactor() public view returns (uint256) {
        return _getOverseerStorage().latestCumulativeSlashFactor;
    }

    /**
     * @notice Get the cumulative normalized burns for a burn ID.
     * @param burnId Burn ID to query.
     * @return Cumulative normalized burns.
     */
    function getCumulativeNormalizedBurns(uint256 burnId) public view returns (uint256) {
        return _getOverseerStorage().cumulativeNormalizedBurns[burnId];
    }

    /**
     * @notice Get a list of burn IDs for an address.
     * @param account Address of the user to get the burn IDs for.
     * @dev WARNING: This function is not meant to be called during a transaction,
     *      since it can cause DoS attacks due to unbounded gas consumption.
     */
    function getBurnIds(address account) external view returns (uint256[] memory) {
        return _getBurnIds(account);
    }

    /**
     * @notice Get all burns for an address.
     * @param account Address of the user to get the burns for.
     * @param startIndex The index to start the search from.
     * @param endIndex The index to end the search at.
     */
    function getBurns(address account, uint256 startIndex, uint256 endIndex)
        public
        view
        returns (Burn[] memory, uint256[] memory, bool[] memory)
    {
        uint256[] memory burnIds = _getBurnIds(account, startIndex, endIndex);
        uint256 burnsLength = burnIds.length;

        Burn[] memory userBurns = new Burn[](burnsLength);
        bool[] memory userRedeemables = new bool[](burnsLength);

        for (uint256 i; i < burnsLength; ++i) {
            userBurns[i] = burns[burnIds[i]];
            userRedeemables[i] = _redeemable(burnIds[i]);
        }

        return (userBurns, burnIds, userRedeemables);
    }

    /**
     * @notice Get all the burns of an account:
     *         the full structs, ids, and if they can be redeemed.
     * @param account Address of the user to pull burns for.
     * @dev WARNING: This function is not meant to be called during a transaction,
     *      since it can cause DoS attacks due to unbounded gas consumption.
     */
    function getBurns(address account) public view returns (Burn[] memory, uint256[] memory, bool[] memory) {
        return getBurns(account, 0, burns.length);
    }

    /**
     * @notice Get all burn requests.
     * @dev WARNING: This function is not meant to be called during a transaction,
     *      since it can cause DoS attacks due to unbounded gas consumption.
     */
    function getAllBurns() external view returns (Burn[] memory) {
        return burns;
    }

    /**
     * @notice Total number of burn requests.
     */
    function burnCount() external view returns (uint256) {
        return burns.length;
    }

    /**
     * @notice Check if redemption is currently paused.
     * @return True if redemption is paused.
     */
    function isRedemptionPaused() public view returns (bool) {
        return block.timestamp < _getOverseerStorage().redemptionPausedUntil;
    }

    /**
     * @notice Check if burning is currently paused.
     * @return True if burning is paused.
     */
    function isBurningPaused() public view returns (bool) {
        return block.timestamp < _getOverseerStorage().burnsPausedUntil;
    }

    function _getBurnIds(address account) private view returns (uint256[] memory) {
        return _getBurnIds(account, 0, burns.length);
    }

    function _getBurnIds(address account, uint256 startIndex, uint256 endIndex)
        private
        view
        returns (uint256[] memory)
    {
        uint256[] memory burnIds = new uint256[](burns.length);
        uint256 t;

        for (uint256 i = startIndex; i < endIndex; ++i) {
            if (burns[i].user == account) {
                burnIds[t] = i;
                t++;
            }
        }

        uint256[] memory filteredBurnIds = new uint256[](t);
        for (uint256 i; i < t; ++i) {
            filteredBurnIds[i] = burnIds[i];
        }

        return filteredBurnIds;
    }

    /**
     * @notice Check if a burn request is redeemable.
     * @param burnId The ID of the burn request to check.
     */
    function redeemable(uint256 burnId) external view returns (bool) {
        return _redeemable(burnId);
    }

    /**
     * @notice Check if a burn is redeemable.
     * @param burnId Burn ID to check.
     * @return True if redeemable.
     */
    function _redeemable(uint256 burnId) private view returns (bool) {
        OverseerStorage storage $ = _getOverseerStorage();

        if (_pendingSlashExists() || burns[burnId].completed) return false;

        uint256 burnSlashFactor = $.cumulativeSlashFactor[burnId];
        if (burnSlashFactor == 0) return false;

        // Compute difference in normalized space first, then convert with ceiling rounding
        // This matches the approach in totalPendingBurns() and prevents underestimating
        uint256 cumulativeNormalizedBurns = $.cumulativeNormalizedBurns[burnId];
        uint256 normalizedRedeemedHype = $.normalizedRedeemedHype;

        uint256 normalizedDifference =
            cumulativeNormalizedBurns < normalizedRedeemedHype ? 0 : cumulativeNormalizedBurns - normalizedRedeemedHype;

        // `difference` represents the "up-to-date liabilities up to and including burnId"
        uint256 difference = Math.mulDiv(normalizedDifference, $.latestCumulativeSlashFactor, E18, Math.Rounding.Ceil);

        uint256 amount = (burns[burnId].amount * $.latestCumulativeSlashFactor) / $.cumulativeSlashFactor[burnId];
        uint256 balance = address(this).balance;

        return burns[burnId].completed == false && difference + protocolPendingFee <= balance && amount <= balance;
    }

    /**
     *
     *  MANAGER ROLE FUNCTIONS
     *
     */

    /**
     * @notice Returns the list of all whitelisted Staking Modules.
     */
    function getStakingModules() external view returns (address[] memory) {
        return _getOverseerStorage().stakingModules.values();
    }

    /**
     * @notice Deposit HYPE into a Staking Module.
     * @param inputs List of Staking Modules to deposit into,
     *               and the amounts to deposit.
     * @dev Only callable by the MANAGER role.
     */
    function deposit(DepositInput[] calldata inputs) external onlyRole(MANAGER_ROLE) whenNotLocked {
        uint256 numStakingModules = _getOverseerStorage().stakingModules.length();

        for (uint256 i = 0; i < inputs.length; i++) {
            DepositInput memory input = inputs[i];

            uint256 stakingModuleIndex = input.index;
            if (stakingModuleIndex >= numStakingModules) {
                revert StakingModuleInvalidIndex();
            }

            if (i > 0 && stakingModuleIndex <= inputs[i - 1].index) {
                revert StakingModuleRepeatedIndex();
            }

            if (input.amount == 0) revert InvalidInput();

            address stakingModule = _getOverseerStorage().stakingModules.at(stakingModuleIndex);

            uint256 preBalance = address(this).balance;
            // Cannot deposit more than native token balance minus total liability
            require(input.amount + totalLiability() <= preBalance, ExcessiveDepositAmount());

            if (i == 0) {
                _getOverseerStorage().stakingModuleLastBlockInteraction = block.number;
            }

            IStakingModule(stakingModule).deposit{value: input.amount}(input.data);

            require(address(this).balance + input.amount >= preBalance, UnexpectedBalanceDecrease());
        }
    }

    /**
     * @notice Delegate HYPE from a Staking Module into multiple accounts.
     * @param inputs List of Staking Modules to delegate from,
     *               the accounts to delegate to,
     *               and the amounts to delegate.
     * @dev Only callable by the MANAGER role.
     */
    function delegate(DelegateInput[] calldata inputs) external onlyRole(MANAGER_ROLE) whenNotLocked {
        uint256 numStakingModules = _getOverseerStorage().stakingModules.length();

        for (uint256 i = 0; i < inputs.length; i++) {
            DelegateInput memory input = inputs[i];

            uint256 stakingModuleIndex = input.index;
            if (stakingModuleIndex >= numStakingModules) {
                revert StakingModuleInvalidIndex();
            }

            if (i > 0 && stakingModuleIndex <= inputs[i - 1].index) {
                revert StakingModuleRepeatedIndex();
            }

            if (input.accounts.length == 0) revert ZeroArrayLength();
            if (input.accounts.length != input.amounts.length) {
                revert ArrayLengthMismatch();
            }

            for (uint256 j = 0; j < input.accounts.length; j++) {
                if (input.accounts[j] == address(0)) revert InvalidInput();
                if (input.amounts[j] == 0) revert InvalidInput();
            }

            address stakingModule = _getOverseerStorage().stakingModules.at(stakingModuleIndex);

            if (i == 0) {
                _getOverseerStorage().stakingModuleLastBlockInteraction = block.number;
            }

            uint256 preBalance = address(this).balance;
            IStakingModule(stakingModule).delegate(input.accounts, input.amounts, input.data);

            require(address(this).balance >= preBalance, UnexpectedBalanceDecrease());
        }
    }

    /**
     * @notice Update delegations of HYPE across multiple accounts on a Staking Module.
     * @param inputs List of Staking Modules to update delegations for,
     *               the accounts to update delegations for,
     *               and the changes to the delegations (positive or negative).
     * @dev Only callable by the MANAGER role.
     */
    function updateDelegations(UpdateDelegationsInput[] calldata inputs) external onlyRole(MANAGER_ROLE) whenNotLocked {
        uint256 numStakingModules = _getOverseerStorage().stakingModules.length();

        for (uint256 i = 0; i < inputs.length; i++) {
            UpdateDelegationsInput memory input = inputs[i];

            uint256 stakingModuleIndex = input.index;
            if (stakingModuleIndex >= numStakingModules) {
                revert StakingModuleInvalidIndex();
            }

            if (i > 0 && stakingModuleIndex <= inputs[i - 1].index) {
                revert StakingModuleRepeatedIndex();
            }

            if (input.accounts.length == 0) revert ZeroArrayLength();
            if (input.accounts.length != input.changes.length) {
                revert ArrayLengthMismatch();
            }

            for (uint256 j = 0; j < input.accounts.length; j++) {
                if (input.accounts[j] == address(0)) revert InvalidInput();
                if (input.changes[j] == int256(0)) revert InvalidInput();
            }

            address stakingModule = _getOverseerStorage().stakingModules.at(stakingModuleIndex);

            if (i == 0) {
                _getOverseerStorage().stakingModuleLastBlockInteraction = block.number;
            }

            uint256 preBalance = address(this).balance;
            IStakingModule(stakingModule).updateDelegations(input.accounts, input.changes, input.data);

            require(address(this).balance >= preBalance, UnexpectedBalanceDecrease());
        }
    }

    /**
     * @notice Request a withdrawal of HYPE from a Staking Module.
     * @param inputs List of Staking Modules to request withdrawals for,
     *               the accounts to request withdrawals for,
     *               and the amounts to request withdrawals for.
     * @dev Only callable by the MANAGER role.
     */
    function requestWithdraw(RequestWithdrawInput[] calldata inputs) external onlyRole(MANAGER_ROLE) whenNotLocked {
        uint256 numStakingModules = _getOverseerStorage().stakingModules.length();

        for (uint256 i = 0; i < inputs.length; i++) {
            RequestWithdrawInput memory input = inputs[i];

            uint256 stakingModuleIndex = input.index;
            if (stakingModuleIndex >= numStakingModules) {
                revert StakingModuleInvalidIndex();
            }

            if (i > 0 && stakingModuleIndex <= inputs[i - 1].index) {
                revert StakingModuleRepeatedIndex();
            }

            if (input.accounts.length == 0) revert ZeroArrayLength();
            if (input.accounts.length != input.amounts.length) {
                revert ArrayLengthMismatch();
            }

            for (uint256 j = 0; j < input.accounts.length; j++) {
                if (input.accounts[j] == address(0)) revert InvalidInput();
                if (input.amounts[j] == 0) revert InvalidInput();
            }

            address stakingModule = _getOverseerStorage().stakingModules.at(stakingModuleIndex);

            if (i == 0) {
                _getOverseerStorage().stakingModuleLastBlockInteraction = block.number;
            }

            uint256 preBalance = address(this).balance;
            IStakingModule(stakingModule).requestWithdraw(input.accounts, input.amounts, input.data);

            require(address(this).balance >= preBalance, UnexpectedBalanceDecrease());
        }
    }

    /**
     * @notice Execute a withdrawal of HYPE from a Staking Module (atomically).
     * @param inputs List of Staking Modules to execute withdrawals for,
     *               and the amounts to withdraw.
     * @dev Only callable by the MANAGER role.
     */
    function withdraw(WithdrawInput[] calldata inputs) external onlyRole(MANAGER_ROLE) whenNotLocked {
        uint256 numStakingModules = _getOverseerStorage().stakingModules.length();

        for (uint256 i = 0; i < inputs.length; i++) {
            WithdrawInput memory input = inputs[i];

            uint256 stakingModuleIndex = input.index;
            if (stakingModuleIndex >= numStakingModules) {
                revert StakingModuleInvalidIndex();
            }

            if (i > 0 && stakingModuleIndex <= inputs[i - 1].index) {
                revert StakingModuleRepeatedIndex();
            }

            if (input.amount == 0) revert InvalidInput();

            address stakingModule = _getOverseerStorage().stakingModules.at(stakingModuleIndex);

            if (i == 0) {
                _getOverseerStorage().stakingModuleLastBlockInteraction = block.number;
            }

            uint256 preBalance = address(this).balance;
            IStakingModule(stakingModule).withdraw(input.amount, input.data);
            require(address(this).balance >= preBalance + input.amount, InsufficientAmountReceived());
        }
    }

    /**
     *
     *  DEFAULT ADMIN ROLE FUNCTIONS
     *
     */

    /**
     * @notice Add a Staking Module to the set of whitelisted Staking Modules.
     * @param stakingModule Address of the Staking Module to add.
     * @dev Only callable by the DEFAULT_ADMIN role.
     */
    function addStakingModule(address stakingModule) external onlyRole(DEFAULT_ADMIN_ROLE) {
        if (stakingModule == address(0) || stakingModule == address(this)) {
            revert InvalidInput();
        }

        if (_getOverseerStorage().stakingModules.length() >= MAX_STAKING_MODULES) revert StakingModuleLimitReached();

        if (_getOverseerStorage().stakingModules.contains(stakingModule)) {
            revert StakingModuleAlreadyAdded();
        }

        // Manager role of `stakingModule` must be this contract
        if (IStakingModule(stakingModule).manager() != address(this)) {
            revert StakingModuleInvalidManager();
        }

        // StakingModule's HyperCore account must be activated
        if (!stakingModule.isHyperCoreAccountActivated()) {
            revert StakingModuleHyperCoreAccountNotActivated();
        }

        // Sanity check that it is possible to query the total balance
        IStakingModule(stakingModule).getTotalBalance();

        // WARNING: Staking Modules cannot be removed.
        // Hence if future changes are required, the Staking Module
        // should be an upgradeable contract
        _getOverseerStorage().stakingModules.add(stakingModule);

        emit StakingModuleAdded(stakingModule);
    }

    /**
     * @notice Set the APR threshold for stHYPE's supply adjustments.
     * @param aprThreshold The new APR threshold.
     * @dev Only callable by the DEFAULT_ADMIN role.
     */
    function setAprThreshold(uint256 aprThreshold) external onlyRole(DEFAULT_ADMIN_ROLE) {
        // WARNING: This threshold can be above 100% APR,
        // in case of unusually large supply growth.
        // This needs to be set with caution,
        // since it might cause well-known front-running attacks
        // that extract rebase yield from stHYPE holders.

        aprThresholdBps = aprThreshold;

        emit AprThresholdSet(aprThreshold);
    }

    /**
     * @notice Set the max slash percentage for stHYPE's supply adjustments.
     * @param maxSlashPercentage_ The new max slash percentage.
     * @dev Only callable by the DEFAULT_ADMIN role.
     */
    function setMaxSlashPercentage(uint256 maxSlashPercentage_) external onlyRole(DEFAULT_ADMIN_ROLE) {
        if (maxSlashPercentage_ > E18) revert InvalidInput();

        maxSlashPercentage = maxSlashPercentage_;

        emit MaxSlashPercentageSet(maxSlashPercentage_);
    }

    /**
     * @notice Set minimum slash percentage threshold.
     * @param minSlashPercentage Minimum slash percentage (1e18 = 100%).
     */
    function setMinSlashPercentage(uint256 minSlashPercentage) external onlyRole(DEFAULT_ADMIN_ROLE) {
        // `minSlashPercentage` is not allowed to exceed 0.1 basis points (1e13).
        if (minSlashPercentage > E18 / BIPS / 10) revert InvalidInput();

        _getOverseerStorage().minSlashPercentage = minSlashPercentage;

        emit MinSlashPercentageSet(minSlashPercentage);
    }

    /**
     * @notice Set pause duration.
     * @param pauseDuration Pause duration in seconds.
     */
    function setPauseDuration(uint256 pauseDuration) external onlyRole(DEFAULT_ADMIN_ROLE) {
        if (pauseDuration == 0 || pauseDuration > 14 days) {
            revert InvalidInput();
        }

        _getOverseerStorage().pauseDuration = pauseDuration;

        emit PauseDurationSet(pauseDuration);
    }

    /**
     * @notice Pause redemption for the configured duration, starting from the current timestamp.
     * @dev    This is called to pause redemption and minting of stHYPE if an upcoming slashing event is predicted.
     */
    function pauseRedemption() public onlyRole(DEFAULT_ADMIN_ROLE) {
        uint256 pauseDuration = _getOverseerStorage().pauseDuration;
        _getOverseerStorage().redemptionPausedUntil = block.timestamp + pauseDuration;

        emit RedemptionPaused(block.timestamp + pauseDuration);
    }

    /**
     * @notice Pause burns for the configured duration, starting from the current timestamp.
     * @dev    This is called to pause burns, in the rare case where the queried total assets are incorrectly too low.
     */
    function pauseBurns() public onlyRole(DEFAULT_ADMIN_ROLE) {
        uint256 pauseDuration = _getOverseerStorage().pauseDuration;
        _getOverseerStorage().burnsPausedUntil = block.timestamp + pauseDuration;

        emit BurnsPaused(block.timestamp + pauseDuration);
    }

    /**
     * @notice Pause redemption and burns for the configured duration, starting from the current timestamp.
     */
    function pauseRedemptionAndBurns() public onlyRole(DEFAULT_ADMIN_ROLE) {
        pauseRedemption();
        pauseBurns();
    }

    /**
     * @notice Unpause redemption immediately.
     */
    function unpauseRedemption() external onlyRole(DEFAULT_ADMIN_ROLE) {
        _getOverseerStorage().redemptionPausedUntil = 0;

        emit RedemptionUnpaused();
    }

    /**
     * @notice Unpause burns immediately.
     */
    function unpauseBurns() external onlyRole(DEFAULT_ADMIN_ROLE) {
        _getOverseerStorage().burnsPausedUntil = 0;

        emit BurnsUnpaused();
    }

    /**
     * @notice Get the minimum slash percentage.
     * @return Minimum slash percentage.
     */
    function getMinSlashPercentage() external view returns (uint256) {
        return _getOverseerStorage().minSlashPercentage;
    }

    /**
     * @notice Get the pause duration.
     * @return Pause duration in seconds.
     */
    function getPauseDuration() external view returns (uint256) {
        return _getOverseerStorage().pauseDuration;
    }

    /**
     * @notice Get the timestamp until which redemption is paused.
     * @return Timestamp until which redemption is paused.
     */
    function getRedemptionPausedUntil() external view returns (uint256) {
        return _getOverseerStorage().redemptionPausedUntil;
    }

    /**
     * @notice Get the timestamp until which burning is paused.
     * @return Timestamp until which burning is paused.
     */
    function getBurnsPausedUntil() external view returns (uint256) {
        return _getOverseerStorage().burnsPausedUntil;
    }

    /**
     * @notice Change the protocol fee.
     * @param fee_ The new protocol fee.
     * @dev Only callable by the DEFAULT_ADMIN role.
     */
    function changeProtocolFee(uint256 fee_) external onlyRole(DEFAULT_ADMIN_ROLE) {
        if (fee_ > BIPS) revert InvalidInput();

        uint256 protocolFeeIncrease = _calculateProtocolFeeIncrease(sthype.totalSupply(), getNewSupply());
        // `rebase()` must be called before changing the protocol fee,
        // to account for net new protocol fee revenue
        if (protocolFeeIncrease > 0) {
            revert UnaccountedProtocolFeeIncrease();
        }

        protocolFee = fee_;

        emit ProtocolFeeSet(fee_);
    }

    /**
     * @notice Set the sync interval for stHYPE's supply adjustments.
     * @param syncInterval_ The new sync interval.
     * @dev Only callable by the DEFAULT_ADMIN role.
     */
    function setSyncInterval(uint256 syncInterval_) external onlyRole(DEFAULT_ADMIN_ROLE) {
        syncInterval = syncInterval_;

        emit SyncIntervalSet(syncInterval_);
    }

    /**
     *
     *  FEE RECIPIENT ROLE FUNCTIONS
     *
     */

    /**
     * @notice Claim protocol fee earnings.
     * @param recipient Address to send the fee to.
     * @param amount Amount of fee to claim.
     * @param max Whether to claim the maximum amount of fee.
     * @dev Only callable by the FEE_RECIPIENT role.
     */
    function claimFee(address recipient, uint256 amount, bool max) public onlyRole(FEE_RECIPIENT_ROLE) {
        uint256 protocolPendingFee_ = protocolPendingFee;
        if (max == false && amount > protocolPendingFee_) {
            revert ExcessiveFeeClaim();
        }

        uint256 amountToClaim = max ? protocolPendingFee_ : amount;
        if (amountToClaim == 0) {
            revert ZeroFeeClaim();
        }

        protocolPendingFee = protocolPendingFee_ - amountToClaim;

        (bool success,) = address(recipient).call{value: amountToClaim}("");
        require(success, TransferFailed());

        emit FeeClaim(recipient, amountToClaim, block.timestamp);
    }

    /**
     * @notice Claim protocol fee earnings.
     * @param amount Amount of fee to claim.
     * @param max Whether to claim the maximum amount of fee.
     * @dev Only callable by the FEE_RECIPIENT role.
     */
    function claimFee(uint256 amount, bool max) public onlyRole(FEE_RECIPIENT_ROLE) {
        claimFee(msg.sender, amount, max);
    }
}
