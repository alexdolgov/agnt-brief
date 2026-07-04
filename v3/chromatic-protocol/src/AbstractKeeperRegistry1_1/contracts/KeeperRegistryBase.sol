// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

import "@openzeppelin/contracts/access/Ownable2Step.sol";
import "@openzeppelin/contracts/security/Pausable.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";
import {Config, State, Upkeep} from "./interfaces/IAutomationRegistry.sol";
import {IAutomation} from "./interfaces/IAutomation.sol";

/**
 * @notice Base Keeper Registry contract, contains shared logic between
 * KeeperRegistry and KeeperRegistryLogic
 */
abstract contract KeeperRegistryBase is Ownable2Step, ReentrancyGuard, Pausable {
    address internal constant ZERO_ADDRESS = address(0);
    address internal constant IGNORE_ADDRESS = 0xFFfFfFffFFfffFFfFFfFFFFFffFFFffffFfFFFfF;
    bytes4 internal constant CHECK_SELECTOR = IAutomation.checkUpkeep.selector;
    bytes4 internal constant PERFORM_SELECTOR = IAutomation.performUpkeep.selector;
    uint256 internal constant PERFORM_GAS_MIN = 2_300;
    uint256 internal constant CANCELLATION_DELAY = 50;
    uint256 internal constant PERFORM_GAS_CUSHION = 1_000;
    uint256 internal constant PPB_BASE = 1_000_000_000;
    uint32 internal constant UINT32_MAX = type(uint32).max;
    // L1_FEE_DATA_PADDING includes 35 bytes for L1 data padding for Optimism
    bytes internal constant L1_FEE_DATA_PADDING =
        "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff";
    // MAX_INPUT_DATA represents the estimated max size of the sum of L1 data padding and msg.data in performUpkeep
    // function, which includes 4 bytes for function selector, 32 bytes for upkeep id, 35 bytes for data padding, and
    // 64 bytes for estimated perform data
    bytes internal constant MAX_INPUT_DATA =
        "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff";

    address internal s_upkeepTreasury;
    address[] internal s_keeperList;
    EnumerableSet.UintSet internal s_upkeepIDs;
    mapping(uint256 => Upkeep) internal s_upkeep;
    mapping(address => KeeperInfo) internal s_keeperInfo;
    mapping(address => address) internal s_proposedPayee;
    mapping(uint256 => address) internal s_proposedAdmin;
    mapping(uint256 => bytes) internal s_checkData;
    Storage internal s_storage;
    uint256 internal s_fallbackGasPrice; // not in config object for gas savings
    uint256 internal s_expectedBalance;
    EnumerableSet.AddressSet internal s_whitelistedRegistrars;

    uint256 public immutable REGISTRY_GAS_OVERHEAD;

    error EthTransferFailed();
    error CannotCancel();
    error DuplicateEntry();
    error NotContainedEntry();
    error EmptyAddress();
    error GasLimitCanOnlyIncrease();
    error GasLimitOutsideRange();
    error IndexOutOfRange();
    error InsufficientFunds();
    error NotEnoughFeePaid();
    error InvalidDataLength();
    error InvalidPayee();
    error InvalidRecipient();
    error KeepersMustTakeTurns();
    error NotAContract();
    error OnlyActiveKeepers();
    error OnlyCallableByAdmin();
    error OnlyCallableByOwnerOrAdmin();
    error OnlyCallableByOwnerOrRegistrar();
    error OnlyCallableByPayee();
    error OnlyCallableByProposedAdmin();
    error OnlyCallableByProposedPayee();
    error OnlyPausedUpkeep();
    error OnlyUnpausedUpkeep();
    error ParameterLengthError();
    error TargetCheckReverted(bytes reason);
    error UpkeepCancelled();
    error UpkeepNotCanceled();
    error UpkeepNotNeeded();
    error ValueNotChanged();

    /**
     * @notice storage of the registry, contains a mix of config and state data
     */
    struct Storage {
        uint32 paymentPremiumPPB;
        uint24 blockCountPerTurn;
        uint16 gasCeilingMultiplier;
        uint32 maxPerformGas;
        uint32 nonce;
    }

    struct KeeperInfo {
        address payee;
        uint256 balance;
        bool active;
    }

    struct PerformParams {
        address from;
        uint256 id;
        bytes performData;
        uint256 maxPayment;
        uint256 gasLimit;
    }

    event ConfigSet(Config config);
    event FundsAdded(uint256 indexed id, address indexed from, uint256 amount);
    event FundsWithdrawn(uint256 indexed id, uint256 amount, address to);
    event KeepersUpdated(address[] keepers, address[] payees);
    event OwnerFundsWithdrawn(uint256 amount);
    event PayeeshipTransferRequested(
        address indexed keeper,
        address indexed from,
        address indexed to
    );
    event PayeeshipTransferred(address indexed keeper, address indexed from, address indexed to);
    event PaymentWithdrawn(
        address indexed keeper,
        uint256 indexed amount,
        address indexed to,
        address payee
    );
    event UpkeepAdminTransferRequested(
        uint256 indexed id,
        address indexed from,
        address indexed to
    );
    event UpkeepAdminTransferred(uint256 indexed id, address indexed from, address indexed to);
    event UpkeepCanceled(uint256 indexed id, uint64 indexed atBlockHeight);
    event UpkeepCheckDataUpdated(uint256 indexed id, bytes newCheckData);
    event UpkeepGasLimitSet(uint256 indexed id, uint32 gasLimit);
    event UpkeepPaused(uint256 indexed id);
    event UpkeepPerformed(
        uint256 indexed id,
        bool indexed success,
        address indexed from,
        uint256 payment,
        bytes performData
    );
    event UpkeepUnpaused(uint256 indexed id);
    event UpkeepRegistered(
        uint256 indexed id,
        address indexed registrar,
        address indexed admin,
        uint32 executeGas
    );
    event UpkeepTreasuryUpdated(address indexed upkeepTreasury);
    event WhitelistedRegistrarAdded(address indexed registrar);
    event WhitelistedRegistrarRemoved(address indexed registrar);

    /**
     * @param registryGasOverhead the gas overhead used by registry in performUpkeep
     */
    constructor(uint256 registryGasOverhead) Ownable2Step() {
        REGISTRY_GAS_OVERHEAD = registryGasOverhead;
    }

    /**
     * @dev ensures all required checks are passed before an upkeep is performed
     */
    function _prePerformUpkeep(Upkeep memory upkeep, address from) internal view {
        if (upkeep.paused) revert OnlyUnpausedUpkeep();
        if (!s_keeperInfo[from].active) revert OnlyActiveKeepers();
        if (upkeep.lastKeeper == from) revert KeepersMustTakeTurns();
    }

    /**
     * @dev ensures the upkeep is not cancelled and the caller is the upkeep admin
     */
    function requireAdminAndNotCancelled(Upkeep memory upkeep) internal view {
        if (msg.sender != upkeep.admin) revert OnlyCallableByAdmin();
        if (upkeep.maxValidBlocknumber != UINT32_MAX) revert UpkeepCancelled();
    }
}
