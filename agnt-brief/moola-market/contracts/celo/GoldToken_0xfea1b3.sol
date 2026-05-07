// ============================================================
// FILE: contracts/common/GoldToken.sol
// ============================================================

// SPDX-License-Identifier: LGPL-3.0-only
pragma solidity ^0.5.13;

import "openzeppelin-solidity/contracts/ownership/Ownable.sol";
import "openzeppelin-solidity/contracts/math/SafeMath.sol";
import "openzeppelin-solidity/contracts/token/ERC20/IERC20.sol";

import "./UsingRegistry.sol";
import "./Initializable.sol";
import "./interfaces/ICeloToken.sol";
import "./interfaces/ICeloTokenInitializer.sol";
import "./interfaces/ICeloVersionedContract.sol";

/**
 * @title ERC20 interface for the CELO token.
 * @notice The native token was initially called "Celo Gold", but soon after
 * mainnet launch, the community voted to change the name to "CELO". For legacy
 * reasons, the contract itself is still called GoldToken.
 * @dev Note that this is not a wrapper token like WETH. Thanks to the
 * `transfer` precompile, this contract provides an ERC20 interface *directly*
 * to the native token.
 */
contract GoldToken is
  Initializable,
  UsingRegistry,
  IERC20,
  ICeloToken,
  ICeloTokenInitializer,
  ICeloVersionedContract
{
  using SafeMath for uint256;

  // Address of the TRANSFER precompiled contract.
  // solhint-disable state-visibility
  address constant TRANSFER = address(0xff - 2);
  string constant NAME = "Celo native asset";
  string constant SYMBOL = "CELO";
  uint8 constant DECIMALS = 18;
  uint256 constant CELO_SUPPLY_CAP = 1000000000 ether; // 1 billion CELO
  uint256 internal deprecated_totalSupply_; // this variable is deprecated
  // solhint-enable state-visibility

  mapping(address => mapping(address => uint256)) internal allowed;

  // Burn address is 0xdEaD because truffle is having buggy behaviour with the zero address
  address constant BURN_ADDRESS = address(0x000000000000000000000000000000000000dEaD);

  event Transfer(address indexed from, address indexed to, uint256 value);

  event TransferComment(string comment);

  event Approval(address indexed owner, address indexed spender, uint256 value);

  /**
   * @notice Sets initialized == true on implementation contracts
   * @param test Set to true to skip implementation initialization
   */
  constructor(bool test) public Initializable(test) {}

  /**
   * @notice Used in place of the constructor to allow the contract to be upgradable via proxy.
   * @param registryAddress Address of the Registry contract.
   */
  function initialize(address registryAddress) external initializer {
    _transferOwnership(msg.sender);
    setRegistry(registryAddress);
  }

  /**
   * @notice Transfers CELO from one address to another.
   * @param to The address to transfer CELO to.
   * @param value The amount of CELO to transfer.
   * @return True if the transaction succeeds.
   */
  // solhint-disable-next-line no-simple-event-func-name
  function transfer(address to, uint256 value) external returns (bool) {
    return _transferWithCheck(to, value);
  }

  /**
   * @notice Transfers CELO from one address to another with a comment.
   * @param to The address to transfer CELO to.
   * @param value The amount of CELO to transfer.
   * @param comment The transfer comment
   * @return True if the transaction succeeds.
   */
  function transferWithComment(
    address to,
    uint256 value,
    string calldata comment
  ) external returns (bool) {
    bool succeeded = _transferWithCheck(to, value);
    emit TransferComment(comment);
    return succeeded;
  }

  /**
   * @notice This function allows a user to burn a specific amount of tokens.
     Burning is implemented by sending tokens to the burn address.
   * @param value: The amount of CELO to burn.
   * @return True if burn was successful.
   */
  function burn(uint256 value) external returns (bool) {
    // not using transferWithCheck as the burn address can potentially be the zero address
    return _transfer(BURN_ADDRESS, value);
  }

  /**
   * @notice Approve a user to transfer CELO on behalf of another user.
   * @param spender The address which is being approved to spend CELO.
   * @param value The amount of CELO approved to the spender.
   * @return True if the transaction succeeds.
   */
  function approve(address spender, uint256 value) external returns (bool) {
    require(spender != address(0), "cannot set allowance for 0");
    allowed[msg.sender][spender] = value;
    emit Approval(msg.sender, spender, value);
    return true;
  }

  /**
   * @notice Increases the allowance of another user.
   * @param spender The address which is being approved to spend CELO.
   * @param value The increment of the amount of CELO approved to the spender.
   * @return True if the transaction succeeds.
   */
  function increaseAllowance(address spender, uint256 value) external returns (bool) {
    require(spender != address(0), "cannot set allowance for 0");
    uint256 oldValue = allowed[msg.sender][spender];
    uint256 newValue = oldValue.add(value);
    allowed[msg.sender][spender] = newValue;
    emit Approval(msg.sender, spender, newValue);
    return true;
  }

  /**
   * @notice Decreases the allowance of another user.
   * @param spender The address which is being approved to spend CELO.
   * @param value The decrement of the amount of CELO approved to the spender.
   * @return True if the transaction succeeds.
   */
  function decreaseAllowance(address spender, uint256 value) external returns (bool) {
    uint256 oldValue = allowed[msg.sender][spender];
    uint256 newValue = oldValue.sub(value);
    allowed[msg.sender][spender] = newValue;
    emit Approval(msg.sender, spender, newValue);
    return true;
  }

  /**
   * @notice Transfers CELO from one address to another on behalf of a user.
   * @param from The address to transfer CELO from.
   * @param to The address to transfer CELO to.
   * @param value The amount of CELO to transfer.
   * @return True if the transaction succeeds.
   */
  function transferFrom(address from, address to, uint256 value) external returns (bool) {
    require(to != address(0), "transfer attempted to reserved address 0x0");
    require(value <= balanceOf(from), "transfer value exceeded balance of sender");
    require(
      value <= allowed[from][msg.sender],
      "transfer value exceeded sender's allowance for spender"
    );

    bool success;
    (success, ) = TRANSFER.call.value(0).gas(gasleft())(abi.encode(from, to, value));
    require(success, "CELO transfer failed");

    allowed[from][msg.sender] = allowed[from][msg.sender].sub(value);
    emit Transfer(from, to, value);
    return true;
  }

  /**
   * @return The name of the CELO token.
   */
  function name() external view returns (string memory) {
    return NAME;
  }

  /**
   * @return The symbol of the CELO token.
   */
  function symbol() external view returns (string memory) {
    return SYMBOL;
  }

  /**
   * @return The number of decimal places to which CELO is divisible.
   */
  function decimals() external view returns (uint8) {
    return DECIMALS;
  }

  /**
   * @notice Gets the amount of owner's CELO allowed to be spent by spender.
   * @param _owner The owner of the CELO.
   * @param spender The spender of the CELO.
   * @return The amount of CELO owner is allowing spender to spend.
   */
  function allowance(address _owner, address spender) external view returns (uint256) {
    return allowed[_owner][spender];
  }

  /**
   * @notice Returns the storage, major, minor, and patch version of the contract.
   * @return Storage version of the contract.
   * @return Major version of the contract.
   * @return Minor version of the contract.
   * @return Patch version of the contract.
   */
  function getVersionNumber() external pure returns (uint256, uint256, uint256, uint256) {
    return (1, 2, 0, 0);
  }

  /**
   * @notice Gets the amount of CELO that has been burned.
   * @return The total amount of CELO that has been sent to the burn address.
   */
  function getBurnedAmount() public view returns (uint256) {
    return balanceOf(BURN_ADDRESS);
  }

  /**
   * @notice Gets the balance of the specified address.
   * @param _owner The address to query the balance of.
   * @return The balance of the specified address.
   */
  function balanceOf(address _owner) public view returns (uint256) {
    return _owner.balance;
  }

  /**
   * @return The total amount of allocated CELO.
   */
  function allocatedSupply() public view returns (uint256) {
    return CELO_SUPPLY_CAP - getCeloUnreleasedTreasury().getRemainingBalanceToRelease();
  }

  /**
   * @return The total amount of CELO in existence, including what the burn address holds.
   */
  function totalSupply() external view returns (uint256) {
    return CELO_SUPPLY_CAP;
  }

  /**
   * @notice internal CELO transfer from one address to another.
   * @param to The address to transfer CELO to.
   * @param value The amount of CELO to transfer.
   * @return True if the transaction succeeds.
   */
  function _transfer(address to, uint256 value) internal returns (bool) {
    require(value <= balanceOf(msg.sender), "transfer value exceeded balance of sender");

    bool success;
    (success, ) = TRANSFER.call.value(0).gas(gasleft())(abi.encode(msg.sender, to, value));
    require(success, "CELO transfer failed");
    emit Transfer(msg.sender, to, value);
    return true;
  }

  /**
   * @notice Internal CELO transfer from one address to another.
   * @param to The address to transfer CELO to. Zero address will revert.
   * @param value The amount of CELO to transfer.
   * @return True if the transaction succeeds.
   */
  function _transferWithCheck(address to, uint256 value) internal returns (bool) {
    require(to != address(0), "transfer attempted to reserved address 0x0");
    return _transfer(to, value);
  }
}

// ============================================================
// FILE: contracts/common/Initializable.sol
// ============================================================

// SPDX-License-Identifier: LGPL-3.0-only
pragma solidity >=0.5.13 <0.9.0;

/**
 * @title Used with proxied contracts that have an `initialize` function.
 * @notice Ensures the `initialize` function:
 *         - gets called only once
 *         - cannot be called on the logic contract.
 */
contract Initializable {
  bool public initialized;

  /**
   * @notice Ensures the initializer function cannot be called more than once.
   */
  modifier initializer() {
    require(!initialized, "contract already initialized");
    initialized = true;
    _;
  }

  /**
   * @notice By default, ensures that the `initialize` function cannot be called
   * on the logic contract.
   * @param testingDeployment When set to true, allows the `initialize` function
   * to be called, which is useful in testing when not setting up with a Proxy.
   */
  constructor(bool testingDeployment) public {
    if (!testingDeployment) {
      initialized = true;
    }
  }
}

// ============================================================
// FILE: contracts/common/interfaces/IAccounts.sol
// ============================================================

// SPDX-License-Identifier: LGPL-3.0-only
pragma solidity >=0.5.13 <0.9.0;

interface IAccounts {
  function setAccountDataEncryptionKey(bytes calldata) external;
  function setMetadataURL(string calldata) external;
  function setName(string calldata) external;
  function setWalletAddress(address, uint8, bytes32, bytes32) external;
  function setAccount(string calldata, bytes calldata, address, uint8, bytes32, bytes32) external;

  function authorizeVoteSigner(address, uint8, bytes32, bytes32) external;
  function authorizeValidatorSigner(address, uint8, bytes32, bytes32) external;
  function authorizeValidatorSignerWithPublicKey(
    address,
    uint8,
    bytes32,
    bytes32,
    bytes calldata
  ) external;
  function authorizeAttestationSigner(address, uint8, bytes32, bytes32) external;
  function setEip712DomainSeparator() external;
  function createAccount() external returns (bool);

  function setPaymentDelegation(address, uint256) external;

  function isAccount(address) external view returns (bool);
  function voteSignerToAccount(address) external view returns (address);
  function validatorSignerToAccount(address) external view returns (address);
  function attestationSignerToAccount(address) external view returns (address);
  function signerToAccount(address) external view returns (address);
  function getAttestationSigner(address) external view returns (address);
  function getValidatorSigner(address) external view returns (address);
  function getVoteSigner(address) external view returns (address);
  function hasAuthorizedVoteSigner(address) external view returns (bool);
  function hasAuthorizedValidatorSigner(address) external view returns (bool);
  function hasAuthorizedAttestationSigner(address) external view returns (bool);

  function batchGetMetadataURL(
    address[] calldata
  ) external view returns (uint256[] memory, bytes memory);

  function getDataEncryptionKey(address) external view returns (bytes memory);
  function getWalletAddress(address) external view returns (address);
  function getMetadataURL(address) external view returns (string memory);

  function getName(address) external view returns (string memory);

  function getPaymentDelegation(address) external view returns (address, uint256);
  function isSigner(address, address, bytes32) external view returns (bool);
}

// ============================================================
// FILE: contracts/common/interfaces/ICeloToken.sol
// ============================================================

// SPDX-License-Identifier: LGPL-3.0-only
pragma solidity >=0.5.13 <0.9.0;

/**
 * @title This interface describes the non- ERC20 shared interface for all Celo Tokens, and
 * in the absence of interface inheritance is intended as a companion to IERC20.sol.
 */
interface ICeloToken {
  function initialize(address) external;
  function transferWithComment(address, uint256, string calldata) external returns (bool);
  function burn(uint256 value) external returns (bool);
  function name() external view returns (string memory);
  function symbol() external view returns (string memory);
  function decimals() external view returns (uint8);
  function allocatedSupply() external view returns (uint256);
  function totalSupply() external view returns (uint256);
}

// ============================================================
// FILE: contracts/common/interfaces/ICeloTokenInitializer.sol
// ============================================================

// SPDX-License-Identifier: LGPL-3.0-only
pragma solidity >=0.5.13 <0.9.0;

/**
 * @title This interface describes the non- ERC20 shared interface for all Celo Tokens, and
 * in the absence of interface inheritance is intended as a companion to IERC20.sol.
 */
interface ICeloTokenInitializer {
  function initialize(address) external;
}

// ============================================================
// FILE: contracts/common/interfaces/ICeloUnreleasedTreasury.sol
// ============================================================

// SPDX-License-Identifier: LGPL-3.0-only
pragma solidity >=0.5.13 <0.9.0;

interface ICeloUnreleasedTreasury {
  /**
   * @notice Releases the Celo to the specified address.
   * @param to The address to release the amount to.
   * @param amount The amount to release.
   */
  function release(address to, uint256 amount) external;

  function getRemainingBalanceToRelease() external view returns (uint256);
}

// ============================================================
// FILE: contracts/common/interfaces/ICeloVersionedContract.sol
// ============================================================

// SPDX-License-Identifier: LGPL-3.0-only
pragma solidity >=0.5.13 <0.9.0;

interface ICeloVersionedContract {
  /**
   * @notice Returns the storage, major, minor, and patch version of the contract.
   * @return Storage version of the contract.
   * @return Major version of the contract.
   * @return Minor version of the contract.
   * @return Patch version of the contract.
   */
  function getVersionNumber() external pure returns (uint256, uint256, uint256, uint256);
}

// ============================================================
// FILE: contracts/common/interfaces/IEpochManager.sol
// ============================================================

// SPDX-License-Identifier: LGPL-3.0-only
pragma solidity >=0.5.13 <0.9.0;

interface IEpochManager {
  function initializeSystem(
    uint256 firstEpochNumber,
    uint256 firstEpochBlock,
    address[] calldata firstElected
  ) external;
  function startNextEpochProcess() external;
  function finishNextEpochProcess(
    address[] calldata groups,
    address[] calldata lessers,
    address[] calldata greaters
  ) external;
  function setToProcessGroups() external;
  function processGroup(address group, address lesser, address greater) external;
  function sendValidatorPayment(address) external;
  function getCurrentEpoch() external view returns (uint256, uint256, uint256, uint256);
  function getEpochByNumber(
    uint256 epochNumber
  ) external view returns (uint256, uint256, uint256, uint256);
  function getEpochByBlockNumber(
    uint256 blockNumber
  ) external view returns (uint256, uint256, uint256, uint256);
  function getEpochNumberOfBlock(uint256) external view returns (uint256);
  function getCurrentEpochNumber() external view returns (uint256);
  function numberOfElectedInCurrentSet() external view returns (uint256);
  function getElectedAccounts() external view returns (address[] memory);
  function getElectedAccountByIndex(uint256 index) external view returns (address);
  function getElectedSigners() external view returns (address[] memory);
  function getElectedSignerByIndex(uint256 index) external view returns (address);
  function epochDuration() external view returns (uint256);
  function firstKnownEpoch() external view returns (uint256);
  function getEpochProcessingState()
    external
    view
    returns (uint256, uint256, uint256, uint256, uint256);
  function systemAlreadyInitialized() external view returns (bool);
  function isBlocked() external view returns (bool);
  function isTimeForNextEpoch() external view returns (bool);
  function isOnEpochProcess() external view returns (bool);
  function getFirstBlockAtEpoch(uint256) external view returns (uint256);
  function getLastBlockAtEpoch(uint256) external view returns (uint256);
}

// ============================================================
// FILE: contracts/common/interfaces/IFeeCurrencyWhitelist.sol
// ============================================================

// SPDX-License-Identifier: LGPL-3.0-only
pragma solidity >=0.5.13 <0.9.0;

interface IFeeCurrencyWhitelist {
  function initialize() external;
  function addToken(address) external;
  function getWhitelist() external view returns (address[] memory);
}

// ============================================================
// FILE: contracts/common/interfaces/IFreezer.sol
// ============================================================

// SPDX-License-Identifier: LGPL-3.0-only
pragma solidity >=0.5.13 <0.9.0;

interface IFreezer {
  function freeze(address target) external;
  function unfreeze(address target) external;
  function isFrozen(address) external view returns (bool);
}

// ============================================================
// FILE: contracts/common/interfaces/IRegistry.sol
// ============================================================

// SPDX-License-Identifier: LGPL-3.0-only
pragma solidity >=0.5.13 <0.9.0;

interface IRegistry {
  function setAddressFor(string calldata, address) external;
  function getAddressForOrDie(bytes32) external view returns (address);
  function getAddressFor(bytes32) external view returns (address);
  function getAddressForStringOrDie(string calldata identifier) external view returns (address);
  function getAddressForString(string calldata identifier) external view returns (address);
  function isOneOf(bytes32[] calldata, address) external view returns (bool);
}

// ============================================================
// FILE: contracts/common/UsingRegistry.sol
// ============================================================

// SPDX-License-Identifier: LGPL-3.0-only
pragma solidity ^0.5.13;

import "openzeppelin-solidity/contracts/ownership/Ownable.sol";
import "openzeppelin-solidity/contracts/token/ERC20/IERC20.sol";

import "./interfaces/IAccounts.sol";
import "./interfaces/IEpochManager.sol";
import "./interfaces/IFeeCurrencyWhitelist.sol";
import "./interfaces/IFreezer.sol";
import "./interfaces/IRegistry.sol";
import "./interfaces/ICeloUnreleasedTreasury.sol";

import "../governance/interfaces/IElection.sol";
import "../governance/interfaces/IEpochRewards.sol";
import "../governance/interfaces/IGovernance.sol";
import "../governance/interfaces/ILockedGold.sol";
import "../governance/interfaces/ILockedCelo.sol";
import "../governance/interfaces/IValidators.sol";

import "../identity/interfaces/IRandom.sol";
import "../identity/interfaces/IAttestations.sol";

import "../../lib/mento-core/contracts/interfaces/IExchange.sol";
import "../../lib/mento-core/contracts/interfaces/IReserve.sol";
import "../../lib/mento-core/contracts/interfaces/IStableToken.sol";
import "../stability/interfaces/ISortedOracles.sol";

contract UsingRegistry is Ownable {
  // solhint-disable state-visibility
  bytes32 constant ACCOUNTS_REGISTRY_ID = keccak256(abi.encodePacked("Accounts"));
  bytes32 constant ATTESTATIONS_REGISTRY_ID = keccak256(abi.encodePacked("Attestations"));
  bytes32 constant DOWNTIME_SLASHER_REGISTRY_ID = keccak256(abi.encodePacked("DowntimeSlasher"));
  bytes32 constant DOUBLE_SIGNING_SLASHER_REGISTRY_ID =
    keccak256(abi.encodePacked("DoubleSigningSlasher"));
  bytes32 constant ELECTION_REGISTRY_ID = keccak256(abi.encodePacked("Election"));
  bytes32 constant EXCHANGE_REGISTRY_ID = keccak256(abi.encodePacked("Exchange"));
  bytes32 constant FEE_CURRENCY_WHITELIST_REGISTRY_ID =
    keccak256(abi.encodePacked("FeeCurrencyWhitelist"));
  bytes32 constant FREEZER_REGISTRY_ID = keccak256(abi.encodePacked("Freezer"));
  bytes32 constant GOLD_TOKEN_REGISTRY_ID = keccak256(abi.encodePacked("GoldToken"));
  bytes32 constant GOVERNANCE_REGISTRY_ID = keccak256(abi.encodePacked("Governance"));
  bytes32 constant GOVERNANCE_SLASHER_REGISTRY_ID =
    keccak256(abi.encodePacked("GovernanceSlasher"));
  bytes32 constant LOCKED_GOLD_REGISTRY_ID = keccak256(abi.encodePacked("LockedGold"));
  bytes32 constant RESERVE_REGISTRY_ID = keccak256(abi.encodePacked("Reserve"));
  bytes32 constant RANDOM_REGISTRY_ID = keccak256(abi.encodePacked("Random"));
  bytes32 constant SORTED_ORACLES_REGISTRY_ID = keccak256(abi.encodePacked("SortedOracles"));
  bytes32 constant STABLE_TOKEN_REGISTRY_ID = keccak256(abi.encodePacked("StableToken"));
  bytes32 constant VALIDATORS_REGISTRY_ID = keccak256(abi.encodePacked("Validators"));

  bytes32 constant CELO_TOKEN_REGISTRY_ID = keccak256(abi.encodePacked("CeloToken"));
  bytes32 constant LOCKED_CELO_REGISTRY_ID = keccak256(abi.encodePacked("LockedCelo"));
  bytes32 constant CELO_UNRELEASED_TREASURY_REGISTRY_ID =
    keccak256(abi.encodePacked("CeloUnreleasedTreasury"));
  bytes32 constant EPOCH_REWARDS_REGISTRY_ID = keccak256(abi.encodePacked("EpochRewards"));
  bytes32 constant EPOCH_MANAGER_ENABLER_REGISTRY_ID =
    keccak256(abi.encodePacked("EpochManagerEnabler"));
  bytes32 constant EPOCH_MANAGER_REGISTRY_ID = keccak256(abi.encodePacked("EpochManager"));
  // solhint-enable state-visibility

  IRegistry public registry;

  event RegistrySet(address indexed registryAddress);

  modifier onlyRegisteredContract(bytes32 identifierHash) {
    require(registry.getAddressForOrDie(identifierHash) == msg.sender, "only registered contract");
    _;
  }

  modifier onlyRegisteredContracts(bytes32[] memory identifierHashes) {
    require(registry.isOneOf(identifierHashes, msg.sender), "only registered contracts");
    _;
  }

  /**
   * @notice Updates the address pointing to a Registry contract.
   * @param registryAddress The address of a registry contract for routing to other contracts.
   */
  function setRegistry(address registryAddress) public onlyOwner {
    require(registryAddress != address(0), "Cannot register the null address");
    registry = IRegistry(registryAddress);
    emit RegistrySet(registryAddress);
  }

  function getAccounts() internal view returns (IAccounts) {
    return IAccounts(registry.getAddressForOrDie(ACCOUNTS_REGISTRY_ID));
  }

  function getAttestations() internal view returns (IAttestations) {
    return IAttestations(registry.getAddressForOrDie(ATTESTATIONS_REGISTRY_ID));
  }

  function getElection() internal view returns (IElection) {
    return IElection(registry.getAddressForOrDie(ELECTION_REGISTRY_ID));
  }

  function getExchange() internal view returns (IExchange) {
    return IExchange(registry.getAddressForOrDie(EXCHANGE_REGISTRY_ID));
  }

  function getFeeCurrencyWhitelistRegistry() internal view returns (IFeeCurrencyWhitelist) {
    return IFeeCurrencyWhitelist(registry.getAddressForOrDie(FEE_CURRENCY_WHITELIST_REGISTRY_ID));
  }

  function getFreezer() internal view returns (IFreezer) {
    return IFreezer(registry.getAddressForOrDie(FREEZER_REGISTRY_ID));
  }

  function getGoldToken() internal view returns (IERC20) {
    return IERC20(registry.getAddressForOrDie(GOLD_TOKEN_REGISTRY_ID));
  }
  function getCeloToken() internal view returns (IERC20) {
    return IERC20(registry.getAddressForOrDie(CELO_TOKEN_REGISTRY_ID));
  }

  function getGovernance() internal view returns (IGovernance) {
    return IGovernance(registry.getAddressForOrDie(GOVERNANCE_REGISTRY_ID));
  }

  function getLockedGold() internal view returns (ILockedGold) {
    return ILockedGold(registry.getAddressForOrDie(LOCKED_GOLD_REGISTRY_ID));
  }
  function getLockedCelo() internal view returns (ILockedCelo) {
    return ILockedCelo(registry.getAddressForOrDie(LOCKED_CELO_REGISTRY_ID));
  }

  function getRandom() internal view returns (IRandom) {
    return IRandom(registry.getAddressForOrDie(RANDOM_REGISTRY_ID));
  }

  function getReserve() internal view returns (IReserve) {
    return IReserve(registry.getAddressForOrDie(RESERVE_REGISTRY_ID));
  }

  function getSortedOracles() internal view returns (ISortedOracles) {
    return ISortedOracles(registry.getAddressForOrDie(SORTED_ORACLES_REGISTRY_ID));
  }

  function getStableToken() internal view returns (IStableToken) {
    return IStableToken(registry.getAddressForOrDie(STABLE_TOKEN_REGISTRY_ID));
  }

  function getValidators() internal view returns (IValidators) {
    return IValidators(registry.getAddressForOrDie(VALIDATORS_REGISTRY_ID));
  }

  function getCeloUnreleasedTreasury() internal view returns (ICeloUnreleasedTreasury) {
    return
      ICeloUnreleasedTreasury(registry.getAddressForOrDie(CELO_UNRELEASED_TREASURY_REGISTRY_ID));
  }

  function getEpochRewards() internal view returns (IEpochRewards) {
    return IEpochRewards(registry.getAddressForOrDie(EPOCH_REWARDS_REGISTRY_ID));
  }

  function getEpochManager() internal view returns (IEpochManager) {
    return IEpochManager(registry.getAddressForOrDie(EPOCH_MANAGER_REGISTRY_ID));
  }
}

// ============================================================
// FILE: contracts/governance/interfaces/IElection.sol
// ============================================================

// SPDX-License-Identifier: LGPL-3.0-only
pragma solidity >=0.5.13 <0.9.0;

interface IElection {
  function vote(
    address group,
    uint256 value,
    address lesser,
    address greater
  ) external returns (bool);
  function activate(address group) external returns (bool);
  function revokeActive(
    address group,
    uint256 value,
    address lesser,
    address greater,
    uint256 index
  ) external returns (bool);
  function revokeAllActive(
    address group,
    address lesser,
    address greater,
    uint256 index
  ) external returns (bool);
  function revokePending(
    address group,
    uint256 value,
    address lesser,
    address greater,
    uint256 index
  ) external returns (bool);
  function markGroupIneligible(address group) external;
  function markGroupEligible(address group, address lesser, address greater) external;
  function allowedToVoteOverMaxNumberOfGroups(address account) external returns (bool);
  function forceDecrementVotes(
    address account,
    uint256 value,
    address[] calldata lessers,
    address[] calldata greaters,
    uint256[] calldata indices
  ) external returns (uint256);
  function setAllowedToVoteOverMaxNumberOfGroups(bool flag) external;

  // only owner
  function setElectableValidators(uint256 min, uint256 max) external returns (bool);
  function setMaxNumGroupsVotedFor(uint256 _maxNumGroupsVotedFor) external returns (bool);
  function setElectabilityThreshold(uint256 threshold) external returns (bool);

  // only VM
  function distributeEpochRewards(
    address group,
    uint256 value,
    address lesser,
    address greater
  ) external;

  // view functions
  function electValidatorSigners() external view returns (address[] memory);
  function electValidatorAccounts() external view returns (address[] memory);
  function electNValidatorSigners(
    uint256 minElectableValidators,
    uint256 maxElectableValidators
  ) external view returns (address[] memory);
  function electNValidatorAccounts(
    uint256 minElectableValidators,
    uint256 maxElectableValidators
  ) external view returns (address[] memory);
  function getElectableValidators() external view returns (uint256, uint256);
  function getElectabilityThreshold() external view returns (uint256);
  function getNumVotesReceivable(address group) external view returns (uint256);
  function getTotalVotes() external view returns (uint256);
  function getActiveVotes() external view returns (uint256);
  function getTotalVotesByAccount(address account) external view returns (uint256);
  function getPendingVotesForGroupByAccount(
    address group,
    address account
  ) external view returns (uint256);
  function getActiveVotesForGroupByAccount(
    address group,
    address account
  ) external view returns (uint256);
  function getTotalVotesForGroupByAccount(
    address group,
    address account
  ) external view returns (uint256);
  function getActiveVoteUnitsForGroupByAccount(
    address group,
    address account
  ) external view returns (uint256);
  function getTotalVotesForGroup(address group) external view returns (uint256);
  function getActiveVotesForGroup(address group) external view returns (uint256);
  function getPendingVotesForGroup(address group) external view returns (uint256);
  function getGroupEligibility(address group) external view returns (bool);
  function getGroupEpochRewardsBasedOnScore(
    address group,
    uint256 totalEpochRewards,
    uint256 groupScore
  ) external view returns (uint256);
  function getGroupsVotedForByAccount(address account) external view returns (address[] memory);
  function getEligibleValidatorGroups() external view returns (address[] memory);
  function getTotalVotesForEligibleValidatorGroups()
    external
    view
    returns (address[] memory, uint256[] memory);
  function getCurrentValidatorSigners() external view returns (address[] memory);
  function canReceiveVotes(address group, uint256 value) external view returns (bool);
  function hasActivatablePendingVotes(address account, address group) external view returns (bool);
  function validatorSignerAddressFromCurrentSet(uint256 index) external view returns (address);
  function numberValidatorsInCurrentSet() external view returns (uint256);
  function owner() external view returns (address);
}

// ============================================================
// FILE: contracts/governance/interfaces/IEpochRewards.sol
// ============================================================

// SPDX-License-Identifier: LGPL-3.0-only
pragma solidity >=0.5.13 <0.9.0;

interface IEpochRewards {
  function updateTargetVotingYield() external;
  function calculateTargetEpochRewards() external view returns (uint256, uint256, uint256, uint256);
  function getTargetVotingYieldParameters() external view returns (uint256, uint256, uint256);
  function getRewardsMultiplierParameters() external view returns (uint256, uint256, uint256);
  function getCommunityRewardFraction() external view returns (uint256);
  function getCarbonOffsettingFraction() external view returns (uint256);
  function getTargetVotingGoldFraction() external view returns (uint256);
  function getRewardsMultiplier() external view returns (uint256);
  function carbonOffsettingPartner() external view returns (address);
}

// ============================================================
// FILE: contracts/governance/interfaces/IGovernance.sol
// ============================================================

// SPDX-License-Identifier: LGPL-3.0-only
pragma solidity >=0.5.13 <0.9.0;

interface IGovernance {
  function removeVotesWhenRevokingDelegatedVotes(
    address account,
    uint256 maxAmountAllowed
  ) external;
  function votePartially(
    uint256 proposalId,
    uint256 index,
    uint256 yesVotes,
    uint256 noVotes,
    uint256 abstainVotes
  ) external returns (bool);

  function setConstitution(address destination, bytes4 functionId, uint256 threshold) external;

  function isVoting(address) external view returns (bool);
  function getAmountOfGoldUsedForVoting(address account) external view returns (uint256);

  function getProposal(
    uint256 proposalId
  ) external view returns (address, uint256, uint256, uint256, string memory, uint256, bool);

  function getReferendumStageDuration() external view returns (uint256);
}

// ============================================================
// FILE: contracts/governance/interfaces/ILockedCelo.sol
// ============================================================

// SPDX-License-Identifier: LGPL-3.0-only
pragma solidity >=0.5.13 <0.9.0;

interface ILockedCelo {
  function lock() external payable;
  function incrementNonvotingAccountBalance(address, uint256) external;
  function decrementNonvotingAccountBalance(address, uint256) external;

  function unlock(uint256) external;
  function relock(uint256, uint256) external;
  function withdraw(uint256) external;
  function slash(
    address account,
    uint256 penalty,
    address reporter,
    uint256 reward,
    address[] calldata lessers,
    address[] calldata greaters,
    uint256[] calldata indices
  ) external;
  function addSlasher(string calldata slasherIdentifier) external;

  function getAccountNonvotingLockedGold(address account) external view returns (uint256);
  function getAccountTotalLockedCelo(address) external view returns (uint256);
  function getTotalLockedCelo() external view returns (uint256);
  function getPendingWithdrawals(
    address
  ) external view returns (uint256[] memory, uint256[] memory);
  function getPendingWithdrawal(
    address account,
    uint256 index
  ) external view returns (uint256, uint256);
  function getTotalPendingWithdrawals(address) external view returns (uint256);
  function isSlasher(address) external view returns (bool);

  function getAccountTotalDelegatedFraction(address account) external view returns (uint256);

  function getAccountTotalGovernanceVotingPower(address account) external view returns (uint256);
  function unlockingPeriod() external view returns (uint256);
  function getAccountNonvotingLockedCelo(address account) external view returns (uint256);

  function getAccountTotalLockedGold(address account) external view returns (uint256);
}

// ============================================================
// FILE: contracts/governance/interfaces/ILockedGold.sol
// ============================================================

// SPDX-License-Identifier: LGPL-3.0-only
pragma solidity >=0.5.13 <0.9.0;

interface ILockedGold {
  function lock() external payable;
  function incrementNonvotingAccountBalance(address, uint256) external;
  function decrementNonvotingAccountBalance(address, uint256) external;

  function unlock(uint256) external;
  function relock(uint256, uint256) external;
  function withdraw(uint256) external;
  function slash(
    address account,
    uint256 penalty,
    address reporter,
    uint256 reward,
    address[] calldata lessers,
    address[] calldata greaters,
    uint256[] calldata indices
  ) external;
  function addSlasher(string calldata slasherIdentifier) external;

  function getAccountTotalLockedGold(address) external view returns (uint256);
  function getTotalLockedGold() external view returns (uint256);
  function getPendingWithdrawals(
    address
  ) external view returns (uint256[] memory, uint256[] memory);
  function getPendingWithdrawal(
    address account,
    uint256 index
  ) external view returns (uint256, uint256);
  function getTotalPendingWithdrawals(address) external view returns (uint256);
  function isSlasher(address) external view returns (bool);

  function getAccountTotalDelegatedFraction(address account) external view returns (uint256);

  function getAccountTotalGovernanceVotingPower(address account) external view returns (uint256);
  function unlockingPeriod() external view returns (uint256);
  function getAccountNonvotingLockedGold(address account) external view returns (uint256);
}

// ============================================================
// FILE: contracts/governance/interfaces/IValidators.sol
// ============================================================

// SPDX-License-Identifier: LGPL-3.0-only
pragma solidity >=0.5.13 <0.9.0;

interface IValidators {
  function registerValidator(bytes calldata) external returns (bool);
  function registerValidatorNoBls(bytes calldata ecdsaPublicKey) external returns (bool);
  function deregisterValidator(uint256) external returns (bool);
  function affiliate(address) external returns (bool);
  function deaffiliate() external returns (bool);
  function registerValidatorGroup(uint256) external returns (bool);
  function deregisterValidatorGroup(uint256) external returns (bool);
  function addMember(address) external returns (bool);
  function addFirstMember(address, address, address) external returns (bool);
  function removeMember(address) external returns (bool);
  function reorderMember(address, address, address) external returns (bool);
  function updateCommission() external;
  function setNextCommissionUpdate(uint256) external;
  function resetSlashingMultiplier() external;

  // only owner
  function setCommissionUpdateDelay(uint256) external;
  function setMaxGroupSize(uint256) external returns (bool);
  function setMembershipHistoryLength(uint256) external returns (bool);
  function setGroupLockedGoldRequirements(uint256, uint256) external returns (bool);
  function setValidatorLockedGoldRequirements(uint256, uint256) external returns (bool);
  function setSlashingMultiplierResetPeriod(uint256) external;

  // only registered contract
  function updateEcdsaPublicKey(address, address, bytes calldata) external returns (bool);
  function mintStableToEpochManager(uint256 amount) external;

  // only slasher
  function forceDeaffiliateIfValidator(address) external;
  function halveSlashingMultiplier(address) external;

  // view functions
  function maxGroupSize() external view returns (uint256);
  function getCommissionUpdateDelay() external view returns (uint256);
  function getMembershipHistory(
    address
  ) external view returns (uint256[] memory, address[] memory, uint256, uint256);
  function getAccountLockedGoldRequirement(address) external view returns (uint256);
  function meetsAccountLockedGoldRequirements(address) external view returns (bool);
  function getValidator(
    address account
  ) external view returns (bytes memory, bytes memory, address, uint256, address);
  function getValidatorsGroup(address account) external view returns (address affiliation);
  function getValidatorGroup(
    address
  )
    external
    view
    returns (address[] memory, uint256, uint256, uint256, uint256[] memory, uint256, uint256);
  function getGroupNumMembers(address) external view returns (uint256);
  function getTopGroupValidators(address, uint256) external view returns (address[] memory);
  function getTopGroupValidatorsAccounts(address, uint256) external view returns (address[] memory);
  function getGroupsNumMembers(
    address[] calldata accounts
  ) external view returns (uint256[] memory);
  function getNumRegisteredValidators() external view returns (uint256);
  function groupMembershipInEpoch(address, uint256, uint256) external view returns (address);

  function getValidatorLockedGoldRequirements() external view returns (uint256, uint256);
  function getGroupLockedGoldRequirements() external view returns (uint256, uint256);
  function getRegisteredValidators() external view returns (address[] memory);
  function getRegisteredValidatorGroups() external view returns (address[] memory);
  function isValidatorGroup(address) external view returns (bool);
  function isValidator(address) external view returns (bool);
  function getValidatorGroupSlashingMultiplier(address) external view returns (uint256);
  function getMembershipInLastEpoch(address) external view returns (address);
  function getMembershipInLastEpochFromSigner(address) external view returns (address);
  function computeEpochReward(
    address account,
    uint256 score,
    uint256 maxPayment
  ) external view returns (uint256);
  function getMembershipHistoryLength() external view returns (uint256);
}

// ============================================================
// FILE: contracts/identity/interfaces/IAttestations.sol
// ============================================================

// SPDX-License-Identifier: LGPL-3.0-only
pragma solidity >=0.5.13 <0.9.0;

interface IAttestations {
  function revoke(bytes32, uint256) external;
  function withdraw(address) external;

  // only owner
  function setAttestationRequestFee(address, uint256) external;
  function setAttestationExpiryBlocks(uint256) external;
  function setSelectIssuersWaitBlocks(uint256) external;
  function setMaxAttestations(uint256) external;

  // view functions
  function getUnselectedRequest(bytes32, address) external view returns (uint32, uint32, address);
  function getAttestationIssuers(bytes32, address) external view returns (address[] memory);
  function getAttestationStats(bytes32, address) external view returns (uint32, uint32);
  function batchGetAttestationStats(
    bytes32[] calldata
  ) external view returns (uint256[] memory, address[] memory, uint64[] memory, uint64[] memory);
  function getAttestationState(
    bytes32,
    address,
    address
  ) external view returns (uint8, uint32, address);
  function getCompletableAttestations(
    bytes32,
    address
  ) external view returns (uint32[] memory, address[] memory, uint256[] memory, bytes memory);
  function getAttestationRequestFee(address) external view returns (uint256);
  function getMaxAttestations() external view returns (uint256);
  function validateAttestationCode(
    bytes32,
    address,
    uint8,
    bytes32,
    bytes32
  ) external view returns (address);
  function lookupAccountsForIdentifier(bytes32) external view returns (address[] memory);
  function requireNAttestationsRequested(bytes32, address, uint32) external view;
}

// ============================================================
// FILE: contracts/identity/interfaces/IRandom.sol
// ============================================================

// SPDX-License-Identifier: LGPL-3.0-only
pragma solidity >=0.5.13 <0.9.0;

interface IRandom {
  function revealAndCommit(bytes32, bytes32, address) external;
  function randomnessBlockRetentionWindow() external view returns (uint256);
  function random() external view returns (bytes32);
  function getBlockRandomness(uint256) external view returns (bytes32);
}

// ============================================================
// FILE: contracts/stability/interfaces/ISortedOracles.sol
// ============================================================

// SPDX-License-Identifier: LGPL-3.0-only
pragma solidity >=0.5.13 <0.9.0;

interface ISortedOracles {
  function addOracle(address, address) external;
  function removeOracle(address, address, uint256) external;
  function report(address, uint256, address, address) external;
  function removeExpiredReports(address, uint256) external;
  function isOldestReportExpired(address token) external view returns (bool, address);
  function numRates(address) external view returns (uint256);
  function medianRate(address) external view returns (uint256, uint256);
  function numTimestamps(address) external view returns (uint256);
  function medianTimestamp(address) external view returns (uint256);
}

// ============================================================
// FILE: lib/mento-core/contracts/interfaces/IExchange.sol
// ============================================================

pragma solidity ^0.5.13;

interface IExchange {
    function buy(
        uint256,
        uint256,
        bool
    ) external returns (uint256);

    function sell(
        uint256,
        uint256,
        bool
    ) external returns (uint256);

    function exchange(
        uint256,
        uint256,
        bool
    ) external returns (uint256);

    function setUpdateFrequency(uint256) external;

    function getBuyTokenAmount(uint256, bool) external view returns (uint256);

    function getSellTokenAmount(uint256, bool) external view returns (uint256);

    function getBuyAndSellBuckets(bool) external view returns (uint256, uint256);
}

// ============================================================
// FILE: lib/mento-core/contracts/interfaces/IReserve.sol
// ============================================================

pragma solidity ^0.5.13;

interface IReserve {
    function setTobinTaxStalenessThreshold(uint256) external;

    function addToken(address) external returns (bool);

    function removeToken(address, uint256) external returns (bool);

    function transferGold(address payable, uint256) external returns (bool);

    function transferExchangeGold(address payable, uint256) external returns (bool);

    function getReserveGoldBalance() external view returns (uint256);

    function getUnfrozenReserveGoldBalance() external view returns (uint256);

    function getOrComputeTobinTax() external returns (uint256, uint256);

    function getTokens() external view returns (address[] memory);

    function getReserveRatio() external view returns (uint256);

    function addExchangeSpender(address) external;

    function removeExchangeSpender(address, uint256) external;

    function addSpender(address) external;

    function removeSpender(address) external;
}

// ============================================================
// FILE: lib/mento-core/contracts/interfaces/IStableToken.sol
// ============================================================

pragma solidity ^0.5.13;

/**
 * @title This interface describes the functions specific to Celo Stable Tokens, and in the
 * absence of interface inheritance is intended as a companion to IERC20.sol and ICeloToken.sol.
 */
interface IStableToken {
    function mint(address, uint256) external returns (bool);

    function burn(uint256) external returns (bool);

    function setInflationParameters(uint256, uint256) external;

    function valueToUnits(uint256) external view returns (uint256);

    function unitsToValue(uint256) external view returns (uint256);

    function getInflationParameters()
        external
        view
        returns (
            uint256,
            uint256,
            uint256,
            uint256
        );

    // NOTE: duplicated with IERC20.sol, remove once interface inheritance is supported.
    function balanceOf(address) external view returns (uint256);
}

// ============================================================
// FILE: lib/openzeppelin-contracts/contracts/GSN/Context.sol
// ============================================================

pragma solidity ^0.5.0;

/*
 * @dev Provides information about the current execution context, including the
 * sender of the transaction and its data. While these are generally available
 * via msg.sender and msg.data, they should not be accessed in such a direct
 * manner, since when dealing with GSN meta-transactions the account sending and
 * paying for execution may not be the actual sender (as far as an application
 * is concerned).
 *
 * This contract is only required for intermediate, library-like contracts.
 */
contract Context {
    // Empty internal constructor, to prevent people from mistakenly deploying
    // an instance of this contract, which should be used via inheritance.
    constructor () internal { }
    // solhint-disable-previous-line no-empty-blocks

    function _msgSender() internal view returns (address payable) {
        return msg.sender;
    }

    function _msgData() internal view returns (bytes memory) {
        this; // silence state mutability warning without generating bytecode - see https://github.com/ethereum/solidity/issues/2691
        return msg.data;
    }
}

// ============================================================
// FILE: lib/openzeppelin-contracts/contracts/math/SafeMath.sol
// ============================================================

pragma solidity ^0.5.0;

/**
 * @dev Wrappers over Solidity's arithmetic operations with added overflow
 * checks.
 *
 * Arithmetic operations in Solidity wrap on overflow. This can easily result
 * in bugs, because programmers usually assume that an overflow raises an
 * error, which is the standard behavior in high level programming languages.
 * `SafeMath` restores this intuition by reverting the transaction when an
 * operation overflows.
 *
 * Using this library instead of the unchecked operations eliminates an entire
 * class of bugs, so it's recommended to use it always.
 */
library SafeMath {
    /**
     * @dev Returns the addition of two unsigned integers, reverting on
     * overflow.
     *
     * Counterpart to Solidity's `+` operator.
     *
     * Requirements:
     * - Addition cannot overflow.
     */
    function add(uint256 a, uint256 b) internal pure returns (uint256) {
        uint256 c = a + b;
        require(c >= a, "SafeMath: addition overflow");

        return c;
    }

    /**
     * @dev Returns the subtraction of two unsigned integers, reverting on
     * overflow (when the result is negative).
     *
     * Counterpart to Solidity's `-` operator.
     *
     * Requirements:
     * - Subtraction cannot overflow.
     */
    function sub(uint256 a, uint256 b) internal pure returns (uint256) {
        return sub(a, b, "SafeMath: subtraction overflow");
    }

    /**
     * @dev Returns the subtraction of two unsigned integers, reverting with custom message on
     * overflow (when the result is negative).
     *
     * Counterpart to Solidity's `-` operator.
     *
     * Requirements:
     * - Subtraction cannot overflow.
     *
     * _Available since v2.4.0._
     */
    function sub(uint256 a, uint256 b, string memory errorMessage) internal pure returns (uint256) {
        require(b <= a, errorMessage);
        uint256 c = a - b;

        return c;
    }

    /**
     * @dev Returns the multiplication of two unsigned integers, reverting on
     * overflow.
     *
     * Counterpart to Solidity's `*` operator.
     *
     * Requirements:
     * - Multiplication cannot overflow.
     */
    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
        // Gas optimization: this is cheaper than requiring 'a' not being zero, but the
        // benefit is lost if 'b' is also tested.
        // See: https://github.com/OpenZeppelin/openzeppelin-contracts/pull/522
        if (a == 0) {
            return 0;
        }

        uint256 c = a * b;
        require(c / a == b, "SafeMath: multiplication overflow");

        return c;
    }

    /**
     * @dev Returns the integer division of two unsigned integers. Reverts on
     * division by zero. The result is rounded towards zero.
     *
     * Counterpart to Solidity's `/` operator. Note: this function uses a
     * `revert` opcode (which leaves remaining gas untouched) while Solidity
     * uses an invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     * - The divisor cannot be zero.
     */
    function div(uint256 a, uint256 b) internal pure returns (uint256) {
        return div(a, b, "SafeMath: division by zero");
    }

    /**
     * @dev Returns the integer division of two unsigned integers. Reverts with custom message on
     * division by zero. The result is rounded towards zero.
     *
     * Counterpart to Solidity's `/` operator. Note: this function uses a
     * `revert` opcode (which leaves remaining gas untouched) while Solidity
     * uses an invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     * - The divisor cannot be zero.
     *
     * _Available since v2.4.0._
     */
    function div(uint256 a, uint256 b, string memory errorMessage) internal pure returns (uint256) {
        // Solidity only automatically asserts when dividing by 0
        require(b > 0, errorMessage);
        uint256 c = a / b;
        // assert(a == b * c + a % b); // There is no case in which this doesn't hold

        return c;
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers. (unsigned integer modulo),
     * Reverts when dividing by zero.
     *
     * Counterpart to Solidity's `%` operator. This function uses a `revert`
     * opcode (which leaves remaining gas untouched) while Solidity uses an
     * invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     * - The divisor cannot be zero.
     */
    function mod(uint256 a, uint256 b) internal pure returns (uint256) {
        return mod(a, b, "SafeMath: modulo by zero");
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers. (unsigned integer modulo),
     * Reverts with custom message when dividing by zero.
     *
     * Counterpart to Solidity's `%` operator. This function uses a `revert`
     * opcode (which leaves remaining gas untouched) while Solidity uses an
     * invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     * - The divisor cannot be zero.
     *
     * _Available since v2.4.0._
     */
    function mod(uint256 a, uint256 b, string memory errorMessage) internal pure returns (uint256) {
        require(b != 0, errorMessage);
        return a % b;
    }
}

// ============================================================
// FILE: lib/openzeppelin-contracts/contracts/ownership/Ownable.sol
// ============================================================

pragma solidity ^0.5.0;

import "../GSN/Context.sol";
/**
 * @dev Contract module which provides a basic access control mechanism, where
 * there is an account (an owner) that can be granted exclusive access to
 * specific functions.
 *
 * This module is used through inheritance. It will make available the modifier
 * `onlyOwner`, which can be applied to your functions to restrict their use to
 * the owner.
 */
contract Ownable is Context {
    address private _owner;

    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

    /**
     * @dev Initializes the contract setting the deployer as the initial owner.
     */
    constructor () internal {
        address msgSender = _msgSender();
        _owner = msgSender;
        emit OwnershipTransferred(address(0), msgSender);
    }

    /**
     * @dev Returns the address of the current owner.
     */
    function owner() public view returns (address) {
        return _owner;
    }

    /**
     * @dev Throws if called by any account other than the owner.
     */
    modifier onlyOwner() {
        require(isOwner(), "Ownable: caller is not the owner");
        _;
    }

    /**
     * @dev Returns true if the caller is the current owner.
     */
    function isOwner() public view returns (bool) {
        return _msgSender() == _owner;
    }

    /**
     * @dev Leaves the contract without owner. It will not be possible to call
     * `onlyOwner` functions anymore. Can only be called by the current owner.
     *
     * NOTE: Renouncing ownership will leave the contract without an owner,
     * thereby removing any functionality that is only available to the owner.
     */
    function renounceOwnership() public onlyOwner {
        emit OwnershipTransferred(_owner, address(0));
        _owner = address(0);
    }

    /**
     * @dev Transfers ownership of the contract to a new account (`newOwner`).
     * Can only be called by the current owner.
     */
    function transferOwnership(address newOwner) public onlyOwner {
        _transferOwnership(newOwner);
    }

    /**
     * @dev Transfers ownership of the contract to a new account (`newOwner`).
     */
    function _transferOwnership(address newOwner) internal {
        require(newOwner != address(0), "Ownable: new owner is the zero address");
        emit OwnershipTransferred(_owner, newOwner);
        _owner = newOwner;
    }
}

// ============================================================
// FILE: lib/openzeppelin-contracts/contracts/token/ERC20/IERC20.sol
// ============================================================

pragma solidity ^0.5.0;

/**
 * @dev Interface of the ERC20 standard as defined in the EIP. Does not include
 * the optional functions; to access them see {ERC20Detailed}.
 */
interface IERC20 {
    /**
     * @dev Returns the amount of tokens in existence.
     */
    function totalSupply() external view returns (uint256);

    /**
     * @dev Returns the amount of tokens owned by `account`.
     */
    function balanceOf(address account) external view returns (uint256);

    /**
     * @dev Moves `amount` tokens from the caller's account to `recipient`.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transfer(address recipient, uint256 amount) external returns (bool);

    /**
     * @dev Returns the remaining number of tokens that `spender` will be
     * allowed to spend on behalf of `owner` through {transferFrom}. This is
     * zero by default.
     *
     * This value changes when {approve} or {transferFrom} are called.
     */
    function allowance(address owner, address spender) external view returns (uint256);

    /**
     * @dev Sets `amount` as the allowance of `spender` over the caller's tokens.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * IMPORTANT: Beware that changing an allowance with this method brings the risk
     * that someone may use both the old and the new allowance by unfortunate
     * transaction ordering. One possible solution to mitigate this race
     * condition is to first reduce the spender's allowance to 0 and set the
     * desired value afterwards:
     * https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729
     *
     * Emits an {Approval} event.
     */
    function approve(address spender, uint256 amount) external returns (bool);

    /**
     * @dev Moves `amount` tokens from `sender` to `recipient` using the
     * allowance mechanism. `amount` is then deducted from the caller's
     * allowance.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transferFrom(address sender, address recipient, uint256 amount) external returns (bool);

    /**
     * @dev Emitted when `value` tokens are moved from one account (`from`) to
     * another (`to`).
     *
     * Note that `value` may be zero.
     */
    event Transfer(address indexed from, address indexed to, uint256 value);

    /**
     * @dev Emitted when the allowance of a `spender` for an `owner` is set by
     * a call to {approve}. `value` is the new allowance.
     */
    event Approval(address indexed owner, address indexed spender, uint256 value);
}
