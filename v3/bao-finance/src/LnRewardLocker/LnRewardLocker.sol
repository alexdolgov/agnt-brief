// SPDX-License-Identifier: MIT

// File @openzeppelin/contracts-upgradeable/math/MathUpgradeable.sol@v3.3.0

pragma solidity >=0.6.0 <0.8.0;

/**
 * @dev Standard math utilities missing in the Solidity language.
 */
library MathUpgradeable {
    /**
     * @dev Returns the largest of two numbers.
     */
    function max(uint256 a, uint256 b) internal pure returns (uint256) {
        return a >= b ? a : b;
    }

    /**
     * @dev Returns the smallest of two numbers.
     */
    function min(uint256 a, uint256 b) internal pure returns (uint256) {
        return a < b ? a : b;
    }

    /**
     * @dev Returns the average of two numbers. The result is rounded towards
     * zero.
     */
    function average(uint256 a, uint256 b) internal pure returns (uint256) {
        // (a + b) / 2 can overflow, so we distribute
        return (a / 2) + (b / 2) + (((a % 2) + (b % 2)) / 2);
    }
}

// File @openzeppelin/contracts-upgradeable/math/SafeMathUpgradeable.sol@v3.3.0

pragma solidity >=0.6.0 <0.8.0;

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
library SafeMathUpgradeable {
    /**
     * @dev Returns the addition of two unsigned integers, reverting on
     * overflow.
     *
     * Counterpart to Solidity's `+` operator.
     *
     * Requirements:
     *
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
     *
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
     *
     * - Subtraction cannot overflow.
     */
    function sub(
        uint256 a,
        uint256 b,
        string memory errorMessage
    ) internal pure returns (uint256) {
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
     *
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
     *
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
     *
     * - The divisor cannot be zero.
     */
    function div(
        uint256 a,
        uint256 b,
        string memory errorMessage
    ) internal pure returns (uint256) {
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
     *
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
     *
     * - The divisor cannot be zero.
     */
    function mod(
        uint256 a,
        uint256 b,
        string memory errorMessage
    ) internal pure returns (uint256) {
        require(b != 0, errorMessage);
        return a % b;
    }
}

// File contracts/interfaces/ILnAccessControl.sol

pragma solidity >=0.6.12 <0.8.0;

interface ILnAccessControl {
    function hasRole(bytes32 role, address account) external view returns (bool);

    function ISSUE_ASSET_ROLE() external view returns (bytes32);

    function BURN_ASSET_ROLE() external view returns (bytes32);

    function DEBT_SYSTEM() external view returns (bytes32);

    function IsAdmin(address _address) external view returns (bool);

    function SetAdmin(address _address) external returns (bool);

    function SetRoles(
        bytes32 roleType,
        address[] calldata addresses,
        bool[] calldata setTo
    ) external;

    function SetIssueAssetRole(address[] calldata issuer, bool[] calldata setTo) external;

    function SetBurnAssetRole(address[] calldata burner, bool[] calldata setTo) external;

    function SetDebtSystemRole(address[] calldata _address, bool[] calldata _setTo) external;
}

// File contracts/interfaces/ILnCollateralSystem.sol

pragma solidity >=0.6.12 <0.8.0;

interface ILnCollateralSystem {
    function getUserLinaCollateralBreakdown(address _user) external view returns (uint256 staked, uint256 locked);

    function IsSatisfyTargetRatio(address _user) external view returns (bool);

    function GetUserTotalCollateralInUsd(address _user) external view returns (uint256 rTotal);

    function MaxRedeemableInUsd(address _user) external view returns (uint256);

    function getFreeCollateralInUsd(address user) external view returns (uint256);

    function moveCollateral(
        address fromUser,
        address toUser,
        bytes32 currency,
        uint256 amount
    ) external;

    function collateralFromUnlockReward(
        address user,
        address rewarder,
        bytes32 currency,
        uint256 amount
    ) external;
}

// File contracts/interfaces/ILnRewardLocker.sol

pragma solidity >=0.6.12 <0.8.0;

interface ILnRewardLocker {
    function balanceOf(address user) external view returns (uint256);

    function totalLockedAmount() external view returns (uint256);

    function addReward(
        address user,
        uint256 amount,
        uint256 unlockTime
    ) external;

    function moveReward(
        address from,
        address recipient,
        uint256 amount,
        uint256[] calldata rewardEntryIds
    ) external;

    function moveRewardProRata(
        address from,
        address recipient1,
        uint256 amount1,
        address recipient2,
        uint256 amount2,
        uint256[] calldata rewardEntryIds
    ) external;
}

// File @openzeppelin/contracts-upgradeable/proxy/Initializable.sol@v3.3.0

// solhint-disable-next-line compiler-version
pragma solidity >=0.4.24 <0.8.0;

/**
 * @dev This is a base contract to aid in writing upgradeable contracts, or any kind of contract that will be deployed
 * behind a proxy. Since a proxied contract can't have a constructor, it's common to move constructor logic to an
 * external initializer function, usually called `initialize`. It then becomes necessary to protect this initializer
 * function so it can only be called once. The {initializer} modifier provided by this contract will have this effect.
 *
 * TIP: To avoid leaving the proxy in an uninitialized state, the initializer function should be called as early as
 * possible by providing the encoded function call as the `_data` argument to {UpgradeableProxy-constructor}.
 *
 * CAUTION: When used with inheritance, manual care must be taken to not invoke a parent initializer twice, or to ensure
 * that all initializers are idempotent. This is not verified automatically as constructors are by Solidity.
 */
abstract contract Initializable {
    /**
     * @dev Indicates that the contract has been initialized.
     */
    bool private _initialized;

    /**
     * @dev Indicates that the contract is in the process of being initialized.
     */
    bool private _initializing;

    /**
     * @dev Modifier to protect an initializer function from being invoked twice.
     */
    modifier initializer() {
        require(_initializing || _isConstructor() || !_initialized, "Initializable: contract is already initialized");

        bool isTopLevelCall = !_initializing;
        if (isTopLevelCall) {
            _initializing = true;
            _initialized = true;
        }

        _;

        if (isTopLevelCall) {
            _initializing = false;
        }
    }

    /// @dev Returns true if and only if the function is running in the constructor
    function _isConstructor() private view returns (bool) {
        // extcodesize checks the size of the code stored in an address, and
        // address returns the current address. Since the code is still not
        // deployed when running a constructor, any checks on its code size will
        // yield zero, making it an effective way to detect if a contract is
        // under construction or not.
        address self = address(this);
        uint256 cs;
        // solhint-disable-next-line no-inline-assembly
        assembly {
            cs := extcodesize(self)
        }
        return cs == 0;
    }
}

// File contracts/upgradeable/LnAdminUpgradeable.sol

pragma solidity >=0.6.12 <0.8.0;

/**
 * @title LnAdminUpgradeable
 *
 * @dev This is an upgradeable version of `LnAdmin` by replacing the constructor with
 * an initializer and reserving storage slots.
 */
contract LnAdminUpgradeable is Initializable {
    event CandidateChanged(address oldCandidate, address newCandidate);
    event AdminChanged(address oldAdmin, address newAdmin);

    address public admin;
    address public candidate;

    function __LnAdminUpgradeable_init(address _admin) public initializer {
        require(_admin != address(0), "LnAdminUpgradeable: zero address");
        admin = _admin;
        emit AdminChanged(address(0), _admin);
    }

    function setCandidate(address _candidate) external onlyAdmin {
        address old = candidate;
        candidate = _candidate;
        emit CandidateChanged(old, candidate);
    }

    function becomeAdmin() external {
        require(msg.sender == candidate, "LnAdminUpgradeable: only candidate can become admin");
        address old = admin;
        admin = candidate;
        emit AdminChanged(old, admin);
    }

    modifier onlyAdmin {
        require((msg.sender == admin), "LnAdminUpgradeable: only the contract admin can perform this action");
        _;
    }

    // Reserved storage space to allow for layout changes in the future.
    uint256[48] private __gap;
}

// File contracts/LnRewardLocker.sol

pragma solidity ^0.7.6;

/**
 * @title LnRewardLocker
 *
 * @dev A contract for locking LINA rewards. The current version only supports adding rewards.
 * Reward claiming will be added in a later iteration.
 */
contract LnRewardLocker is ILnRewardLocker, LnAdminUpgradeable {
    using SafeMathUpgradeable for uint256;

    event RewardEntryAdded(uint256 entryId, address user, uint256 amount, uint256 unlockTime);
    event RewardEntryRemoved(uint256 entryId);
    event RewardAmountChanged(uint256 entryId, uint256 oldAmount, uint256 newAmount);
    event RewardEntryUnlocked(uint256 entryId, address user, uint256 amount);

    /**
     * @dev The struct used to store reward data. Address is deliberately left out and put in the
     * mapping key of `rewardEntries` to minimize struct size. Struct fields are padded to 256 bits
     * to save storage space, and thus gas fees.
     */
    struct RewardEntry {
        uint216 amount;
        uint40 unlockTime;
    }
    struct MoveEntryParams {
        address from;
        address recipient1;
        uint256 amount1;
        address recipient2;
        uint256 amount2;
        uint256 rewardEntryId;
        uint256 amount1Left;
        uint256 amount2Left;
    }

    uint256 public lastRewardEntryId;
    mapping(uint256 => mapping(address => RewardEntry)) public rewardEntries;
    mapping(address => uint256) public lockedAmountByAddresses;
    uint256 public override totalLockedAmount;

    address public linaTokenAddr;
    ILnAccessControl public accessCtrl;
    address public collateralSystemAddr;
    address public rewarderAddress;

    bytes32 private constant ROLE_LOCK_REWARD = "LOCK_REWARD";
    bytes32 private constant ROLE_MOVE_REWARD = "MOVE_REWARD";

    modifier onlyLockRewardRole() {
        require(accessCtrl.hasRole(ROLE_LOCK_REWARD, msg.sender), "LnRewardLocker: not LOCK_REWARD role");
        _;
    }

    modifier onlyMoveRewardRole() {
        require(accessCtrl.hasRole(ROLE_MOVE_REWARD, msg.sender), "LnRewardLocker: not MOVE_REWARD role");
        _;
    }

    function balanceOf(address user) external view override returns (uint256) {
        return lockedAmountByAddresses[user];
    }

    function __LnRewardLocker_init(
        address _linaTokenAddr,
        ILnAccessControl _accessCtrl,
        address _admin
    ) public initializer {
        __LnAdminUpgradeable_init(_admin);

        require(_linaTokenAddr != address(0), "LnRewardLocker: zero address");
        require(address(_accessCtrl) != address(0), "LnRewardLocker: zero address");

        linaTokenAddr = _linaTokenAddr;
        accessCtrl = _accessCtrl;
    }

    function addReward(
        address user,
        uint256 amount,
        uint256 unlockTime
    ) external override onlyLockRewardRole {
        _addReward(user, amount, unlockTime);
    }

    /**
     * @dev A temporary function for migrating reward entries in bulk from the old contract.
     * To be removed via a contract upgrade after migration.
     */
    function migrateRewards(
        address[] calldata users,
        uint256[] calldata amounts,
        uint256[] calldata unlockTimes
    ) external onlyAdmin {
        require(users.length > 0, "LnRewardLocker: empty array");
        require(users.length == amounts.length && amounts.length == unlockTimes.length, "LnRewardLocker: length mismatch");

        for (uint256 ind = 0; ind < users.length; ind++) {
            _addReward(users[ind], amounts[ind], unlockTimes[ind]);
        }
    }

    function moveReward(
        address from,
        address recipient,
        uint256 amount,
        uint256[] calldata rewardEntryIds
    ) external override onlyMoveRewardRole {
        _moveRewardProRata(from, recipient, amount, address(0), 0, rewardEntryIds);
    }

    function moveRewardProRata(
        address from,
        address recipient1,
        uint256 amount1,
        address recipient2,
        uint256 amount2,
        uint256[] calldata rewardEntryIds
    ) external override onlyMoveRewardRole {
        _moveRewardProRata(from, recipient1, amount1, recipient2, amount2, rewardEntryIds);
    }

    function updateCollateralSystemAddress(address _collateralSystemAddr) external onlyAdmin {
        require(_collateralSystemAddr != address(0), "LnRewardLocker: Collateral system address must not be 0");
        collateralSystemAddr = _collateralSystemAddr;
    }

    function updateRewarderAddress(address _rewarderAddress) external onlyAdmin {
        require(_rewarderAddress != address(0), "LnRewardLocker: Rewarder address must not be 0");
        rewarderAddress = _rewarderAddress;
    }

    function unlockReward(address user, uint256 rewardEntryId) external {
        require(rewarderAddress != address(0), "LnRewardLocker: Rewarder address not set");
        require(collateralSystemAddr != address(0), "LnRewardLocker: Collateral system address not set");

        RewardEntry memory rewardEntry = rewardEntries[rewardEntryId][user];
        require(rewardEntry.amount > 0, "LnRewardLocker: Reward entry amount is 0, no reward to unlock");
        require(block.timestamp >= rewardEntry.unlockTime, "LnRewardLocker: Unlock time not reached");

        ILnCollateralSystem(collateralSystemAddr).collateralFromUnlockReward(
            user,
            rewarderAddress,
            "LINA",
            rewardEntry.amount
        );

        lockedAmountByAddresses[user] = lockedAmountByAddresses[user].sub(rewardEntry.amount);
        totalLockedAmount = totalLockedAmount.sub(rewardEntry.amount);
        emit RewardEntryUnlocked(rewardEntryId, user, rewardEntry.amount);

        delete rewardEntries[rewardEntryId][user];
        emit RewardEntryRemoved(rewardEntryId);
    }

    function _addReward(
        address user,
        uint256 amount,
        uint256 unlockTime
    ) private {
        require(amount > 0, "LnRewardLocker: zero amount");

        uint216 trimmedAmount = uint216(amount);
        uint40 trimmedUnlockTime = uint40(unlockTime);
        require(uint256(trimmedAmount) == amount, "LnRewardLocker: reward amount overflow");
        require(uint256(trimmedUnlockTime) == unlockTime, "LnRewardLocker: unlock time overflow");

        lastRewardEntryId++;

        rewardEntries[lastRewardEntryId][user] = RewardEntry({amount: trimmedAmount, unlockTime: trimmedUnlockTime});
        lockedAmountByAddresses[user] = lockedAmountByAddresses[user].add(amount);
        totalLockedAmount = totalLockedAmount.add(amount);

        emit RewardEntryAdded(lastRewardEntryId, user, amount, unlockTime);
    }

    function _moveRewardProRata(
        address from,
        address recipient1,
        uint256 amount1,
        address recipient2,
        uint256 amount2,
        uint256[] calldata rewardEntryIds
    ) private {
        // Check amount and adjust from balance directly
        uint256 totalAmount = amount1.add(amount2);
        require(totalAmount > 0 && totalAmount <= lockedAmountByAddresses[from], "LnRewardLocker: amount out of range");
        lockedAmountByAddresses[from] = lockedAmountByAddresses[from].sub(totalAmount);

        uint256 amount1Left = amount1;
        uint256 amount2Left = amount2;

        for (uint256 ind = 0; ind < rewardEntryIds.length; ind++) {
            uint256 currentRewardEntryId = rewardEntryIds[ind];

            (amount1Left, amount2Left) = moveRewardEntry(
                MoveEntryParams({
                    from: from,
                    recipient1: recipient1,
                    amount1: amount1,
                    recipient2: recipient2,
                    amount2: amount2,
                    rewardEntryId: currentRewardEntryId,
                    amount1Left: amount1Left,
                    amount2Left: amount2Left
                })
            );

            if (amount1Left == 0 && amount2Left == 0) break;
        }

        // Ensure all amounts are distributed
        require(amount1Left == 0 && amount2Left == 0, "LnRewardLocker: amount not filled with all entries");
    }

    function moveRewardEntry(MoveEntryParams memory params)
        private
        returns (uint256 amount1LeftAfter, uint256 amount2LeftAfter)
    {
        RewardEntry memory currentRewardEntry = rewardEntries[params.rewardEntryId][params.from];
        if (currentRewardEntry.amount == 0) {
            /**
             * This reward entry is gone. We're not reverting the tx here because it's possible for
             * moveReward() or moveRewardProRata() to be called multiple times in a single transaction.
             * Instead of asking the caller to precisely track used entries, we just ignore them here.
             */
            return (params.amount1Left, params.amount2Left);
        }

        uint256 totalAmountLeft = params.amount1Left.add(params.amount2Left);

        uint256 currentAmount = MathUpgradeable.min(totalAmountLeft, currentRewardEntry.amount);
        if (currentAmount == currentRewardEntry.amount) {
            // Entry should be removed
            delete rewardEntries[params.rewardEntryId][params.from];

            emit RewardEntryRemoved(params.rewardEntryId);
        } else {
            // Entry should be amended
            uint256 newAmount = uint256(currentRewardEntry.amount).sub(currentAmount);

            rewardEntries[params.rewardEntryId][params.from].amount = uint216(newAmount);

            emit RewardAmountChanged(params.rewardEntryId, currentRewardEntry.amount, newAmount);
        }

        uint256 currentAmountTo1;
        uint256 currentAmountTo2;

        if (totalAmountLeft == currentAmount) {
            // Amount from the current entry is enough for both recipients
            currentAmountTo1 = params.amount1Left;
            currentAmountTo2 = params.amount2Left;
        } else {
            // Pro-rata allocation
            currentAmountTo1 = MathUpgradeable.min(
                params.amount1Left,
                currentAmount.mul(params.amount1).div(params.amount1.add(params.amount2))
            );
            currentAmountTo2 = currentAmount.sub(currentAmountTo1);
        }

        if (currentAmountTo1 > 0) {
            _addReward(params.recipient1, currentAmountTo1, currentRewardEntry.unlockTime);
        }

        if (currentAmountTo2 > 0) {
            _addReward(params.recipient2, currentAmountTo2, currentRewardEntry.unlockTime);
        }

        return (params.amount1Left.sub(currentAmountTo1), params.amount2Left.sub(currentAmountTo2));
    }
}