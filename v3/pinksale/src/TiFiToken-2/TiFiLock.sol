// SPDX-License-Identifier: MIT


// File: contracts/TiFiToken.sol



pragma solidity ^0.8.9;

abstract contract Context {
    function _msgSender() internal view virtual returns (address payable) {
        return payable(msg.sender);
    }
}

/**
 * @dev Contract module which provides a basic access control mechanism, where
 * there is an account (an owner) that can be granted exclusive access to
 * specific functions.
 *
 * By default, the owner account will be the one that deploys the contract. This
 * can later be changed with {transferOwnership}.
 *
 * This module is used through inheritance. It will make available the modifier
 * `onlyOwner`, which can be applied to your functions to restrict their use to
 * the owner.
 */
contract Ownable is Context {
    address public _owner;

    event OwnershipTransferred(
        address indexed previousOwner,
        address indexed newOwner
    );

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
        require(_owner == _msgSender(), "Ownable: caller is not the owner");
        _;
    }

    /**
     * @dev Leaves the contract without owner. It will not be possible to call
     * `onlyOwner` functions anymore. Can only be called by the current owner.
     *
     * NOTE: Renouncing ownership will leave the contract without an owner,
     * thereby removing any functionality that is only available to the owner.
     */
    function renounceOwnership() public virtual onlyOwner {
        emit OwnershipTransferred(_owner, address(0));
        _owner = address(0);
    }

    /**
     * @dev Transfers ownership of the contract to a new account (`newOwner`).
     * Can only be called by the current owner.
     */
    function transferOwnership(address newOwner) public virtual onlyOwner {
        require(
            newOwner != address(0),
            "Ownable: new owner is the zero address"
        );
        emit OwnershipTransferred(_owner, newOwner);
        _owner = newOwner;
    }
}

/**
 * @dev Interface of the BEP20 standard as defined in the EIP.
 */
interface IBEP20 {
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
    function transfer(address recipient, uint256 amount)
        external
        returns (bool);

    /**
     * @dev Returns the remaining number of tokens that `spender` will be
     * allowed to spend on behalf of `owner` through {transferFrom}. This is
     * zero by default.
     *
     * This value changes when {approve} or {transferFrom} are called.
     */
    function allowance(address owner, address spender)
        external
        view
        returns (uint256);

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
    function transferFrom(
        address sender,
        address recipient,
        uint256 amount
    ) external returns (bool);

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
    event Approval(
        address indexed owner,
        address indexed spender,
        uint256 value
    );
}

/**
 * TiFiToken = The integrated Finance Token
 * A new type of contract that designed and implemented by TiFi Community
 */
contract TiFiToken is IBEP20, Context, Ownable {
    struct Values {
        uint256 rSendAmount;
        uint256 rReceiveAmount;
        uint256 rRflx;
        uint256 rBurn;
        uint256 tSendAmount;
        uint256 tReceiveAmount;
        uint256 tRflx;
        uint256 tReward;
        uint256 tBurn;
        uint256 tCmty;
    }
    event ApplyReward(address indexed account, uint256 reward);
    event SetCommunityAccount(address indexed account);
    event SetDBank(address indexed account);
    event UpdatePairs(address indexed account, bool enable);
    mapping(address => uint256) private _rOwned;
    mapping(address => uint256) private _tOwned;
    mapping(address => mapping(address => uint256)) private _allowances;
    mapping(address => bool) private _noFee;
    mapping(address => bool) private _pairs;
    address[] private _pairList;

    string private constant _NAME = "TiFi Token";
    string private constant _SYMBOL = "TIFI";
    uint256 private constant _DECIMALS = 18;
    address public constant ZERO_ADDR = address(0);
    address public CMTY_ADDR; // Community Address
    address public BANK_ADDR; // DBank Address

    uint256 private constant _MAX = ~uint256(0);
    uint256 private _DECIMALFACTOR = 10**_DECIMALS;
    uint256 private constant _GRANULARITY = 10000;

    uint256 private _tTotal = (10**15) * _DECIMALFACTOR; // Total supply: 1 Quadrillion
    uint256 private _rTotal = _MAX - (_MAX % _tTotal);
    uint256 private _rtRate = _rTotal / _tTotal;

    uint256 private _tRflxTotal;
    uint256 private _tBurnTotal;

    uint256 public SEND_REWARD = 100; // 1%
    uint256 public RECV_CHARGE = 200; // 2%
    uint256 public BUY_RATE = 100; // 1%
    uint256 public SELL_RATE = 200; // 2%
    uint256 public RFLX_RATE = 6000; // 60% of (charge - reward)
    uint256 public BURN_RATE = 2000; // 20% of (charge - reward)
    uint256 public CMTY_RATE = 2000; // 20% of (charge - reward)

    constructor() payable {
        _owner = _msgSender();
        CMTY_ADDR = _owner;
        BANK_ADDR = _owner;
        _rOwned[_owner] = _rTotal;
        _noFee[_owner] = true;
        _noFee[ZERO_ADDR] = true;
        _pairs[ZERO_ADDR] = true;

        _msgSender().transfer(msg.value);
        emit Transfer(ZERO_ADDR, _msgSender(), _tTotal);
    }

    function name() public pure returns (string memory) {
        return _NAME;
    }

    function symbol() public pure returns (string memory) {
        return _SYMBOL;
    }

    function decimals() public pure returns (uint8) {
        return uint8(_DECIMALS);
    }

    function totalSupply() public view override returns (uint256) {
        return _tTotal;
    }

    function balanceOf(address account) public view override returns (uint256) {
        if (_pairs[account] || account == ZERO_ADDR) return _tOwned[account];
        return tokenFromReflection(_rOwned[account]);
    }

    function transfer(address recipient, uint256 amount)
        external
        override
        returns (bool)
    {
        _transfer(_msgSender(), recipient, amount);
        return true;
    }

    function allowance(address owner, address spender)
        public
        view
        override
        returns (uint256)
    {
        return _allowances[owner][spender];
    }

    function approve(address spender, uint256 amount)
        external
        override
        returns (bool)
    {
        _approve(_msgSender(), spender, amount);
        return true;
    }

    function transferFrom(
        address sender,
        address recipient,
        uint256 amount
    ) external override returns (bool) {
        uint256 allow = _allowances[sender][_msgSender()];
        require(allow >= amount, "Transfer amount exceeds allowance");
        _transfer(sender, recipient, amount);
        _approve(sender, _msgSender(), allow - amount);
        return true;
    }

    function increaseAllowance(address spender, uint256 addedValue)
        public
        virtual
        returns (bool)
    {
        _approve(
            _msgSender(),
            spender,
            _allowances[_msgSender()][spender] + addedValue
        );
        return true;
    }

    function decreaseAllowance(address spender, uint256 subtractedValue)
        public
        virtual
        returns (bool)
    {
        uint256 allow = _allowances[_msgSender()][spender];
        require(allow >= subtractedValue, "Decreased allowance below zero");
        _approve(_msgSender(), spender, allow - subtractedValue);
        return true;
    }

    function hasFee(address account) public view returns (bool) {
        return !_noFee[account];
    }

    function totalRflx() public view returns (uint256) {
        return _tRflxTotal;
    }

    function totalBurn() public view returns (uint256) {
        return _tBurnTotal;
    }

    function reflectionFromToken(uint256 tAmount)
        public
        view
        returns (uint256)
    {
        require(tAmount <= _tTotal, "Amount must be less than supply");
        return tAmount * _rtRate;
    }

    function tokenFromReflection(uint256 rAmount)
        public
        view
        returns (uint256)
    {
        require(rAmount <= _rTotal, "Amount must be less than reflections");
        return rAmount / _rtRate;
    }

    function setCommunityAccount(address account) external onlyOwner {
        require(CMTY_ADDR != account, "The same address is already set");
        if (
            BANK_ADDR == owner() ||
            BANK_ADDR == ZERO_ADDR ||
            BANK_ADDR == CMTY_ADDR
        ) {
            // If bank address is not set yet, set to community address.
            // If bank address is community address, the bank address is set as well (Bank/Community Affiliation).
            BANK_ADDR = account;
        }
        if (CMTY_ADDR != owner() && CMTY_ADDR != BANK_ADDR) {
            _noFee[CMTY_ADDR] = false; // Re-enable fee to original community address
        }
        CMTY_ADDR = account;
        _noFee[account] = true; // Disable fee for new community address
        emit SetCommunityAccount(account);
    }

    function setDBank(address account) external onlyOwner {
        // Set DBank's smart contract address
        require(BANK_ADDR != account, "The same address is already set");
        _noFee[BANK_ADDR] = false;
        BANK_ADDR = account;
        _noFee[BANK_ADDR] = true;
        emit SetDBank(account);
    }

    function setFee(address account, bool enable) external onlyOwner {
        require(_noFee[account] == enable, "Already set");
        _noFee[account] = (!enable);
    }

    function setPairAddress(address account) external onlyOwner {
        require(
            !_pairs[account] && account != ZERO_ADDR,
            "Cannot set pair address"
        );
        if (_rOwned[account] > 0) {
            _tOwned[account] = tokenFromReflection(_rOwned[account]);
        }
        _pairs[account] = true;
        _pairList.push(account);
        _updateRTRate();
        emit UpdatePairs(account, true);
    }

    function unsetPairAddress(address account) external onlyOwner {
        require(
            _pairs[account] && account != ZERO_ADDR,
            "Cannot remove pair address"
        );
        for (uint256 i = 0; i < _pairList.length; i++) {
            if (_pairList[i] == account) {
                _pairList[i] = _pairList[_pairList.length - 1];
                _tOwned[account] = 0;
                _pairs[account] = false;
                _pairList.pop();
                _updateRTRate();
                break;
            }
        }
        emit UpdatePairs(account, false);
    }

    function getRewardCharge(address sender, address recipient)
        public
        view
        returns (uint256, uint256)
    {
        require(
            _allowances[sender][_msgSender()] > 0 ||
                sender == _msgSender() ||
                recipient == _msgSender(),
            "Ineligible to view reward or charge"
        );
        if (_noFee[sender] || _noFee[recipient]) {
            return (0, 0);
        }
        if (_pairs[sender]) {
            return (0, BUY_RATE);
        }
        if (_pairs[recipient]) {
            return (0, SELL_RATE);
        }
        return (SEND_REWARD, RECV_CHARGE);
    }

    function _approve(
        address owner,
        address spender,
        uint256 amount
    ) private {
        require(owner != address(0), "Approve from the zero address");
        require(spender != address(0), "Approve to the zero address");

        _allowances[owner][spender] = amount;
        emit Approval(owner, spender, amount);
    }

    function _transfer(
        address sender,
        address recipient,
        uint256 amount
    ) private returns (bool) {
        require(
            sender != ZERO_ADDR && recipient != ZERO_ADDR,
            "Transfer from/to the zero address"
        );
        require(amount > 0, "Transfer amount must be greater than zero");
        require(balanceOf(sender) >= amount, "Transfer amount exceeds balance");

        (uint256 reward, uint256 charge) = getRewardCharge(sender, recipient);
        Values memory v = _getValues(amount, reward, charge);
        _rOwned[sender] -= v.rSendAmount;
        _rOwned[recipient] += v.rReceiveAmount;
        if (_pairs[sender]) _tOwned[sender] -= v.tSendAmount;
        if (_pairs[recipient]) _tOwned[recipient] += v.tReceiveAmount;
        _reflectFee(v, sender);
        _updateRTRate();
        emit Transfer(sender, recipient, v.tReceiveAmount);
        emit ApplyReward(recipient, v.tReward);
        return true;
    }

    function _reflectFee(Values memory v, address sender) private {
        _sendToBank(v.tCmty, sender);
        _rTotal -= (v.rRflx + v.rBurn);
        _tRflxTotal += v.tRflx;
        _tBurnTotal += v.tBurn;
        _tTotal -= v.tBurn;
        emit Transfer(address(this), address(0), v.tBurn);
    }

    function _getValues(
        uint256 tAmount,
        uint256 rewardRate,
        uint256 chargeRate
    ) private view returns (Values memory) {
        (
            uint256 tCharge,
            uint256 tReward,
            uint256 tRflx,
            uint256 tBurn,
            uint256 tCmty
        ) = _getTBasics(tAmount, rewardRate, chargeRate);
        uint256 tSendAmount = tAmount - tReward;
        uint256 tReceiveAmount = tAmount - tCharge;
        (uint256 rSendAmount, uint256 rRflx) = _getRBasics(tSendAmount, tRflx);
        uint256 rReceiveAmount = _getRReceiveAmount(
            rSendAmount,
            rRflx,
            tBurn,
            tCmty
        );
        uint256 rBurn = tBurn * _rtRate;
        return
            Values(
                rSendAmount,
                rReceiveAmount,
                rRflx,
                rBurn,
                tSendAmount,
                tReceiveAmount,
                tRflx,
                tReward,
                tBurn,
                tCmty
            );
    }

    function _getTBasics(
        uint256 tAmount,
        uint256 rewardRate,
        uint256 chargeRate
    )
        private
        view
        returns (
            uint256,
            uint256,
            uint256,
            uint256,
            uint256
        )
    {
        uint256 tCharge = (tAmount * chargeRate) / _GRANULARITY;
        uint256 tReward = (tAmount * rewardRate) / _GRANULARITY;
        uint256 income = tCharge - tReward;
        uint256 tRflx = (income * RFLX_RATE) / _GRANULARITY;
        uint256 tBurn = (income * BURN_RATE) / _GRANULARITY;
        uint256 tCmty = (income * CMTY_RATE) / _GRANULARITY;
        return (tCharge, tReward, tRflx, tBurn, tCmty);
    }

    function _getRBasics(uint256 tSendAmount, uint256 tRflx)
        private
        view
        returns (uint256, uint256)
    {
        return (tSendAmount * _rtRate, tRflx * _rtRate);
    }

    function _getRReceiveAmount(
        uint256 rSendAmount,
        uint256 rRflx,
        uint256 tBurn,
        uint256 tCmty
    ) private view returns (uint256) {
        return rSendAmount - rRflx - tBurn * _rtRate - tCmty * _rtRate;
    }

    function _updateRTRate() private {
        uint256 rSupply = _rTotal;
        uint256 tSupply = _tTotal;
        for (uint256 i = 0; i < _pairList.length; i++) {
            if (
                _rOwned[_pairList[i]] > rSupply ||
                _tOwned[_pairList[i]] > tSupply
            ) {
                _rtRate = _rTotal / _tTotal;
                return;
            }
            rSupply -= _rOwned[_pairList[i]];
            tSupply -= _tOwned[_pairList[i]];
        }
        _rtRate = (rSupply < _rTotal / _tTotal)
            ? _rTotal / _tTotal
            : rSupply / tSupply;
    }

    function _sendToBank(uint256 tCmty, address sender) private {
        _rOwned[BANK_ADDR] += tCmty * _rtRate;
        if (_pairs[BANK_ADDR]) _tOwned[BANK_ADDR] += tCmty;
        emit Transfer(sender, BANK_ADDR, tCmty);
    }

    function _burn(address account, uint256 amount) internal {
        require(account != ZERO_ADDR, "Burn from the zero address");
        require(balanceOf(account) >= amount, "Burn amount exceeds balance");
        _rOwned[account] -= amount * _rtRate;
        if (_pairs[account]) _tOwned[account] -= amount;
        uint256 rBurn = amount * _rtRate;
        _rTotal -= rBurn;
        _tBurnTotal += amount;
        _tTotal -= amount;
        _updateRTRate();
        emit Transfer(account, ZERO_ADDR, amount);
    }

    function burn(uint256 amount) external {
        _burn(_msgSender(), amount);
    }
}

// File: @openzeppelin/contracts/security/ReentrancyGuard.sol


// OpenZeppelin Contracts v4.4.1 (security/ReentrancyGuard.sol)

pragma solidity ^0.8.0;

/**
 * @dev Contract module that helps prevent reentrant calls to a function.
 *
 * Inheriting from `ReentrancyGuard` will make the {nonReentrant} modifier
 * available, which can be applied to functions to make sure there are no nested
 * (reentrant) calls to them.
 *
 * Note that because there is a single `nonReentrant` guard, functions marked as
 * `nonReentrant` may not call one another. This can be worked around by making
 * those functions `private`, and then adding `external` `nonReentrant` entry
 * points to them.
 *
 * TIP: If you would like to learn more about reentrancy and alternative ways
 * to protect against it, check out our blog post
 * https://blog.openzeppelin.com/reentrancy-after-istanbul/[Reentrancy After Istanbul].
 */
abstract contract ReentrancyGuard {
    // Booleans are more expensive than uint256 or any type that takes up a full
    // word because each write operation emits an extra SLOAD to first read the
    // slot's contents, replace the bits taken up by the boolean, and then write
    // back. This is the compiler's defense against contract upgrades and
    // pointer aliasing, and it cannot be disabled.

    // The values being non-zero value makes deployment a bit more expensive,
    // but in exchange the refund on every call to nonReentrant will be lower in
    // amount. Since refunds are capped to a percentage of the total
    // transaction's gas, it is best to keep them low in cases like this one, to
    // increase the likelihood of the full refund coming into effect.
    uint256 private constant _NOT_ENTERED = 1;
    uint256 private constant _ENTERED = 2;

    uint256 private _status;

    constructor() {
        _status = _NOT_ENTERED;
    }

    /**
     * @dev Prevents a contract from calling itself, directly or indirectly.
     * Calling a `nonReentrant` function from another `nonReentrant`
     * function is not supported. It is possible to prevent this from happening
     * by making the `nonReentrant` function external, and making it call a
     * `private` function that does the actual work.
     */
    modifier nonReentrant() {
        // On the first call to nonReentrant, _notEntered will be true
        require(_status != _ENTERED, "ReentrancyGuard: reentrant call");

        // Any calls to nonReentrant after this point will fail
        _status = _ENTERED;

        _;

        // By storing the original value once again, a refund is triggered (see
        // https://eips.ethereum.org/EIPS/eip-2200)
        _status = _NOT_ENTERED;
    }
}

// File: contracts/TiFiLock.sol


pragma solidity ^0.8.0;



contract TiFiLock is ReentrancyGuard, Ownable {
    struct LockRecord {
        uint256 principal;
        uint256 shares; // shares about lock pool token
        uint256 reward; // the reward the user can get when unlock
        uint256 rate; // reward rate
        uint256 unlockTs; // The timestamp when the user can unlock
    }
    struct LockTerm {
        uint256 period;
        uint256 minAmount;
        uint256 rate;
    }

    uint256 public constant ONE_YEAR = 3600 * 24 * 365;
    uint256 public constant _GRANULARITY = 1e18;
    TiFiToken private TIFI;
    uint256 public totalTiFi; // Total TIFI Amount
    uint256 public totalShare; // Total Share Amount
    uint256 public totalReward; // Total Reward Amount
    uint256 public rewardPool; // Reward pool share amount

    LockTerm[] public lockTerms;

    // account => timestamp => LockRecord
    mapping(address => mapping(uint256 => LockRecord)) public lockRecords;
    // address => array of timestamps
    mapping(address => uint256[]) private records;

    constructor(TiFiToken _TIFI) {
        _owner = msg.sender;
        TIFI = _TIFI;

        // Define Lock terms
        addLockTerm(ONE_YEAR, 1e29, _GRANULARITY / 4); // 1y/100b/25%
        addLockTerm(ONE_YEAR, 2e29, _GRANULARITY / 2); // 1y/200b/50%
        addLockTerm(ONE_YEAR, 3e29, (3 * _GRANULARITY) / 4); // 1y/300b/75%
        addLockTerm(ONE_YEAR, 4e29, _GRANULARITY); // 1y/400b/100%
    }

    function addLockTerm(
        uint256 period,
        uint256 minAmount,
        uint256 rate
    ) public onlyOwner {
        for (uint256 i = 0; i < lockTerms.length; i++) {
            LockTerm storage term = lockTerms[i];
            if (term.period == period && term.minAmount == minAmount) {
                // Update in place
                term.rate = rate;
                return;
            }
        }
        lockTerms.push(LockTerm(period, minAmount, rate));
    }

    function removeLockTerm(uint256 period, uint256 minAmount)
        public
        onlyOwner
    {
        bool found = false;
        for (uint256 i = 0; i < lockTerms.length; i++) {
            if (
                lockTerms[i].period == period &&
                lockTerms[i].minAmount == minAmount
            ) {
                lockTerms[i] = lockTerms[lockTerms.length - 1];
                lockTerms.pop();
                found = true;
                break;
            }
        }
        require(found, "TIFI: NOT_FOUND");
    }

    // Get terms for current lock amount
    function getTerms(uint256 amount) public view returns (LockTerm[] memory) {
        LockTerm[] memory terms = new LockTerm[](lockTerms.length);
        uint256 count = 0;
        for (uint256 i = 0; i < lockTerms.length; i++) {
            if (amount >= lockTerms[i].minAmount) {
                terms[count++] = lockTerms[i];
            }
        }
        LockTerm[] memory ret = new LockTerm[](count);
        for (uint256 i = 0; i < count; i++) {
            ret[i] = terms[i];
        }
        return ret;
    }

    // 1 share can be convert to how many TIFI?
    function shareRate() public view returns (uint256) {
        require(totalShare > 0, "TIFI: NO_FUND");
        return (_GRANULARITY * TIFI.balanceOf(address(this))) / totalShare;
    }

    function addReward(uint256 amount) external nonReentrant {
        require(amount > 0, "TIFI: INVALID_AMOUNT");
        uint256 sAmount = totalShare == 0
            ? amount
            : (amount * _GRANULARITY) / shareRate();
        TIFI.transferFrom(msg.sender, address(this), amount);
        totalShare += sAmount;
        rewardPool += sAmount;
    }

    function removeReward(uint256 amount) external onlyOwner nonReentrant {
        if (totalShare == 0) {
            TIFI.transfer(msg.sender, amount);
            return;
        }
        uint256 sRate = shareRate();
        require(
            amount > 0 && (rewardPool * sRate) / _GRANULARITY >= amount,
            "TIFI: INVALID_AMOUNT"
        );
        uint256 sAmount = totalShare == 0
            ? amount
            : (amount * _GRANULARITY) / shareRate();
        TIFI.transfer(msg.sender, amount);
        rewardPool -= sAmount;
        totalShare -= sAmount;
    }

    function deposit(
        uint256 period,
        uint256 minAmount,
        uint256 amount
    ) external nonReentrant {
        // Step1: Get Exact Term for period and minAmount
        require(minAmount <= amount, "TIFI: INSUFFICIENT_AMOUNT");
        LockTerm memory term;
        for (uint256 i = 0; i < lockTerms.length; i++) {
            if (
                lockTerms[i].period == period &&
                lockTerms[i].minAmount == minAmount
            ) {
                term = lockTerms[i];
            }
        }
        require(term.period == period && term.rate > 0, "TIFI: TERM_NOT_FOUND");

        // Step 2: Calcuate share amount, reward amount and TIFI amount
        uint256 sAmount = totalShare == 0
            ? amount
            : (amount * _GRANULARITY) / shareRate(); // Share amount
        totalShare += sAmount;
        uint256 rAmount = (amount * term.rate) / _GRANULARITY; // Reward amount
        totalReward += rAmount;
        totalTiFi += amount;

        // Step 3: Update records
        uint256 ts = block.timestamp;
        require(
            lockRecords[msg.sender][ts].principal == 0,
            "TIFI: RECORD_ALREADY_EXIST"
        );
        lockRecords[msg.sender][ts] = LockRecord(
            amount,
            sAmount,
            rAmount,
            term.rate,
            ts + period
        );
        records[msg.sender].push(ts);
        TIFI.transferFrom(msg.sender, address(this), amount);
    }

    function withdraw(uint256 timestamp) external nonReentrant {
        // Step 1: Check if the record exists for msg.sender
        LockRecord memory record = lockRecords[msg.sender][timestamp];
        require(record.principal > 0, "TIFI: RECORD_NOT_FOUND");
        require(
            record.unlockTs > 0 && block.timestamp >= record.unlockTs,
            "TIFI: CANNOT_UNLOCK"
        );

        // Step 2: Calculate the amount of TIFI to be paid to user
        uint256 sRate = shareRate();
        uint256 toBePaid = (record.shares * sRate) /
            _GRANULARITY +
            record.reward;

        // Step 3: Calculate the shares to be deducted from or added to reward.
        uint256 sReward = (record.reward * _GRANULARITY) / sRate;

        // Step 4: Remove the timestamp from records
        uint256[] storage ts = records[msg.sender];
        for (uint256 i = 0; i < ts.length; i++) {
            if (ts[i] == timestamp) {
                ts[i] = ts[ts.length - 1];
                ts.pop();
                break;
            }
        }
        // Step 5: update global variables
        require(rewardPool >= sReward, "TIFI: INSUFFICIENT_REWARD");
        totalTiFi -= record.principal;
        totalReward -= record.reward;
        totalShare -= (record.shares + sReward);
        rewardPool -= sReward;

        // Step 6: Do the transfer
        TIFI.transfer(msg.sender, toBePaid);
    }

    // Return the total reward size and the available tokens for reward payment
    function getStats() external view onlyOwner returns (uint256, uint256) {
        return (totalReward, (rewardPool * shareRate()) / _GRANULARITY);
    }

    // Get lock records for an account
    function getRecords()
        public
        view
        returns (
            uint256[] memory,
            uint256[] memory,
            uint256[] memory,
            uint256[] memory,
            uint256[] memory
        )
    {
        uint256 len = records[msg.sender].length;
        uint256[] memory startTs = new uint256[](len);
        uint256[] memory endTs = new uint256[](len);
        uint256[] memory principal = new uint256[](len);
        uint256[] memory reflection = new uint256[](len);
        uint256[] memory reward = new uint256[](len);
        uint256 rate = shareRate();
        for (uint256 i = 0; i < len; i++) {
            startTs[i] = records[msg.sender][i];
            LockRecord memory r = lockRecords[msg.sender][startTs[i]];
            endTs[i] = r.unlockTs;
            principal[i] = r.principal;
            reflection[i] = r.shares * rate <= _GRANULARITY * r.principal
                ? 0
                : (r.shares * rate) / _GRANULARITY - r.principal;
            reward[i] = r.reward;
        }
        return (startTs, endTs, principal, reflection, reward);
    }
}