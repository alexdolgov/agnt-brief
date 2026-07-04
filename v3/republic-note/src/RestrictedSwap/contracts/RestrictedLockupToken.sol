// SPDX-License-Identifier: MIT

pragma solidity 0.8.17;

import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Snapshot.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "@openzeppelin/contracts/utils/introspection/ERC165.sol";

import "./interfaces/ITransferRules.sol";
import "./EasyAccessControl.sol";
import "./interfaces/IERC1404.sol";

/**
  @title A smart contract for unlocking tokens based on a release schedule
  @author By CoMakery, Inc., Upside, Republic
  @dev When deployed the contract is as a proxy for a single token that it creates release schedules for
      it implements the ERC20 token interface to integrate with wallets but it is not an independent token.
      The token must implement a burn function.
*/
contract RestrictedLockupToken is
    ERC20Snapshot,
    EasyAccessControl,
    ReentrancyGuard,
    ERC165
{
    using SafeERC20 for IERC20;
    using Counters for Counters.Counter;

    struct ReleaseSchedule {
        uint256 releaseCount;
        uint256 delayUntilFirstReleaseInSeconds;
        uint256 initialReleasePortionInBips;
        uint256 periodBetweenReleasesInSeconds;
    }

    struct Timelock {
        address funder;
        uint256 scheduleId;
        uint256 commencementTimestamp;
        uint256 tokensTransferred;
        uint256 totalAmount;
        address[] cancelableBy; // not cancelable unless set at the time of funding
    }

    ReleaseSchedule[] public releaseSchedules;
    Counters.Counter private _holderIds; // starts at 1 for 1st holder

    ITransferRules public transferRules;

    mapping(address => Timelock[]) public timelocks; // wallet address => timelock details
    mapping(uint256 => int256) public holderGroupCount; // groupId => current holders count
    mapping(uint256 => int256) public holderGroupMax; // groupId => max holders
    mapping(address => bool) private _frozenAddresses; // address => isFrozen
    mapping(address => uint256) private _holderIdByAddress; // wallet address => holderId
    mapping(uint256 => address[]) private _holderAddressesByHolderId; // holderId => wallet addresses
    mapping(address => uint256) private _transferGroups; // wallet address => groupId, restricted groups like Reg D Accredited US, Reg CF Unaccredited US and Reg S Foreign
    mapping(uint256 => mapping(uint256 => uint256))
        private _allowGroupTransfers; // approve transfers between groups: groupFromId => groupToId => TimeLockUntil

    uint256 public immutable minTimelockAmount;
    uint256 public immutable maxReleaseDelay;
    uint256 public immutable maxTotalSupply;
    int256 public holderMax = 2 ** 255 - 1; // Maximum uint256 value - walletsMax
    int256 public holderCount; // walletsCount
    uint256 public minWalletBalance; // minimum balance for automatic group leaving
    uint8 private immutable _decimals;
    uint256 private constant BIPS_PRECISION = 10_000;
    uint256 private constant MAX_TIMELOCKS = 10_000;

    uint8 constant MAX_CANCELABLE_BY = 10; // maximum number of addresses that can cancel a timelock

    bool public isPaused;

    bytes4 public immutable _ITRANSFER_RULES_INTERFACE_ID;

    /// @notice This event is emitted when a new release schedule is created
    /// @param from The address of the schedule creator
    /// @param scheduleId The id of the new release schedule
    event ScheduleCreated(address indexed from, uint256 indexed scheduleId);

    /// @notice This event is emitted when a schedule is funded
    /// @param from The address of the funder
    /// @param to The address of the recipient of the tokens when schedule is released
    /// @param scheduleId The id of the release schedule
    /// @param amount The amount of tokens to be released
    /// @param commencementTimestamp The timestamp when the release schedule starts
    /// @param timelockId The id of the timelock
    /// @param cancelableBy The addresses that can cancel the timelock
    event ScheduleFunded(
        address indexed from,
        address indexed to,
        uint256 indexed scheduleId,
        uint256 amount,
        uint256 commencementTimestamp,
        uint256 timelockId,
        address[] cancelableBy
    );

    /// @notice This event is emitted when a timelock is canceled
    /// @param canceledBy The address of the canceller
    /// @param target The address of the recipient of the unlocked tokens
    /// @param timelockIndex The index of the timelock in the timelocks array
    /// @param reclaimTokenTo The address of the recipient of the locked tokens
    /// @param canceledAmount The total amount of canceled tokens
    /// @param paidAmount The amount of paid tokens to target
    event TimelockCanceled(
        address indexed canceledBy,
        address indexed target,
        uint256 indexed timelockIndex,
        address reclaimTokenTo,
        uint256 canceledAmount,
        uint256 paidAmount
    );

    /// @notice This event is emitted when a address is frozen or unfrozen
    /// @param admin The address of the admin
    /// @param addr The (un)frozen address
    /// @param status true - frozen, false - unfrozen
    event AddressFrozen(
        address indexed admin,
        address indexed addr,
        bool indexed status
    );

    /// @notice This event is emitted when a contract is paused or unpaused
    /// @param admin The address of the admin
    /// @param status true - paused, false - unpaused
    event Pause(address indexed admin, bool indexed status);

    /// @notice This event is emitted when a transfer group is updated
    /// @param admin The address of the admin
    /// @param oldRules The old transfer rules contract address
    /// @param newRules The new transfer rules contract address
    event Upgrade(
        address indexed admin,
        address indexed oldRules,
        address indexed newRules
    );

    /// @notice This event is emitted when a address transfer group is updated
    /// @param admin The address of the admin
    /// @param addr The address of the wallet
    /// @param value The new address's transfer group id
    event AddressTransferGroup(
        address indexed admin,
        address indexed addr,
        uint256 indexed value
    );

    /// @notice This event is emitted when an allowed transfer between groups after lockedUntil
    /// @param admin The address of the admin
    /// @param fromGroup The id of the group to transfer from
    /// @param toGroup The id of the group to transfer to
    /// @param lockedUntil The timestamp after which the transfer is allowed
    event AllowGroupTransfer(
        address indexed admin,
        uint256 indexed fromGroup,
        uint256 indexed toGroup,
        uint256 lockedUntil
    );

    /// @notice This event is emitted when a force transfer between wallets is executed by admin
    /// @param admin The address of the admin
    /// @param from The address of the sender
    /// @param to The address of the recipient
    /// @param amount The amount of tokens to transfer
    event ForceTransferBetween(
        address indexed admin,
        address indexed from,
        address indexed to,
        uint256 amount
    );

    /// @notice This event is emitted when an append new wallet address to existing holder
    /// @param addr The address of the wallet
    /// @param holderId The id of the holder
    event AppendHolderAddress(address indexed addr, uint256 indexed holderId);

    /// @notice This event is emitted when an updated holder max limit
    /// @param admin The address of the admin
    /// @param holderMax The new holder max limit
    event SetHolderMax(address indexed admin, int256 holderMax);

    /// @notice This event is emitted when an updated group holder max limit
    /// @param admin The address of the admin
    /// @param groupId The id of the group
    /// @param groupHolderMax The new group holder max limit
    event SetHolderGroupMax(
        address indexed admin,
        uint256 indexed groupId,
        int256 groupHolderMax
    );

    /// @notice This event is emitted when a holder is removed
    /// @param admin The address of the admin
    /// @param holderId The id of the holder
    event RemoveHolder(address indexed admin, uint256 indexed holderId);

    /// @notice This event is emitted when a holder is created
    /// @param holderId The id of the holder
    /// @param addr The primary address of the holder
    event HolderCreated(uint256 indexed holderId, address indexed addr);

    /// @notice This event is emitted when a minimum wallet balance is updated
    /// @param admin The address of the admin
    /// @param newBalance The new minimum wallet balance to be in a group
    event MinWalletBalanceUpdated(address indexed admin, uint256 newBalance);

    modifier onlyWalletsAdminOrTransferAdmin() {
        require(
            (hasRole(msg.sender, WALLETS_ADMIN_ROLE) ||
                hasRole(msg.sender, TRANSFER_ADMIN_ROLE)),
            "Does not have wallets admin or transfer admin role"
        );
        _;
    }

    modifier onlyExistingAddress(address addr) {
        require(addressHasHolder(addr), "Holder's address does not exist");
        _;
    }

    modifier onlyExistingHolder(uint256 holderId) {
        require(holderExists(holderId), "Holder does not exist");
        _;
    }

    /**
     * @dev Configure deployment for a specific token with release schedule security parameters
     * @dev The symbol should end with " Unlock" & be less than 11 characters for MetaMask "custom token" compatibility
     */
    constructor(
        address transferRules_,
        address contractAdmin_,
        address tokenReserveAdmin_,
        string memory symbol_,
        string memory name_,
        uint8 decimals_,
        uint256 totalSupply_,
        uint256 maxTotalSupply_,
        uint256 minTimelockAmount_,
        uint256 maxReleaseDelay_
    ) ERC20(name_, symbol_) ERC20Snapshot() EasyAccessControl(contractAdmin_) {
        // Restricted Token
        require(bytes(name_).length > 0, "Name cannot be empty");
        require(bytes(symbol_).length > 0, "Symbol cannot be empty");
        require(
            totalSupply_ <= maxTotalSupply_,
            "Total supply cannot be greater than max total supply"
        );
        require(
            transferRules_ != address(0),
            "Transfer rules address cannot be 0x0"
        );
        require(
            tokenReserveAdmin_ != address(0),
            "Token reserve admin address cannot be 0x0"
        );

        // Transfer rules can be swapped out for a new contract inheriting from the ITransferRules interface
        transferRules = ITransferRules(transferRules_);
        _ITRANSFER_RULES_INTERFACE_ID = type(ITransferRules).interfaceId;

        maxTotalSupply = maxTotalSupply_;
        _decimals = decimals_;

        minWalletBalance = 10 ** decimals_; // == 1 whole unit

        setupRole(tokenReserveAdmin_, RESERVE_ADMIN_ROLE);
        _mint(tokenReserveAdmin_, totalSupply_);

        // Token Lockup
        require(minTimelockAmount_ > 0, "Min timelock amount > 0");
        minTimelockAmount = minTimelockAmount_;
        maxReleaseDelay = maxReleaseDelay_;
    }

    /**
     * Support of ERC165
     * @dev See https://eips.ethereum.org/EIPS/eip-165
     * @param interfaceId The interface identifier, as specified in ERC-165
     */
    function supportsInterface(
        bytes4 interfaceId
    ) public view override(ERC165) returns (bool) {
        return
            interfaceId == type(IERC1404).interfaceId ||
            super.supportsInterface(interfaceId);
    }

    /**
     * @dev update minWalletBalance; onlyTransferAdmin
     * @param minWalletBalance_ The min allowable balance across all groups
     */
    function setMinWalletBalance(
        uint256 minWalletBalance_
    ) external onlyTransferAdmin {
        minWalletBalance = minWalletBalance_;
        emit MinWalletBalanceUpdated(msg.sender, minWalletBalance_);
    }

    /**
     * @notice Create a release schedule template that can be used to generate many token timelocks
     * @param releaseCount Total number of releases including any initial "cliff'
     * @param delayUntilFirstReleaseInSeconds "cliff" or 0 for immediate release
     * @param initialReleasePortionInBips Portion to release in 100ths of 1% (10000 BIPS per 100%)
     * @param periodBetweenReleasesInSeconds After the delay and initial release
     * the remaining tokens will be distributed evenly across the remaining number of releases (releaseCount - 1)
     * @return unlockScheduleId The id used to refer to the release schedule at the time of funding the schedule
     */
    function createReleaseSchedule(
        uint256 releaseCount,
        uint256 delayUntilFirstReleaseInSeconds,
        uint256 initialReleasePortionInBips,
        uint256 periodBetweenReleasesInSeconds
    ) external anyAdmin returns (uint256 unlockScheduleId) {
        require(
            delayUntilFirstReleaseInSeconds <= maxReleaseDelay,
            "First token release delay time > max allowable"
        );
        require(releaseCount >= 1, "Must have >= 1 release");
        require(
            initialReleasePortionInBips <= BIPS_PRECISION,
            "Initial release portion > BIPS_PRECISION (100%)"
        );

        if (releaseCount > 1) {
            require(
                periodBetweenReleasesInSeconds > 0,
                "Release period must be > 0"
            );
        } else {
            require(
                initialReleasePortionInBips == BIPS_PRECISION,
                "Initial release portion must = BIPS_PRECISION (100%) for single release"
            );
            periodBetweenReleasesInSeconds = 0;
        }

        releaseSchedules.push(
            ReleaseSchedule(
                releaseCount,
                delayUntilFirstReleaseInSeconds,
                initialReleasePortionInBips,
                periodBetweenReleasesInSeconds
            )
        );

        unlockScheduleId = releaseSchedules.length - 1;
        emit ScheduleCreated(msg.sender, unlockScheduleId);

        return unlockScheduleId;
    }

    /**
     * @dev batchTransfer tokens
     */
    function batchTransfer(
        address[] calldata recipients,
        uint256[] calldata amounts
    ) external returns (bool) {
        uint256 _recipientsLength = recipients.length;
        require(
            _recipientsLength == amounts.length,
            "Recipient & amount arrays must be the same length"
        );
        for (uint256 i; i < _recipientsLength; ++i) {
            address _recipient = recipients[i];
            require(_recipient != address(0), "Cannot send to 0 address");
            transfer(_recipient, amounts[i]);
        }

        return true;
    }

    /**
     * @dev Allows the contract admin to upgrade the transfer rules.
     * The upgraded transfer rules must implement the ITransferRules interface which conforms to the ERC-1404 token standard.
     * @param newTransferRules The address of the deployed TransferRules contract.
     */
    function upgradeTransferRules(
        ITransferRules newTransferRules
    ) external onlyContractAdmin {
        address _newTransferRulesAddress = address(newTransferRules);
        require(
            _newTransferRulesAddress != address(0),
            "Address cannot be 0x0"
        );
        require(
            IERC165(_newTransferRulesAddress).supportsInterface(
                _ITRANSFER_RULES_INTERFACE_ID
            ),
            "New transfer rules contract does not implement ITransferRules"
        );
        address oldRules = address(transferRules);

        transferRules = newTransferRules;
        emit Upgrade(msg.sender, oldRules, _newTransferRulesAddress);
    }

    /**
     *  @notice Batch version of fund cancelable release schedule
     *  @param to An array of recipient address that will have tokens unlocked on a release schedule
     *  @param amounts An array of amount of tokens to transfer in base units (the smallest unit without the decimal point)
     *  @param commencementTimestamps An array of the time the release schedule will start
     *  @param scheduleIds An array of the id of the release schedule that will be used to release the tokens
     *  @param cancelableBy An array of cancelables
     *  @return success Always returns true on completion so that a function calling it can revert if the required call did not succeed
     */
    function batchFundReleaseSchedule(
        address[] calldata to,
        uint256[] calldata amounts,
        uint256[] calldata commencementTimestamps,
        uint256[] calldata scheduleIds,
        address[] calldata cancelableBy
    ) external anyAdmin returns (bool success) {
        require(
            to.length == amounts.length &&
                to.length == commencementTimestamps.length &&
                to.length == scheduleIds.length,
            "Mismatched array length"
        );

        for (uint256 i; i < to.length; ++i) {
            require(
                fundReleaseSchedule(
                    to[i],
                    amounts[i],
                    commencementTimestamps[i],
                    scheduleIds[i],
                    cancelableBy
                ),
                "Can not release schedule"
            );
        }

        return true;
    }

    /**
     * @dev Transfer tokens from one address to another with ignoring of transfer rules
     * With reserve admin access only
     * @param sender sender address
     * @param recipient recipient address
     * @param amount amount of tokens
     */
    function forceTransferBetween(
        address sender,
        address recipient,
        uint256 amount
    ) external onlyReserveAdmin {
        require(sender != recipient, "Sender cannot be recipient");
        require(
            addressHasHolder(recipient),
            "Recipient must be an existing holder"
        );
        require(
            recipient != address(0) && sender != address(0),
            "Address cannot be 0x0"
        );
        require(amount > 0, "Amount must be greater than 0");

        uint256[2] memory values = validateTransfer(sender, amount);

        require(values[0] + values[1] >= amount, "Insufficent tokens");

        emit ForceTransferBetween(msg.sender, sender, recipient, amount);

        if (values[0] > 0) {
            // unlocked tokens
            emit Transfer(sender, address(this), values[0]);
            super._transfer(address(this), recipient, values[0]);
        }

        if (values[1] > 0) {
            // simple tokens transfer
            super._transfer(sender, recipient, values[1]);
        }
    }

    /**
     * @dev A convenience method for updating the transfer group, lock until, and freeze status.
     * @notice This function has a different signature than the Utility Token implementation
     * @param buyerAddr_ The wallet address to set permissions for.
     * @param groupId_ The desired groupId to set for the address.
     * @param freezeStatus_ The frozenAddress status of the address. True means frozen false means not frozen.
     */
    function setAddressPermissions(
        address buyerAddr_,
        uint256 groupId_,
        bool freezeStatus_
    ) external validAddress(buyerAddr_) onlyWalletsAdminOrTransferAdmin {
        setTransferGroup(buyerAddr_, groupId_, true);
        freeze(buyerAddr_, freezeStatus_);
    }

    /**
     * @dev Destroys tokens and removes them from the total supply. Can only be called by an address with a Reserve Admin role.
     * @notice DOES NOT ACTUALLY TRANSFER TOKENS TO 0X0! Merely emits Transfer event and calls _afterTokenTransfer with recipient artificially set to 0x0.
     * @param from_ The address to destroy the tokens from.
     * @param value_ The number of tokens to destroy from the address.
     */
    function burn(
        address from_,
        uint256 value_
    ) external validAddress(from_) onlyReserveAdmin {
        _burn(from_, value_);
    }

    /**
     * @dev Allows the reserve admin to create new tokens in a specified address.
     * The total number of tokens cannot exceed the maxTotalSupply (the "Hard Cap").
     * @param to_ The addres to mint tokens into.
     * @param value_ The number of tokens to mint.
     */
    function mint(
        address to_,
        uint256 value_
    ) external validAddress(to_) onlyReserveAdmin {
        require(
            totalSupply() + value_ <= maxTotalSupply,
            "Cannot mint more than the max total supply"
        );
        _mint(to_, value_);
    }

    /**
     * @dev Sets an allowed transfer from a group to another group beginning at a specific time.
     * There is only one definitive rule per from and to group.
     * @param from The group the transfer is coming from.
     * @param to The group the transfer is going to.
     * @param lockedUntil The unix timestamp that the transfer is locked until. 0 is a special number. 0 means the transfer is not allowed.
     * This is because in the smart contract mapping all pairs are implicitly defined with a default lockedUntil value of 0.
     * But no transfers should be authorized until explicitly allowed. Thus 0 must mean no transfer is allowed.
     */
    function setAllowGroupTransfer(
        uint256 from,
        uint256 to,
        uint256 lockedUntil
    ) external onlyTransferAdmin {
        _allowGroupTransfers[from][to] = lockedUntil;
        emit AllowGroupTransfer(msg.sender, from, to, lockedUntil);
    }

    /**
     * @dev Allows the contract admin to pause transfers.
     * @param isPaused_ true to pause
     */
    function pause(bool isPaused_) external onlyTransferAdmin {
        isPaused = isPaused_;
        emit Pause(msg.sender, isPaused_);
    }

    /**
     * @dev Create new snapshot. onlyContractAdmin access
     * @return uint256 snapshot
     */
    function snapshot() external onlyContractAdmin returns (uint256) {
        return _snapshot();
    }

    /**
     * @notice the total number of schedules that have been created
     * @return count of schedules
     */
    function scheduleCount() external view returns (uint256 count) {
        return releaseSchedules.length;
    }

    /**
     * @dev Checks the status of an address to see if its frozen
     * @param addr The address to check
     * @return status Returns true if the address is frozen and false if its not frozen.
     */
    function getFrozenStatus(address addr) external view returns (bool status) {
        return _frozenAddresses[addr];
    }

    /**
     * @dev Gets the transfer group the address belongs to. The default group is 0.
     * @param addr The address to check.
     * @return groupId The group Id of the address.
     */
    function getTransferGroup(
        address addr
    ) external view returns (uint256 groupId) {
        return _transferGroups[addr];
    }

    /**
     * @dev find all holder balance
     * @param holderId_ id of holder to check
     * @return _balance balance of holder
     */
    function holderBalance(
        uint256 holderId_
    ) external view onlyExistingHolder(holderId_) returns (uint256 _balance) {
        address[] storage addresses = _holderAddressesByHolderId[holderId_];
        uint256 _len = addresses.length;
        for (uint256 i = 0; i < _len; ++i) {
            _balance += balanceOf(addresses[i]);
        }
    }

    /**
     * @dev get allowed transfer time between two addresses
     * @param from The address the transfer is coming from
     * @param to The address the transfer is going to
     * @return timestamp The Unix timestamp of the time the transfer would be allowed. A 0 means never.
     * The format is the number of seconds since the Unix epoch of 00:00:00 UTC on 1 January 1970.
     */
    function getAllowTransferTime(
        address from,
        address to
    ) external view returns (uint256 timestamp) {
        return _allowGroupTransfers[_transferGroups[from]][_transferGroups[to]];
    }

    /**
     * @dev Checks to see when a transfer between two groups would be allowed.
     * @param from Group ID from
     * @param to Group ID to
     * @return timestamp The Unix timestamp of the time the transfer would be allowed. A 0 means never.
     * The format is the number of seconds since the Unix epoch of 00:00:00 UTC on 1 January 1970.
     */
    function getAllowGroupTransferTime(
        uint256 from,
        uint256 to
    ) external view returns (uint256 timestamp) {
        return _allowGroupTransfers[from][to];
    }

    /**
     * @dev Get current snapshot ID
     */
    function getCurrentSnapshotId() external view returns (uint256) {
        return _getCurrentSnapshotId();
    }

    /**
     * @dev Get status of address
     * @param transferRulesAddr_ The address of the new transfer rules contract
     * @return _isValidTransferRules True if the transfer rules contract is valid
     */
    function isValidTransferRules(
        address transferRulesAddr_
    ) external view virtual returns (bool) {
        return
            IERC165(transferRulesAddr_).supportsInterface(
                _ITRANSFER_RULES_INTERFACE_ID
            );
    }

    /**
     * @notice Check the total remaining balance of a timelock including the locked and unlocked portions
     * @param who the address to check
     * @param timelockIndex  Specific timelock belonging to the who address
     * @return total remaining balance of a timelock
     */
    function balanceOfTimelock(
        address who,
        uint256 timelockIndex
    ) external view returns (uint256) {
        Timelock memory timelock = timelockOf(who, timelockIndex);
        if (timelock.totalAmount <= timelock.tokensTransferred) {
            return 0;
        } else {
            return timelock.totalAmount - timelock.tokensTransferred;
        }
    }

    /**
     * @dev find all holder balance within specified group
     * @param holderId_ id of holder to check
     * @param groupId_ transfer group id
     * @return _balance balance of holder
     */
    function holderBalanceByGroupId(
        uint256 holderId_,
        uint256 groupId_
    ) public view onlyExistingHolder(holderId_) returns (uint256 _balance) {
        address[] storage addresses = _holderAddressesByHolderId[holderId_];
        uint256 _len = addresses.length;
        for (uint256 i = 0; i < _len; ++i) {
            address _addr = addresses[i];
            if (_transferGroups[_addr] == groupId_) {
                _balance += balanceOf(_addr);
            }
        }
    }

    /**
    * @notice Fund the programmatic release of tokens to a recipient.
        WARNING: this function IS CANCELABLE by cancelableBy.
        If canceled the tokens that are locked at the time of the cancellation will be returned to the funder
        and unlocked tokens will be transferred to the recipient.
    * @param to recipient address that will have tokens unlocked on a release schedule
    * @param amount of tokens to transfer in base units (the smallest unit without the decimal point)
    * @param commencementTimestamp the time (in unixtime) the release schedule will start
    * @param scheduleId the id of the release schedule that will be used to release the tokens
    * @param cancelableBy array of canceler addresses
    * @return success Always returns true on completion so that a function calling it can revert if the required call did not succeed
    */
    function fundReleaseSchedule(
        address to,
        uint256 amount,
        uint256 commencementTimestamp, // unix timestamp
        uint256 scheduleId,
        address[] memory cancelableBy
    ) public nonReentrant anyAdmin returns (bool success) {
        require(
            cancelableBy.length <= MAX_CANCELABLE_BY,
            "Max 10 cancelableBy addressees"
        );
        require(
            amount + superBalanceOf(to) >= minWalletBalance,
            "Resulting balance < minWalletBalance"
        );

        uint256 timelockId = _fund(
            to,
            amount,
            commencementTimestamp,
            scheduleId,
            msg.sender
        );

        if (cancelableBy.length > 0) {
            timelocks[to][timelockId].cancelableBy = cancelableBy;
        }

        emit ScheduleFunded(
            msg.sender,
            to,
            scheduleId,
            amount,
            commencementTimestamp,
            timelockId,
            cancelableBy
        );
        return true;
    }

    /**
     * @dev create Holder from a given Address
     * @param addr_ address of holder
     * @return _holderId id of holder
     */
    function createHolderFromAddress(
        address addr_
    ) public onlyWalletsAdminOrTransferAdmin returns (uint256 _holderId) {
        _holderId = _createHolderFromAddress(addr_);
    }

    /**
     * @dev Append a new wallet to existing Holder
     * @param addr address of holder
     * @param holderId id of holder
     */
    function appendHolderAddress(
        address addr,
        uint256 holderId
    ) public onlyExistingHolder(holderId) onlyWalletsAdminOrTransferAdmin {
        require(_holderIdByAddress[addr] == 0, "Address already exists");

        uint256 _groupId; // default group is 0

        _holderIdByAddress[addr] = holderId;
        _holderAddressesByHolderId[holderId].push(addr);

        ++holderGroupCount[_groupId];

        emit AppendHolderAddress(addr, holderId);
    }

    /**
     * @dev add a Holder with multiple wallet addresses
     * @param addresses_ array of addresses
     * @return _holderId id of holder
     */
    function addHolderWithAddresses(
        address[] calldata addresses_
    ) external onlyWalletsAdminOrTransferAdmin returns (uint256 _holderId) {
        uint256 _addrLen = addresses_.length;
        require(_addrLen > 0, "Addresses array is empty");

        _holderId = createHolderFromAddress(addresses_[0]);
        // use first entry in array to create Holder with
        for (uint256 i = 1; i < _addrLen; ++i) {
            appendHolderAddress(addresses_[i], _holderId);
        }
    }

    /**
     * @dev set max number of holder addresses
     * @param holderMax_ max number of holder addresses
     */
    function setHolderMax(int256 holderMax_) external onlyTransferAdmin {
        require(
            holderMax_ >= holderCount,
            "Holder max should be >= holder count"
        );
        holderMax = holderMax_;

        emit SetHolderMax(msg.sender, holderMax_);
    }

    /**
     * @dev set max number of holder addresses within given group
     * @param groupId group id
     * @param groupHolderMax max number of holder addresses allowed within given group
     */
    function setHolderGroupMax(
        uint256 groupId,
        int256 groupHolderMax
    ) external onlyTransferAdmin {
        require(groupId > 0, "Can't set holder max for group 0");
        require(
            groupHolderMax >= holderGroupCount[groupId],
            "groupHolderMax must be gte current holderGroupCount"
        );
        holderGroupMax[groupId] = groupHolderMax;

        emit SetHolderGroupMax(msg.sender, groupId, groupHolderMax);
    }

    /**
     * @dev removeHolder from the system
     * @notice Holder could be removed if it has no active timelocks
     * @param holderId holder id
     */
    function removeHolder(
        uint256 holderId
    ) external onlyWalletsAdminOrTransferAdmin onlyExistingHolder(holderId) {
        emit RemoveHolder(msg.sender, holderId);
        address[] storage addresses = _holderAddressesByHolderId[holderId];
        uint256 len = addresses.length;
        for (uint256 i; i < len; ++i) {
            address addr = addresses[i];
            if (hasAnyGroup(addr)) {
                _leaveGroup(addr);
            }
            delete _holderIdByAddress[addr];
            delete _transferGroups[addr];
        }
        delete _holderAddressesByHolderId[holderId];
        --holderCount;
    }

    /**
     * @dev Set the one group that the address belongs to, such as a US Reg CF investor group.
     * @param addr_ The address to set the group for.
     * @param groupId_ The uint256 numeric Id of the group.
     * */
    function setTransferGroup(
        address addr_,
        uint256 groupId_,
        bool ignoreMinWalletBalance
    ) public onlyWalletsAdminOrTransferAdmin validAddress(addr_) {
        // Calculate total and group holders
        if (!addressHasHolder(addr_)) {
            createHolderFromAddress(addr_);
        }
        if (!hasGroup(addr_, groupId_)) {
            _joinGroup(addr_, groupId_, ignoreMinWalletBalance);
        }
    }

    /**
     * @dev get token decimals
     * @return decimals
     */
    function decimals() public view virtual override returns (uint8) {
        return _decimals;
    }

    /**
     * @dev get holder addresses by Id
     * @param holderId_ holder id
     * @return array of addresses
     */
    function getHolderAddresses(
        uint256 holderId_
    ) external view onlyExistingHolder(holderId_) returns (address[] memory) {
        return _holderAddressesByHolderId[holderId_];
    }

    /**
     * @dev getHolderId
     * @param addr_ address of holder
     * @return holder Id from address
     */
    function getHolderId(address addr_) public view returns (uint256) {
        return _holderIdByAddress[addr_];
    }

    /**
     * @dev Check if given address has a group
     * @param addr_ address
     * @return true if address has group
     */
    function hasAnyGroup(address addr_) public view returns (bool) {
        return _transferGroups[addr_] > 0;
    }

    /**
     * @dev safeApprove should only be called when setting an initial allowance,
     * or when resetting it to zero.
     * @param spender spending address to approve
     * @param value amount to approve
     */
    function safeApprove(address spender, uint256 value) external {
        require(
            (value == 0) || (allowance(address(msg.sender), spender) == 0),
            "Cannot approve from non-zero to non-zero allowance"
        );
        approve(spender, value);
    }

    /**
     * @dev check if address has holder
     * @param addr_ address to check
     * @return true if address has holder
     */
    function addressHasHolder(address addr_) public view returns (bool) {
        return _holderIdByAddress[addr_] > 0;
    }

    /**
     * @dev check if holder exists
     * @param holderId_ id of holder to check
     * @return true if holderId exists
     * */
    function holderExists(uint256 holderId_) public view returns (bool) {
        return _holderAddressesByHolderId[holderId_].length > 0;
    }

    /**
     * @dev check if address has group
     * @param addr_ address to check
     * @param groupId_ id of group to check
     * @return true if address has group
     * */
    function hasGroup(
        address addr_,
        uint256 groupId_
    ) public view returns (bool) {
        return _transferGroups[addr_] == groupId_;
    }

    /**
     * @dev Enforces transfer restrictions managed using the ERC-1404 standard functions.
     * The TransferRules contract defines what the rules are. The data inputs to those rules remains in the RestrictedToken contract.
     * TransferRules is a separate contract so its logic can be upgraded.
     * @param from The address the tokens are transferred from
     * @param to The address the tokens would be transferred to
     * @param value the quantity of tokens to be transferred
     */
    function enforceTransferRestrictions(
        address from,
        address to,
        uint256 value
    ) private view {
        uint8 restrictionCode = detectTransferRestriction(from, to, value);
        require(
            transferRules.checkSuccess(restrictionCode),
            messageForTransferRestriction(restrictionCode)
        );
    }

    /**
     * @dev Calls the TransferRules detectTransferRetriction function to determine if tokens can be transferred.
     * detectTransferRestriction returns a status code. ERC-1404 standard.
     * @param from The address the tokens are transferred from
     * @param to The address the tokens would be transferred to
     * @param value The quantity of tokens to be transferred
     */
    function detectTransferRestriction(
        address from,
        address to,
        uint256 value
    ) public view returns (uint8) {
        return
            transferRules.detectTransferRestriction(
                address(this),
                from,
                to,
                value
            );
    }

    /**
     * @dev Calls TransferRules to lookup a human readable error message that goes with an error code. ERC-1404 standard.
     * @param restrictionCode is an error code to lookup an error code for
     * @return a human readable error message
     */
    function messageForTransferRestriction(
        uint8 restrictionCode
    ) public view returns (string memory) {
        return transferRules.messageForTransferRestriction(restrictionCode);
    }

    /**
    * @notice ERC20 standard interface function
            Provide controls of Restricted and Lockup tokens
            Can transfer simple ERC20 tokens and unlocked tokens at the same time
            First will transfer unlocked tokens and then simple ERC20
    * @param sender of transfer
    * @param recipient of transfer
    * @param amount of tokens to transfer
    * @return true On success / Reverted on error
    */
    function transferFrom(
        address sender,
        address recipient,
        uint256 amount
    ) public virtual override returns (bool) {
        require(
            recipient != address(0) && sender != address(0),
            "Address cannot be 0x0"
        );

        uint256 currentAllowance = allowance(sender, msg.sender);
        require(
            amount <= currentAllowance,
            "The approved allowance is lower than the transfer amount"
        );
        enforceTransferRestrictions(sender, recipient, amount);

        uint256[2] memory values = validateTransfer(sender, amount);
        require(values[0] + values[1] >= amount, "Insufficent tokens");

        if (values[0] > 0) {
            // unlocked tokens
            emit Transfer(sender, address(this), values[0]);
            super._transfer(address(this), recipient, values[0]);

            // Decrease allowance
            unchecked {
                _approve(sender, msg.sender, currentAllowance - values[0]);
            }
        }

        if (values[1] > 0) {
            // simple tokens
            super.transferFrom(sender, recipient, values[1]);
        }
        return true;
    }

    /**
     * @notice Balance of simple ERC20 tokens without any timelocks for a given address
     * @param who Address to calculate
     * @return amount The amount of simple ERC20 tokens available. See token.balanceOf
     **/
    function superBalanceOf(address who) public view returns (uint256) {
        return super.balanceOf(who);
    }

    /**
     * @notice Total unlocked balance for a given address - 1) balance of simple ERC20 tokens without any timelocks (superBalanceOf) + 2) unlocked tokens that remain (unlockedBalanceOf)
     * @param who Address to calculate
     * @return amount The unlocked total balance of
     **/
    function unlockedTotalBalanceOf(address who) public view returns (uint256) {
        return superBalanceOf(who) + unlockedBalanceOf(who);
    }

    /**
     * @notice Total locked balance for a given address across all timelocks
     * @param who Address to calculate
     * @return amount_
     */
    function lockedBalanceOf(
        address who
    ) public view returns (uint256 amount_) {
        uint256 _timelockCountOf = timelockCountOf(who);
        for (uint256 i; i < _timelockCountOf; ++i) {
            amount_ += lockedBalanceOfTimelock(who, i);
        }
    }

    /**
     * @notice Total unlocked balance remaining for a given address across all timelocks
     * @param who Address to calculate
     * @return amount_
     */
    function unlockedBalanceOf(
        address who
    ) public view returns (uint256 amount_) {
        uint256 _timelockCountOf = timelockCountOf(who);
        for (uint256 i; i < _timelockCountOf; ++i) {
            amount_ += unlockedBalanceOfTimelock(who, i);
        }
    }

    /**
     * @notice Total balance of tokens unlockedTotalBalanceOf + lockedBalanceOf
     * @dev for this smart contract address (as custodian of tokens administered via release schedules, ie locked/unlocked), always return the balance as 0
     * - consider that locked/unlocked tokens are always balanceOf the recipient of the tokens
     * - this ensures that total balances summed across all token holders (besides 0x0) match with total supply
     * - avoids confusion in the block explorer; smart contract will never be a token holder, just an intermediary that facilitates transfers
     * 1) balance of simple ERC20 tokens without any timelocks (superBalanceOf) + 2) unlocked tokens that remain (unlockedBalanceOf) + 3) locked tokens (lockedBalanceOf)
     * @param who Address to calculate
     * @return amount
     **/
    function balanceOf(address who) public view override returns (uint256) {
        if (who == address(this)) {
            return 0;
        }
        return unlockedTotalBalanceOf(who) + lockedBalanceOf(who);
    }

    /**
     * @notice Total balance of tokens unlockedTotalBalanceOf + lockedBalanceOf for this token contract
     * @dev Separate/specific contract balanceOf function to see what tokens are custodied in this contract
     * - required because normal balanceOf will always return 0 for this smart contract
     * 1) balance of simple ERC20 tokens without any timelocks (superBalanceOf) + 2) unlocked tokens that remain (unlockedBalanceOf) + 3) locked tokens (lockedBalanceOf)
     * @return amount
     **/
    function contractBalanceOf() public view returns (uint256) {
        return
            unlockedTotalBalanceOf(address(this)) +
            lockedBalanceOf(address(this));
    }

    /**
    * @notice Cancel a cancelable timelock created by the fundReleaseSchedule function.
        WARNING: this function cannot cancel a release schedule created by fundReleaseSchedule
        If canceled the tokens that are locked at the time of the cancellation will be returned to the funder
        and unlocked tokens will be transferred to the recipient.
    * @param target The address that would receive the tokens when released from the timelock.
    * @param timelockIndex timelock index
    * @param scheduleId require it matches expected
    * @param commencementTimestamp require it matches expected
    * @param totalAmount require it matches expected
    * @param reclaimTokenTo reclaim token to
    * @return success Always returns true on completion so that a function calling it can revert if the required call did not succeed
    */
    function cancelTimelock(
        address target,
        uint256 timelockIndex,
        uint256 scheduleId,
        uint256 commencementTimestamp,
        uint256 totalAmount,
        address reclaimTokenTo
    ) external nonReentrant returns (bool success) {
        require(timelockCountOf(target) > timelockIndex, "Invalid timelock");
        require(reclaimTokenTo != address(0), "Invalid reclaimTokenTo");

        Timelock storage timelock = timelocks[target][timelockIndex];

        require(
            _canBeCanceled(timelock),
            "You are not allowed to cancel this timelock"
        );
        require(
            timelock.scheduleId == scheduleId,
            "Expected scheduleId does not match"
        );
        require(
            timelock.commencementTimestamp == commencementTimestamp,
            "Expected commencementTimestamp does not match"
        );
        require(
            timelock.totalAmount == totalAmount,
            "Expected totalAmount does not match"
        );

        uint256 canceledAmount = lockedBalanceOfTimelock(target, timelockIndex);

        require(canceledAmount > 0, "Timelock has no value left");

        enforceTransferRestrictions(
            timelock.funder,
            reclaimTokenTo,
            canceledAmount
        );

        uint256 paidAmount = unlockedBalanceOfTimelock(target, timelockIndex);

        emit Transfer(target, address(this), paidAmount + canceledAmount); // event to show that recipient transfers remaining amount back to contract
        IERC20(this).safeTransfer(reclaimTokenTo, canceledAmount); // actually transfer canceled amount to reclaimTokenTo
        IERC20(this).safeTransfer(target, paidAmount); // actually transfer custodied paidAmount to target

        emit TimelockCanceled(
            msg.sender,
            target,
            timelockIndex,
            reclaimTokenTo,
            canceledAmount,
            paidAmount
        );

        timelock.tokensTransferred = timelock.totalAmount;
        return true;
    }

    /**
    * @notice transfers the unlocked token from an address's specific timelock
        It is typically more convenient to call transfer. But if the account has many timelocks the cost of gas
        for calling transfer may be too high. Calling transferTimelock from a specific timelock limits the transfer cost.
    * @param to the address that the tokens will be transferred to
    * @param value the number of token base units to me transferred to the to address
    * @param timelockId the specific timelock of the function caller to transfer unlocked tokens from
    * @return bool always true when completed
    */
    function transferTimelock(
        address to,
        uint256 value,
        uint256 timelockId
    ) external nonReentrant returns (bool) {
        require(
            unlockedBalanceOfTimelock(msg.sender, timelockId) >= value,
            "Amount > unlocked"
        );

        enforceTransferRestrictions(msg.sender, to, value);

        timelocks[msg.sender][timelockId].tokensTransferred += value;

        emit Transfer(msg.sender, address(this), value);
        IERC20(this).safeTransfer(to, value);

        return true;
    }

    /**
    * @notice calculates how many tokens would be released at a specified time for a scheduleId.
        This is independent of any specific address or address's timelock.

    * @param commencedTimestamp the commencement time to use in the calculation for the scheduled
    * @param currentTimestamp the timestamp to calculate unlocked tokens for
    * @param amount the amount of tokens
    * @param scheduleId the schedule id used to calculate the unlocked amount
    * @return unlocked the total amount unlocked for the schedule given the other parameters
    */
    function calculateUnlocked(
        uint256 commencedTimestamp,
        uint256 currentTimestamp,
        uint256 amount,
        uint256 scheduleId
    ) public view returns (uint256 unlocked) {
        return
            calculateUnlocked(
                commencedTimestamp,
                currentTimestamp,
                amount,
                releaseSchedules[scheduleId]
            );
    }

    /**
     * @notice returns the total count of timelocks for a specific address
     * @param who the address to get the timelock count for
     * @return number of timelocks
     */
    function timelockCountOf(address who) public view returns (uint256) {
        return timelocks[who].length;
    }

    /**
    * @notice calculates how many tokens would be released at a specified time for a ReleaseSchedule struct.
            This is independent of any specific address or address's timelock.

    * @param commencedTimestamp the commencement time to use in the calculation for the scheduled
    * @param currentTimestamp the timestamp to calculate unlocked tokens for
    * @param amount the amount of tokens
    * @param releaseSchedule a ReleaseSchedule struct used to calculate the unlocked amount
    * @return unlocked the total amount unlocked for the schedule given the other parameters
    */
    function calculateUnlocked(
        uint256 commencedTimestamp,
        uint256 currentTimestamp,
        uint256 amount,
        ReleaseSchedule memory releaseSchedule
    ) public pure returns (uint256 unlocked) {
        return
            calculateUnlocked(
                commencedTimestamp,
                currentTimestamp,
                amount,
                releaseSchedule.releaseCount,
                releaseSchedule.delayUntilFirstReleaseInSeconds,
                releaseSchedule.initialReleasePortionInBips,
                releaseSchedule.periodBetweenReleasesInSeconds
            );
    }

    /**
     * @notice The same functionality as above function with spread format of `releaseSchedule` arg
     * @param commencedTimestamp the commencement time to use in the calculation for the scheduled
     * @param currentTimestamp the timestamp to calculate unlocked tokens for
     * @param amount the amount of tokens
     * @param releaseCount Total number of releases including any initial "cliff'
     * @param delayUntilFirstReleaseInSeconds "cliff" or 0 for immediate release
     * @param initialReleasePortionInBips Portion to release in 100ths of 1% (10000 BIPS per 100%)
     * @param periodBetweenReleasesInSeconds After the delay and initial release
     * @return unlocked the total amount unlocked for the schedule given the other parameters
     */
    function calculateUnlocked(
        uint256 commencedTimestamp,
        uint256 currentTimestamp,
        uint256 amount,
        uint256 releaseCount,
        uint256 delayUntilFirstReleaseInSeconds,
        uint256 initialReleasePortionInBips,
        uint256 periodBetweenReleasesInSeconds
    ) public pure returns (uint256 unlocked) {
        if (commencedTimestamp > currentTimestamp) {
            return 0;
        }
        uint256 secondsElapsed = currentTimestamp - commencedTimestamp;

        /// @notice return the full amount if the total lockup period has expired
        /// unlocked amounts in each period are truncated and round down remainders smaller than the smallest unit
        /// unlocking the full amount unlocks any remainder amounts in the final unlock period
        /// this is done first to reduce computation
        if (
            secondsElapsed >=
            delayUntilFirstReleaseInSeconds +
                (periodBetweenReleasesInSeconds * (releaseCount - 1))
        ) {
            return amount;
        }

        /// @notice unlock the initial release if the delay has elapsed
        if (secondsElapsed >= delayUntilFirstReleaseInSeconds) {
            unlocked = (amount * initialReleasePortionInBips) / BIPS_PRECISION;

            /// @notice if at least one period after the delay has passed
            if (
                secondsElapsed - delayUntilFirstReleaseInSeconds >=
                periodBetweenReleasesInSeconds
            ) {
                /// @notice calculate the number of additional periods that have passed (not including the initial release)
                /// this discards any remainders (ie it truncates / rounds down)
                uint256 additionalUnlockedPeriods = (secondsElapsed -
                    delayUntilFirstReleaseInSeconds) /
                    periodBetweenReleasesInSeconds;

                /// @notice calculate the amount of unlocked tokens for the additionalUnlockedPeriods
                /// multiplication is applied before division to delay truncating to the smallest unit
                /// this distributes unlocked tokens more evenly across unlock periods
                /// than truncated division followed by multiplication
                unlocked +=
                    ((amount - unlocked) * additionalUnlockedPeriods) /
                    (releaseCount - 1);
            }
        }

        return unlocked;
    }

    /**
     * @dev Freezes or unfreezes an address.
     * Tokens in a frozen address cannot be transferred from until the address is unfrozen.
     * @param addr The address to be frozen.
     * @param status The frozenAddress status of the address. True means frozen false means not frozen.
     */
    function freeze(
        address addr,
        bool status
    ) public validAddress(addr) onlyWalletsAdminOrTransferAdmin {
        _frozenAddresses[addr] = status;
        emit AddressFrozen(msg.sender, addr, status);
    }

    /**
     *  @notice Check if timelock can be cancelable by msg.sender
     */
    function _canBeCanceled(
        Timelock storage timelock
    ) private view returns (bool) {
        uint256 len = timelock.cancelableBy.length;
        for (uint256 i; i < len; ++i) {
            if (msg.sender == timelock.cancelableBy[i]) {
                return true;
            }
        }
        return false;
    }

    /**
     * @notice Get The locked balance for a specific address and specific timelock
     * @param who The address to check
     * @param timelockIndex Specific timelock belonging to the who address
     * @return locked Balance of the timelock
     * lockedBalanceOfTimelock
     */
    function lockedBalanceOfTimelock(
        address who,
        uint256 timelockIndex
    ) public view returns (uint256 locked) {
        Timelock memory timelock = timelockOf(who, timelockIndex);
        if (timelock.totalAmount <= timelock.tokensTransferred) {
            return 0;
        } else {
            return
                timelock.totalAmount -
                totalUnlockedToDateOfTimelock(who, timelockIndex);
        }
    }

    /**
     * @notice Get the unlocked balance for a specific address and specific timelock
     * @param who the address to check
     * @param timelockIndex for a specific timelock belonging to the who address
     * @return unlocked balance of the timelock
     */
    function unlockedBalanceOfTimelock(
        address who,
        uint256 timelockIndex
    ) public view returns (uint256 unlocked) {
        Timelock memory timelock = timelockOf(who, timelockIndex);
        if (timelock.totalAmount <= timelock.tokensTransferred) {
            return 0;
        } else {
            return
                totalUnlockedToDateOfTimelock(who, timelockIndex) -
                timelock.tokensTransferred;
        }
    }

    /**
     * @notice Gets the total locked and unlocked balance of a specific address's timelocks
     * @param who The address to check
     * @param timelockIndex The index of the timelock for the who address
     * @return total Locked and unlocked amount for the specified timelock
     */
    function totalUnlockedToDateOfTimelock(
        address who,
        uint256 timelockIndex
    ) public view returns (uint256 total) {
        Timelock memory _timelock = timelockOf(who, timelockIndex);

        return
            calculateUnlocked(
                _timelock.commencementTimestamp,
                block.timestamp,
                _timelock.totalAmount,
                _timelock.scheduleId
            );
    }

    /**
     * @notice ERC20 standard interface function
     * Provide controls of Restricted and Lockup tokens
     * Can transfer simple ERC20 tokens and unlocked tokens at the same time
     * First will transfer unlocked tokens and then simple ERC20
     * @param recipient of transfer
     * @param amount of tokens to transfer
     * @return true On success / Reverted on error
     */
    function transfer(
        address recipient,
        uint256 amount
    ) public virtual override returns (bool) {
        enforceTransferRestrictions(msg.sender, recipient, amount);
        return _transfer(recipient, amount);
    }

    /**
     * @notice Get the struct details for an address's specific timelock
     * @param who Address to check
     * @param index The index of the timelock for the who address
     * @return timelock Struct with the attributes of the timelock
     */
    function timelockOf(
        address who,
        uint256 index
    ) public view returns (Timelock memory timelock) {
        return timelocks[who][index];
    }

    /**
     * @dev after transfer hook
     * @notice During a burn, this is invoked by the _burn function (ERC20.sol) which artificially sets `to` to the 0x0 address. Tokens are NOT actually transferred to 0x0 during a burn.
     * @param from from address
     * @param to address
     */
    function _afterTokenTransfer(
        address from,
        address to,
        uint256 amount
    ) internal virtual override {
        super._afterTokenTransfer(from, to, amount); // Call parent hook

        /// @notice when to is 0x0, it's a burn (note - 0x0 is not actually transferred any tokens during burn)
        /// do NOT create a holder in that case
        if (!addressHasHolder(to) && to != address(0)) {
            // if holder does not exist
            _createHolderFromAddress(to);
        }

        /// @notice check that each resultant wallet balance meets requirements
        /// need to cover zero address case -> during mint/burn these conditions don't apply
        uint256 _minWalletBalance = minWalletBalance;

        if (_minWalletBalance > 0 && from != address(0)) {
            uint256 _balanceOfFrom = balanceOf(from);
            require(
                _balanceOfFrom == 0 || _balanceOfFrom >= minWalletBalance,
                "Invalid wallet balance"
            );
        }
    }

    /**
     * @notice Check and calculate the availability to transfer tokens between accounts from simple and timelock balances
     * @param from Address from
     * @param value Amount of tokens
     * @return values Array of uint256[2] contains unlocked tokens at index 0, and simple ERC20 at index 1 that can be used for transfer
     */
    function validateTransfer(
        address from,
        uint256 value
    ) internal returns (uint256[2] memory values) {
        uint256 balance = superBalanceOf(from);
        uint256 unlockedBalance = unlockedBalanceOf(from);
        require(
            balance + unlockedBalance >= value,
            "Invalid: unlocked + balance < transfer amount"
        );

        uint256 remainingTransfer = value;

        /// @notice transfer from unlocked tokens
        for (uint256 i; i < timelockCountOf(from); ++i) {
            /// @notice if the timelock has no value left
            if (
                timelocks[from][i].tokensTransferred ==
                timelocks[from][i].totalAmount
            ) {
                continue;
            } else {
                uint256 _unlockedBalanceOfTimelock = unlockedBalanceOfTimelock(
                    from,
                    i
                );
                if (remainingTransfer > _unlockedBalanceOfTimelock) {
                    remainingTransfer -= _unlockedBalanceOfTimelock;
                    timelocks[from][i]
                        .tokensTransferred += _unlockedBalanceOfTimelock;
                } else {
                    timelocks[from][i].tokensTransferred += remainingTransfer;
                    remainingTransfer = 0;
                    break;
                }
            }
        }
        values[0] = value - remainingTransfer;
        /// @notice from unlockedValue
        values[1] = remainingTransfer;
        /// @notice from balanceOf
    }

    /**
     * @param to Address to
     * @param amount Amount of tokens
     * @param commencementTimestamp commencement timestamp
     * @param scheduleId schedule Id
     * @return timelock Id
     */
    function _fund(
        address to,
        uint256 amount,
        uint256 commencementTimestamp, // unix timestamp
        uint256 scheduleId,
        address funder
    ) internal returns (uint256) {
        require(timelocks[to].length < MAX_TIMELOCKS, "Max timelocks exceeded");
        require(amount >= minTimelockAmount, "Amount < min funding");
        require(to != address(0), "Cannot fund 0 address");
        require(scheduleId < releaseSchedules.length, "Bad scheduleId");
        require(
            amount >= releaseSchedules[scheduleId].releaseCount,
            "Amount must be >= releaseCount"
        );

        _transfer(address(this), amount); // actually transfer tokens to smart contract to be custodied
        emit Transfer(address(this), to, amount); // event to show that contract transfers funded locked/unlocked amount to recipient

        require(
            commencementTimestamp +
                releaseSchedules[scheduleId].delayUntilFirstReleaseInSeconds <=
                block.timestamp + maxReleaseDelay,
            "Initial release out of range"
        );

        Timelock memory timelock;
        timelock.scheduleId = scheduleId;
        timelock.commencementTimestamp = commencementTimestamp;
        timelock.totalAmount = amount;
        timelock.funder = funder;

        timelocks[to].push(timelock);
        return timelockCountOf(to) - 1;
    }

    /**
     * @param addr_ address to create Holder from
     * @return _holderId holder id
     */
    function _createHolderFromAddress(
        address addr_
    ) private validAddress(addr_) returns (uint256 _holderId) {
        require(!addressHasHolder(addr_), "Holder exists");

        require(holderCount < holderMax, "Reached maximum number of holders");
        ++holderCount;

        _holderIds.increment();
        _holderId = _holderIds.current();

        _holderIdByAddress[addr_] = _holderId;
        _holderAddressesByHolderId[_holderId].push(addr_);

        /// @notice explicitly define the groupId
        uint256 _groupId;

        /// @notice Auto join to 0 group
        ++holderGroupCount[_groupId];

        emit HolderCreated(_holderId, addr_);
    }

    /**
     * @dev Join into the group
     * @param addr_ address to join
     * @param groupId_ group Id to join
     * @param ignoreMinWalletBalance_ ignore minimum wallet balance on join
     */
    function _joinGroup(
        address addr_,
        uint256 groupId_,
        bool ignoreMinWalletBalance_
    ) private onlyExistingAddress(addr_) {
        int256 _groupMax = holderGroupMax[groupId_]; // max number holders allowed in new group
        bool _isHolderGroupMaxActive = _groupMax > 0; // only check group max if admin sets holderGroupMax[groupId_] > 0
        uint256 _holderId = _holderIdByAddress[addr_];
        uint256 _currentGroupId = _transferGroups[addr_];
        uint256 _currentGroupHolderBalance = holderBalanceByGroupId(
            _holderId,
            _currentGroupId
        );
        uint256 _newGroupHolderBalance = holderBalanceByGroupId(
            _holderId,
            groupId_
        );

        /// @notice condition flag only applies if minWalletBalance is set
        uint256 _minWalletBalance = minWalletBalance;
        if (!ignoreMinWalletBalance_ && _minWalletBalance > 0) {
            /// @notice if groupId is not 0 (special privileges in group0)
            /// @notice -> check whether to leave group
            if (groupId_ > 0) {
                uint256 _walletBalance = balanceOf(addr_);
                require(
                    _walletBalance >= _minWalletBalance,
                    "Balance is too low"
                );
            }
        }

        /// @notice if the new group's balance is initially 0, Holder is a new holder in that group
        if (_newGroupHolderBalance == 0) {
            /// @notice now we need to check if the group is at max capacity, but only if holderGroupMax is set > 0
            if (_isHolderGroupMaxActive) {
                require(
                    holderGroupCount[groupId_] < _groupMax,
                    "Reached maximum number of holders in group"
                );
            }
            ++holderGroupCount[groupId_];
        }

        /// @notice if current group's balance is equal to wallet addr balance, then remove from group
        /// it means they have no balance remaining
        if (_currentGroupHolderBalance == balanceOf(addr_)) {
            --holderGroupCount[_currentGroupId];
        }

        _transferGroups[addr_] = groupId_;
        emit AddressTransferGroup(msg.sender, addr_, groupId_);
    }

    /**
     * @param addr address to leave
     */
    function _leaveGroup(address addr) private {
        _joinGroup(addr, 0, true);
    }

    /**
     * @param recipient address to send to
     * @param amount amount to send
     */
    function _transfer(
        address recipient,
        uint256 amount
    ) private returns (bool) {
        uint256[2] memory values = validateTransfer(msg.sender, amount);
        if (values[0] > 0) {
            /// @notice unlocked tokens
            emit Transfer(msg.sender, address(this), values[0]);
            super._transfer(address(this), recipient, values[0]);
        }
        if (values[1] > 0) {
            /// @notice simple tokens
            super._transfer(msg.sender, recipient, values[1]);
        }
        return true;
    }
}
