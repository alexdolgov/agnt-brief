// File: @openzeppelin/contracts/token/ERC20/IERC20.sol


// OpenZeppelin Contracts (last updated v5.4.0) (token/ERC20/IERC20.sol)

pragma solidity >=0.4.16;

/**
 * @dev Interface of the ERC-20 standard as defined in the ERC.
 */
interface IERC20 {
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

    /**
     * @dev Returns the value of tokens in existence.
     */
    function totalSupply() external view returns (uint256);

    /**
     * @dev Returns the value of tokens owned by `account`.
     */
    function balanceOf(address account) external view returns (uint256);

    /**
     * @dev Moves a `value` amount of tokens from the caller's account to `to`.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transfer(address to, uint256 value) external returns (bool);

    /**
     * @dev Returns the remaining number of tokens that `spender` will be
     * allowed to spend on behalf of `owner` through {transferFrom}. This is
     * zero by default.
     *
     * This value changes when {approve} or {transferFrom} are called.
     */
    function allowance(address owner, address spender) external view returns (uint256);

    /**
     * @dev Sets a `value` amount of tokens as the allowance of `spender` over the
     * caller's tokens.
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
    function approve(address spender, uint256 value) external returns (bool);

    /**
     * @dev Moves a `value` amount of tokens from `from` to `to` using the
     * allowance mechanism. `value` is then deducted from the caller's
     * allowance.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transferFrom(address from, address to, uint256 value) external returns (bool);
}

// File: @openzeppelin/contracts/utils/Context.sol


// OpenZeppelin Contracts (last updated v5.0.1) (utils/Context.sol)

pragma solidity ^0.8.20;

/**
 * @dev Provides information about the current execution context, including the
 * sender of the transaction and its data. While these are generally available
 * via msg.sender and msg.data, they should not be accessed in such a direct
 * manner, since when dealing with meta-transactions the account sending and
 * paying for execution may not be the actual sender (as far as an application
 * is concerned).
 *
 * This contract is only required for intermediate, library-like contracts.
 */
abstract contract Context {
    function _msgSender() internal view virtual returns (address) {
        return msg.sender;
    }

    function _msgData() internal view virtual returns (bytes calldata) {
        return msg.data;
    }

    function _contextSuffixLength() internal view virtual returns (uint256) {
        return 0;
    }
}

// File: @openzeppelin/contracts/access/Ownable.sol


// OpenZeppelin Contracts (last updated v5.0.0) (access/Ownable.sol)

pragma solidity ^0.8.20;


/**
 * @dev Contract module which provides a basic access control mechanism, where
 * there is an account (an owner) that can be granted exclusive access to
 * specific functions.
 *
 * The initial owner is set to the address provided by the deployer. This can
 * later be changed with {transferOwnership}.
 *
 * This module is used through inheritance. It will make available the modifier
 * `onlyOwner`, which can be applied to your functions to restrict their use to
 * the owner.
 */
abstract contract Ownable is Context {
    address private _owner;

    /**
     * @dev The caller account is not authorized to perform an operation.
     */
    error OwnableUnauthorizedAccount(address account);

    /**
     * @dev The owner is not a valid owner account. (eg. `address(0)`)
     */
    error OwnableInvalidOwner(address owner);

    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

    /**
     * @dev Initializes the contract setting the address provided by the deployer as the initial owner.
     */
    constructor(address initialOwner) {
        if (initialOwner == address(0)) {
            revert OwnableInvalidOwner(address(0));
        }
        _transferOwnership(initialOwner);
    }

    /**
     * @dev Throws if called by any account other than the owner.
     */
    modifier onlyOwner() {
        _checkOwner();
        _;
    }

    /**
     * @dev Returns the address of the current owner.
     */
    function owner() public view virtual returns (address) {
        return _owner;
    }

    /**
     * @dev Throws if the sender is not the owner.
     */
    function _checkOwner() internal view virtual {
        if (owner() != _msgSender()) {
            revert OwnableUnauthorizedAccount(_msgSender());
        }
    }

    /**
     * @dev Leaves the contract without owner. It will not be possible to call
     * `onlyOwner` functions. Can only be called by the current owner.
     *
     * NOTE: Renouncing ownership will leave the contract without an owner,
     * thereby disabling any functionality that is only available to the owner.
     */
    function renounceOwnership() public virtual onlyOwner {
        _transferOwnership(address(0));
    }

    /**
     * @dev Transfers ownership of the contract to a new account (`newOwner`).
     * Can only be called by the current owner.
     */
    function transferOwnership(address newOwner) public virtual onlyOwner {
        if (newOwner == address(0)) {
            revert OwnableInvalidOwner(address(0));
        }
        _transferOwnership(newOwner);
    }

    /**
     * @dev Transfers ownership of the contract to a new account (`newOwner`).
     * Internal function without access restriction.
     */
    function _transferOwnership(address newOwner) internal virtual {
        address oldOwner = _owner;
        _owner = newOwner;
        emit OwnershipTransferred(oldOwner, newOwner);
    }
}

// File: @openzeppelin/contracts/utils/Pausable.sol


// OpenZeppelin Contracts (last updated v5.3.0) (utils/Pausable.sol)

pragma solidity ^0.8.20;


/**
 * @dev Contract module which allows children to implement an emergency stop
 * mechanism that can be triggered by an authorized account.
 *
 * This module is used through inheritance. It will make available the
 * modifiers `whenNotPaused` and `whenPaused`, which can be applied to
 * the functions of your contract. Note that they will not be pausable by
 * simply including this module, only once the modifiers are put in place.
 */
abstract contract Pausable is Context {
    bool private _paused;

    /**
     * @dev Emitted when the pause is triggered by `account`.
     */
    event Paused(address account);

    /**
     * @dev Emitted when the pause is lifted by `account`.
     */
    event Unpaused(address account);

    /**
     * @dev The operation failed because the contract is paused.
     */
    error EnforcedPause();

    /**
     * @dev The operation failed because the contract is not paused.
     */
    error ExpectedPause();

    /**
     * @dev Modifier to make a function callable only when the contract is not paused.
     *
     * Requirements:
     *
     * - The contract must not be paused.
     */
    modifier whenNotPaused() {
        _requireNotPaused();
        _;
    }

    /**
     * @dev Modifier to make a function callable only when the contract is paused.
     *
     * Requirements:
     *
     * - The contract must be paused.
     */
    modifier whenPaused() {
        _requirePaused();
        _;
    }

    /**
     * @dev Returns true if the contract is paused, and false otherwise.
     */
    function paused() public view virtual returns (bool) {
        return _paused;
    }

    /**
     * @dev Throws if the contract is paused.
     */
    function _requireNotPaused() internal view virtual {
        if (paused()) {
            revert EnforcedPause();
        }
    }

    /**
     * @dev Throws if the contract is not paused.
     */
    function _requirePaused() internal view virtual {
        if (!paused()) {
            revert ExpectedPause();
        }
    }

    /**
     * @dev Triggers stopped state.
     *
     * Requirements:
     *
     * - The contract must not be paused.
     */
    function _pause() internal virtual whenNotPaused {
        _paused = true;
        emit Paused(_msgSender());
    }

    /**
     * @dev Returns to normal state.
     *
     * Requirements:
     *
     * - The contract must be paused.
     */
    function _unpause() internal virtual whenPaused {
        _paused = false;
        emit Unpaused(_msgSender());
    }
}

// File: src/VestingManager.sol


pragma solidity ^0.8.20;




/// @title Vesting Manager with Vesting Schedules
contract VestingManager is Ownable, Pausable {
    IERC20 public immutable token;
    uint256 public immutable tgeTimestamp;

    uint32 public constant PPM = 1_000_000; // 100%
    uint64 public constant MONTH = 30 days;
    uint64 public constant SEASON = 3 * MONTH;
    uint64 public constant YEAR = 12 * MONTH;

    struct Term {
        uint32 percentage;
        uint256 cliff;
        uint64 period;
        uint16 num;
        uint16 next;
    }

    struct VestingSchedule {
        address beneficiary;
        uint256 totalAmount;
        uint256 vestedAmount;
        uint256 termIndex;
        Term[] terms;
    }

    VestingSchedule[] private schedules;

    event ScheduleCreated(uint256 indexed id, uint256 totalAmount);
    event Vested(
        uint256 indexed id, uint256 indexed termIndex, uint256 indexed periodIdx, address beneficiary, uint256 amount
    );
    event BeneficiaryUpdated(uint256 indexed id, address indexed newBeneficiary);

    constructor(address _token, uint256 _tgeTimestamp, address[] memory beneficiaries) Ownable(msg.sender) {
        require(_token != address(0), "token zero");
        require(_tgeTimestamp > block.timestamp, "tge in past");
        require(beneficiaries.length == 10, "need 10 addresses");
        token = IERC20(_token);
        tgeTimestamp = _tgeTimestamp;

        uint256 A_device = 210_000_000 ether;
        uint256 A_node = 200_000_000 ether;
        uint256 A_hacker1 = 62_500_000 ether;
        uint256 A_hacker2 = 80_000_000 ether;
        uint256 A_pos = 65_000_000 ether;
        uint256 A_treasury = 65_000_000 ether;
        uint256 A_team = 140_000_000 ether;
        uint256 A_liq = 22_500_000 ether;
        uint256 A_airdrop = 75_000_000 ether;
        uint256 A_marketing = 80_000_000 ether;

        Term[] memory terms;
        {
            terms = new Term[](1);
            terms[0] = Term({percentage: PPM, cliff: 0, period: SEASON, num: 20, next: 0});
            _createScheduleInternal(beneficiaries[0], A_device, terms);
        }
        {
            terms = new Term[](1);
            terms[0] = Term({percentage: PPM, cliff: 0, period: SEASON, num: 20, next: 0});
            _createScheduleInternal(beneficiaries[1], A_node, terms);
        }
        {
            terms = new Term[](1);
            terms[0] = Term({percentage: PPM, cliff: YEAR, period: SEASON, num: 12, next: 0});
            _createScheduleInternal(beneficiaries[2], A_hacker1, terms);
        }
        {
            terms = new Term[](1);
            terms[0] = Term({percentage: PPM, cliff: YEAR, period: SEASON, num: 8, next: 0});
            _createScheduleInternal(beneficiaries[3], A_hacker2, terms);
        }
        {
            terms = new Term[](2);
            terms[0] = Term({percentage: 250_000, cliff: 0, period: 0, num: 1, next: 0});
            terms[1] = Term({percentage: 750_000, cliff: SEASON, period: SEASON, num: 20, next: 0});
            _createScheduleInternal(beneficiaries[4], A_pos, terms);
        }
        {
            terms = new Term[](2);
            terms[0] = Term({percentage: 400_000, cliff: 0, period: 0, num: 1, next: 0});
            terms[1] = Term({percentage: 600_000, cliff: SEASON, period: SEASON, num: 4, next: 0});
            _createScheduleInternal(beneficiaries[5], A_treasury, terms);
        }
        {
            terms = new Term[](1);
            terms[0] = Term({percentage: PPM, cliff: YEAR, period: SEASON, num: 12, next: 0});
            _createScheduleInternal(beneficiaries[6], A_team, terms);
        }
        {
            terms = new Term[](1);
            terms[0] = Term({percentage: PPM, cliff: 0, period: 0, num: 1, next: 0});
            _createScheduleInternal(beneficiaries[7], A_liq, terms);
        }
        {
            terms = new Term[](3);
            terms[0] = Term({percentage: 250_000, cliff: 0, period: 0, num: 1, next: 0});
            terms[1] = Term({percentage: 250_000, cliff: SEASON, period: 0, num: 1, next: 0});
            terms[2] = Term({percentage: 500_000, cliff: 2 * SEASON, period: 0, num: 1, next: 0});
            _createScheduleInternal(beneficiaries[8], A_airdrop, terms);
        }
        {
            terms = new Term[](1);
            terms[0] = Term({percentage: PPM, cliff: 0, period: 0, num: 1, next: 0});
            _createScheduleInternal(beneficiaries[9], A_marketing, terms);
        }
    }

    function updateBeneficiary(uint256 scheduleId, address newBeneficiary) external onlyOwner {
        require(scheduleId < schedules.length, "invalid index");
        require(newBeneficiary != address(0), "new beneficiary is zero");
        VestingSchedule storage s = schedules[scheduleId];
        require(s.beneficiary != newBeneficiary, "same beneficiary");
        s.beneficiary = newBeneficiary;
        emit BeneficiaryUpdated(scheduleId, newBeneficiary);
    }

    function _createScheduleInternal(address beneficiary, uint256 totalAmount, Term[] memory terms) internal {
        require(beneficiary != address(0), "beneficiary is zero");
        uint256 sumWeight = 0;
        for (uint256 i = 0; i < terms.length; ++i) {
            if (terms[i].period == 0) {
                require(terms[i].num == 1, "num must 1 when period==0");
            } else {
                require(terms[i].num > 0, "num zero");
            }
            sumWeight += terms[i].percentage;
        }
        require(sumWeight == PPM, "weights must sum to PPM");

        VestingSchedule storage s = schedules.push();
        s.beneficiary = beneficiary;
        s.totalAmount = totalAmount;
        s.vestedAmount = 0;
        s.termIndex = 0;
        for (uint256 i = 0; i < terms.length; ++i) {
            s.terms.push(terms[i]);
        }

        emit ScheduleCreated(schedules.length - 1, totalAmount);
        emit BeneficiaryUpdated(schedules.length - 1, beneficiary);
    }

    function claim(uint256 scheduleId) external whenNotPaused {
        require(scheduleId < schedules.length, "invalid index");
        VestingSchedule storage s = schedules[scheduleId];
        require(s.termIndex < s.terms.length, "invalid term index");
        Term storage t = s.terms[s.termIndex];
        uint256 termIdx = s.termIndex;
        uint256 periodIdx = t.next;
        require(periodIdx < t.num, "invalid period id");
        require(block.timestamp >= tgeTimestamp + t.cliff + t.period * periodIdx, "cliff not reached");
        uint256 amount = s.totalAmount * t.percentage / 1_000_000 / t.num;
        if (periodIdx + 1 == t.num && termIdx + 1 == s.terms.length) {
            amount = s.totalAmount - s.vestedAmount;
        }
        s.vestedAmount += amount;
        t.next += 1;
        if (periodIdx + 1 == t.num) {
            s.termIndex += 1;
        }
        require(token.transfer(s.beneficiary, amount), "transfer failed");

        emit Vested(scheduleId, termIdx, periodIdx, s.beneficiary, amount);
    }

    function pause() external onlyOwner {
        _pause();
    }

    function unpause() external onlyOwner {
        _unpause();
    }

    function emergencyWithdraw(uint256 amount) external onlyOwner {
        uint256 balance = token.balanceOf(address(this));
        require(amount > 0 && amount <= balance, "invalid amount");
        require(token.transfer(owner(), amount), "transfer failed");
    }

    function numOfSchedules() external view returns (uint256) {
        return schedules.length;
    }

    function getSchedule(uint256 scheduleId)
        external
        view
        returns (address beneficiary, uint256 totalAmount, uint256 vestedAmount, uint256 termIndex, Term[] memory terms)
    {
        require(scheduleId < schedules.length, "invalid index");
        VestingSchedule storage s = schedules[scheduleId];
        return (s.beneficiary, s.totalAmount, s.vestedAmount, s.termIndex, s.terms);
    }

    function claimable(uint256 scheduleId) external view returns (uint256) {
        require(scheduleId < schedules.length, "invalid index");
        VestingSchedule storage s = schedules[scheduleId];
        if (s.termIndex >= s.terms.length) {
            return 0;
        }
        Term storage t = s.terms[s.termIndex];
        if (t.next >= t.num) {
            return 0;
        }
        if (block.timestamp < tgeTimestamp + t.cliff + t.period * t.next) {
            return 0;
        }
        if (t.next + 1 == t.num && s.termIndex + 1 == s.terms.length) {
            return s.totalAmount - s.vestedAmount;
        }
        return s.totalAmount * t.percentage / 1_000_000 / t.num;
    }
}