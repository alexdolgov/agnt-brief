// File: @openzeppelin/contracts/token/ERC20/IERC20.sol


// OpenZeppelin Contracts (last updated v5.0.0) (token/ERC20/IERC20.sol)

pragma solidity ^0.8.20;

/**
 * @dev Interface of the ERC20 standard as defined in the EIP.
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

// File: @openzeppelin/contracts/interfaces/IERC20.sol


// OpenZeppelin Contracts (last updated v5.0.0) (interfaces/IERC20.sol)

pragma solidity ^0.8.20;


// File: contracts/KingdomLocker.sol


pragma solidity ^0.8.20;


error NotMultisig();
error NotAuthorized();
error NoDelegation();
error Zero();

contract KingdomLocker {
    address private multisig;
    IERC20 private token;

    modifier onlyMultisig() {
        if (msg.sender != multisig) revert NotMultisig();
        _;
    }

    constructor(address _multisig, IERC20 _token) {
        multisig = _multisig;
        token = _token;
    }

    struct Lock {
        address user;
        uint256 amount;
        uint256 start;
        uint256 end;
        uint256 claimed;
    }

    mapping(address => Lock[]) private lockInfo;
    mapping(address => address) private delegate;
    mapping(address => bool) private enabledDelegation;

    function createLocks(
        address[] calldata _lockOwner,
        uint256[] calldata _amount,
        uint256[] calldata _lengthInSeconds
    ) external onlyMultisig {
        for (uint256 i = 0; i < _lockOwner.length; ++i) {
            if (!(_amount[i] > 0) || !(_lengthInSeconds[i] > 0)) revert Zero();
            token.transferFrom(msg.sender, address(this), _amount[i]);
            uint256 lengthInSeconds = _lengthInSeconds[i];
            lockInfo[multisig].push(
                Lock(
                    _lockOwner[i],
                    _amount[i],
                    block.timestamp,
                    block.timestamp + lengthInSeconds,
                    0
                )
            );
        }
    }

    ///ungated loop claim
    function claimAndRelease() external {
        uint256 numberOfLocks = lockInfo[multisig].length;
        for (uint256 i = 0; i < numberOfLocks; ++i) {
            _claim(i);
        }
    }

    function enableDelegationTo(address _delegatedTo) external {
        if (!enabledDelegation[msg.sender])
            enabledDelegation[msg.sender] = true;
        delegate[msg.sender] = _delegatedTo;
    }

    function disableDelegation() external {
        if (!enabledDelegation[msg.sender]) revert NoDelegation();
        enabledDelegation[msg.sender] = false;
        delete delegate[msg.sender];
    }

    /// multisig gated functions
    function backstop(
        address _token,
        uint256 _amount,
        bool _all
    ) external onlyMultisig {
        if (_all) {
            IERC20(_token).transfer(
                multisig,
                IERC20(_token).balanceOf(address(this))
            );
        } else {
            IERC20(_token).transfer(multisig, _amount);
        }
    }

    function burnLock(uint256 index) external onlyMultisig {
        token.transfer(
            multisig,
            lockInfo[multisig][index].amount - lockInfo[multisig][index].claimed
        );
        delete lockInfo[multisig][index];
    }

    function forceDelegate(address _user, address _newDelegate)
        external
        onlyMultisig
    {
        if (!enabledDelegation[_user]) enabledDelegation[_user] = true;
        delegate[_user] = _newDelegate;
    }

    function forceUndelegate(address _user) external onlyMultisig {
        enabledDelegation[_user] = false;
        delete delegate[_user];
    }

    /// internal claim function
    function _claim(uint256 index) internal {
        uint256 claimAmount = _available(lockInfo[multisig][index]);
        lockInfo[multisig][index].claimed += claimAmount;
        address user = lockInfo[multisig][index].user;
        if (enabledDelegation[user]) {
            user = delegate[user];
        }
        token.transfer(user, claimAmount);
    }

    /// internal view functions
    function _available(Lock memory lock) internal view returns (uint256) {
        return _released(lock) - lock.claimed;
    }

    function _released(Lock memory lock) internal view returns (uint256) {
        if (block.timestamp >= lock.end) return lock.amount;
        uint256 duration = lock.end - lock.start;
        uint256 currentPassed = block.timestamp - lock.start;
        uint256 released = (lock.amount * currentPassed) / duration;
        return released;
    }
}