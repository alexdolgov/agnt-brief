// ============================================================
// FILE: @openzeppelin/contracts/security/ReentrancyGuard.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (security/ReentrancyGuard.sol)

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
        _nonReentrantBefore();
        _;
        _nonReentrantAfter();
    }

    function _nonReentrantBefore() private {
        // On the first call to nonReentrant, _status will be _NOT_ENTERED
        require(_status != _ENTERED, "ReentrancyGuard: reentrant call");

        // Any calls to nonReentrant after this point will fail
        _status = _ENTERED;
    }

    function _nonReentrantAfter() private {
        // By storing the original value once again, a refund is triggered (see
        // https://eips.ethereum.org/EIPS/eip-2200)
        _status = _NOT_ENTERED;
    }

    /**
     * @dev Returns true if the reentrancy guard is currently set to "entered", which indicates there is a
     * `nonReentrant` function in the call stack.
     */
    function _reentrancyGuardEntered() internal view returns (bool) {
        return _status == _ENTERED;
    }
}

// ============================================================
// FILE: @openzeppelin/contracts/token/ERC20/ERC20.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (token/ERC20/ERC20.sol)

pragma solidity ^0.8.0;

import "./IERC20.sol";
import "./extensions/IERC20Metadata.sol";
import "../../utils/Context.sol";

/**
 * @dev Implementation of the {IERC20} interface.
 *
 * This implementation is agnostic to the way tokens are created. This means
 * that a supply mechanism has to be added in a derived contract using {_mint}.
 * For a generic mechanism see {ERC20PresetMinterPauser}.
 *
 * TIP: For a detailed writeup see our guide
 * https://forum.openzeppelin.com/t/how-to-implement-erc20-supply-mechanisms/226[How
 * to implement supply mechanisms].
 *
 * The default value of {decimals} is 18. To change this, you should override
 * this function so it returns a different value.
 *
 * We have followed general OpenZeppelin Contracts guidelines: functions revert
 * instead returning `false` on failure. This behavior is nonetheless
 * conventional and does not conflict with the expectations of ERC20
 * applications.
 *
 * Additionally, an {Approval} event is emitted on calls to {transferFrom}.
 * This allows applications to reconstruct the allowance for all accounts just
 * by listening to said events. Other implementations of the EIP may not emit
 * these events, as it isn't required by the specification.
 *
 * Finally, the non-standard {decreaseAllowance} and {increaseAllowance}
 * functions have been added to mitigate the well-known issues around setting
 * allowances. See {IERC20-approve}.
 */
contract ERC20 is Context, IERC20, IERC20Metadata {
    mapping(address => uint256) private _balances;

    mapping(address => mapping(address => uint256)) private _allowances;

    uint256 private _totalSupply;

    string private _name;
    string private _symbol;

    /**
     * @dev Sets the values for {name} and {symbol}.
     *
     * All two of these values are immutable: they can only be set once during
     * construction.
     */
    constructor(string memory name_, string memory symbol_) {
        _name = name_;
        _symbol = symbol_;
    }

    /**
     * @dev Returns the name of the token.
     */
    function name() public view virtual override returns (string memory) {
        return _name;
    }

    /**
     * @dev Returns the symbol of the token, usually a shorter version of the
     * name.
     */
    function symbol() public view virtual override returns (string memory) {
        return _symbol;
    }

    /**
     * @dev Returns the number of decimals used to get its user representation.
     * For example, if `decimals` equals `2`, a balance of `505` tokens should
     * be displayed to a user as `5.05` (`505 / 10 ** 2`).
     *
     * Tokens usually opt for a value of 18, imitating the relationship between
     * Ether and Wei. This is the default value returned by this function, unless
     * it's overridden.
     *
     * NOTE: This information is only used for _display_ purposes: it in
     * no way affects any of the arithmetic of the contract, including
     * {IERC20-balanceOf} and {IERC20-transfer}.
     */
    function decimals() public view virtual override returns (uint8) {
        return 18;
    }

    /**
     * @dev See {IERC20-totalSupply}.
     */
    function totalSupply() public view virtual override returns (uint256) {
        return _totalSupply;
    }

    /**
     * @dev See {IERC20-balanceOf}.
     */
    function balanceOf(address account) public view virtual override returns (uint256) {
        return _balances[account];
    }

    /**
     * @dev See {IERC20-transfer}.
     *
     * Requirements:
     *
     * - `to` cannot be the zero address.
     * - the caller must have a balance of at least `amount`.
     */
    function transfer(address to, uint256 amount) public virtual override returns (bool) {
        address owner = _msgSender();
        _transfer(owner, to, amount);
        return true;
    }

    /**
     * @dev See {IERC20-allowance}.
     */
    function allowance(address owner, address spender) public view virtual override returns (uint256) {
        return _allowances[owner][spender];
    }

    /**
     * @dev See {IERC20-approve}.
     *
     * NOTE: If `amount` is the maximum `uint256`, the allowance is not updated on
     * `transferFrom`. This is semantically equivalent to an infinite approval.
     *
     * Requirements:
     *
     * - `spender` cannot be the zero address.
     */
    function approve(address spender, uint256 amount) public virtual override returns (bool) {
        address owner = _msgSender();
        _approve(owner, spender, amount);
        return true;
    }

    /**
     * @dev See {IERC20-transferFrom}.
     *
     * Emits an {Approval} event indicating the updated allowance. This is not
     * required by the EIP. See the note at the beginning of {ERC20}.
     *
     * NOTE: Does not update the allowance if the current allowance
     * is the maximum `uint256`.
     *
     * Requirements:
     *
     * - `from` and `to` cannot be the zero address.
     * - `from` must have a balance of at least `amount`.
     * - the caller must have allowance for ``from``'s tokens of at least
     * `amount`.
     */
    function transferFrom(address from, address to, uint256 amount) public virtual override returns (bool) {
        address spender = _msgSender();
        _spendAllowance(from, spender, amount);
        _transfer(from, to, amount);
        return true;
    }

    /**
     * @dev Atomically increases the allowance granted to `spender` by the caller.
     *
     * This is an alternative to {approve} that can be used as a mitigation for
     * problems described in {IERC20-approve}.
     *
     * Emits an {Approval} event indicating the updated allowance.
     *
     * Requirements:
     *
     * - `spender` cannot be the zero address.
     */
    function increaseAllowance(address spender, uint256 addedValue) public virtual returns (bool) {
        address owner = _msgSender();
        _approve(owner, spender, allowance(owner, spender) + addedValue);
        return true;
    }

    /**
     * @dev Atomically decreases the allowance granted to `spender` by the caller.
     *
     * This is an alternative to {approve} that can be used as a mitigation for
     * problems described in {IERC20-approve}.
     *
     * Emits an {Approval} event indicating the updated allowance.
     *
     * Requirements:
     *
     * - `spender` cannot be the zero address.
     * - `spender` must have allowance for the caller of at least
     * `subtractedValue`.
     */
    function decreaseAllowance(address spender, uint256 subtractedValue) public virtual returns (bool) {
        address owner = _msgSender();
        uint256 currentAllowance = allowance(owner, spender);
        require(currentAllowance >= subtractedValue, "ERC20: decreased allowance below zero");
        unchecked {
            _approve(owner, spender, currentAllowance - subtractedValue);
        }

        return true;
    }

    /**
     * @dev Moves `amount` of tokens from `from` to `to`.
     *
     * This internal function is equivalent to {transfer}, and can be used to
     * e.g. implement automatic token fees, slashing mechanisms, etc.
     *
     * Emits a {Transfer} event.
     *
     * Requirements:
     *
     * - `from` cannot be the zero address.
     * - `to` cannot be the zero address.
     * - `from` must have a balance of at least `amount`.
     */
    function _transfer(address from, address to, uint256 amount) internal virtual {
        require(from != address(0), "ERC20: transfer from the zero address");
        require(to != address(0), "ERC20: transfer to the zero address");

        _beforeTokenTransfer(from, to, amount);

        uint256 fromBalance = _balances[from];
        require(fromBalance >= amount, "ERC20: transfer amount exceeds balance");
        unchecked {
            _balances[from] = fromBalance - amount;
            // Overflow not possible: the sum of all balances is capped by totalSupply, and the sum is preserved by
            // decrementing then incrementing.
            _balances[to] += amount;
        }

        emit Transfer(from, to, amount);

        _afterTokenTransfer(from, to, amount);
    }

    /** @dev Creates `amount` tokens and assigns them to `account`, increasing
     * the total supply.
     *
     * Emits a {Transfer} event with `from` set to the zero address.
     *
     * Requirements:
     *
     * - `account` cannot be the zero address.
     */
    function _mint(address account, uint256 amount) internal virtual {
        require(account != address(0), "ERC20: mint to the zero address");

        _beforeTokenTransfer(address(0), account, amount);

        _totalSupply += amount;
        unchecked {
            // Overflow not possible: balance + amount is at most totalSupply + amount, which is checked above.
            _balances[account] += amount;
        }
        emit Transfer(address(0), account, amount);

        _afterTokenTransfer(address(0), account, amount);
    }

    /**
     * @dev Destroys `amount` tokens from `account`, reducing the
     * total supply.
     *
     * Emits a {Transfer} event with `to` set to the zero address.
     *
     * Requirements:
     *
     * - `account` cannot be the zero address.
     * - `account` must have at least `amount` tokens.
     */
    function _burn(address account, uint256 amount) internal virtual {
        require(account != address(0), "ERC20: burn from the zero address");

        _beforeTokenTransfer(account, address(0), amount);

        uint256 accountBalance = _balances[account];
        require(accountBalance >= amount, "ERC20: burn amount exceeds balance");
        unchecked {
            _balances[account] = accountBalance - amount;
            // Overflow not possible: amount <= accountBalance <= totalSupply.
            _totalSupply -= amount;
        }

        emit Transfer(account, address(0), amount);

        _afterTokenTransfer(account, address(0), amount);
    }

    /**
     * @dev Sets `amount` as the allowance of `spender` over the `owner` s tokens.
     *
     * This internal function is equivalent to `approve`, and can be used to
     * e.g. set automatic allowances for certain subsystems, etc.
     *
     * Emits an {Approval} event.
     *
     * Requirements:
     *
     * - `owner` cannot be the zero address.
     * - `spender` cannot be the zero address.
     */
    function _approve(address owner, address spender, uint256 amount) internal virtual {
        require(owner != address(0), "ERC20: approve from the zero address");
        require(spender != address(0), "ERC20: approve to the zero address");

        _allowances[owner][spender] = amount;
        emit Approval(owner, spender, amount);
    }

    /**
     * @dev Updates `owner` s allowance for `spender` based on spent `amount`.
     *
     * Does not update the allowance amount in case of infinite allowance.
     * Revert if not enough allowance is available.
     *
     * Might emit an {Approval} event.
     */
    function _spendAllowance(address owner, address spender, uint256 amount) internal virtual {
        uint256 currentAllowance = allowance(owner, spender);
        if (currentAllowance != type(uint256).max) {
            require(currentAllowance >= amount, "ERC20: insufficient allowance");
            unchecked {
                _approve(owner, spender, currentAllowance - amount);
            }
        }
    }

    /**
     * @dev Hook that is called before any transfer of tokens. This includes
     * minting and burning.
     *
     * Calling conditions:
     *
     * - when `from` and `to` are both non-zero, `amount` of ``from``'s tokens
     * will be transferred to `to`.
     * - when `from` is zero, `amount` tokens will be minted for `to`.
     * - when `to` is zero, `amount` of ``from``'s tokens will be burned.
     * - `from` and `to` are never both zero.
     *
     * To learn more about hooks, head to xref:ROOT:extending-contracts.adoc#using-hooks[Using Hooks].
     */
    function _beforeTokenTransfer(address from, address to, uint256 amount) internal virtual {}

    /**
     * @dev Hook that is called after any transfer of tokens. This includes
     * minting and burning.
     *
     * Calling conditions:
     *
     * - when `from` and `to` are both non-zero, `amount` of ``from``'s tokens
     * has been transferred to `to`.
     * - when `from` is zero, `amount` tokens have been minted for `to`.
     * - when `to` is zero, `amount` of ``from``'s tokens have been burned.
     * - `from` and `to` are never both zero.
     *
     * To learn more about hooks, head to xref:ROOT:extending-contracts.adoc#using-hooks[Using Hooks].
     */
    function _afterTokenTransfer(address from, address to, uint256 amount) internal virtual {}
}

// ============================================================
// FILE: @openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts v4.4.1 (token/ERC20/extensions/IERC20Metadata.sol)

pragma solidity ^0.8.0;

import "../IERC20.sol";

/**
 * @dev Interface for the optional metadata functions from the ERC20 standard.
 *
 * _Available since v4.1._
 */
interface IERC20Metadata is IERC20 {
    /**
     * @dev Returns the name of the token.
     */
    function name() external view returns (string memory);

    /**
     * @dev Returns the symbol of the token.
     */
    function symbol() external view returns (string memory);

    /**
     * @dev Returns the decimals places of the token.
     */
    function decimals() external view returns (uint8);
}

// ============================================================
// FILE: @openzeppelin/contracts/token/ERC20/extensions/IERC20Permit.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (token/ERC20/extensions/IERC20Permit.sol)

pragma solidity ^0.8.0;

/**
 * @dev Interface of the ERC20 Permit extension allowing approvals to be made via signatures, as defined in
 * https://eips.ethereum.org/EIPS/eip-2612[EIP-2612].
 *
 * Adds the {permit} method, which can be used to change an account's ERC20 allowance (see {IERC20-allowance}) by
 * presenting a message signed by the account. By not relying on {IERC20-approve}, the token holder account doesn't
 * need to send a transaction, and thus is not required to hold Ether at all.
 */
interface IERC20Permit {
    /**
     * @dev Sets `value` as the allowance of `spender` over ``owner``'s tokens,
     * given ``owner``'s signed approval.
     *
     * IMPORTANT: The same issues {IERC20-approve} has related to transaction
     * ordering also apply here.
     *
     * Emits an {Approval} event.
     *
     * Requirements:
     *
     * - `spender` cannot be the zero address.
     * - `deadline` must be a timestamp in the future.
     * - `v`, `r` and `s` must be a valid `secp256k1` signature from `owner`
     * over the EIP712-formatted function arguments.
     * - the signature must use ``owner``'s current nonce (see {nonces}).
     *
     * For more information on the signature format, see the
     * https://eips.ethereum.org/EIPS/eip-2612#specification[relevant EIP
     * section].
     */
    function permit(
        address owner,
        address spender,
        uint256 value,
        uint256 deadline,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) external;

    /**
     * @dev Returns the current nonce for `owner`. This value must be
     * included whenever a signature is generated for {permit}.
     *
     * Every successful call to {permit} increases ``owner``'s nonce by one. This
     * prevents a signature from being used multiple times.
     */
    function nonces(address owner) external view returns (uint256);

    /**
     * @dev Returns the domain separator used in the encoding of the signature for {permit}, as defined by {EIP712}.
     */
    // solhint-disable-next-line func-name-mixedcase
    function DOMAIN_SEPARATOR() external view returns (bytes32);
}

// ============================================================
// FILE: @openzeppelin/contracts/token/ERC20/IERC20.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (token/ERC20/IERC20.sol)

pragma solidity ^0.8.0;

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
     * @dev Returns the amount of tokens in existence.
     */
    function totalSupply() external view returns (uint256);

    /**
     * @dev Returns the amount of tokens owned by `account`.
     */
    function balanceOf(address account) external view returns (uint256);

    /**
     * @dev Moves `amount` tokens from the caller's account to `to`.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transfer(address to, uint256 amount) external returns (bool);

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
     * @dev Moves `amount` tokens from `from` to `to` using the
     * allowance mechanism. `amount` is then deducted from the caller's
     * allowance.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transferFrom(address from, address to, uint256 amount) external returns (bool);
}

// ============================================================
// FILE: @openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.3) (token/ERC20/utils/SafeERC20.sol)

pragma solidity ^0.8.0;

import "../IERC20.sol";
import "../extensions/IERC20Permit.sol";
import "../../../utils/Address.sol";

/**
 * @title SafeERC20
 * @dev Wrappers around ERC20 operations that throw on failure (when the token
 * contract returns false). Tokens that return no value (and instead revert or
 * throw on failure) are also supported, non-reverting calls are assumed to be
 * successful.
 * To use this library you can add a `using SafeERC20 for IERC20;` statement to your contract,
 * which allows you to call the safe operations as `token.safeTransfer(...)`, etc.
 */
library SafeERC20 {
    using Address for address;

    /**
     * @dev Transfer `value` amount of `token` from the calling contract to `to`. If `token` returns no value,
     * non-reverting calls are assumed to be successful.
     */
    function safeTransfer(IERC20 token, address to, uint256 value) internal {
        _callOptionalReturn(token, abi.encodeWithSelector(token.transfer.selector, to, value));
    }

    /**
     * @dev Transfer `value` amount of `token` from `from` to `to`, spending the approval given by `from` to the
     * calling contract. If `token` returns no value, non-reverting calls are assumed to be successful.
     */
    function safeTransferFrom(IERC20 token, address from, address to, uint256 value) internal {
        _callOptionalReturn(token, abi.encodeWithSelector(token.transferFrom.selector, from, to, value));
    }

    /**
     * @dev Deprecated. This function has issues similar to the ones found in
     * {IERC20-approve}, and its usage is discouraged.
     *
     * Whenever possible, use {safeIncreaseAllowance} and
     * {safeDecreaseAllowance} instead.
     */
    function safeApprove(IERC20 token, address spender, uint256 value) internal {
        // safeApprove should only be called when setting an initial allowance,
        // or when resetting it to zero. To increase and decrease it, use
        // 'safeIncreaseAllowance' and 'safeDecreaseAllowance'
        require(
            (value == 0) || (token.allowance(address(this), spender) == 0),
            "SafeERC20: approve from non-zero to non-zero allowance"
        );
        _callOptionalReturn(token, abi.encodeWithSelector(token.approve.selector, spender, value));
    }

    /**
     * @dev Increase the calling contract's allowance toward `spender` by `value`. If `token` returns no value,
     * non-reverting calls are assumed to be successful.
     */
    function safeIncreaseAllowance(IERC20 token, address spender, uint256 value) internal {
        uint256 oldAllowance = token.allowance(address(this), spender);
        _callOptionalReturn(token, abi.encodeWithSelector(token.approve.selector, spender, oldAllowance + value));
    }

    /**
     * @dev Decrease the calling contract's allowance toward `spender` by `value`. If `token` returns no value,
     * non-reverting calls are assumed to be successful.
     */
    function safeDecreaseAllowance(IERC20 token, address spender, uint256 value) internal {
        unchecked {
            uint256 oldAllowance = token.allowance(address(this), spender);
            require(oldAllowance >= value, "SafeERC20: decreased allowance below zero");
            _callOptionalReturn(token, abi.encodeWithSelector(token.approve.selector, spender, oldAllowance - value));
        }
    }

    /**
     * @dev Set the calling contract's allowance toward `spender` to `value`. If `token` returns no value,
     * non-reverting calls are assumed to be successful. Meant to be used with tokens that require the approval
     * to be set to zero before setting it to a non-zero value, such as USDT.
     */
    function forceApprove(IERC20 token, address spender, uint256 value) internal {
        bytes memory approvalCall = abi.encodeWithSelector(token.approve.selector, spender, value);

        if (!_callOptionalReturnBool(token, approvalCall)) {
            _callOptionalReturn(token, abi.encodeWithSelector(token.approve.selector, spender, 0));
            _callOptionalReturn(token, approvalCall);
        }
    }

    /**
     * @dev Use a ERC-2612 signature to set the `owner` approval toward `spender` on `token`.
     * Revert on invalid signature.
     */
    function safePermit(
        IERC20Permit token,
        address owner,
        address spender,
        uint256 value,
        uint256 deadline,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) internal {
        uint256 nonceBefore = token.nonces(owner);
        token.permit(owner, spender, value, deadline, v, r, s);
        uint256 nonceAfter = token.nonces(owner);
        require(nonceAfter == nonceBefore + 1, "SafeERC20: permit did not succeed");
    }

    /**
     * @dev Imitates a Solidity high-level call (i.e. a regular function call to a contract), relaxing the requirement
     * on the return value: the return value is optional (but if data is returned, it must not be false).
     * @param token The token targeted by the call.
     * @param data The call data (encoded using abi.encode or one of its variants).
     */
    function _callOptionalReturn(IERC20 token, bytes memory data) private {
        // We need to perform a low level call here, to bypass Solidity's return data size checking mechanism, since
        // we're implementing it ourselves. We use {Address-functionCall} to perform this call, which verifies that
        // the target address contains contract code and also asserts for success in the low-level call.

        bytes memory returndata = address(token).functionCall(data, "SafeERC20: low-level call failed");
        require(returndata.length == 0 || abi.decode(returndata, (bool)), "SafeERC20: ERC20 operation did not succeed");
    }

    /**
     * @dev Imitates a Solidity high-level call (i.e. a regular function call to a contract), relaxing the requirement
     * on the return value: the return value is optional (but if data is returned, it must not be false).
     * @param token The token targeted by the call.
     * @param data The call data (encoded using abi.encode or one of its variants).
     *
     * This is a variant of {_callOptionalReturn} that silents catches all reverts and returns a bool instead.
     */
    function _callOptionalReturnBool(IERC20 token, bytes memory data) private returns (bool) {
        // We need to perform a low level call here, to bypass Solidity's return data size checking mechanism, since
        // we're implementing it ourselves. We cannot use {Address-functionCall} here since this should return false
        // and not revert is the subcall reverts.

        (bool success, bytes memory returndata) = address(token).call(data);
        return
            success && (returndata.length == 0 || abi.decode(returndata, (bool))) && Address.isContract(address(token));
    }
}

// ============================================================
// FILE: @openzeppelin/contracts/utils/Address.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (utils/Address.sol)

pragma solidity ^0.8.1;

/**
 * @dev Collection of functions related to the address type
 */
library Address {
    /**
     * @dev Returns true if `account` is a contract.
     *
     * [IMPORTANT]
     * ====
     * It is unsafe to assume that an address for which this function returns
     * false is an externally-owned account (EOA) and not a contract.
     *
     * Among others, `isContract` will return false for the following
     * types of addresses:
     *
     *  - an externally-owned account
     *  - a contract in construction
     *  - an address where a contract will be created
     *  - an address where a contract lived, but was destroyed
     *
     * Furthermore, `isContract` will also return true if the target contract within
     * the same transaction is already scheduled for destruction by `SELFDESTRUCT`,
     * which only has an effect at the end of a transaction.
     * ====
     *
     * [IMPORTANT]
     * ====
     * You shouldn't rely on `isContract` to protect against flash loan attacks!
     *
     * Preventing calls from contracts is highly discouraged. It breaks composability, breaks support for smart wallets
     * like Gnosis Safe, and does not provide security since it can be circumvented by calling from a contract
     * constructor.
     * ====
     */
    function isContract(address account) internal view returns (bool) {
        // This method relies on extcodesize/address.code.length, which returns 0
        // for contracts in construction, since the code is only stored at the end
        // of the constructor execution.

        return account.code.length > 0;
    }

    /**
     * @dev Replacement for Solidity's `transfer`: sends `amount` wei to
     * `recipient`, forwarding all available gas and reverting on errors.
     *
     * https://eips.ethereum.org/EIPS/eip-1884[EIP1884] increases the gas cost
     * of certain opcodes, possibly making contracts go over the 2300 gas limit
     * imposed by `transfer`, making them unable to receive funds via
     * `transfer`. {sendValue} removes this limitation.
     *
     * https://consensys.net/diligence/blog/2019/09/stop-using-soliditys-transfer-now/[Learn more].
     *
     * IMPORTANT: because control is transferred to `recipient`, care must be
     * taken to not create reentrancy vulnerabilities. Consider using
     * {ReentrancyGuard} or the
     * https://solidity.readthedocs.io/en/v0.8.0/security-considerations.html#use-the-checks-effects-interactions-pattern[checks-effects-interactions pattern].
     */
    function sendValue(address payable recipient, uint256 amount) internal {
        require(address(this).balance >= amount, "Address: insufficient balance");

        (bool success, ) = recipient.call{value: amount}("");
        require(success, "Address: unable to send value, recipient may have reverted");
    }

    /**
     * @dev Performs a Solidity function call using a low level `call`. A
     * plain `call` is an unsafe replacement for a function call: use this
     * function instead.
     *
     * If `target` reverts with a revert reason, it is bubbled up by this
     * function (like regular Solidity function calls).
     *
     * Returns the raw returned data. To convert to the expected return value,
     * use https://solidity.readthedocs.io/en/latest/units-and-global-variables.html?highlight=abi.decode#abi-encoding-and-decoding-functions[`abi.decode`].
     *
     * Requirements:
     *
     * - `target` must be a contract.
     * - calling `target` with `data` must not revert.
     *
     * _Available since v3.1._
     */
    function functionCall(address target, bytes memory data) internal returns (bytes memory) {
        return functionCallWithValue(target, data, 0, "Address: low-level call failed");
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`], but with
     * `errorMessage` as a fallback revert reason when `target` reverts.
     *
     * _Available since v3.1._
     */
    function functionCall(
        address target,
        bytes memory data,
        string memory errorMessage
    ) internal returns (bytes memory) {
        return functionCallWithValue(target, data, 0, errorMessage);
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`],
     * but also transferring `value` wei to `target`.
     *
     * Requirements:
     *
     * - the calling contract must have an ETH balance of at least `value`.
     * - the called Solidity function must be `payable`.
     *
     * _Available since v3.1._
     */
    function functionCallWithValue(address target, bytes memory data, uint256 value) internal returns (bytes memory) {
        return functionCallWithValue(target, data, value, "Address: low-level call with value failed");
    }

    /**
     * @dev Same as {xref-Address-functionCallWithValue-address-bytes-uint256-}[`functionCallWithValue`], but
     * with `errorMessage` as a fallback revert reason when `target` reverts.
     *
     * _Available since v3.1._
     */
    function functionCallWithValue(
        address target,
        bytes memory data,
        uint256 value,
        string memory errorMessage
    ) internal returns (bytes memory) {
        require(address(this).balance >= value, "Address: insufficient balance for call");
        (bool success, bytes memory returndata) = target.call{value: value}(data);
        return verifyCallResultFromTarget(target, success, returndata, errorMessage);
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`],
     * but performing a static call.
     *
     * _Available since v3.3._
     */
    function functionStaticCall(address target, bytes memory data) internal view returns (bytes memory) {
        return functionStaticCall(target, data, "Address: low-level static call failed");
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-string-}[`functionCall`],
     * but performing a static call.
     *
     * _Available since v3.3._
     */
    function functionStaticCall(
        address target,
        bytes memory data,
        string memory errorMessage
    ) internal view returns (bytes memory) {
        (bool success, bytes memory returndata) = target.staticcall(data);
        return verifyCallResultFromTarget(target, success, returndata, errorMessage);
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`],
     * but performing a delegate call.
     *
     * _Available since v3.4._
     */
    function functionDelegateCall(address target, bytes memory data) internal returns (bytes memory) {
        return functionDelegateCall(target, data, "Address: low-level delegate call failed");
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-string-}[`functionCall`],
     * but performing a delegate call.
     *
     * _Available since v3.4._
     */
    function functionDelegateCall(
        address target,
        bytes memory data,
        string memory errorMessage
    ) internal returns (bytes memory) {
        (bool success, bytes memory returndata) = target.delegatecall(data);
        return verifyCallResultFromTarget(target, success, returndata, errorMessage);
    }

    /**
     * @dev Tool to verify that a low level call to smart-contract was successful, and revert (either by bubbling
     * the revert reason or using the provided one) in case of unsuccessful call or if target was not a contract.
     *
     * _Available since v4.8._
     */
    function verifyCallResultFromTarget(
        address target,
        bool success,
        bytes memory returndata,
        string memory errorMessage
    ) internal view returns (bytes memory) {
        if (success) {
            if (returndata.length == 0) {
                // only check isContract if the call was successful and the return data is empty
                // otherwise we already know that it was a contract
                require(isContract(target), "Address: call to non-contract");
            }
            return returndata;
        } else {
            _revert(returndata, errorMessage);
        }
    }

    /**
     * @dev Tool to verify that a low level call was successful, and revert if it wasn't, either by bubbling the
     * revert reason or using the provided one.
     *
     * _Available since v4.3._
     */
    function verifyCallResult(
        bool success,
        bytes memory returndata,
        string memory errorMessage
    ) internal pure returns (bytes memory) {
        if (success) {
            return returndata;
        } else {
            _revert(returndata, errorMessage);
        }
    }

    function _revert(bytes memory returndata, string memory errorMessage) private pure {
        // Look for revert reason and bubble it up if present
        if (returndata.length > 0) {
            // The easiest way to bubble the revert reason is using memory via assembly
            /// @solidity memory-safe-assembly
            assembly {
                let returndata_size := mload(returndata)
                revert(add(32, returndata), returndata_size)
            }
        } else {
            revert(errorMessage);
        }
    }
}

// ============================================================
// FILE: @openzeppelin/contracts/utils/Context.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts v4.4.1 (utils/Context.sol)

pragma solidity ^0.8.0;

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
}

// ============================================================
// FILE: @openzeppelin/contracts/utils/math/Math.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (utils/math/Math.sol)

pragma solidity ^0.8.0;

/**
 * @dev Standard math utilities missing in the Solidity language.
 */
library Math {
    enum Rounding {
        Down, // Toward negative infinity
        Up, // Toward infinity
        Zero // Toward zero
    }

    /**
     * @dev Returns the largest of two numbers.
     */
    function max(uint256 a, uint256 b) internal pure returns (uint256) {
        return a > b ? a : b;
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
        // (a + b) / 2 can overflow.
        return (a & b) + (a ^ b) / 2;
    }

    /**
     * @dev Returns the ceiling of the division of two numbers.
     *
     * This differs from standard division with `/` in that it rounds up instead
     * of rounding down.
     */
    function ceilDiv(uint256 a, uint256 b) internal pure returns (uint256) {
        // (a + b - 1) / b can overflow on addition, so we distribute.
        return a == 0 ? 0 : (a - 1) / b + 1;
    }

    /**
     * @notice Calculates floor(x * y / denominator) with full precision. Throws if result overflows a uint256 or denominator == 0
     * @dev Original credit to Remco Bloemen under MIT license (https://xn--2-umb.com/21/muldiv)
     * with further edits by Uniswap Labs also under MIT license.
     */
    function mulDiv(uint256 x, uint256 y, uint256 denominator) internal pure returns (uint256 result) {
        unchecked {
            // 512-bit multiply [prod1 prod0] = x * y. Compute the product mod 2^256 and mod 2^256 - 1, then use
            // use the Chinese Remainder Theorem to reconstruct the 512 bit result. The result is stored in two 256
            // variables such that product = prod1 * 2^256 + prod0.
            uint256 prod0; // Least significant 256 bits of the product
            uint256 prod1; // Most significant 256 bits of the product
            assembly {
                let mm := mulmod(x, y, not(0))
                prod0 := mul(x, y)
                prod1 := sub(sub(mm, prod0), lt(mm, prod0))
            }

            // Handle non-overflow cases, 256 by 256 division.
            if (prod1 == 0) {
                // Solidity will revert if denominator == 0, unlike the div opcode on its own.
                // The surrounding unchecked block does not change this fact.
                // See https://docs.soliditylang.org/en/latest/control-structures.html#checked-or-unchecked-arithmetic.
                return prod0 / denominator;
            }

            // Make sure the result is less than 2^256. Also prevents denominator == 0.
            require(denominator > prod1, "Math: mulDiv overflow");

            ///////////////////////////////////////////////
            // 512 by 256 division.
            ///////////////////////////////////////////////

            // Make division exact by subtracting the remainder from [prod1 prod0].
            uint256 remainder;
            assembly {
                // Compute remainder using mulmod.
                remainder := mulmod(x, y, denominator)

                // Subtract 256 bit number from 512 bit number.
                prod1 := sub(prod1, gt(remainder, prod0))
                prod0 := sub(prod0, remainder)
            }

            // Factor powers of two out of denominator and compute largest power of two divisor of denominator. Always >= 1.
            // See https://cs.stackexchange.com/q/138556/92363.

            // Does not overflow because the denominator cannot be zero at this stage in the function.
            uint256 twos = denominator & (~denominator + 1);
            assembly {
                // Divide denominator by twos.
                denominator := div(denominator, twos)

                // Divide [prod1 prod0] by twos.
                prod0 := div(prod0, twos)

                // Flip twos such that it is 2^256 / twos. If twos is zero, then it becomes one.
                twos := add(div(sub(0, twos), twos), 1)
            }

            // Shift in bits from prod1 into prod0.
            prod0 |= prod1 * twos;

            // Invert denominator mod 2^256. Now that denominator is an odd number, it has an inverse modulo 2^256 such
            // that denominator * inv = 1 mod 2^256. Compute the inverse by starting with a seed that is correct for
            // four bits. That is, denominator * inv = 1 mod 2^4.
            uint256 inverse = (3 * denominator) ^ 2;

            // Use the Newton-Raphson iteration to improve the precision. Thanks to Hensel's lifting lemma, this also works
            // in modular arithmetic, doubling the correct bits in each step.
            inverse *= 2 - denominator * inverse; // inverse mod 2^8
            inverse *= 2 - denominator * inverse; // inverse mod 2^16
            inverse *= 2 - denominator * inverse; // inverse mod 2^32
            inverse *= 2 - denominator * inverse; // inverse mod 2^64
            inverse *= 2 - denominator * inverse; // inverse mod 2^128
            inverse *= 2 - denominator * inverse; // inverse mod 2^256

            // Because the division is now exact we can divide by multiplying with the modular inverse of denominator.
            // This will give us the correct result modulo 2^256. Since the preconditions guarantee that the outcome is
            // less than 2^256, this is the final result. We don't need to compute the high bits of the result and prod1
            // is no longer required.
            result = prod0 * inverse;
            return result;
        }
    }

    /**
     * @notice Calculates x * y / denominator with full precision, following the selected rounding direction.
     */
    function mulDiv(uint256 x, uint256 y, uint256 denominator, Rounding rounding) internal pure returns (uint256) {
        uint256 result = mulDiv(x, y, denominator);
        if (rounding == Rounding.Up && mulmod(x, y, denominator) > 0) {
            result += 1;
        }
        return result;
    }

    /**
     * @dev Returns the square root of a number. If the number is not a perfect square, the value is rounded down.
     *
     * Inspired by Henry S. Warren, Jr.'s "Hacker's Delight" (Chapter 11).
     */
    function sqrt(uint256 a) internal pure returns (uint256) {
        if (a == 0) {
            return 0;
        }

        // For our first guess, we get the biggest power of 2 which is smaller than the square root of the target.
        //
        // We know that the "msb" (most significant bit) of our target number `a` is a power of 2 such that we have
        // `msb(a) <= a < 2*msb(a)`. This value can be written `msb(a)=2**k` with `k=log2(a)`.
        //
        // This can be rewritten `2**log2(a) <= a < 2**(log2(a) + 1)`
        // → `sqrt(2**k) <= sqrt(a) < sqrt(2**(k+1))`
        // → `2**(k/2) <= sqrt(a) < 2**((k+1)/2) <= 2**(k/2 + 1)`
        //
        // Consequently, `2**(log2(a) / 2)` is a good first approximation of `sqrt(a)` with at least 1 correct bit.
        uint256 result = 1 << (log2(a) >> 1);

        // At this point `result` is an estimation with one bit of precision. We know the true value is a uint128,
        // since it is the square root of a uint256. Newton's method converges quadratically (precision doubles at
        // every iteration). We thus need at most 7 iteration to turn our partial result with one bit of precision
        // into the expected uint128 result.
        unchecked {
            result = (result + a / result) >> 1;
            result = (result + a / result) >> 1;
            result = (result + a / result) >> 1;
            result = (result + a / result) >> 1;
            result = (result + a / result) >> 1;
            result = (result + a / result) >> 1;
            result = (result + a / result) >> 1;
            return min(result, a / result);
        }
    }

    /**
     * @notice Calculates sqrt(a), following the selected rounding direction.
     */
    function sqrt(uint256 a, Rounding rounding) internal pure returns (uint256) {
        unchecked {
            uint256 result = sqrt(a);
            return result + (rounding == Rounding.Up && result * result < a ? 1 : 0);
        }
    }

    /**
     * @dev Return the log in base 2, rounded down, of a positive value.
     * Returns 0 if given 0.
     */
    function log2(uint256 value) internal pure returns (uint256) {
        uint256 result = 0;
        unchecked {
            if (value >> 128 > 0) {
                value >>= 128;
                result += 128;
            }
            if (value >> 64 > 0) {
                value >>= 64;
                result += 64;
            }
            if (value >> 32 > 0) {
                value >>= 32;
                result += 32;
            }
            if (value >> 16 > 0) {
                value >>= 16;
                result += 16;
            }
            if (value >> 8 > 0) {
                value >>= 8;
                result += 8;
            }
            if (value >> 4 > 0) {
                value >>= 4;
                result += 4;
            }
            if (value >> 2 > 0) {
                value >>= 2;
                result += 2;
            }
            if (value >> 1 > 0) {
                result += 1;
            }
        }
        return result;
    }

    /**
     * @dev Return the log in base 2, following the selected rounding direction, of a positive value.
     * Returns 0 if given 0.
     */
    function log2(uint256 value, Rounding rounding) internal pure returns (uint256) {
        unchecked {
            uint256 result = log2(value);
            return result + (rounding == Rounding.Up && 1 << result < value ? 1 : 0);
        }
    }

    /**
     * @dev Return the log in base 10, rounded down, of a positive value.
     * Returns 0 if given 0.
     */
    function log10(uint256 value) internal pure returns (uint256) {
        uint256 result = 0;
        unchecked {
            if (value >= 10 ** 64) {
                value /= 10 ** 64;
                result += 64;
            }
            if (value >= 10 ** 32) {
                value /= 10 ** 32;
                result += 32;
            }
            if (value >= 10 ** 16) {
                value /= 10 ** 16;
                result += 16;
            }
            if (value >= 10 ** 8) {
                value /= 10 ** 8;
                result += 8;
            }
            if (value >= 10 ** 4) {
                value /= 10 ** 4;
                result += 4;
            }
            if (value >= 10 ** 2) {
                value /= 10 ** 2;
                result += 2;
            }
            if (value >= 10 ** 1) {
                result += 1;
            }
        }
        return result;
    }

    /**
     * @dev Return the log in base 10, following the selected rounding direction, of a positive value.
     * Returns 0 if given 0.
     */
    function log10(uint256 value, Rounding rounding) internal pure returns (uint256) {
        unchecked {
            uint256 result = log10(value);
            return result + (rounding == Rounding.Up && 10 ** result < value ? 1 : 0);
        }
    }

    /**
     * @dev Return the log in base 256, rounded down, of a positive value.
     * Returns 0 if given 0.
     *
     * Adding one to the result gives the number of pairs of hex symbols needed to represent `value` as a hex string.
     */
    function log256(uint256 value) internal pure returns (uint256) {
        uint256 result = 0;
        unchecked {
            if (value >> 128 > 0) {
                value >>= 128;
                result += 16;
            }
            if (value >> 64 > 0) {
                value >>= 64;
                result += 8;
            }
            if (value >> 32 > 0) {
                value >>= 32;
                result += 4;
            }
            if (value >> 16 > 0) {
                value >>= 16;
                result += 2;
            }
            if (value >> 8 > 0) {
                result += 1;
            }
        }
        return result;
    }

    /**
     * @dev Return the log in base 256, following the selected rounding direction, of a positive value.
     * Returns 0 if given 0.
     */
    function log256(uint256 value, Rounding rounding) internal pure returns (uint256) {
        unchecked {
            uint256 result = log256(value);
            return result + (rounding == Rounding.Up && 1 << (result << 3) < value ? 1 : 0);
        }
    }
}

// ============================================================
// FILE: @openzeppelin/contracts/utils/math/SafeCast.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.8.0) (utils/math/SafeCast.sol)
// This file was procedurally generated from scripts/generate/templates/SafeCast.js.

pragma solidity ^0.8.0;

/**
 * @dev Wrappers over Solidity's uintXX/intXX casting operators with added overflow
 * checks.
 *
 * Downcasting from uint256/int256 in Solidity does not revert on overflow. This can
 * easily result in undesired exploitation or bugs, since developers usually
 * assume that overflows raise errors. `SafeCast` restores this intuition by
 * reverting the transaction when such an operation overflows.
 *
 * Using this library instead of the unchecked operations eliminates an entire
 * class of bugs, so it's recommended to use it always.
 *
 * Can be combined with {SafeMath} and {SignedSafeMath} to extend it to smaller types, by performing
 * all math on `uint256` and `int256` and then downcasting.
 */
library SafeCast {
    /**
     * @dev Returns the downcasted uint248 from uint256, reverting on
     * overflow (when the input is greater than largest uint248).
     *
     * Counterpart to Solidity's `uint248` operator.
     *
     * Requirements:
     *
     * - input must fit into 248 bits
     *
     * _Available since v4.7._
     */
    function toUint248(uint256 value) internal pure returns (uint248) {
        require(value <= type(uint248).max, "SafeCast: value doesn't fit in 248 bits");
        return uint248(value);
    }

    /**
     * @dev Returns the downcasted uint240 from uint256, reverting on
     * overflow (when the input is greater than largest uint240).
     *
     * Counterpart to Solidity's `uint240` operator.
     *
     * Requirements:
     *
     * - input must fit into 240 bits
     *
     * _Available since v4.7._
     */
    function toUint240(uint256 value) internal pure returns (uint240) {
        require(value <= type(uint240).max, "SafeCast: value doesn't fit in 240 bits");
        return uint240(value);
    }

    /**
     * @dev Returns the downcasted uint232 from uint256, reverting on
     * overflow (when the input is greater than largest uint232).
     *
     * Counterpart to Solidity's `uint232` operator.
     *
     * Requirements:
     *
     * - input must fit into 232 bits
     *
     * _Available since v4.7._
     */
    function toUint232(uint256 value) internal pure returns (uint232) {
        require(value <= type(uint232).max, "SafeCast: value doesn't fit in 232 bits");
        return uint232(value);
    }

    /**
     * @dev Returns the downcasted uint224 from uint256, reverting on
     * overflow (when the input is greater than largest uint224).
     *
     * Counterpart to Solidity's `uint224` operator.
     *
     * Requirements:
     *
     * - input must fit into 224 bits
     *
     * _Available since v4.2._
     */
    function toUint224(uint256 value) internal pure returns (uint224) {
        require(value <= type(uint224).max, "SafeCast: value doesn't fit in 224 bits");
        return uint224(value);
    }

    /**
     * @dev Returns the downcasted uint216 from uint256, reverting on
     * overflow (when the input is greater than largest uint216).
     *
     * Counterpart to Solidity's `uint216` operator.
     *
     * Requirements:
     *
     * - input must fit into 216 bits
     *
     * _Available since v4.7._
     */
    function toUint216(uint256 value) internal pure returns (uint216) {
        require(value <= type(uint216).max, "SafeCast: value doesn't fit in 216 bits");
        return uint216(value);
    }

    /**
     * @dev Returns the downcasted uint208 from uint256, reverting on
     * overflow (when the input is greater than largest uint208).
     *
     * Counterpart to Solidity's `uint208` operator.
     *
     * Requirements:
     *
     * - input must fit into 208 bits
     *
     * _Available since v4.7._
     */
    function toUint208(uint256 value) internal pure returns (uint208) {
        require(value <= type(uint208).max, "SafeCast: value doesn't fit in 208 bits");
        return uint208(value);
    }

    /**
     * @dev Returns the downcasted uint200 from uint256, reverting on
     * overflow (when the input is greater than largest uint200).
     *
     * Counterpart to Solidity's `uint200` operator.
     *
     * Requirements:
     *
     * - input must fit into 200 bits
     *
     * _Available since v4.7._
     */
    function toUint200(uint256 value) internal pure returns (uint200) {
        require(value <= type(uint200).max, "SafeCast: value doesn't fit in 200 bits");
        return uint200(value);
    }

    /**
     * @dev Returns the downcasted uint192 from uint256, reverting on
     * overflow (when the input is greater than largest uint192).
     *
     * Counterpart to Solidity's `uint192` operator.
     *
     * Requirements:
     *
     * - input must fit into 192 bits
     *
     * _Available since v4.7._
     */
    function toUint192(uint256 value) internal pure returns (uint192) {
        require(value <= type(uint192).max, "SafeCast: value doesn't fit in 192 bits");
        return uint192(value);
    }

    /**
     * @dev Returns the downcasted uint184 from uint256, reverting on
     * overflow (when the input is greater than largest uint184).
     *
     * Counterpart to Solidity's `uint184` operator.
     *
     * Requirements:
     *
     * - input must fit into 184 bits
     *
     * _Available since v4.7._
     */
    function toUint184(uint256 value) internal pure returns (uint184) {
        require(value <= type(uint184).max, "SafeCast: value doesn't fit in 184 bits");
        return uint184(value);
    }

    /**
     * @dev Returns the downcasted uint176 from uint256, reverting on
     * overflow (when the input is greater than largest uint176).
     *
     * Counterpart to Solidity's `uint176` operator.
     *
     * Requirements:
     *
     * - input must fit into 176 bits
     *
     * _Available since v4.7._
     */
    function toUint176(uint256 value) internal pure returns (uint176) {
        require(value <= type(uint176).max, "SafeCast: value doesn't fit in 176 bits");
        return uint176(value);
    }

    /**
     * @dev Returns the downcasted uint168 from uint256, reverting on
     * overflow (when the input is greater than largest uint168).
     *
     * Counterpart to Solidity's `uint168` operator.
     *
     * Requirements:
     *
     * - input must fit into 168 bits
     *
     * _Available since v4.7._
     */
    function toUint168(uint256 value) internal pure returns (uint168) {
        require(value <= type(uint168).max, "SafeCast: value doesn't fit in 168 bits");
        return uint168(value);
    }

    /**
     * @dev Returns the downcasted uint160 from uint256, reverting on
     * overflow (when the input is greater than largest uint160).
     *
     * Counterpart to Solidity's `uint160` operator.
     *
     * Requirements:
     *
     * - input must fit into 160 bits
     *
     * _Available since v4.7._
     */
    function toUint160(uint256 value) internal pure returns (uint160) {
        require(value <= type(uint160).max, "SafeCast: value doesn't fit in 160 bits");
        return uint160(value);
    }

    /**
     * @dev Returns the downcasted uint152 from uint256, reverting on
     * overflow (when the input is greater than largest uint152).
     *
     * Counterpart to Solidity's `uint152` operator.
     *
     * Requirements:
     *
     * - input must fit into 152 bits
     *
     * _Available since v4.7._
     */
    function toUint152(uint256 value) internal pure returns (uint152) {
        require(value <= type(uint152).max, "SafeCast: value doesn't fit in 152 bits");
        return uint152(value);
    }

    /**
     * @dev Returns the downcasted uint144 from uint256, reverting on
     * overflow (when the input is greater than largest uint144).
     *
     * Counterpart to Solidity's `uint144` operator.
     *
     * Requirements:
     *
     * - input must fit into 144 bits
     *
     * _Available since v4.7._
     */
    function toUint144(uint256 value) internal pure returns (uint144) {
        require(value <= type(uint144).max, "SafeCast: value doesn't fit in 144 bits");
        return uint144(value);
    }

    /**
     * @dev Returns the downcasted uint136 from uint256, reverting on
     * overflow (when the input is greater than largest uint136).
     *
     * Counterpart to Solidity's `uint136` operator.
     *
     * Requirements:
     *
     * - input must fit into 136 bits
     *
     * _Available since v4.7._
     */
    function toUint136(uint256 value) internal pure returns (uint136) {
        require(value <= type(uint136).max, "SafeCast: value doesn't fit in 136 bits");
        return uint136(value);
    }

    /**
     * @dev Returns the downcasted uint128 from uint256, reverting on
     * overflow (when the input is greater than largest uint128).
     *
     * Counterpart to Solidity's `uint128` operator.
     *
     * Requirements:
     *
     * - input must fit into 128 bits
     *
     * _Available since v2.5._
     */
    function toUint128(uint256 value) internal pure returns (uint128) {
        require(value <= type(uint128).max, "SafeCast: value doesn't fit in 128 bits");
        return uint128(value);
    }

    /**
     * @dev Returns the downcasted uint120 from uint256, reverting on
     * overflow (when the input is greater than largest uint120).
     *
     * Counterpart to Solidity's `uint120` operator.
     *
     * Requirements:
     *
     * - input must fit into 120 bits
     *
     * _Available since v4.7._
     */
    function toUint120(uint256 value) internal pure returns (uint120) {
        require(value <= type(uint120).max, "SafeCast: value doesn't fit in 120 bits");
        return uint120(value);
    }

    /**
     * @dev Returns the downcasted uint112 from uint256, reverting on
     * overflow (when the input is greater than largest uint112).
     *
     * Counterpart to Solidity's `uint112` operator.
     *
     * Requirements:
     *
     * - input must fit into 112 bits
     *
     * _Available since v4.7._
     */
    function toUint112(uint256 value) internal pure returns (uint112) {
        require(value <= type(uint112).max, "SafeCast: value doesn't fit in 112 bits");
        return uint112(value);
    }

    /**
     * @dev Returns the downcasted uint104 from uint256, reverting on
     * overflow (when the input is greater than largest uint104).
     *
     * Counterpart to Solidity's `uint104` operator.
     *
     * Requirements:
     *
     * - input must fit into 104 bits
     *
     * _Available since v4.7._
     */
    function toUint104(uint256 value) internal pure returns (uint104) {
        require(value <= type(uint104).max, "SafeCast: value doesn't fit in 104 bits");
        return uint104(value);
    }

    /**
     * @dev Returns the downcasted uint96 from uint256, reverting on
     * overflow (when the input is greater than largest uint96).
     *
     * Counterpart to Solidity's `uint96` operator.
     *
     * Requirements:
     *
     * - input must fit into 96 bits
     *
     * _Available since v4.2._
     */
    function toUint96(uint256 value) internal pure returns (uint96) {
        require(value <= type(uint96).max, "SafeCast: value doesn't fit in 96 bits");
        return uint96(value);
    }

    /**
     * @dev Returns the downcasted uint88 from uint256, reverting on
     * overflow (when the input is greater than largest uint88).
     *
     * Counterpart to Solidity's `uint88` operator.
     *
     * Requirements:
     *
     * - input must fit into 88 bits
     *
     * _Available since v4.7._
     */
    function toUint88(uint256 value) internal pure returns (uint88) {
        require(value <= type(uint88).max, "SafeCast: value doesn't fit in 88 bits");
        return uint88(value);
    }

    /**
     * @dev Returns the downcasted uint80 from uint256, reverting on
     * overflow (when the input is greater than largest uint80).
     *
     * Counterpart to Solidity's `uint80` operator.
     *
     * Requirements:
     *
     * - input must fit into 80 bits
     *
     * _Available since v4.7._
     */
    function toUint80(uint256 value) internal pure returns (uint80) {
        require(value <= type(uint80).max, "SafeCast: value doesn't fit in 80 bits");
        return uint80(value);
    }

    /**
     * @dev Returns the downcasted uint72 from uint256, reverting on
     * overflow (when the input is greater than largest uint72).
     *
     * Counterpart to Solidity's `uint72` operator.
     *
     * Requirements:
     *
     * - input must fit into 72 bits
     *
     * _Available since v4.7._
     */
    function toUint72(uint256 value) internal pure returns (uint72) {
        require(value <= type(uint72).max, "SafeCast: value doesn't fit in 72 bits");
        return uint72(value);
    }

    /**
     * @dev Returns the downcasted uint64 from uint256, reverting on
     * overflow (when the input is greater than largest uint64).
     *
     * Counterpart to Solidity's `uint64` operator.
     *
     * Requirements:
     *
     * - input must fit into 64 bits
     *
     * _Available since v2.5._
     */
    function toUint64(uint256 value) internal pure returns (uint64) {
        require(value <= type(uint64).max, "SafeCast: value doesn't fit in 64 bits");
        return uint64(value);
    }

    /**
     * @dev Returns the downcasted uint56 from uint256, reverting on
     * overflow (when the input is greater than largest uint56).
     *
     * Counterpart to Solidity's `uint56` operator.
     *
     * Requirements:
     *
     * - input must fit into 56 bits
     *
     * _Available since v4.7._
     */
    function toUint56(uint256 value) internal pure returns (uint56) {
        require(value <= type(uint56).max, "SafeCast: value doesn't fit in 56 bits");
        return uint56(value);
    }

    /**
     * @dev Returns the downcasted uint48 from uint256, reverting on
     * overflow (when the input is greater than largest uint48).
     *
     * Counterpart to Solidity's `uint48` operator.
     *
     * Requirements:
     *
     * - input must fit into 48 bits
     *
     * _Available since v4.7._
     */
    function toUint48(uint256 value) internal pure returns (uint48) {
        require(value <= type(uint48).max, "SafeCast: value doesn't fit in 48 bits");
        return uint48(value);
    }

    /**
     * @dev Returns the downcasted uint40 from uint256, reverting on
     * overflow (when the input is greater than largest uint40).
     *
     * Counterpart to Solidity's `uint40` operator.
     *
     * Requirements:
     *
     * - input must fit into 40 bits
     *
     * _Available since v4.7._
     */
    function toUint40(uint256 value) internal pure returns (uint40) {
        require(value <= type(uint40).max, "SafeCast: value doesn't fit in 40 bits");
        return uint40(value);
    }

    /**
     * @dev Returns the downcasted uint32 from uint256, reverting on
     * overflow (when the input is greater than largest uint32).
     *
     * Counterpart to Solidity's `uint32` operator.
     *
     * Requirements:
     *
     * - input must fit into 32 bits
     *
     * _Available since v2.5._
     */
    function toUint32(uint256 value) internal pure returns (uint32) {
        require(value <= type(uint32).max, "SafeCast: value doesn't fit in 32 bits");
        return uint32(value);
    }

    /**
     * @dev Returns the downcasted uint24 from uint256, reverting on
     * overflow (when the input is greater than largest uint24).
     *
     * Counterpart to Solidity's `uint24` operator.
     *
     * Requirements:
     *
     * - input must fit into 24 bits
     *
     * _Available since v4.7._
     */
    function toUint24(uint256 value) internal pure returns (uint24) {
        require(value <= type(uint24).max, "SafeCast: value doesn't fit in 24 bits");
        return uint24(value);
    }

    /**
     * @dev Returns the downcasted uint16 from uint256, reverting on
     * overflow (when the input is greater than largest uint16).
     *
     * Counterpart to Solidity's `uint16` operator.
     *
     * Requirements:
     *
     * - input must fit into 16 bits
     *
     * _Available since v2.5._
     */
    function toUint16(uint256 value) internal pure returns (uint16) {
        require(value <= type(uint16).max, "SafeCast: value doesn't fit in 16 bits");
        return uint16(value);
    }

    /**
     * @dev Returns the downcasted uint8 from uint256, reverting on
     * overflow (when the input is greater than largest uint8).
     *
     * Counterpart to Solidity's `uint8` operator.
     *
     * Requirements:
     *
     * - input must fit into 8 bits
     *
     * _Available since v2.5._
     */
    function toUint8(uint256 value) internal pure returns (uint8) {
        require(value <= type(uint8).max, "SafeCast: value doesn't fit in 8 bits");
        return uint8(value);
    }

    /**
     * @dev Converts a signed int256 into an unsigned uint256.
     *
     * Requirements:
     *
     * - input must be greater than or equal to 0.
     *
     * _Available since v3.0._
     */
    function toUint256(int256 value) internal pure returns (uint256) {
        require(value >= 0, "SafeCast: value must be positive");
        return uint256(value);
    }

    /**
     * @dev Returns the downcasted int248 from int256, reverting on
     * overflow (when the input is less than smallest int248 or
     * greater than largest int248).
     *
     * Counterpart to Solidity's `int248` operator.
     *
     * Requirements:
     *
     * - input must fit into 248 bits
     *
     * _Available since v4.7._
     */
    function toInt248(int256 value) internal pure returns (int248 downcasted) {
        downcasted = int248(value);
        require(downcasted == value, "SafeCast: value doesn't fit in 248 bits");
    }

    /**
     * @dev Returns the downcasted int240 from int256, reverting on
     * overflow (when the input is less than smallest int240 or
     * greater than largest int240).
     *
     * Counterpart to Solidity's `int240` operator.
     *
     * Requirements:
     *
     * - input must fit into 240 bits
     *
     * _Available since v4.7._
     */
    function toInt240(int256 value) internal pure returns (int240 downcasted) {
        downcasted = int240(value);
        require(downcasted == value, "SafeCast: value doesn't fit in 240 bits");
    }

    /**
     * @dev Returns the downcasted int232 from int256, reverting on
     * overflow (when the input is less than smallest int232 or
     * greater than largest int232).
     *
     * Counterpart to Solidity's `int232` operator.
     *
     * Requirements:
     *
     * - input must fit into 232 bits
     *
     * _Available since v4.7._
     */
    function toInt232(int256 value) internal pure returns (int232 downcasted) {
        downcasted = int232(value);
        require(downcasted == value, "SafeCast: value doesn't fit in 232 bits");
    }

    /**
     * @dev Returns the downcasted int224 from int256, reverting on
     * overflow (when the input is less than smallest int224 or
     * greater than largest int224).
     *
     * Counterpart to Solidity's `int224` operator.
     *
     * Requirements:
     *
     * - input must fit into 224 bits
     *
     * _Available since v4.7._
     */
    function toInt224(int256 value) internal pure returns (int224 downcasted) {
        downcasted = int224(value);
        require(downcasted == value, "SafeCast: value doesn't fit in 224 bits");
    }

    /**
     * @dev Returns the downcasted int216 from int256, reverting on
     * overflow (when the input is less than smallest int216 or
     * greater than largest int216).
     *
     * Counterpart to Solidity's `int216` operator.
     *
     * Requirements:
     *
     * - input must fit into 216 bits
     *
     * _Available since v4.7._
     */
    function toInt216(int256 value) internal pure returns (int216 downcasted) {
        downcasted = int216(value);
        require(downcasted == value, "SafeCast: value doesn't fit in 216 bits");
    }

    /**
     * @dev Returns the downcasted int208 from int256, reverting on
     * overflow (when the input is less than smallest int208 or
     * greater than largest int208).
     *
     * Counterpart to Solidity's `int208` operator.
     *
     * Requirements:
     *
     * - input must fit into 208 bits
     *
     * _Available since v4.7._
     */
    function toInt208(int256 value) internal pure returns (int208 downcasted) {
        downcasted = int208(value);
        require(downcasted == value, "SafeCast: value doesn't fit in 208 bits");
    }

    /**
     * @dev Returns the downcasted int200 from int256, reverting on
     * overflow (when the input is less than smallest int200 or
     * greater than largest int200).
     *
     * Counterpart to Solidity's `int200` operator.
     *
     * Requirements:
     *
     * - input must fit into 200 bits
     *
     * _Available since v4.7._
     */
    function toInt200(int256 value) internal pure returns (int200 downcasted) {
        downcasted = int200(value);
        require(downcasted == value, "SafeCast: value doesn't fit in 200 bits");
    }

    /**
     * @dev Returns the downcasted int192 from int256, reverting on
     * overflow (when the input is less than smallest int192 or
     * greater than largest int192).
     *
     * Counterpart to Solidity's `int192` operator.
     *
     * Requirements:
     *
     * - input must fit into 192 bits
     *
     * _Available since v4.7._
     */
    function toInt192(int256 value) internal pure returns (int192 downcasted) {
        downcasted = int192(value);
        require(downcasted == value, "SafeCast: value doesn't fit in 192 bits");
    }

    /**
     * @dev Returns the downcasted int184 from int256, reverting on
     * overflow (when the input is less than smallest int184 or
     * greater than largest int184).
     *
     * Counterpart to Solidity's `int184` operator.
     *
     * Requirements:
     *
     * - input must fit into 184 bits
     *
     * _Available since v4.7._
     */
    function toInt184(int256 value) internal pure returns (int184 downcasted) {
        downcasted = int184(value);
        require(downcasted == value, "SafeCast: value doesn't fit in 184 bits");
    }

    /**
     * @dev Returns the downcasted int176 from int256, reverting on
     * overflow (when the input is less than smallest int176 or
     * greater than largest int176).
     *
     * Counterpart to Solidity's `int176` operator.
     *
     * Requirements:
     *
     * - input must fit into 176 bits
     *
     * _Available since v4.7._
     */
    function toInt176(int256 value) internal pure returns (int176 downcasted) {
        downcasted = int176(value);
        require(downcasted == value, "SafeCast: value doesn't fit in 176 bits");
    }

    /**
     * @dev Returns the downcasted int168 from int256, reverting on
     * overflow (when the input is less than smallest int168 or
     * greater than largest int168).
     *
     * Counterpart to Solidity's `int168` operator.
     *
     * Requirements:
     *
     * - input must fit into 168 bits
     *
     * _Available since v4.7._
     */
    function toInt168(int256 value) internal pure returns (int168 downcasted) {
        downcasted = int168(value);
        require(downcasted == value, "SafeCast: value doesn't fit in 168 bits");
    }

    /**
     * @dev Returns the downcasted int160 from int256, reverting on
     * overflow (when the input is less than smallest int160 or
     * greater than largest int160).
     *
     * Counterpart to Solidity's `int160` operator.
     *
     * Requirements:
     *
     * - input must fit into 160 bits
     *
     * _Available since v4.7._
     */
    function toInt160(int256 value) internal pure returns (int160 downcasted) {
        downcasted = int160(value);
        require(downcasted == value, "SafeCast: value doesn't fit in 160 bits");
    }

    /**
     * @dev Returns the downcasted int152 from int256, reverting on
     * overflow (when the input is less than smallest int152 or
     * greater than largest int152).
     *
     * Counterpart to Solidity's `int152` operator.
     *
     * Requirements:
     *
     * - input must fit into 152 bits
     *
     * _Available since v4.7._
     */
    function toInt152(int256 value) internal pure returns (int152 downcasted) {
        downcasted = int152(value);
        require(downcasted == value, "SafeCast: value doesn't fit in 152 bits");
    }

    /**
     * @dev Returns the downcasted int144 from int256, reverting on
     * overflow (when the input is less than smallest int144 or
     * greater than largest int144).
     *
     * Counterpart to Solidity's `int144` operator.
     *
     * Requirements:
     *
     * - input must fit into 144 bits
     *
     * _Available since v4.7._
     */
    function toInt144(int256 value) internal pure returns (int144 downcasted) {
        downcasted = int144(value);
        require(downcasted == value, "SafeCast: value doesn't fit in 144 bits");
    }

    /**
     * @dev Returns the downcasted int136 from int256, reverting on
     * overflow (when the input is less than smallest int136 or
     * greater than largest int136).
     *
     * Counterpart to Solidity's `int136` operator.
     *
     * Requirements:
     *
     * - input must fit into 136 bits
     *
     * _Available since v4.7._
     */
    function toInt136(int256 value) internal pure returns (int136 downcasted) {
        downcasted = int136(value);
        require(downcasted == value, "SafeCast: value doesn't fit in 136 bits");
    }

    /**
     * @dev Returns the downcasted int128 from int256, reverting on
     * overflow (when the input is less than smallest int128 or
     * greater than largest int128).
     *
     * Counterpart to Solidity's `int128` operator.
     *
     * Requirements:
     *
     * - input must fit into 128 bits
     *
     * _Available since v3.1._
     */
    function toInt128(int256 value) internal pure returns (int128 downcasted) {
        downcasted = int128(value);
        require(downcasted == value, "SafeCast: value doesn't fit in 128 bits");
    }

    /**
     * @dev Returns the downcasted int120 from int256, reverting on
     * overflow (when the input is less than smallest int120 or
     * greater than largest int120).
     *
     * Counterpart to Solidity's `int120` operator.
     *
     * Requirements:
     *
     * - input must fit into 120 bits
     *
     * _Available since v4.7._
     */
    function toInt120(int256 value) internal pure returns (int120 downcasted) {
        downcasted = int120(value);
        require(downcasted == value, "SafeCast: value doesn't fit in 120 bits");
    }

    /**
     * @dev Returns the downcasted int112 from int256, reverting on
     * overflow (when the input is less than smallest int112 or
     * greater than largest int112).
     *
     * Counterpart to Solidity's `int112` operator.
     *
     * Requirements:
     *
     * - input must fit into 112 bits
     *
     * _Available since v4.7._
     */
    function toInt112(int256 value) internal pure returns (int112 downcasted) {
        downcasted = int112(value);
        require(downcasted == value, "SafeCast: value doesn't fit in 112 bits");
    }

    /**
     * @dev Returns the downcasted int104 from int256, reverting on
     * overflow (when the input is less than smallest int104 or
     * greater than largest int104).
     *
     * Counterpart to Solidity's `int104` operator.
     *
     * Requirements:
     *
     * - input must fit into 104 bits
     *
     * _Available since v4.7._
     */
    function toInt104(int256 value) internal pure returns (int104 downcasted) {
        downcasted = int104(value);
        require(downcasted == value, "SafeCast: value doesn't fit in 104 bits");
    }

    /**
     * @dev Returns the downcasted int96 from int256, reverting on
     * overflow (when the input is less than smallest int96 or
     * greater than largest int96).
     *
     * Counterpart to Solidity's `int96` operator.
     *
     * Requirements:
     *
     * - input must fit into 96 bits
     *
     * _Available since v4.7._
     */
    function toInt96(int256 value) internal pure returns (int96 downcasted) {
        downcasted = int96(value);
        require(downcasted == value, "SafeCast: value doesn't fit in 96 bits");
    }

    /**
     * @dev Returns the downcasted int88 from int256, reverting on
     * overflow (when the input is less than smallest int88 or
     * greater than largest int88).
     *
     * Counterpart to Solidity's `int88` operator.
     *
     * Requirements:
     *
     * - input must fit into 88 bits
     *
     * _Available since v4.7._
     */
    function toInt88(int256 value) internal pure returns (int88 downcasted) {
        downcasted = int88(value);
        require(downcasted == value, "SafeCast: value doesn't fit in 88 bits");
    }

    /**
     * @dev Returns the downcasted int80 from int256, reverting on
     * overflow (when the input is less than smallest int80 or
     * greater than largest int80).
     *
     * Counterpart to Solidity's `int80` operator.
     *
     * Requirements:
     *
     * - input must fit into 80 bits
     *
     * _Available since v4.7._
     */
    function toInt80(int256 value) internal pure returns (int80 downcasted) {
        downcasted = int80(value);
        require(downcasted == value, "SafeCast: value doesn't fit in 80 bits");
    }

    /**
     * @dev Returns the downcasted int72 from int256, reverting on
     * overflow (when the input is less than smallest int72 or
     * greater than largest int72).
     *
     * Counterpart to Solidity's `int72` operator.
     *
     * Requirements:
     *
     * - input must fit into 72 bits
     *
     * _Available since v4.7._
     */
    function toInt72(int256 value) internal pure returns (int72 downcasted) {
        downcasted = int72(value);
        require(downcasted == value, "SafeCast: value doesn't fit in 72 bits");
    }

    /**
     * @dev Returns the downcasted int64 from int256, reverting on
     * overflow (when the input is less than smallest int64 or
     * greater than largest int64).
     *
     * Counterpart to Solidity's `int64` operator.
     *
     * Requirements:
     *
     * - input must fit into 64 bits
     *
     * _Available since v3.1._
     */
    function toInt64(int256 value) internal pure returns (int64 downcasted) {
        downcasted = int64(value);
        require(downcasted == value, "SafeCast: value doesn't fit in 64 bits");
    }

    /**
     * @dev Returns the downcasted int56 from int256, reverting on
     * overflow (when the input is less than smallest int56 or
     * greater than largest int56).
     *
     * Counterpart to Solidity's `int56` operator.
     *
     * Requirements:
     *
     * - input must fit into 56 bits
     *
     * _Available since v4.7._
     */
    function toInt56(int256 value) internal pure returns (int56 downcasted) {
        downcasted = int56(value);
        require(downcasted == value, "SafeCast: value doesn't fit in 56 bits");
    }

    /**
     * @dev Returns the downcasted int48 from int256, reverting on
     * overflow (when the input is less than smallest int48 or
     * greater than largest int48).
     *
     * Counterpart to Solidity's `int48` operator.
     *
     * Requirements:
     *
     * - input must fit into 48 bits
     *
     * _Available since v4.7._
     */
    function toInt48(int256 value) internal pure returns (int48 downcasted) {
        downcasted = int48(value);
        require(downcasted == value, "SafeCast: value doesn't fit in 48 bits");
    }

    /**
     * @dev Returns the downcasted int40 from int256, reverting on
     * overflow (when the input is less than smallest int40 or
     * greater than largest int40).
     *
     * Counterpart to Solidity's `int40` operator.
     *
     * Requirements:
     *
     * - input must fit into 40 bits
     *
     * _Available since v4.7._
     */
    function toInt40(int256 value) internal pure returns (int40 downcasted) {
        downcasted = int40(value);
        require(downcasted == value, "SafeCast: value doesn't fit in 40 bits");
    }

    /**
     * @dev Returns the downcasted int32 from int256, reverting on
     * overflow (when the input is less than smallest int32 or
     * greater than largest int32).
     *
     * Counterpart to Solidity's `int32` operator.
     *
     * Requirements:
     *
     * - input must fit into 32 bits
     *
     * _Available since v3.1._
     */
    function toInt32(int256 value) internal pure returns (int32 downcasted) {
        downcasted = int32(value);
        require(downcasted == value, "SafeCast: value doesn't fit in 32 bits");
    }

    /**
     * @dev Returns the downcasted int24 from int256, reverting on
     * overflow (when the input is less than smallest int24 or
     * greater than largest int24).
     *
     * Counterpart to Solidity's `int24` operator.
     *
     * Requirements:
     *
     * - input must fit into 24 bits
     *
     * _Available since v4.7._
     */
    function toInt24(int256 value) internal pure returns (int24 downcasted) {
        downcasted = int24(value);
        require(downcasted == value, "SafeCast: value doesn't fit in 24 bits");
    }

    /**
     * @dev Returns the downcasted int16 from int256, reverting on
     * overflow (when the input is less than smallest int16 or
     * greater than largest int16).
     *
     * Counterpart to Solidity's `int16` operator.
     *
     * Requirements:
     *
     * - input must fit into 16 bits
     *
     * _Available since v3.1._
     */
    function toInt16(int256 value) internal pure returns (int16 downcasted) {
        downcasted = int16(value);
        require(downcasted == value, "SafeCast: value doesn't fit in 16 bits");
    }

    /**
     * @dev Returns the downcasted int8 from int256, reverting on
     * overflow (when the input is less than smallest int8 or
     * greater than largest int8).
     *
     * Counterpart to Solidity's `int8` operator.
     *
     * Requirements:
     *
     * - input must fit into 8 bits
     *
     * _Available since v3.1._
     */
    function toInt8(int256 value) internal pure returns (int8 downcasted) {
        downcasted = int8(value);
        require(downcasted == value, "SafeCast: value doesn't fit in 8 bits");
    }

    /**
     * @dev Converts an unsigned uint256 into a signed int256.
     *
     * Requirements:
     *
     * - input must be less than or equal to maxInt256.
     *
     * _Available since v3.0._
     */
    function toInt256(uint256 value) internal pure returns (int256) {
        // Note: Unsafe cast below is okay because `type(int256).max` is guaranteed to be positive
        require(value <= uint256(type(int256).max), "SafeCast: value doesn't fit in an int256");
        return int256(value);
    }
}

// ============================================================
// FILE: @openzeppelin/contracts/utils/math/SignedMath.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.8.0) (utils/math/SignedMath.sol)

pragma solidity ^0.8.0;

/**
 * @dev Standard signed math utilities missing in the Solidity language.
 */
library SignedMath {
    /**
     * @dev Returns the largest of two signed numbers.
     */
    function max(int256 a, int256 b) internal pure returns (int256) {
        return a > b ? a : b;
    }

    /**
     * @dev Returns the smallest of two signed numbers.
     */
    function min(int256 a, int256 b) internal pure returns (int256) {
        return a < b ? a : b;
    }

    /**
     * @dev Returns the average of two signed numbers without overflow.
     * The result is rounded towards zero.
     */
    function average(int256 a, int256 b) internal pure returns (int256) {
        // Formula from the book "Hacker's Delight"
        int256 x = (a & b) + ((a ^ b) >> 1);
        return x + (int256(uint256(x) >> 255) & (a ^ b));
    }

    /**
     * @dev Returns the absolute unsigned value of a signed value.
     */
    function abs(int256 n) internal pure returns (uint256) {
        unchecked {
            // must be unchecked in order to support `n = type(int256).min`
            return uint256(n >= 0 ? n : -n);
        }
    }
}

// ============================================================
// FILE: @openzeppelin/contracts/utils/structs/EnumerableSet.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (utils/structs/EnumerableSet.sol)
// This file was procedurally generated from scripts/generate/templates/EnumerableSet.js.

pragma solidity ^0.8.0;

/**
 * @dev Library for managing
 * https://en.wikipedia.org/wiki/Set_(abstract_data_type)[sets] of primitive
 * types.
 *
 * Sets have the following properties:
 *
 * - Elements are added, removed, and checked for existence in constant time
 * (O(1)).
 * - Elements are enumerated in O(n). No guarantees are made on the ordering.
 *
 * ```solidity
 * contract Example {
 *     // Add the library methods
 *     using EnumerableSet for EnumerableSet.AddressSet;
 *
 *     // Declare a set state variable
 *     EnumerableSet.AddressSet private mySet;
 * }
 * ```
 *
 * As of v3.3.0, sets of type `bytes32` (`Bytes32Set`), `address` (`AddressSet`)
 * and `uint256` (`UintSet`) are supported.
 *
 * [WARNING]
 * ====
 * Trying to delete such a structure from storage will likely result in data corruption, rendering the structure
 * unusable.
 * See https://github.com/ethereum/solidity/pull/11843[ethereum/solidity#11843] for more info.
 *
 * In order to clean an EnumerableSet, you can either remove all elements one by one or create a fresh instance using an
 * array of EnumerableSet.
 * ====
 */
library EnumerableSet {
    // To implement this library for multiple types with as little code
    // repetition as possible, we write it in terms of a generic Set type with
    // bytes32 values.
    // The Set implementation uses private functions, and user-facing
    // implementations (such as AddressSet) are just wrappers around the
    // underlying Set.
    // This means that we can only create new EnumerableSets for types that fit
    // in bytes32.

    struct Set {
        // Storage of set values
        bytes32[] _values;
        // Position of the value in the `values` array, plus 1 because index 0
        // means a value is not in the set.
        mapping(bytes32 => uint256) _indexes;
    }

    /**
     * @dev Add a value to a set. O(1).
     *
     * Returns true if the value was added to the set, that is if it was not
     * already present.
     */
    function _add(Set storage set, bytes32 value) private returns (bool) {
        if (!_contains(set, value)) {
            set._values.push(value);
            // The value is stored at length-1, but we add 1 to all indexes
            // and use 0 as a sentinel value
            set._indexes[value] = set._values.length;
            return true;
        } else {
            return false;
        }
    }

    /**
     * @dev Removes a value from a set. O(1).
     *
     * Returns true if the value was removed from the set, that is if it was
     * present.
     */
    function _remove(Set storage set, bytes32 value) private returns (bool) {
        // We read and store the value's index to prevent multiple reads from the same storage slot
        uint256 valueIndex = set._indexes[value];

        if (valueIndex != 0) {
            // Equivalent to contains(set, value)
            // To delete an element from the _values array in O(1), we swap the element to delete with the last one in
            // the array, and then remove the last element (sometimes called as 'swap and pop').
            // This modifies the order of the array, as noted in {at}.

            uint256 toDeleteIndex = valueIndex - 1;
            uint256 lastIndex = set._values.length - 1;

            if (lastIndex != toDeleteIndex) {
                bytes32 lastValue = set._values[lastIndex];

                // Move the last value to the index where the value to delete is
                set._values[toDeleteIndex] = lastValue;
                // Update the index for the moved value
                set._indexes[lastValue] = valueIndex; // Replace lastValue's index to valueIndex
            }

            // Delete the slot where the moved value was stored
            set._values.pop();

            // Delete the index for the deleted slot
            delete set._indexes[value];

            return true;
        } else {
            return false;
        }
    }

    /**
     * @dev Returns true if the value is in the set. O(1).
     */
    function _contains(Set storage set, bytes32 value) private view returns (bool) {
        return set._indexes[value] != 0;
    }

    /**
     * @dev Returns the number of values on the set. O(1).
     */
    function _length(Set storage set) private view returns (uint256) {
        return set._values.length;
    }

    /**
     * @dev Returns the value stored at position `index` in the set. O(1).
     *
     * Note that there are no guarantees on the ordering of values inside the
     * array, and it may change when more values are added or removed.
     *
     * Requirements:
     *
     * - `index` must be strictly less than {length}.
     */
    function _at(Set storage set, uint256 index) private view returns (bytes32) {
        return set._values[index];
    }

    /**
     * @dev Return the entire set in an array
     *
     * WARNING: This operation will copy the entire storage to memory, which can be quite expensive. This is designed
     * to mostly be used by view accessors that are queried without any gas fees. Developers should keep in mind that
     * this function has an unbounded cost, and using it as part of a state-changing function may render the function
     * uncallable if the set grows to a point where copying to memory consumes too much gas to fit in a block.
     */
    function _values(Set storage set) private view returns (bytes32[] memory) {
        return set._values;
    }

    // Bytes32Set

    struct Bytes32Set {
        Set _inner;
    }

    /**
     * @dev Add a value to a set. O(1).
     *
     * Returns true if the value was added to the set, that is if it was not
     * already present.
     */
    function add(Bytes32Set storage set, bytes32 value) internal returns (bool) {
        return _add(set._inner, value);
    }

    /**
     * @dev Removes a value from a set. O(1).
     *
     * Returns true if the value was removed from the set, that is if it was
     * present.
     */
    function remove(Bytes32Set storage set, bytes32 value) internal returns (bool) {
        return _remove(set._inner, value);
    }

    /**
     * @dev Returns true if the value is in the set. O(1).
     */
    function contains(Bytes32Set storage set, bytes32 value) internal view returns (bool) {
        return _contains(set._inner, value);
    }

    /**
     * @dev Returns the number of values in the set. O(1).
     */
    function length(Bytes32Set storage set) internal view returns (uint256) {
        return _length(set._inner);
    }

    /**
     * @dev Returns the value stored at position `index` in the set. O(1).
     *
     * Note that there are no guarantees on the ordering of values inside the
     * array, and it may change when more values are added or removed.
     *
     * Requirements:
     *
     * - `index` must be strictly less than {length}.
     */
    function at(Bytes32Set storage set, uint256 index) internal view returns (bytes32) {
        return _at(set._inner, index);
    }

    /**
     * @dev Return the entire set in an array
     *
     * WARNING: This operation will copy the entire storage to memory, which can be quite expensive. This is designed
     * to mostly be used by view accessors that are queried without any gas fees. Developers should keep in mind that
     * this function has an unbounded cost, and using it as part of a state-changing function may render the function
     * uncallable if the set grows to a point where copying to memory consumes too much gas to fit in a block.
     */
    function values(Bytes32Set storage set) internal view returns (bytes32[] memory) {
        bytes32[] memory store = _values(set._inner);
        bytes32[] memory result;

        /// @solidity memory-safe-assembly
        assembly {
            result := store
        }

        return result;
    }

    // AddressSet

    struct AddressSet {
        Set _inner;
    }

    /**
     * @dev Add a value to a set. O(1).
     *
     * Returns true if the value was added to the set, that is if it was not
     * already present.
     */
    function add(AddressSet storage set, address value) internal returns (bool) {
        return _add(set._inner, bytes32(uint256(uint160(value))));
    }

    /**
     * @dev Removes a value from a set. O(1).
     *
     * Returns true if the value was removed from the set, that is if it was
     * present.
     */
    function remove(AddressSet storage set, address value) internal returns (bool) {
        return _remove(set._inner, bytes32(uint256(uint160(value))));
    }

    /**
     * @dev Returns true if the value is in the set. O(1).
     */
    function contains(AddressSet storage set, address value) internal view returns (bool) {
        return _contains(set._inner, bytes32(uint256(uint160(value))));
    }

    /**
     * @dev Returns the number of values in the set. O(1).
     */
    function length(AddressSet storage set) internal view returns (uint256) {
        return _length(set._inner);
    }

    /**
     * @dev Returns the value stored at position `index` in the set. O(1).
     *
     * Note that there are no guarantees on the ordering of values inside the
     * array, and it may change when more values are added or removed.
     *
     * Requirements:
     *
     * - `index` must be strictly less than {length}.
     */
    function at(AddressSet storage set, uint256 index) internal view returns (address) {
        return address(uint160(uint256(_at(set._inner, index))));
    }

    /**
     * @dev Return the entire set in an array
     *
     * WARNING: This operation will copy the entire storage to memory, which can be quite expensive. This is designed
     * to mostly be used by view accessors that are queried without any gas fees. Developers should keep in mind that
     * this function has an unbounded cost, and using it as part of a state-changing function may render the function
     * uncallable if the set grows to a point where copying to memory consumes too much gas to fit in a block.
     */
    function values(AddressSet storage set) internal view returns (address[] memory) {
        bytes32[] memory store = _values(set._inner);
        address[] memory result;

        /// @solidity memory-safe-assembly
        assembly {
            result := store
        }

        return result;
    }

    // UintSet

    struct UintSet {
        Set _inner;
    }

    /**
     * @dev Add a value to a set. O(1).
     *
     * Returns true if the value was added to the set, that is if it was not
     * already present.
     */
    function add(UintSet storage set, uint256 value) internal returns (bool) {
        return _add(set._inner, bytes32(value));
    }

    /**
     * @dev Removes a value from a set. O(1).
     *
     * Returns true if the value was removed from the set, that is if it was
     * present.
     */
    function remove(UintSet storage set, uint256 value) internal returns (bool) {
        return _remove(set._inner, bytes32(value));
    }

    /**
     * @dev Returns true if the value is in the set. O(1).
     */
    function contains(UintSet storage set, uint256 value) internal view returns (bool) {
        return _contains(set._inner, bytes32(value));
    }

    /**
     * @dev Returns the number of values in the set. O(1).
     */
    function length(UintSet storage set) internal view returns (uint256) {
        return _length(set._inner);
    }

    /**
     * @dev Returns the value stored at position `index` in the set. O(1).
     *
     * Note that there are no guarantees on the ordering of values inside the
     * array, and it may change when more values are added or removed.
     *
     * Requirements:
     *
     * - `index` must be strictly less than {length}.
     */
    function at(UintSet storage set, uint256 index) internal view returns (uint256) {
        return uint256(_at(set._inner, index));
    }

    /**
     * @dev Return the entire set in an array
     *
     * WARNING: This operation will copy the entire storage to memory, which can be quite expensive. This is designed
     * to mostly be used by view accessors that are queried without any gas fees. Developers should keep in mind that
     * this function has an unbounded cost, and using it as part of a state-changing function may render the function
     * uncallable if the set grows to a point where copying to memory consumes too much gas to fit in a block.
     */
    function values(UintSet storage set) internal view returns (uint256[] memory) {
        bytes32[] memory store = _values(set._inner);
        uint256[] memory result;

        /// @solidity memory-safe-assembly
        assembly {
            result := store
        }

        return result;
    }
}

// ============================================================
// FILE: contracts/bank/Bank.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import "../token/TokenUtils.sol";
import "../role/RoleModule.sol";

// @title Bank
// @dev Contract to handle storing and transferring of tokens
contract Bank is RoleModule {
    using SafeERC20 for IERC20;

    DataStore public immutable dataStore;

    constructor(RoleStore _roleStore, DataStore _dataStore) RoleModule(_roleStore) {
        dataStore = _dataStore;
    }

    receive() external payable {
        address wnt = TokenUtils.wnt(dataStore);
        if (msg.sender != wnt) {
            revert Errors.InvalidNativeTokenSender(msg.sender);
        }
    }

    // @dev transfer tokens from this contract to a receiver
    //
    // @param token the token to transfer
    // @param amount the amount to transfer
    // @param receiver the address to transfer to
    function transferOut(
        address token,
        address receiver,
        uint256 amount
    ) external onlyController {
        _transferOut(token, receiver, amount);
    }

    // @dev transfer tokens from this contract to a receiver
    // handles native token transfers as well
    //
    // @param token the token to transfer
    // @param amount the amount to transfer
    // @param receiver the address to transfer to
    // @param shouldUnwrapNativeToken whether to unwrap the wrapped native token
    // before transferring
    function transferOut(
        address token,
        address receiver,
        uint256 amount,
        bool shouldUnwrapNativeToken
    ) external onlyController {
        address wnt = TokenUtils.wnt(dataStore);

        if (token == wnt && shouldUnwrapNativeToken) {
            _transferOutNativeToken(token, receiver, amount);
        } else {
            _transferOut(token, receiver, amount);
        }
    }

    // @dev transfer native tokens from this contract to a receiver
    //
    // @param token the token to transfer
    // @param amount the amount to transfer
    // @param receiver the address to transfer to
    // @param shouldUnwrapNativeToken whether to unwrap the wrapped native token
    // before transferring
    function transferOutNativeToken(
        address receiver,
        uint256 amount
    ) external onlyController {
        address wnt = TokenUtils.wnt(dataStore);
        _transferOutNativeToken(wnt, receiver, amount);
    }

    // @dev transfer tokens from this contract to a receiver
    //
    // @param token the token to transfer
    // @param amount the amount to transfer
    // @param receiver the address to transfer to
    function _transferOut(
        address token,
        address receiver,
        uint256 amount
    ) internal {
        if (receiver == address(this)) {
            revert Errors.SelfTransferNotSupported(receiver);
        }

        TokenUtils.transfer(dataStore, token, receiver, amount);

        _afterTransferOut(token);
    }

    // @dev unwrap wrapped native tokens and transfer the native tokens from
    // this contract to a receiver
    //
    // @param token the token to transfer
    // @param amount the amount to transfer
    // @param receiver the address to transfer to
    function _transferOutNativeToken(
        address token,
        address receiver,
        uint256 amount
    ) internal {
        if (receiver == address(this)) {
            revert Errors.SelfTransferNotSupported(receiver);
        }

        TokenUtils.withdrawAndSendNativeToken(
            dataStore,
            token,
            receiver,
            amount
        );

        _afterTransferOut(token);
    }

    function _afterTransferOut(address /* token */) internal virtual {}
}

// ============================================================
// FILE: contracts/bank/StrictBank.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import "./Bank.sol";

// @title StrictBank
// @dev a stricter version of Bank
//
// the Bank contract does not have functions to validate the amount of tokens
// transferred in
// the Bank contract will mainly assume that safeTransferFrom calls work correctly
// and that tokens were transferred into it if there was no revert
//
// the StrictBank contract keeps track of its internal token balance
// and uses recordTransferIn to compare its change in balance and return
// the amount of tokens received
contract StrictBank is Bank {
    using SafeERC20 for IERC20;

    // used to record token balances to evaluate amounts transferred in
    mapping (address => uint256) public tokenBalances;

    constructor(RoleStore _roleStore, DataStore _dataStore) Bank(_roleStore, _dataStore) {}

    // @dev records a token transfer into the contract
    // @param token the token to record the transfer for
    // @return the amount of tokens transferred in
    function recordTransferIn(address token) external onlyController returns (uint256) {
        return _recordTransferIn(token);
    }

    // @dev this can be used to update the tokenBalances in case of token burns
    // or similar balance changes
    // the prevBalance is not validated to be more than the nextBalance as this
    // could allow someone to block this call by transferring into the contract
    // @param token the token to record the burn for
    // @return the new balance
    function syncTokenBalance(address token) external onlyController returns (uint256) {
        uint256 nextBalance = IERC20(token).balanceOf(address(this));
        tokenBalances[token] = nextBalance;
        return nextBalance;
    }

    // @dev records a token transfer into the contract
    // @param token the token to record the transfer for
    // @return the amount of tokens transferred in
    function _recordTransferIn(address token) internal returns (uint256) {
        uint256 prevBalance = tokenBalances[token];
        uint256 nextBalance = IERC20(token).balanceOf(address(this));
        tokenBalances[token] = nextBalance;

        return nextBalance - prevBalance;
    }

    // @dev update the internal balance after tokens have been transferred out
    // this is called from the Bank contract
    // @param token the token that was transferred out
    function _afterTransferOut(address token) internal override {
        tokenBalances[token] = IERC20(token).balanceOf(address(this));
    }
}

// ============================================================
// FILE: contracts/callback/CallbackUtils.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/utils/Address.sol";

import "../data/DataStore.sol";
import "../data/Keys.sol";

import "./IOrderCallbackReceiver.sol";
import "./IDepositCallbackReceiver.sol";
import "./IWithdrawalCallbackReceiver.sol";
import "./IShiftCallbackReceiver.sol";
import "./IGasFeeCallbackReceiver.sol";
import "./IGlvDepositCallbackReceiver.sol";
import "./IGlvWithdrawalCallbackReceiver.sol";

import "../order/OrderEventUtils.sol";
import "../withdrawal/WithdrawalEventUtils.sol";
import "../deposit/DepositEventUtils.sol";
import "../shift/ShiftEventUtils.sol";
import "../glv/glvDeposit/GlvDepositEventUtils.sol";
import "../glv/glvWithdrawal/GlvWithdrawalEventUtils.sol";

// @title CallbackUtils
// @dev most features require a two step process to complete
// the user first sends a request transaction, then a second transaction is sent
// by a keeper to execute the request
//
// to allow for better composability with other contracts, a callback contract
// can be specified to be called after request executions or cancellations
//
// in case it is necessary to add "before" callbacks, extra care should be taken
// to ensure that important state cannot be changed during the before callback
// for example, if an order can be cancelled in the "before" callback during
// order execution, it may lead to an order being executed even though the user
// was already refunded for its cancellation
//
// the details from callback errors are not processed to avoid cases where a malicious
// callback contract returns a very large value to cause transactions to run out of gas
library CallbackUtils {
    using Address for address;
    using Deposit for Deposit.Props;
    using Withdrawal for Withdrawal.Props;
    using Shift for Shift.Props;
    using Order for Order.Props;
    using GlvDeposit for GlvDeposit.Props;
    using GlvWithdrawal for GlvWithdrawal.Props;

    event AfterDepositExecutionError(bytes32 key, Deposit.Props deposit);
    event AfterDepositCancellationError(bytes32 key, Deposit.Props deposit);

    event AfterWithdrawalExecutionError(bytes32 key, Withdrawal.Props withdrawal);
    event AfterWithdrawalCancellationError(bytes32 key, Withdrawal.Props withdrawal);

    event AfterShiftExecutionError(bytes32 key, Shift.Props shift);
    event AfterShiftCancellationError(bytes32 key, Shift.Props shift);

    event AfterOrderExecutionError(bytes32 key, Order.Props order);
    event AfterOrderCancellationError(bytes32 key, Order.Props order);
    event AfterOrderFrozenError(bytes32 key, Order.Props order);

    event AfterGlvDepositExecutionError(bytes32 key, GlvDeposit.Props glvDeposit);
    event AfterGlvDepositCancellationError(bytes32 key, GlvDeposit.Props glvDeposit);
    event AfterGlvWithdrawalExecutionError(bytes32 key, GlvWithdrawal.Props glvWithdrawal);
    event AfterGlvWithdrawalCancellationError(bytes32 key, GlvWithdrawal.Props glvWithdrawal);

    // @dev validate that the callbackGasLimit is less than the max specified value
    // this is to prevent callback gas limits which are larger than the max gas limits per block
    // as this would allow for callback contracts that can consume all gas and conditionally cause
    // executions to fail
    // @param dataStore DataStore
    // @param callbackGasLimit the callback gas limit
    function validateCallbackGasLimit(DataStore dataStore, uint256 callbackGasLimit) external view {
        uint256 maxCallbackGasLimit = dataStore.getUint(Keys.MAX_CALLBACK_GAS_LIMIT);
        if (callbackGasLimit > maxCallbackGasLimit) {
            revert Errors.MaxCallbackGasLimitExceeded(callbackGasLimit, maxCallbackGasLimit);
        }
    }

    function validateGasLeftForCallback(uint256 callbackGasLimit) internal view {
        uint256 gasToBeForwarded = gasleft() / 64 * 63;
        if (gasToBeForwarded < callbackGasLimit) {
            revert Errors.InsufficientGasLeftForCallback(gasToBeForwarded, callbackGasLimit);
        }
    }

    function setSavedCallbackContract(DataStore dataStore, address account, address market, address callbackContract) external {
        dataStore.setAddress(Keys.savedCallbackContract(account, market), callbackContract);
    }

    function getSavedCallbackContract(DataStore dataStore, address account, address market) external view returns (address) {
        return dataStore.getAddress(Keys.savedCallbackContract(account, market));
    }

    function refundExecutionFee(
        DataStore dataStore,
        bytes32 key,
        address callbackContract,
        uint256 refundFeeAmount,
        EventUtils.EventLogData memory eventData
    ) internal returns (bool) {
        if (!isValidCallbackContract(callbackContract)) { return false; }

        uint256 gasLimit = dataStore.getUint(Keys.REFUND_EXECUTION_FEE_GAS_LIMIT);

        validateGasLeftForCallback(gasLimit);

        try IGasFeeCallbackReceiver(callbackContract).refundExecutionFee{ gas: gasLimit, value: refundFeeAmount }(
            key,
            eventData
        ) {
            return true;
        } catch {
            return false;
        }
    }

    // @dev called after a deposit execution
    // @param key the key of the deposit
    // @param deposit the deposit that was executed
    function afterDepositExecution(
        bytes32 key,
        Deposit.Props memory deposit,
        EventUtils.EventLogData memory eventData
    ) external {
        if (!isValidCallbackContract(deposit.callbackContract())) { return; }

        EventUtils.EventLogData memory depositData = DepositEventUtils.createEventData(deposit, Deposit.DepositType.Normal);

        validateGasLeftForCallback(deposit.callbackGasLimit());

        try IDepositCallbackReceiver(deposit.callbackContract()).afterDepositExecution{ gas: deposit.callbackGasLimit() }(
            key,
            depositData,
            eventData
        ) {
        } catch {
            emit AfterDepositExecutionError(key, deposit);
        }
    }

    // @dev called after a deposit cancellation
    // @param key the key of the deposit
    // @param deposit the deposit that was cancelled
    function afterDepositCancellation(
        bytes32 key,
        Deposit.Props memory deposit,
        EventUtils.EventLogData memory eventData
    ) external {
        if (!isValidCallbackContract(deposit.callbackContract())) { return; }

        EventUtils.EventLogData memory depositData = DepositEventUtils.createEventData(deposit, Deposit.DepositType.Normal);

        validateGasLeftForCallback(deposit.callbackGasLimit());

        try IDepositCallbackReceiver(deposit.callbackContract()).afterDepositCancellation{ gas: deposit.callbackGasLimit() }(
            key,
            depositData,
            eventData
        ) {
        } catch {
            emit AfterDepositCancellationError(key, deposit);
        }
    }

    // @dev called after a withdrawal execution
    // @param key the key of the withdrawal
    // @param withdrawal the withdrawal that was executed
    function afterWithdrawalExecution(
        bytes32 key,
        Withdrawal.Props memory withdrawal,
        EventUtils.EventLogData memory eventData
    ) external {
        if (!isValidCallbackContract(withdrawal.callbackContract())) { return; }

        EventUtils.EventLogData memory withdrawalData = WithdrawalEventUtils.createEventData(withdrawal, Withdrawal.WithdrawalType.Normal);

        validateGasLeftForCallback(withdrawal.callbackGasLimit());

        try IWithdrawalCallbackReceiver(withdrawal.callbackContract()).afterWithdrawalExecution{ gas: withdrawal.callbackGasLimit() }(
            key,
            withdrawalData,
            eventData
        ) {
        } catch {
            emit AfterWithdrawalExecutionError(key, withdrawal);
        }
    }

    // @dev called after a withdrawal cancellation
    // @param key the key of the withdrawal
    // @param withdrawal the withdrawal that was cancelled
    function afterWithdrawalCancellation(
        bytes32 key,
        Withdrawal.Props memory withdrawal,
        EventUtils.EventLogData memory eventData
    ) external {
        if (!isValidCallbackContract(withdrawal.callbackContract())) { return; }

        EventUtils.EventLogData memory withdrawalData = WithdrawalEventUtils.createEventData(withdrawal, Withdrawal.WithdrawalType.Normal);

        validateGasLeftForCallback(withdrawal.callbackGasLimit());

        try IWithdrawalCallbackReceiver(withdrawal.callbackContract()).afterWithdrawalCancellation{ gas: withdrawal.callbackGasLimit() }(
            key,
            withdrawalData,
            eventData
        ) {
        } catch {
            emit AfterWithdrawalCancellationError(key, withdrawal);
        }
    }

    function afterShiftExecution(
        bytes32 key,
        Shift.Props memory shift,
        EventUtils.EventLogData memory eventData
    ) external {
        if (!isValidCallbackContract(shift.callbackContract())) { return; }

        EventUtils.EventLogData memory shiftData = ShiftEventUtils.createEventData(shift);

        validateGasLeftForCallback(shift.callbackGasLimit());

        try IShiftCallbackReceiver(shift.callbackContract()).afterShiftExecution{ gas: shift.callbackGasLimit() }(
            key,
            shiftData,
            eventData
        ) {
        } catch {
            emit AfterShiftExecutionError(key, shift);
        }
    }
    function afterShiftCancellation(
        bytes32 key,
        Shift.Props memory shift,
        EventUtils.EventLogData memory eventData
    ) external {
        if (!isValidCallbackContract(shift.callbackContract())) { return; }

        EventUtils.EventLogData memory shiftData = ShiftEventUtils.createEventData(shift);

        validateGasLeftForCallback(shift.callbackGasLimit());

        try IShiftCallbackReceiver(shift.callbackContract()).afterShiftCancellation{ gas: shift.callbackGasLimit() }(
            key,
            shiftData,
            eventData
        ) {
        } catch {
            emit AfterShiftCancellationError(key, shift);
        }
    }

    // @dev called after an order execution
    // note that the order.size, order.initialCollateralDeltaAmount and other
    // properties may be updated during execution, the new values may not be
    // updated in the order object for the callback
    // @param key the key of the order
    // @param order the order that was executed
    function afterOrderExecution(
        bytes32 key,
        Order.Props memory order,
        EventUtils.EventLogData memory eventData
    ) external {
        if (!isValidCallbackContract(order.callbackContract())) { return; }

        EventUtils.EventLogData memory orderData = OrderEventUtils.createEventData(order);

        validateGasLeftForCallback(order.callbackGasLimit());

        try IOrderCallbackReceiver(order.callbackContract()).afterOrderExecution{ gas: order.callbackGasLimit() }(
            key,
            orderData,
            eventData
        ) {
        } catch {
            emit AfterOrderExecutionError(key, order);
        }
    }

    // @dev called after an order cancellation
    // @param key the key of the order
    // @param order the order that was cancelled
    function afterOrderCancellation(
        bytes32 key,
        Order.Props memory order,
        EventUtils.EventLogData memory eventData
    ) external {
        if (!isValidCallbackContract(order.callbackContract())) { return; }

        EventUtils.EventLogData memory orderData = OrderEventUtils.createEventData(order);

        validateGasLeftForCallback(order.callbackGasLimit());

        try IOrderCallbackReceiver(order.callbackContract()).afterOrderCancellation{ gas: order.callbackGasLimit() }(
            key,
            orderData,
            eventData
        ) {
        } catch {
            emit AfterOrderCancellationError(key, order);
        }
    }

    // @dev called after an order has been frozen, see OrderUtils.freezeOrder in OrderHandler for more info
    // @param key the key of the order
    // @param order the order that was frozen
    function afterOrderFrozen(
        bytes32 key,
        Order.Props memory order,
        EventUtils.EventLogData memory eventData
    ) external {
        if (!isValidCallbackContract(order.callbackContract())) { return; }

        EventUtils.EventLogData memory orderData = OrderEventUtils.createEventData(order);

        validateGasLeftForCallback(order.callbackGasLimit());

        try IOrderCallbackReceiver(order.callbackContract()).afterOrderFrozen{ gas: order.callbackGasLimit() }(
            key,
            orderData,
            eventData
        ) {
        } catch {
            emit AfterOrderFrozenError(key, order);
        }
    }

    // @dev called after a glvDeposit execution
    // @param key the key of the glvDeposit
    // @param glvDeposit the glvDeposit that was executed
    function afterGlvDepositExecution(
        bytes32 key,
        GlvDeposit.Props memory glvDeposit,
        EventUtils.EventLogData memory eventData
    ) external {
        if (!isValidCallbackContract(glvDeposit.callbackContract())) {
            return;
        }

        EventUtils.EventLogData memory glvData = GlvDepositEventUtils.createEventData(glvDeposit);

        validateGasLeftForCallback(glvDeposit.callbackGasLimit());

        try IGlvDepositCallbackReceiver(glvDeposit.callbackContract()).afterGlvDepositExecution{ gas: glvDeposit.callbackGasLimit() }(
            key,
            glvData,
            eventData
        ) {
        } catch {
            emit AfterGlvDepositExecutionError(key, glvDeposit);
        }
    }

    // @dev called after a glvDeposit cancellation
    // @param key the key of the glvDeposit
    // @param glvDeposit the glvDeposit that was cancelled
    function afterGlvDepositCancellation(
        bytes32 key,
        GlvDeposit.Props memory glvDeposit,
        EventUtils.EventLogData memory eventData
    ) external {
        if (!isValidCallbackContract(glvDeposit.callbackContract())) { return; }

        EventUtils.EventLogData memory glvData = GlvDepositEventUtils.createEventData(glvDeposit);

        validateGasLeftForCallback(glvDeposit.callbackGasLimit());

        try IGlvDepositCallbackReceiver(glvDeposit.callbackContract()).afterGlvDepositCancellation{ gas: glvDeposit.callbackGasLimit() }(
            key,
            glvData,
            eventData
        ) {
        } catch {
            emit AfterGlvDepositCancellationError(key, glvDeposit);
        }
    }

    // @dev called after a glvWithdrawal execution
    // @param key the key of the glvWithdrawal
    // @param glvWithdrawal the glvWithdrawal that was executed
    function afterGlvWithdrawalExecution(
        bytes32 key,
        GlvWithdrawal.Props memory glvWithdrawal,
        EventUtils.EventLogData memory eventData
    ) external {
        if (!isValidCallbackContract(glvWithdrawal.callbackContract())) { return; }

        EventUtils.EventLogData memory glvData = GlvWithdrawalEventUtils.createEventData(glvWithdrawal);

        validateGasLeftForCallback(glvWithdrawal.callbackGasLimit());

        try IGlvWithdrawalCallbackReceiver(glvWithdrawal.callbackContract()).afterGlvWithdrawalExecution{ gas: glvWithdrawal.callbackGasLimit() }(
            key,
            glvData,
            eventData
        ) {
        } catch {
            emit AfterGlvWithdrawalExecutionError(key, glvWithdrawal);
        }
    }

    // @dev called after a glvWithdrawal cancellation
    // @param key the key of the glvWithdrawal
    // @param glvWithdrawal the glvWithdrawal that was cancelled
    function afterGlvWithdrawalCancellation(
        bytes32 key,
        GlvWithdrawal.Props memory glvWithdrawal,
        EventUtils.EventLogData memory eventData
    ) external {
        if (!isValidCallbackContract(glvWithdrawal.callbackContract())) { return; }

        EventUtils.EventLogData memory glvData = GlvWithdrawalEventUtils.createEventData(glvWithdrawal);

        validateGasLeftForCallback(glvWithdrawal.callbackGasLimit());

        try IGlvWithdrawalCallbackReceiver(glvWithdrawal.callbackContract()).afterGlvWithdrawalCancellation{ gas: glvWithdrawal.callbackGasLimit() }(
            key,
            glvData,
            eventData
        ) {
        } catch {
            emit AfterGlvWithdrawalCancellationError(key, glvWithdrawal);
        }
    }

    // @dev validates that the given address is a contract
    // @param callbackContract the contract to call
    function isValidCallbackContract(address callbackContract) public view returns (bool) {
        if (callbackContract == address(0)) { return false; }
        if (!callbackContract.isContract()) { return false; }

        return true;
    }
}

// ============================================================
// FILE: contracts/callback/IDepositCallbackReceiver.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.0;

import "../event/EventUtils.sol";


// @title IDepositCallbackReceiver
// @dev interface for a deposit callback contract
interface IDepositCallbackReceiver {
    // @dev called after a deposit execution
    // @param key the key of the deposit
    // @param deposit the deposit that was executed
    function afterDepositExecution(bytes32 key, EventUtils.EventLogData memory depositData, EventUtils.EventLogData memory eventData) external;

    // @dev called after a deposit cancellation
    // @param key the key of the deposit
    // @param deposit the deposit that was cancelled
    function afterDepositCancellation(bytes32 key, EventUtils.EventLogData memory depositData, EventUtils.EventLogData memory eventData) external;
}

// ============================================================
// FILE: contracts/callback/IGasFeeCallbackReceiver.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.0;

import "../event/EventUtils.sol";

interface IGasFeeCallbackReceiver {
    function refundExecutionFee(bytes32 key, EventUtils.EventLogData memory eventData) external payable;
}

// ============================================================
// FILE: contracts/callback/IGlvDepositCallbackReceiver.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.0;

import "../event/EventUtils.sol";

// @title IGlvDepositCallbackReceiver
// @dev interface for a glvDeposit callback contract
interface IGlvDepositCallbackReceiver {
    // @dev called after a glvDeposit execution
    // @param key the key of the glvDeposit
    // @param glvDeposit the glvDeposit that was executed
    function afterGlvDepositExecution(
        bytes32 key,
        EventUtils.EventLogData memory glvDepositData,
        EventUtils.EventLogData memory eventData
    ) external;

    // @dev called after a glvDeposit cancellation
    // @param key the key of the glvDeposit
    // @param glvDeposit the glvDeposit that was cancelled
    function afterGlvDepositCancellation(
        bytes32 key,
        EventUtils.EventLogData memory glvDepositData,
        EventUtils.EventLogData memory eventData
    ) external;
}

// ============================================================
// FILE: contracts/callback/IGlvWithdrawalCallbackReceiver.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.0;

import "../event/EventUtils.sol";


// @title IGlvWithdrawalCallbackReceiver
// @dev interface for a glvWithdrawal callback contract
interface IGlvWithdrawalCallbackReceiver {
    // @dev called after a glvWithdrawal execution
    // @param key the key of the glvWithdrawal
    // @param glvWithdrawal the glvWithdrawal that was executed
    function afterGlvWithdrawalExecution(
        bytes32 key,
        EventUtils.EventLogData memory glvWithdrawalData,
        EventUtils.EventLogData memory eventData
    ) external;

    // @dev called after a glvWithdrawal cancellation
    // @param key the key of the glvWithdrawal
    // @param glvWithdrawal the glvWithdrawal that was cancelled
    function afterGlvWithdrawalCancellation(
        bytes32 key,
        EventUtils.EventLogData memory glvWithdrawalData,
        EventUtils.EventLogData memory eventData
    ) external;
}

// ============================================================
// FILE: contracts/callback/IOrderCallbackReceiver.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.0;

import "../event/EventUtils.sol";
import "../order/Order.sol";

// @title IOrderCallbackReceiver
// @dev interface for an order callback contract
interface IOrderCallbackReceiver {
    // @dev called after an order execution
    // @param key the key of the order
    // @param order the order that was executed
    function afterOrderExecution(bytes32 key, EventUtils.EventLogData memory orderData, EventUtils.EventLogData memory eventData) external;

    // @dev called after an order cancellation
    // @param key the key of the order
    // @param order the order that was cancelled
    function afterOrderCancellation(bytes32 key, EventUtils.EventLogData memory order, EventUtils.EventLogData memory eventData) external;

    // @dev called after an order has been frozen, see OrderUtils.freezeOrder in OrderHandler for more info
    // @param key the key of the order
    // @param order the order that was frozen
    function afterOrderFrozen(bytes32 key, EventUtils.EventLogData memory order, EventUtils.EventLogData memory eventData) external;
}

// ============================================================
// FILE: contracts/callback/IShiftCallbackReceiver.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.0;

import "../event/EventUtils.sol";

interface IShiftCallbackReceiver {
    function afterShiftExecution(bytes32 key, EventUtils.EventLogData memory shiftData, EventUtils.EventLogData memory eventData) external;
    function afterShiftCancellation(bytes32 key, EventUtils.EventLogData memory shiftData, EventUtils.EventLogData memory eventData) external;
}

// ============================================================
// FILE: contracts/callback/IWithdrawalCallbackReceiver.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.0;

import "../event/EventUtils.sol";

// @title IWithdrawalCallbackReceiver
// @dev interface for a withdrawal callback contract
interface IWithdrawalCallbackReceiver {
    // @dev called after a withdrawal execution
    // @param key the key of the withdrawal
    // @param withdrawal the withdrawal that was executed
    function afterWithdrawalExecution(bytes32 key, EventUtils.EventLogData memory withdrawal, EventUtils.EventLogData memory eventData) external;

    // @dev called after a withdrawal cancellation
    // @param key the key of the withdrawal
    // @param withdrawal the withdrawal that was cancelled
    function afterWithdrawalCancellation(bytes32 key, EventUtils.EventLogData memory withdrawal, EventUtils.EventLogData memory eventData) external;
}

// ============================================================
// FILE: contracts/chain/ArbGasInfo.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.0;

// @title ArbGasInfo
interface ArbGasInfo {
    function getCurrentTxL1GasFees() external view returns (uint256);
}

// ============================================================
// FILE: contracts/chain/ArbSys.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.0;

// @title ArbSys
// @dev Globally available variables for Arbitrum may have both an L1 and an L2
// value, the ArbSys interface is used to retrieve the L2 value
interface ArbSys {
    function arbBlockNumber() external view returns (uint256);
    function arbBlockHash(uint256 blockNumber) external view returns (bytes32);
}

// ============================================================
// FILE: contracts/chain/Chain.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.0;

import "./ArbSys.sol";
import "./ArbGasInfo.sol";

// @title Chain
// @dev Wrap the calls to retrieve chain variables to handle differences
// between chain implementations
library Chain {
    // if the ARBITRUM_CHAIN_ID changes, a new version of this library
    // and contracts depending on it would need to be deployed
    uint256 public constant ARBITRUM_CHAIN_ID = 42161;
    uint256 public constant ARBITRUM_SEPOLIA_CHAIN_ID = 421614;

    ArbSys public constant arbSys = ArbSys(address(100));
    ArbGasInfo public constant arbGasInfo = ArbGasInfo(address(108));

    // @dev return the current block's timestamp
    // @return the current block's timestamp
    function currentTimestamp() internal view returns (uint256) {
        return block.timestamp;
    }

    // @dev return the current block's number
    // @return the current block's number
    function currentBlockNumber() internal view returns (uint256) {
        if (shouldUseArbPrecompiles()) {
            return arbSys.arbBlockNumber();
        }

        return block.number;
    }

    // @dev return the current block's hash
    // @return the current block's hash
    function getBlockHash(uint256 blockNumber) internal view returns (bytes32) {
        if (shouldUseArbPrecompiles()) {
            return arbSys.arbBlockHash(blockNumber);
        }

        return blockhash(blockNumber);
    }

    function shouldUseArbPrecompiles() internal view returns (bool) {
        return block.chainid == ARBITRUM_CHAIN_ID || block.chainid == ARBITRUM_SEPOLIA_CHAIN_ID;
    }

    function getCurrentTxL1GasFees() internal view returns (uint256) {
        if (!shouldUseArbPrecompiles()) {
            return 0;
        }
        return arbGasInfo.getCurrentTxL1GasFees();
    }
}

// ============================================================
// FILE: contracts/data/DataStore.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.0;

import "../role/RoleModule.sol";
import "../utils/Calc.sol";

// @title DataStore
// @dev DataStore for all general state values
contract DataStore is RoleModule {
    using SafeCast for int256;

    using EnumerableSet for EnumerableSet.Bytes32Set;
    using EnumerableSet for EnumerableSet.AddressSet;
    using EnumerableSet for EnumerableSet.UintSet;
    using EnumerableValues for EnumerableSet.Bytes32Set;
    using EnumerableValues for EnumerableSet.AddressSet;
    using EnumerableValues for EnumerableSet.UintSet;

    // store for uint values
    mapping(bytes32 => uint256) public uintValues;
    // store for int values
    mapping(bytes32 => int256) public intValues;
    // store for address values
    mapping(bytes32 => address) public addressValues;
    // store for bool values
    mapping(bytes32 => bool) public boolValues;
    // store for string values
    mapping(bytes32 => string) public stringValues;
    // store for bytes32 values
    mapping(bytes32 => bytes32) public bytes32Values;

    // store for uint[] values
    mapping(bytes32 => uint256[]) public uintArrayValues;
    // store for int[] values
    mapping(bytes32 => int256[]) public intArrayValues;
    // store for address[] values
    mapping(bytes32 => address[]) public addressArrayValues;
    // store for bool[] values
    mapping(bytes32 => bool[]) public boolArrayValues;
    // store for string[] values
    mapping(bytes32 => string[]) public stringArrayValues;
    // store for bytes32[] values
    mapping(bytes32 => bytes32[]) public bytes32ArrayValues;

    // store for bytes32 sets
    mapping(bytes32 => EnumerableSet.Bytes32Set) internal bytes32Sets;
    // store for address sets
    mapping(bytes32 => EnumerableSet.AddressSet) internal addressSets;
    // store for uint256 sets
    mapping(bytes32 => EnumerableSet.UintSet) internal uintSets;

    constructor(RoleStore _roleStore) RoleModule(_roleStore) {}

    // @dev get the uint value for the given key
    // @param key the key of the value
    // @return the uint value for the key
    function getUint(bytes32 key) external view returns (uint256) {
        return uintValues[key];
    }

    // @dev set the uint value for the given key
    // @param key the key of the value
    // @param value the value to set
    // @return the uint value for the key
    function setUint(bytes32 key, uint256 value) external onlyController returns (uint256) {
        uintValues[key] = value;
        return value;
    }

    // @dev delete the uint value for the given key
    // @param key the key of the value
    function removeUint(bytes32 key) external onlyController {
        delete uintValues[key];
    }

    // @dev add the input int value to the existing uint value
    // @param key the key of the value
    // @param value the input int value
    // @return the new uint value
    function applyDeltaToUint(bytes32 key, int256 value, string memory errorMessage) external onlyController returns (uint256) {
        uint256 currValue = uintValues[key];
        if (value < 0 && (-value).toUint256() > currValue) {
            revert(errorMessage);
        }
        uint256 nextUint = Calc.sumReturnUint256(currValue, value);
        uintValues[key] = nextUint;
        return nextUint;
    }

    // @dev add the input uint value to the existing uint value
    // @param key the key of the value
    // @param value the input int value
    // @return the new uint value
    function applyDeltaToUint(bytes32 key, uint256 value) external onlyController returns (uint256) {
        uint256 currValue = uintValues[key];
        uint256 nextUint = currValue + value;
        uintValues[key] = nextUint;
        return nextUint;
    }

    // @dev add the input int value to the existing uint value, prevent the uint
    // value from becoming negative
    // @param key the key of the value
    // @param value the input int value
    // @return the new uint value
    function applyBoundedDeltaToUint(bytes32 key, int256 value) external onlyController returns (uint256) {
        uint256 uintValue = uintValues[key];
        if (value < 0 && (-value).toUint256() > uintValue) {
            uintValues[key] = 0;
            return 0;
        }

        uint256 nextUint = Calc.sumReturnUint256(uintValue, value);
        uintValues[key] = nextUint;
        return nextUint;
    }

    // @dev add the input uint value to the existing uint value
    // @param key the key of the value
    // @param value the input uint value
    // @return the new uint value
    function incrementUint(bytes32 key, uint256 value) external onlyController returns (uint256) {
        uint256 nextUint = uintValues[key] + value;
        uintValues[key] = nextUint;
        return nextUint;
    }

    // @dev subtract the input uint value from the existing uint value
    // @param key the key of the value
    // @param value the input uint value
    // @return the new uint value
    function decrementUint(bytes32 key, uint256 value) external onlyController returns (uint256) {
        uint256 nextUint = uintValues[key] - value;
        uintValues[key] = nextUint;
        return nextUint;
    }

    // @dev get the int value for the given key
    // @param key the key of the value
    // @return the int value for the key
    function getInt(bytes32 key) external view returns (int256) {
        return intValues[key];
    }

    // @dev set the int value for the given key
    // @param key the key of the value
    // @param value the value to set
    // @return the int value for the key
    function setInt(bytes32 key, int256 value) external onlyController returns (int256) {
        intValues[key] = value;
        return value;
    }

    function removeInt(bytes32 key) external onlyController {
        delete intValues[key];
    }

    // @dev add the input int value to the existing int value
    // @param key the key of the value
    // @param value the input int value
    // @return the new int value
    function applyDeltaToInt(bytes32 key, int256 value) external onlyController returns (int256) {
        int256 nextInt = intValues[key] + value;
        intValues[key] = nextInt;
        return nextInt;
    }

    // @dev add the input int value to the existing int value
    // @param key the key of the value
    // @param value the input int value
    // @return the new int value
    function incrementInt(bytes32 key, int256 value) external onlyController returns (int256) {
        int256 nextInt = intValues[key] + value;
        intValues[key] = nextInt;
        return nextInt;
    }

    // @dev subtract the input int value from the existing int value
    // @param key the key of the value
    // @param value the input int value
    // @return the new int value
    function decrementInt(bytes32 key, int256 value) external onlyController returns (int256) {
        int256 nextInt = intValues[key] - value;
        intValues[key] = nextInt;
        return nextInt;
    }

    // @dev get the address value for the given key
    // @param key the key of the value
    // @return the address value for the key
    function getAddress(bytes32 key) external view returns (address) {
        return addressValues[key];
    }

    // @dev set the address value for the given key
    // @param key the key of the value
    // @param value the value to set
    // @return the address value for the key
    function setAddress(bytes32 key, address value) external onlyController returns (address) {
        addressValues[key] = value;
        return value;
    }

    // @dev delete the address value for the given key
    // @param key the key of the value
    function removeAddress(bytes32 key) external onlyController {
        delete addressValues[key];
    }

    // @dev get the bool value for the given key
    // @param key the key of the value
    // @return the bool value for the key
    function getBool(bytes32 key) external view returns (bool) {
        return boolValues[key];
    }

    // @dev set the bool value for the given key
    // @param key the key of the value
    // @param value the value to set
    // @return the bool value for the key
    function setBool(bytes32 key, bool value) external onlyController returns (bool) {
        boolValues[key] = value;
        return value;
    }

    // @dev delete the bool value for the given key
    // @param key the key of the value
    function removeBool(bytes32 key) external onlyController {
        delete boolValues[key];
    }

    // @dev get the string value for the given key
    // @param key the key of the value
    // @return the string value for the key
    function getString(bytes32 key) external view returns (string memory) {
        return stringValues[key];
    }

    // @dev set the string value for the given key
    // @param key the key of the value
    // @param value the value to set
    // @return the string value for the key
    function setString(bytes32 key, string memory value) external onlyController returns (string memory) {
        stringValues[key] = value;
        return value;
    }

    // @dev delete the string value for the given key
    // @param key the key of the value
    function removeString(bytes32 key) external onlyController {
        delete stringValues[key];
    }

    // @dev get the bytes32 value for the given key
    // @param key the key of the value
    // @return the bytes32 value for the key
    function getBytes32(bytes32 key) external view returns (bytes32) {
        return bytes32Values[key];
    }

    // @dev set the bytes32 value for the given key
    // @param key the key of the value
    // @param value the value to set
    // @return the bytes32 value for the key
    function setBytes32(bytes32 key, bytes32 value) external onlyController returns (bytes32) {
        bytes32Values[key] = value;
        return value;
    }

    // @dev delete the bytes32 value for the given key
    // @param key the key of the value
    function removeBytes32(bytes32 key) external onlyController {
        delete bytes32Values[key];
    }

    // @dev get the uint array for the given key
    // @param key the key of the uint array
    // @return the uint array for the key
    function getUintArray(bytes32 key) external view returns (uint256[] memory) {
        return uintArrayValues[key];
    }

    // @dev set the uint array for the given key
    // @param key the key of the uint array
    // @param value the value of the uint array
    function setUintArray(bytes32 key, uint256[] memory value) external onlyController {
        uintArrayValues[key] = value;
    }

    // @dev delete the uint array for the given key
    // @param key the key of the uint array
    // @param value the value of the uint array
    function removeUintArray(bytes32 key) external onlyController {
        delete uintArrayValues[key];
    }

    // @dev get the int array for the given key
    // @param key the key of the int array
    // @return the int array for the key
    function getIntArray(bytes32 key) external view returns (int256[] memory) {
        return intArrayValues[key];
    }

    // @dev set the int array for the given key
    // @param key the key of the int array
    // @param value the value of the int array
    function setIntArray(bytes32 key, int256[] memory value) external onlyController {
        intArrayValues[key] = value;
    }

    // @dev delete the int array for the given key
    // @param key the key of the int array
    // @param value the value of the int array
    function removeIntArray(bytes32 key) external onlyController {
        delete intArrayValues[key];
    }

    // @dev get the address array for the given key
    // @param key the key of the address array
    // @return the address array for the key
    function getAddressArray(bytes32 key) external view returns (address[] memory) {
        return addressArrayValues[key];
    }

    // @dev set the address array for the given key
    // @param key the key of the address array
    // @param value the value of the address array
    function setAddressArray(bytes32 key, address[] memory value) external onlyController {
        addressArrayValues[key] = value;
    }

    // @dev delete the address array for the given key
    // @param key the key of the address array
    // @param value the value of the address array
    function removeAddressArray(bytes32 key) external onlyController {
        delete addressArrayValues[key];
    }

    // @dev get the bool array for the given key
    // @param key the key of the bool array
    // @return the bool array for the key
    function getBoolArray(bytes32 key) external view returns (bool[] memory) {
        return boolArrayValues[key];
    }

    // @dev set the bool array for the given key
    // @param key the key of the bool array
    // @param value the value of the bool array
    function setBoolArray(bytes32 key, bool[] memory value) external onlyController {
        boolArrayValues[key] = value;
    }

    // @dev delete the bool array for the given key
    // @param key the key of the bool array
    // @param value the value of the bool array
    function removeBoolArray(bytes32 key) external onlyController {
        delete boolArrayValues[key];
    }

    // @dev get the string array for the given key
    // @param key the key of the string array
    // @return the string array for the key
    function getStringArray(bytes32 key) external view returns (string[] memory) {
        return stringArrayValues[key];
    }

    // @dev set the string array for the given key
    // @param key the key of the string array
    // @param value the value of the string array
    function setStringArray(bytes32 key, string[] memory value) external onlyController {
        stringArrayValues[key] = value;
    }

    // @dev delete the string array for the given key
    // @param key the key of the string array
    // @param value the value of the string array
    function removeStringArray(bytes32 key) external onlyController {
        delete stringArrayValues[key];
    }

    // @dev get the bytes32 array for the given key
    // @param key the key of the bytes32 array
    // @return the bytes32 array for the key
    function getBytes32Array(bytes32 key) external view returns (bytes32[] memory) {
        return bytes32ArrayValues[key];
    }

    // @dev set the bytes32 array for the given key
    // @param key the key of the bytes32 array
    // @param value the value of the bytes32 array
    function setBytes32Array(bytes32 key, bytes32[] memory value) external onlyController {
        bytes32ArrayValues[key] = value;
    }

    // @dev delete the bytes32 array for the given key
    // @param key the key of the bytes32 array
    // @param value the value of the bytes32 array
    function removeBytes32Array(bytes32 key) external onlyController {
        delete bytes32ArrayValues[key];
    }

    // @dev check whether the given value exists in the set
    // @param setKey the key of the set
    // @param value the value to check
    function containsBytes32(bytes32 setKey, bytes32 value) external view returns (bool) {
        return bytes32Sets[setKey].contains(value);
    }

    // @dev get the length of the set
    // @param setKey the key of the set
    function getBytes32Count(bytes32 setKey) external view returns (uint256) {
        return bytes32Sets[setKey].length();
    }

    // @dev get the values of the set in the given range
    // @param setKey the key of the set
    // @param the start of the range, values at the start index will be returned
    // in the result
    // @param the end of the range, values at the end index will not be returned
    // in the result
    function getBytes32ValuesAt(bytes32 setKey, uint256 start, uint256 end) external view returns (bytes32[] memory) {
        return bytes32Sets[setKey].valuesAt(start, end);
    }

    // @dev add the given value to the set
    // @param setKey the key of the set
    // @param value the value to add
    function addBytes32(bytes32 setKey, bytes32 value) external onlyController {
        bytes32Sets[setKey].add(value);
    }

    // @dev remove the given value from the set
    // @param setKey the key of the set
    // @param value the value to remove
    function removeBytes32(bytes32 setKey, bytes32 value) external onlyController {
        bytes32Sets[setKey].remove(value);
    }

    // @dev check whether the given value exists in the set
    // @param setKey the key of the set
    // @param value the value to check
    function containsAddress(bytes32 setKey, address value) external view returns (bool) {
        return addressSets[setKey].contains(value);
    }

    // @dev get the length of the set
    // @param setKey the key of the set
    function getAddressCount(bytes32 setKey) external view returns (uint256) {
        return addressSets[setKey].length();
    }

    // @dev get the values of the set in the given range
    // @param setKey the key of the set
    // @param the start of the range, values at the start index will be returned
    // in the result
    // @param the end of the range, values at the end index will not be returned
    // in the result
    function getAddressValuesAt(bytes32 setKey, uint256 start, uint256 end) external view returns (address[] memory) {
        return addressSets[setKey].valuesAt(start, end);
    }

    // @dev add the given value to the set
    // @param setKey the key of the set
    // @param value the value to add
    function addAddress(bytes32 setKey, address value) external onlyController {
        addressSets[setKey].add(value);
    }

    // @dev remove the given value from the set
    // @param setKey the key of the set
    // @param value the value to remove
    function removeAddress(bytes32 setKey, address value) external onlyController {
        addressSets[setKey].remove(value);
    }

    // @dev check whether the given value exists in the set
    // @param setKey the key of the set
    // @param value the value to check
    function containsUint(bytes32 setKey, uint256 value) external view returns (bool) {
        return uintSets[setKey].contains(value);
    }

    // @dev get the length of the set
    // @param setKey the key of the set
    function getUintCount(bytes32 setKey) external view returns (uint256) {
        return uintSets[setKey].length();
    }

    // @dev get the values of the set in the given range
    // @param setKey the key of the set
    // @param the start of the range, values at the start index will be returned
    // in the result
    // @param the end of the range, values at the end index will not be returned
    // in the result
    function getUintValuesAt(bytes32 setKey, uint256 start, uint256 end) external view returns (uint256[] memory) {
        return uintSets[setKey].valuesAt(start, end);
    }

    // @dev add the given value to the set
    // @param setKey the key of the set
    // @param value the value to add
    function addUint(bytes32 setKey, uint256 value) external onlyController {
        uintSets[setKey].add(value);
    }

    // @dev remove the given value from the set
    // @param setKey the key of the set
    // @param value the value to remove
    function removeUint(bytes32 setKey, uint256 value) external onlyController {
        uintSets[setKey].remove(value);
    }
}

// ============================================================
// FILE: contracts/data/Keys.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.0;

// @title Keys
// @dev Keys for values in the DataStore
library Keys {
    // @dev key for the address of the wrapped native token
    bytes32 public constant WNT = keccak256(abi.encode("WNT"));
    // @dev key for the nonce value used in NonceUtils
    bytes32 public constant NONCE = keccak256(abi.encode("NONCE"));

    // @dev for sending received fees
    bytes32 public constant FEE_RECEIVER = keccak256(abi.encode("FEE_RECEIVER"));

    // @dev for holding tokens that could not be sent out
    bytes32 public constant HOLDING_ADDRESS = keccak256(abi.encode("HOLDING_ADDRESS"));
    bytes32 public constant RELAY_FEE_ADDRESS = keccak256(abi.encode("RELAY_FEE_ADDRESS"));

    // @dev key for the minimum gas for execution error
    bytes32 public constant MIN_HANDLE_EXECUTION_ERROR_GAS = keccak256(abi.encode("MIN_HANDLE_EXECUTION_ERROR_GAS"));

    // @dev key for the minimum gas that should be forwarded for execution error handling
    bytes32 public constant MIN_HANDLE_EXECUTION_ERROR_GAS_TO_FORWARD = keccak256(abi.encode("MIN_HANDLE_EXECUTION_ERROR_GAS_TO_FORWARD"));

    // @dev key for the min additional gas for execution
    bytes32 public constant MIN_ADDITIONAL_GAS_FOR_EXECUTION = keccak256(abi.encode("MIN_ADDITIONAL_GAS_FOR_EXECUTION"));

    // @dev for a global reentrancy guard
    bytes32 public constant REENTRANCY_GUARD_STATUS = keccak256(abi.encode("REENTRANCY_GUARD_STATUS"));

    // @dev key for deposit fees
    bytes32 public constant DEPOSIT_FEE_TYPE = keccak256(abi.encode("DEPOSIT_FEE_TYPE"));
    // @dev key for withdrawal fees
    bytes32 public constant WITHDRAWAL_FEE_TYPE = keccak256(abi.encode("WITHDRAWAL_FEE_TYPE"));
    // @dev key for swap fees
    bytes32 public constant SWAP_FEE_TYPE = keccak256(abi.encode("SWAP_FEE_TYPE"));
    bytes32 public constant ATOMIC_SWAP_FEE_TYPE = keccak256(abi.encode("ATOMIC_SWAP_FEE_TYPE"));
    // @dev key for position fees
    bytes32 public constant POSITION_FEE_TYPE = keccak256(abi.encode("POSITION_FEE_TYPE"));
    // @dev key for ui deposit fees
    bytes32 public constant UI_DEPOSIT_FEE_TYPE = keccak256(abi.encode("UI_DEPOSIT_FEE_TYPE"));
    // @dev key for ui withdrawal fees
    bytes32 public constant UI_WITHDRAWAL_FEE_TYPE = keccak256(abi.encode("UI_WITHDRAWAL_FEE_TYPE"));
    // @dev key for ui swap fees
    bytes32 public constant UI_SWAP_FEE_TYPE = keccak256(abi.encode("UI_SWAP_FEE_TYPE"));
    // @dev key for ui position fees
    bytes32 public constant UI_POSITION_FEE_TYPE = keccak256(abi.encode("UI_POSITION_FEE_TYPE"));

    // @dev key for ui fee factor
    bytes32 public constant UI_FEE_FACTOR = keccak256(abi.encode("UI_FEE_FACTOR"));
    // @dev key for max ui fee receiver factor
    bytes32 public constant MAX_UI_FEE_FACTOR = keccak256(abi.encode("MAX_UI_FEE_FACTOR"));

    // @dev key for the claimable fee amount
    bytes32 public constant CLAIMABLE_FEE_AMOUNT = keccak256(abi.encode("CLAIMABLE_FEE_AMOUNT"));
    // @dev key for the claimable ui fee amount
    bytes32 public constant CLAIMABLE_UI_FEE_AMOUNT = keccak256(abi.encode("CLAIMABLE_UI_FEE_AMOUNT"));
    // @dev key for the max number of auto cancel orders
    bytes32 public constant MAX_AUTO_CANCEL_ORDERS = keccak256(abi.encode("MAX_AUTO_CANCEL_ORDERS"));
    // @dev key for the max total callback gas limit for auto cancel orders
    bytes32 public constant MAX_TOTAL_CALLBACK_GAS_LIMIT_FOR_AUTO_CANCEL_ORDERS = keccak256(abi.encode("MAX_TOTAL_CALLBACK_GAS_LIMIT_FOR_AUTO_CANCEL_ORDERS"));

    // @dev key for the market list
    bytes32 public constant MARKET_LIST = keccak256(abi.encode("MARKET_LIST"));

    // @dev key for the fee batch list
    bytes32 public constant FEE_BATCH_LIST = keccak256(abi.encode("FEE_BATCH_LIST"));

    // @dev key for the deposit list
    bytes32 public constant DEPOSIT_LIST = keccak256(abi.encode("DEPOSIT_LIST"));
    // @dev key for the account deposit list
    bytes32 public constant ACCOUNT_DEPOSIT_LIST = keccak256(abi.encode("ACCOUNT_DEPOSIT_LIST"));

    // @dev key for the withdrawal list
    bytes32 public constant WITHDRAWAL_LIST = keccak256(abi.encode("WITHDRAWAL_LIST"));
    // @dev key for the account withdrawal list
    bytes32 public constant ACCOUNT_WITHDRAWAL_LIST = keccak256(abi.encode("ACCOUNT_WITHDRAWAL_LIST"));

    // @dev key for the shift list
    bytes32 public constant SHIFT_LIST = keccak256(abi.encode("SHIFT_LIST"));
    // @dev key for the account shift list
    bytes32 public constant ACCOUNT_SHIFT_LIST = keccak256(abi.encode("ACCOUNT_SHIFT_LIST"));

    bytes32 public constant GLV_LIST = keccak256(abi.encode("GLV_LIST"));
    bytes32 public constant GLV_DEPOSIT_LIST = keccak256(abi.encode("GLV_DEPOSIT_LIST"));
    bytes32 public constant GLV_SHIFT_LIST = keccak256(abi.encode("GLV_SHIFT_LIST"));
    bytes32 public constant ACCOUNT_GLV_DEPOSIT_LIST = keccak256(abi.encode("ACCOUNT_GLV_DEPOSIT_LIST"));
    bytes32 public constant GLV_WITHDRAWAL_LIST = keccak256(abi.encode("GLV_WITHDRAWAL_LIST"));
    bytes32 public constant ACCOUNT_GLV_WITHDRAWAL_LIST = keccak256(abi.encode("ACCOUNT_GLV_WITHDRAWAL_LIST"));
    bytes32 public constant GLV_SUPPORTED_MARKET_LIST = keccak256(abi.encode("GLV_SUPPORTED_MARKET_LIST"));

    // @dev key for the position list
    bytes32 public constant POSITION_LIST = keccak256(abi.encode("POSITION_LIST"));
    // @dev key for the account position list
    bytes32 public constant ACCOUNT_POSITION_LIST = keccak256(abi.encode("ACCOUNT_POSITION_LIST"));

    // @dev key for the order list
    bytes32 public constant ORDER_LIST = keccak256(abi.encode("ORDER_LIST"));
    // @dev key for the account order list
    bytes32 public constant ACCOUNT_ORDER_LIST = keccak256(abi.encode("ACCOUNT_ORDER_LIST"));

    // @dev key for the subaccount list
    bytes32 public constant SUBACCOUNT_LIST = keccak256(abi.encode("SUBACCOUNT_LIST"));

    // @dev key for the auto cancel order list
    bytes32 public constant AUTO_CANCEL_ORDER_LIST = keccak256(abi.encode("AUTO_CANCEL_ORDER_LIST"));

    // @dev key for is market disabled
    bytes32 public constant IS_MARKET_DISABLED = keccak256(abi.encode("IS_MARKET_DISABLED"));

    // @dev key for the max swap path length allowed
    bytes32 public constant MAX_SWAP_PATH_LENGTH = keccak256(abi.encode("MAX_SWAP_PATH_LENGTH"));
    // @dev key used to store markets observed in a swap path, to ensure that a swap path contains unique markets
    bytes32 public constant SWAP_PATH_MARKET_FLAG = keccak256(abi.encode("SWAP_PATH_MARKET_FLAG"));
    // @dev key used to store the min market tokens for the first deposit for a market
    bytes32 public constant MIN_MARKET_TOKENS_FOR_FIRST_DEPOSIT = keccak256(abi.encode("MIN_MARKET_TOKENS_FOR_FIRST_DEPOSIT"));

    bytes32 public constant CREATE_GLV_DEPOSIT_FEATURE_DISABLED = keccak256(abi.encode("CREATE_GLV_DEPOSIT_FEATURE_DISABLED"));
    bytes32 public constant CANCEL_GLV_DEPOSIT_FEATURE_DISABLED = keccak256(abi.encode("CANCEL_GLV_DEPOSIT_FEATURE_DISABLED"));
    bytes32 public constant EXECUTE_GLV_DEPOSIT_FEATURE_DISABLED = keccak256(abi.encode("EXECUTE_GLV_DEPOSIT_FEATURE_DISABLED"));

    bytes32 public constant CREATE_GLV_WITHDRAWAL_FEATURE_DISABLED = keccak256(abi.encode("CREATE_GLV_WITHDRAWAL_FEATURE_DISABLED"));
    bytes32 public constant CANCEL_GLV_WITHDRAWAL_FEATURE_DISABLED = keccak256(abi.encode("CANCEL_GLV_WITHDRAWAL_FEATURE_DISABLED"));
    bytes32 public constant EXECUTE_GLV_WITHDRAWAL_FEATURE_DISABLED = keccak256(abi.encode("EXECUTE_GLV_WITHDRAWAL_FEATURE_DISABLED"));

    bytes32 public constant CREATE_GLV_SHIFT_FEATURE_DISABLED = keccak256(abi.encode("CREATE_GLV_SHIFT_FEATURE_DISABLED"));
    bytes32 public constant EXECUTE_GLV_SHIFT_FEATURE_DISABLED = keccak256(abi.encode("EXECUTE_GLV_SHIFT_FEATURE_DISABLED"));

    bytes32 public constant JIT_FEATURE_DISABLED = keccak256(abi.encode("JIT_FEATURE_DISABLED"));

    // @dev key for whether the create deposit feature is disabled
    bytes32 public constant CREATE_DEPOSIT_FEATURE_DISABLED = keccak256(abi.encode("CREATE_DEPOSIT_FEATURE_DISABLED"));
    // @dev key for whether the cancel deposit feature is disabled
    bytes32 public constant CANCEL_DEPOSIT_FEATURE_DISABLED = keccak256(abi.encode("CANCEL_DEPOSIT_FEATURE_DISABLED"));
    // @dev key for whether the execute deposit feature is disabled
    bytes32 public constant EXECUTE_DEPOSIT_FEATURE_DISABLED = keccak256(abi.encode("EXECUTE_DEPOSIT_FEATURE_DISABLED"));

    // @dev key for whether the create withdrawal feature is disabled
    bytes32 public constant CREATE_WITHDRAWAL_FEATURE_DISABLED = keccak256(abi.encode("CREATE_WITHDRAWAL_FEATURE_DISABLED"));
    // @dev key for whether the cancel withdrawal feature is disabled
    bytes32 public constant CANCEL_WITHDRAWAL_FEATURE_DISABLED = keccak256(abi.encode("CANCEL_WITHDRAWAL_FEATURE_DISABLED"));
    // @dev key for whether the execute withdrawal feature is disabled
    bytes32 public constant EXECUTE_WITHDRAWAL_FEATURE_DISABLED = keccak256(abi.encode("EXECUTE_WITHDRAWAL_FEATURE_DISABLED"));
    // @dev key for whether the execute atomic withdrawal feature is disabled
    bytes32 public constant EXECUTE_ATOMIC_WITHDRAWAL_FEATURE_DISABLED = keccak256(abi.encode("EXECUTE_ATOMIC_WITHDRAWAL_FEATURE_DISABLED"));

    // @dev key for whether the create shift feature is disabled
    bytes32 public constant CREATE_SHIFT_FEATURE_DISABLED = keccak256(abi.encode("CREATE_SHIFT_FEATURE_DISABLED"));
    // @dev key for whether the cancel shift feature is disabled
    bytes32 public constant CANCEL_SHIFT_FEATURE_DISABLED = keccak256(abi.encode("CANCEL_SHIFT_FEATURE_DISABLED"));
    // @dev key for whether the execute shift feature is disabled
    bytes32 public constant EXECUTE_SHIFT_FEATURE_DISABLED = keccak256(abi.encode("EXECUTE_SHIFT_FEATURE_DISABLED"));

    // @dev key for whether the create order feature is disabled
    bytes32 public constant CREATE_ORDER_FEATURE_DISABLED = keccak256(abi.encode("CREATE_ORDER_FEATURE_DISABLED"));
    // @dev key for whether the execute order feature is disabled
    bytes32 public constant EXECUTE_ORDER_FEATURE_DISABLED = keccak256(abi.encode("EXECUTE_ORDER_FEATURE_DISABLED"));
    // @dev key for whether the execute adl feature is disabled
    // for liquidations, it can be disabled by using the EXECUTE_ORDER_FEATURE_DISABLED key with the Liquidation
    // order type, ADL orders have a MarketDecrease order type, so a separate key is needed to disable it
    bytes32 public constant EXECUTE_ADL_FEATURE_DISABLED = keccak256(abi.encode("EXECUTE_ADL_FEATURE_DISABLED"));
    // @dev key for whether the update order feature is disabled
    bytes32 public constant UPDATE_ORDER_FEATURE_DISABLED = keccak256(abi.encode("UPDATE_ORDER_FEATURE_DISABLED"));
    // @dev key for whether the cancel order feature is disabled
    bytes32 public constant CANCEL_ORDER_FEATURE_DISABLED = keccak256(abi.encode("CANCEL_ORDER_FEATURE_DISABLED"));

    bytes32 public constant CLAIM_FUNDING_FEES_FEATURE_DISABLED = keccak256(abi.encode("CLAIM_FUNDING_FEES_FEATURE_DISABLED"));
    bytes32 public constant CLAIM_COLLATERAL_FEATURE_DISABLED = keccak256(abi.encode("CLAIM_COLLATERAL_FEATURE_DISABLED"));
    bytes32 public constant CLAIM_AFFILIATE_REWARDS_FEATURE_DISABLED = keccak256(abi.encode("CLAIM_AFFILIATE_REWARDS_FEATURE_DISABLED"));
    bytes32 public constant CLAIM_UI_FEES_FEATURE_DISABLED = keccak256(abi.encode("CLAIM_UI_FEES_FEATURE_DISABLED"));
    bytes32 public constant SUBACCOUNT_FEATURE_DISABLED = keccak256(abi.encode("SUBACCOUNT_FEATURE_DISABLED"));
    bytes32 public constant GASLESS_FEATURE_DISABLED = keccak256(abi.encode("GASLESS_FEATURE_DISABLED"));
    bytes32 public constant GENERAL_CLAIM_FEATURE_DISABLED = keccak256(abi.encode("GENERAL_CLAIM_FEATURE_DISABLED"));

    // @dev key for the minimum required oracle signers for an oracle observation
    bytes32 public constant MIN_ORACLE_SIGNERS = keccak256(abi.encode("MIN_ORACLE_SIGNERS"));
    // @dev key for the minimum block confirmations before blockhash can be excluded for oracle signature validation
    bytes32 public constant MIN_ORACLE_BLOCK_CONFIRMATIONS = keccak256(abi.encode("MIN_ORACLE_BLOCK_CONFIRMATIONS"));
    // @dev key for the maximum usable oracle price age in seconds
    bytes32 public constant MAX_ORACLE_PRICE_AGE = keccak256(abi.encode("MAX_ORACLE_PRICE_AGE"));
    // @dev key for the maximum usable atomic oracle price age in seconds
    bytes32 public constant MAX_ATOMIC_ORACLE_PRICE_AGE = keccak256(abi.encode("MAX_ATOMIC_ORACLE_PRICE_AGE"));
    // @dev key for the maximum oracle timestamp range
    bytes32 public constant MAX_ORACLE_TIMESTAMP_RANGE = keccak256(abi.encode("MAX_ORACLE_TIMESTAMP_RANGE"));
    // @dev key for the maximum oracle price deviation factor from the ref price
    bytes32 public constant MAX_ORACLE_REF_PRICE_DEVIATION_FACTOR = keccak256(abi.encode("MAX_ORACLE_REF_PRICE_DEVIATION_FACTOR"));
    // @dev key for whether an oracle provider is enabled
    bytes32 public constant IS_ORACLE_PROVIDER_ENABLED = keccak256(abi.encode("IS_ORACLE_PROVIDER_ENABLED"));
    // @dev key for whether an oracle provider can be used for atomic actions
    bytes32 public constant IS_ATOMIC_ORACLE_PROVIDER = keccak256(abi.encode("IS_ATOMIC_ORACLE_PROVIDER"));
    // @dev key for oracle timestamp adjustment
    bytes32 public constant ORACLE_TIMESTAMP_ADJUSTMENT = keccak256(abi.encode("ORACLE_TIMESTAMP_ADJUSTMENT"));
    // @dev key for oracle provider for token
    bytes32 public constant ORACLE_PROVIDER_FOR_TOKEN = keccak256(abi.encode("ORACLE_PROVIDER_FOR_TOKEN"));
    // @dev key for oracle provider updated time
    bytes32 public constant ORACLE_PROVIDER_UPDATED_AT = keccak256(abi.encode("ORACLE_PROVIDER_UPDATED_AT"));
    // @dev key for oracle provider same value delay
    bytes32 public constant ORACLE_PROVIDER_MIN_CHANGE_DELAY = keccak256(abi.encode("ORACLE_PROVIDER_MIN_CHANGE_DELAY"));
    // @dev key for the chainlink payment token
    bytes32 public constant CHAINLINK_PAYMENT_TOKEN = keccak256(abi.encode("CHAINLINK_PAYMENT_TOKEN"));
    // @dev key for the sequencer grace duration
    bytes32 public constant SEQUENCER_GRACE_DURATION = keccak256(abi.encode("SEQUENCER_GRACE_DURATION"));

    // @dev key for the percentage amount of position fees to be received
    bytes32 public constant POSITION_FEE_RECEIVER_FACTOR = keccak256(abi.encode("POSITION_FEE_RECEIVER_FACTOR"));
    // @dev key for the percentage amount of liquidation fees to be received
    bytes32 public constant LIQUIDATION_FEE_RECEIVER_FACTOR = keccak256(abi.encode("LIQUIDATION_FEE_RECEIVER_FACTOR"));
    // @dev key for the percentage amount of swap fees to be received
    bytes32 public constant SWAP_FEE_RECEIVER_FACTOR = keccak256(abi.encode("SWAP_FEE_RECEIVER_FACTOR"));
    // @dev key for the percentage amount of borrowing fees to be received
    bytes32 public constant BORROWING_FEE_RECEIVER_FACTOR = keccak256(abi.encode("BORROWING_FEE_RECEIVER_FACTOR"));

    // @dev key for the base gas limit used when estimating execution fee
    bytes32 public constant ESTIMATED_GAS_FEE_BASE_AMOUNT_V2_1 = keccak256(abi.encode("ESTIMATED_GAS_FEE_BASE_AMOUNT_V2_1"));
    // @dev key for the gas limit used for each oracle price when estimating execution fee
    bytes32 public constant ESTIMATED_GAS_FEE_PER_ORACLE_PRICE = keccak256(abi.encode("ESTIMATED_GAS_FEE_PER_ORACLE_PRICE"));
    // @dev key for the multiplier used when estimating execution fee
    bytes32 public constant ESTIMATED_GAS_FEE_MULTIPLIER_FACTOR = keccak256(abi.encode("ESTIMATED_GAS_FEE_MULTIPLIER_FACTOR"));

    // @dev key for the base gas limit used when calculating execution fee
    bytes32 public constant EXECUTION_GAS_FEE_BASE_AMOUNT_V2_1 = keccak256(abi.encode("EXECUTION_GAS_FEE_BASE_AMOUNT_V2_1"));
    // @dev key for the gas limit used for each oracle price
    bytes32 public constant EXECUTION_GAS_FEE_PER_ORACLE_PRICE = keccak256(abi.encode("EXECUTION_GAS_FEE_PER_ORACLE_PRICE"));
    // @dev key for the multiplier used when calculating execution fee
    bytes32 public constant EXECUTION_GAS_FEE_MULTIPLIER_FACTOR = keccak256(abi.encode("EXECUTION_GAS_FEE_MULTIPLIER_FACTOR"));

    // @dev key for the max execution fee multiplier
    bytes32 public constant MAX_EXECUTION_FEE_MULTIPLIER_FACTOR = keccak256(abi.encode("MAX_EXECUTION_FEE_MULTIPLIER_FACTOR"));

    bytes32 public constant MAX_RELAY_FEE_SWAP_USD_FOR_SUBACCOUNT = keccak256(abi.encode("MAX_RELAY_FEE_SWAP_USD_FOR_SUBACCOUNT"));
    bytes32 public constant GELATO_RELAY_FEE_MULTIPLIER_FACTOR = keccak256(abi.encode("GELATO_RELAY_FEE_MULTIPLIER_FACTOR"));
    bytes32 public constant GELATO_RELAY_FEE_BASE_AMOUNT = keccak256(abi.encode("GELATO_RELAY_FEE_BASE_AMOUNT"));
    bytes32 public constant CREATE_DEPOSIT_GAS_LIMIT = keccak256(abi.encode("CREATE_DEPOSIT_GAS_LIMIT"));
    bytes32 public constant DEPOSIT_GAS_LIMIT = keccak256(abi.encode("DEPOSIT_GAS_LIMIT"));
    bytes32 public constant CREATE_WITHDRAWAL_GAS_LIMIT = keccak256(abi.encode("CREATE_WITHDRAWAL_GAS_LIMIT"));
    bytes32 public constant WITHDRAWAL_GAS_LIMIT = keccak256(abi.encode("WITHDRAWAL_GAS_LIMIT"));
    bytes32 public constant CREATE_GLV_DEPOSIT_GAS_LIMIT = keccak256(abi.encode("CREATE_GLV_DEPOSIT_GAS_LIMIT"));
    bytes32 public constant GLV_DEPOSIT_GAS_LIMIT = keccak256(abi.encode("GLV_DEPOSIT_GAS_LIMIT"));
    bytes32 public constant CREATE_GLV_WITHDRAWAL_GAS_LIMIT = keccak256(abi.encode("CREATE_GLV_WITHDRAWAL_GAS_LIMIT"));
    bytes32 public constant GLV_WITHDRAWAL_GAS_LIMIT = keccak256(abi.encode("GLV_WITHDRAWAL_GAS_LIMIT"));
    bytes32 public constant GLV_SHIFT_GAS_LIMIT = keccak256(abi.encode("GLV_SHIFT_GAS_LIMIT"));
    bytes32 public constant GLV_PER_MARKET_GAS_LIMIT = keccak256(abi.encode("GLV_PER_MARKET_GAS_LIMIT"));
    bytes32 public constant SHIFT_GAS_LIMIT = keccak256(abi.encode("SHIFT_GAS_LIMIT"));
    bytes32 public constant SINGLE_SWAP_GAS_LIMIT = keccak256(abi.encode("SINGLE_SWAP_GAS_LIMIT"));
    bytes32 public constant INCREASE_ORDER_GAS_LIMIT = keccak256(abi.encode("INCREASE_ORDER_GAS_LIMIT"));
    bytes32 public constant DECREASE_ORDER_GAS_LIMIT = keccak256(abi.encode("DECREASE_ORDER_GAS_LIMIT"));
    bytes32 public constant SWAP_ORDER_GAS_LIMIT = keccak256(abi.encode("SWAP_ORDER_GAS_LIMIT"));
    bytes32 public constant SET_TRADER_REFERRAL_CODE_GAS_LIMIT = keccak256(abi.encode("SET_TRADER_REFERRAL_CODE_GAS_LIMIT"));
    bytes32 public constant REGISTER_CODE_GAS_LIMIT = keccak256(abi.encode("REGISTER_CODE_GAS_LIMIT"));

    bytes32 public constant TOKEN_TRANSFER_GAS_LIMIT = keccak256(abi.encode("TOKEN_TRANSFER_GAS_LIMIT"));
    bytes32 public constant NATIVE_TOKEN_TRANSFER_GAS_LIMIT = keccak256(abi.encode("NATIVE_TOKEN_TRANSFER_GAS_LIMIT"));

    bytes32 public constant REQUEST_EXPIRATION_TIME = keccak256(abi.encode("REQUEST_EXPIRATION_TIME"));

    bytes32 public constant MAX_CALLBACK_GAS_LIMIT = keccak256(abi.encode("MAX_CALLBACK_GAS_LIMIT"));
    bytes32 public constant REFUND_EXECUTION_FEE_GAS_LIMIT = keccak256(abi.encode("REFUND_EXECUTION_FEE_GAS_LIMIT"));
    bytes32 public constant SAVED_CALLBACK_CONTRACT = keccak256(abi.encode("SAVED_CALLBACK_CONTRACT"));

    // @dev key for the min collateral factor
    bytes32 public constant MIN_COLLATERAL_FACTOR = keccak256(abi.encode("MIN_COLLATERAL_FACTOR"));
    // @dev key for the min collateral factor for open interest multiplier
    bytes32 public constant MIN_COLLATERAL_FACTOR_FOR_OPEN_INTEREST_MULTIPLIER = keccak256(abi.encode("MIN_COLLATERAL_FACTOR_FOR_OPEN_INTEREST_MULTIPLIER"));
    // @dev key for the min allowed collateral in USD
    bytes32 public constant MIN_COLLATERAL_USD = keccak256(abi.encode("MIN_COLLATERAL_USD"));
    // @dev key for the min allowed collateral factor which is using for some new markets to limit allowed leverage
    bytes32 public constant MIN_COLLATERAL_FACTOR_FOR_LIQUIDATION = keccak256(abi.encode("MIN_COLLATERAL_FACTOR_FOR_LIQUIDATION"));
    // @dev key for the min allowed position size in USD
    bytes32 public constant MIN_POSITION_SIZE_USD = keccak256(abi.encode("MIN_POSITION_SIZE_USD"));

    bytes32 public constant VIRTUAL_TOKEN_ID = keccak256(abi.encode("VIRTUAL_TOKEN_ID"));
    bytes32 public constant VIRTUAL_MARKET_ID = keccak256(abi.encode("VIRTUAL_MARKET_ID"));
    bytes32 public constant VIRTUAL_INVENTORY_FOR_SWAPS = keccak256(abi.encode("VIRTUAL_INVENTORY_FOR_SWAPS"));
    bytes32 public constant VIRTUAL_INVENTORY_FOR_POSITIONS = keccak256(abi.encode("VIRTUAL_INVENTORY_FOR_POSITIONS"));
    bytes32 public constant VIRTUAL_INVENTORY_FOR_POSITIONS_IN_TOKENS = keccak256(abi.encode("VIRTUAL_INVENTORY_FOR_POSITIONS_IN_TOKENS"));

    // @dev key for the position impact factor
    bytes32 public constant POSITION_IMPACT_FACTOR = keccak256(abi.encode("POSITION_IMPACT_FACTOR"));
    // @dev key for the position impact exponent factor
    bytes32 public constant POSITION_IMPACT_EXPONENT_FACTOR = keccak256(abi.encode("POSITION_IMPACT_EXPONENT_FACTOR"));
    // @dev key for the max decrease position impact factor
    bytes32 public constant MAX_POSITION_IMPACT_FACTOR = keccak256(abi.encode("MAX_POSITION_IMPACT_FACTOR"));
    // @dev key for the max position impact factor for liquidations
    bytes32 public constant MAX_POSITION_IMPACT_FACTOR_FOR_LIQUIDATIONS = keccak256(abi.encode("MAX_POSITION_IMPACT_FACTOR_FOR_LIQUIDATIONS"));
    // @dev key for the position fee factor
    bytes32 public constant POSITION_FEE_FACTOR = keccak256(abi.encode("POSITION_FEE_FACTOR"));
    bytes32 public constant PRO_TRADER_TIER = keccak256(abi.encode("PRO_TRADER_TIER"));
    bytes32 public constant PRO_DISCOUNT_FACTOR = keccak256(abi.encode("PRO_DISCOUNT_FACTOR"));
    // @dev key for the liquidation fee factor
    bytes32 public constant LIQUIDATION_FEE_FACTOR = keccak256(abi.encode("LIQUIDATION_FEE_FACTOR"));
    // @dev key for the swap impact factor
    bytes32 public constant SWAP_IMPACT_FACTOR = keccak256(abi.encode("SWAP_IMPACT_FACTOR"));
    // @dev key for the swap impact exponent factor
    bytes32 public constant SWAP_IMPACT_EXPONENT_FACTOR = keccak256(abi.encode("SWAP_IMPACT_EXPONENT_FACTOR"));
    // @dev key for the swap fee factor
    bytes32 public constant SWAP_FEE_FACTOR = keccak256(abi.encode("SWAP_FEE_FACTOR"));
    // @dev key for the atomic swap fee factor
    bytes32 public constant ATOMIC_SWAP_FEE_FACTOR = keccak256(abi.encode("ATOMIC_SWAP_FEE_FACTOR"));
    bytes32 public constant ATOMIC_WITHDRAWAL_FEE_FACTOR = keccak256(abi.encode("ATOMIC_WITHDRAWAL_FEE_FACTOR"));
    bytes32 public constant DEPOSIT_FEE_FACTOR = keccak256(abi.encode("DEPOSIT_FEE_FACTOR"));
    bytes32 public constant WITHDRAWAL_FEE_FACTOR = keccak256(abi.encode("WITHDRAWAL_FEE_FACTOR"));
    // @dev key for the oracle type
    bytes32 public constant ORACLE_TYPE = keccak256(abi.encode("ORACLE_TYPE"));
    // @dev key for open interest
    bytes32 public constant OPEN_INTEREST = keccak256(abi.encode("OPEN_INTEREST"));
    // @dev key for open interest in tokens
    bytes32 public constant OPEN_INTEREST_IN_TOKENS = keccak256(abi.encode("OPEN_INTEREST_IN_TOKENS"));
    bytes32 public constant COLLATERAL_SUM = keccak256(abi.encode("COLLATERAL_SUM"));
    bytes32 public constant MAX_COLLATERAL_SUM = keccak256(abi.encode("MAX_COLLATERAL_SUM"));
    // @dev key for pool amount
    bytes32 public constant POOL_AMOUNT = keccak256(abi.encode("POOL_AMOUNT"));
    // @dev key for max pool amount
    bytes32 public constant MAX_POOL_AMOUNT = keccak256(abi.encode("MAX_POOL_AMOUNT"));
    // @dev key for max pool usd for deposit
    bytes32 public constant MAX_POOL_USD_FOR_DEPOSIT = keccak256(abi.encode("MAX_POOL_USD_FOR_DEPOSIT"));
    // @dev key for max open interest
    bytes32 public constant MAX_OPEN_INTEREST = keccak256(abi.encode("MAX_OPEN_INTEREST"));
    // @dev key for position impact pool amount
    bytes32 public constant POSITION_IMPACT_POOL_AMOUNT = keccak256(abi.encode("POSITION_IMPACT_POOL_AMOUNT"));
    // @dev key for lent position impact pool amount
    bytes32 public constant LENT_POSITION_IMPACT_POOL_AMOUNT = keccak256(abi.encode("LENT_POSITION_IMPACT_POOL_AMOUNT"));
    bytes32 public constant MAX_LENDABLE_IMPACT_FACTOR = keccak256(abi.encode("MAX_LENDABLE_IMPACT_FACTOR"));
    bytes32 public constant MAX_LENDABLE_IMPACT_FACTOR_FOR_WITHDRAWALS = keccak256(abi.encode("MAX_LENDABLE_IMPACT_FACTOR_FOR_WITHDRAWALS"));
    bytes32 public constant MAX_LENDABLE_IMPACT_USD = keccak256(abi.encode("MAX_LENDABLE_IMPACT_USD"));
    // @dev key for total pending position impact amount
    bytes32 public constant TOTAL_PENDING_IMPACT_AMOUNT = keccak256(abi.encode("TOTAL_PENDING_IMPACT_AMOUNT"));
    // @dev key for min position impact pool amount
    bytes32 public constant MIN_POSITION_IMPACT_POOL_AMOUNT = keccak256(abi.encode("MIN_POSITION_IMPACT_POOL_AMOUNT"));
    // @dev key for position impact pool distribution rate
    bytes32 public constant POSITION_IMPACT_POOL_DISTRIBUTION_RATE = keccak256(abi.encode("POSITION_IMPACT_POOL_DISTRIBUTION_RATE"));
    // @dev key for position impact pool distributed at
    bytes32 public constant POSITION_IMPACT_POOL_DISTRIBUTED_AT = keccak256(abi.encode("POSITION_IMPACT_POOL_DISTRIBUTED_AT"));
    // @dev key for swap impact pool amount
    bytes32 public constant SWAP_IMPACT_POOL_AMOUNT = keccak256(abi.encode("SWAP_IMPACT_POOL_AMOUNT"));
    // @dev key for price feed
    bytes32 public constant PRICE_FEED = keccak256(abi.encode("PRICE_FEED"));
    // @dev key for price feed multiplier
    bytes32 public constant PRICE_FEED_MULTIPLIER = keccak256(abi.encode("PRICE_FEED_MULTIPLIER"));
    // @dev key for price feed heartbeat
    bytes32 public constant PRICE_FEED_HEARTBEAT_DURATION = keccak256(abi.encode("PRICE_FEED_HEARTBEAT_DURATION"));
    // @dev key for data stream feed id
    bytes32 public constant DATA_STREAM_ID = keccak256(abi.encode("DATA_STREAM_ID"));
    bytes32 public constant EDGE_DATA_STREAM_ID = keccak256(abi.encode("EDGE_DATA_STREAM_ID"));
    bytes32 public constant EDGE_DATA_STREAM_TOKEN_DECIMALS = keccak256(abi.encode("EDGE_DATA_STREAM_TOKEN_DECIMALS"));
    // @dev key for data stream feed multiplier
    bytes32 public constant DATA_STREAM_MULTIPLIER = keccak256(abi.encode("DATA_STREAM_MULTIPLIER"));
    bytes32 public constant DATA_STREAM_SPREAD_REDUCTION_FACTOR = keccak256(abi.encode("DATA_STREAM_SPREAD_REDUCTION_FACTOR"));
    // @dev key for stable price
    bytes32 public constant STABLE_PRICE = keccak256(abi.encode("STABLE_PRICE"));
    // @dev key for reserve factor
    bytes32 public constant RESERVE_FACTOR = keccak256(abi.encode("RESERVE_FACTOR"));
    // @dev key for open interest reserve factor
    bytes32 public constant OPEN_INTEREST_RESERVE_FACTOR = keccak256(abi.encode("OPEN_INTEREST_RESERVE_FACTOR"));
    // @dev key for max pnl factor
    bytes32 public constant MAX_PNL_FACTOR = keccak256(abi.encode("MAX_PNL_FACTOR"));
    // @dev key for max pnl factor
    bytes32 public constant MAX_PNL_FACTOR_FOR_TRADERS = keccak256(abi.encode("MAX_PNL_FACTOR_FOR_TRADERS"));
    // @dev key for max pnl factor for adl
    bytes32 public constant MAX_PNL_FACTOR_FOR_ADL = keccak256(abi.encode("MAX_PNL_FACTOR_FOR_ADL"));
    // @dev key for min pnl factor for adl
    bytes32 public constant MIN_PNL_FACTOR_AFTER_ADL = keccak256(abi.encode("MIN_PNL_FACTOR_AFTER_ADL"));
    // @dev key for max pnl factor
    bytes32 public constant MAX_PNL_FACTOR_FOR_DEPOSITS = keccak256(abi.encode("MAX_PNL_FACTOR_FOR_DEPOSITS"));
    // @dev key for max pnl factor for withdrawals
    bytes32 public constant MAX_PNL_FACTOR_FOR_WITHDRAWALS = keccak256(abi.encode("MAX_PNL_FACTOR_FOR_WITHDRAWALS"));
    // @dev key for latest ADL at
    bytes32 public constant LATEST_ADL_AT = keccak256(abi.encode("LATEST_ADL_AT"));
    // @dev key for whether ADL is enabled
    bytes32 public constant IS_ADL_ENABLED = keccak256(abi.encode("IS_ADL_ENABLED"));
    // @dev key for funding factor
    bytes32 public constant FUNDING_FACTOR = keccak256(abi.encode("FUNDING_FACTOR"));
    // @dev key for funding exponent factor
    bytes32 public constant FUNDING_EXPONENT_FACTOR = keccak256(abi.encode("FUNDING_EXPONENT_FACTOR"));
    // @dev key for saved funding factor
    bytes32 public constant SAVED_FUNDING_FACTOR_PER_SECOND = keccak256(abi.encode("SAVED_FUNDING_FACTOR_PER_SECOND"));
    // @dev key for funding increase factor
    bytes32 public constant FUNDING_INCREASE_FACTOR_PER_SECOND = keccak256(abi.encode("FUNDING_INCREASE_FACTOR_PER_SECOND"));
    // @dev key for funding decrease factor
    bytes32 public constant FUNDING_DECREASE_FACTOR_PER_SECOND = keccak256(abi.encode("FUNDING_DECREASE_FACTOR_PER_SECOND"));
    // @dev key for min funding factor
    bytes32 public constant MIN_FUNDING_FACTOR_PER_SECOND = keccak256(abi.encode("MIN_FUNDING_FACTOR_PER_SECOND"));
    // @dev key for max funding factor
    bytes32 public constant MAX_FUNDING_FACTOR_PER_SECOND = keccak256(abi.encode("MAX_FUNDING_FACTOR_PER_SECOND"));
    // @dev key for threshold for stable funding
    bytes32 public constant THRESHOLD_FOR_STABLE_FUNDING = keccak256(abi.encode("THRESHOLD_FOR_STABLE_FUNDING"));
    // @dev key for threshold for decrease funding
    bytes32 public constant THRESHOLD_FOR_DECREASE_FUNDING = keccak256(abi.encode("THRESHOLD_FOR_DECREASE_FUNDING"));
    // @dev key for funding fee amount per size
    bytes32 public constant FUNDING_FEE_AMOUNT_PER_SIZE = keccak256(abi.encode("FUNDING_FEE_AMOUNT_PER_SIZE"));
    // @dev key for claimable funding amount per size
    bytes32 public constant CLAIMABLE_FUNDING_AMOUNT_PER_SIZE = keccak256(abi.encode("CLAIMABLE_FUNDING_AMOUNT_PER_SIZE"));
    // @dev key for when funding was last updated at
    bytes32 public constant FUNDING_UPDATED_AT = keccak256(abi.encode("FUNDING_UPDATED_AT"));
    // @dev key for claimable funding amount
    bytes32 public constant CLAIMABLE_FUNDING_AMOUNT = keccak256(abi.encode("CLAIMABLE_FUNDING_AMOUNT"));
    // @dev key for claimable collateral amount
    bytes32 public constant CLAIMABLE_COLLATERAL_AMOUNT = keccak256(abi.encode("CLAIMABLE_COLLATERAL_AMOUNT"));
    // @dev key for claimable collateral factor
    bytes32 public constant CLAIMABLE_COLLATERAL_FACTOR = keccak256(abi.encode("CLAIMABLE_COLLATERAL_FACTOR"));
    // @dev key for claimable collateral reduction factor
    bytes32 public constant CLAIMABLE_COLLATERAL_REDUCTION_FACTOR = keccak256(abi.encode("CLAIMABLE_COLLATERAL_REDUCTION_FACTOR"));
    // @dev key for claimable collateral time divisor
    bytes32 public constant CLAIMABLE_COLLATERAL_TIME_DIVISOR = keccak256(abi.encode("CLAIMABLE_COLLATERAL_TIME_DIVISOR"));
    // @dev key for claimable collateral delay
    bytes32 public constant CLAIMABLE_COLLATERAL_DELAY = keccak256(abi.encode("CLAIMABLE_COLLATERAL_DELAY"));
    // @dev key for claimed collateral amount
    bytes32 public constant CLAIMED_COLLATERAL_AMOUNT = keccak256(abi.encode("CLAIMED_COLLATERAL_AMOUNT"));

    bytes32 public constant OPTIMAL_USAGE_FACTOR = keccak256(abi.encode("OPTIMAL_USAGE_FACTOR"));
    bytes32 public constant BASE_BORROWING_FACTOR = keccak256(abi.encode("BASE_BORROWING_FACTOR"));
    bytes32 public constant ABOVE_OPTIMAL_USAGE_BORROWING_FACTOR = keccak256(abi.encode("ABOVE_OPTIMAL_USAGE_BORROWING_FACTOR"));
    bytes32 public constant BORROWING_FACTOR = keccak256(abi.encode("BORROWING_FACTOR"));
    bytes32 public constant BORROWING_EXPONENT_FACTOR = keccak256(abi.encode("BORROWING_EXPONENT_FACTOR"));
    bytes32 public constant SKIP_BORROWING_FEE_FOR_SMALLER_SIDE = keccak256(abi.encode("SKIP_BORROWING_FEE_FOR_SMALLER_SIDE"));
    bytes32 public constant CUMULATIVE_BORROWING_FACTOR = keccak256(abi.encode("CUMULATIVE_BORROWING_FACTOR"));
    bytes32 public constant CUMULATIVE_BORROWING_FACTOR_UPDATED_AT = keccak256(abi.encode("CUMULATIVE_BORROWING_FACTOR_UPDATED_AT"));
    bytes32 public constant TOTAL_BORROWING = keccak256(abi.encode("TOTAL_BORROWING"));

    bytes32 public constant USE_OPEN_INTEREST_IN_TOKENS_FOR_BALANCE = keccak256(abi.encode("USE_OPEN_INTEREST_IN_TOKENS_FOR_BALANCE"));

    // @dev key for affiliate reward
    bytes32 public constant MIN_AFFILIATE_REWARD_FACTOR = keccak256(abi.encode("MIN_AFFILIATE_REWARD_FACTOR"));
    bytes32 public constant AFFILIATE_REWARD = keccak256(abi.encode("AFFILIATE_REWARD"));
    // @dev key for max allowed subaccount action count
    bytes32 public constant MAX_ALLOWED_SUBACCOUNT_ACTION_COUNT = keccak256(abi.encode("MAX_ALLOWED_SUBACCOUNT_ACTION_COUNT"));
    bytes32 public constant SUBACCOUNT_EXPIRES_AT = keccak256(abi.encode("SUBACCOUNT_EXPIRES_AT"));
    // @dev key for subaccount action count
    bytes32 public constant SUBACCOUNT_ACTION_COUNT = keccak256(abi.encode("SUBACCOUNT_ACTION_COUNT"));
    // @dev key for subaccount auto top up amount
    bytes32 public constant SUBACCOUNT_AUTO_TOP_UP_AMOUNT = keccak256(abi.encode("SUBACCOUNT_AUTO_TOP_UP_AMOUNT"));
    // @dev key for subaccount order action
    bytes32 public constant SUBACCOUNT_ORDER_ACTION = keccak256(abi.encode("SUBACCOUNT_ORDER_ACTION"));
    // @dev key for subaccount integration id
    bytes32 public constant SUBACCOUNT_INTEGRATION_ID = keccak256(abi.encode("SUBACCOUNT_INTEGRATION_ID"));
    // @dev key for subaccount integration id disabled status
    bytes32 public constant SUBACCOUNT_INTEGRATION_DISABLED = keccak256(abi.encode("SUBACCOUNT_INTEGRATION_DISABLED"));
    // @dev key for fee distributor swap order token index
    bytes32 public constant FEE_DISTRIBUTOR_SWAP_TOKEN_INDEX = keccak256(abi.encode("FEE_DISTRIBUTOR_SWAP_TOKEN_INDEX"));
    // @dev key for fee distributor swap fee batch
    bytes32 public constant FEE_DISTRIBUTOR_SWAP_FEE_BATCH = keccak256(abi.encode("FEE_DISTRIBUTOR_SWAP_FEE_BATCH"));

    bytes32 public constant GLV_MAX_MARKET_COUNT = keccak256(abi.encode("GLV_MAX_MARKET_COUNT"));
    bytes32 public constant GLV_MAX_MARKET_TOKEN_BALANCE_USD = keccak256(abi.encode("GLV_MAX_MARKET_TOKEN_BALANCE_USD"));
    bytes32 public constant GLV_MAX_MARKET_TOKEN_BALANCE_AMOUNT = keccak256(abi.encode("GLV_MAX_MARKET_TOKEN_BALANCE_AMOUNT"));
    bytes32 public constant IS_GLV_MARKET_DISABLED = keccak256(abi.encode("IS_GLV_MARKET_DISABLED"));
    bytes32 public constant GLV_SHIFT_MAX_LOSS_FACTOR = keccak256(abi.encode("GLV_SHIFT_MAX_LOSS_FACTOR"));
    bytes32 public constant GLV_SHIFT_LAST_EXECUTED_AT = keccak256(abi.encode("GLV_SHIFT_LAST_EXECUTED_AT"));
    bytes32 public constant GLV_SHIFT_MIN_INTERVAL = keccak256(abi.encode("GLV_SHIFT_MIN_INTERVAL"));
    bytes32 public constant MIN_GLV_TOKENS_FOR_FIRST_DEPOSIT = keccak256(abi.encode("MIN_GLV_TOKENS_FOR_FIRST_DEPOSIT"));

    // @dev key for disabling automatic parameter updates via ConfigSyncer
    bytes32 public constant SYNC_CONFIG_FEATURE_DISABLED = keccak256(abi.encode("SYNC_CONFIG_FEATURE_DISABLED"));
    // @dev key for disabling all parameter updates for a specific market via ConfigSyncer
    bytes32 public constant SYNC_CONFIG_MARKET_DISABLED = keccak256(abi.encode("SYNC_CONFIG_MARKET_DISABLED"));
    // @dev key for disabling all updates for a specific parameter via ConfigSyncer
    bytes32 public constant SYNC_CONFIG_PARAMETER_DISABLED = keccak256(abi.encode("SYNC_CONFIG_PARAMETER_DISABLED"));
    // @dev key for disabling all updates for a specific market parameter via ConfigSyncer
    bytes32 public constant SYNC_CONFIG_MARKET_PARAMETER_DISABLED = keccak256(abi.encode("SYNC_CONFIG_MARKET_PARAMETER_DISABLED"));
    // @dev key for tracking which updateIds have already been applied by ConfigSyncer
    bytes32 public constant SYNC_CONFIG_UPDATE_COMPLETED = keccak256(abi.encode("SYNC_CONFIG_UPDATE_COMPLETED"));
    // @dev key for the latest updateId that has been applied by ConfigSyncer
    bytes32 public constant SYNC_CONFIG_LATEST_UPDATE_ID = keccak256(abi.encode("SYNC_CONFIG_LATEST_UPDATE_ID"));

    bytes32 public constant CONTRIBUTOR_ACCOUNT_LIST = keccak256(abi.encode("CONTRIBUTOR_ACCOUNT_LIST"));
    bytes32 public constant CONTRIBUTOR_TOKEN_LIST = keccak256(abi.encode("CONTRIBUTOR_TOKEN_LIST"));
    bytes32 public constant CONTRIBUTOR_TOKEN_AMOUNT = keccak256(abi.encode("CONTRIBUTOR_TOKEN_AMOUNT"));
    bytes32 public constant MAX_TOTAL_CONTRIBUTOR_TOKEN_AMOUNT = keccak256(abi.encode("MAX_TOTAL_CONTRIBUTOR_TOKEN_AMOUNT"));
    bytes32 public constant CONTRIBUTOR_FUNDING_ACCOUNT = keccak256(abi.encode("CONTRIBUTOR_FUNDING_ACCOUNT"));
    bytes32 public constant CUSTOM_CONTRIBUTOR_FUNDING_ACCOUNT = keccak256(abi.encode("CUSTOM_CONTRIBUTOR_FUNDING_ACCOUNT"));
    bytes32 public constant CONTRIBUTOR_LAST_PAYMENT_AT = keccak256(abi.encode("CONTRIBUTOR_LAST_PAYMENT_AT"));
    bytes32 public constant MIN_CONTRIBUTOR_PAYMENT_INTERVAL = keccak256(abi.encode("MIN_CONTRIBUTOR_PAYMENT_INTERVAL"));

    // @dev key for the buyback batch amount used when claiming and swapping fees
    bytes32 public constant BUYBACK_BATCH_AMOUNT = keccak256(abi.encode("BUYBACK_BATCH_AMOUNT"));
    // @dev key for the buyback available fees
    bytes32 public constant BUYBACK_AVAILABLE_FEE_AMOUNT = keccak256(abi.encode("BUYBACK_AVAILABLE_FEE_AMOUNT"));
    // @dev key for the buyback gmx fee factor used in calculating fees by GMX/WNT
    bytes32 public constant BUYBACK_GMX_FACTOR = keccak256(abi.encode("BUYBACK_GMX_FACTOR"));
    // @dev key for the FeeHandler max price impact when buying back fees
    bytes32 public constant BUYBACK_MAX_PRICE_IMPACT_FACTOR = keccak256(abi.encode("BUYBACK_MAX_PRICE_IMPACT_FACTOR"));
    // @dev key for the maximum price delay in seconds when buying back fees
    bytes32 public constant BUYBACK_MAX_PRICE_AGE = keccak256(abi.encode("BUYBACK_MAX_PRICE_AGE"));
    // @dev key for the buyback withdrawable fees
    bytes32 public constant WITHDRAWABLE_BUYBACK_TOKEN_AMOUNT = keccak256(abi.encode("WITHDRAWABLE_BUYBACK_TOKEN_AMOUNT"));

    // @dev key for user's multichain balance
    bytes32 public constant MULTICHAIN_BALANCE = keccak256(abi.encode("MULTICHAIN_BALANCE"));
    // @dev key for the flag if a multichain provider is enabled
    bytes32 public constant IS_MULTICHAIN_PROVIDER_ENABLED = keccak256(abi.encode("IS_MULTICHAIN_PROVIDER_ENABLED"));
    // @dev key for the flag if a multichain endpoint is enabled
    bytes32 public constant IS_MULTICHAIN_ENDPOINT_ENABLED = keccak256(abi.encode("IS_MULTICHAIN_ENDPOINT_ENABLED"));
    // @dev key for the flag if the relay fee is excluded for the caller
    bytes32 public constant IS_RELAY_FEE_EXCLUDED = keccak256(abi.encode("IS_RELAY_FEE_EXCLUDED"));
    // @dev key for the flag if a src chain is enabled
    bytes32 public constant IS_SRC_CHAIN_ID_ENABLED = keccak256(abi.encode("IS_SRC_CHAIN_ID_ENABLED"));
    // @dev key for the last src chain id from which the user last managed his position
    bytes32 public constant POSITION_LAST_SRC_CHAIN_ID = keccak256(abi.encode("POSITION_LAST_SRC_CHAIN_ID"));
    // @dev key for the source chain id mapped from the endpoint id
    bytes32 public constant EID_TO_SRC_CHAIN_ID = keccak256(abi.encode("EID_TO_SRC_CHAIN_ID"));

    // @dev key for the maximum length for data list array of bytes32
    bytes32 public constant MAX_DATA_LENGTH = keccak256(abi.encode("MAX_DATA_LENGTH"));
    // @dev key for the action data
    bytes32 public constant GMX_DATA_ACTION = keccak256(abi.encode("GMX_DATA_ACTION"));
    // @dev key for the claimable fund amount for a specific account and token
    bytes32 public constant CLAIMABLE_FUNDS_AMOUNT = keccak256(abi.encode("CLAIMABLE_FUNDS_AMOUNT"));
    // @dev key for the total claimable amount for a specific token
    bytes32 public constant TOTAL_CLAIMABLE_FUNDS_AMOUNT = keccak256(abi.encode("TOTAL_CLAIMABLE_FUNDS_AMOUNT"));
    // @dev key for the terms for a specific distribution
    bytes32 public constant CLAIM_TERMS = keccak256(abi.encode("CLAIM_TERMS"));
    // @dev key for the terms hash for a specific distribution
    bytes32 public constant CLAIM_TERMS_BACKREF = keccak256(abi.encode("CLAIM_TERMS_BACKREF"));

    // @dev constant for user initiated cancel reason
    string public constant USER_INITIATED_CANCEL = "USER_INITIATED_CANCEL";

    // @dev function used to calculate fullKey for a given market parameter
    // @param baseKey the base key for the market parameter
    // @param data the additional data for the market parameter
    function getFullKey(bytes32 baseKey, bytes memory data) internal pure returns (bytes32) {
        if (data.length == 0) {
            return baseKey;
        }

        return keccak256(bytes.concat(baseKey, data));
    }

    // @dev key for the account deposit list
    // @param account the account for the list
    function accountDepositListKey(address account) internal pure returns (bytes32) {
        return keccak256(abi.encode(ACCOUNT_DEPOSIT_LIST, account));
    }

    // @dev key for the account withdrawal list
    // @param account the account for the list
    function accountWithdrawalListKey(address account) internal pure returns (bytes32) {
        return keccak256(abi.encode(ACCOUNT_WITHDRAWAL_LIST, account));
    }

    // @dev key for the account shift list
    // @param account the account for the list
    function accountShiftListKey(address account) internal pure returns (bytes32) {
        return keccak256(abi.encode(ACCOUNT_SHIFT_LIST, account));
    }

    // @dev key for the account glv deposit list
    // @param account the account for the list
    function accountGlvDepositListKey(address account) internal pure returns (bytes32) {
        return keccak256(abi.encode(ACCOUNT_GLV_DEPOSIT_LIST, account));
    }

    // @dev key for the account glv deposit list
    // @param account the account for the list
    function accountGlvWithdrawalListKey(address account) internal pure returns (bytes32) {
        return keccak256(abi.encode(ACCOUNT_GLV_WITHDRAWAL_LIST, account));
    }

    // @dev key for the glv supported market list
    // @param glv the glv for the supported market list
    function glvSupportedMarketListKey(address glv) internal pure returns (bytes32) {
        return keccak256(abi.encode(GLV_SUPPORTED_MARKET_LIST, glv));
    }

    // @dev key for the account position list
    // @param account the account for the list
    function accountPositionListKey(address account) internal pure returns (bytes32) {
        return keccak256(abi.encode(ACCOUNT_POSITION_LIST, account));
    }

    // @dev key for the account order list
    // @param account the account for the list
    function accountOrderListKey(address account) internal pure returns (bytes32) {
        return keccak256(abi.encode(ACCOUNT_ORDER_LIST, account));
    }

    // @dev key for the subaccount list
    // @param account the account for the list
    function subaccountListKey(address account) internal pure returns (bytes32) {
        return keccak256(abi.encode(SUBACCOUNT_LIST, account));
    }

    // @dev key for the auto cancel order list
    // @param position key the position key for the list
    function autoCancelOrderListKey(bytes32 positionKey) internal pure returns (bytes32) {
        return keccak256(abi.encode(AUTO_CANCEL_ORDER_LIST, positionKey));
    }

    // @dev key for the claimable fee amount
    // @param market the market for the fee
    // @param token the token for the fee
    function claimableFeeAmountKey(address market, address token) internal pure returns (bytes32) {
        return keccak256(abi.encode(CLAIMABLE_FEE_AMOUNT, market, token));
    }

    // @dev key for the claimable ui fee amount
    // @param market the market for the fee
    // @param token the token for the fee
    // @param account the account that can claim the ui fee
    function claimableUiFeeAmountKey(address market, address token) internal pure returns (bytes32) {
        return keccak256(abi.encode(CLAIMABLE_UI_FEE_AMOUNT, market, token));
    }

    // @dev key for the claimable ui fee amount for account
    // @param market the market for the fee
    // @param token the token for the fee
    // @param account the account that can claim the ui fee
    function claimableUiFeeAmountKey(address market, address token, address account) internal pure returns (bytes32) {
        return keccak256(abi.encode(CLAIMABLE_UI_FEE_AMOUNT, market, token, account));
    }

    // @dev key for deposit gas limit
    // @param singleToken whether a single token or pair tokens are being deposited
    // @return key for deposit gas limit
    function depositGasLimitKey() internal pure returns (bytes32) {
        return DEPOSIT_GAS_LIMIT;
    }

    // @dev key for withdrawal gas limit
    // @return key for withdrawal gas limit
    function withdrawalGasLimitKey() internal pure returns (bytes32) {
        return WITHDRAWAL_GAS_LIMIT;
    }

    // @dev key for shift gas limit
    // @return key for shift gas limit
    function shiftGasLimitKey() internal pure returns (bytes32) {
        return SHIFT_GAS_LIMIT;
    }

    function glvDepositGasLimitKey() internal pure returns (bytes32) {
        return GLV_DEPOSIT_GAS_LIMIT;
    }

    function glvWithdrawalGasLimitKey() internal pure returns (bytes32) {
        return GLV_WITHDRAWAL_GAS_LIMIT;
    }

    function glvShiftGasLimitKey() internal pure returns (bytes32) {
        return GLV_SHIFT_GAS_LIMIT;
    }

    function glvPerMarketGasLimitKey() internal pure returns (bytes32) {
        return GLV_PER_MARKET_GAS_LIMIT;
    }

    // @dev key for single swap gas limit
    // @return key for single swap gas limit
    function singleSwapGasLimitKey() internal pure returns (bytes32) {
        return SINGLE_SWAP_GAS_LIMIT;
    }

    // @dev key for increase order gas limit
    // @return key for increase order gas limit
    function increaseOrderGasLimitKey() internal pure returns (bytes32) {
        return INCREASE_ORDER_GAS_LIMIT;
    }

    // @dev key for decrease order gas limit
    // @return key for decrease order gas limit
    function decreaseOrderGasLimitKey() internal pure returns (bytes32) {
        return DECREASE_ORDER_GAS_LIMIT;
    }

    // @dev key for swap order gas limit
    // @return key for swap order gas limit
    function swapOrderGasLimitKey() internal pure returns (bytes32) {
        return SWAP_ORDER_GAS_LIMIT;
    }

    function swapPathMarketFlagKey(address market) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            SWAP_PATH_MARKET_FLAG,
            market
        ));
    }

    // @dev key for whether create glv deposit is disabled
    // @param the create deposit module
    // @return key for whether create deposit is disabled
    function createGlvDepositFeatureDisabledKey(address module) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            CREATE_GLV_DEPOSIT_FEATURE_DISABLED,
            module
        ));
    }

    // @dev key for whether cancel glv deposit is disabled
    // @param the cancel deposit module
    // @return key for whether cancel deposit is disabled
    function cancelGlvDepositFeatureDisabledKey(address module) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            CANCEL_GLV_DEPOSIT_FEATURE_DISABLED,
            module
        ));
    }

    // @dev key for whether execute glv deposit is disabled
    // @param the execute deposit module
    // @return key for whether execute deposit is disabled
    function executeGlvDepositFeatureDisabledKey(address module) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            EXECUTE_GLV_DEPOSIT_FEATURE_DISABLED,
            module
        ));
    }

    // @dev key for whether create glv withdrawal is disabled
    // @param the create withdrawal module
    // @return key for whether create withdrawal is disabled
    function createGlvWithdrawalFeatureDisabledKey(address module) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            CREATE_GLV_WITHDRAWAL_FEATURE_DISABLED,
            module
        ));
    }

    // @dev key for whether cancel glv withdrawal is disabled
    // @param the cancel withdrawal module
    // @return key for whether cancel withdrawal is disabled
    function cancelGlvWithdrawalFeatureDisabledKey(address module) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            CANCEL_GLV_WITHDRAWAL_FEATURE_DISABLED,
            module
        ));
    }

    // @dev key for whether execute glv withdrawal is disabled
    // @param the execute withdrawal module
    // @return key for whether execute withdrawal is disabled
    function executeGlvWithdrawalFeatureDisabledKey(address module) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            EXECUTE_GLV_WITHDRAWAL_FEATURE_DISABLED,
            module
        ));
    }

    function createGlvShiftFeatureDisabledKey(address module) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            CREATE_GLV_SHIFT_FEATURE_DISABLED,
            module
        ));
    }

    function executeGlvShiftFeatureDisabledKey(address module) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            EXECUTE_GLV_SHIFT_FEATURE_DISABLED,
            module
        ));
    }

    function jitFeatureDisabledKey(address module) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            JIT_FEATURE_DISABLED,
            module
        ));
    }


    // @dev key for whether create deposit is disabled
    // @param the create deposit module
    // @return key for whether create deposit is disabled
    function createDepositFeatureDisabledKey(address module) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            CREATE_DEPOSIT_FEATURE_DISABLED,
            module
        ));
    }

    // @dev key for whether cancel deposit is disabled
    // @param the cancel deposit module
    // @return key for whether cancel deposit is disabled
    function cancelDepositFeatureDisabledKey(address module) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            CANCEL_DEPOSIT_FEATURE_DISABLED,
            module
        ));
    }

    // @dev key for whether execute deposit is disabled
    // @param the execute deposit module
    // @return key for whether execute deposit is disabled
    function executeDepositFeatureDisabledKey(address module) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            EXECUTE_DEPOSIT_FEATURE_DISABLED,
            module
        ));
    }

    // @dev key for whether create withdrawal is disabled
    // @param the create withdrawal module
    // @return key for whether create withdrawal is disabled
    function createWithdrawalFeatureDisabledKey(address module) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            CREATE_WITHDRAWAL_FEATURE_DISABLED,
            module
        ));
    }

    // @dev key for whether cancel withdrawal is disabled
    // @param the cancel withdrawal module
    // @return key for whether cancel withdrawal is disabled
    function cancelWithdrawalFeatureDisabledKey(address module) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            CANCEL_WITHDRAWAL_FEATURE_DISABLED,
            module
        ));
    }

    // @dev key for whether execute withdrawal is disabled
    // @param the execute withdrawal module
    // @return key for whether execute withdrawal is disabled
    function executeWithdrawalFeatureDisabledKey(address module) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            EXECUTE_WITHDRAWAL_FEATURE_DISABLED,
            module
        ));
    }

    // @dev key for whether execute atomic withdrawal is disabled
    // @param the execute atomic withdrawal module
    // @return key for whether execute atomic withdrawal is disabled
    function executeAtomicWithdrawalFeatureDisabledKey(address module) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            EXECUTE_ATOMIC_WITHDRAWAL_FEATURE_DISABLED,
            module
        ));
    }

    // @dev key for whether create shift is disabled
    // @param the create shift module
    // @return key for whether create shift is disabled
    function createShiftFeatureDisabledKey(address module) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            CREATE_SHIFT_FEATURE_DISABLED,
            module
        ));
    }

    // @dev key for whether cancel shift is disabled
    // @param the cancel shift module
    // @return key for whether cancel shift is disabled
    function cancelShiftFeatureDisabledKey(address module) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            CANCEL_SHIFT_FEATURE_DISABLED,
            module
        ));
    }

    // @dev key for whether execute shift is disabled
    // @param the execute shift module
    // @return key for whether execute shift is disabled
    function executeShiftFeatureDisabledKey(address module) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            EXECUTE_SHIFT_FEATURE_DISABLED,
            module
        ));
    }

    // @dev key for whether create order is disabled
    // @param the create order module
    // @return key for whether create order is disabled
    function createOrderFeatureDisabledKey(address module, uint256 orderType) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            CREATE_ORDER_FEATURE_DISABLED,
            module,
            orderType
        ));
    }

    // @dev key for whether execute order is disabled
    // @param the execute order module
    // @return key for whether execute order is disabled
    function executeOrderFeatureDisabledKey(address module, uint256 orderType) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            EXECUTE_ORDER_FEATURE_DISABLED,
            module,
            orderType
        ));
    }

    // @dev key for whether execute adl is disabled
    // @param the execute adl module
    // @return key for whether execute adl is disabled
    function executeAdlFeatureDisabledKey(address module, uint256 orderType) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            EXECUTE_ADL_FEATURE_DISABLED,
            module,
            orderType
        ));
    }

    // @dev key for whether update order is disabled
    // @param the update order module
    // @return key for whether update order is disabled
    function updateOrderFeatureDisabledKey(address module, uint256 orderType) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            UPDATE_ORDER_FEATURE_DISABLED,
            module,
            orderType
        ));
    }

    // @dev key for whether cancel order is disabled
    // @param the cancel order module
    // @return key for whether cancel order is disabled
    function cancelOrderFeatureDisabledKey(address module, uint256 orderType) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            CANCEL_ORDER_FEATURE_DISABLED,
            module,
            orderType
        ));
    }

    // @dev key for whether claim funding fees is disabled
    // @param the claim funding fees module
    function claimFundingFeesFeatureDisabledKey(address module) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            CLAIM_FUNDING_FEES_FEATURE_DISABLED,
            module
        ));
    }

    // @dev key for whether claim colltareral is disabled
    // @param the claim funding fees module
    function claimCollateralFeatureDisabledKey(address module) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            CLAIM_COLLATERAL_FEATURE_DISABLED,
            module
        ));
    }

    // @dev key for whether claim affiliate rewards is disabled
    // @param the claim affiliate rewards module
    function claimAffiliateRewardsFeatureDisabledKey(address module) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            CLAIM_AFFILIATE_REWARDS_FEATURE_DISABLED,
            module
        ));
    }

    // @dev key for whether claim ui fees is disabled
    // @param the claim ui fees module
    function claimUiFeesFeatureDisabledKey(address module) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            CLAIM_UI_FEES_FEATURE_DISABLED,
            module
        ));
    }

    // @dev key for whether subaccounts are disabled
    // @param the subaccount module
    function subaccountFeatureDisabledKey(address module) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            SUBACCOUNT_FEATURE_DISABLED,
            module
        ));
    }

    // @dev key for whether subaccounts are disabled
    // @param the gasless module
    function gaslessFeatureDisabledKey(address module) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            GASLESS_FEATURE_DISABLED,
            module
        ));
    }

    function generalClaimFeatureDisabled(uint256 distributionId) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            GENERAL_CLAIM_FEATURE_DISABLED,
            distributionId
        ));
    }

    // @dev key for ui fee factor
    // @param account the fee receiver account
    // @return key for ui fee factor
    function uiFeeFactorKey(address account) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            UI_FEE_FACTOR,
            account
        ));
    }

    // @dev key for whether an oracle provider is enabled
    // @param provider the oracle provider
    // @return key for whether an oracle provider is enabled
    function isOracleProviderEnabledKey(address provider) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            IS_ORACLE_PROVIDER_ENABLED,
            provider
        ));
    }

    // @dev key for whether an oracle provider is allowed to be used for atomic actions
    // @param provider the oracle provider
    // @return key for whether an oracle provider is allowed to be used for atomic actions
    function isAtomicOracleProviderKey(address provider) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            IS_ATOMIC_ORACLE_PROVIDER,
            provider
        ));
    }

    // @dev key for oracle timestamp adjustment
    // @param provider the oracle provider
    // @param token the token
    // @return key for oracle timestamp adjustment
    function oracleTimestampAdjustmentKey(address provider, address token) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            ORACLE_TIMESTAMP_ADJUSTMENT,
            provider,
            token
        ));
    }

    function oracleProviderForTokenKey(address oracle, address token) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            ORACLE_PROVIDER_FOR_TOKEN,
            oracle,
            token
        ));
    }

    function oracleProviderForTokenKey(address token) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            ORACLE_PROVIDER_FOR_TOKEN,
            token
        ));
    }

    // @dev key for oracle provider update time
    // @param token the token
    // @param provider address
    // @return key for oracle provider updated time
    function oracleProviderUpdatedAt(address token, address provider) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            ORACLE_PROVIDER_UPDATED_AT,
            token,
            provider
        ));
    }

    // @dev key for gas to forward for token transfer
    // @param the token to check
    // @return key for gas to forward for token transfer
    function tokenTransferGasLimit(address token) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            TOKEN_TRANSFER_GAS_LIMIT,
            token
        ));
   }

   // @dev the default callback contract
   // @param account the user's account
   // @param market the address of the market
   // @param callbackContract the callback contract
   function savedCallbackContract(address account, address market) internal pure returns (bytes32) {
       return keccak256(abi.encode(
           SAVED_CALLBACK_CONTRACT,
           account,
           market
       ));
   }

   // @dev the min collateral factor key
   // @param the market for the min collateral factor
   function minCollateralFactorKey(address market) internal pure returns (bytes32) {
       return keccak256(abi.encode(
           MIN_COLLATERAL_FACTOR,
           market
       ));
   }

   // @dev the min collateral factor for open interest multiplier key
   // @param the market for the factor
   function minCollateralFactorForOpenInterestMultiplierKey(address market, bool isLong) internal pure returns (bytes32) {
       return keccak256(abi.encode(
           MIN_COLLATERAL_FACTOR_FOR_OPEN_INTEREST_MULTIPLIER,
           market,
           isLong
       ));
   }

    // @dev the min collateral factor for open interest multiplier key
    // @param the market for the factor
    function minCollateralFactorForLiquidationKey(address market) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            MIN_COLLATERAL_FACTOR_FOR_LIQUIDATION,
            market
        ));
    }

   // @dev the key for the virtual token id
   // @param the token to get the virtual id for
   function virtualTokenIdKey(address token) internal pure returns (bytes32) {
       return keccak256(abi.encode(
           VIRTUAL_TOKEN_ID,
           token
       ));
   }

   // @dev the key for the virtual market id
   // @param the market to get the virtual id for
   function virtualMarketIdKey(address market) internal pure returns (bytes32) {
       return keccak256(abi.encode(
           VIRTUAL_MARKET_ID,
           market
       ));
   }

   function virtualInventoryForPositionsKey(bytes32 virtualTokenId) internal pure returns (bytes32) {
       return keccak256(abi.encode(
           VIRTUAL_INVENTORY_FOR_POSITIONS,
           virtualTokenId
       ));
   }

   function virtualInventoryForPositionsInTokensKey(bytes32 virtualTokenId) internal pure returns (bytes32) {
       return keccak256(abi.encode(
           VIRTUAL_INVENTORY_FOR_POSITIONS_IN_TOKENS,
           virtualTokenId
       ));
   }

   // @dev the key for the virtual inventory for swaps
   // @param the virtualMarketId the virtual market id
   // @param the token to check the inventory for
   function virtualInventoryForSwapsKey(bytes32 virtualMarketId, bool isLongToken) internal pure returns (bytes32) {
       return keccak256(abi.encode(
           VIRTUAL_INVENTORY_FOR_SWAPS,
           virtualMarketId,
           isLongToken
       ));
   }

    // @dev key for position impact factor
    // @param market the market address to check
    // @param isPositive whether the impact is positive or negative
    // @return key for position impact factor
    function positionImpactFactorKey(address market, bool isPositive) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            POSITION_IMPACT_FACTOR,
            market,
            isPositive
        ));
   }

    // @dev key for position impact exponent factor
    // @param market the market address to check
    // @return key for position impact exponent factor
    function positionImpactExponentFactorKey(address market, bool isPositive) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            POSITION_IMPACT_EXPONENT_FACTOR,
            market,
            isPositive
        ));
    }

    // @dev key for the max position impact factor
    // @param market the market address to check
    // @return key for the max position impact factor
    function maxPositionImpactFactorKey(address market, bool isPositive) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            MAX_POSITION_IMPACT_FACTOR,
            market,
            isPositive
        ));
    }

    // @dev key for the max position impact factor for liquidations
    // @param market the market address to check
    // @return key for the max position impact factor
    function maxPositionImpactFactorForLiquidationsKey(address market) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            MAX_POSITION_IMPACT_FACTOR_FOR_LIQUIDATIONS,
            market
        ));
    }

    // @dev key for position fee factor
    // @param market the market address to check
    // @param balanceWasImproved whether the fee is for an action that has improved the balance
    // @return key for position fee factor
    function positionFeeFactorKey(address market, bool balanceWasImproved) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            POSITION_FEE_FACTOR,
            market,
            balanceWasImproved
        ));
    }

    // @dev key for pro trader's tier
    function proTraderTierKey(address account) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            PRO_TRADER_TIER,
            account
        ));
    }


    // @dev key for pro discount factor for specific tier
    function proDiscountFactorKey(uint256 proTier) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            PRO_DISCOUNT_FACTOR,
            proTier
        ));
    }

    // @dev key for liquidation fee factor
    // @param market the market address to check
    // @return key for liquidation fee factor
    function liquidationFeeFactorKey(address market) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            LIQUIDATION_FEE_FACTOR,
            market
        ));
    }

    // @dev key for swap impact factor
    // @param market the market address to check
    // @param isPositive whether the impact is positive or negative
    // @return key for swap impact factor
    function swapImpactFactorKey(address market, bool isPositive) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            SWAP_IMPACT_FACTOR,
            market,
            isPositive
        ));
    }

    // @dev key for swap impact exponent factor
    // @param market the market address to check
    // @return key for swap impact exponent factor
    function swapImpactExponentFactorKey(address market) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            SWAP_IMPACT_EXPONENT_FACTOR,
            market
        ));
    }


    // @dev key for swap fee factor
    // @param market the market address to check
    // @param balanceWasImproved whether the fee is for an action that has improved the balance
    // @return key for swap fee factor
    function swapFeeFactorKey(address market, bool balanceWasImproved) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            SWAP_FEE_FACTOR,
            market,
            balanceWasImproved
        ));
    }

    // @dev key for atomic swap fee factor
    // @param market the market address to check
    // @return key for atomic swap fee factor
    function atomicSwapFeeFactorKey(address market) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            ATOMIC_SWAP_FEE_FACTOR,
            market
        ));
    }

    // @dev key for atomic withdrawal fee factor
    // @param market the market address to check
    // @return key for atomic withdrawal fee factor
    function atomicWithdrawalFeeFactorKey(address market) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            ATOMIC_WITHDRAWAL_FEE_FACTOR,
            market
        ));
    }

    // @dev key for deposit fee factor
    // @param balanceWasImproved whether the fee is for an action that has improved the balance
    // @return key for deposit fee factor
    function depositFeeFactorKey(address market, bool balanceWasImproved) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            DEPOSIT_FEE_FACTOR,
            market,
            balanceWasImproved
        ));
    }

    // @dev key for withdrawal fee factor
    // @param market the market address to check
    // @param balanceWasImproved whether the fee is for an action that has improved the balance
    // @return key for withdrawal fee factor
    function withdrawalFeeFactorKey(address market, bool balanceWasImproved) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            WITHDRAWAL_FEE_FACTOR,
            market,
            balanceWasImproved
        ));
    }

    // @dev key for oracle type
    // @param token the token to check
    // @return key for oracle type
    function oracleTypeKey(address token) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            ORACLE_TYPE,
            token
        ));
    }

    // @dev key for open interest
    // @param market the market to check
    // @param collateralToken the collateralToken to check
    // @param isLong whether to check the long or short open interest
    // @return key for open interest
    function openInterestKey(address market, address collateralToken, bool isLong) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            OPEN_INTEREST,
            market,
            collateralToken,
            isLong
        ));
    }

    // @dev key for open interest in tokens
    // @param market the market to check
    // @param collateralToken the collateralToken to check
    // @param isLong whether to check the long or short open interest
    // @return key for open interest in tokens
    function openInterestInTokensKey(address market, address collateralToken, bool isLong) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            OPEN_INTEREST_IN_TOKENS,
            market,
            collateralToken,
            isLong
        ));
    }

    // @dev key for collateral sum for a market
    // @param market the market to check
    // @param collateralToken the collateralToken to check
    // @param isLong whether to check the long or short open interest
    // @return key for collateral sum
    function collateralSumKey(address market, address collateralToken, bool isLong) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            COLLATERAL_SUM,
            market,
            collateralToken,
            isLong
        ));
    }

    function maxCollateralSumKey(address market, address collateralToken, bool isLong) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            MAX_COLLATERAL_SUM,
            market,
            collateralToken,
            isLong
        ));
    }

    // @dev key for amount of tokens in a market's pool
    // @param market the market to check
    // @param token the token to check
    // @return key for amount of tokens in a market's pool
    function poolAmountKey(address market, address token) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            POOL_AMOUNT,
            market,
            token
        ));
    }

    // @dev the key for the max amount of pool tokens
    // @param market the market for the pool
    // @param token the token for the pool
    function maxPoolAmountKey(address market, address token) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            MAX_POOL_AMOUNT,
            market,
            token
        ));
    }

    // @dev the key for the max usd of pool tokens for deposits
    // @param market the market for the pool
    // @param token the token for the pool
    function maxPoolUsdForDepositKey(address market, address token) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            MAX_POOL_USD_FOR_DEPOSIT,
            market,
            token
        ));
    }

    // @dev the key for the max open interest
    // @param market the market for the pool
    // @param isLong whether the key is for the long or short side
    function maxOpenInterestKey(address market, bool isLong) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            MAX_OPEN_INTEREST,
            market,
            isLong
        ));
    }

    // @dev key for amount of tokens in a market's position impact pool
    // @param market the market to check
    // @return key for amount of tokens in a market's position impact pool
    function positionImpactPoolAmountKey(address market) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            POSITION_IMPACT_POOL_AMOUNT,
            market
        ));
    }

    function lentPositionImpactPoolAmountKey(address market) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            LENT_POSITION_IMPACT_POOL_AMOUNT,
            market
        ));
    }

    function maxLendableImpactFactorKey(address market) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            MAX_LENDABLE_IMPACT_FACTOR,
            market
        ));
    }

    function maxLendableImpactFactorForWithdrawalsKey(address market) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            MAX_LENDABLE_IMPACT_FACTOR_FOR_WITHDRAWALS,
            market
        ));
    }

    function maxLendableImpactUsdKey(address market) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            MAX_LENDABLE_IMPACT_USD,
            market
        ));
    }

    function totalPendingImpactAmountKey(address market) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            TOTAL_PENDING_IMPACT_AMOUNT,
            market
        ));
    }

    // @dev key for min amount of tokens in a market's position impact pool
    // @param market the market to check
    // @return key for min amount of tokens in a market's position impact pool
    function minPositionImpactPoolAmountKey(address market) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            MIN_POSITION_IMPACT_POOL_AMOUNT,
            market
        ));
    }

    // @dev key for position impact pool distribution rate
    // @param market the market to check
    // @return key for position impact pool distribution rate
    function positionImpactPoolDistributionRateKey(address market) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            POSITION_IMPACT_POOL_DISTRIBUTION_RATE,
            market
        ));
    }

    // @dev key for position impact pool distributed at
    // @param market the market to check
    // @return key for position impact pool distributed at
    function positionImpactPoolDistributedAtKey(address market) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            POSITION_IMPACT_POOL_DISTRIBUTED_AT,
            market
        ));
    }

    // @dev key for amount of tokens in a market's swap impact pool
    // @param market the market to check
    // @param token the token to check
    // @return key for amount of tokens in a market's swap impact pool
    function swapImpactPoolAmountKey(address market, address token) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            SWAP_IMPACT_POOL_AMOUNT,
            market,
            token
        ));
    }

    // @dev key for reserve factor
    // @param market the market to check
    // @param isLong whether to get the key for the long or short side
    // @return key for reserve factor
    function reserveFactorKey(address market, bool isLong) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            RESERVE_FACTOR,
            market,
            isLong
        ));
    }

    // @dev key for open interest reserve factor
    // @param market the market to check
    // @param isLong whether to get the key for the long or short side
    // @return key for open interest reserve factor
    function openInterestReserveFactorKey(address market, bool isLong) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            OPEN_INTEREST_RESERVE_FACTOR,
            market,
            isLong
        ));
    }

    // @dev key for max pnl factor
    // @param market the market to check
    // @param isLong whether to get the key for the long or short side
    // @return key for max pnl factor
    function maxPnlFactorKey(bytes32 pnlFactorType, address market, bool isLong) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            MAX_PNL_FACTOR,
            pnlFactorType,
            market,
            isLong
        ));
    }

    // @dev the key for min PnL factor after ADL
    // @param market the market for the pool
    // @param isLong whether the key is for the long or short side
    function minPnlFactorAfterAdlKey(address market, bool isLong) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            MIN_PNL_FACTOR_AFTER_ADL,
            market,
            isLong
        ));
    }

    // @dev key for latest adl time
    // @param market the market to check
    // @param isLong whether to get the key for the long or short side
    // @return key for latest adl time
    function latestAdlAtKey(address market, bool isLong) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            LATEST_ADL_AT,
            market,
            isLong
        ));
    }

    // @dev key for whether adl is enabled
    // @param market the market to check
    // @param isLong whether to get the key for the long or short side
    // @return key for whether adl is enabled
    function isAdlEnabledKey(address market, bool isLong) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            IS_ADL_ENABLED,
            market,
            isLong
        ));
    }

    // @dev key for funding factor
    // @param market the market to check
    // @return key for funding factor
    function fundingFactorKey(address market) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            FUNDING_FACTOR,
            market
        ));
    }

    // @dev the key for funding exponent
    // @param market the market for the pool
    function fundingExponentFactorKey(address market) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            FUNDING_EXPONENT_FACTOR,
            market
        ));
    }

    // @dev the key for saved funding factor
    // @param market the market for the pool
    function savedFundingFactorPerSecondKey(address market) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            SAVED_FUNDING_FACTOR_PER_SECOND,
            market
        ));
    }

    // @dev the key for funding increase factor
    // @param market the market for the pool
    function fundingIncreaseFactorPerSecondKey(address market) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            FUNDING_INCREASE_FACTOR_PER_SECOND,
            market
        ));
    }

    // @dev the key for funding decrease factor
    // @param market the market for the pool
    function fundingDecreaseFactorPerSecondKey(address market) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            FUNDING_DECREASE_FACTOR_PER_SECOND,
            market
        ));
    }

    // @dev the key for min funding factor
    // @param market the market for the pool
    function minFundingFactorPerSecondKey(address market) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            MIN_FUNDING_FACTOR_PER_SECOND,
            market
        ));
    }

    // @dev the key for max funding factor
    // @param market the market for the pool
    function maxFundingFactorPerSecondKey(address market) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            MAX_FUNDING_FACTOR_PER_SECOND,
            market
        ));
    }

    // @dev the key for threshold for stable funding
    // @param market the market for the pool
    function thresholdForStableFundingKey(address market) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            THRESHOLD_FOR_STABLE_FUNDING,
            market
        ));
    }

    // @dev the key for threshold for decreasing funding
    // @param market the market for the pool
    function thresholdForDecreaseFundingKey(address market) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            THRESHOLD_FOR_DECREASE_FUNDING,
            market
        ));
    }

    // @dev key for funding fee amount per size
    // @param market the market to check
    // @param collateralToken the collateralToken to get the key for
    // @param isLong whether to get the key for the long or short side
    // @return key for funding fee amount per size
    function fundingFeeAmountPerSizeKey(address market, address collateralToken, bool isLong) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            FUNDING_FEE_AMOUNT_PER_SIZE,
            market,
            collateralToken,
            isLong
        ));
    }

    // @dev key for claimabel funding amount per size
    // @param market the market to check
    // @param collateralToken the collateralToken to get the key for
    // @param isLong whether to get the key for the long or short side
    // @return key for claimable funding amount per size
    function claimableFundingAmountPerSizeKey(address market, address collateralToken, bool isLong) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            CLAIMABLE_FUNDING_AMOUNT_PER_SIZE,
            market,
            collateralToken,
            isLong
        ));
    }

    // @dev key for when funding was last updated
    // @param market the market to check
    // @return key for when funding was last updated
    function fundingUpdatedAtKey(address market) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            FUNDING_UPDATED_AT,
            market
        ));
    }

    // @dev key for claimable funding amount
    // @param market the market to check
    // @param token the token to check
    // @return key for claimable funding amount
    function claimableFundingAmountKey(address market, address token) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            CLAIMABLE_FUNDING_AMOUNT,
            market,
            token
        ));
    }

    // @dev key for claimable funding amount by account
    // @param market the market to check
    // @param token the token to check
    // @param account the account to check
    // @return key for claimable funding amount
    function claimableFundingAmountKey(address market, address token, address account) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            CLAIMABLE_FUNDING_AMOUNT,
            market,
            token,
            account
        ));
    }

    // @dev key for claimable collateral amount
    // @param market the market to check
    // @param token the token to check
    // @param account the account to check
    // @param timeKey the time key for the claimable amount
    // @return key for claimable funding amount
    function claimableCollateralAmountKey(address market, address token) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            CLAIMABLE_COLLATERAL_AMOUNT,
            market,
            token
        ));
    }

    // @dev key for claimable collateral amount for a timeKey for an account
    // @param market the market to check
    // @param token the token to check
    // @param account the account to check
    // @param timeKey the time key for the claimable amount
    // @return key for claimable funding amount
    function claimableCollateralAmountKey(address market, address token, uint256 timeKey, address account) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            CLAIMABLE_COLLATERAL_AMOUNT,
            market,
            token,
            timeKey,
            account
        ));
    }

    // @dev key for claimable collateral factor for a timeKey
    // @param market the market to check
    // @param token the token to check
    // @param timeKey the time key for the claimable amount
    // @return key for claimable funding amount
    function claimableCollateralFactorKey(address market, address token, uint256 timeKey) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            CLAIMABLE_COLLATERAL_FACTOR,
            market,
            token,
            timeKey
        ));
    }

    // @dev key for claimable collateral factor for a timeKey for an account
    // @param market the market to check
    // @param token the token to check
    // @param timeKey the time key for the claimable amount
    // @param account the account to check
    // @return key for claimable funding amount
    function claimableCollateralFactorKey(address market, address token, uint256 timeKey, address account) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            CLAIMABLE_COLLATERAL_FACTOR,
            market,
            token,
            timeKey,
            account
        ));
    }

    // @dev key for claimable collateral reduction factor for a timeKey for an account
    // @param market the market to check
    // @param token the token to check
    // @param timeKey the time key for the claimable factor
    // @param account the account to check
    // @return key for claimable funding factor
    function claimableCollateralReductionFactorKey(address market, address token, uint256 timeKey, address account) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            CLAIMABLE_COLLATERAL_REDUCTION_FACTOR,
            market,
            token,
            timeKey,
            account
        ));
    }

    // @dev key for claimable collateral factor
    // @param market the market to check
    // @param token the token to check
    // @param account the account to check
    // @param timeKey the time key for the claimable amount
    // @return key for claimable funding amount
    function claimedCollateralAmountKey(address market, address token, uint256 timeKey, address account) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            CLAIMED_COLLATERAL_AMOUNT,
            market,
            token,
            timeKey,
            account
        ));
    }

    // @dev key for optimal usage factor
    // @param market the market to check
    // @param isLong whether to get the key for the long or short side
    // @return key for optimal usage factor
    function optimalUsageFactorKey(address market, bool isLong) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            OPTIMAL_USAGE_FACTOR,
            market,
            isLong
        ));
    }

    // @dev key for base borrowing factor
    // @param market the market to check
    // @param isLong whether to get the key for the long or short side
    // @return key for base borrowing factor
    function baseBorrowingFactorKey(address market, bool isLong) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            BASE_BORROWING_FACTOR,
            market,
            isLong
        ));
    }

    // @dev key for above optimal usage borrowing factor
    // @param market the market to check
    // @param isLong whether to get the key for the long or short side
    // @return key for above optimal usage borrowing factor
    function aboveOptimalUsageBorrowingFactorKey(address market, bool isLong) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            ABOVE_OPTIMAL_USAGE_BORROWING_FACTOR,
            market,
            isLong
        ));
    }

    // @dev key for borrowing factor
    // @param market the market to check
    // @param isLong whether to get the key for the long or short side
    // @return key for borrowing factor
    function borrowingFactorKey(address market, bool isLong) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            BORROWING_FACTOR,
            market,
            isLong
        ));
    }

    // @dev the key for borrowing exponent
    // @param market the market for the pool
    // @param isLong whether to get the key for the long or short side
    function borrowingExponentFactorKey(address market, bool isLong) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            BORROWING_EXPONENT_FACTOR,
            market,
            isLong
        ));
    }

    // @dev key for cumulative borrowing factor
    // @param market the market to check
    // @param isLong whether to get the key for the long or short side
    // @return key for cumulative borrowing factor
    function cumulativeBorrowingFactorKey(address market, bool isLong) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            CUMULATIVE_BORROWING_FACTOR,
            market,
            isLong
        ));
    }

    // @dev key for cumulative borrowing factor updated at
    // @param market the market to check
    // @param isLong whether to get the key for the long or short side
    // @return key for cumulative borrowing factor updated at
    function cumulativeBorrowingFactorUpdatedAtKey(address market, bool isLong) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            CUMULATIVE_BORROWING_FACTOR_UPDATED_AT,
            market,
            isLong
        ));
    }

    // @dev key for total borrowing amount
    // @param market the market to check
    // @param isLong whether to get the key for the long or short side
    // @return key for total borrowing amount
    function totalBorrowingKey(address market, bool isLong) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            TOTAL_BORROWING,
            market,
            isLong
        ));
    }

    // @dev key for affiliate reward amount
    // @param market the market to check
    // @param token the token to get the key for
    // @param account the account to get the key for
    // @return key for affiliate reward amount
    function affiliateRewardKey(address market, address token) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            AFFILIATE_REWARD,
            market,
            token
        ));
    }

    function minAffiliateRewardFactorKey(uint256 referralTierLevel) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            MIN_AFFILIATE_REWARD_FACTOR,
            referralTierLevel
        ));
    }

    function maxAllowedSubaccountActionCountKey(address account, address subaccount, bytes32 actionType) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            MAX_ALLOWED_SUBACCOUNT_ACTION_COUNT,
            account,
            subaccount,
            actionType
        ));
    }

    function subaccountExpiresAtKey(address account, address subaccount, bytes32 actionType) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            SUBACCOUNT_EXPIRES_AT,
            account,
            subaccount,
            actionType
        ));
    }

    function subaccountActionCountKey(address account, address subaccount, bytes32 actionType) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            SUBACCOUNT_ACTION_COUNT,
            account,
            subaccount,
            actionType
        ));
    }

    function subaccountAutoTopUpAmountKey(address account, address subaccount) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            SUBACCOUNT_AUTO_TOP_UP_AMOUNT,
            account,
            subaccount
        ));
    }

    function subaccountIntegrationIdKey(address account, address subaccount) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            SUBACCOUNT_INTEGRATION_ID,
            account,
            subaccount
        ));
    }

    function subaccountIntegrationDisabledKey(bytes32 integrationId) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            SUBACCOUNT_INTEGRATION_DISABLED,
            integrationId
        ));
    }

    // @dev key for affiliate reward amount for an account
    // @param market the market to check
    // @param token the token to get the key for
    // @param account the account to get the key for
    // @return key for affiliate reward amount
    function affiliateRewardKey(address market, address token, address account) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            AFFILIATE_REWARD,
            market,
            token,
            account
        ));
    }

    // @dev key for is market disabled
    // @param market the market to check
    // @return key for is market disabled
    function isMarketDisabledKey(address market) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            IS_MARKET_DISABLED,
            market
        ));
    }

    // @dev key for min market tokens for first deposit
    // @param market the market to check
    // @return key for min market tokens for first deposit
    function minMarketTokensForFirstDepositKey(address market) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            MIN_MARKET_TOKENS_FOR_FIRST_DEPOSIT,
            market
        ));
    }

    // @dev key for price feed address
    // @param token the token to get the key for
    // @return key for price feed address
    function priceFeedKey(address token) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            PRICE_FEED,
            token
        ));
    }

    // @dev key for data stream feed ID
    // @param token the token to get the key for
    // @return key for data stream feed ID
    function dataStreamIdKey(address token) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            DATA_STREAM_ID,
            token
        ));
    }

    function edgeDataStreamIdKey(address token) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            EDGE_DATA_STREAM_ID,
            token
        ));
    }

    function edgeDataStreamTokenDecimalsKey(address token) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            EDGE_DATA_STREAM_TOKEN_DECIMALS,
            token
        ));
    }

    // @dev key for data stream feed multiplier
    // @param token the token to get the key for
    // @return key for data stream feed multiplier
    function dataStreamMultiplierKey(address token) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            DATA_STREAM_MULTIPLIER,
            token
        ));
    }

    function dataStreamSpreadReductionFactorKey(address token) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            DATA_STREAM_SPREAD_REDUCTION_FACTOR,
            token
        ));
    }

    // @dev key for price feed multiplier
    // @param token the token to get the key for
    // @return key for price feed multiplier
    function priceFeedMultiplierKey(address token) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            PRICE_FEED_MULTIPLIER,
            token
        ));
    }

    function priceFeedHeartbeatDurationKey(address token) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            PRICE_FEED_HEARTBEAT_DURATION,
            token
        ));
    }

    // @dev key for stable price value
    // @param token the token to get the key for
    // @return key for stable price value
    function stablePriceKey(address token) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            STABLE_PRICE,
            token
        ));
    }

    // @dev key for fee distributor swap token index
    // @param orderKey the swap order key
    // @return key for fee distributor swap token index
    function feeDistributorSwapTokenIndexKey(bytes32 orderKey) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            FEE_DISTRIBUTOR_SWAP_TOKEN_INDEX,
            orderKey
        ));
    }

    // @dev key for fee distributor swap fee batch key
    // @param orderKey the swap order key
    // @return key for fee distributor swap fee batch key
    function feeDistributorSwapFeeBatchKey(bytes32 orderKey) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            FEE_DISTRIBUTOR_SWAP_FEE_BATCH,
            orderKey
        ));
    }

    // @dev key for max market token balance usd
    // it is used to limit amount of funds deposited into each market
    function glvMaxMarketTokenBalanceUsdKey(address glv, address market) internal pure returns (bytes32) {
        return keccak256(abi.encode(GLV_MAX_MARKET_TOKEN_BALANCE_USD, glv, market));
    }

    // @dev key for max market token balance amount
    // it is used to limit amount of funds deposited into each market
    function glvMaxMarketTokenBalanceAmountKey(address glv, address market) internal pure returns (bytes32) {
        return keccak256(abi.encode(GLV_MAX_MARKET_TOKEN_BALANCE_AMOUNT, glv, market));
    }

    // @dev key for is glv market disabled
    function isGlvMarketDisabledKey(address glv, address market) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            IS_GLV_MARKET_DISABLED,
            glv,
            market
        ));
    }

    // @dev key for max allowed price impact for glv shifts
    // if effective price impact exceeds max price impact then glv shift fails
    function glvShiftMaxLossFactorKey(address glv) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            GLV_SHIFT_MAX_LOSS_FACTOR,
            glv
        ));
    }

    // @dev key for time when glv shift was executed last
    // used to validate glv shifts are not executed too frequently
    function glvShiftLastExecutedAtKey(address glv) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            GLV_SHIFT_LAST_EXECUTED_AT,
            glv
        ));
    }

    // @dev key for min time interval between glv shifts in seconds
    function glvShiftMinIntervalKey(address glv) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            GLV_SHIFT_MIN_INTERVAL,
            glv
        ));
    }

    function minGlvTokensForFirstGlvDepositKey(address glv) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            MIN_GLV_TOKENS_FOR_FIRST_DEPOSIT,
            glv
        ));
    }

    // @dev key for whether the sync config feature is disabled
    // @param module the sync config module
    // @return key for sync config feature disabled
    function syncConfigFeatureDisabledKey(address module) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            SYNC_CONFIG_FEATURE_DISABLED,
            module
        ));
    }

    // @dev key for whether sync config updates are disabled for a market
    // @param market the market to check
    // @return key for sync config market disabled
    function syncConfigMarketDisabledKey(address market) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            SYNC_CONFIG_MARKET_DISABLED,
            market
        ));
    }

    // @dev key for whether sync config updates are disabled for a parameter
    // @param parameter the parameter to check
    // @return key for sync config parameter disabled
    function syncConfigParameterDisabledKey(string memory parameter) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            SYNC_CONFIG_PARAMETER_DISABLED,
            parameter
        ));
    }

    // @dev key for whether sync config updates are disabled for a market parameter
    // @param market the market to check
    // @param parameter the parameter to check
    // @return key for sync config market parameter disabled
    function syncConfigMarketParameterDisabledKey(address market, string memory parameter) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            SYNC_CONFIG_MARKET_PARAMETER_DISABLED,
            market,
            parameter
        ));
    }

    // @dev key for whether a sync config update is completed
    // @param updateId the update id to check
    // @return key for sync config market update completed
    function syncConfigUpdateCompletedKey(uint256 updateId) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            SYNC_CONFIG_UPDATE_COMPLETED,
            updateId
        ));
    }

    // @dev key for the latest sync config update that was completed
    // @return key for sync config latest update id
    function syncConfigLatestUpdateIdKey() internal pure returns (bytes32) {
        return SYNC_CONFIG_LATEST_UPDATE_ID;
    }

    // @dev key for the contributor token amount
    // @param account the contributor account
    // @param token the contributor token
    // @return key for the contributor token amount
    function contributorTokenAmountKey(address account, address token) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            CONTRIBUTOR_TOKEN_AMOUNT,
            account,
            token
        ));
    }

    // @dev key for the max total contributor token amount
    // @param token the contributor token
    // @return key for the max contributor token amount
    function maxTotalContributorTokenAmountKey(address token) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            MAX_TOTAL_CONTRIBUTOR_TOKEN_AMOUNT,
            token
        ));
    }

    function contributorFundingAccountKey(address token) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            CONTRIBUTOR_FUNDING_ACCOUNT,
            token
        ));
    }

    function customContributorFundingAccountKey(address account, address token) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            CUSTOM_CONTRIBUTOR_FUNDING_ACCOUNT,
            account,
            token
        ));
    }

    // @dev key for the buyback batch amount
    // @param token the token for which to retrieve batch amount (GMX or WNT)
    // @return key for buyback batch amount for a given token
    function buybackBatchAmountKey(address token) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            BUYBACK_BATCH_AMOUNT,
            token
        ));
    }

    // @dev key for the buyback available fee amount
    // @param feeToken the token in which the fees are denominated
    // @param swapToken the token for which fees are accumulated (GMX or WNT)
    // @return key for buyback available fee amount for a given token and feeToken
    function buybackAvailableFeeAmountKey(address feeToken, address swapToken) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            BUYBACK_AVAILABLE_FEE_AMOUNT,
            feeToken,
            swapToken
        ));
    }

    // @dev key for the buyback withdrawable fee amount
    // @param buybackToken the token that was bought back
    // @return key for the buyback withdrawable fee amount
    function withdrawableBuybackTokenAmountKey(address buybackToken) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            WITHDRAWABLE_BUYBACK_TOKEN_AMOUNT,
            buybackToken
        ));
    }

    // @dev key for the buyback gmx fee factor
    // @param version the version for which to retrieve the fee numerator
    // @return key for buyback gmx fee factor for a given version
    function buybackGmxFactorKey(uint256 version) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            BUYBACK_GMX_FACTOR,
            version
        ));
    }

    // @dev key for the buyback max price impact factor
    // @param token the token for which to retrieve the max price impact factor key
    // @return key for buyback max price impact factor for a given token
    function buybackMaxPriceImpactFactorKey(address token) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            BUYBACK_MAX_PRICE_IMPACT_FACTOR,
            token
        ));
    }

    // @dev key for whether a multichain provider is enabled
    // @param provider the multichain provider
    // @return key for whether a multichain provider is enabled
    function isMultichainProviderEnabledKey(address provider) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            IS_MULTICHAIN_PROVIDER_ENABLED,
            provider
        ));
    }

    // @dev key for whether a multichain endpoint is enabled
    // @param endpoint the multichain endpoint
    // @return key for whether a multichain endpoint is enabled
    function isMultichainEndpointEnabledKey(address endpoint) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            IS_MULTICHAIN_ENDPOINT_ENABLED,
            endpoint
        ));
    }

    // @dev key for whether a relay fee is excluded for the caller
    // @param sender the address of the sender
    // @return key for whether a relay fee is excluded
    function isRelayFeeExcludedKey(address sender) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            IS_RELAY_FEE_EXCLUDED,
            sender
        ));
    }

    // @dev key for whether a multichain endpoint is enabled
    // @param endpoint the multichain endpoint
    // @return key for whether a multichain endpoint is enabled
    function isSrcChainIdEnabledKey(uint256 srcChainId) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            IS_SRC_CHAIN_ID_ENABLED,
            srcChainId
        ));
    }

    // @dev key for the last src chain id from which the user last managed his position
    // @param positionKey the position key for which to retrieve the last src chain id
    // @return key for the last src chain id from which the user last managed his position
    function positionLastSrcChainId(bytes32 positionKey) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            POSITION_LAST_SRC_CHAIN_ID,
            positionKey
        ));
    }

    // @dev key for the source chain id mapped from the endpoint id
    // @param eid the endpoint id of the source chain
    // @return key for the srcChainId
    function eidToSrcChainId(uint32 eid) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            EID_TO_SRC_CHAIN_ID,
            eid
        ));
    }

    // @dev key for user's multichain balance
    // @param account the account for which to retrieve the user balance key
    // @param token the token for which to retrieve the user balance key
    // @return key for multichain balance for a given user and token
    function multichainBalanceKey(address account, address token) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            MULTICHAIN_BALANCE,
            account,
            token
        ));
    }

    // @dev key for the claimable fund amount for a specific account and token
    // @param account the account to claim funds for
    // @param token the token to claim
    // @param distributionId the distribution id to claim funds for
    // @return key for claimable fund amount
    function claimableFundsAmountKey(address account, address token, uint256 distributionId) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            CLAIMABLE_FUNDS_AMOUNT,
            account,
            token,
            distributionId
        ));
    }

    // @dev key for the total claimable amount for a specific token
    // @param token the token for which to retrieve the total claimable amount
    // @return key for total claimable amount
    function totalClaimableFundsAmountKey(address token) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            TOTAL_CLAIMABLE_FUNDS_AMOUNT,
            token
        ));
    }

    function claimTermsKey(uint256 distributionId) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            CLAIM_TERMS,
            distributionId
        ));
    }

    function claimTermsBackrefKey(bytes32 termsHash) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            CLAIM_TERMS_BACKREF,
            termsHash
        ));
    }
}

// ============================================================
// FILE: contracts/deposit/Deposit.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.0;

// @title Deposit
// @dev Struct for deposits
library Deposit {
    enum DepositType {
        Normal,
        Shift,
        Glv
    }

    // @dev there is a limit on the number of fields a struct can have when being passed
    // or returned as a memory variable which can cause "Stack too deep" errors
    // use sub-structs to avoid this issue
    // @param addresses address values
    // @param numbers number values
    // @param flags boolean values
    // @param _dataList a list of bytes32 values that can be used for additional data
    struct Props {
        Addresses addresses;
        Numbers numbers;
        Flags flags;
        bytes32[] _dataList;
    }

    // @param account the account depositing liquidity
    // @param receiver the address to send the liquidity tokens to
    // @param callbackContract the callback contract
    // @param uiFeeReceiver the ui fee receiver
    // @param market the market to deposit to
    struct Addresses {
        address account;
        address receiver;
        address callbackContract;
        address uiFeeReceiver;
        address market;
        address initialLongToken;
        address initialShortToken;
        address[] longTokenSwapPath;
        address[] shortTokenSwapPath;
    }

    // @param initialLongTokenAmount the amount of long tokens to deposit
    // @param initialShortTokenAmount the amount of short tokens to deposit
    // @param minMarketTokens the minimum acceptable number of liquidity tokens
    // sending funds back to the user in case the deposit gets cancelled
    // @param executionFee the execution fee for keepers
    // @param callbackGasLimit the gas limit for the callbackContract
    // @param srcChainId the source chain id
    struct Numbers {
        uint256 initialLongTokenAmount;
        uint256 initialShortTokenAmount;
        uint256 minMarketTokens;
        uint256 updatedAtTime;
        uint256 executionFee;
        uint256 callbackGasLimit;
        uint256 srcChainId;
    }

    // @param shouldUnwrapNativeToken whether to unwrap the native token when
    struct Flags {
        bool shouldUnwrapNativeToken;
    }

    function account(Props memory props) internal pure returns (address) {
        return props.addresses.account;
    }

    function setAccount(Props memory props, address value) internal pure {
        props.addresses.account = value;
    }

    function receiver(Props memory props) internal pure returns (address) {
        return props.addresses.receiver;
    }

    function setReceiver(Props memory props, address value) internal pure {
        props.addresses.receiver = value;
    }

    function callbackContract(Props memory props) internal pure returns (address) {
        return props.addresses.callbackContract;
    }

    function setCallbackContract(Props memory props, address value) internal pure {
        props.addresses.callbackContract = value;
    }

    function uiFeeReceiver(Props memory props) internal pure returns (address) {
        return props.addresses.uiFeeReceiver;
    }

    function setUiFeeReceiver(Props memory props, address value) internal pure {
        props.addresses.uiFeeReceiver = value;
    }

    function market(Props memory props) internal pure returns (address) {
        return props.addresses.market;
    }

    function setMarket(Props memory props, address value) internal pure {
        props.addresses.market = value;
    }

    function initialLongToken(Props memory props) internal pure returns (address) {
        return props.addresses.initialLongToken;
    }

    function setInitialLongToken(Props memory props, address value) internal pure {
        props.addresses.initialLongToken = value;
    }

    function initialShortToken(Props memory props) internal pure returns (address) {
        return props.addresses.initialShortToken;
    }

    function setInitialShortToken(Props memory props, address value) internal pure {
        props.addresses.initialShortToken = value;
    }

    function longTokenSwapPath(Props memory props) internal pure returns (address[] memory) {
        return props.addresses.longTokenSwapPath;
    }

    function setLongTokenSwapPath(Props memory props, address[] memory value) internal pure {
        props.addresses.longTokenSwapPath = value;
    }

    function shortTokenSwapPath(Props memory props) internal pure returns (address[] memory) {
        return props.addresses.shortTokenSwapPath;
    }

    function setShortTokenSwapPath(Props memory props, address[] memory value) internal pure {
        props.addresses.shortTokenSwapPath = value;
    }

    function initialLongTokenAmount(Props memory props) internal pure returns (uint256) {
        return props.numbers.initialLongTokenAmount;
    }

    function setInitialLongTokenAmount(Props memory props, uint256 value) internal pure {
        props.numbers.initialLongTokenAmount = value;
    }

    function initialShortTokenAmount(Props memory props) internal pure returns (uint256) {
        return props.numbers.initialShortTokenAmount;
    }

    function setInitialShortTokenAmount(Props memory props, uint256 value) internal pure {
        props.numbers.initialShortTokenAmount = value;
    }

    function minMarketTokens(Props memory props) internal pure returns (uint256) {
        return props.numbers.minMarketTokens;
    }

    function setMinMarketTokens(Props memory props, uint256 value) internal pure {
        props.numbers.minMarketTokens = value;
    }

    function updatedAtTime(Props memory props) internal pure returns (uint256) {
        return props.numbers.updatedAtTime;
    }

    function setUpdatedAtTime(Props memory props, uint256 value) internal pure {
        props.numbers.updatedAtTime = value;
    }

    function executionFee(Props memory props) internal pure returns (uint256) {
        return props.numbers.executionFee;
    }

    function setExecutionFee(Props memory props, uint256 value) internal pure {
        props.numbers.executionFee = value;
    }

    function callbackGasLimit(Props memory props) internal pure returns (uint256) {
        return props.numbers.callbackGasLimit;
    }

    function setCallbackGasLimit(Props memory props, uint256 value) internal pure {
        props.numbers.callbackGasLimit = value;
    }

    function srcChainId(Props memory props) internal pure returns (uint256) {
        return props.numbers.srcChainId;
    }

    function setSrcChainId(Props memory props, uint256 value) internal pure {
        props.numbers.srcChainId = value;
    }

    function shouldUnwrapNativeToken(Props memory props) internal pure returns (bool) {
        return props.flags.shouldUnwrapNativeToken;
    }

    function setShouldUnwrapNativeToken(Props memory props, bool value) internal pure {
        props.flags.shouldUnwrapNativeToken = value;
    }

    function dataList(Props memory props) internal pure returns (bytes32[] memory) {
        return props._dataList;
    }

    function setDataList(Props memory props, bytes32[] memory value) internal pure {
        props._dataList = value;
    }
}

// ============================================================
// FILE: contracts/deposit/DepositEventUtils.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.0;

import "../event/EventEmitter.sol";
import "../event/EventUtils.sol";
import "../utils/Cast.sol";

import "./Deposit.sol";
import "../pricing/ISwapPricingUtils.sol";

library DepositEventUtils {
    using Deposit for Deposit.Props;

    using EventUtils for EventUtils.AddressItems;
    using EventUtils for EventUtils.UintItems;
    using EventUtils for EventUtils.IntItems;
    using EventUtils for EventUtils.BoolItems;
    using EventUtils for EventUtils.Bytes32Items;
    using EventUtils for EventUtils.BytesItems;
    using EventUtils for EventUtils.StringItems;

    function emitDepositCreated(
        EventEmitter eventEmitter,
        bytes32 key,
        Deposit.Props memory deposit,
        Deposit.DepositType depositType
    ) external {
        EventUtils.EventLogData memory eventData = createEventData(deposit, depositType);

        eventData.bytes32Items.initItems(1);
        eventData.bytes32Items.setItem(0, "key", key);

        eventEmitter.emitEventLog2(
            "DepositCreated",
            key,
            Cast.toBytes32(deposit.account()),
            eventData
        );
    }

    function emitDepositExecuted(
        EventEmitter eventEmitter,
        bytes32 key,
        address account,
        uint256 longTokenAmount,
        uint256 shortTokenAmount,
        uint256 receivedMarketTokens,
        ISwapPricingUtils.SwapPricingType swapPricingType
    ) external {
        EventUtils.EventLogData memory eventData;

        eventData.bytes32Items.initItems(1);
        eventData.bytes32Items.setItem(0, "key", key);

        eventData.addressItems.initItems(1);
        eventData.addressItems.setItem(0, "account", account);

        eventData.uintItems.initItems(4);
        eventData.uintItems.setItem(0, "longTokenAmount", longTokenAmount);
        eventData.uintItems.setItem(1, "shortTokenAmount", shortTokenAmount);
        eventData.uintItems.setItem(2, "receivedMarketTokens", receivedMarketTokens);
        eventData.uintItems.setItem(3, "swapPricingType", uint256(swapPricingType));

        eventEmitter.emitEventLog2(
            "DepositExecuted",
            key,
            Cast.toBytes32(account),
            eventData
        );
    }

    function emitDepositCancelled(
        EventEmitter eventEmitter,
        bytes32 key,
        address account,
        string memory reason,
        bytes memory reasonBytes
    ) external {
        EventUtils.EventLogData memory eventData;

        eventData.bytes32Items.initItems(1);
        eventData.bytes32Items.setItem(0, "key", key);

        eventData.addressItems.initItems(1);
        eventData.addressItems.setItem(0, "account", account);

        eventData.stringItems.initItems(1);
        eventData.stringItems.setItem(0, "reason", reason);

        eventData.bytesItems.initItems(1);
        eventData.bytesItems.setItem(0, "reasonBytes", reasonBytes);

        eventEmitter.emitEventLog2(
            "DepositCancelled",
            key,
            Cast.toBytes32(account),
            eventData
        );
    }

    function createEventData(Deposit.Props memory deposit, Deposit.DepositType depositType)
    public pure returns (EventUtils.EventLogData memory) {
        EventUtils.EventLogData memory eventData;

        eventData.addressItems.initItems(7);
        eventData.addressItems.setItem(0, "account", deposit.account());
        eventData.addressItems.setItem(1, "receiver", deposit.receiver());
        eventData.addressItems.setItem(2, "callbackContract", deposit.callbackContract());
        eventData.addressItems.setItem(3, "market", deposit.market());
        eventData.addressItems.setItem(4, "initialLongToken", deposit.initialLongToken());
        eventData.addressItems.setItem(5, "initialShortToken", deposit.initialShortToken());
        eventData.addressItems.setItem(6, "uiFeeReceiver", deposit.uiFeeReceiver());

        eventData.addressItems.initArrayItems(2);
        eventData.addressItems.setItem(0, "longTokenSwapPath", deposit.longTokenSwapPath());
        eventData.addressItems.setItem(1, "shortTokenSwapPath", deposit.shortTokenSwapPath());

        eventData.uintItems.initItems(8);
        eventData.uintItems.setItem(0, "initialLongTokenAmount", deposit.initialLongTokenAmount());
        eventData.uintItems.setItem(1, "initialShortTokenAmount", deposit.initialShortTokenAmount());
        eventData.uintItems.setItem(2, "minMarketTokens", deposit.minMarketTokens());
        eventData.uintItems.setItem(3, "updatedAtTime", deposit.updatedAtTime());
        eventData.uintItems.setItem(4, "executionFee", deposit.executionFee());
        eventData.uintItems.setItem(5, "callbackGasLimit", deposit.callbackGasLimit());
        eventData.uintItems.setItem(6, "depositType", uint256(depositType));
        eventData.uintItems.setItem(7, "srcChainId", deposit.srcChainId());

        eventData.boolItems.initItems(1);
        eventData.boolItems.setItem(0, "shouldUnwrapNativeToken", deposit.shouldUnwrapNativeToken());

        eventData.bytes32Items.initArrayItems(1);
        eventData.bytes32Items.setItem(0, "dataList", deposit.dataList());
        return eventData;
    }
}

// ============================================================
// FILE: contracts/deposit/DepositStoreUtils.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.0;

import "../data/Keys.sol";
import "../data/DataStore.sol";

import "./Deposit.sol";

/**
 * @title DepositStoreUtils
 * @dev Library for deposit storage functions
 */
library DepositStoreUtils {
    using Deposit for Deposit.Props;

    bytes32 public constant ACCOUNT = keccak256(abi.encode("ACCOUNT"));
    bytes32 public constant RECEIVER = keccak256(abi.encode("RECEIVER"));
    bytes32 public constant CALLBACK_CONTRACT = keccak256(abi.encode("CALLBACK_CONTRACT"));
    bytes32 public constant UI_FEE_RECEIVER = keccak256(abi.encode("UI_FEE_RECEIVER"));
    bytes32 public constant MARKET = keccak256(abi.encode("MARKET"));
    bytes32 public constant INITIAL_LONG_TOKEN = keccak256(abi.encode("INITIAL_LONG_TOKEN"));
    bytes32 public constant INITIAL_SHORT_TOKEN = keccak256(abi.encode("INITIAL_SHORT_TOKEN"));
    bytes32 public constant LONG_TOKEN_SWAP_PATH = keccak256(abi.encode("LONG_TOKEN_SWAP_PATH"));
    bytes32 public constant SHORT_TOKEN_SWAP_PATH = keccak256(abi.encode("SHORT_TOKEN_SWAP_PATH"));

    bytes32 public constant INITIAL_LONG_TOKEN_AMOUNT = keccak256(abi.encode("INITIAL_LONG_TOKEN_AMOUNT"));
    bytes32 public constant INITIAL_SHORT_TOKEN_AMOUNT = keccak256(abi.encode("INITIAL_SHORT_TOKEN_AMOUNT"));
    bytes32 public constant MIN_MARKET_TOKENS = keccak256(abi.encode("MIN_MARKET_TOKENS"));
    bytes32 public constant UPDATED_AT_TIME = keccak256(abi.encode("UPDATED_AT_TIME"));
    bytes32 public constant EXECUTION_FEE = keccak256(abi.encode("EXECUTION_FEE"));
    bytes32 public constant CALLBACK_GAS_LIMIT = keccak256(abi.encode("CALLBACK_GAS_LIMIT"));
    bytes32 public constant SRC_CHAIN_ID = keccak256(abi.encode("SRC_CHAIN_ID"));

    bytes32 public constant SHOULD_UNWRAP_NATIVE_TOKEN = keccak256(abi.encode("SHOULD_UNWRAP_NATIVE_TOKEN"));

    bytes32 public constant DATA_LIST = keccak256(abi.encode("DATA_LIST"));

    function get(DataStore dataStore, bytes32 key) external view returns (Deposit.Props memory) {
        Deposit.Props memory deposit;
        if (!dataStore.containsBytes32(Keys.DEPOSIT_LIST, key)) {
            return deposit;
        }

        deposit.setAccount(dataStore.getAddress(
            keccak256(abi.encode(key, ACCOUNT))
        ));

        deposit.setReceiver(dataStore.getAddress(
            keccak256(abi.encode(key, RECEIVER))
        ));

        deposit.setCallbackContract(dataStore.getAddress(
            keccak256(abi.encode(key, CALLBACK_CONTRACT))
        ));

        deposit.setUiFeeReceiver(dataStore.getAddress(
            keccak256(abi.encode(key, UI_FEE_RECEIVER))
        ));

        deposit.setMarket(dataStore.getAddress(
            keccak256(abi.encode(key, MARKET))
        ));

        deposit.setInitialLongToken(dataStore.getAddress(
            keccak256(abi.encode(key, INITIAL_LONG_TOKEN))
        ));

        deposit.setInitialShortToken(dataStore.getAddress(
            keccak256(abi.encode(key, INITIAL_SHORT_TOKEN))
        ));

        deposit.setLongTokenSwapPath(dataStore.getAddressArray(
            keccak256(abi.encode(key, LONG_TOKEN_SWAP_PATH))
        ));

        deposit.setShortTokenSwapPath(dataStore.getAddressArray(
            keccak256(abi.encode(key, SHORT_TOKEN_SWAP_PATH))
        ));

        deposit.setInitialLongTokenAmount(dataStore.getUint(
            keccak256(abi.encode(key, INITIAL_LONG_TOKEN_AMOUNT))
        ));

        deposit.setInitialShortTokenAmount(dataStore.getUint(
            keccak256(abi.encode(key, INITIAL_SHORT_TOKEN_AMOUNT))
        ));

        deposit.setMinMarketTokens(dataStore.getUint(
            keccak256(abi.encode(key, MIN_MARKET_TOKENS))
        ));

        deposit.setUpdatedAtTime(dataStore.getUint(
            keccak256(abi.encode(key, UPDATED_AT_TIME))
        ));

        deposit.setExecutionFee(dataStore.getUint(
            keccak256(abi.encode(key, EXECUTION_FEE))
        ));

        deposit.setCallbackGasLimit(dataStore.getUint(
            keccak256(abi.encode(key, CALLBACK_GAS_LIMIT))
        ));

        deposit.setSrcChainId(dataStore.getUint(
            keccak256(abi.encode(key, SRC_CHAIN_ID))
        ));

        deposit.setShouldUnwrapNativeToken(dataStore.getBool(
            keccak256(abi.encode(key, SHOULD_UNWRAP_NATIVE_TOKEN))
        ));

        deposit.setDataList(dataStore.getBytes32Array(
            keccak256(abi.encode(key, DATA_LIST))
        ));

        return deposit;
    }

    function set(DataStore dataStore, bytes32 key, Deposit.Props memory deposit) external {
        dataStore.addBytes32(
            Keys.DEPOSIT_LIST,
            key
        );

        dataStore.addBytes32(
            Keys.accountDepositListKey(deposit.account()),
            key
        );

        dataStore.setAddress(
            keccak256(abi.encode(key, ACCOUNT)),
            deposit.account()
        );

        dataStore.setAddress(
            keccak256(abi.encode(key, RECEIVER)),
            deposit.receiver()
        );

        dataStore.setAddress(
            keccak256(abi.encode(key, CALLBACK_CONTRACT)),
            deposit.callbackContract()
        );

        dataStore.setAddress(
            keccak256(abi.encode(key, UI_FEE_RECEIVER)),
            deposit.uiFeeReceiver()
        );

        dataStore.setAddress(
            keccak256(abi.encode(key, MARKET)),
            deposit.market()
        );

        dataStore.setAddress(
            keccak256(abi.encode(key, INITIAL_LONG_TOKEN)),
            deposit.initialLongToken()
        );

        dataStore.setAddress(
            keccak256(abi.encode(key, INITIAL_SHORT_TOKEN)),
            deposit.initialShortToken()
        );

        dataStore.setAddressArray(
            keccak256(abi.encode(key, LONG_TOKEN_SWAP_PATH)),
            deposit.longTokenSwapPath()
        );

        dataStore.setAddressArray(
            keccak256(abi.encode(key, SHORT_TOKEN_SWAP_PATH)),
            deposit.shortTokenSwapPath()
        );

        dataStore.setUint(
            keccak256(abi.encode(key, INITIAL_LONG_TOKEN_AMOUNT)),
            deposit.initialLongTokenAmount()
        );

        dataStore.setUint(
            keccak256(abi.encode(key, INITIAL_SHORT_TOKEN_AMOUNT)),
            deposit.initialShortTokenAmount()
        );

        dataStore.setUint(
            keccak256(abi.encode(key, MIN_MARKET_TOKENS)),
            deposit.minMarketTokens()
        );

        dataStore.setUint(
            keccak256(abi.encode(key, UPDATED_AT_TIME)),
            deposit.updatedAtTime()
        );

        dataStore.setUint(
            keccak256(abi.encode(key, EXECUTION_FEE)),
            deposit.executionFee()
        );

        dataStore.setUint(
            keccak256(abi.encode(key, CALLBACK_GAS_LIMIT)),
            deposit.callbackGasLimit()
        );

        dataStore.setUint(
            keccak256(abi.encode(key, SRC_CHAIN_ID)),
            deposit.srcChainId()
        );

        dataStore.setBool(
            keccak256(abi.encode(key, SHOULD_UNWRAP_NATIVE_TOKEN)),
            deposit.shouldUnwrapNativeToken()
        );

        dataStore.setBytes32Array(
            keccak256(abi.encode(key, DATA_LIST)),
            deposit.dataList()
        );
    }

    function remove(DataStore dataStore, bytes32 key, address account) external {
        if (!dataStore.containsBytes32(Keys.DEPOSIT_LIST, key)) {
            revert Errors.DepositNotFound(key);
        }

        dataStore.removeBytes32(
            Keys.DEPOSIT_LIST,
            key
        );

        dataStore.removeBytes32(
            Keys.accountDepositListKey(account),
            key
        );

        dataStore.removeAddress(
            keccak256(abi.encode(key, ACCOUNT))
        );

        dataStore.removeAddress(
            keccak256(abi.encode(key, RECEIVER))
        );

        dataStore.removeAddress(
            keccak256(abi.encode(key, CALLBACK_CONTRACT))
        );

        dataStore.removeAddress(
            keccak256(abi.encode(key, UI_FEE_RECEIVER))
        );

        dataStore.removeAddress(
            keccak256(abi.encode(key, MARKET))
        );

        dataStore.removeAddress(
            keccak256(abi.encode(key, INITIAL_LONG_TOKEN))
        );

        dataStore.removeAddress(
            keccak256(abi.encode(key, INITIAL_SHORT_TOKEN))
        );

        dataStore.removeAddressArray(
            keccak256(abi.encode(key, LONG_TOKEN_SWAP_PATH))
        );

        dataStore.removeAddressArray(
            keccak256(abi.encode(key, SHORT_TOKEN_SWAP_PATH))
        );

        dataStore.removeUint(
            keccak256(abi.encode(key, INITIAL_LONG_TOKEN_AMOUNT))
        );

        dataStore.removeUint(
            keccak256(abi.encode(key, INITIAL_SHORT_TOKEN_AMOUNT))
        );

        dataStore.removeUint(
            keccak256(abi.encode(key, MIN_MARKET_TOKENS))
        );

        dataStore.removeUint(
            keccak256(abi.encode(key, UPDATED_AT_TIME))
        );

        dataStore.removeUint(
            keccak256(abi.encode(key, EXECUTION_FEE))
        );

        dataStore.removeUint(
            keccak256(abi.encode(key, CALLBACK_GAS_LIMIT))
        );

        dataStore.removeUint(
            keccak256(abi.encode(key, SRC_CHAIN_ID))
        );

        dataStore.removeBool(
            keccak256(abi.encode(key, SHOULD_UNWRAP_NATIVE_TOKEN))
        );

        dataStore.removeBytes32Array(
            keccak256(abi.encode(key, DATA_LIST))
        );
    }

    function getDepositCount(DataStore dataStore) internal view returns (uint256) {
        return dataStore.getBytes32Count(Keys.DEPOSIT_LIST);
    }

    function getDepositKeys(DataStore dataStore, uint256 start, uint256 end) internal view returns (bytes32[] memory) {
        return dataStore.getBytes32ValuesAt(Keys.DEPOSIT_LIST, start, end);
    }

    function getAccountDepositCount(DataStore dataStore, address account) internal view returns (uint256) {
        return dataStore.getBytes32Count(Keys.accountDepositListKey(account));
    }

    function getAccountDepositKeys(DataStore dataStore, address account, uint256 start, uint256 end) internal view returns (bytes32[] memory) {
        return dataStore.getBytes32ValuesAt(Keys.accountDepositListKey(account), start, end);
    }
}

// ============================================================
// FILE: contracts/deposit/DepositVault.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.0;

import "../bank/StrictBank.sol";

// @title DepositVault
// @dev Vault for deposits
contract DepositVault is StrictBank {
    constructor(RoleStore _roleStore, DataStore _dataStore) StrictBank(_roleStore, _dataStore) {}
}

// ============================================================
// FILE: contracts/deposit/IDepositUtils.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.0;

interface IDepositUtils {
    // @dev CreateDepositParams struct used in createDeposit to avoid stack
    // too deep errors
    //
    // @param receiver the address to send the market tokens to
    // @param callbackContract the callback contract
    // @param uiFeeReceiver the ui fee receiver
    // @param market the market to deposit into
    // @param minMarketTokens the minimum acceptable number of liquidity tokens
    // @param shouldUnwrapNativeToken whether to unwrap the native token when
    // sending funds back to the user in case the deposit gets cancelled
    // @param executionFee the execution fee for keepers
    // @param callbackGasLimit the gas limit for the callbackContract
    // @param dataList a list of bytes32 values that can be used for additional data
    struct CreateDepositParams {
        CreateDepositParamsAddresses addresses;
        uint256 minMarketTokens;
        bool shouldUnwrapNativeToken;
        uint256 executionFee;
        uint256 callbackGasLimit;
        bytes32[] dataList;
    }

    struct CreateDepositParamsAddresses {
        address receiver;
        address callbackContract;
        address uiFeeReceiver;
        address market;
        address initialLongToken;
        address initialShortToken;
        address[] longTokenSwapPath;
        address[] shortTokenSwapPath;
    }
}

// ============================================================
// FILE: contracts/deposit/IExecuteDepositUtils.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.0;

import "../data/DataStore.sol";
import "../event/EventEmitter.sol";
import "../multichain/MultichainVault.sol";
import "../multichain/IMultichainTransferRouter.sol";
import "../deposit/DepositVault.sol";
import "../oracle/IOracle.sol";
import "../pricing/ISwapPricingUtils.sol";
import "../swap/ISwapHandler.sol";

interface IExecuteDepositUtils {
    // @dev ExecuteDepositParams struct used in executeDeposit to avoid stack
    // too deep errors
    struct ExecuteDepositParams {
        DataStore dataStore;
        EventEmitter eventEmitter;
        MultichainVault multichainVault;
        IMultichainTransferRouter multichainTransferRouter;
        DepositVault depositVault;
        IOracle oracle;
        ISwapHandler swapHandler;
        bytes32 key;
        address keeper;
        uint256 startingGas;
        ISwapPricingUtils.SwapPricingType swapPricingType;
        bool includeVirtualInventoryImpact;
    }
}

// ============================================================
// FILE: contracts/error/Errors.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.0;

library Errors {
    // AdlHandler errors
    error AdlNotRequired(int256 pnlToPoolFactor, uint256 maxPnlFactorForAdl);
    error InvalidAdl(int256 nextPnlToPoolFactor, int256 pnlToPoolFactor);
    error PnlOvercorrected(int256 nextPnlToPoolFactor, uint256 minPnlFactorForAdl);

    // AdlUtils errors
    error InvalidSizeDeltaForAdl(uint256 sizeDeltaUsd, uint256 positionSizeInUsd);
    error AdlNotEnabled();

    // AutoCancelUtils errors
    error MaxAutoCancelOrdersExceeded(uint256 count, uint256 maxAutoCancelOrders);

    // Bank errors
    error SelfTransferNotSupported(address receiver);
    error InvalidNativeTokenSender(address msgSender);

    // BaseHandler errors
    error RequestNotYetCancellable(uint256 requestAge, uint256 requestExpirationAge, string requestType);

    // CallbackUtils errors
    error MaxCallbackGasLimitExceeded(uint256 callbackGasLimit, uint256 maxCallbackGasLimit);
    error InsufficientGasLeftForCallback(uint256 gasToBeForwarded, uint256 callbackGasLimit);

    // Config errors
    error InvalidBaseKey(bytes32 baseKey);
    error ConfigValueExceedsAllowedRange(bytes32 baseKey, uint256 value);
    error InvalidClaimableFactor(uint256 value);
    error InvalidClaimableReductionFactor(uint256 value);
    error OracleProviderAlreadyExistsForToken(address oracle, address token);
    error OracleProviderMinChangeDelayNotYetPassed(address token, address provider);
    error PriceFeedAlreadyExistsForToken(address token);
    error DataStreamIdAlreadyExistsForToken(address token);
    error EdgeDataStreamIdAlreadyExistsForToken(address token);
    error MaxFundingFactorPerSecondLimitExceeded(uint256 maxFundingFactorPerSecond, uint256 limit);
    error InvalidPositionImpactPoolDistributionRate(uint256 distributionAmount, uint256 positionImpactPoolAmount);
    error MaxDataListLengthExceeded(uint256 dataLength, uint256 maxDataLength);
    error EmptyToken();

    // ContributorHandler errors
    error InvalidSetContributorPaymentInput(uint256 tokensLength, uint256 amountsLength);
    error InvalidContributorToken(address token);
    error MaxTotalContributorTokenAmountExceeded(address token, uint256 totalAmount, uint256 maxTotalAmount);
    error MinContributorPaymentIntervalNotYetPassed(uint256 minPaymentInterval);
    error MinContributorPaymentIntervalBelowAllowedRange(uint256 interval);
    error InvalidSetMaxTotalContributorTokenAmountInput(uint256 tokensLength, uint256 amountsLength);

    // Timelock errors
    error ActionAlreadySignalled();
    error ActionNotSignalled();
    error SignalTimeNotYetPassed(uint256 signalTime);
    error InvalidTimelockDelay(uint256 timelockDelay);
    error MaxTimelockDelayExceeded(uint256 timelockDelay);
    error InvalidFeeReceiver(address receiver);
    error InvalidOracleSigner(address signer);
    error InvalidHoldingAddress(address account);
    error EmptyPositionImpactWithdrawalAmount();
    error OraclePriceOutdated();
    error EmptyTarget();
    error EmptyFundingAccount();
    error EmptyReduceLentAmount();
    error ReductionExceedsLentAmount(uint256 lentAmount, uint256 totalReductionAmount);

    // GlvDepositStoreUtils errors
    error GlvDepositNotFound(bytes32 key);
    // GlvShiftStoreUtils errors
    error GlvShiftNotFound(bytes32 key);
    // GlvWithdrawalStoreUtils errors
    error GlvWithdrawalNotFound(bytes32 key);
    // GlvDepositUtils errors
    error EmptyGlvDepositAmounts();
    error EmptyGlvMarketAmount();
    error EmptyGlvDeposit();
    error InvalidMinGlvTokensForFirstGlvDeposit(uint256 minGlvTokens, uint256 expectedMinGlvTokens);
    error InvalidReceiverForFirstGlvDeposit(address receiver, address expectedReceiver);
    // GlvWithdrawalUtils errors
    error EmptyGlvWithdrawal();
    error EmptyGlvWithdrawalAmount();
    // GlvUtils errors
    error EmptyGlv(address glv);
    error EmptyGlvTokenSupply();
    error GlvNegativeMarketPoolValue(address glv, address market);
    error GlvUnsupportedMarket(address glv, address market);
    error GlvDisabledMarket(address glv, address market);
    error GlvEnabledMarket(address glv, address market);
    error GlvNonZeroMarketBalance(address glv, address market);
    error GlvMaxMarketCountExceeded(address glv, uint256 glvMaxMarketCount);
    error GlvMaxMarketTokenBalanceUsdExceeded(address glv, address market, uint256 maxMarketTokenBalanceUsd, uint256 marketTokenBalanceUsd);
    error GlvMaxMarketTokenBalanceAmountExceeded(address glv, address market, uint256 maxMarketTokenBalanceAmount, uint256 marketTokenBalanceAmount);
    error GlvInsufficientMarketTokenBalance(address glv, address market, uint256 marketTokenBalance, uint256 marketTokenAmount);
    error GlvMarketAlreadyExists(address glv, address market);
    error GlvInvalidLongToken(address glv, address provided, address expected);
    error GlvInvalidShortToken(address glv, address provided, address expected);
    // GlvShiftUtils
    error GlvShiftMaxLossExceeded(uint256 effectivePriceImpactFactor, uint256 glvMaxShiftPriceImpactFactor);
    error GlvShiftIntervalNotYetPassed(uint256 currentTimestamp, uint256 lastGlvShiftExecutedAt, uint256 glvShiftMinInterval);
    // GlvFactory
    error GlvAlreadyExists(bytes32 salt, address glv);
    error GlvSymbolTooLong();
    error GlvNameTooLong();
    // GlvStoreUtils
    error GlvNotFound(address key);
    // Jit
    error JitInvalidToMarket(address market, address expectedMarket);
    error JitEmptyShiftParams();
    error JitUnsupportedOrderType(uint256 orderType);

    // DepositStoreUtils errors
    error DepositNotFound(bytes32 key);

    // DepositUtils errors
    error EmptyDeposit();
    error EmptyDepositAmounts();

    // ExecuteDepositUtils errors
    error MinMarketTokens(uint256 received, uint256 expected);
    error EmptyDepositAmountsAfterSwap();
    error InvalidPoolValueForDeposit(int256 poolValue);
    error InvalidSwapOutputToken(address outputToken, address expectedOutputToken);
    error InvalidReceiverForFirstDeposit(address receiver, address expectedReceiver);
    error InvalidMinMarketTokensForFirstDeposit(uint256 minMarketTokens, uint256 expectedMinMarketTokens);

    // ExternalHandler errors
    error ExternalCallFailed(bytes data);
    error InvalidExternalCallInput(uint256 targetsLength, uint256 dataListLength);
    error InvalidExternalReceiversInput(uint256 refundTokensLength, uint256 refundReceiversLength);
    error InvalidExternalCallTarget(address target);

    // FeeBatchStoreUtils errors
    error FeeBatchNotFound(bytes32 key);

    // FeeDistributor errors
    error InvalidFeeBatchTokenIndex(uint256 tokenIndex, uint256 feeBatchTokensLength);
    error InvalidAmountInForFeeBatch(uint256 amountIn, uint256 remainingAmount);
    error InvalidSwapPathForV1(address[] path, address bridgingToken);

    // GlpMigrator errors
    error InvalidGlpAmount(uint256 totalGlpAmountToRedeem, uint256 totalGlpAmount);
    error InvalidExecutionFeeForMigration(uint256 totalExecutionFee, uint256 msgValue);

    // GlvHandler errors
    error InvalidGlvDepositInitialLongToken(address initialLongToken);
    error InvalidGlvDepositInitialShortToken(address initialShortToken);
    error InvalidGlvDepositSwapPath(uint256 longTokenSwapPathLength, uint256 shortTokenSwapPathLength);
    error MinGlvTokens(uint256 received, uint256 expected);

    // OrderHandler errors
    error OrderNotUpdatable(uint256 orderType);
    error InvalidKeeperForFrozenOrder(address keeper);

    // FeatureUtils errors
    error DisabledFeature(bytes32 key);

    // FeeHandler errors
    error InvalidBuybackToken(address buybackToken);
    error InvalidVersion(uint256 version);
    error InsufficientBuybackOutputAmount(address feeToken, address buybackToken, uint256 outputAmount, uint256 minOutputAmount);
    error BuybackAndFeeTokenAreEqual(address feeToken, address buybackToken);
    error AvailableFeeAmountIsZero(address feeToken, address buybackToken, uint256 availableFeeAmount);
    error MaxBuybackPriceAgeExceeded(uint256 priceTimestamp, uint256 buybackMaxPriceAge, uint256 currentTimestamp);
    error EmptyClaimFeesMarket();

    // GasUtils errors
    error InsufficientExecutionFee(uint256 minExecutionFee, uint256 executionFee);
    error InsufficientWntAmountForExecutionFee(uint256 wntAmount, uint256 executionFee);
    error InsufficientNativeTokenAmount(uint256 msgValue, uint256 expectedNativeValue);
    error InsufficientExecutionGasForErrorHandling(uint256 startingGas, uint256 minHandleErrorGas);
    error InsufficientExecutionGas(uint256 startingGas, uint256 estimatedGasLimit, uint256 minAdditionalGasForExecution);
    error InsufficientHandleExecutionErrorGas(uint256 gas, uint256 minHandleExecutionErrorGas);
    error InsufficientGasForCancellation(uint256 gas, uint256 minHandleExecutionErrorGas);
    error InsufficientGasForAutoCancellation(uint256 gas, uint256 minHandleExecutionErrorGas);
    error InsufficientGasLeft(uint256 gas, uint256 estimatedGasLimit);
    error InvalidExecutionFee(uint256 executionFee, uint256 minExecutionFee, uint256 maxExecutionFee);
    error EmptyRelayFeeAddress();

    // MarketFactory errors
    error MarketAlreadyExists(bytes32 salt, address existingMarketAddress);

    // MarketStoreUtils errors
    error MarketNotFound(address key);

    // MarketUtils errors
    error EmptyMarket();
    error DisabledMarket(address market);
    error MaxSwapPathLengthExceeded(uint256 swapPathLengh, uint256 maxSwapPathLength);
    error InsufficientPoolAmount(uint256 poolAmount, uint256 amount);
    error InsufficientReserve(uint256 reservedUsd, uint256 maxReservedUsd);
    error InsufficientReserveForOpenInterest(uint256 reservedUsd, uint256 maxReservedUsd);
    error UnableToGetOppositeToken(address inputToken, address market);
    error UnexpectedTokenForVirtualInventory(address token, address market);
    error EmptyMarketTokenSupply();
    error InvalidSwapMarket(address market);
    error UnableToGetCachedTokenPrice(address token, address market);
    error CollateralAlreadyClaimed(uint256 adjustedClaimableAmount, uint256 claimedAmount);
    error OpenInterestCannotBeUpdatedForSwapOnlyMarket(address market);
    error MaxOpenInterestExceeded(uint256 openInterest, uint256 maxOpenInterest);
    error MaxPoolAmountExceeded(uint256 poolAmount, uint256 maxPoolAmount);
    error MaxCollateralSumExceeded(uint256 collateralSum, uint256 maxCollateralSum);
    error MaxPoolUsdForDepositExceeded(uint256 poolUsd, uint256 maxPoolUsdForDeposit);
    error UnexpectedBorrowingFactor(uint256 positionBorrowingFactor, uint256 cumulativeBorrowingFactor);
    error UnableToGetBorrowingFactorEmptyPoolUsd();
    error UnableToGetFundingFactorEmptyOpenInterest();
    error InvalidPositionMarket(address market);
    error InvalidCollateralTokenForMarket(address market, address token);
    error PnlFactorExceededForLongs(int256 pnlToPoolFactor, uint256 maxPnlFactor);
    error PnlFactorExceededForShorts(int256 pnlToPoolFactor, uint256 maxPnlFactor);
    error InvalidUiFeeFactor(uint256 uiFeeFactor, uint256 maxUiFeeFactor);
    error EmptyAddressInMarketTokenBalanceValidation(address market, address token);
    error InvalidMarketTokenBalance(address market, address token, uint256 balance, uint256 expectedMinBalance);
    error InvalidMarketTokenBalanceForCollateralAmount(address market, address token, uint256 balance, uint256 collateralAmount);
    error InvalidMarketTokenBalanceForClaimableFunding(address market, address token, uint256 balance, uint256 claimableFundingFeeAmount);
    error UnexpectedPoolValue(int256 poolValue);

    // MarketPositionImpactUtils errors
    error InsufficientImpactPoolValueForWithdrawal(uint256 withdrawalAmount, uint256 poolValue, int256 totalPendingImpactAmount);

    // Oracle errors
    error SequencerDown();
    error SequencerGraceDurationNotYetPassed(uint256 timeSinceUp, uint256 sequencerGraceDuration);
    error EmptyValidatedPrices(); // not used, kept for compatibility
    error InvalidOracleProvider(address provider);
    error InvalidOracleProviderForToken(address provider, address expectedProvider);
    error GmEmptySigner(uint256 signerIndex);
    error InvalidOracleSetPricesProvidersParam(uint256 tokensLength, uint256 providersLength);
    error InvalidOracleSetPricesDataParam(uint256 tokensLength, uint256 dataLength);
    error GmInvalidBlockNumber(uint256 minOracleBlockNumber, uint256 currentBlockNumber);
    error GmInvalidMinMaxBlockNumber(uint256 minOracleBlockNumber, uint256 maxOracleBlockNumber);
    error EmptyDataStreamFeedId(address token);
    error InvalidDataStreamFeedId(address token, bytes32 feedId, bytes32 expectedFeedId);
    error InvalidDataStreamBidAsk(address token, int192 bid, int192 ask);
    error InvalidDataStreamPrices(address token, int192 bid, int192 ask);
    error MaxPriceAgeExceeded(uint256 oracleTimestamp, uint256 currentTimestamp);
    error MaxOracleTimestampRangeExceeded(uint256 range, uint256 maxRange);
    error GmMinOracleSigners(uint256 oracleSigners, uint256 minOracleSigners);
    error GmMaxOracleSigners(uint256 oracleSigners, uint256 maxOracleSigners);
    error BlockNumbersNotSorted(uint256 minOracleBlockNumber, uint256 prevMinOracleBlockNumber);
    error GmMinPricesNotSorted(address token, uint256 price, uint256 prevPrice);
    error GmMaxPricesNotSorted(address token, uint256 price, uint256 prevPrice);
    error EmptyChainlinkPriceFeedMultiplier(address token);
    error EmptyDataStreamMultiplier(address token);
    error InvalidDataStreamSpreadReductionFactor(address token, uint256 spreadReductionFactor);
    error InvalidFeedPrice(address token, int256 price);
    error ChainlinkPriceFeedNotUpdated(address token, uint256 timestamp, uint256 heartbeatDuration);
    error GmMaxSignerIndex(uint256 signerIndex, uint256 maxSignerIndex);
    error InvalidGmOraclePrice(address token);
    error InvalidGmSignerMinMaxPrice(uint256 minPrice, uint256 maxPrice);
    error InvalidGmMedianMinMaxPrice(uint256 minPrice, uint256 maxPrice);
    error NonEmptyTokensWithPrices(uint256 tokensWithPricesLength);
    error InvalidMinMaxForPrice(address token, uint256 min, uint256 max);
    error EmptyChainlinkPriceFeed(address token);
    error PriceAlreadySet(address token, uint256 minPrice, uint256 maxPrice);
    error MaxRefPriceDeviationExceeded(
        address token,
        uint256 price,
        uint256 refPrice,
        uint256 maxRefPriceDeviationFactor
    );
    error InvalidBlockRangeSet(uint256 largestMinBlockNumber, uint256 smallestMaxBlockNumber);
    error NonAtomicOracleProvider(address provider);

    // OracleModule errors
    error InvalidPrimaryPricesForSimulation(uint256 primaryTokensLength, uint256 primaryPricesLength);
    error EndOfOracleSimulation();

    // OracleUtils errors
    error InvalidGmSignature(address recoveredSigner, address expectedSigner);

    error EmptyPrimaryPrice(address token);

    error OracleTimestampsAreSmallerThanRequired(uint256 minOracleTimestamp, uint256 expectedTimestamp);
    error OracleTimestampsAreLargerThanRequestExpirationTime(uint256 maxOracleTimestamp, uint256 requestTimestamp, uint256 requestExpirationTime);

    // BaseOrderUtils errors
    error EmptyOrder();
    error UnsupportedOrderType(uint256 orderType);
    error UnsupportedOrderTypeForAutoCancellation(uint256 orderType);
    error InvalidOrderPrices(
        uint256 primaryPriceMin,
        uint256 primaryPriceMax,
        uint256 triggerPrice,
        uint256 orderType
    );
    error EmptySizeDeltaInTokens();
    error PriceImpactLargerThanOrderSize(int256 priceImpactUsd, uint256 sizeDeltaUsd);
    error NegativeExecutionPrice(int256 executionPrice, uint256 price, uint256 positionSizeInUsd, int256 priceImpactUsd, uint256 sizeDeltaUsd);
    error OrderNotFulfillableAtAcceptablePrice(uint256 price, uint256 acceptablePrice);
    error OrderValidFromTimeNotReached(uint256 validFromTime, uint256 currentTimestamp);

    // IncreaseOrderUtils errors
    error UnexpectedPositionState();

    // OrderUtils errors
    error OrderTypeCannotBeCreated(uint256 orderType);
    error OrderAlreadyFrozen();
    error MaxTotalCallbackGasLimitForAutoCancelOrdersExceeded(uint256 totalCallbackGasLimit, uint256 maxTotalCallbackGasLimit);
    error InvalidReceiver(address receiver);
    error UnexpectedValidFromTime(uint256 orderType);

    // OrderStoreUtils errors
    error OrderNotFound(bytes32 key);

    // SwapOrderUtils errors
    error UnexpectedMarket();

    // DecreasePositionCollateralUtils errors
    error InsufficientFundsToPayForCosts(uint256 remainingCostUsd, string step);
    error InvalidOutputToken(address tokenOut, address expectedTokenOut);

    // DecreasePositionUtils errors
    error InvalidDecreaseOrderSize(uint256 sizeDeltaUsd, uint256 positionSizeInUsd);
    error UnableToWithdrawCollateral(int256 estimatedRemainingCollateralUsd);
    error InvalidDecreasePositionSwapType(uint256 decreasePositionSwapType);
    error PositionShouldNotBeLiquidated(
        string reason,
        int256 remainingCollateralUsd,
        int256 minCollateralUsd,
        int256 minCollateralUsdForLeverage
    );

    // IncreasePositionUtils errors
    error InsufficientCollateralAmount(uint256 collateralAmount, int256 collateralDeltaAmount);
    error InsufficientCollateralUsd(int256 remainingCollateralUsd);

    // PositionStoreUtils errors
    error PositionNotFound(bytes32 key);

    // PositionUtils errors
    error LiquidatablePosition(
        string reason,
        int256 remainingCollateralUsd,
        int256 minCollateralUsd,
        int256 minCollateralUsdForLeverage
    );

    error EmptyPosition();
    error InvalidPositionSizeValues(uint256 sizeInUsd, uint256 sizeInTokens);
    error MinPositionSize(uint256 positionSizeInUsd, uint256 minPositionSizeUsd);

    // PositionPricingUtils errors
    error UsdDeltaExceedsLongOpenInterest(int256 usdDelta, uint256 longOpenInterest);
    error UsdDeltaExceedsShortOpenInterest(int256 usdDelta, uint256 shortOpenInterest);

    // ShiftStoreUtils errors
    error ShiftNotFound(bytes32 key);

    // ShiftUtils errors
    error EmptyShift();
    error EmptyShiftAmount();
    error ShiftFromAndToMarketAreEqual(address market);
    error LongTokensAreNotEqual(address fromMarketLongToken, address toMarketLongToken);
    error ShortTokensAreNotEqual(address fromMarketLongToken, address toMarketLongToken);
    error BridgeOutNotSupportedDuringShift();

    // SwapPricingUtils errors
    error UsdDeltaExceedsPoolValue(int256 usdDelta, uint256 poolUsd);

    // RoleModule errors
    error Unauthorized(address msgSender, string role);

    // RoleStore errors
    error ThereMustBeAtLeastOneRoleAdmin();
    error ThereMustBeAtLeastOneTimelockMultiSig();

    // ExchangeRouter errors
    error InvalidClaimFundingFeesInput(uint256 marketsLength, uint256 tokensLength);
    error InvalidClaimCollateralInput(uint256 marketsLength, uint256 tokensLength, uint256 timeKeysLength);
    error InvalidClaimAffiliateRewardsInput(uint256 marketsLength, uint256 tokensLength);
    error InvalidClaimUiFeesInput(uint256 marketsLength, uint256 tokensLength);

    // SwapUtils errors
    error InvalidTokenIn(address tokenIn, address market);
    error InsufficientOutputAmount(uint256 outputAmount, uint256 minOutputAmount);
    error InsufficientSwapOutputAmount(uint256 outputAmount, uint256 minOutputAmount);
    error DuplicatedMarketInSwapPath(address market);
    error SwapPriceImpactExceedsAmountIn(uint256 amountAfterFees, int256 negativeImpactAmount);

    // SubaccountRouter errors
    error InvalidReceiverForSubaccountOrder(address receiver, address expectedReceiver);
    error InvalidCancellationReceiverForSubaccountOrder(address cancellationReceiver, address expectedCancellationReceiver);

    // SubaccountUtils errors
    error SubaccountNotAuthorized(address account, address subaccount);
    error MaxSubaccountActionCountExceeded(address account, address subaccount, uint256 count, uint256 maxCount);
    error SubaccountApprovalExpired(address account, address subaccount, uint256 deadline, uint256 currentTimestamp);
    error SubaccountIntegrationIdDisabled(bytes32 integrationId);

    // TokenUtils errors
    error TokenTransferError(address token, address receiver, uint256 amount);
    error EmptyHoldingAddress();
    // Note that Transfer is misspelled as Tranfer in the EmptyTokenTranferGasLimit error
    // some contracts with this error cannot be re-deployed so it has been left as is
    error EmptyTokenTranferGasLimit(address token);

    // AccountUtils errors
    error EmptyAccount();
    error EmptyReceiver();
    error DataListLengthExceeded();

    // ClaimHandler errors
    error EmptyAmount();
    error EmptyClaimableAmount(address token);
    error InvalidToken(address token);
    error InvalidParams(string reason);
    error InsufficientFunds(address token);
    error InvalidClaimTermsSignature(address recoveredSigner, address expectedSigner);
    error InvalidClaimTermsSignatureForContract(address expectedSigner);
    error DuplicateClaimTerms(uint256 existingDistributionId);

    // Array errors
    error CompactedArrayOutOfBounds(
        uint256[] compactedValues,
        uint256 index,
        uint256 slotIndex,
        string label
    );

    error ArrayOutOfBoundsUint256(
        uint256[] values,
        uint256 index,
        string label
    );

    error ArrayOutOfBoundsBytes(
        bytes[] values,
        uint256 index,
        string label
    );

    // WithdrawalHandler errors
    error SwapsNotAllowedForAtomicWithdrawal(uint256 longTokenSwapPathLength, uint256 shortTokenSwapPathLength);

    // WithdrawalStoreUtils errors
    error WithdrawalNotFound(bytes32 key);

    // WithdrawalUtils errors
    error EmptyWithdrawal();
    error EmptyWithdrawalAmount();
    error MinLongTokens(uint256 received, uint256 expected);
    error MinShortTokens(uint256 received, uint256 expected);
    error InsufficientMarketTokens(uint256 balance, uint256 expected);
    error InvalidPoolValueForWithdrawal(int256 poolValue);
    error MaxLendableFactorForWithdrawalsExceeded(uint256 poolUsd, uint256 maxLendableUsd, uint256 lentUsd);

    // Uint256Mask errors
    error MaskIndexOutOfBounds(uint256 index, string label);
    error DuplicatedIndex(uint256 index, string label);

    // Cast errors
    error Uint256AsBytesLengthExceeds32Bytes(uint256 length);

    // ConfigSyncer errors
    error SyncConfigInvalidInputLengths(uint256 marketsLength, uint256 parametersLength);
    error SyncConfigUpdatesDisabledForMarket(address market);
    error SyncConfigUpdatesDisabledForParameter(string parameter);
    error SyncConfigUpdatesDisabledForMarketParameter(address market, string parameter);
    error SyncConfigInvalidMarketFromData(address market, address marketFromData);

    // Reader errors
    error EmptyMarketPrice(address market);

    // Multichain errors
    error InvalidTransferRequestsLength();
    error EmptyMultichainTransferInAmount(address account, address token);
    error EmptyMultichainTransferOutAmount(address account, address token);
    error InsufficientMultichainBalance(address account, address token, uint256 balance, uint256 amount);
    error InvalidSrcChainId(uint256 srcChainId);
    error InvalidEid(uint256 eid);
    error InvalidDestinationChainId(uint256 desChainId);
    error TokenPermitsNotAllowedForMultichain();
    error InvalidInitializer();
    error InvalidMultichainProvider(address provider);
    error InvalidMultichainEndpoint(address endpoint);
    error ReferralCodeAlreadyExists(bytes32 code);
    error UnableToPayOrderFee();
    error UnableToPayOrderFeeFromCollateral();
    error InvalidBridgeOutToken(address token);
    error InsufficientFee(uint256 feeProvided, uint256 feeRequired);

    enum SignatureType {
        Call,
        SubaccountApproval
    }

    // Gelato relay errors
    error InvalidSignature(string signatureType);
    error InvalidRecoveredSigner(string signatureType, address recovered, address recoveredFromMinified, address expectedSigner);
    // User sent incorrect fee token or incorrect swap path
    error UnexpectedRelayFeeTokenAfterSwap(address feeToken, address expectedFeeToken);
    error UnexpectedRelayFeeToken(address feeToken, address expectedFeeToken);
    // Contract received unsupported fee token from Gelato relay
    error UnsupportedRelayFeeToken(address feeToken, address expectedFeeToken);
    error InvalidPermitSpender(address spender, address expectedSpender);
    error InvalidUserDigest(bytes32 digest);
    error SubaccountApprovalDeadlinePassed(uint256 currentTimestamp, uint256 deadline);
    error InvalidSubaccountApprovalNonce(uint256 storedNonce, uint256 nonce);
    error InvalidSubaccountApprovalDesChainId(uint256 desChainId);
    error DeadlinePassed(uint256 currentTimestamp, uint256 deadline);
    error InsufficientRelayFee(uint256 requiredRelayFee, uint256 availableFeeAmount);
    error InvalidSubaccountApprovalSubaccount();
    error NonEmptyExternalCallsForSubaccountOrder();

    // EventUtils error
    error EventItemNotFound(string key);

    // EdgeOracle verifier errors
    error InvalidTrustedSignerAddress();
    error InvalidEdgeSigner();
    error InvalidEdgeSignature(uint256 recoverError);
    error InvalidEdgeDataStreamBidAsk(address token, uint256 bid, uint256 ask);
    error InvalidEdgeDataStreamPrices(address token, uint256 bid, uint256 ask);
    error InvalidEdgeDataStreamExpo(int256 expo);
    error RelayEmptyBatch();
    error RelayCalldataTooLong(uint256 calldataLength);
    error InvalidExternalCalls(uint256 sendTokensLength, uint256 sendAmountsLength);
    error MaxRelayFeeSwapForSubaccountExceeded(uint256 feeUsd, uint256 maxFeeUsd);

    error RemovalShouldNotBeSkipped(bytes32 listKey, bytes32 entityKey);

    // MultichainReader errors
    error InsufficientMultichainNativeFee(uint256 msgValue);
    error EmptyPeer(uint32 eid);

    // FeeDistributor errors
    error FeeDistributionAlreadyCompleted(uint256 lastDistributionTime, uint256 startOfCurrentWeek);
    error OutdatedReadResponse(uint256 timestamp);
    error InvalidDistributionState(uint256 distributionStateUint);
    error BridgedAmountNotSufficient(uint256 minRequiredFeeAmount, uint256 currentChainFeeAmount);
    error BridgingTransactionFailed(bytes result);
    error MaxWntReferralRewardsInUsdAmountExceeded(uint256 wntReferralRewardsInUsd, uint256 maxWntReferralRewardsInUsdAmount);
    error MaxWntReferralRewardsInUsdExceeded(uint256 wntReferralRewardsInUsd, uint256 maxWntReferralRewardsInUsd);
    error MaxEsGmxReferralRewardsAmountExceeded(uint256 tokensForReferralRewards, uint256 maxEsGmxReferralRewards);
    error MaxReferralRewardsExceeded(address token, uint256 cumulativeTransferAmount, uint256 tokensForReferralRewards);
    error MaxWntFromTreasuryExceeded(uint256 maxWntFromTreasury, uint256 additionalWntFromTreasury);
    error KeeperArrayLengthMismatch(uint256 keepersLength, uint256 keeperTargetBalancesLength, uint256 keeperVersionsLength);
    error SendEthToKeeperFailed(address keeper, uint256 sendAmount, bytes result);
    error KeeperAmountMismatch(uint256 wntForKeepers, uint256 wntToKeepers);
    error AttemptedBridgeAmountTooHigh(uint256 minRequiredFeeAmount, uint256 feeAmountCurrentChain, uint256 amountToBridgeOut);
    error InvalidReferralRewardToken(address token);
    error BridgingBalanceArrayMismatch(uint256 balancesLength, uint256 targetBalancesLength);
    error ZeroTreasuryAddress();
}

// ============================================================
// FILE: contracts/error/ErrorUtils.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.0;

library ErrorUtils {
    // To get the revert reason, referenced from https://ethereum.stackexchange.com/a/83577
    function getRevertMessage(bytes memory result) internal pure returns (string memory, bool) {
        // If the result length is less than 68, then the transaction either panicked or failed silently
        if (result.length < 68) {
            return ("", false);
        }

        bytes4 errorSelector = getErrorSelectorFromData(result);

        // 0x08c379a0 is the selector for Error(string)
        // referenced from https://blog.soliditylang.org/2021/04/21/custom-errors/
        if (errorSelector == bytes4(0x08c379a0)) {
            assembly {
                result := add(result, 0x04)
            }

            return (abi.decode(result, (string)), true);
        }

        // error may be a custom error, return an empty string for this case
        return ("", false);
    }

    function getErrorSelectorFromData(bytes memory data) internal pure returns (bytes4) {
        bytes4 errorSelector;

        assembly {
            errorSelector := mload(add(data, 0x20))
        }

        return errorSelector;
    }

    function revertWithParsedMessage(bytes memory result) internal pure {
        (string memory revertMessage, bool hasRevertMessage) = getRevertMessage(result);

        if (hasRevertMessage) {
            revert(revertMessage);
        } else {
            revertWithCustomError(result);
        }
    }

    function revertWithCustomError(bytes memory result) internal pure {
        // referenced from https://ethereum.stackexchange.com/a/123588
        uint256 length = result.length;
        assembly {
            revert(add(result, 0x20), length)
        }
    }
}

// ============================================================
// FILE: contracts/event/EventEmitter.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.0;

import "../role/RoleModule.sol";
import "./EventUtils.sol";

// @title EventEmitter
// @dev Contract to emit events
// This allows main events to be emitted from a single contract
// Logic contracts can be updated while re-using the same eventEmitter contract
// Peripheral services like monitoring or analytics would be able to continue
// to work without an update and without segregating historical data
contract EventEmitter is RoleModule {
    event EventLog(
        address msgSender,
        string eventName,
        string indexed eventNameHash,
        EventUtils.EventLogData eventData
    );

    event EventLog1(
        address msgSender,
        string eventName,
        string indexed eventNameHash,
        bytes32 indexed topic1,
        EventUtils.EventLogData eventData
    );

    event EventLog2(
        address msgSender,
        string eventName,
        string indexed eventNameHash,
        bytes32 indexed topic1,
        bytes32 indexed topic2,
        EventUtils.EventLogData eventData
    );

    constructor(RoleStore _roleStore) RoleModule(_roleStore) {}

    // @dev emit a general event log
    // @param eventName the name of the event
    // @param eventData the event data
    function emitEventLog(
        string memory eventName,
        EventUtils.EventLogData memory eventData
    ) external onlyController {
        emit EventLog(
            msg.sender,
            eventName,
            eventName,
            eventData
        );
    }

    // @dev emit a general event log
    // @param eventName the name of the event
    // @param topic1 topic1 for indexing
    // @param eventData the event data
    function emitEventLog1(
        string memory eventName,
        bytes32 topic1,
        EventUtils.EventLogData memory eventData
    ) external onlyController {
        emit EventLog1(
            msg.sender,
            eventName,
            eventName,
            topic1,
            eventData
        );
    }

    // @dev emit a general event log
    // @param eventName the name of the event
    // @param topic1 topic1 for indexing
    // @param topic2 topic2 for indexing
    // @param eventData the event data
    function emitEventLog2(
        string memory eventName,
        bytes32 topic1,
        bytes32 topic2,
        EventUtils.EventLogData memory eventData
    ) external onlyController {
        emit EventLog2(
            msg.sender,
            eventName,
            eventName,
            topic1,
            topic2,
            eventData
        );
    }



    // @dev event log for general use
    // @param topic1 event topic 1
    // @param data additional data
    function emitDataLog1(bytes32 topic1, bytes memory data) external onlyController {
        uint256 len = data.length;
        assembly {
            log1(add(data, 32), len, topic1)
        }
    }

    // @dev event log for general use
    // @param topic1 event topic 1
    // @param topic2 event topic 2
    // @param data additional data
    function emitDataLog2(bytes32 topic1, bytes32 topic2, bytes memory data) external onlyController {
        uint256 len = data.length;
        assembly {
            log2(add(data, 32), len, topic1, topic2)
        }
    }

    // @dev event log for general use
    // @param topic1 event topic 1
    // @param topic2 event topic 2
    // @param topic3 event topic 3
    // @param data additional data
    function emitDataLog3(bytes32 topic1, bytes32 topic2, bytes32 topic3, bytes memory data) external onlyController {
        uint256 len = data.length;
        assembly {
            log3(add(data, 32), len, topic1, topic2, topic3)
        }
    }

    // @dev event log for general use
    // @param topic1 event topic 1
    // @param topic2 event topic 2
    // @param topic3 event topic 3
    // @param topic4 event topic 4
    // @param data additional data
    function emitDataLog4(bytes32 topic1, bytes32 topic2, bytes32 topic3, bytes32 topic4, bytes memory data) external onlyController {
        uint256 len = data.length;
        assembly {
            log4(add(data, 32), len, topic1, topic2, topic3, topic4)
        }
    }
}

// ============================================================
// FILE: contracts/event/EventUtils.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.0;

import "../error/Errors.sol";
import "../utils/StringUtils.sol";

library EventUtils {

    struct EmitPositionDecreaseParams {
        bytes32 key;
        address account;
        address market;
        address collateralToken;
        bool isLong;
    }

    struct EventLogData {
        AddressItems addressItems;
        UintItems uintItems;
        IntItems intItems;
        BoolItems boolItems;
        Bytes32Items bytes32Items;
        BytesItems bytesItems;
        StringItems stringItems;
    }

    struct AddressItems {
        AddressKeyValue[] items;
        AddressArrayKeyValue[] arrayItems;
    }

    struct UintItems {
        UintKeyValue[] items;
        UintArrayKeyValue[] arrayItems;
    }

    struct IntItems {
        IntKeyValue[] items;
        IntArrayKeyValue[] arrayItems;
    }

    struct BoolItems {
        BoolKeyValue[] items;
        BoolArrayKeyValue[] arrayItems;
    }

    struct Bytes32Items {
        Bytes32KeyValue[] items;
        Bytes32ArrayKeyValue[] arrayItems;
    }

    struct BytesItems {
        BytesKeyValue[] items;
        BytesArrayKeyValue[] arrayItems;
    }

    struct StringItems {
        StringKeyValue[] items;
        StringArrayKeyValue[] arrayItems;
    }

    struct AddressKeyValue {
        string key;
        address value;
    }

    struct AddressArrayKeyValue {
        string key;
        address[] value;
    }

    struct UintKeyValue {
        string key;
        uint256 value;
    }

    struct UintArrayKeyValue {
        string key;
        uint256[] value;
    }

    struct IntKeyValue {
        string key;
        int256 value;
    }

    struct IntArrayKeyValue {
        string key;
        int256[] value;
    }

    struct BoolKeyValue {
        string key;
        bool value;
    }

    struct BoolArrayKeyValue {
        string key;
        bool[] value;
    }

    struct Bytes32KeyValue {
        string key;
        bytes32 value;
    }

    struct Bytes32ArrayKeyValue {
        string key;
        bytes32[] value;
    }

    struct BytesKeyValue {
        string key;
        bytes value;
    }

    struct BytesArrayKeyValue {
        string key;
        bytes[] value;
    }

    struct StringKeyValue {
        string key;
        string value;
    }

    struct StringArrayKeyValue {
        string key;
        string[] value;
    }

    function initItems(AddressItems memory items, uint256 size) internal pure {
        items.items = new EventUtils.AddressKeyValue[](size);
    }

    function initArrayItems(AddressItems memory items, uint256 size) internal pure {
        items.arrayItems = new EventUtils.AddressArrayKeyValue[](size);
    }

    function setItem(AddressItems memory items, uint256 index, string memory key, address value) internal pure {
        items.items[index].key = key;
        items.items[index].value = value;
    }

    function setItem(AddressItems memory items, uint256 index, string memory key, address[] memory value) internal pure {
        items.arrayItems[index].key = key;
        items.arrayItems[index].value = value;
    }

    function get(AddressItems memory addresses, string memory key) external pure returns(address) {
        (bool found, address value) = getWithoutRevert(addresses, key);
        if (!found) {
            revert Errors.EventItemNotFound(key);
        }
        return value;
    }

    function getWithoutRevert(AddressItems memory addresses, string memory key) public pure returns(bool, address) {
        for (uint i = 0; i < addresses.items.length; i++) {
            if (compareStrings(addresses.items[i].key, key)) {
                return (true, addresses.items[i].value);
            }
        }
        return (false, address(0));
    }

    function getArray(AddressItems memory addresses, string memory key) external pure
    returns(address[] memory) {
        (bool found, address[] memory value) = getArrayWithoutRevert(addresses, key);
        if (!found) {
            revert Errors.EventItemNotFound(key);
        }
        return value;
    }

    function getArrayWithoutRevert(AddressItems memory addresses, string memory key) public pure
    returns(bool, address[] memory) {
        for (uint i = 0; i < addresses.arrayItems.length; i++) {
            if (compareStrings(addresses.arrayItems[i].key, key)) {
                return (true, addresses.arrayItems[i].value);
            }
        }
        address[] memory empty;
        return (false, empty);
    }

    function initItems(UintItems memory items, uint256 size) internal pure {
        items.items = new EventUtils.UintKeyValue[](size);
    }

    function initArrayItems(UintItems memory items, uint256 size) internal pure {
        items.arrayItems = new EventUtils.UintArrayKeyValue[](size);
    }

    function setItem(UintItems memory items, uint256 index, string memory key, uint256 value) internal pure {
        items.items[index].key = key;
        items.items[index].value = value;
    }

    function setItem(UintItems memory items, uint256 index, string memory key, uint256[] memory value) internal pure {
        items.arrayItems[index].key = key;
        items.arrayItems[index].value = value;
    }

    function get(UintItems memory items, string memory key) external pure returns(uint256) {
        (bool found, uint256 value) = getWithoutRevert(items, key);
        if (!found) {
            revert Errors.EventItemNotFound(key);
        }
        return value;
    }

    function getWithoutRevert(UintItems memory items, string memory key) public pure returns(bool, uint256) {
        for (uint i = 0; i < items.items.length; i++) {
            if (compareStrings(items.items[i].key, key)) {
                return (true, items.items[i].value);
            }
        }
        return (false, 0);
    }

    function getArray(UintItems memory items, string memory key) external pure
    returns(uint256[] memory) {
        (bool found, uint256[] memory value) = getArrayWithoutRevert(items, key);
        if (!found) {
            revert Errors.EventItemNotFound(key);
        }
        return value;
    }

    function getArrayWithoutRevert(UintItems memory items, string memory key) public pure
    returns(bool, uint256[] memory) {
        for (uint i = 0; i < items.arrayItems.length; i++) {
            if (compareStrings(items.arrayItems[i].key, key)) {
                return (true, items.arrayItems[i].value);
            }
        }
        uint256[] memory empty;
        return (false, empty);
    }

    function initItems(IntItems memory items, uint256 size) internal pure {
        items.items = new EventUtils.IntKeyValue[](size);
    }

    function initArrayItems(IntItems memory items, uint256 size) internal pure {
        items.arrayItems = new EventUtils.IntArrayKeyValue[](size);
    }

    function setItem(IntItems memory items, uint256 index, string memory key, int256 value) internal pure {
        items.items[index].key = key;
        items.items[index].value = value;
    }

    function setItem(IntItems memory items, uint256 index, string memory key, int256[] memory value) internal pure {
        items.arrayItems[index].key = key;
        items.arrayItems[index].value = value;
    }

    function get(IntItems memory items, string memory key) external pure returns(int256) {
        (bool found, int256 value) = getWithoutRevert(items, key);
        if (!found) {
            revert Errors.EventItemNotFound(key);
        }
        return value;
    }

    function getWithoutRevert(IntItems memory items, string memory key) public pure returns(bool, int256) {
        for (uint i = 0; i < items.items.length; i++) {
            if (compareStrings(items.items[i].key, key)) {
                return (true, items.items[i].value);
            }
        }
        return (false, 0);
    }

    function getArray(IntItems memory items, string memory key) external pure
    returns(int256[] memory) {
        (bool found, int256[] memory value) = getArrayWithoutRevert(items, key);
        if (!found) {
            revert Errors.EventItemNotFound(key);
        }
        return value;
    }

    function getArrayWithoutRevert(IntItems memory items, string memory key) public pure
    returns(bool, int256[] memory) {
        for (uint i = 0; i < items.arrayItems.length; i++) {
            if (compareStrings(items.arrayItems[i].key, key)) {
                return (true, items.arrayItems[i].value);
            }
        }
        int256[] memory empty;
        return (false, empty);
    }

    function initItems(BoolItems memory items, uint256 size) internal pure {
        items.items = new EventUtils.BoolKeyValue[](size);
    }

    function initArrayItems(BoolItems memory items, uint256 size) internal pure {
        items.arrayItems = new EventUtils.BoolArrayKeyValue[](size);
    }

    function setItem(BoolItems memory items, uint256 index, string memory key, bool value) internal pure {
        items.items[index].key = key;
        items.items[index].value = value;
    }

    function setItem(BoolItems memory items, uint256 index, string memory key, bool[] memory value) internal pure {
        items.arrayItems[index].key = key;
        items.arrayItems[index].value = value;
    }

    function get(BoolItems memory items, string memory key) external pure returns(bool) {
        (bool found, bool value) = getWithoutRevert(items, key);
        if (!found) {
            revert Errors.EventItemNotFound(key);
        }
        return value;
    }

    function getWithoutRevert(BoolItems memory items, string memory key) public pure returns(bool, bool) {
        for (uint i = 0; i < items.items.length; i++) {
            if (compareStrings(items.items[i].key, key)) {
                return (true, items.items[i].value);
            }
        }
        return (false, false);
    }

    function getArray(BoolItems memory items, string memory key) external pure
    returns(bool[] memory) {
        (bool found, bool[] memory value) = getArrayWithoutRevert(items, key);
        if (!found) {
            revert Errors.EventItemNotFound(key);
        }
        return value;
    }

    function getArrayWithoutRevert(BoolItems memory items, string memory key) public pure
    returns(bool, bool[] memory) {
        for (uint i = 0; i < items.arrayItems.length; i++) {
            if (compareStrings(items.arrayItems[i].key, key)) {
                return (true, items.arrayItems[i].value);
            }
        }
        bool[] memory empty;
        return (false, empty);
    }

    function initItems(Bytes32Items memory items, uint256 size) internal pure {
        items.items = new EventUtils.Bytes32KeyValue[](size);
    }

    function initArrayItems(Bytes32Items memory items, uint256 size) internal pure {
        items.arrayItems = new EventUtils.Bytes32ArrayKeyValue[](size);
    }

    function setItem(Bytes32Items memory items, uint256 index, string memory key, bytes32 value) internal pure {
        items.items[index].key = key;
        items.items[index].value = value;
    }

    function setItem(Bytes32Items memory items, uint256 index, string memory key, bytes32[] memory value) internal pure {
        items.arrayItems[index].key = key;
        items.arrayItems[index].value = value;
    }

    function get(Bytes32Items memory items, string memory key) external pure returns(bytes32) {
        (bool found, bytes32 value) = getWithoutRevert(items, key);
        if (!found) {
            revert Errors.EventItemNotFound(key);
        }
        return value;
    }

    function getWithoutRevert(Bytes32Items memory items, string memory key) public pure returns(bool, bytes32) {
        for (uint i = 0; i < items.items.length; i++) {
            if (compareStrings(items.items[i].key, key)) {
                return (true, items.items[i].value);
            }
        }
        return (false, 0);
    }

    function getArray(Bytes32Items memory items, string memory key) external pure
    returns(bytes32[] memory) {
        (bool found, bytes32[] memory value) = getArrayWithoutRevert(items, key);
        if (!found) {
            revert Errors.EventItemNotFound(key);
        }
        return value;
    }

    function getArrayWithoutRevert(Bytes32Items memory items, string memory key) public pure
    returns(bool, bytes32[] memory) {
        for (uint i = 0; i < items.arrayItems.length; i++) {
            if (compareStrings(items.arrayItems[i].key, key)) {
                return (true, items.arrayItems[i].value);
            }
        }
        bytes32[] memory empty;
        return (false, empty);
    }

    function initItems(BytesItems memory items, uint256 size) internal pure {
        items.items = new EventUtils.BytesKeyValue[](size);
    }

    function initArrayItems(BytesItems memory items, uint256 size) internal pure {
        items.arrayItems = new EventUtils.BytesArrayKeyValue[](size);
    }

    function setItem(BytesItems memory items, uint256 index, string memory key, bytes memory value) internal pure {
        items.items[index].key = key;
        items.items[index].value = value;
    }

    function setItem(BytesItems memory items, uint256 index, string memory key, bytes[] memory value) internal pure {
        items.arrayItems[index].key = key;
        items.arrayItems[index].value = value;
    }

    function get(BytesItems memory items, string memory key) external pure returns(bytes memory) {
        (bool found, bytes memory value) = getWithoutRevert(items, key);
        if (!found) {
            revert Errors.EventItemNotFound(key);
        }
        return value;
    }

    function getWithoutRevert(BytesItems memory items, string memory key) public pure returns(bool, bytes memory) {
        for (uint i = 0; i < items.items.length; i++) {
            if (compareStrings(items.items[i].key, key)) {
                return (true, items.items[i].value);
            }
        }
        return (false, "");
    }

    function getArray(BytesItems memory items, string memory key) external pure
    returns(bytes[] memory) {
        (bool found, bytes[] memory value) = getArrayWithoutRevert(items, key);
        if (!found) {
            revert Errors.EventItemNotFound(key);
        }
        return value;
    }

    function getArrayWithoutRevert(BytesItems memory items, string memory key) public pure
    returns(bool, bytes[] memory) {
        for (uint i = 0; i < items.arrayItems.length; i++) {
            if (compareStrings(items.arrayItems[i].key, key)) {
                return (true, items.arrayItems[i].value);
            }
        }
        bytes[] memory empty;
        return (false, empty);
    }

    function initItems(StringItems memory items, uint256 size) internal pure {
        items.items = new EventUtils.StringKeyValue[](size);
    }

    function initArrayItems(StringItems memory items, uint256 size) internal pure {
        items.arrayItems = new EventUtils.StringArrayKeyValue[](size);
    }

    function setItem(StringItems memory items, uint256 index, string memory key, string memory value) internal pure {
        items.items[index].key = key;
        items.items[index].value = value;
    }

    function setItem(StringItems memory items, uint256 index, string memory key, string[] memory value) internal pure {
        items.arrayItems[index].key = key;
        items.arrayItems[index].value = value;
    }

    function get(StringItems memory items, string memory key) external pure returns(string memory) {
        (bool found, string memory value) = getWithoutRevert(items, key);
        if (!found) {
            revert Errors.EventItemNotFound(key);
        }
        return value;
    }

    function getWithoutRevert(StringItems memory items, string memory key) public pure returns(bool, string memory) {
        for (uint i = 0; i < items.items.length; i++) {
            if (compareStrings(items.items[i].key, key)) {
                return (true, items.items[i].value);
            }
        }
        return (false, "");
    }

    function getArray(StringItems memory items, string memory key) external pure
    returns(string[] memory) {
        (bool found, string[] memory value) = getArrayWithoutRevert(items, key);
        if (!found) {
            revert Errors.EventItemNotFound(key);
        }
        return value;
    }

    function getArrayWithoutRevert(StringItems memory items, string memory key) public pure
    returns(bool, string[] memory) {
        for (uint i = 0; i < items.arrayItems.length; i++) {
            if (compareStrings(items.arrayItems[i].key, key)) {
                return (true, items.arrayItems[i].value);
            }
        }
        string[] memory empty;
        return (false, empty);
    }

    function compareStrings(string memory a, string memory b) public pure returns (bool) {
        return StringUtils.compareStrings(a, b);
    }
}

// ============================================================
// FILE: contracts/exchange/IDepositHandler.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.0;

import "../deposit/IDepositUtils.sol";
import "../deposit/IExecuteDepositUtils.sol";

import "../deposit/Deposit.sol";
import "../oracle/OracleUtils.sol";

interface IDepositHandler {
    function createDeposit(address account, uint256 srcChainId, IDepositUtils.CreateDepositParams calldata params) external returns (bytes32);
    function cancelDeposit(bytes32 key) external;
    function simulateExecuteDeposit(
        bytes32 key,
        OracleUtils.SimulatePricesParams memory params
    ) external;

    function executeDepositFromController(
        IExecuteDepositUtils.ExecuteDepositParams calldata executeDepositParams,
        Deposit.Props calldata deposit
    ) external returns (uint256);
}

// ============================================================
// FILE: contracts/exchange/IJitOrderHandler.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.0;

import "../order/IBaseOrderUtils.sol";
import "../oracle/OracleUtils.sol";
import "../glv/glvShift/GlvShiftUtils.sol";

interface IJitOrderHandler {
    function executeJitOrder(
        GlvShiftUtils.CreateGlvShiftParams[] memory shiftParamsList,
        bytes32 orderKey,
        OracleUtils.SetPricesParams calldata oracleParams
    ) external;

    function simulateExecuteJitOrder(
        GlvShiftUtils.CreateGlvShiftParams[] memory shiftParamsList,
        bytes32 orderKey,
        OracleUtils.SimulatePricesParams memory simulatedOracleParams
    ) external;
}

// ============================================================
// FILE: contracts/exchange/IOrderHandler.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.0;

import "../order/IBaseOrderUtils.sol";
import "../oracle/OracleUtils.sol";

interface IOrderHandler {
    function createOrder(
        address account,
        uint256 srcChainId,
        IBaseOrderUtils.CreateOrderParams calldata params,
        bool shouldCapMaxExecutionFee
    ) external returns (bytes32);

    function simulateExecuteOrder(bytes32 key, OracleUtils.SimulatePricesParams memory params) external;

    function updateOrder(
        bytes32 key,
        uint256 sizeDeltaUsd,
        uint256 acceptablePrice,
        uint256 triggerPrice,
        uint256 minOutputAmount,
        uint256 validFromTime,
        bool autoCancel,
        Order.Props memory order,
        bool shouldCapMaxExecutionFee
    ) external;

    function cancelOrder(bytes32 key) external;
}

// ============================================================
// FILE: contracts/exchange/IShiftHandler.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.0;

import "../shift/IShiftUtils.sol";
import "../shift/ShiftUtils.sol";
import "../oracle/OracleUtils.sol";

interface IShiftHandler {
    function createShift(address account, uint256 srcChainId, IShiftUtils.CreateShiftParams calldata params) external returns (bytes32);
    function cancelShift(bytes32 key) external;
    function simulateExecuteShift(bytes32 key, OracleUtils.SimulatePricesParams memory params) external;
    function executeShiftFromController(ShiftUtils.ExecuteShiftParams memory params, Shift.Props memory shift) external returns (uint256);
}

// ============================================================
// FILE: contracts/exchange/IWithdrawalHandler.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.0;

import "../withdrawal/IWithdrawalUtils.sol";
import "../withdrawal/IExecuteWithdrawalUtils.sol";
import "../withdrawal/Withdrawal.sol";
import "../oracle/OracleUtils.sol";
import "../pricing/ISwapPricingUtils.sol";

interface IWithdrawalHandler {
    function createWithdrawal(address account, uint256 srcChainId, IWithdrawalUtils.CreateWithdrawalParams calldata params) external returns (bytes32);
    function cancelWithdrawal(bytes32 key) external;
    function executeAtomicWithdrawal(
        address account,
        IWithdrawalUtils.CreateWithdrawalParams calldata params,
        OracleUtils.SetPricesParams calldata oracleParams
    ) external;
    function simulateExecuteWithdrawal(
        bytes32 key,
        OracleUtils.SimulatePricesParams memory params,
        ISwapPricingUtils.SwapPricingType swapPricingType
    ) external;
    function executeWithdrawalFromController(
        IExecuteWithdrawalUtils.ExecuteWithdrawalParams calldata executeWithdrawalParams,
        Withdrawal.Props calldata withdrawal
    )
        external returns (IExecuteWithdrawalUtils.ExecuteWithdrawalResult memory);
}

// ============================================================
// FILE: contracts/external/IExternalHandler.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.0;

interface IExternalHandler {
    function makeExternalCalls(
        address[] memory targets,
        bytes[] memory dataList,
        address[] memory refundTokens,
        address[] memory refundReceivers
    ) external;
}

// ============================================================
// FILE: contracts/feature/FeatureUtils.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.0;

import "../data/DataStore.sol";

// @title FeatureUtils
// @dev Library to validate if a feature is enabled or disabled
// disabling a feature should only be used if it is absolutely necessary
// disabling of features could lead to unexpected effects, e.g. increasing / decreasing of orders
// could be disabled while liquidations may remain enabled
// this could also occur if the chain is not producing blocks and lead to liquidatable positions
// when block production resumes
// the effects of disabling features should be carefully considered
library FeatureUtils {
    // @dev get whether a feature is disabled
    // @param dataStore DataStore
    // @param key the feature key
    // @return whether the feature is disabled
    function isFeatureDisabled(DataStore dataStore, bytes32 key) internal view returns (bool) {
        return dataStore.getBool(key);
    }

    // @dev validate whether a feature is enabled, reverts if the feature is disabled
    // @param dataStore DataStore
    // @param key the feature key
    function validateFeature(DataStore dataStore, bytes32 key) internal view {
        if (isFeatureDisabled(dataStore, key)) {
            revert Errors.DisabledFeature(key);
        }
    }
}

// ============================================================
// FILE: contracts/fee/FeeUtils.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.0;

import "../data/DataStore.sol";
import "../data/Keys.sol";

import "../event/EventEmitter.sol";
import "../event/EventUtils.sol";
import "../utils/Cast.sol";
import "../utils/AccountUtils.sol";
import "../market/MarketUtils.sol";

import "../market/MarketToken.sol";

// @title FeeUtils
// @dev Library for fee actions
library FeeUtils {
    using EventUtils for EventUtils.AddressItems;
    using EventUtils for EventUtils.UintItems;
    using EventUtils for EventUtils.IntItems;
    using EventUtils for EventUtils.BoolItems;
    using EventUtils for EventUtils.Bytes32Items;
    using EventUtils for EventUtils.BytesItems;
    using EventUtils for EventUtils.StringItems;

    // @dev increment the claimable fee amount
    // @param dataStore DataStore
    // @param eventEmitter EventEmitter
    // @param market the market to increment claimable fees for
    // @param token the fee token
    // @param delta the amount to increment
    // @param feeType the type of the fee
    function incrementClaimableFeeAmount(
        DataStore dataStore,
        EventEmitter eventEmitter,
        address market,
        address token,
        uint256 delta,
        bytes32 feeType
    ) external {
        if (delta == 0) {
            return;
        }

        bytes32 key = Keys.claimableFeeAmountKey(market, token);

        uint256 nextValue = dataStore.incrementUint(
            key,
            delta
        );

        emitClaimableFeeAmountUpdated(
            eventEmitter,
            market,
            token,
            delta,
            nextValue,
            feeType
        );
    }

    function incrementClaimableUiFeeAmount(
        DataStore dataStore,
        EventEmitter eventEmitter,
        address uiFeeReceiver,
        address market,
        address token,
        uint256 delta,
        bytes32 feeType
    ) external {
        if (delta == 0) {
            return;
        }

        uint256 nextValue = dataStore.incrementUint(
            Keys.claimableUiFeeAmountKey(market, token, uiFeeReceiver),
            delta
        );

        uint256 nextPoolValue = dataStore.incrementUint(
            Keys.claimableUiFeeAmountKey(market, token),
            delta
        );

        emitClaimableUiFeeAmountUpdated(
            eventEmitter,
            uiFeeReceiver,
            market,
            token,
            delta,
            nextValue,
            nextPoolValue,
            feeType
        );
    }

    function batchClaimFundingFees(
        DataStore dataStore,
        EventEmitter eventEmitter,
        address[] memory markets,
        address[] memory tokens,
        address receiver,
        address account
    ) external returns (uint256[] memory) {
        if (markets.length != tokens.length) {
            revert Errors.InvalidClaimFundingFeesInput(markets.length, tokens.length);
        }

        FeatureUtils.validateFeature(dataStore, Keys.claimFundingFeesFeatureDisabledKey(address(this)));

        AccountUtils.validateReceiver(receiver);

        uint256[] memory claimedAmounts = new uint256[](markets.length);

        for (uint256 i; i < markets.length; i++) {
            claimedAmounts[i] = MarketUtils.claimFundingFees(
                dataStore,
                eventEmitter,
                markets[i],
                tokens[i],
                account,
                receiver
            );
        }

        return claimedAmounts;
    }

    // @dev claim fees for the specified market
    // @param dataStore DataStore
    // @param eventEmitter EventEmitter
    // @param market the market to claim fees for
    // @param token the fee token
    // @param receiver the receiver of the claimed fees
    function claimFees(
        DataStore dataStore,
        EventEmitter eventEmitter,
        address market,
        address token,
        address receiver
    ) internal returns (uint256) {
        AccountUtils.validateReceiver(receiver);

        bytes32 key = Keys.claimableFeeAmountKey(market, token);

        uint256 feeAmount = dataStore.getUint(key);
        dataStore.setUint(key, 0);

        MarketToken(payable(market)).transferOut(
            token,
            receiver,
            feeAmount
        );

        MarketUtils.validateMarketTokenBalance(dataStore, market);

        emitFeesClaimed(
            eventEmitter,
            market,
            receiver,
            feeAmount
        );

        return feeAmount;
    }

    function batchClaimUiFees(
        DataStore dataStore,
        EventEmitter eventEmitter,
        address[] memory markets,
        address[] memory tokens,
        address receiver,
        address uiFeeReceiver
    ) external returns (uint256[] memory) {
        if (markets.length != tokens.length) {
            revert Errors.InvalidClaimUiFeesInput(markets.length, tokens.length);
        }

        FeatureUtils.validateFeature(dataStore, Keys.claimUiFeesFeatureDisabledKey(address(this)));

        AccountUtils.validateReceiver(receiver);

        uint256[] memory claimedAmounts = new uint256[](markets.length);

        for (uint256 i; i < markets.length; i++) {
            claimedAmounts[i] = _claimUiFees(
                dataStore,
                eventEmitter,
                uiFeeReceiver,
                markets[i],
                tokens[i],
                receiver
            );
        }

        return claimedAmounts;
    }

    function _claimUiFees(
        DataStore dataStore,
        EventEmitter eventEmitter,
        address uiFeeReceiver,
        address market,
        address token,
        address receiver
    ) private returns (uint256) {
        bytes32 key = Keys.claimableUiFeeAmountKey(market, token, uiFeeReceiver);

        uint256 feeAmount = dataStore.getUint(key);
        dataStore.setUint(key, 0);

        uint256 nextPoolValue = dataStore.decrementUint(
            Keys.claimableUiFeeAmountKey(market, token),
            feeAmount
        );

        MarketToken(payable(market)).transferOut(
            token,
            receiver,
            feeAmount
        );

        MarketUtils.validateMarketTokenBalance(dataStore, market);

        emitUiFeesClaimed(
            eventEmitter,
            uiFeeReceiver,
            market,
            receiver,
            feeAmount,
            nextPoolValue
        );

        return feeAmount;
    }

    function emitClaimableFeeAmountUpdated(
        EventEmitter eventEmitter,
        address market,
        address token,
        uint256 delta,
        uint256 nextValue,
        bytes32 feeType
    ) internal {
        EventUtils.EventLogData memory eventData;

        eventData.addressItems.initItems(2);
        eventData.addressItems.setItem(0, "market", market);
        eventData.addressItems.setItem(1, "token", token);

        eventData.uintItems.initItems(2);
        eventData.uintItems.setItem(0, "delta", delta);
        eventData.uintItems.setItem(1, "nextValue", nextValue);

        eventData.bytes32Items.initItems(1);
        eventData.bytes32Items.setItem(0, "feeType", feeType);

        eventEmitter.emitEventLog2(
            "ClaimableFeeAmountUpdated",
            Cast.toBytes32(market),
            feeType,
            eventData
        );
    }

    function emitClaimableUiFeeAmountUpdated(
        EventEmitter eventEmitter,
        address uiFeeReceiver,
        address market,
        address token,
        uint256 delta,
        uint256 nextValue,
        uint256 nextPoolValue,
        bytes32 feeType
    ) internal {
        EventUtils.EventLogData memory eventData;

        eventData.addressItems.initItems(3);
        eventData.addressItems.setItem(0, "uiFeeReceiver", uiFeeReceiver);
        eventData.addressItems.setItem(1, "market", market);
        eventData.addressItems.setItem(2, "token", token);

        eventData.uintItems.initItems(3);
        eventData.uintItems.setItem(0, "delta", delta);
        eventData.uintItems.setItem(1, "nextValue", nextValue);
        eventData.uintItems.setItem(2, "nextPoolValue", nextPoolValue);

        eventData.bytes32Items.initItems(1);
        eventData.bytes32Items.setItem(0, "feeType", feeType);

        eventEmitter.emitEventLog2(
            "ClaimableUiFeeAmountUpdated",
            Cast.toBytes32(market),
            feeType,
            eventData
        );
    }

    function emitFeesClaimed(
        EventEmitter eventEmitter,
        address market,
        address receiver,
        uint256 feeAmount
    ) internal {
        EventUtils.EventLogData memory eventData;

        eventData.addressItems.initItems(2);
        eventData.addressItems.setItem(0, "market", market);
        eventData.addressItems.setItem(1, "receiver", receiver);

        eventData.uintItems.initItems(1);
        eventData.uintItems.setItem(0, "feeAmount", feeAmount);

        eventEmitter.emitEventLog1(
            "FeesClaimed",
            Cast.toBytes32(market),
            eventData
        );
    }

    function emitUiFeesClaimed(
        EventEmitter eventEmitter,
        address uiFeeReceiver,
        address market,
        address receiver,
        uint256 feeAmount,
        uint256 nextPoolValue
    ) internal {
        EventUtils.EventLogData memory eventData;

        eventData.addressItems.initItems(3);
        eventData.addressItems.setItem(0, "uiFeeReceiver", uiFeeReceiver);
        eventData.addressItems.setItem(1, "market", market);
        eventData.addressItems.setItem(2, "receiver", receiver);

        eventData.uintItems.initItems(2);
        eventData.uintItems.setItem(0, "feeAmount", feeAmount);
        eventData.uintItems.setItem(1, "nextPoolValue", nextPoolValue);

        eventEmitter.emitEventLog1(
            "UiFeesClaimed",
            Cast.toBytes32(market),
            eventData
        );
    }
}

// ============================================================
// FILE: contracts/gas/GasUtils.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.0;

import "../callback/CallbackUtils.sol";

import "../data/DataStore.sol";
import "../data/Keys.sol";
import "../utils/Precision.sol";

import "../deposit/Deposit.sol";
import "../withdrawal/Withdrawal.sol";
import "../shift/Shift.sol";
import "../order/Order.sol";
import "../glv/glvWithdrawal/GlvWithdrawal.sol";

import "../bank/StrictBank.sol";
import "../multichain/MultichainUtils.sol";

// @title GasUtils
// @dev Library for execution fee estimation and payments
library GasUtils {
    using SafeERC20 for IERC20;

    using Deposit for Deposit.Props;
    using Withdrawal for Withdrawal.Props;
    using Shift for Shift.Props;
    using Order for Order.Props;
    using GlvDeposit for GlvDeposit.Props;
    using GlvWithdrawal for GlvWithdrawal.Props;

    using EventUtils for EventUtils.AddressItems;
    using EventUtils for EventUtils.UintItems;
    using EventUtils for EventUtils.IntItems;
    using EventUtils for EventUtils.BoolItems;
    using EventUtils for EventUtils.Bytes32Items;
    using EventUtils for EventUtils.BytesItems;
    using EventUtils for EventUtils.StringItems;

    // @param keeper address of the keeper
    // @param amount the amount of execution fee received
    event KeeperExecutionFee(address keeper, uint256 amount);
    // @param user address of the user
    // @param amount the amount of execution fee refunded
    event UserRefundFee(address user, uint256 amount);

    function getMinHandleExecutionErrorGas(DataStore dataStore) internal view returns (uint256) {
        return dataStore.getUint(Keys.MIN_HANDLE_EXECUTION_ERROR_GAS);
    }

    function getMinHandleExecutionErrorGasToForward(DataStore dataStore) internal view returns (uint256) {
        return dataStore.getUint(Keys.MIN_HANDLE_EXECUTION_ERROR_GAS_TO_FORWARD);
    }

    function getMinAdditionalGasForExecution(DataStore dataStore) internal view returns (uint256) {
        return dataStore.getUint(Keys.MIN_ADDITIONAL_GAS_FOR_EXECUTION);
    }

    function getExecutionGas(DataStore dataStore, uint256 startingGas) external view returns (uint256) {
        uint256 minHandleExecutionErrorGasToForward = getMinHandleExecutionErrorGasToForward(dataStore);
        if (startingGas < minHandleExecutionErrorGasToForward) {
            revert Errors.InsufficientExecutionGasForErrorHandling(startingGas, minHandleExecutionErrorGasToForward);
        }

        return startingGas - minHandleExecutionErrorGasToForward;
    }

    function validateExecutionGas(DataStore dataStore, uint256 startingGas, uint256 estimatedGasLimit) external view {
        uint256 minAdditionalGasForExecution = getMinAdditionalGasForExecution(dataStore);
        if (startingGas < estimatedGasLimit + minAdditionalGasForExecution) {
            revert Errors.InsufficientExecutionGas(startingGas, estimatedGasLimit, minAdditionalGasForExecution);
        }
    }

    // a minimum amount of gas is required to be left for cancellation
    // to prevent potential blocking of cancellations by malicious contracts using e.g. large revert reasons
    //
    // during the estimateGas call by keepers, an insufficient amount of gas may be estimated
    // the amount estimated may be insufficient for execution but sufficient for cancellation
    // this could lead to invalid cancellations due to insufficient gas used by keepers
    //
    // to help prevent this, out of gas errors are attempted to be caught and reverted for estimateGas calls
    //
    // a malicious user could cause the estimateGas call of a keeper to fail, in which case the keeper could
    // still attempt to execute the transaction with a reasonable gas limit
    function validateExecutionErrorGas(DataStore dataStore, bytes memory reasonBytes) external view {
        // skip the validation if the execution did not fail due to an out of gas error
        // also skip the validation if this is not invoked in an estimateGas call (tx.origin != address(0))
        if (reasonBytes.length != 0 || tx.origin != address(0)) {
            return;
        }

        uint256 gas = gasleft();
        uint256 minHandleExecutionErrorGas = getMinHandleExecutionErrorGas(dataStore);

        if (gas < minHandleExecutionErrorGas) {
            revert Errors.InsufficientHandleExecutionErrorGas(gas, minHandleExecutionErrorGas);
        }
    }

    struct PayExecutionFeeContracts {
        DataStore dataStore;
        EventEmitter eventEmitter;
        MultichainVault multichainVault;
        StrictBank bank;
    }

    struct PayExecutionFeeCache {
        uint256 gasUsed;
        uint256 executionFeeForKeeper;
        uint256 refundFeeAmount;
        bool refundWasSent;
        address wnt;
    }

    // @dev pay the keeper the execution fee and refund any excess amount
    //
    // @param contracts the contracts to use for fee payment
    // @param key the key of the request
    // @param callbackContract the callback contract to use
    // @param executionFee the executionFee amount
    // @param startingGas the starting gas
    // @param oraclePriceCount number of oracle prices
    // @param keeper the keeper to pay
    // @param refundReceiver the account that should receive any excess gas refunds
    // @param srcChainId the source chain id
    function payExecutionFee(
        PayExecutionFeeContracts memory contracts,
        bytes32 key,
        address callbackContract,
        uint256 executionFee,
        uint256 startingGas,
        uint256 oraclePriceCount,
        address keeper,
        address refundReceiver,
        uint256 srcChainId
    ) external returns (uint256) {
        if (executionFee == 0) {
            return 0;
        }

        PayExecutionFeeCache memory cache;

        // 63/64 gas is forwarded to external calls, reduce the startingGas to account for this
        startingGas -= gasleft() / 63;
        cache.gasUsed = startingGas - gasleft();

        // each external call forwards 63/64 of the remaining gas
        cache.executionFeeForKeeper = adjustGasUsage(contracts.dataStore, cache.gasUsed, oraclePriceCount) * tx.gasprice;

        if (cache.executionFeeForKeeper > executionFee) {
            cache.executionFeeForKeeper = executionFee;
        }

        contracts.bank.transferOutNativeToken(keeper, cache.executionFeeForKeeper);

        emitKeeperExecutionFee(contracts.eventEmitter, keeper, cache.executionFeeForKeeper);

        cache.refundFeeAmount = executionFee - cache.executionFeeForKeeper;
        if (cache.refundFeeAmount == 0) {
            return 0;
        }

        cache.wnt = contracts.dataStore.getAddress(Keys.WNT);
        contracts.bank.transferOut(cache.wnt, address(this), cache.refundFeeAmount);

        IWNT(cache.wnt).withdraw(cache.refundFeeAmount);

        EventUtils.EventLogData memory eventData;

        cache.refundWasSent = CallbackUtils.refundExecutionFee(
            contracts.dataStore,
            key,
            callbackContract,
            cache.refundFeeAmount,
            eventData
        );

        if (cache.refundWasSent) {
            emitExecutionFeeRefundCallback(contracts.eventEmitter, callbackContract, cache.refundFeeAmount);
            return 0;
        } else {
            if (srcChainId == 0) {
                TokenUtils.sendNativeToken(contracts.dataStore, refundReceiver, cache.refundFeeAmount);
            } else {
                TokenUtils.depositAndSendWrappedNativeToken(contracts.dataStore, address(contracts.multichainVault), cache.refundFeeAmount);
                MultichainUtils.recordTransferIn(contracts.dataStore, contracts.eventEmitter, contracts.multichainVault, cache.wnt, refundReceiver, 0); // srcChainId is the current block.chainId
            }
            emitExecutionFeeRefund(contracts.eventEmitter, refundReceiver, cache.refundFeeAmount);
            return cache.refundFeeAmount;
        }
    }

    // @dev validate that the provided executionFee is sufficient based on the estimatedGasLimit
    // @param dataStore DataStore
    // @param estimatedGasLimit the estimated gas limit
    // @param executionFee the execution fee provided
    // @param oraclePriceCount
    function validateExecutionFee(
        DataStore dataStore,
        uint256 estimatedGasLimit,
        uint256 executionFee,
        uint256 oraclePriceCount
    ) internal view returns (uint256, uint256) {
        uint256 gasLimit = adjustGasLimitForEstimate(dataStore, estimatedGasLimit, oraclePriceCount);
        uint256 minExecutionFee = gasLimit * tx.gasprice;
        if (executionFee < minExecutionFee) {
            revert Errors.InsufficientExecutionFee(minExecutionFee, executionFee);
        }
        return (gasLimit, minExecutionFee);
    }

    // @dev validate that the provided executionFee is sufficient based on the estimatedGasLimit
    // @param dataStore DataStore
    // @param estimatedGasLimit the estimated gas limit
    // @param executionFee the execution fee provided
    // @param oraclePriceCount
    // @param shouldCapMaxExecutionFee whether to cap the max execution fee
    function validateAndCapExecutionFee(
        DataStore dataStore,
        uint256 estimatedGasLimit,
        uint256 executionFee,
        uint256 oraclePriceCount,
        bool shouldCapMaxExecutionFee
    ) internal view returns (uint256, uint256) {
        (uint256 gasLimit, uint256 minExecutionFee) = validateExecutionFee(
            dataStore,
            estimatedGasLimit,
            executionFee,
            oraclePriceCount
        );

        if (!shouldCapMaxExecutionFee) {
            return (executionFee, 0);
        }
        // a malicious subaccount could provide a large executionFee
        // and receive most of it as a refund sent to a callbackContract
        // capping the max execution fee by multiplier * gasLimit * basefee should limit the potential loss

        // this capping should be applied for subaccount orders with a callbackContract if execution fee is increased
        // i.e. there is no need to cap the max execution fee for previously created orders even if it's high because it has already been capped

        // some blockchains may not support EIP-1559 and will return 0 for block.basefee
        // also block.basefee is 0 inside eth_call and eth_estimateGas
        uint256 basefee = block.basefee != 0 ? block.basefee : tx.gasprice;

        uint256 maxExecutionFeeMultiplierFactor = dataStore.getUint(Keys.MAX_EXECUTION_FEE_MULTIPLIER_FACTOR);
        uint256 maxExecutionFee = Precision.applyFactor(gasLimit * basefee, maxExecutionFeeMultiplierFactor);

        if (maxExecutionFee < minExecutionFee) {
            revert Errors.InvalidExecutionFee(executionFee, minExecutionFee, maxExecutionFee);
        }

        if (executionFee <= maxExecutionFee) {
            return (executionFee, 0);
        }

        uint256 executionFeeDiff = executionFee - maxExecutionFee;
        return (maxExecutionFee, executionFeeDiff);
    }

    function transferExcessiveExecutionFee(
        DataStore dataStore,
        EventEmitter eventEmitter,
        Bank bank,
        address account,
        uint256 executionFeeDiff
    ) external {
        address wnt = TokenUtils.wnt(dataStore);
        address holdingAddress = dataStore.getAddress(Keys.HOLDING_ADDRESS);

        if (holdingAddress == address(0)) {
            revert Errors.EmptyHoldingAddress();
        }

        bank.transferOut(wnt, holdingAddress, executionFeeDiff);

        EventUtils.EventLogData memory eventData;

        eventData.addressItems.initItems(1);
        eventData.addressItems.setItem(0, "account", account);

        eventData.uintItems.initItems(1);
        eventData.uintItems.setItem(0, "executionFeeDiff", executionFeeDiff);

        eventEmitter.emitEventLog1("ExcessiveExecutionFee", Cast.toBytes32(account), eventData);
    }

    // @dev adjust the gas usage to pay a small amount to keepers
    // @param dataStore DataStore
    // @param gasUsed the amount of gas used
    // @param oraclePriceCount number of oracle prices
    function adjustGasUsage(
        DataStore dataStore,
        uint256 gasUsed,
        uint256 oraclePriceCount
    ) internal view returns (uint256) {
        // gas measurements are done after the call to withOraclePrices
        // withOraclePrices may consume a significant amount of gas
        // the baseGasLimit used to calculate the execution cost
        // should be adjusted to account for this
        // additionally, a transaction could fail midway through an execution transaction
        // before being cancelled, the possibility of this additional gas cost should
        // be considered when setting the baseGasLimit
        uint256 baseGasLimit = dataStore.getUint(Keys.EXECUTION_GAS_FEE_BASE_AMOUNT_V2_1);
        baseGasLimit += dataStore.getUint(Keys.EXECUTION_GAS_FEE_PER_ORACLE_PRICE) * oraclePriceCount;
        // the gas cost is estimated based on the gasprice of the request txn
        // the actual cost may be higher if the gasprice is higher in the execution txn
        // the multiplierFactor should be adjusted to account for this
        uint256 multiplierFactor = dataStore.getUint(Keys.EXECUTION_GAS_FEE_MULTIPLIER_FACTOR);
        uint256 gasLimit = baseGasLimit + Precision.applyFactor(gasUsed, multiplierFactor);
        return gasLimit;
    }

    // @dev adjust the estimated gas limit to help ensure the execution fee is sufficient during
    // the actual execution
    // @param dataStore DataStore
    // @param estimatedGasLimit the estimated gas limit
    function adjustGasLimitForEstimate(
        DataStore dataStore,
        uint256 estimatedGasLimit,
        uint256 oraclePriceCount
    ) internal view returns (uint256) {
        uint256 baseGasLimit = dataStore.getUint(Keys.ESTIMATED_GAS_FEE_BASE_AMOUNT_V2_1);
        baseGasLimit += dataStore.getUint(Keys.ESTIMATED_GAS_FEE_PER_ORACLE_PRICE) * oraclePriceCount;
        uint256 multiplierFactor = dataStore.getUint(Keys.ESTIMATED_GAS_FEE_MULTIPLIER_FACTOR);
        uint256 gasLimit = baseGasLimit + Precision.applyFactor(estimatedGasLimit, multiplierFactor);
        return gasLimit;
    }

    // @dev get estimated number of oracle prices for deposit
    // @param swapsCount number of swaps in the deposit
    function estimateDepositOraclePriceCount(uint256 swapsCount) internal pure returns (uint256) {
        return 3 + swapsCount;
    }

    // @dev get estimated number of oracle prices for withdrawal
    // @param swapsCount number of swaps in the withdrawal
    function estimateWithdrawalOraclePriceCount(uint256 swapsCount) external pure returns (uint256) {
        return 3 + swapsCount;
    }

    // @dev get estimated number of oracle prices for order
    // @param swapsCount number of swaps in the order
    function estimateOrderOraclePriceCount(uint256 swapsCount) external pure returns (uint256) {
        return 3 + swapsCount;
    }

    // @dev get estimated number of oracle prices for shift
    function estimateShiftOraclePriceCount() external pure returns (uint256) {
        // for single asset markets only 3 prices will be required
        // and keeper will slightly overpay
        // it should not be an issue because execution fee goes back to keeper
        return 4;
    }

    function estimateGlvDepositOraclePriceCount(
        uint256 marketCount,
        uint256 swapsCount,
        bool glvTokenPriceUsed
    ) external pure returns (uint256) {
        // for single asset markets oracle price count will be overestimated by 1
        // it should not be an issue for GLV with multiple markets
        // because relative difference would be insignificant
        // if swapPath contains the deposit's market then that market will be counted twice

        // for example ETH/USDC GLV has 10 markets and deposit to DOGE market is created
        // 1. no swaps and glv token price is used then oracle prices are: GLV, ETH, USDC, DOGE, 4 in total
        // 2. swap through XRP and glv token price is used: GLV, ETH, USDC, DOGE, XRP, 5 in total
        // 3. swap through DOGE and glv token price is used: GLV, ETH, USDC, DOGE, 4 in total
        // 4. no swaps and glv token price is not used: 10 index prices and USDC, 11 in total
        // 5. swap through XRP and glv token price is not used: 10 index prices and USDC, 11 in total. in theory GLV may not contain a market with index token ETH. in this the total would be 12
        // 5. swap through BTC and glv token price is not used: 10 index prices, USDC, BTC, 12 in total. in theory GLV may not contain a market with index token ETH. in this the total would be 13

        if (glvTokenPriceUsed) {
            return 4 + swapsCount;
        }
        return 2 + marketCount + swapsCount;
    }

    function estimateGlvWithdrawalOraclePriceCount(
        uint256 marketCount,
        uint256 swapsCount,
        bool glvTokenPriceUsed
    ) internal pure returns (uint256) {
        if (glvTokenPriceUsed) {
            return 4 + swapsCount;
        }
        return 2 + marketCount + swapsCount;
    }

    function estimateCreateDepositGasLimit(
        DataStore dataStore
    ) internal view returns (uint256) {
        return dataStore.getUint(Keys.CREATE_DEPOSIT_GAS_LIMIT);
    }

    function estimateExecuteDepositGasLimit(
        DataStore dataStore,
        Deposit.Props memory deposit
    ) internal view returns (uint256) {
        uint256 gasPerSwap = dataStore.getUint(Keys.singleSwapGasLimitKey());
        uint256 swapCount = deposit.longTokenSwapPath().length + deposit.shortTokenSwapPath().length;
        uint256 gasForSwaps = swapCount * gasPerSwap;

        return dataStore.getUint(Keys.depositGasLimitKey()) + deposit.callbackGasLimit() + gasForSwaps;
    }

    function estimateCreateWithdrawalGasLimit(
        DataStore dataStore
    ) internal view returns (uint256) {
        return dataStore.getUint(Keys.CREATE_WITHDRAWAL_GAS_LIMIT);
    }

    // @dev the estimated gas limit for withdrawals
    // @param dataStore DataStore
    // @param withdrawal the withdrawal to estimate the gas limit for
    function estimateExecuteWithdrawalGasLimit(
        DataStore dataStore,
        Withdrawal.Props memory withdrawal
    ) external view returns (uint256) {
        uint256 gasPerSwap = dataStore.getUint(Keys.singleSwapGasLimitKey());
        uint256 swapCount = withdrawal.longTokenSwapPath().length + withdrawal.shortTokenSwapPath().length;
        uint256 gasForSwaps = swapCount * gasPerSwap;

        return dataStore.getUint(Keys.withdrawalGasLimitKey()) + withdrawal.callbackGasLimit() + gasForSwaps;
    }

    // @dev the estimated gas limit for shifts
    // @param dataStore DataStore
    // @param shift the shift to estimate the gas limit for
    function estimateExecuteShiftGasLimit(
        DataStore dataStore,
        Shift.Props memory shift
    ) external view returns (uint256) {
        return dataStore.getUint(Keys.shiftGasLimitKey()) + shift.callbackGasLimit();
    }

    // @dev the estimated gas limit for orders
    // @param dataStore DataStore
    // @param order the order to estimate the gas limit for
    function estimateExecuteOrderGasLimit(
        DataStore dataStore,
        Order.Props memory order
    ) external view returns (uint256) {
        if (Order.isIncreaseOrder(order.orderType())) {
            return estimateExecuteIncreaseOrderGasLimit(dataStore, order);
        }

        if (Order.isDecreaseOrder(order.orderType())) {
            return estimateExecuteDecreaseOrderGasLimit(dataStore, order);
        }

        if (Order.isSwapOrder(order.orderType())) {
            return estimateExecuteSwapOrderGasLimit(dataStore, order);
        }

        revert Errors.UnsupportedOrderType(uint256(order.orderType()));
    }

    // @dev the estimated gas limit for increase orders
    // @param dataStore DataStore
    // @param order the order to estimate the gas limit for
    function estimateExecuteIncreaseOrderGasLimit(
        DataStore dataStore,
        Order.Props memory order
    ) internal view returns (uint256) {
        uint256 gasPerSwap = dataStore.getUint(Keys.singleSwapGasLimitKey());
        return
            dataStore.getUint(Keys.increaseOrderGasLimitKey()) +
            gasPerSwap *
            order.swapPath().length +
            order.callbackGasLimit();
    }

    // @dev the estimated gas limit for decrease orders
    // @param dataStore DataStore
    // @param order the order to estimate the gas limit for
    function estimateExecuteDecreaseOrderGasLimit(
        DataStore dataStore,
        Order.Props memory order
    ) internal view returns (uint256) {
        uint256 gasPerSwap = dataStore.getUint(Keys.singleSwapGasLimitKey());
        uint256 swapCount = order.swapPath().length;
        if (order.decreasePositionSwapType() != Order.DecreasePositionSwapType.NoSwap) {
            swapCount += 1;
        }

        return dataStore.getUint(Keys.decreaseOrderGasLimitKey()) + gasPerSwap * swapCount + order.callbackGasLimit();
    }

    // @dev the estimated gas limit for swap orders
    // @param dataStore DataStore
    // @param order the order to estimate the gas limit for
    function estimateExecuteSwapOrderGasLimit(
        DataStore dataStore,
        Order.Props memory order
    ) internal view returns (uint256) {
        uint256 gasPerSwap = dataStore.getUint(Keys.singleSwapGasLimitKey());
        return
            dataStore.getUint(Keys.swapOrderGasLimitKey()) +
            gasPerSwap *
            order.swapPath().length +
            order.callbackGasLimit();
    }

    function estimateCreateGlvDepositGasLimit(
        DataStore dataStore
    ) internal view returns (uint256) {
        return dataStore.getUint(Keys.CREATE_GLV_DEPOSIT_GAS_LIMIT);
    }

    // @dev the estimated gas limit for glv deposits
    // @param dataStore DataStore
    // @param deposit the deposit to estimate the gas limit for
    function estimateExecuteGlvDepositGasLimit(
        DataStore dataStore,
        GlvDeposit.Props memory glvDeposit,
        uint256 marketCount
    ) external view returns (uint256) {
        // glv deposit execution gas consumption depends on the amount of markets
        uint256 gasPerGlvPerMarket = dataStore.getUint(Keys.glvPerMarketGasLimitKey());
        uint256 gasForGlvMarkets = gasPerGlvPerMarket * marketCount;
        uint256 glvDepositGasLimit = dataStore.getUint(Keys.glvDepositGasLimitKey());

        uint256 gasLimit = glvDepositGasLimit + glvDeposit.callbackGasLimit() + gasForGlvMarkets;

        if (glvDeposit.isMarketTokenDeposit()) {
            // user provided GM, no separate deposit will be created and executed in this case
            return gasLimit;
        }

        uint256 gasPerSwap = dataStore.getUint(Keys.singleSwapGasLimitKey());
        uint256 swapCount = glvDeposit.longTokenSwapPath().length + glvDeposit.shortTokenSwapPath().length;
        uint256 gasForSwaps = swapCount * gasPerSwap;

        return gasLimit + dataStore.getUint(Keys.depositGasLimitKey()) + gasForSwaps;
    }

    function estimateCreateGlvWithdrawalGasLimit(
        DataStore dataStore
    ) internal view returns (uint256) {
        return dataStore.getUint(Keys.CREATE_GLV_WITHDRAWAL_GAS_LIMIT);
    }

    // @dev the estimated gas limit for glv withdrawals
    // @param dataStore DataStore
    // @param withdrawal the withdrawal to estimate the gas limit for
    function estimateExecuteGlvWithdrawalGasLimit(
        DataStore dataStore,
        GlvWithdrawal.Props memory glvWithdrawal,
        uint256 marketCount
    ) internal view returns (uint256) {
        // glv withdrawal execution gas consumption depends on the amount of markets
        uint256 gasPerGlvPerMarket = dataStore.getUint(Keys.glvPerMarketGasLimitKey());
        uint256 gasForGlvMarkets = gasPerGlvPerMarket * marketCount;
        uint256 glvWithdrawalGasLimit = dataStore.getUint(Keys.glvWithdrawalGasLimitKey());

        uint256 gasLimit = glvWithdrawalGasLimit + glvWithdrawal.callbackGasLimit() + gasForGlvMarkets;

        uint256 gasPerSwap = dataStore.getUint(Keys.singleSwapGasLimitKey());
        uint256 swapCount = glvWithdrawal.longTokenSwapPath().length + glvWithdrawal.shortTokenSwapPath().length;
        uint256 gasForSwaps = swapCount * gasPerSwap;

        return gasLimit + dataStore.getUint(Keys.withdrawalGasLimitKey()) + gasForSwaps;
    }

    function estimateExecuteGlvShiftGasLimit(DataStore dataStore) external view returns (uint256) {
        return dataStore.getUint(Keys.glvShiftGasLimitKey());
    }

    function estimateSetTraderReferralCodeGasLimit(
        DataStore dataStore
    ) internal view returns (uint256) {
        return dataStore.getUint(Keys.SET_TRADER_REFERRAL_CODE_GAS_LIMIT);
    }

    function estimateRegisterCodeGasLimit(
        DataStore dataStore
    ) internal view returns (uint256) {
        return dataStore.getUint(Keys.REGISTER_CODE_GAS_LIMIT);
    }

    function emitKeeperExecutionFee(EventEmitter eventEmitter, address keeper, uint256 executionFeeAmount) internal {
        EventUtils.EventLogData memory eventData;

        eventData.addressItems.initItems(1);
        eventData.addressItems.setItem(0, "keeper", keeper);

        eventData.uintItems.initItems(1);
        eventData.uintItems.setItem(0, "executionFeeAmount", executionFeeAmount);

        eventEmitter.emitEventLog1("KeeperExecutionFee", Cast.toBytes32(keeper), eventData);
    }

    function emitExecutionFeeRefund(EventEmitter eventEmitter, address receiver, uint256 refundFeeAmount) internal {
        EventUtils.EventLogData memory eventData;

        eventData.addressItems.initItems(1);
        eventData.addressItems.setItem(0, "receiver", receiver);

        eventData.uintItems.initItems(1);
        eventData.uintItems.setItem(0, "refundFeeAmount", refundFeeAmount);

        eventEmitter.emitEventLog1("ExecutionFeeRefund", Cast.toBytes32(receiver), eventData);
    }

    function emitExecutionFeeRefundCallback(
        EventEmitter eventEmitter,
        address callbackContract,
        uint256 refundFeeAmount
    ) internal {
        EventUtils.EventLogData memory eventData;

        eventData.addressItems.initItems(1);
        eventData.addressItems.setItem(0, "callbackContract", callbackContract);

        eventData.uintItems.initItems(1);
        eventData.uintItems.setItem(0, "refundFeeAmount", refundFeeAmount);

        eventEmitter.emitEventLog1("ExecutionFeeRefundCallback", Cast.toBytes32(callbackContract), eventData);
    }

    function payGelatoRelayFee(
        DataStore dataStore,
        address wnt,
        uint256 startingGas,
        uint256 calldataLength,
        uint256 availableFeeAmount
    ) external returns (uint256) {
        // 63/64 gas is forwarded to external calls, reduce the startingGas to account for this
        startingGas -= gasleft() / 63;

        address relayFeeAddress = dataStore.getAddress(Keys.RELAY_FEE_ADDRESS);
        if (relayFeeAddress == address(0)) {
            revert Errors.EmptyRelayFeeAddress();
        }

        uint256 relayFeeMultiplierFactor = dataStore.getUint(Keys.GELATO_RELAY_FEE_MULTIPLIER_FACTOR);
        if (relayFeeMultiplierFactor == 0) {
            relayFeeMultiplierFactor = Precision.FLOAT_PRECISION;
        }

        // relayFeeBaseAmount should include:
        // - 21000 base gas
        // - GelatoRelay contract gas
        // - gas for 2 token transfers: to relay fee address and residual fee to the user
        // - any other fixed gas costs before gasleft() and after the relay fee is calculated
        uint256 relayFeeBaseAmount = dataStore.getUint(Keys.GELATO_RELAY_FEE_BASE_AMOUNT);

        // would be non-zero for Arbitrum only
        uint256 l1Fee = Chain.getCurrentTxL1GasFees();

        uint256 l2Fee = (relayFeeBaseAmount + _getCalldataGas(calldataLength) + startingGas - gasleft()) * tx.gasprice;

        uint256 relayFee = Precision.applyFactor(l1Fee + l2Fee, relayFeeMultiplierFactor);

        if (relayFee > availableFeeAmount) {
            revert Errors.InsufficientRelayFee(relayFee, availableFeeAmount);
        }

        IERC20(wnt).safeTransfer(relayFeeAddress, relayFee);

        return relayFee;
    }

    function _getCalldataGas(uint256 calldataLength) internal pure returns (uint256) {
        if (calldataLength > 50000) {
            // we use 10 gas cost per byte for simplicity
            // a malicious actor could send large calldata with non-zero bytes to force relay pay more
            // this is unlikely to happen because the malicious actor would have to pay for the rest and wouldn't extra any profit
            // but to reduce the risk we limit the calldata length
            revert Errors.RelayCalldataTooLong(calldataLength);
        }

        // zero byte in call data costs 4 gas, non-zero byte costs 16 gas
        // there are more zero bytes in transactions on average, we take 10 as a relatively safe estimate
        // GelatoRelay contract receives calldata with a Call with fields like to, gasLimit, data, etc.
        // the GMX contract receives only data.call
        // in practice call fields are small compared to the call.data, so we only use msg.data received by GMX contract for simplicity
        uint256 txCalldataGasUsed = calldataLength * 10;

        // calculate words, apply ceiling
        uint256 memoryWords = (calldataLength + 31) / 32;

        // GelatoRelay contract calls GMX contract, CALL's gas depends on the calldata length
        // approximate formula for CALL gas consumption (excluding fixed costs e.g. 700 gas for the CALL opcode):
        //     memory_cost(n) = (n_words^2) / 512 + (3 * n_words)
        //     memory_expansion_cost = memory_cost(new) - memory_cost(previous)
        // we assume that previous memory_cost is 0 for simplicity
        uint256 gmxCallGasUsed = memoryWords ** 2 / 512 + memoryWords * 3;

        return txCalldataGasUsed + gmxCallGasUsed;
    }
}

// ============================================================
// FILE: contracts/glv/Glv.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.0;
library Glv {
    struct Props {
        address glvToken;
        address longToken;
        address shortToken;
    }
}

// ============================================================
// FILE: contracts/glv/glvDeposit/GlvDeposit.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.0;

// @title GlvDeposit
// @dev Struct for GLV deposits
library GlvDeposit {
    // @dev there is a limit on the number of fields a struct can have when being passed
    // or returned as a memory variable which can cause "Stack too deep" errors
    // use sub-structs to avoid this issue
    // large number of fields my also cause incorrect display in Tenderly
    // @param addresses address values
    // @param numbers number values
    // @param flags boolean values
    // @param _dataList a list of bytes32 values that can be used for additional data
    struct Props {
        Addresses addresses;
        Numbers numbers;
        Flags flags;
        bytes32[] _dataList;
    }

    // @param account the account depositing liquidity
    // @param receiver the address to send the liquidity tokens to
    // @param callbackContract the callback contract
    // @param uiFeeReceiver the ui fee receiver
    // @param market the market to deposit to
    struct Addresses {
        address glv;
        address account;
        address receiver;
        address callbackContract;
        address uiFeeReceiver;
        address market;
        address initialLongToken;
        address initialShortToken;
        address[] longTokenSwapPath;
        address[] shortTokenSwapPath;
    }

    // @param marketTokenAmount the amount of market tokens to deposit
    // @param initialLongTokenAmount the amount of long tokens to deposit
    // @param initialShortTokenAmount the amount of short tokens to deposit
    // @param minGlvTokens the minimum acceptable number of Glv tokens
    // sending funds back to the user in case the deposit gets cancelled
    // @param executionFee the execution fee for keepers
    // @param callbackGasLimit the gas limit for the callbackContract
    // @param srcChainId the source chain id
    struct Numbers {
        uint256 marketTokenAmount;
        uint256 initialLongTokenAmount;
        uint256 initialShortTokenAmount;
        uint256 minGlvTokens;
        uint256 updatedAtTime;
        uint256 executionFee;
        uint256 callbackGasLimit;
        uint256 srcChainId;
    }

    // @param shouldUnwrapNativeToken whether to unwrap the native token when
    // @param isMarketTokenDeposit whether to deposit market tokens or long/short tokens
    struct Flags {
        bool shouldUnwrapNativeToken;
        bool isMarketTokenDeposit;
    }


    function account(Props memory props) internal pure returns (address) {
        return props.addresses.account;
    }

    function setAccount(Props memory props, address value) internal pure {
        props.addresses.account = value;
    }

    function receiver(Props memory props) internal pure returns (address) {
        return props.addresses.receiver;
    }

    function setReceiver(Props memory props, address value) internal pure {
        props.addresses.receiver = value;
    }

    function callbackContract(Props memory props) internal pure returns (address) {
        return props.addresses.callbackContract;
    }

    function setCallbackContract(Props memory props, address value) internal pure {
        props.addresses.callbackContract = value;
    }

    function uiFeeReceiver(Props memory props) internal pure returns (address) {
        return props.addresses.uiFeeReceiver;
    }

    function setUiFeeReceiver(Props memory props, address value) internal pure {
        props.addresses.uiFeeReceiver = value;
    }

    function glv(Props memory props) internal pure returns (address) {
        return props.addresses.glv;
    }

    function setGlv(Props memory props, address value) internal pure {
        props.addresses.glv = value;
    }

    function market(Props memory props) internal pure returns (address) {
        return props.addresses.market;
    }

    function setMarket(Props memory props, address value) internal pure {
        props.addresses.market = value;
    }

    function initialLongToken(Props memory props) internal pure returns (address) {
        return props.addresses.initialLongToken;
    }

    function setInitialLongToken(Props memory props, address value) internal pure {
        props.addresses.initialLongToken = value;
    }

    function initialShortToken(Props memory props) internal pure returns (address) {
        return props.addresses.initialShortToken;
    }

    function setInitialShortToken(Props memory props, address value) internal pure {
        props.addresses.initialShortToken = value;
    }

    function longTokenSwapPath(Props memory props) internal pure returns (address[] memory) {
        return props.addresses.longTokenSwapPath;
    }

    function setLongTokenSwapPath(Props memory props, address[] memory value) internal pure {
        props.addresses.longTokenSwapPath = value;
    }

    function shortTokenSwapPath(Props memory props) internal pure returns (address[] memory) {
        return props.addresses.shortTokenSwapPath;
    }

    function setShortTokenSwapPath(Props memory props, address[] memory value) internal pure {
        props.addresses.shortTokenSwapPath = value;
    }

    function marketTokenAmount(Props memory props) internal pure returns (uint256) {
        return props.numbers.marketTokenAmount;
    }

    function setMarketTokenAmount(Props memory props, uint256 value) internal pure {
        props.numbers.marketTokenAmount = value;
    }

    function initialLongTokenAmount(Props memory props) internal pure returns (uint256) {
        return props.numbers.initialLongTokenAmount;
    }

    function setInitialLongTokenAmount(Props memory props, uint256 value) internal pure {
        props.numbers.initialLongTokenAmount = value;
    }

    function initialShortTokenAmount(Props memory props) internal pure returns (uint256) {
        return props.numbers.initialShortTokenAmount;
    }

    function setInitialShortTokenAmount(Props memory props, uint256 value) internal pure {
        props.numbers.initialShortTokenAmount = value;
    }

    function minGlvTokens(Props memory props) internal pure returns (uint256) {
        return props.numbers.minGlvTokens;
    }

    function setMinGlvTokens(Props memory props, uint256 value) internal pure {
        props.numbers.minGlvTokens = value;
    }

    function updatedAtTime(Props memory props) internal pure returns (uint256) {
        return props.numbers.updatedAtTime;
    }

    function setUpdatedAtTime(Props memory props, uint256 value) internal pure {
        props.numbers.updatedAtTime = value;
    }

    function executionFee(Props memory props) internal pure returns (uint256) {
        return props.numbers.executionFee;
    }

    function setExecutionFee(Props memory props, uint256 value) internal pure {
        props.numbers.executionFee = value;
    }

    function callbackGasLimit(Props memory props) internal pure returns (uint256) {
        return props.numbers.callbackGasLimit;
    }

    function setCallbackGasLimit(Props memory props, uint256 value) internal pure {
        props.numbers.callbackGasLimit = value;
    }

    function srcChainId(Props memory props) internal pure returns (uint256) {
        return props.numbers.srcChainId;
    }

    function setSrcChainId(Props memory props, uint256 value) internal pure {
        props.numbers.srcChainId = value;
    }

    function shouldUnwrapNativeToken(Props memory props) internal pure returns (bool) {
        return props.flags.shouldUnwrapNativeToken;
    }

    function setShouldUnwrapNativeToken(Props memory props, bool value) internal pure {
        props.flags.shouldUnwrapNativeToken = value;
    }

    function isMarketTokenDeposit(Props memory props) internal pure returns (bool) {
        return props.flags.isMarketTokenDeposit;
    }

    function setIsMarketTokenDeposit(Props memory props, bool value) internal pure {
        props.flags.isMarketTokenDeposit = value;
    }

    function dataList(Props memory props) internal pure returns (bytes32[] memory) {
        return props._dataList;
    }

    function setDataList(Props memory props, bytes32[] memory value) internal pure {
        props._dataList = value;
    }
}

// ============================================================
// FILE: contracts/glv/glvDeposit/GlvDepositEventUtils.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.0;

import "../../event/EventEmitter.sol";
import "../../event/EventUtils.sol";
import "../../utils/Cast.sol";

import "./GlvDeposit.sol";

library GlvDepositEventUtils {
    using GlvDeposit for GlvDeposit.Props;

    using EventUtils for EventUtils.AddressItems;
    using EventUtils for EventUtils.UintItems;
    using EventUtils for EventUtils.IntItems;
    using EventUtils for EventUtils.BoolItems;
    using EventUtils for EventUtils.Bytes32Items;
    using EventUtils for EventUtils.BytesItems;
    using EventUtils for EventUtils.StringItems;

    function emitGlvDepositCreated(
        EventEmitter eventEmitter,
        bytes32 key,
        GlvDeposit.Props memory glvDeposit
    ) external {
        EventUtils.EventLogData memory eventData = createEventData(glvDeposit);

        eventData.bytes32Items.initItems(1);
        eventData.bytes32Items.setItem(0, "key", key);

        eventEmitter.emitEventLog2(
            "GlvDepositCreated",
            key,
            Cast.toBytes32(glvDeposit.account()),
            eventData
        );
    }

    function emitGlvDepositExecuted(
        EventEmitter eventEmitter,
        bytes32 key,
        address account,
        uint256 receivedGlvTokens
    ) external {
        EventUtils.EventLogData memory eventData;

        eventData.bytes32Items.initItems(1);
        eventData.bytes32Items.setItem(0, "key", key);

        eventData.addressItems.initItems(1);
        eventData.addressItems.setItem(0, "account", account);

        eventData.uintItems.initItems(1);
        eventData.uintItems.setItem(0, "receivedGlvTokens", receivedGlvTokens);

        eventEmitter.emitEventLog2(
            "GlvDepositExecuted",
            key,
            Cast.toBytes32(account),
            eventData
        );
    }

    function emitGlvDepositCancelled(
        EventEmitter eventEmitter,
        bytes32 key,
        address account,
        string memory reason,
        bytes memory reasonBytes
    ) external {
        EventUtils.EventLogData memory eventData;

        eventData.bytes32Items.initItems(1);
        eventData.bytes32Items.setItem(0, "key", key);

        eventData.addressItems.initItems(1);
        eventData.addressItems.setItem(0, "account", account);

        eventData.stringItems.initItems(1);
        eventData.stringItems.setItem(0, "reason", reason);

        eventData.bytesItems.initItems(1);
        eventData.bytesItems.setItem(0, "reasonBytes", reasonBytes);

        eventEmitter.emitEventLog2(
            "GlvDepositCancelled",
            key,
            Cast.toBytes32(account),
            eventData
        );
    }

    function createEventData(GlvDeposit.Props memory glvDeposit) public pure
    returns (EventUtils.EventLogData memory) {
        EventUtils.EventLogData memory eventData;
        eventData.addressItems.initItems(8);
        eventData.addressItems.setItem(0, "account", glvDeposit.account());
        eventData.addressItems.setItem(1, "receiver", glvDeposit.receiver());
        eventData.addressItems.setItem(2, "callbackContract", glvDeposit.callbackContract());
        eventData.addressItems.setItem(3, "market", glvDeposit.market());
        eventData.addressItems.setItem(4, "glv", glvDeposit.glv());
        eventData.addressItems.setItem(5, "initialLongToken", glvDeposit.initialLongToken());
        eventData.addressItems.setItem(6, "initialShortToken", glvDeposit.initialShortToken());
        eventData.addressItems.setItem(7, "uiFeeReceiver", glvDeposit.uiFeeReceiver());

        eventData.addressItems.initArrayItems(2);
        eventData.addressItems.setItem(0, "longTokenSwapPath", glvDeposit.longTokenSwapPath());
        eventData.addressItems.setItem(1, "shortTokenSwapPath", glvDeposit.shortTokenSwapPath());

        eventData.uintItems.initItems(8);
        eventData.uintItems.setItem(0, "initialLongTokenAmount", glvDeposit.initialLongTokenAmount());
        eventData.uintItems.setItem(1, "initialShortTokenAmount", glvDeposit.initialShortTokenAmount());
        eventData.uintItems.setItem(2, "minGlvTokens", glvDeposit.minGlvTokens());
        eventData.uintItems.setItem(3, "updatedAtTime", glvDeposit.updatedAtTime());
        eventData.uintItems.setItem(4, "executionFee", glvDeposit.executionFee());
        eventData.uintItems.setItem(5, "callbackGasLimit", glvDeposit.callbackGasLimit());
        eventData.uintItems.setItem(6, "marketTokenAmount", glvDeposit.marketTokenAmount());
        eventData.uintItems.setItem(7, "srcChainId", glvDeposit.srcChainId());

        eventData.boolItems.initItems(2);
        eventData.boolItems.setItem(0, "shouldUnwrapNativeToken", glvDeposit.shouldUnwrapNativeToken());
        eventData.boolItems.setItem(1, "isMarketTokenDeposit", glvDeposit.isMarketTokenDeposit());

        eventData.bytes32Items.initArrayItems(1);
        eventData.bytes32Items.setItem(0, "dataList", glvDeposit.dataList());
        return eventData;
    }
}

// ============================================================
// FILE: contracts/glv/GlvEventUtils.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.0;

import "../event/EventEmitter.sol";
import "../event/EventUtils.sol";
import "../utils/Cast.sol";

library GlvEventUtils {
    using EventUtils for EventUtils.AddressItems;
    using EventUtils for EventUtils.UintItems;
    using EventUtils for EventUtils.IntItems;
    using EventUtils for EventUtils.BoolItems;
    using EventUtils for EventUtils.Bytes32Items;
    using EventUtils for EventUtils.BytesItems;
    using EventUtils for EventUtils.StringItems;

    function emitGlvMarketAdded(EventEmitter eventEmitter, address glv, address market) internal {
        EventUtils.EventLogData memory eventData;

        eventData.addressItems.initItems(2);
        eventData.addressItems.setItem(0, "glv", glv);
        eventData.addressItems.setItem(1, "market", market);

        eventEmitter.emitEventLog2("GlvMarketAdded", Cast.toBytes32(glv), Cast.toBytes32(market), eventData);
    }

    function emitGlvMarketRemoved(EventEmitter eventEmitter, address glv, address market) internal {
        EventUtils.EventLogData memory eventData;

        eventData.addressItems.initItems(2);
        eventData.addressItems.setItem(0, "glv", glv);
        eventData.addressItems.setItem(1, "market", market);

        eventEmitter.emitEventLog2("GlvMarketRemoved", Cast.toBytes32(glv), Cast.toBytes32(market), eventData);
    }

    function emitGlvValueUpdated(EventEmitter eventEmitter, address glv, uint256 value, uint256 supply) internal {
        EventUtils.EventLogData memory eventData;

        eventData.addressItems.initItems(1);
        eventData.addressItems.setItem(0, "glv", glv);

        eventData.uintItems.initItems(2);
        // @note the value might be slightly inaccurate if GLV oracle price is used
        // because it doesn't account for fees paid during the shift, deposit or withdrawal
        eventData.uintItems.setItem(0, "value", value);
        eventData.uintItems.setItem(1, "supply", supply);

        eventEmitter.emitEventLog1("GlvValueUpdated", Cast.toBytes32(glv), eventData);
    }
}

// ============================================================
// FILE: contracts/glv/glvShift/GlvShift.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.0;

library GlvShift {
    struct Props {
        Addresses addresses;
        Numbers numbers;
    }

    struct Addresses {
        address glv;
        address fromMarket;
        address toMarket;
    }

    struct Numbers {
        uint256 marketTokenAmount;
        uint256 minMarketTokens;
        uint256 updatedAtTime;
    }

    function glv(Props memory props) internal pure returns (address) {
        return props.addresses.glv;
    }

    function setGlv(Props memory props, address value) internal pure {
        props.addresses.glv = value;
    }

    function fromMarket(Props memory props) internal pure returns (address) {
        return props.addresses.fromMarket;
    }

    function setFromMarket(Props memory props, address value) internal pure {
        props.addresses.fromMarket = value;
    }

    function toMarket(Props memory props) internal pure returns (address) {
        return props.addresses.toMarket;
    }

    function setToMarket(Props memory props, address value) internal pure {
        props.addresses.toMarket = value;
    }

    function marketTokenAmount(Props memory props) internal pure returns (uint256) {
        return props.numbers.marketTokenAmount;
    }

    function setMarketTokenAmount(Props memory props, uint256 value) internal pure {
        props.numbers.marketTokenAmount = value;
    }

    function minMarketTokens(Props memory props) internal pure returns (uint256) {
        return props.numbers.minMarketTokens;
    }

    function setMinMarketTokens(Props memory props, uint256 value) internal pure {
        props.numbers.minMarketTokens = value;
    }

    function updatedAtTime(Props memory props) internal pure returns (uint256) {
        return props.numbers.updatedAtTime;
    }

    function setUpdatedAtTime(Props memory props, uint256 value) internal pure {
        props.numbers.updatedAtTime = value;
    }
}

// ============================================================
// FILE: contracts/glv/glvShift/GlvShiftEventUtils.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.0;

import "../../event/EventEmitter.sol";
import "../../event/EventUtils.sol";

import "./GlvShift.sol";

library GlvShiftEventUtils {
    using GlvShift for GlvShift.Props;

    using EventUtils for EventUtils.AddressItems;
    using EventUtils for EventUtils.UintItems;
    using EventUtils for EventUtils.IntItems;
    using EventUtils for EventUtils.BoolItems;
    using EventUtils for EventUtils.Bytes32Items;
    using EventUtils for EventUtils.BytesItems;
    using EventUtils for EventUtils.StringItems;

    function emitGlvShiftCreated(EventEmitter eventEmitter, bytes32 key, GlvShift.Props memory glvShift) external {
        EventUtils.EventLogData memory eventData;

        eventData.addressItems.initItems(3);
        eventData.addressItems.setItem(0, "fromMarket", glvShift.fromMarket());
        eventData.addressItems.setItem(1, "toMarket", glvShift.toMarket());
        eventData.addressItems.setItem(2, "glv", glvShift.glv());

        eventData.uintItems.initItems(3);
        eventData.uintItems.setItem(0, "marketTokenAmount", glvShift.marketTokenAmount());
        eventData.uintItems.setItem(1, "minMarketTokens", glvShift.minMarketTokens());
        eventData.uintItems.setItem(2, "updatedAtTime", glvShift.updatedAtTime());

        eventData.bytes32Items.initItems(1);
        eventData.bytes32Items.setItem(0, "key", key);

        eventEmitter.emitEventLog1("GlvShiftCreated", key, eventData);
    }

    function emitGlvShiftExecuted(EventEmitter eventEmitter, bytes32 key, uint256 receivedMarketTokens) external {
        EventUtils.EventLogData memory eventData;

        eventData.bytes32Items.initItems(1);
        eventData.bytes32Items.setItem(0, "key", key);

        eventData.uintItems.initItems(1);
        eventData.uintItems.setItem(0, "receivedMarketTokens", receivedMarketTokens);

        eventEmitter.emitEventLog1("GlvShiftExecuted", key, eventData);
    }

    function emitGlvShiftCancelled(
        EventEmitter eventEmitter,
        bytes32 key,
        string memory reason,
        bytes memory reasonBytes
    ) external {
        EventUtils.EventLogData memory eventData;

        eventData.bytes32Items.initItems(1);
        eventData.bytes32Items.setItem(0, "key", key);

        eventData.stringItems.initItems(1);
        eventData.stringItems.setItem(0, "reason", reason);

        eventData.bytesItems.initItems(1);
        eventData.bytesItems.setItem(0, "reasonBytes", reasonBytes);

        eventEmitter.emitEventLog1("GlvShiftCancelled", key, eventData);
    }
}

// ============================================================
// FILE: contracts/glv/glvShift/GlvShiftStoreUtils.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.0;

import "../../data/Keys.sol";
import "../../data/DataStore.sol";

import "./GlvShift.sol";

library GlvShiftStoreUtils {
    using GlvShift for GlvShift.Props;

    bytes32 public constant GLV = keccak256(abi.encode("GLV"));
    bytes32 public constant FROM_MARKET = keccak256(abi.encode("FROM_MARKET"));
    bytes32 public constant TO_MARKET = keccak256(abi.encode("TO_MARKET"));

    bytes32 public constant MARKET_TOKEN_AMOUNT = keccak256(abi.encode("MARKET_TOKEN_AMOUNT"));
    bytes32 public constant MIN_MARKET_TOKENS = keccak256(abi.encode("MIN_MARKET_TOKENS"));
    bytes32 public constant UPDATED_AT_TIME = keccak256(abi.encode("UPDATED_AT_TIME"));

    function get(DataStore dataStore, bytes32 key) external view returns (GlvShift.Props memory) {
        GlvShift.Props memory glvShift;
        if (!dataStore.containsBytes32(Keys.GLV_SHIFT_LIST, key)) {
            return glvShift;
        }

        glvShift.setGlv(dataStore.getAddress(
            keccak256(abi.encode(key, GLV))
        ));

        glvShift.setFromMarket(dataStore.getAddress(
            keccak256(abi.encode(key, FROM_MARKET))
        ));

        glvShift.setToMarket(dataStore.getAddress(
            keccak256(abi.encode(key, TO_MARKET))
        ));

        glvShift.setMarketTokenAmount(dataStore.getUint(
            keccak256(abi.encode(key, MARKET_TOKEN_AMOUNT))
        ));

        glvShift.setMinMarketTokens(dataStore.getUint(
            keccak256(abi.encode(key, MIN_MARKET_TOKENS))
        ));

        glvShift.setUpdatedAtTime(dataStore.getUint(
            keccak256(abi.encode(key, UPDATED_AT_TIME))
        ));

        return glvShift;
    }

    function set(DataStore dataStore, bytes32 key, GlvShift.Props memory glvShift) external {
        dataStore.addBytes32(
            Keys.GLV_SHIFT_LIST,
            key
        );

        dataStore.setAddress(
            keccak256(abi.encode(key, GLV)),
            glvShift.glv()
        );

        dataStore.setAddress(
            keccak256(abi.encode(key, FROM_MARKET)),
            glvShift.fromMarket()
        );

        dataStore.setAddress(
            keccak256(abi.encode(key, TO_MARKET)),
            glvShift.toMarket()
        );

        dataStore.setUint(
            keccak256(abi.encode(key, MARKET_TOKEN_AMOUNT)),
            glvShift.marketTokenAmount()
        );

        dataStore.setUint(
            keccak256(abi.encode(key, MIN_MARKET_TOKENS)),
            glvShift.minMarketTokens()
        );

        dataStore.setUint(
            keccak256(abi.encode(key, UPDATED_AT_TIME)),
            glvShift.updatedAtTime()
        );
    }

    function remove(DataStore dataStore, bytes32 key) external {
        if (!dataStore.containsBytes32(Keys.GLV_SHIFT_LIST, key)) {
            revert Errors.GlvShiftNotFound(key);
        }

        dataStore.removeBytes32(
            Keys.GLV_SHIFT_LIST,
            key
        );

        dataStore.removeAddress(
            keccak256(abi.encode(key, GLV))
        );

        dataStore.removeAddress(
            keccak256(abi.encode(key, FROM_MARKET))
        );

        dataStore.removeAddress(
            keccak256(abi.encode(key, TO_MARKET))
        );

        dataStore.removeUint(
            keccak256(abi.encode(key, MARKET_TOKEN_AMOUNT))
        );

        dataStore.removeUint(
            keccak256(abi.encode(key, MIN_MARKET_TOKENS))
        );

        dataStore.removeUint(
            keccak256(abi.encode(key, UPDATED_AT_TIME))
        );
    }

    function getGlvShiftCount(DataStore dataStore) internal view returns (uint256) {
        return dataStore.getBytes32Count(Keys.GLV_SHIFT_LIST);
    }

    function getGlvShiftKeys(DataStore dataStore, uint256 start, uint256 end) internal view returns (bytes32[] memory) {
        return dataStore.getBytes32ValuesAt(Keys.GLV_SHIFT_LIST, start, end);
    }
}

// ============================================================
// FILE: contracts/glv/glvShift/GlvShiftUtils.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.0;

import "../../event/EventEmitter.sol";
import "../../multichain/MultichainVault.sol";
import "../../shift/ShiftUtils.sol";
import "../../exchange/IShiftHandler.sol";
import "../GlvUtils.sol";
import "../GlvVault.sol";

import "./GlvShiftStoreUtils.sol";
import "./GlvShiftEventUtils.sol";

library GlvShiftUtils {
    using GlvShift for GlvShift.Props;
    using SafeCast for int256;
    using SafeCast for uint256;

    struct CreateGlvShiftParams {
        address glv;
        address fromMarket;
        address toMarket;
        uint256 marketTokenAmount;
        uint256 minMarketTokens;
    }

    struct ExecuteGlvShiftParams {
        DataStore dataStore;
        EventEmitter eventEmitter;
        IOracle oracle;
        MultichainVault multichainVault;
        ShiftVault shiftVault;
        GlvVault glvVault;
        IDepositHandler depositHandler;
        IWithdrawalHandler withdrawalHandler;
        ISwapHandler swapHandler;
        IShiftHandler shiftHandler;
        bytes32 key;
        address keeper;
    }

    struct ExecuteGlvShiftCache {
        Market.Props fromMarket;
        Market.Props toMarket;
        Shift.Props shift;
        MarketPoolValueInfo.Props fromMarketPoolValueInfo;
        uint256 fromMarketTokenSupply;
        MarketPoolValueInfo.Props toMarketPoolValueInfo;
        uint256 toMarketTokenSupply;
        uint256 marketTokensUsd;
        uint256 receivedMarketTokens;
        uint256 receivedMarketTokensUsd;
        bytes32 shiftKey;
        uint256 glvValue;
        uint256 glvSupply;
    }

    function createGlvShift(
        DataStore dataStore,
        EventEmitter eventEmitter,
        CreateGlvShiftParams memory params
    ) external returns (bytes32) {
        validateGlvShift(dataStore, params);

        GlvShift.Props memory glvShift = GlvShift.Props(
            GlvShift.Addresses({ glv: params.glv, fromMarket: params.fromMarket, toMarket: params.toMarket }),
            GlvShift.Numbers({
                marketTokenAmount: params.marketTokenAmount,
                minMarketTokens: params.minMarketTokens,
                updatedAtTime: Chain.currentTimestamp()
            })
        );

        bytes32 key = NonceUtils.getNextKey(dataStore);

        GlvShiftStoreUtils.set(dataStore, key, glvShift);

        GlvShiftEventUtils.emitGlvShiftCreated(eventEmitter, key, glvShift);

        return key;
    }

    function validateGlvShift(DataStore dataStore, CreateGlvShiftParams memory params) internal view {
        if (params.fromMarket == params.toMarket) {
            revert Errors.ShiftFromAndToMarketAreEqual(params.fromMarket);
        }

        GlvUtils.validateGlv(dataStore, params.glv);
        GlvUtils.validateGlvMarket(dataStore, params.glv, params.fromMarket, false);
        GlvUtils.validateGlvMarket(dataStore, params.glv, params.toMarket, true);

        validateGlvShiftInterval(dataStore, params.glv);

        uint256 fromMarketTokenBalance = GlvToken(payable(params.glv)).tokenBalances(params.fromMarket);
        if (fromMarketTokenBalance < params.marketTokenAmount) {
            revert Errors.GlvInsufficientMarketTokenBalance(
                params.glv,
                params.fromMarket,
                fromMarketTokenBalance,
                params.marketTokenAmount
            );
        }

        MarketUtils.validateEnabledMarket(dataStore, params.fromMarket);
        MarketUtils.validateEnabledMarket(dataStore, params.toMarket);
    }

    function validateGlvShiftInterval(DataStore dataStore, address glv) internal view {
        uint256 glvShiftMinInterval = dataStore.getUint(Keys.glvShiftMinIntervalKey(glv));
        if (glvShiftMinInterval == 0) {
            return;
        }

        uint256 glvShiftLastExecutedAt = dataStore.getUint(Keys.glvShiftLastExecutedAtKey(glv));
        if (Chain.currentTimestamp() < glvShiftLastExecutedAt + glvShiftMinInterval) {
            revert Errors.GlvShiftIntervalNotYetPassed(
                Chain.currentTimestamp(),
                glvShiftLastExecutedAt,
                glvShiftMinInterval
            );
        }
    }

    function executeGlvShift(
        ExecuteGlvShiftParams memory params,
        GlvShift.Props memory glvShift,
        bool skipRemoval
    ) external returns (uint256) {
        if (skipRemoval) {
            if (params.dataStore.containsBytes32(Keys.GLV_SHIFT_LIST, params.key)) {
                revert Errors.RemovalShouldNotBeSkipped(Keys.GLV_SHIFT_LIST, params.key);
            }
        } else {
            GlvShiftStoreUtils.remove(params.dataStore, params.key);
        }

        validateGlvShiftInterval(params.dataStore, glvShift.glv());
        params.dataStore.setUint(Keys.glvShiftLastExecutedAtKey(glvShift.glv()), Chain.currentTimestamp());

        Bank(payable(glvShift.glv())).transferOut(
            glvShift.fromMarket(),
            address(params.shiftVault),
            glvShift.marketTokenAmount()
        );
        params.shiftVault.syncTokenBalance(glvShift.fromMarket());

        ExecuteGlvShiftCache memory cache;
        cache.shift = Shift.Props(
            Shift.Addresses({
                account: glvShift.glv(),
                receiver: glvShift.glv(),
                callbackContract: address(0),
                uiFeeReceiver: address(0),
                fromMarket: glvShift.fromMarket(),
                toMarket: glvShift.toMarket()
            }),
            Shift.Numbers({
                minMarketTokens: glvShift.minMarketTokens(),
                marketTokenAmount: glvShift.marketTokenAmount(),
                updatedAtTime: glvShift.updatedAtTime(),
                executionFee: 0,
                callbackGasLimit: 0,
                srcChainId: 0 // srcChainId is the current block.chainId
            }),
            new bytes32[](0)
        );

        cache.shiftKey = keccak256(abi.encode(params.key, "shift"));
        ShiftEventUtils.emitShiftCreated(params.eventEmitter, cache.shiftKey, cache.shift);

        ShiftUtils.ExecuteShiftParams memory executeShiftParams = ShiftUtils.ExecuteShiftParams({
            dataStore: params.dataStore,
            eventEmitter: params.eventEmitter,
            multichainVault: params.multichainVault,
            shiftVault: params.shiftVault,
            oracle: params.oracle,
            depositHandler: params.depositHandler,
            withdrawalHandler: params.withdrawalHandler,
            swapHandler: params.swapHandler,
            key: cache.shiftKey,
            keeper: params.keeper,
            // executionFee is not used for GlvShift's
            // pass gasleft() not to break startGas calculations inside ShiftUtils
            startingGas: gasleft()
        });

        cache.receivedMarketTokens = params.shiftHandler.executeShiftFromController(executeShiftParams, cache.shift);

        GlvToken(payable(glvShift.glv())).syncTokenBalance(glvShift.toMarket());

        cache.toMarket = MarketStoreUtils.get(params.dataStore, glvShift.toMarket());

        cache.toMarketPoolValueInfo = MarketUtils.getPoolValueInfo(
            params.dataStore,
            cache.toMarket,
            params.oracle.getPrimaryPrice(cache.toMarket.indexToken),
            params.oracle.getPrimaryPrice(cache.toMarket.longToken),
            params.oracle.getPrimaryPrice(cache.toMarket.shortToken),
            Keys.MAX_PNL_FACTOR_FOR_DEPOSITS,
            true // maximize
        );
        cache.toMarketTokenSupply = MarketUtils.getMarketTokenSupply(MarketToken(payable(glvShift.toMarket())));

        GlvUtils.validateGlvMarketTokenBalance(
            params.dataStore,
            glvShift.glv(),
            cache.toMarket,
            cache.toMarketPoolValueInfo.poolValue.toUint256(),
            cache.toMarketTokenSupply
        );
        cache.receivedMarketTokensUsd = MarketUtils.marketTokenAmountToUsd(
            cache.receivedMarketTokens,
            cache.toMarketPoolValueInfo.poolValue.toUint256(),
            cache.toMarketTokenSupply
        );

        cache.fromMarket = MarketStoreUtils.get(params.dataStore, glvShift.fromMarket());
        cache.fromMarketPoolValueInfo = MarketUtils.getPoolValueInfo(
            params.dataStore,
            cache.fromMarket,
            params.oracle.getPrimaryPrice(cache.fromMarket.indexToken),
            params.oracle.getPrimaryPrice(cache.fromMarket.longToken),
            params.oracle.getPrimaryPrice(cache.fromMarket.shortToken),
            Keys.MAX_PNL_FACTOR_FOR_DEPOSITS,
            true // maximize
        );
        cache.fromMarketTokenSupply = MarketUtils.getMarketTokenSupply(MarketToken(payable(glvShift.fromMarket())));

        cache.marketTokensUsd = MarketUtils.marketTokenAmountToUsd(
            glvShift.marketTokenAmount(),
            cache.fromMarketPoolValueInfo.poolValue.toUint256(),
            cache.fromMarketTokenSupply
        );

        validateGlvShiftMaxLoss(params.dataStore, glvShift.glv(), cache.marketTokensUsd, cache.receivedMarketTokensUsd);

        GlvShiftEventUtils.emitGlvShiftExecuted(params.eventEmitter, params.key, cache.receivedMarketTokens);

        (cache.glvValue, ) = GlvUtils.getGlvValue(
            params.dataStore,
            params.oracle,
            glvShift.glv(),
            true // maximize
        );
        cache.glvSupply = GlvToken(payable(glvShift.glv())).totalSupply();
        GlvEventUtils.emitGlvValueUpdated(params.eventEmitter, glvShift.glv(), cache.glvValue, cache.glvSupply);

        return cache.receivedMarketTokens;
    }

    function cancelGlvShift(
        DataStore dataStore,
        EventEmitter eventEmitter,
        bytes32 key,
        string memory reason,
        bytes memory reasonBytes
    ) external {
        GlvShiftStoreUtils.remove(dataStore, key);

        GlvShiftEventUtils.emitGlvShiftCancelled(eventEmitter, key, reason, reasonBytes);
    }

    function validateGlvShiftMaxLoss(
        DataStore dataStore,
        address glv,
        uint256 marketTokensUsd,
        uint256 receivedMarketTokensUsd
    ) internal view {
        if (marketTokensUsd < receivedMarketTokensUsd) {
            // price impact is positive, no need to validate it
            return;
        }

        uint256 glvMaxShiftPriceImpactFactor = dataStore.getUint(Keys.glvShiftMaxLossFactorKey(glv));

        uint256 glvShiftLoss = Precision.toFactor(
            marketTokensUsd - receivedMarketTokensUsd,
            marketTokensUsd
        );
        if (glvShiftLoss > glvMaxShiftPriceImpactFactor) {
            revert Errors.GlvShiftMaxLossExceeded(glvShiftLoss, glvMaxShiftPriceImpactFactor);
        }
    }
}

// ============================================================
// FILE: contracts/glv/GlvStoreUtils.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.0;

import "../data/Keys.sol";
import "../data/DataStore.sol";

import "./Glv.sol";

library GlvStoreUtils {
    using Glv for Glv.Props;

    bytes32 public constant GLV_SALT = keccak256(abi.encode("GLV_SALT"));
    bytes32 public constant GLV_TOKEN = keccak256(abi.encode("GLV_TOKEN"));
    bytes32 public constant LONG_TOKEN = keccak256(abi.encode("LONG_TOKEN"));
    bytes32 public constant SHORT_TOKEN = keccak256(abi.encode("SHORT_TOKEN"));

    function get(DataStore dataStore, address key) public view returns (Glv.Props memory) {
        Glv.Props memory glv;
        if (!dataStore.containsAddress(Keys.GLV_LIST, key)) {
            return glv;
        }

        glv.glvToken = dataStore.getAddress(
            keccak256(abi.encode(key, GLV_TOKEN))
        );

        glv.longToken = dataStore.getAddress(
            keccak256(abi.encode(key, LONG_TOKEN))
        );

        glv.shortToken = dataStore.getAddress(
            keccak256(abi.encode(key, SHORT_TOKEN))
        );

        return glv;
    }

    function getBySalt(DataStore dataStore, bytes32 salt) external view returns (Glv.Props memory) {
        address key = dataStore.getAddress(getGlvSaltHash(salt));
        return get(dataStore, key);
    }

    function set(DataStore dataStore, address key, bytes32 salt, Glv.Props memory glv) external {
        dataStore.addAddress(
            Keys.GLV_LIST,
            key
        );

        // the salt is based on the glv props while the key gives the glv's address
        // use the salt to store a reference to the key to allow the key to be retrieved
        // using just the salt value
        dataStore.setAddress(
            getGlvSaltHash(salt),
            key
        );

        dataStore.setAddress(
            keccak256(abi.encode(key, GLV_TOKEN)),
            glv.glvToken
        );


        dataStore.setAddress(
            keccak256(abi.encode(key, LONG_TOKEN)),
            glv.longToken
        );

        dataStore.setAddress(
            keccak256(abi.encode(key, SHORT_TOKEN)),
            glv.shortToken
        );
    }

    function remove(DataStore dataStore, address key) external {
        if (!dataStore.containsAddress(Keys.GLV_LIST, key)) {
            revert Errors.GlvNotFound(key);
        }

        dataStore.removeAddress(
            Keys.GLV_LIST,
            key
        );

        dataStore.removeAddress(
            keccak256(abi.encode(key, GLV_TOKEN))
        );

        dataStore.removeAddress(
            keccak256(abi.encode(key, LONG_TOKEN))
        );

        dataStore.removeAddress(
            keccak256(abi.encode(key, SHORT_TOKEN))
        );
    }

    function getGlvSaltHash(bytes32 salt) internal pure returns (bytes32) {
        return keccak256(abi.encode(GLV_SALT, salt));
    }

    function getGlvCount(DataStore dataStore) internal view returns (uint256) {
        return dataStore.getAddressCount(Keys.GLV_LIST);
    }

    function getGlvKeys(DataStore dataStore, uint256 start, uint256 end) internal view returns (address[] memory) {
        return dataStore.getAddressValuesAt(Keys.GLV_LIST, start, end);
    }
}

// ============================================================
// FILE: contracts/glv/GlvToken.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "../bank/StrictBank.sol";

contract GlvToken is ERC20, StrictBank {
    constructor(
        RoleStore _roleStore,
        DataStore _dataStore,
        string memory _name,
        string memory _symbol
    ) ERC20(_name, _symbol) StrictBank(_roleStore, _dataStore) {}

    function mint(address account, uint256 amount) external onlyController {
        _mint(account, amount);
    }

    function burn(address account, uint256 amount) external onlyController {
        _burn(account, amount);
    }
}

// ============================================================
// FILE: contracts/glv/GlvUtils.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.0;

import "../data/DataStore.sol";
import "../oracle/IOracle.sol";
import "../market/Market.sol";
import "../market/MarketUtils.sol";
import "./GlvToken.sol";
import "./GlvEventUtils.sol";
import "./GlvStoreUtils.sol";

library GlvUtils {
    using Price for Price.Props;
    using SafeCast for int256;
    using SafeCast for uint256;

    struct GetGlvValueCache {
        bytes32 marketListKey;
        uint256 marketCount;
        uint256 glvValue;
        Price.Props indexTokenPrice;
        Price.Props longTokenPrice;
        Price.Props shortTokenPrice;
    }

    // @dev get the USD value of the GLV
    // @param dataStore DataStore
    // @param oracle IOracle
    // @param glv GLV
    // @param maximize
    // @param forceCalculation if true, the GLV value will be calculated even if the GLV token price is not empty
    // @return the USD value of the GLV
    // NOTE GLV value can be calculated with GLV oracle price, the actual value may be changed slightly after the shift, deposit or withdrawal due to paid fees
    // and the oracle price timestamp always lag behind the current block and may be calculated based on different contracts state
    // so GLV glv value might be slightly inaccurate
    // if accuracy is critical then pass forceCalculation = true
    function getGlvValue(
        DataStore dataStore,
        IOracle oracle,
        address glv,
        bool maximize
    ) public view returns (uint256 glvValue, bool glvTokenPriceUsed) {
        {
            Price.Props memory glvTokenPrice = getGlvTokenPrice(oracle, glv);
            if (!glvTokenPrice.isEmpty()) {
                uint256 supply = ERC20(glv).totalSupply();
                return ((maximize ? glvTokenPrice.max : glvTokenPrice.min) * supply, true);
            }
        }

        GetGlvValueCache memory cache;
        cache.marketListKey = Keys.glvSupportedMarketListKey(glv);
        cache.marketCount = dataStore.getAddressCount(cache.marketListKey);

        address[] memory marketAddresses = dataStore.getAddressValuesAt(cache.marketListKey, 0, cache.marketCount);
        for (uint256 i = 0; i < marketAddresses.length; i++) {
            address marketAddress = marketAddresses[i];
            Market.Props memory market = MarketStoreUtils.get(dataStore, marketAddress);
            if (i == 0) {
                cache.longTokenPrice = oracle.getPrimaryPrice(market.longToken);
                cache.shortTokenPrice = oracle.getPrimaryPrice(market.shortToken);
            }
            cache.glvValue += _getGlvMarketValue(
                dataStore,
                glv,
                marketAddress,
                oracle.getPrimaryPrice(market.indexToken),
                cache.longTokenPrice,
                cache.shortTokenPrice,
                maximize
            );
        }

        return (cache.glvValue, false);
    }

    function getGlvTokenPrice(
        IOracle oracle,
        address glv
    ) internal view returns (Price.Props memory) {
        (uint256 minPrice, uint256 maxPrice) = oracle.primaryPrices(glv);
        Price.Props memory glvTokenPrice = Price.Props(minPrice, maxPrice);
        return glvTokenPrice;
    }

    function getGlvValue(
        DataStore dataStore,
        address[] memory marketAddresses,
        Price.Props[] memory indexTokenPrices,
        Price.Props memory longTokenPrice,
        Price.Props memory shortTokenPrice,
        address glv,
        bool maximize
    ) public view returns (uint256) {
        GetGlvValueCache memory cache;

        for (uint256 i = 0; i < marketAddresses.length; i++) {
            address marketAddress = marketAddresses[i];
            cache.indexTokenPrice = indexTokenPrices[i];

            cache.glvValue += _getGlvMarketValue(
                dataStore,
                glv,
                marketAddress,
                cache.indexTokenPrice,
                longTokenPrice,
                shortTokenPrice,
                maximize
            );
        }

        return cache.glvValue;
    }

    function _getGlvMarketValue(
        DataStore dataStore,
        address glv,
        address marketAddress,
        Price.Props memory indexTokenPrice,
        Price.Props memory longTokenPrice,
        Price.Props memory shortTokenPrice,
        bool maximize
    ) internal view returns (uint256) {
        Market.Props memory market = MarketStoreUtils.get(dataStore, marketAddress);

        uint256 marketTokenSupply = MarketUtils.getMarketTokenSupply(MarketToken(payable(marketAddress)));
        uint256 balance = GlvToken(payable(glv)).tokenBalances(marketAddress);

        if (balance == 0) {
            return 0;
        }

        MarketPoolValueInfo.Props memory marketPoolValueInfo = MarketUtils.getPoolValueInfo(
            dataStore,
            market,
            indexTokenPrice,
            longTokenPrice,
            shortTokenPrice,
            Keys.MAX_PNL_FACTOR_FOR_DEPOSITS,
            maximize
        );

        if (marketPoolValueInfo.poolValue < 0) {
            revert Errors.GlvNegativeMarketPoolValue(glv, marketAddress);
        }

        return
            MarketUtils.marketTokenAmountToUsd(balance, marketPoolValueInfo.poolValue.toUint256(), marketTokenSupply);
    }

    function getGlvTokenPrice(
        DataStore dataStore,
        address[] memory marketAddresses,
        Price.Props[] memory indexTokenPrices,
        Price.Props memory longTokenPrice,
        Price.Props memory shortTokenPrice,
        address glv,
        bool maximize
    ) internal view returns (uint256, uint256, uint256) {
        uint256 value = getGlvValue(
            dataStore,
            marketAddresses,
            indexTokenPrices,
            longTokenPrice,
            shortTokenPrice,
            glv,
            maximize
        );
        uint256 supply = ERC20(glv).totalSupply();

        return _getGlvTokenPrice(value, supply);
    }

    function _getGlvTokenPrice(uint256 value, uint256 supply) internal pure returns (uint256, uint256, uint256) {
        // if the supply is zero then treat the market token price as 1 USD
        if (supply == 0) {
            return (Precision.FLOAT_PRECISION, value, supply);
        }
        if (value == 0) {
            return (0, value, supply);
        }
        return (Precision.mulDiv(Precision.WEI_PRECISION, value, supply), value, supply);
    }

    function usdToGlvTokenAmount(
        uint256 usdValue,
        uint256 glvValue,
        uint256 glvSupply
    ) internal pure returns (uint256) {
        // if the supply and glvValue is zero, use 1 USD as the token price
        if (glvSupply == 0 && glvValue == 0) {
            return Precision.floatToWei(usdValue);
        }

        // if the supply is zero and the glvValue is more than zero,
        // then include the glvValue for the amount of tokens minted so that
        // the market token price after mint would be 1 USD
        if (glvSupply == 0 && glvValue > 0) {
            return Precision.floatToWei(glvValue + usdValue);
        }

        // round market tokens down
        return Precision.mulDiv(glvSupply, usdValue, glvValue);
    }

    function glvTokenAmountToUsd(
        uint256 glvTokenAmount,
        uint256 glvValue,
        uint256 glvSupply
    ) internal pure returns (uint256) {
        if (glvSupply == 0) {
            revert Errors.EmptyGlvTokenSupply();
        }

        return Precision.mulDiv(glvValue, glvTokenAmount, glvSupply);
    }

    function validateGlvMarket(DataStore dataStore, address glv, address market, bool shouldBeEnabled) public view {
        if (!dataStore.containsAddress(Keys.glvSupportedMarketListKey(glv), market)) {
            revert Errors.GlvUnsupportedMarket(glv, market);
        }

        if (shouldBeEnabled && dataStore.getBool(Keys.isGlvMarketDisabledKey(glv, market))) {
            revert Errors.GlvDisabledMarket(glv, market);
        }
    }

    function validateGlv(DataStore dataStore, address glv) public view {
        if (!dataStore.containsAddress(Keys.GLV_LIST, glv)) {
            revert Errors.EmptyGlv(glv);
        }
    }

    function getGlvMarketCount(DataStore dataStore, address glv) external view returns (uint256) {
        return dataStore.getAddressCount(Keys.glvSupportedMarketListKey(glv));
    }

    function validateGlvMarketTokenBalance(
        DataStore dataStore,
        address glv,
        Market.Props memory market,
        uint256 marketPoolValue,
        uint256 marketTokenSupply
    ) external view {
        uint256 maxMarketTokenBalanceUsd = dataStore.getUint(
            Keys.glvMaxMarketTokenBalanceUsdKey(glv, market.marketToken)
        );
        uint256 maxMarketTokenBalanceAmount = dataStore.getUint(
            Keys.glvMaxMarketTokenBalanceAmountKey(glv, market.marketToken)
        );

        if (maxMarketTokenBalanceAmount == 0 && maxMarketTokenBalanceUsd == 0) {
            return;
        }

        uint256 marketTokenBalanceAmount = GlvToken(payable(glv)).tokenBalances(market.marketToken);
        if (maxMarketTokenBalanceAmount > 0 && marketTokenBalanceAmount > maxMarketTokenBalanceAmount) {
            revert Errors.GlvMaxMarketTokenBalanceAmountExceeded(
                glv,
                market.marketToken,
                maxMarketTokenBalanceAmount,
                marketTokenBalanceAmount
            );
        }

        if (maxMarketTokenBalanceUsd > 0) {
            uint256 marketTokenBalanceUsd = MarketUtils.marketTokenAmountToUsd(
                marketTokenBalanceAmount,
                marketPoolValue,
                marketTokenSupply
            );
            if (marketTokenBalanceUsd > maxMarketTokenBalanceUsd) {
                revert Errors.GlvMaxMarketTokenBalanceUsdExceeded(
                    glv,
                    market.marketToken,
                    maxMarketTokenBalanceUsd,
                    marketTokenBalanceUsd
                );
            }
        }
    }

    function addMarketToGlv(
        DataStore dataStore,
        EventEmitter eventEmitter,
        address glvAddress,
        address marketAddress
    ) external {
        validateGlv(dataStore, glvAddress);

        Market.Props memory market = MarketUtils.getEnabledMarket(dataStore, marketAddress);
        Glv.Props memory glv = GlvStoreUtils.get(dataStore, glvAddress);
        if (market.longToken != glv.longToken) {
            revert Errors.GlvInvalidLongToken(glvAddress, market.longToken, glv.longToken);
        }
        if (market.shortToken != glv.shortToken) {
            revert Errors.GlvInvalidShortToken(glvAddress, market.shortToken, glv.shortToken);
        }

        bytes32 key = Keys.glvSupportedMarketListKey(glvAddress);
        if (dataStore.containsAddress(key, marketAddress)) {
            revert Errors.GlvMarketAlreadyExists(glvAddress, marketAddress);
        }
        dataStore.addAddress(key, marketAddress);

        validateGlvMarketCount(dataStore, glvAddress);

        GlvEventUtils.emitGlvMarketAdded(eventEmitter, glvAddress, market.marketToken);
    }

    function validateGlvMarketCount(DataStore dataStore, address glvAddress) internal view {
        uint256 glvMaxMarketCount = dataStore.getUint(Keys.GLV_MAX_MARKET_COUNT);
        if (glvMaxMarketCount > 0) {
            bytes32 key = Keys.glvSupportedMarketListKey(glvAddress);
            uint256 glvMarketCount = dataStore.getAddressCount(key);
            if (glvMarketCount > glvMaxMarketCount) {
                revert Errors.GlvMaxMarketCountExceeded(glvAddress, glvMaxMarketCount);
            }
        }
    }

    function removeMarketFromGlv(
        DataStore dataStore,
        EventEmitter eventEmitter,
        address glvAddress,
        address marketAddress
    ) external {
        validateGlv(dataStore, glvAddress);
        validateGlvMarket(dataStore, glvAddress, marketAddress, false);

        if (!dataStore.getBool(Keys.isGlvMarketDisabledKey(glvAddress, marketAddress))) {
            revert Errors.GlvEnabledMarket(glvAddress, marketAddress);
        }

        uint256 balance = GlvToken(payable(glvAddress)).tokenBalances(marketAddress);
        if (balance != 0) {
            revert Errors.GlvNonZeroMarketBalance(glvAddress, marketAddress);
        }

        bytes32 key = Keys.glvSupportedMarketListKey(glvAddress);
        dataStore.removeAddress(key, marketAddress);

        GlvEventUtils.emitGlvMarketRemoved(eventEmitter, glvAddress, marketAddress);
    }
}

// ============================================================
// FILE: contracts/glv/GlvVault.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.0;

import "../bank/StrictBank.sol";

contract GlvVault is StrictBank {
    constructor(RoleStore _roleStore, DataStore _dataStore) StrictBank(_roleStore, _dataStore) {}
}

// ============================================================
// FILE: contracts/glv/glvWithdrawal/GlvWithdrawal.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.0;

/**
 * @title Withdrawal
 * @dev Struct for withdrawals
 */
library GlvWithdrawal {
    // @dev there is a limit on the number of fields a struct can have when being passed
    // or returned as a memory variable which can cause "Stack too deep" errors
    // use sub-structs to avoid this issue
    // @param addresses address values
    // @param numbers number values
    // @param flags boolean values
    // @param _dataList a list of bytes32 values that can be used for additional data
    struct Props {
        Addresses addresses;
        Numbers numbers;
        Flags flags;
        bytes32[] _dataList;
    }

    // @param account The account to withdraw for.
    // @param receiver The address that will receive the withdrawn tokens.
    // @param callbackContract The contract that will be called back.
    // @param uiFeeReceiver The ui fee receiver.
    // @param market The market on which the withdrawal will be executed.
    // @param glv
    struct Addresses {
        address glv;
        address market;
        address account;
        address receiver;
        address callbackContract;
        address uiFeeReceiver;
        address[] longTokenSwapPath;
        address[] shortTokenSwapPath;
    }

    // @param glvTokenAmount The amount of market tokens that will be withdrawn.
    // @param minLongTokenAmount The minimum amount of long tokens that must be withdrawn.
    // @param minShortTokenAmount The minimum amount of short tokens that must be withdrawn.
    // @param executionFee The execution fee for the withdrawal.
    // @param callbackGasLimit The gas limit for calling the callback contract.
    // @param srcChainId The source chain id.
    struct Numbers {
        uint256 glvTokenAmount;
        uint256 minLongTokenAmount;
        uint256 minShortTokenAmount;
        uint256 updatedAtTime;
        uint256 executionFee;
        uint256 callbackGasLimit;
        uint256 srcChainId;
    }

    // @param shouldUnwrapNativeToken whether to unwrap the native token when
    struct Flags {
        bool shouldUnwrapNativeToken;
    }

    function account(Props memory props) internal pure returns (address) {
        return props.addresses.account;
    }

    function setAccount(Props memory props, address value) internal pure {
        props.addresses.account = value;
    }

    function receiver(Props memory props) internal pure returns (address) {
        return props.addresses.receiver;
    }

    function setReceiver(Props memory props, address value) internal pure {
        props.addresses.receiver = value;
    }

    function callbackContract(Props memory props) internal pure returns (address) {
        return props.addresses.callbackContract;
    }

    function setCallbackContract(Props memory props, address value) internal pure {
        props.addresses.callbackContract = value;
    }

    function uiFeeReceiver(Props memory props) internal pure returns (address) {
        return props.addresses.uiFeeReceiver;
    }

    function setUiFeeReceiver(Props memory props, address value) internal pure {
        props.addresses.uiFeeReceiver = value;
    }

    function market(Props memory props) internal pure returns (address) {
        return props.addresses.market;
    }

    function setMarket(Props memory props, address value) internal pure {
        props.addresses.market = value;
    }

    function glv(Props memory props) internal pure returns (address) {
        return props.addresses.glv;
    }

    function setGlv(Props memory props, address value) internal pure {
        props.addresses.glv = value;
    }

    function longTokenSwapPath(Props memory props) internal pure returns (address[] memory) {
        return props.addresses.longTokenSwapPath;
    }

    function setLongTokenSwapPath(Props memory props, address[] memory value) internal pure {
        props.addresses.longTokenSwapPath = value;
    }

    function shortTokenSwapPath(Props memory props) internal pure returns (address[] memory) {
        return props.addresses.shortTokenSwapPath;
    }

    function setShortTokenSwapPath(Props memory props, address[] memory value) internal pure {
        props.addresses.shortTokenSwapPath = value;
    }

    function glvTokenAmount(Props memory props) internal pure returns (uint256) {
        return props.numbers.glvTokenAmount;
    }

    function setGlvTokenAmount(Props memory props, uint256 value) internal pure {
        props.numbers.glvTokenAmount = value;
    }

    function minLongTokenAmount(Props memory props) internal pure returns (uint256) {
        return props.numbers.minLongTokenAmount;
    }

    function setMinLongTokenAmount(Props memory props, uint256 value) internal pure {
        props.numbers.minLongTokenAmount = value;
    }

    function minShortTokenAmount(Props memory props) internal pure returns (uint256) {
        return props.numbers.minShortTokenAmount;
    }

    function setMinShortTokenAmount(Props memory props, uint256 value) internal pure {
        props.numbers.minShortTokenAmount = value;
    }

    function updatedAtTime(Props memory props) internal pure returns (uint256) {
        return props.numbers.updatedAtTime;
    }

    function setUpdatedAtTime(Props memory props, uint256 value) internal pure {
        props.numbers.updatedAtTime = value;
    }

    function executionFee(Props memory props) internal pure returns (uint256) {
        return props.numbers.executionFee;
    }

    function setExecutionFee(Props memory props, uint256 value) internal pure {
        props.numbers.executionFee = value;
    }

    function callbackGasLimit(Props memory props) internal pure returns (uint256) {
        return props.numbers.callbackGasLimit;
    }

    function setCallbackGasLimit(Props memory props, uint256 value) internal pure {
        props.numbers.callbackGasLimit = value;
    }

    function srcChainId(Props memory props) internal pure returns (uint256) {
        return props.numbers.srcChainId;
    }

    function setSrcChainId(Props memory props, uint256 value) internal pure {
        props.numbers.srcChainId = value;
    }

    function shouldUnwrapNativeToken(Props memory props) internal pure returns (bool) {
        return props.flags.shouldUnwrapNativeToken;
    }

    function setShouldUnwrapNativeToken(Props memory props, bool value) internal pure {
        props.flags.shouldUnwrapNativeToken = value;
    }

    function dataList(Props memory props) internal pure returns (bytes32[] memory) {
        return props._dataList;
    }

    function setDataList(Props memory props, bytes32[] memory value) internal pure {
        props._dataList = value;
    }
}

// ============================================================
// FILE: contracts/glv/glvWithdrawal/GlvWithdrawalEventUtils.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.0;

import "../../event/EventEmitter.sol";
import "../../event/EventUtils.sol";
import "../../utils/Cast.sol";

import "./GlvWithdrawal.sol";

library GlvWithdrawalEventUtils {
    using GlvWithdrawal for GlvWithdrawal.Props;

    using EventUtils for EventUtils.AddressItems;
    using EventUtils for EventUtils.UintItems;
    using EventUtils for EventUtils.IntItems;
    using EventUtils for EventUtils.BoolItems;
    using EventUtils for EventUtils.Bytes32Items;
    using EventUtils for EventUtils.BytesItems;
    using EventUtils for EventUtils.StringItems;

    function emitGlvWithdrawalCreated(
        EventEmitter eventEmitter,
        bytes32 key,
        GlvWithdrawal.Props memory glvWithdrawal
    ) external {
        EventUtils.EventLogData memory eventData = createEventData(glvWithdrawal);

        eventData.bytes32Items.initItems(1);
        eventData.bytes32Items.setItem(0, "key", key);

        eventEmitter.emitEventLog2("GlvWithdrawalCreated", key, Cast.toBytes32(glvWithdrawal.account()), eventData);
    }

    function emitGlvWithdrawalExecuted(EventEmitter eventEmitter, bytes32 key, address account) external {
        EventUtils.EventLogData memory eventData;

        eventData.bytes32Items.initItems(1);
        eventData.bytes32Items.setItem(0, "key", key);

        eventData.addressItems.initItems(1);
        eventData.addressItems.setItem(0, "account", account);

        eventEmitter.emitEventLog2("GlvWithdrawalExecuted", key, Cast.toBytes32(account), eventData);
    }

    function emitGlvWithdrawalCancelled(
        EventEmitter eventEmitter,
        bytes32 key,
        address account,
        string memory reason,
        bytes memory reasonBytes
    ) external {
        EventUtils.EventLogData memory eventData;

        eventData.bytes32Items.initItems(1);
        eventData.bytes32Items.setItem(0, "key", key);

        eventData.addressItems.initItems(1);
        eventData.addressItems.setItem(0, "account", account);

        eventData.stringItems.initItems(1);
        eventData.stringItems.setItem(0, "reason", reason);

        eventData.bytesItems.initItems(1);
        eventData.bytesItems.setItem(0, "reasonBytes", reasonBytes);

        eventEmitter.emitEventLog2("GlvWithdrawalCancelled", key, Cast.toBytes32(account), eventData);
    }

    function createEventData(GlvWithdrawal.Props memory glvWithdrawal) public pure returns (EventUtils.EventLogData memory) {
        EventUtils.EventLogData memory eventData;

        eventData.addressItems.initItems(6);
        eventData.addressItems.setItem(0, "account", glvWithdrawal.account());
        eventData.addressItems.setItem(1, "receiver", glvWithdrawal.receiver());
        eventData.addressItems.setItem(2, "callbackContract", glvWithdrawal.callbackContract());
        eventData.addressItems.setItem(3, "market", glvWithdrawal.market());
        eventData.addressItems.setItem(4, "glv", glvWithdrawal.glv());
        eventData.addressItems.setItem(5, "uiFeeReceiver", glvWithdrawal.uiFeeReceiver());

        eventData.addressItems.initArrayItems(2);
        eventData.addressItems.setItem(0, "longTokenSwapPath", glvWithdrawal.longTokenSwapPath());
        eventData.addressItems.setItem(1, "shortTokenSwapPath", glvWithdrawal.shortTokenSwapPath());

        eventData.uintItems.initItems(7);
        eventData.uintItems.setItem(0, "glvTokenAmount", glvWithdrawal.glvTokenAmount());
        eventData.uintItems.setItem(1, "minLongTokenAmount", glvWithdrawal.minLongTokenAmount());
        eventData.uintItems.setItem(2, "minShortTokenAmount", glvWithdrawal.minShortTokenAmount());
        eventData.uintItems.setItem(3, "updatedAtTime", glvWithdrawal.updatedAtTime());
        eventData.uintItems.setItem(4, "executionFee", glvWithdrawal.executionFee());
        eventData.uintItems.setItem(5, "callbackGasLimit", glvWithdrawal.callbackGasLimit());
        eventData.uintItems.setItem(6, "srcChainId", glvWithdrawal.srcChainId());

        eventData.boolItems.initItems(1);
        eventData.boolItems.setItem(0, "shouldUnwrapNativeToken", glvWithdrawal.shouldUnwrapNativeToken());

        eventData.bytes32Items.initArrayItems(1);
        eventData.bytes32Items.setItem(0, "dataList", glvWithdrawal.dataList());
        return eventData;
    }
}

// ============================================================
// FILE: contracts/market/Market.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.0;

// @title Market
// @dev Struct for markets
//
// Markets support both spot and perp trading, they are created by specifying a
// long collateral token, short collateral token and index token.
//
// Examples:
//
// - ETH/USD market with long collateral as ETH, short collateral as a stablecoin, index token as ETH
// - BTC/USD market with long collateral as WBTC, short collateral as a stablecoin, index token as BTC
// - SOL/USD market with long collateral as ETH, short collateral as a stablecoin, index token as SOL
//
// Liquidity providers can deposit either the long or short collateral token or
// both to mint liquidity tokens.
//
// The long collateral token is used to back long positions, while the short
// collateral token is used to back short positions.
//
// Liquidity providers take on the profits and losses of traders for the market
// that they provide liquidity for.
//
// Having separate markets allows for risk isolation, liquidity providers are
// only exposed to the markets that they deposit into, this potentially allow
// for permissionless listings.
//
// Traders can use either the long or short token as collateral for the market.
library Market {
    // @param marketToken address of the market token for the market
    // @param indexToken address of the index token for the market
    // @param longToken address of the long token for the market
    // @param shortToken address of the short token for the market
    // @param data for any additional data
    struct Props {
        address marketToken;
        address indexToken;
        address longToken;
        address shortToken;
    }
}

// ============================================================
// FILE: contracts/market/MarketEventUtils.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.0;

import "../event/EventEmitter.sol";
import "../event/EventUtils.sol";
import "../utils/Cast.sol";

import "./MarketPoolValueInfo.sol";

library MarketEventUtils {
    using EventUtils for EventUtils.AddressItems;
    using EventUtils for EventUtils.UintItems;
    using EventUtils for EventUtils.IntItems;
    using EventUtils for EventUtils.BoolItems;
    using EventUtils for EventUtils.Bytes32Items;
    using EventUtils for EventUtils.BytesItems;
    using EventUtils for EventUtils.StringItems;

    // this event is emitted before a deposit or withdrawal
    // it provides information of the pool state so that the amount
    // of market tokens minted or amount withdrawn from the pool can be checked
    function emitMarketPoolValueInfo(
        EventEmitter eventEmitter,
        bytes32 tradeKey,
        address market,
        MarketPoolValueInfo.Props memory props,
        uint256 marketTokensSupply
    ) external {
        EventUtils.EventLogData memory eventData;

        eventData.bytes32Items.initItems(1);
        eventData.bytes32Items.setItem(0, "tradeKey", tradeKey);

        eventData.addressItems.initItems(1);
        eventData.addressItems.setItem(0, "market", market);

        eventData.intItems.initItems(4);
        eventData.intItems.setItem(0, "poolValue", props.poolValue);
        eventData.intItems.setItem(1, "longPnl", props.longPnl);
        eventData.intItems.setItem(2, "shortPnl", props.shortPnl);
        eventData.intItems.setItem(3, "netPnl", props.netPnl);

        eventData.uintItems.initItems(8);
        eventData.uintItems.setItem(0, "longTokenAmount", props.longTokenAmount);
        eventData.uintItems.setItem(1, "shortTokenAmount", props.shortTokenAmount);
        eventData.uintItems.setItem(2, "longTokenUsd", props.longTokenUsd);
        eventData.uintItems.setItem(3, "shortTokenUsd", props.shortTokenUsd);
        eventData.uintItems.setItem(4, "totalBorrowingFees", props.totalBorrowingFees);
        eventData.uintItems.setItem(5, "borrowingFeePoolFactor", props.borrowingFeePoolFactor);
        eventData.uintItems.setItem(6, "impactPoolAmount", props.impactPoolAmount);
        eventData.uintItems.setItem(7, "marketTokensSupply", marketTokensSupply);

        eventEmitter.emitEventLog1(
            "MarketPoolValueInfo",
            Cast.toBytes32(market),
            eventData
        );
    }

    // this event is emitted after a deposit or withdrawal
    // it provides information of the updated pool state
    // note that the pool state can change even without a deposit / withdrawal
    // e.g. borrowing fees can increase the pool's value with time, trader pnl
    // will change as index prices change
    function emitMarketPoolValueUpdated(
        EventEmitter eventEmitter,
        bytes32 actionType,
        bytes32 tradeKey,
        address market,
        MarketPoolValueInfo.Props memory props,
        uint256 marketTokensSupply
    ) external {
        EventUtils.EventLogData memory eventData;

        eventData.bytes32Items.initItems(2);
        eventData.bytes32Items.setItem(0, "actionType", actionType);
        eventData.bytes32Items.setItem(1, "tradeKey", tradeKey);

        eventData.addressItems.initItems(1);
        eventData.addressItems.setItem(0, "market", market);

        eventData.intItems.initItems(4);
        eventData.intItems.setItem(0, "poolValue", props.poolValue);
        eventData.intItems.setItem(1, "longPnl", props.longPnl);
        eventData.intItems.setItem(2, "shortPnl", props.shortPnl);
        eventData.intItems.setItem(3, "netPnl", props.netPnl);

        eventData.uintItems.initItems(8);
        eventData.uintItems.setItem(0, "longTokenAmount", props.longTokenAmount);
        eventData.uintItems.setItem(1, "shortTokenAmount", props.shortTokenAmount);
        eventData.uintItems.setItem(2, "longTokenUsd", props.longTokenUsd);
        eventData.uintItems.setItem(3, "shortTokenUsd", props.shortTokenUsd);
        eventData.uintItems.setItem(4, "totalBorrowingFees", props.totalBorrowingFees);
        eventData.uintItems.setItem(5, "borrowingFeePoolFactor", props.borrowingFeePoolFactor);
        eventData.uintItems.setItem(6, "impactPoolAmount", props.impactPoolAmount);
        eventData.uintItems.setItem(7, "marketTokensSupply", marketTokensSupply);

        eventEmitter.emitEventLog1(
            "MarketPoolValueUpdated",
            Cast.toBytes32(market),
            eventData
        );
    }

    function emitPoolAmountUpdated(
        EventEmitter eventEmitter,
        address market,
        address token,
        int256 delta,
        uint256 nextValue
    ) external {
        EventUtils.EventLogData memory eventData;

        eventData.addressItems.initItems(2);
        eventData.addressItems.setItem(0, "market", market);
        eventData.addressItems.setItem(1, "token", token);

        eventData.intItems.initItems(1);
        eventData.intItems.setItem(0, "delta", delta);

        eventData.uintItems.initItems(1);
        eventData.uintItems.setItem(0, "nextValue", nextValue);

        eventEmitter.emitEventLog1(
            "PoolAmountUpdated",
            Cast.toBytes32(market),
            eventData
        );
    }

    function emitSwapImpactPoolAmountUpdated(
        EventEmitter eventEmitter,
        address market,
        address token,
        int256 delta,
        uint256 nextValue
    ) external {
        EventUtils.EventLogData memory eventData;

        eventData.addressItems.initItems(2);
        eventData.addressItems.setItem(0, "market", market);
        eventData.addressItems.setItem(1, "token", token);

        eventData.intItems.initItems(1);
        eventData.intItems.setItem(0, "delta", delta);

        eventData.uintItems.initItems(1);
        eventData.uintItems.setItem(0, "nextValue", nextValue);

        eventEmitter.emitEventLog1(
            "SwapImpactPoolAmountUpdated",
            Cast.toBytes32(market),
            eventData
        );
    }

    function emitPositionImpactPoolDistributed(
        EventEmitter eventEmitter,
        address market,
        uint256 distributionAmount,
        uint256 nextPositionImpactPoolAmount
    ) external {
        EventUtils.EventLogData memory eventData;

        eventData.addressItems.initItems(1);
        eventData.addressItems.setItem(0, "market", market);

        eventData.uintItems.initItems(2);
        eventData.uintItems.setItem(0, "distributionAmount", distributionAmount);
        eventData.uintItems.setItem(1, "nextPositionImpactPoolAmount", nextPositionImpactPoolAmount);

        eventEmitter.emitEventLog1(
            "PositionImpactPoolDistributed",
            Cast.toBytes32(market),
            eventData
        );
    }

    function emitTotalPendingImpactAmountUpdated(
        EventEmitter eventEmitter,
        address market,
        int256 delta,
        int256 nextValue
    ) external {
        EventUtils.EventLogData memory eventData;

        eventData.addressItems.initItems(1);
        eventData.addressItems.setItem(0, "market", market);

        eventData.intItems.initItems(2);
        eventData.intItems.setItem(0, "delta", delta);
        eventData.intItems.setItem(1, "nextValue", nextValue);

        eventEmitter.emitEventLog1(
            "TotalPendingImpactAmountUpdated",
            Cast.toBytes32(market),
            eventData
        );
    }

    function emitPositionImpactPoolAmountUpdated(
        EventEmitter eventEmitter,
        address market,
        int256 delta,
        uint256 nextValue
    ) external {
        EventUtils.EventLogData memory eventData;

        eventData.addressItems.initItems(1);
        eventData.addressItems.setItem(0, "market", market);

        eventData.intItems.initItems(1);
        eventData.intItems.setItem(0, "delta", delta);

        eventData.uintItems.initItems(1);
        eventData.uintItems.setItem(0, "nextValue", nextValue);

        eventEmitter.emitEventLog1(
            "PositionImpactPoolAmountUpdated",
            Cast.toBytes32(market),
            eventData
        );
    }

    function emitLentPositionImpactPoolAmountUpdated(
        EventEmitter eventEmitter,
        address market,
        int256 delta,
        uint256 nextValue
    ) external {
        EventUtils.EventLogData memory eventData;

        eventData.addressItems.initItems(1);
        eventData.addressItems.setItem(0, "market", market);

        eventData.intItems.initItems(1);
        eventData.intItems.setItem(0, "delta", delta);

        eventData.uintItems.initItems(1);
        eventData.uintItems.setItem(0, "nextValue", nextValue);

        eventEmitter.emitEventLog1(
            "LentPositionImpactPoolAmountUpdated",
            Cast.toBytes32(market),
            eventData
        );
    }

    function emitOpenInterestUpdated(
        EventEmitter eventEmitter,
        address market,
        address collateralToken,
        bool isLong,
        int256 delta,
        uint256 nextValue
    ) external {
        EventUtils.EventLogData memory eventData;

        eventData.addressItems.initItems(2);
        eventData.addressItems.setItem(0, "market", market);
        eventData.addressItems.setItem(1, "collateralToken", collateralToken);

        eventData.boolItems.initItems(1);
        eventData.boolItems.setItem(0, "isLong", isLong);

        eventData.intItems.initItems(1);
        eventData.intItems.setItem(0, "delta", delta);

        eventData.uintItems.initItems(1);
        eventData.uintItems.setItem(0, "nextValue", nextValue);

        eventEmitter.emitEventLog1(
            "OpenInterestUpdated",
            Cast.toBytes32(market),
            eventData
        );
    }

    function emitVirtualSwapInventoryUpdated(
        EventEmitter eventEmitter,
        address market,
        bool isLongToken,
        bytes32 virtualMarketId,
        int256 delta,
        uint256 nextValue
    ) external {
        EventUtils.EventLogData memory eventData;

        eventData.addressItems.initItems(1);
        eventData.addressItems.setItem(0, "market", market);

        eventData.boolItems.initItems(1);
        eventData.boolItems.setItem(0, "isLongToken", isLongToken);

        eventData.bytes32Items.initItems(1);
        eventData.bytes32Items.setItem(0, "virtualMarketId", virtualMarketId);

        eventData.intItems.initItems(1);
        eventData.intItems.setItem(0, "delta", delta);

        eventData.uintItems.initItems(1);
        eventData.uintItems.setItem(0, "nextValue", nextValue);

        eventEmitter.emitEventLog2(
            "VirtualSwapInventoryUpdated",
            Cast.toBytes32(market),
            virtualMarketId,
            eventData
        );
    }

    function emitVirtualPositionInventoryUpdated(
        EventEmitter eventEmitter,
        address token,
        bytes32 virtualTokenId,
        int256 delta,
        int256 nextValue
    ) external {
        EventUtils.EventLogData memory eventData;

        eventData.addressItems.initItems(1);
        eventData.addressItems.setItem(0, "token", token);

        eventData.bytes32Items.initItems(1);
        eventData.bytes32Items.setItem(0, "virtualTokenId", virtualTokenId);

        eventData.intItems.initItems(2);
        eventData.intItems.setItem(0, "delta", delta);
        eventData.intItems.setItem(1, "nextValue", nextValue);

        eventEmitter.emitEventLog2(
            "VirtualPositionInventoryUpdated",
            Cast.toBytes32(token),
            virtualTokenId,
            eventData
        );
    }

    function emitOpenInterestInTokensUpdated(
        EventEmitter eventEmitter,
        address market,
        address collateralToken,
        bool isLong,
        int256 delta,
        uint256 nextValue
    ) external {
        EventUtils.EventLogData memory eventData;

        eventData.addressItems.initItems(2);
        eventData.addressItems.setItem(0, "market", market);
        eventData.addressItems.setItem(1, "collateralToken", collateralToken);

        eventData.boolItems.initItems(1);
        eventData.boolItems.setItem(0, "isLong", isLong);

        eventData.intItems.initItems(1);
        eventData.intItems.setItem(0, "delta", delta);

        eventData.uintItems.initItems(1);
        eventData.uintItems.setItem(0, "nextValue", nextValue);

        eventEmitter.emitEventLog1(
            "OpenInterestInTokensUpdated",
            Cast.toBytes32(market),
            eventData
        );
    }

    function emitCollateralSumUpdated(
        EventEmitter eventEmitter,
        address market,
        address collateralToken,
        bool isLong,
        int256 delta,
        uint256 nextValue
    ) external {
        EventUtils.EventLogData memory eventData;

        eventData.addressItems.initItems(2);
        eventData.addressItems.setItem(0, "market", market);
        eventData.addressItems.setItem(1, "collateralToken", collateralToken);

        eventData.boolItems.initItems(1);
        eventData.boolItems.setItem(0, "isLong", isLong);

        eventData.intItems.initItems(1);
        eventData.intItems.setItem(0, "delta", delta);

        eventData.uintItems.initItems(1);
        eventData.uintItems.setItem(0, "nextValue", nextValue);

        eventEmitter.emitEventLog1(
            "CollateralSumUpdated",
            Cast.toBytes32(market),
            eventData
        );
    }

    function emitBorrowing(
        EventEmitter eventEmitter,
        address market,
        uint256 borrowingFactorPerSecond
    ) external {
        EventUtils.EventLogData memory eventData;

        eventData.addressItems.initItems(1);
        eventData.addressItems.setItem(0, "market", market);

        eventData.uintItems.initItems(1);
        eventData.uintItems.setItem(0, "borrowingFactorPerSecond", borrowingFactorPerSecond);

        eventEmitter.emitEventLog1(
            "Borrowing",
            Cast.toBytes32(market),
            eventData
        );
    }

    function emitBorrowingFactorUpdated(
        EventEmitter eventEmitter,
        address market,
        bool isLong,
        uint256 delta,
        uint256 nextValue
    ) external {
        EventUtils.EventLogData memory eventData;

        eventData.addressItems.initItems(1);
        eventData.addressItems.setItem(0, "market", market);

        eventData.boolItems.initItems(1);
        eventData.boolItems.setItem(0, "isLong", isLong);

        eventData.uintItems.initItems(2);
        eventData.uintItems.setItem(0, "delta", delta);
        eventData.uintItems.setItem(1, "nextValue", nextValue);

        eventEmitter.emitEventLog1(
            "CumulativeBorrowingFactorUpdated",
            Cast.toBytes32(market),
            eventData
        );
    }

    function emitFunding(
        EventEmitter eventEmitter,
        address market,
        uint256 fundingFactorPerSecond
    ) external {
        EventUtils.EventLogData memory eventData;

        eventData.addressItems.initItems(1);
        eventData.addressItems.setItem(0, "market", market);

        eventData.uintItems.initItems(1);
        eventData.uintItems.setItem(0, "fundingFactorPerSecond", fundingFactorPerSecond);

        eventEmitter.emitEventLog1(
            "Funding",
            Cast.toBytes32(market),
            eventData
        );
    }

    function emitFundingFeeAmountPerSizeUpdated(
        EventEmitter eventEmitter,
        address market,
        address collateralToken,
        bool isLong,
        uint256 delta,
        uint256 value
    ) external {
        EventUtils.EventLogData memory eventData;

        eventData.addressItems.initItems(2);
        eventData.addressItems.setItem(0, "market", market);
        eventData.addressItems.setItem(1, "collateralToken", collateralToken);

        eventData.boolItems.initItems(1);
        eventData.boolItems.setItem(0, "isLong", isLong);

        eventData.uintItems.initItems(2);
        eventData.uintItems.setItem(0, "delta", delta);
        eventData.uintItems.setItem(1, "value", value);

        eventEmitter.emitEventLog1(
            "FundingFeeAmountPerSizeUpdated",
            Cast.toBytes32(market),
            eventData
        );
    }

    function emitClaimableFundingAmountPerSizeUpdated(
        EventEmitter eventEmitter,
        address market,
        address collateralToken,
        bool isLong,
        uint256 delta,
        uint256 value
    ) external {
        EventUtils.EventLogData memory eventData;

        eventData.addressItems.initItems(2);
        eventData.addressItems.setItem(0, "market", market);
        eventData.addressItems.setItem(1, "collateralToken", collateralToken);

        eventData.boolItems.initItems(1);
        eventData.boolItems.setItem(0, "isLong", isLong);

        eventData.uintItems.initItems(2);
        eventData.uintItems.setItem(0, "delta", delta);
        eventData.uintItems.setItem(1, "value", value);

        eventEmitter.emitEventLog1(
            "ClaimableFundingAmountPerSizeUpdated",
            Cast.toBytes32(market),
            eventData
        );
    }

    function emitClaimableFundingUpdated(
        EventEmitter eventEmitter,
        address market,
        address token,
        address account,
        uint256 delta,
        uint256 nextValue,
        uint256 nextPoolValue
    ) external {
        EventUtils.EventLogData memory eventData;

        eventData.addressItems.initItems(3);
        eventData.addressItems.setItem(0, "market", market);
        eventData.addressItems.setItem(1, "token", token);
        eventData.addressItems.setItem(2, "account", account);

        eventData.uintItems.initItems(3);
        eventData.uintItems.setItem(0, "delta", delta);
        eventData.uintItems.setItem(1, "nextValue", nextValue);
        eventData.uintItems.setItem(2, "nextPoolValue", nextPoolValue);

        eventEmitter.emitEventLog1(
            "ClaimableFundingUpdated",
            Cast.toBytes32(account),
            eventData
        );
    }

    function emitFundingFeesClaimed(
        EventEmitter eventEmitter,
        address market,
        address token,
        address account,
        address receiver,
        uint256 amount,
        uint256 nextPoolValue
    ) external {
        EventUtils.EventLogData memory eventData;

        eventData.addressItems.initItems(4);
        eventData.addressItems.setItem(0, "market", market);
        eventData.addressItems.setItem(1, "token", token);
        eventData.addressItems.setItem(2, "account", account);
        eventData.addressItems.setItem(3, "receiver", receiver);

        eventData.uintItems.initItems(2);
        eventData.uintItems.setItem(0, "amount", amount);
        eventData.uintItems.setItem(1, "nextPoolValue", nextPoolValue);

        eventEmitter.emitEventLog1(
            "FundingFeesClaimed",
            Cast.toBytes32(account),
            eventData
        );
    }

    function emitClaimableFundingUpdated(
        EventEmitter eventEmitter,
        address market,
        address token,
        uint256 timeKey,
        address account,
        uint256 delta,
        uint256 nextValue
    ) external {
        EventUtils.EventLogData memory eventData;

        eventData.addressItems.initItems(3);
        eventData.addressItems.setItem(0, "market", market);
        eventData.addressItems.setItem(1, "token", token);
        eventData.addressItems.setItem(2, "account", account);

        eventData.uintItems.initItems(3);
        eventData.uintItems.setItem(0, "timeKey", timeKey);
        eventData.uintItems.setItem(1, "delta", delta);
        eventData.uintItems.setItem(2, "nextValue", nextValue);

        eventEmitter.emitEventLog1(
            "ClaimableFundingUpdated",
            Cast.toBytes32(account),
            eventData
        );
    }

    function emitClaimableCollateralUpdated(
        EventEmitter eventEmitter,
        address market,
        address token,
        uint256 timeKey,
        address account,
        uint256 delta,
        uint256 nextValue,
        uint256 nextPoolValue
    ) external {
        EventUtils.EventLogData memory eventData;

        eventData.addressItems.initItems(3);
        eventData.addressItems.setItem(0, "market", market);
        eventData.addressItems.setItem(1, "token", token);
        eventData.addressItems.setItem(2, "account", account);

        eventData.uintItems.initItems(4);
        eventData.uintItems.setItem(0, "timeKey", timeKey);
        eventData.uintItems.setItem(1, "delta", delta);
        eventData.uintItems.setItem(2, "nextValue", nextValue);
        eventData.uintItems.setItem(3, "nextPoolValue", nextPoolValue);

        eventEmitter.emitEventLog1(
            "ClaimableCollateralUpdated",
            Cast.toBytes32(account),
            eventData
        );
    }

    function emitCollateralClaimed(
        EventEmitter eventEmitter,
        address market,
        address token,
        uint256 timeKey,
        address account,
        address receiver,
        uint256 amount,
        uint256 nextPoolValue
    ) external {
        EventUtils.EventLogData memory eventData;

        eventData.addressItems.initItems(4);
        eventData.addressItems.setItem(0, "market", market);
        eventData.addressItems.setItem(1, "token", token);
        eventData.addressItems.setItem(2, "account", account);
        eventData.addressItems.setItem(3, "receiver", receiver);

        eventData.uintItems.initItems(3);
        eventData.uintItems.setItem(0, "timeKey", timeKey);
        eventData.uintItems.setItem(1, "amount", amount);
        eventData.uintItems.setItem(2, "nextPoolValue", nextPoolValue);

        eventEmitter.emitEventLog1(
            "CollateralClaimed",
            Cast.toBytes32(account),
            eventData
        );
    }

    function emitUiFeeFactorUpdated(
        EventEmitter eventEmitter,
        address account,
        uint256 uiFeeFactor
    ) external {

        EventUtils.EventLogData memory eventData;

        eventData.addressItems.initItems(1);
        eventData.addressItems.setItem(0, "account", account);

        eventData.uintItems.initItems(1);
        eventData.uintItems.setItem(0, "uiFeeFactor", uiFeeFactor);

        eventEmitter.emitEventLog1(
            "UiFeeFactorUpdated",
            Cast.toBytes32(account),
            eventData
        );
    }

    function emitPositionImpactPoolWithdrawal(
        EventEmitter eventEmitter,
        address market,
        address receiver,
        uint256 amount
    ) external {
        EventUtils.EventLogData memory eventData;

        eventData.addressItems.initItems(2);
        eventData.addressItems.setItem(0, "market", market);
        eventData.addressItems.setItem(1, "receiver", receiver);

        eventData.uintItems.initItems(1);
        eventData.uintItems.setItem(0, "amount", amount);

        eventEmitter.emitEventLog1(
            "PositionImpactPoolWithdrawal",
            Cast.toBytes32(market),
            eventData
        );
    }

    function emitLentImpactAmountReduction(
        EventEmitter eventEmitter,
        address market,
        address fundingAccount,
        uint256 longTokenAmount,
        uint256 shortTokenAmount,
        uint256 reductionAmount
    ) external {
        EventUtils.EventLogData memory eventData;

        eventData.addressItems.initItems(2);
        eventData.addressItems.setItem(0, "market", market);
        eventData.addressItems.setItem(1, "fundingAccount", fundingAccount);

        eventData.uintItems.initItems(3);
        eventData.uintItems.setItem(0, "longTokenAmount", longTokenAmount);
        eventData.uintItems.setItem(1, "shortTokenAmount", shortTokenAmount);
        eventData.uintItems.setItem(2, "reductionAmount", reductionAmount);

        eventEmitter.emitEventLog1(
            "LentImpactAmountReduction",
            Cast.toBytes32(market),
            eventData
        );
    }
}

// ============================================================
// FILE: contracts/market/MarketPoolValueInfo.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.0;

// @title MarketPoolInfo
library MarketPoolValueInfo {
    // @dev struct to avoid stack too deep errors for the getPoolValue call
    // @param poolValue the value of the pool in USD
    // @param longPnl the pending pnl of long positions
    // @param shortPnl the pending pnl of short positions
    // @param netPnl the net pnl of long and short positions
    // @param longTokenAmount the amount of long token in the pool
    // @param shortTokenAmount the amount of short token in the pool
    // @param longTokenUsd the USD value of the long tokens in the pool
    // @param shortTokenUsd the USD value of the short tokens in the pool
    // @param totalBorrowingFees the total pending borrowing fees for the market
    // @param borrowingFeePoolFactor the pool factor for borrowing fees
    // @param impactPoolAmount the amount of tokens in the impact pool
    // @param lentImpactPoolAmount the amount lent if impact pool is less than the positive price impact
    struct Props {
        int256 poolValue;
        int256 longPnl;
        int256 shortPnl;
        int256 netPnl;

        uint256 longTokenAmount;
        uint256 shortTokenAmount;
        uint256 longTokenUsd;
        uint256 shortTokenUsd;

        uint256 totalBorrowingFees;
        uint256 borrowingFeePoolFactor;

        uint256 impactPoolAmount;
        uint256 lentImpactPoolAmount;
    }
}

// ============================================================
// FILE: contracts/market/MarketStoreUtils.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.0;

import "../data/Keys.sol";
import "../data/DataStore.sol";

import "./Market.sol";

/**
 * @title MarketStoreUtils
 * @dev Library for market storage functions
 */
library MarketStoreUtils {
    using Market for Market.Props;

    bytes32 public constant MARKET_SALT = keccak256(abi.encode("MARKET_SALT"));
    bytes32 public constant MARKET_KEY = keccak256(abi.encode("MARKET_KEY"));
    bytes32 public constant MARKET_TOKEN = keccak256(abi.encode("MARKET_TOKEN"));
    bytes32 public constant INDEX_TOKEN = keccak256(abi.encode("INDEX_TOKEN"));
    bytes32 public constant LONG_TOKEN = keccak256(abi.encode("LONG_TOKEN"));
    bytes32 public constant SHORT_TOKEN = keccak256(abi.encode("SHORT_TOKEN"));

    function get(DataStore dataStore, address key) public view returns (Market.Props memory) {
        Market.Props memory market;
        if (!dataStore.containsAddress(Keys.MARKET_LIST, key)) {
            return market;
        }

        market.marketToken = dataStore.getAddress(
            keccak256(abi.encode(key, MARKET_TOKEN))
        );

        market.indexToken = dataStore.getAddress(
            keccak256(abi.encode(key, INDEX_TOKEN))
        );

        market.longToken = dataStore.getAddress(
            keccak256(abi.encode(key, LONG_TOKEN))
        );

        market.shortToken = dataStore.getAddress(
            keccak256(abi.encode(key, SHORT_TOKEN))
        );

        return market;
    }

    function getBySalt(DataStore dataStore, bytes32 salt) external view returns (Market.Props memory) {
        address key = dataStore.getAddress(getMarketSaltHash(salt));
        return get(dataStore, key);
    }

    function set(DataStore dataStore, address key, bytes32 salt, Market.Props memory market) external {
        dataStore.addAddress(
            Keys.MARKET_LIST,
            key
        );

        // the salt is based on the market props while the key gives the market's address
        // use the salt to store a reference to the key to allow the key to be retrieved
        // using just the salt value
        dataStore.setAddress(
            getMarketSaltHash(salt),
            key
        );

        dataStore.setAddress(
            keccak256(abi.encode(key, MARKET_TOKEN)),
            market.marketToken
        );

        dataStore.setAddress(
            keccak256(abi.encode(key, INDEX_TOKEN)),
            market.indexToken
        );

        dataStore.setAddress(
            keccak256(abi.encode(key, LONG_TOKEN)),
            market.longToken
        );

        dataStore.setAddress(
            keccak256(abi.encode(key, SHORT_TOKEN)),
            market.shortToken
        );
    }

    function remove(DataStore dataStore, address key, bytes32 salt) external {
        if (!dataStore.containsAddress(Keys.MARKET_LIST, key)) {
            revert Errors.MarketNotFound(key);
        }

        dataStore.removeAddress(
            Keys.MARKET_LIST,
            key
        );

        dataStore.removeAddress(
            keccak256(abi.encode(key, MARKET_TOKEN))
        );

        dataStore.removeAddress(
            keccak256(abi.encode(key, INDEX_TOKEN))
        );

        dataStore.removeAddress(
            keccak256(abi.encode(key, LONG_TOKEN))
        );

        dataStore.removeAddress(
            keccak256(abi.encode(key, SHORT_TOKEN))
        );

        dataStore.removeAddress(
            getMarketSaltHash(salt)
        );
    }

    function getMarketSaltHash(bytes32 salt) internal pure returns (bytes32) {
        return keccak256(abi.encode(MARKET_SALT, salt));
    }

    function getMarketCount(DataStore dataStore) internal view returns (uint256) {
        return dataStore.getAddressCount(Keys.MARKET_LIST);
    }

    function getMarketKeys(DataStore dataStore, uint256 start, uint256 end) internal view returns (address[] memory) {
        return dataStore.getAddressValuesAt(Keys.MARKET_LIST, start, end);
    }
}

// ============================================================
// FILE: contracts/market/MarketToken.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "../bank/Bank.sol";

// @title MarketToken
// @dev The market token for a market, stores funds for the market and keeps track
// of the liquidity owners
contract MarketToken is ERC20, Bank {
    constructor(RoleStore _roleStore, DataStore _dataStore) ERC20("GMX Market", "GM") Bank(_roleStore, _dataStore) {
    }

    // @dev mint market tokens to an account
    // @param account the account to mint to
    // @param amount the amount of tokens to mint
    function mint(address account, uint256 amount) external onlyController {
        _mint(account, amount);
    }

    // @dev burn market tokens from an account
    // @param account the account to burn tokens for
    // @param amount the amount of tokens to burn
    function burn(address account, uint256 amount) external onlyController {
        _burn(account, amount);
    }
}

// ============================================================
// FILE: contracts/market/MarketUtils.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/utils/math/SafeCast.sol";

import "../data/DataStore.sol";
import "../event/EventEmitter.sol";

import "./Market.sol";
import "./MarketPoolValueInfo.sol";
import "./MarketToken.sol";
import "./MarketEventUtils.sol";
import "./MarketStoreUtils.sol";

import "../position/Position.sol";
import "../order/Order.sol";

import "../oracle/IOracle.sol";
import "../price/Price.sol";

import "../utils/Calc.sol";
import "../utils/Precision.sol";

import "../feature/FeatureUtils.sol";

// @title MarketUtils
// @dev Library for market functions
library MarketUtils {
    using SignedMath for int256;
    using SafeCast for int256;
    using SafeCast for uint256;

    using Market for Market.Props;
    using Position for Position.Props;
    using Order for Order.Props;
    using Price for Price.Props;

    enum FundingRateChangeType {
        NoChange,
        Increase,
        Decrease
    }

    // @dev struct to store the prices of tokens of a market
    // @param indexTokenPrice price of the market's index token
    // @param longTokenPrice price of the market's long token
    // @param shortTokenPrice price of the market's short token
    struct MarketPrices {
        Price.Props indexTokenPrice;
        Price.Props longTokenPrice;
        Price.Props shortTokenPrice;
    }

    struct CollateralType {
        uint256 longToken;
        uint256 shortToken;
    }

    struct PositionType {
        CollateralType long;
        CollateralType short;
    }

    // @dev struct for the result of the getNextFundingAmountPerSize call
    // note that abs(nextSavedFundingFactorPerSecond) may not equal the fundingFactorPerSecond
    // see getNextFundingFactorPerSecond for more info
    struct GetNextFundingAmountPerSizeResult {
        bool longsPayShorts;
        uint256 fundingFactorPerSecond;
        int256 nextSavedFundingFactorPerSecond;

        PositionType fundingFeeAmountPerSizeDelta;
        PositionType claimableFundingAmountPerSizeDelta;
    }

    struct GetNextFundingAmountPerSizeCache {
        PositionType openInterest;

        uint256 longOpenInterest;
        uint256 shortOpenInterest;

        uint256 durationInSeconds;

        uint256 sizeOfPayingSide;
        uint256 fundingUsd;

        uint256 fundingUsdForLongCollateral;
        uint256 fundingUsdForShortCollateral;
    }

    struct GetNextFundingFactorPerSecondCache {
        uint256 diffUsd;
        uint256 totalOpenInterest;

        uint256 fundingFactor;
        uint256 fundingExponentFactor;

        uint256 diffUsdAfterExponent;
        uint256 diffUsdToOpenInterestFactor;

        int256 savedFundingFactorPerSecond;
        uint256 savedFundingFactorPerSecondMagnitude;

        int256 nextSavedFundingFactorPerSecond;
        int256 nextSavedFundingFactorPerSecondWithMinBound;
    }

    struct FundingConfigCache {
        uint256 thresholdForStableFunding;
        uint256 thresholdForDecreaseFunding;

        uint256 fundingIncreaseFactorPerSecond;
        uint256 fundingDecreaseFactorPerSecond;

        uint256 minFundingFactorPerSecond;
        uint256 maxFundingFactorPerSecond;
    }

    struct GetExpectedMinTokenBalanceCache {
        uint256 poolAmount;
        uint256 swapImpactPoolAmount;
        uint256 claimableCollateralAmount;
        uint256 claimableFeeAmount;
        uint256 claimableUiFeeAmount;
        uint256 affiliateRewardAmount;
    }

    struct ApplyDeltaToPositionImpactPoolCache {
        bytes32 positionImpactPoolAmountKey;
        bytes32 lentPositionImpactPoolAmountKey;
        uint256 deltaMagnitude;
        uint256 poolAmount;
        uint256 excessAmount;
        uint256 nextValue;
    }

    struct CapPositiveImpactUsdByPositionImpactPoolCache {
        uint256 impactPoolAmount;
        uint256 impactPoolUsd;
        uint256 lentAmount;
        uint256 longTokenUsd;
        uint256 shortTokenUsd;
        uint256 maxLendableUsd;
        uint256 maxPriceImpactUsd;
        uint256 usdRequiredToBeLent;
    }

    // @dev get the market token's price
    // @param dataStore DataStore
    // @param market the market to check
    // @param longTokenPrice the price of the long token
    // @param shortTokenPrice the price of the short token
    // @param indexTokenPrice the price of the index token
    // @param maximize whether to maximize or minimize the market token price
    // @return returns (the market token's price, MarketPoolValueInfo.Props)
    function getMarketTokenPrice(
        DataStore dataStore,
        Market.Props memory market,
        Price.Props memory indexTokenPrice,
        Price.Props memory longTokenPrice,
        Price.Props memory shortTokenPrice,
        bytes32 pnlFactorType,
        bool maximize
    ) external view returns (int256, MarketPoolValueInfo.Props memory) {
        uint256 supply = getMarketTokenSupply(MarketToken(payable(market.marketToken)));

        MarketPoolValueInfo.Props memory poolValueInfo = getPoolValueInfo(
            dataStore,
            market,
            indexTokenPrice,
            longTokenPrice,
            shortTokenPrice,
            pnlFactorType,
            maximize
        );

        // if the supply is zero then treat the market token price as 1 USD
        if (supply == 0) {
            return (Precision.FLOAT_PRECISION.toInt256(), poolValueInfo);
        }

        if (poolValueInfo.poolValue == 0) { return (0, poolValueInfo); }

        int256 marketTokenPrice = Precision.mulDiv(Precision.WEI_PRECISION, poolValueInfo.poolValue, supply);
        return (marketTokenPrice, poolValueInfo);
    }

    // @dev get the total supply of the marketToken
    // @param marketToken the marketToken
    // @return the total supply of the marketToken
    function getMarketTokenSupply(MarketToken marketToken) public view returns (uint256) {
        return marketToken.totalSupply();
    }

    // @dev get the opposite token of the market
    // if the inputToken is the longToken return the shortToken and vice versa
    // @param inputToken the input token
    // @param market the market values
    // @return the opposite token
    function getOppositeToken(address inputToken, Market.Props memory market) internal pure returns (address) {
        if (inputToken == market.longToken) {
            return market.shortToken;
        }

        if (inputToken == market.shortToken) {
            return market.longToken;
        }

        revert Errors.UnableToGetOppositeToken(inputToken, market.marketToken);
    }

    function validateSwapMarket(DataStore dataStore, address marketAddress) internal view {
        Market.Props memory market = MarketStoreUtils.get(dataStore, marketAddress);
        validateSwapMarket(dataStore, market);
    }

    function validateSwapMarket(DataStore dataStore, Market.Props memory market) internal view {
        validateEnabledMarket(dataStore, market);

        if (market.longToken == market.shortToken) {
            revert Errors.InvalidSwapMarket(market.marketToken);
        }
    }

    // @dev get the token price from the stored MarketPrices
    // @param token the token to get the price for
    // @param the market values
    // @param the market token prices
    // @return the token price from the stored MarketPrices
    function getCachedTokenPrice(address token, Market.Props memory market, MarketPrices memory prices) internal pure returns (Price.Props memory) {
        if (token == market.longToken) {
            return prices.longTokenPrice;
        }
        if (token == market.shortToken) {
            return prices.shortTokenPrice;
        }
        if (token == market.indexToken) {
            return prices.indexTokenPrice;
        }

        revert Errors.UnableToGetCachedTokenPrice(token, market.marketToken);
    }

    // @dev return the primary prices for the market tokens
    // @param oracle Oracle
    // @param market the market values
    function getMarketPrices(IOracle oracle, Market.Props memory market) internal view returns (MarketPrices memory) {
        return MarketPrices(
            oracle.getPrimaryPrice(market.indexToken),
            oracle.getPrimaryPrice(market.longToken),
            oracle.getPrimaryPrice(market.shortToken)
        );
    }

    // @dev get the usd value of either the long or short tokens in the pool
    // without accounting for the pnl of open positions
    // @param dataStore DataStore
    // @param market the market values
    // @param prices the prices of the market tokens
    // @param whether to return the value for the long or short token
    // @return the usd value of either the long or short tokens in the pool
    function getPoolUsdWithoutPnl(
        DataStore dataStore,
        Market.Props memory market,
        MarketPrices memory prices,
        bool isLong,
        bool maximize
    ) internal view returns (uint256) {
        address token = isLong ? market.longToken : market.shortToken;
        // note that if it is a single token market, the poolAmount returned will be
        // the amount of tokens in the pool divided by 2
        uint256 poolAmount = getPoolAmount(dataStore, market, token);
        uint256 tokenPrice;

        if (maximize) {
            tokenPrice = isLong ? prices.longTokenPrice.max : prices.shortTokenPrice.max;
        } else {
            tokenPrice = isLong ? prices.longTokenPrice.min : prices.shortTokenPrice.min;
        }

        return poolAmount * tokenPrice;
    }

    // @dev get the USD value of a pool
    // the value of a pool is the worth of the liquidity provider tokens in the pool - pending trader pnl
    // we use the token index prices to calculate this and ignore price impact since if all positions were closed the
    // net price impact should be zero
    // note that there is exposure to the index token through the positionImpactPoolAmount and lentPositionImpactPoolAmount
    // if these amounts are large they may be a significant contributor to the GM token price
    // @param dataStore DataStore
    // @param market the market values
    // @param longTokenPrice price of the long token
    // @param shortTokenPrice price of the short token
    // @param indexTokenPrice price of the index token
    // @param maximize whether to maximize or minimize the pool value
    // @return the value information of a pool
    function getPoolValueInfo(
        DataStore dataStore,
        Market.Props memory market,
        Price.Props memory indexTokenPrice,
        Price.Props memory longTokenPrice,
        Price.Props memory shortTokenPrice,
        bytes32 pnlFactorType,
        bool maximize
    ) public view returns (MarketPoolValueInfo.Props memory) {
        MarketPoolValueInfo.Props memory result;

        result.longTokenAmount = getPoolAmount(dataStore, market, market.longToken);
        result.shortTokenAmount = getPoolAmount(dataStore, market, market.shortToken);

        result.longTokenUsd = result.longTokenAmount * longTokenPrice.pickPrice(maximize);
        result.shortTokenUsd = result.shortTokenAmount * shortTokenPrice.pickPrice(maximize);

        result.poolValue = (result.longTokenUsd + result.shortTokenUsd).toInt256();

        MarketPrices memory prices = MarketPrices(
            indexTokenPrice,
            longTokenPrice,
            shortTokenPrice
        );

        result.totalBorrowingFees = getTotalPendingBorrowingFees(
            dataStore,
            market,
            prices,
            true
        );

        result.totalBorrowingFees += getTotalPendingBorrowingFees(
            dataStore,
            market,
            prices,
            false
        );

        result.borrowingFeePoolFactor = Precision.FLOAT_PRECISION - dataStore.getUint(Keys.BORROWING_FEE_RECEIVER_FACTOR);
        result.poolValue += Precision.applyFactor(result.totalBorrowingFees, result.borrowingFeePoolFactor).toInt256();

        // !maximize should be used for net pnl as a larger pnl leads to a smaller pool value
        // and a smaller pnl leads to a larger pool value
        //
        // while positions will always be closed at the less favourable price
        // using the inverse of maximize for the getPnl calls would help prevent
        // gaming of market token values by increasing the spread
        //
        // liquidations could be triggered by manipulating a large spread but
        // that should be more difficult to execute

        result.longPnl = getPnl(
            dataStore,
            market,
            indexTokenPrice,
            true, // isLong
            !maximize // maximize
        );

        result.longPnl = getCappedPnl(
            dataStore,
            market.marketToken,
            true,
            result.longPnl,
            result.longTokenUsd,
            pnlFactorType
        );

        result.shortPnl = getPnl(
            dataStore,
            market,
            indexTokenPrice,
            false, // isLong
            !maximize // maximize
        );

        result.shortPnl = getCappedPnl(
            dataStore,
            market.marketToken,
            false,
            result.shortPnl,
            result.shortTokenUsd,
            pnlFactorType
        );

        result.netPnl = result.longPnl + result.shortPnl;
        result.poolValue = result.poolValue - result.netPnl;

        result.impactPoolAmount = getNextPositionImpactPoolAmount(dataStore, market.marketToken);
        // use !maximize for pickPrice since the impactPoolUsd is deducted from the poolValue
        uint256 impactPoolUsd = result.impactPoolAmount * indexTokenPrice.pickPrice(!maximize);

        result.poolValue -= impactPoolUsd.toInt256();

        result.lentImpactPoolAmount = dataStore.getUint(Keys.lentPositionImpactPoolAmountKey(market.marketToken));
        // use maximize for pickPrice since the lentImpactPoolUsd is added to the poolValue
        uint256 lentImpactPoolUsd = result.lentImpactPoolAmount * indexTokenPrice.pickPrice(maximize);

        result.poolValue += lentImpactPoolUsd.toInt256();

        return result;
    }

    // @dev get the net pending pnl for a market
    // @param dataStore DataStore
    // @param market the market to check
    // @param longToken the long token of the market
    // @param shortToken the short token of the market
    // @param indexTokenPrice the price of the index token
    // @param maximize whether to maximize or minimize the net pnl
    // @return the net pending pnl for a market
    function getNetPnl(
        DataStore dataStore,
        Market.Props memory market,
        Price.Props memory indexTokenPrice,
        bool maximize
    ) internal view returns (int256) {
        int256 longPnl = getPnl(dataStore, market, indexTokenPrice, true, maximize);
        int256 shortPnl = getPnl(dataStore, market, indexTokenPrice, false, maximize);

        return longPnl + shortPnl;
    }

    // @dev get the capped pending pnl for a market
    // @param dataStore DataStore
    // @param market the market to check
    // @param isLong whether to check for the long or short side
    // @param pnl the uncapped pnl of the market
    // @param poolUsd the USD value of the pool
    // @param pnlFactorType the pnl factor type to use
    function getCappedPnl(
        DataStore dataStore,
        address market,
        bool isLong,
        int256 pnl,
        uint256 poolUsd,
        bytes32 pnlFactorType
    ) internal view returns (int256) {
        if (pnl < 0) { return pnl; }

        uint256 maxPnlFactor = getMaxPnlFactor(dataStore, pnlFactorType, market, isLong);
        int256 maxPnl = Precision.applyFactor(poolUsd, maxPnlFactor).toInt256();

        return pnl > maxPnl ? maxPnl : pnl;
    }

    // @dev get the pending pnl for a market
    // @param dataStore DataStore
    // @param market the market to check
    // @param longToken the long token of the market
    // @param shortToken the short token of the market
    // @param indexTokenPrice the price of the index token
    // @param isLong whether to check for the long or short side
    // @param maximize whether to maximize or minimize the pnl
    function getPnl(
        DataStore dataStore,
        Market.Props memory market,
        uint256 indexTokenPrice,
        bool isLong,
        bool maximize
    ) internal view returns (int256) {
        Price.Props memory _indexTokenPrice = Price.Props(indexTokenPrice, indexTokenPrice);

        return getPnl(
            dataStore,
            market,
            _indexTokenPrice,
            isLong,
            maximize
        );
    }

    // @dev get the pending pnl for a market for either longs or shorts
    // @param dataStore DataStore
    // @param market the market to check
    // @param longToken the long token of the market
    // @param shortToken the short token of the market
    // @param indexTokenPrice the price of the index token
    // @param isLong whether to get the pnl for longs or shorts
    // @param maximize whether to maximize or minimize the net pnl
    // @return the pending pnl for a market for either longs or shorts
    function getPnl(
        DataStore dataStore,
        Market.Props memory market,
        Price.Props memory indexTokenPrice,
        bool isLong,
        bool maximize
    ) internal view returns (int256) {
        int256 openInterest = getOpenInterest(dataStore, market, isLong).toInt256();
        uint256 openInterestInTokens = getOpenInterestInTokens(dataStore, market, isLong);
        if (openInterest == 0 || openInterestInTokens == 0) {
            return 0;
        }

        uint256 price = indexTokenPrice.pickPriceForPnl(isLong, maximize);

        // openInterest is the cost of all positions, openInterestValue is the current worth of all positions
        int256 openInterestValue = (openInterestInTokens * price).toInt256();
        int256 pnl = isLong ? openInterestValue - openInterest : openInterest - openInterestValue;

        return pnl;
    }

    // @dev get the amount of tokens in the pool
    // @param dataStore DataStore
    // @param market the market to check
    // @param token the token to check
    // @return the amount of tokens in the pool
    function getPoolAmount(DataStore dataStore, Market.Props memory market, address token) internal view returns (uint256) {
        /* Market.Props memory market = MarketStoreUtils.get(dataStore, marketAddress); */
        // if the longToken and shortToken are the same, return half of the token amount, so that
        // calculations of pool value, etc would be correct
        uint256 divisor = getPoolDivisor(market.longToken, market.shortToken);
        return dataStore.getUint(Keys.poolAmountKey(market.marketToken, token)) / divisor;
    }

    // @dev get the max amount of tokens allowed to be in the pool
    // @param dataStore DataStore
    // @param market the market to check
    // @param token the token to check
    // @return the max amount of tokens that are allowed in the pool
    function getMaxPoolAmount(DataStore dataStore, address market, address token) internal view returns (uint256) {
        return dataStore.getUint(Keys.maxPoolAmountKey(market, token));
    }

    function getMaxPoolUsdForDeposit(DataStore dataStore, address market, address token) internal view returns (uint256) {
        return dataStore.getUint(Keys.maxPoolUsdForDepositKey(market, token));
    }

    function getUsageFactor(
        DataStore dataStore,
        Market.Props memory market,
        bool isLong,
        uint256 reservedUsd,
        uint256 poolUsd
    ) internal view returns (uint256) {
        uint256 reserveFactor = getOpenInterestReserveFactor(dataStore, market.marketToken, isLong);
        uint256 maxReservedUsd = Precision.applyFactor(poolUsd, reserveFactor);
        uint256 reserveUsageFactor = Precision.toFactor(reservedUsd, maxReservedUsd);

        return reserveUsageFactor;
    }

    // @dev get the max open interest allowed for the market
    // @param dataStore DataStore
    // @param market the market to check
    // @param isLong whether this is for the long or short side
    // @return the max open interest allowed for the market
    function getMaxOpenInterest(DataStore dataStore, address market, bool isLong) internal view returns (uint256) {
        return dataStore.getUint(Keys.maxOpenInterestKey(market, isLong));
    }

    // @dev increment the claimable collateral amount
    // @param dataStore DataStore
    // @param eventEmitter EventEmitter
    // @param market the market to increment the claimable collateral for
    // @param token the claimable token
    // @param account the account to increment the claimable collateral for
    // @param delta the amount to increment
    function incrementClaimableCollateralAmount(
        DataStore dataStore,
        EventEmitter eventEmitter,
        address market,
        address token,
        address account,
        uint256 delta
    ) internal {
        uint256 divisor = dataStore.getUint(Keys.CLAIMABLE_COLLATERAL_TIME_DIVISOR);
        uint256 timeKey = Chain.currentTimestamp() / divisor;

        uint256 nextValue = dataStore.incrementUint(
            Keys.claimableCollateralAmountKey(market, token, timeKey, account),
            delta
        );

        uint256 nextPoolValue = dataStore.incrementUint(
            Keys.claimableCollateralAmountKey(market, token),
            delta
        );

        MarketEventUtils.emitClaimableCollateralUpdated(
            eventEmitter,
            market,
            token,
            timeKey,
            account,
            delta,
            nextValue,
            nextPoolValue
        );
    }

    // @dev increment the claimable funding amount
    // @param dataStore DataStore
    // @param eventEmitter EventEmitter
    // @param market the trading market
    // @param token the claimable token
    // @param account the account to increment for
    // @param delta the amount to increment
    function incrementClaimableFundingAmount(
        DataStore dataStore,
        EventEmitter eventEmitter,
        address market,
        address token,
        address account,
        uint256 delta
    ) internal {
        uint256 nextValue = dataStore.incrementUint(
            Keys.claimableFundingAmountKey(market, token, account),
            delta
        );

        uint256 nextPoolValue = dataStore.incrementUint(
            Keys.claimableFundingAmountKey(market, token),
            delta
        );

        MarketEventUtils.emitClaimableFundingUpdated(
            eventEmitter,
            market,
            token,
            account,
            delta,
            nextValue,
            nextPoolValue
        );
    }

    // @dev claim funding fees
    // @param dataStore DataStore
    // @param eventEmitter EventEmitter
    // @param market the market to claim for
    // @param token the token to claim
    // @param account the account to claim for
    // @param receiver the receiver to send the amount to
    function claimFundingFees(
        DataStore dataStore,
        EventEmitter eventEmitter,
        address market,
        address token,
        address account,
        address receiver
    ) internal returns (uint256) {
        bytes32 key = Keys.claimableFundingAmountKey(market, token, account);

        uint256 claimableAmount = dataStore.getUint(key);
        dataStore.setUint(key, 0);

        uint256 nextPoolValue = dataStore.decrementUint(
            Keys.claimableFundingAmountKey(market, token),
            claimableAmount
        );

        MarketToken(payable(market)).transferOut(
            token,
            receiver,
            claimableAmount
        );

        validateMarketTokenBalance(dataStore, market);

        MarketEventUtils.emitFundingFeesClaimed(
            eventEmitter,
            market,
            token,
            account,
            receiver,
            claimableAmount,
            nextPoolValue
        );

        return claimableAmount;
    }

    function batchClaimCollateral(
        DataStore dataStore,
        EventEmitter eventEmitter,
        address[] memory markets,
        address[] memory tokens,
        uint256[] memory timeKeys,
        address receiver,
        address account
    ) internal returns (uint256[] memory) {
        if (markets.length != tokens.length || tokens.length != timeKeys.length) {
            revert Errors.InvalidClaimCollateralInput(markets.length, tokens.length, timeKeys.length);
        }

        FeatureUtils.validateFeature(dataStore, Keys.claimCollateralFeatureDisabledKey(address(this)));

        AccountUtils.validateReceiver(receiver);

        uint256[] memory claimedAmounts = new uint256[](markets.length);

        for (uint256 i; i < markets.length; i++) {
            claimedAmounts[i] = MarketUtils.claimCollateral(
                dataStore,
                eventEmitter,
                markets[i],
                tokens[i],
                timeKeys[i],
                account,
                receiver
            );
        }

        return claimedAmounts;
    }

    // @dev claim collateral
    // @param dataStore DataStore
    // @param eventEmitter EventEmitter
    // @param market the market to claim for
    // @param token the token to claim
    // @param timeKey the time key
    // @param account the account to claim for
    // @param receiver the receiver to send the amount to
    function claimCollateral(
        DataStore dataStore,
        EventEmitter eventEmitter,
        address market,
        address token,
        uint256 timeKey,
        address account,
        address receiver
    ) internal returns (uint256) {
        uint256 claimableAmount = dataStore.getUint(Keys.claimableCollateralAmountKey(market, token, timeKey, account));

        uint256 claimableFactor = _getClaimableFactor(dataStore, market, token, timeKey, account);

        if (claimableFactor > Precision.FLOAT_PRECISION) {
            revert Errors.InvalidClaimableFactor(claimableFactor);
        }

        uint256 claimedAmount = dataStore.getUint(Keys.claimedCollateralAmountKey(market, token, timeKey, account));

        uint256 adjustedClaimableAmount = Precision.applyFactor(claimableAmount, claimableFactor);
        if (adjustedClaimableAmount <= claimedAmount) {
            revert Errors.CollateralAlreadyClaimed(adjustedClaimableAmount, claimedAmount);
        }

        uint256 amountToBeClaimed = adjustedClaimableAmount - claimedAmount;

        dataStore.setUint(
            Keys.claimedCollateralAmountKey(market, token, timeKey, account),
            adjustedClaimableAmount
        );

        uint256 nextPoolValue = dataStore.decrementUint(
            Keys.claimableCollateralAmountKey(market, token),
            amountToBeClaimed
        );

        MarketToken(payable(market)).transferOut(
            token,
            receiver,
            amountToBeClaimed
        );

        validateMarketTokenBalance(dataStore, market);

        MarketEventUtils.emitCollateralClaimed(
            eventEmitter,
            market,
            token,
            timeKey,
            account,
            receiver,
            amountToBeClaimed,
            nextPoolValue
        );

        return amountToBeClaimed;
    }

    function _getClaimableFactor(
        DataStore dataStore,
        address market,
        address token,
        uint256 timeKey,
        address account
    ) internal view returns (uint256) {
        uint256 claimableFactorForTime = dataStore.getUint(Keys.claimableCollateralFactorKey(market, token, timeKey));
        uint256 claimableFactorForAccount = dataStore.getUint(Keys.claimableCollateralFactorKey(market, token, timeKey, account));
        uint256 claimableFactor = claimableFactorForTime > claimableFactorForAccount
            ? claimableFactorForTime
            : claimableFactorForAccount;

        // if the divisor is changed the timeDiff calculation would no longer be accurate
        uint256 divisor = dataStore.getUint(Keys.CLAIMABLE_COLLATERAL_TIME_DIVISOR);

        uint256 claimableReductionFactor = dataStore.getUint(Keys.claimableCollateralReductionFactorKey(market, token, timeKey, account));
        uint256 timeDiff = Chain.currentTimestamp() - timeKey * divisor;
        uint256 claimableCollateralDelay = dataStore.getUint(Keys.CLAIMABLE_COLLATERAL_DELAY);

        if (claimableFactor == 0 && claimableReductionFactor == 0 && timeDiff > claimableCollateralDelay) {
            claimableFactor = Precision.FLOAT_PRECISION;
        }

        if (claimableFactor > claimableReductionFactor) {
            claimableFactor -= claimableReductionFactor;
        } else {
            claimableFactor = 0;
        }

        return claimableFactor;
    }

    // @dev apply a delta to the pool amount
    // validatePoolAmount is not called in this function since applyDeltaToPoolAmount
    // is called when receiving fees
    // @param dataStore DataStore
    // @param eventEmitter EventEmitter
    // @param market the market to apply to
    // @param token the token to apply to
    // @param delta the delta amount
    function applyDeltaToPoolAmount(
        DataStore dataStore,
        EventEmitter eventEmitter,
        Market.Props memory market,
        address token,
        int256 delta
    ) internal returns (uint256) {
        uint256 nextValue = dataStore.applyDeltaToUint(
            Keys.poolAmountKey(market.marketToken, token),
            delta,
            "Invalid state, negative poolAmount"
        );

        applyDeltaToVirtualInventoryForSwaps(
            dataStore,
            eventEmitter,
            market,
            token,
            delta
        );

        MarketEventUtils.emitPoolAmountUpdated(eventEmitter, market.marketToken, token, delta, nextValue);

        return nextValue;
    }

    function getAdjustedSwapImpactFactor(DataStore dataStore, address market, bool isPositive) internal view returns (uint256) {
        (uint256 positiveImpactFactor, uint256 negativeImpactFactor) = getAdjustedSwapImpactFactors(dataStore, market);

        return isPositive ? positiveImpactFactor : negativeImpactFactor;
    }

    function getAdjustedSwapImpactFactors(DataStore dataStore, address market) internal view returns (uint256, uint256) {
        uint256 positiveImpactFactor = dataStore.getUint(Keys.swapImpactFactorKey(market, true));
        uint256 negativeImpactFactor = dataStore.getUint(Keys.swapImpactFactorKey(market, false));

        // if the positive impact factor is more than the negative impact factor, positions could be opened
        // and closed immediately for a profit if the difference is sufficient to cover the position fees
        if (positiveImpactFactor > negativeImpactFactor) {
            positiveImpactFactor = negativeImpactFactor;
        }

        return (positiveImpactFactor, negativeImpactFactor);
    }

    function getAdjustedPositionImpactFactor(DataStore dataStore, address market, bool isPositive) internal view returns (uint256) {
        (uint256 positiveImpactFactor, uint256 negativeImpactFactor) = getAdjustedPositionImpactFactors(dataStore, market);

        return isPositive ? positiveImpactFactor : negativeImpactFactor;
    }

    function getAdjustedPositionImpactFactors(DataStore dataStore, address market) internal view returns (uint256, uint256) {
        uint256 positiveImpactFactor = dataStore.getUint(Keys.positionImpactFactorKey(market, true));
        uint256 negativeImpactFactor = dataStore.getUint(Keys.positionImpactFactorKey(market, false));

        // if the positive impact factor is more than the negative impact factor, positions could be opened
        // and closed immediately for a profit if the difference is sufficient to cover the position fees
        if (positiveImpactFactor > negativeImpactFactor) {
            positiveImpactFactor = negativeImpactFactor;
        }

        return (positiveImpactFactor, negativeImpactFactor);
    }

    function getAdjustedPositionImpactExponentFactor(DataStore dataStore, address market, bool isPositive) internal view returns (uint256) {
        (uint256 positiveExponentFactor, uint256 negativeExponentFactor) = getAdjustedPositionImpactExponentFactors(dataStore, market);

        return isPositive ? positiveExponentFactor : negativeExponentFactor;
    }

    function getAdjustedPositionImpactExponentFactors(DataStore dataStore, address market) internal view returns (uint256, uint256) {
        uint256 positiveExponentFactor = dataStore.getUint(Keys.positionImpactExponentFactorKey(market, true));
        uint256 negativeExponentFactor = dataStore.getUint(Keys.positionImpactExponentFactorKey(market, false));

        if (positiveExponentFactor > negativeExponentFactor) {
            positiveExponentFactor = negativeExponentFactor;
        }

        return (positiveExponentFactor, negativeExponentFactor);
    }

    // @dev cap the input priceImpactUsd by the available amount in the
    // position impact pool
    // Note that since the price impact can be capped, a malicious
    // CONFIG_KEEPER can set price impact values to be very large
    // then make trades to incur a large amount of negative price impact
    // in account A, and a large amount of positive price impact in
    // account B
    // since the price impact in account A is claimable, and the positive
    // price impact in account B is first paid for by the pool, this method
    // can be used to reduce the funds in the GM pool
    // the CLAIMABLE_COLLATERAL_DELAY should be restricted to be at least
    // 24 hours or more to allow for activity of this form to be blocked
    // @param dataStore DataStore
    // @param market the trading market
    // @param indexTokenPrice the price of the token
    // @param priceImpactUsd the calculated USD price impact
    // @return the capped priceImpactUsd
    function capPositiveImpactUsdByPositionImpactPool(
        DataStore dataStore,
        Market.Props memory market,
        MarketPrices memory prices,
        int256 priceImpactUsd
    ) internal view returns (int256) {
        if (priceImpactUsd <= 0) {
            return priceImpactUsd;
        }

        CapPositiveImpactUsdByPositionImpactPoolCache memory cache;

        cache.impactPoolAmount = getPositionImpactPoolAmount(dataStore, market.marketToken);

        // the totalPendingImpactAmount is not factored into the capping here
        // we assume that the ratio of negative impact to positive impact and
        // ratio of negative impact cap to positive impact cap is such that the
        // total negative impact will be more than the positive impact for
        // majority of the time
        // additionally, since there is capping of price impact, the
        // totalPendingImpactAmount would not give an accurate representation
        // of the actual price impact that would be realised
        cache.impactPoolUsd = cache.impactPoolAmount * prices.indexTokenPrice.min;

        // if priceImpactUsd > impactPoolUsd, calculate the usdRequiredToBeLent
        // otherwise, the impactPoolUsd is sufficient and priceImpactUsd does not
        // need to be capped here
        if (priceImpactUsd.toUint256() > cache.impactPoolUsd) {
            cache.usdRequiredToBeLent = priceImpactUsd.toUint256() - cache.impactPoolUsd;
        }

        // if usdRequiredToBeLent > 0, check how much is lendable
        if (cache.usdRequiredToBeLent > 0) {
            cache.lentAmount = dataStore.getUint(Keys.lentPositionImpactPoolAmountKey(market.marketToken));
            // capping the max lendable amount to a factor of the pool amount is mainly a sanity check to prevent
            // the lent amount from being too large relative to the amounts in the pool
            // trader pnl, borrowing fees, etc is not factored into this calculation
            cache.longTokenUsd = getPoolAmount(dataStore, market, market.longToken)  * prices.longTokenPrice.min;
            cache.shortTokenUsd = getPoolAmount(dataStore, market, market.shortToken)  * prices.shortTokenPrice.min;

            cache.maxLendableUsd = getMaxLendableUsdAvailable(
                dataStore,
                market.marketToken,
                cache.longTokenUsd + cache.shortTokenUsd,
                prices.indexTokenPrice.max,
                cache.lentAmount
            );

            // if usdRequiredToBeLent > maxLendableUsd, then cap the price impact to impactPoolUsd + maxLendableUsd
            if (cache.usdRequiredToBeLent > cache.maxLendableUsd) {
                priceImpactUsd = cache.impactPoolUsd.toInt256() + cache.maxLendableUsd.toInt256();
            }
        }

        return priceImpactUsd;
    }

    function getMaxLendableUsdAvailable(
        DataStore dataStore,
        address market,
        uint256 poolUsd,
        uint256 indexTokenPrice,
        uint256 lentAmount
    ) internal view returns (uint256) {
        uint256 maxLendableFactor = dataStore.getUint(Keys.maxLendableImpactFactorKey(market));
        uint256 maxLendableUsd = Precision.applyFactor(poolUsd, maxLendableFactor);

        uint256 maxLendableUsdConfig = dataStore.getUint(Keys.maxLendableImpactUsdKey(market));
        if (maxLendableUsd > maxLendableUsdConfig) {
            maxLendableUsd = maxLendableUsdConfig;
        }

        uint256 lentUsd = lentAmount * indexTokenPrice;

        if (lentUsd > maxLendableUsd) {
            return 0;
        }

        return maxLendableUsd - lentUsd;
    }

    // @dev cap the input priceImpactUsd by the max positive position impact factor
    // @param dataStore DataStore
    // @param market the trading market
    // @param priceImpactUsd the calculated USD price impact
    // @param sizeDeltaUsd the size by which the position is increased/decreased
    // @return the capped priceImpactUsd
    function capPositiveImpactUsdByMaxPositionImpact(
        DataStore dataStore,
        address market,
        int256 priceImpactUsd,
        uint256 sizeDeltaUsd
    ) internal view returns (int256) {
        if (priceImpactUsd < 0) {
            return priceImpactUsd;
        }

        uint256 maxPriceImpactFactor = getMaxPositionImpactFactor(dataStore, market, true);
        int256 maxPriceImpactUsdBasedOnMaxPriceImpactFactor = Precision.applyFactor(sizeDeltaUsd, maxPriceImpactFactor).toInt256();

        // capped by the positive price impact
        if (priceImpactUsd > maxPriceImpactUsdBasedOnMaxPriceImpactFactor) {
            priceImpactUsd = maxPriceImpactUsdBasedOnMaxPriceImpactFactor;
        }

        return priceImpactUsd;
    }

    function getTotalPendingImpactAmount(DataStore dataStore, address market) internal view returns (int256) {
        return dataStore.getInt(Keys.totalPendingImpactAmountKey(market));
    }

    // @dev get the position impact pool amount
    // @param dataStore DataStore
    // @param market the market to check
    // @return the position impact pool amount
    function getPositionImpactPoolAmount(DataStore dataStore, address market) internal view returns (uint256) {
        return dataStore.getUint(Keys.positionImpactPoolAmountKey(market));
    }

    // @dev get the swap impact pool amount
    // @param dataStore DataStore
    // @param market the market to check
    // @param token the token to check
    // @return the swap impact pool amount
    function getSwapImpactPoolAmount(DataStore dataStore, address market, address token) internal view returns (uint256) {
        return dataStore.getUint(Keys.swapImpactPoolAmountKey(market, token));
    }

    // @dev apply a delta to the swap impact pool
    // @param dataStore DataStore
    // @param eventEmitter EventEmitter
    // @param market the market to apply to
    // @param token the token to apply to
    // @param delta the delta amount
    function applyDeltaToSwapImpactPool(
        DataStore dataStore,
        EventEmitter eventEmitter,
        address market,
        address token,
        int256 delta
    ) internal returns (uint256) {
        uint256 nextValue = dataStore.applyBoundedDeltaToUint(
            Keys.swapImpactPoolAmountKey(market, token),
            delta
        );

        MarketEventUtils.emitSwapImpactPoolAmountUpdated(eventEmitter, market, token, delta, nextValue);

        return nextValue;
    }

    function applyDeltaToTotalPendingImpactAmount(
        DataStore dataStore,
        EventEmitter eventEmitter,
        address market,
        int256 delta
    ) internal returns (int256) {
        int256 nextValue = dataStore.applyDeltaToInt(
            Keys.totalPendingImpactAmountKey(market),
            delta
        );

        MarketEventUtils.emitTotalPendingImpactAmountUpdated(
            eventEmitter,
            market,
            delta,
            nextValue
        );

        return nextValue;
    }

    // @dev apply a delta to the position impact pool
    // @param dataStore DataStore
    // @param eventEmitter EventEmitter
    // @param market the market to apply to
    // @param delta the delta amount
    function applyDeltaToPositionImpactPool(
        DataStore dataStore,
        EventEmitter eventEmitter,
        address market,
        int256 delta
    ) internal {
        ApplyDeltaToPositionImpactPoolCache memory cache;
        cache.deltaMagnitude = delta.abs();

        if (delta < 0) {
            cache.positionImpactPoolAmountKey = Keys.positionImpactPoolAmountKey(market);
            cache.poolAmount = dataStore.getUint(cache.positionImpactPoolAmountKey);

            if (cache.deltaMagnitude > cache.poolAmount) {
                cache.excessAmount = cache.deltaMagnitude - cache.poolAmount;

                dataStore.setUint(cache.positionImpactPoolAmountKey, 0);
                MarketEventUtils.emitPositionImpactPoolAmountUpdated(eventEmitter, market, cache.poolAmount.toInt256(), 0);

                cache.nextValue = dataStore.incrementUint(Keys.lentPositionImpactPoolAmountKey(market), cache.excessAmount);
                MarketEventUtils.emitLentPositionImpactPoolAmountUpdated(eventEmitter, market, cache.excessAmount.toInt256(), cache.nextValue);
            } else {
                cache.nextValue = dataStore.decrementUint(cache.positionImpactPoolAmountKey, cache.deltaMagnitude);
                MarketEventUtils.emitPositionImpactPoolAmountUpdated(eventEmitter, market, delta, cache.nextValue);
            }
        } else {
            cache.lentPositionImpactPoolAmountKey = Keys.lentPositionImpactPoolAmountKey(market);
            cache.poolAmount = dataStore.getUint(cache.lentPositionImpactPoolAmountKey);

            if (cache.deltaMagnitude > cache.poolAmount) {
                cache.excessAmount = cache.deltaMagnitude - cache.poolAmount;

                dataStore.setUint(cache.lentPositionImpactPoolAmountKey, 0);
                MarketEventUtils.emitLentPositionImpactPoolAmountUpdated(eventEmitter, market, cache.poolAmount.toInt256(), 0);

                cache.nextValue = dataStore.incrementUint(Keys.positionImpactPoolAmountKey(market), cache.excessAmount);
                MarketEventUtils.emitPositionImpactPoolAmountUpdated(eventEmitter, market, cache.excessAmount.toInt256(), cache.nextValue);
            } else {
                cache.nextValue = dataStore.decrementUint(cache.lentPositionImpactPoolAmountKey, cache.deltaMagnitude);
                MarketEventUtils.emitLentPositionImpactPoolAmountUpdated(eventEmitter, market, delta, cache.nextValue);
            }
        }
    }

    // @dev apply a delta to the open interest
    // @param dataStore DataStore
    // @param eventEmitter EventEmitter
    // @param market the market to apply to
    // @param collateralToken the collateralToken to apply to
    // @param isLong whether to apply to the long or short side
    // @param delta the delta amount
    function applyDeltaToOpenInterest(
        DataStore dataStore,
        EventEmitter eventEmitter,
        Market.Props memory market,
        address collateralToken,
        bool isLong,
        int256 delta,
        bool useOpenInterestInTokens
    ) internal returns (uint256) {
        if (market.indexToken == address(0)) {
            revert Errors.OpenInterestCannotBeUpdatedForSwapOnlyMarket(market.marketToken);
        }

        uint256 nextValue = dataStore.applyDeltaToUint(
            Keys.openInterestKey(market.marketToken, collateralToken, isLong),
            delta,
            "Invalid state: negative open interest"
        );

        // if the open interest for longs is increased then tokens were virtually bought from the pool
        // so the virtual inventory should be decreased
        // if the open interest for longs is decreased then tokens were virtually sold to the pool
        // so the virtual inventory should be increased
        // if the open interest for shorts is increased then tokens were virtually sold to the pool
        // so the virtual inventory should be increased
        // if the open interest for shorts is decreased then tokens were virtually bought from the pool
        // so the virtual inventory should be decreased
        if (!useOpenInterestInTokens) {
            applyDeltaToVirtualInventoryForPositions(
                dataStore,
                eventEmitter,
                market.indexToken,
                isLong ? -delta : delta
            );
        }

        if (delta > 0) {
            validateOpenInterest(
                dataStore,
                market,
                isLong
            );
        }

        MarketEventUtils.emitOpenInterestUpdated(eventEmitter, market.marketToken, collateralToken, isLong, delta, nextValue);

        return nextValue;
    }

    // @dev apply a delta to the open interest in tokens
    // @param dataStore DataStore
    // @param eventEmitter EventEmitter
    // @param market the market to apply to
    // @param collateralToken the collateralToken to apply to
    // @param isLong whether to apply to the long or short side
    // @param delta the delta amount
    function applyDeltaToOpenInterestInTokens(
        DataStore dataStore,
        EventEmitter eventEmitter,
        address market,
        address indexToken,
        address collateralToken,
        bool isLong,
        int256 delta,
        bool useOpenInterestInTokens
    ) internal returns (uint256) {
        uint256 nextValue = dataStore.applyDeltaToUint(
            Keys.openInterestInTokensKey(market, collateralToken, isLong),
            delta,
            "Invalid state: negative open interest in tokens"
        );

        // if the open interest for longs is increased then tokens were virtually bought from the pool
        // so the virtual inventory should be decreased
        // if the open interest for longs is decreased then tokens were virtually sold to the pool
        // so the virtual inventory should be increased
        // if the open interest for shorts is increased then tokens were virtually sold to the pool
        // so the virtual inventory should be increased
        // if the open interest for shorts is decreased then tokens were virtually bought from the pool
        // so the virtual inventory should be decreased
        if (useOpenInterestInTokens) {
            applyDeltaToVirtualInventoryForPositionsInTokens(
                dataStore,
                eventEmitter,
                indexToken,
                isLong ? -delta : delta
            );
        }

        MarketEventUtils.emitOpenInterestInTokensUpdated(eventEmitter, market, collateralToken, isLong, delta, nextValue);

        return nextValue;
    }

    // @dev apply a delta to the collateral sum
    // @param dataStore DataStore
    // @param eventEmitter EventEmitter
    // @param market the market to apply to
    // @param collateralToken the collateralToken to apply to
    // @param isLong whether to apply to the long or short side
    // @param delta the delta amount
    function applyDeltaToCollateralSum(
        DataStore dataStore,
        EventEmitter eventEmitter,
        address market,
        address collateralToken,
        bool isLong,
        int256 delta
    ) internal returns (uint256) {
        uint256 nextValue = dataStore.applyDeltaToUint(
            Keys.collateralSumKey(market, collateralToken, isLong),
            delta,
            "Invalid state: negative collateralSum"
        );

        uint256 maxValue = dataStore.getUint(Keys.maxCollateralSumKey(market, collateralToken, isLong));
        if (nextValue > maxValue) {
            revert Errors.MaxCollateralSumExceeded(nextValue, maxValue);
        }

        MarketEventUtils.emitCollateralSumUpdated(eventEmitter, market, collateralToken, isLong, delta, nextValue);

        return nextValue;
    }

    // @dev update the funding state
    // @param dataStore DataStore
    // @param market the market to update
    // @param prices the prices of the market tokens
    function updateFundingState(
        DataStore dataStore,
        EventEmitter eventEmitter,
        Market.Props memory market,
        MarketPrices memory prices
    ) external {
        GetNextFundingAmountPerSizeResult memory result = getNextFundingAmountPerSize(dataStore, market, prices);

        applyDeltaToFundingFeeAmountPerSize(
            dataStore,
            eventEmitter,
            market.marketToken,
            market.longToken,
            true,
            result.fundingFeeAmountPerSizeDelta.long.longToken
        );

        applyDeltaToFundingFeeAmountPerSize(
            dataStore,
            eventEmitter,
            market.marketToken,
            market.longToken,
            false,
            result.fundingFeeAmountPerSizeDelta.short.longToken
        );

        applyDeltaToFundingFeeAmountPerSize(
            dataStore,
            eventEmitter,
            market.marketToken,
            market.shortToken,
            true,
            result.fundingFeeAmountPerSizeDelta.long.shortToken
        );

        applyDeltaToFundingFeeAmountPerSize(
            dataStore,
            eventEmitter,
            market.marketToken,
            market.shortToken,
            false,
            result.fundingFeeAmountPerSizeDelta.short.shortToken
        );

        applyDeltaToClaimableFundingAmountPerSize(
            dataStore,
            eventEmitter,
            market.marketToken,
            market.longToken,
            true,
            result.claimableFundingAmountPerSizeDelta.long.longToken
        );

        applyDeltaToClaimableFundingAmountPerSize(
            dataStore,
            eventEmitter,
            market.marketToken,
            market.longToken,
            false,
            result.claimableFundingAmountPerSizeDelta.short.longToken
        );

        applyDeltaToClaimableFundingAmountPerSize(
            dataStore,
            eventEmitter,
            market.marketToken,
            market.shortToken,
            true,
            result.claimableFundingAmountPerSizeDelta.long.shortToken
        );

        applyDeltaToClaimableFundingAmountPerSize(
            dataStore,
            eventEmitter,
            market.marketToken,
            market.shortToken,
            false,
            result.claimableFundingAmountPerSizeDelta.short.shortToken
        );

        setSavedFundingFactorPerSecond(dataStore, market.marketToken, result.nextSavedFundingFactorPerSecond);

        dataStore.setUint(Keys.fundingUpdatedAtKey(market.marketToken), Chain.currentTimestamp());

        MarketEventUtils.emitFunding(
            eventEmitter,
            market.marketToken,
            result.fundingFactorPerSecond
        );
    }

    // @dev get the next funding amount per size values
    // @param dataStore DataStore
    // @param prices the prices of the market tokens
    // @param market the market to update
    // @param longToken the market's long token
    // @param shortToken the market's short token
    function getNextFundingAmountPerSize(
        DataStore dataStore,
        Market.Props memory market,
        MarketPrices memory prices
    ) internal view returns (GetNextFundingAmountPerSizeResult memory) {
        GetNextFundingAmountPerSizeResult memory result;
        GetNextFundingAmountPerSizeCache memory cache;

        uint256 divisor = getPoolDivisor(market.longToken, market.shortToken);

        cache.openInterest.long.longToken = getOpenInterest({ dataStore: dataStore, market: market.marketToken, divisor: divisor,
            isLong: true, collateralToken: market.longToken });

        cache.openInterest.long.shortToken = getOpenInterest({ dataStore: dataStore, market: market.marketToken, divisor: divisor,
            isLong: true, collateralToken: market.shortToken });

        cache.openInterest.short.longToken = getOpenInterest({ dataStore: dataStore, market: market.marketToken, divisor: divisor,
            isLong: false, collateralToken: market.longToken });

        cache.openInterest.short.shortToken = getOpenInterest({ dataStore: dataStore, market: market.marketToken, divisor: divisor,
            isLong: false, collateralToken: market.shortToken });

        // sum the open interest values to get the total long and short open interest values
        cache.longOpenInterest = cache.openInterest.long.longToken + cache.openInterest.long.shortToken;
        cache.shortOpenInterest = cache.openInterest.short.longToken + cache.openInterest.short.shortToken;

        // if either long or short open interest is zero, then funding should not be updated
        // as there would not be any user to pay the funding to
        if (cache.longOpenInterest == 0 || cache.shortOpenInterest == 0) {
            return result;
        }

        // if the blockchain is not progressing / a market is disabled, funding fees
        // will continue to accumulate
        // this should be a rare occurrence so funding fees are not adjusted for this case
        cache.durationInSeconds = getSecondsSinceFundingUpdated(dataStore, market.marketToken);

        (result.fundingFactorPerSecond, result.longsPayShorts, result.nextSavedFundingFactorPerSecond) = getNextFundingFactorPerSecond(
            dataStore,
            market,
            prices.indexTokenPrice.midPrice(),
            cache.durationInSeconds
        );

        cache.sizeOfPayingSide = result.longsPayShorts ? cache.longOpenInterest : cache.shortOpenInterest;

        // for single token markets, if there is $200,000 long open interest
        // and $100,000 short open interest and if the fundingUsd is $8:
        // fundingUsdForLongCollateral: $4
        // fundingUsdForShortCollateral: $4
        // fundingFeeAmountPerSizeDelta.long.longToken: 4 / 100,000
        // fundingFeeAmountPerSizeDelta.long.shortToken: 4 / 100,000
        // claimableFundingAmountPerSizeDelta.short.longToken: 4 / 100,000
        // claimableFundingAmountPerSizeDelta.short.shortToken: 4 / 100,000
        //
        // the divisor for fundingFeeAmountPerSizeDelta is 100,000 because the
        // cache.openInterest.long.longOpenInterest and cache.openInterest.long.shortOpenInterest is divided by 2
        //
        // when the fundingFeeAmountPerSize value is incremented, it would be incremented twice:
        // 4 / 100,000 + 4 / 100,000 = 8 / 100,000
        //
        // since the actual long open interest is $200,000, this would result in a total of 8 / 100,000 * 200,000 = $16 being charged
        //
        // when the claimableFundingAmountPerSize value is incremented, it would similarly be incremented twice:
        // 4 / 100,000 + 4 / 100,000 = 8 / 100,000
        //
        // when calculating the amount to be claimed, the longTokenClaimableFundingAmountPerSize and shortTokenClaimableFundingAmountPerSize
        // are compared against the market's claimableFundingAmountPerSize for the longToken and claimableFundingAmountPerSize for the shortToken
        //
        // since both these values will be duplicated, the amount claimable would be:
        // (8 / 100,000 + 8 / 100,000) * 100,000 = $16
        //
        // due to these, the fundingUsd should be divided by the divisor

        cache.fundingUsd = Precision.applyFactor(cache.sizeOfPayingSide, cache.durationInSeconds * result.fundingFactorPerSecond);
        cache.fundingUsd = cache.fundingUsd / divisor;

        // split the fundingUsd value by long and short collateral
        // e.g. if the fundingUsd value is $500, and there is $1000 of long open interest using long collateral and $4000 of long open interest
        // with short collateral, then $100 of funding fees should be paid from long positions using long collateral, $400 of funding fees
        // should be paid from long positions using short collateral
        // short positions should receive $100 of funding fees in long collateral and $400 of funding fees in short collateral
        if (result.longsPayShorts) {
            cache.fundingUsdForLongCollateral = Precision.mulDiv(cache.fundingUsd, cache.openInterest.long.longToken, cache.longOpenInterest);
            cache.fundingUsdForShortCollateral = Precision.mulDiv(cache.fundingUsd, cache.openInterest.long.shortToken, cache.longOpenInterest);
        } else {
            cache.fundingUsdForLongCollateral = Precision.mulDiv(cache.fundingUsd, cache.openInterest.short.longToken, cache.shortOpenInterest);
            cache.fundingUsdForShortCollateral = Precision.mulDiv(cache.fundingUsd, cache.openInterest.short.shortToken, cache.shortOpenInterest);
        }

        // calculate the change in funding amount per size values
        // for example, if the fundingUsdForLongCollateral is $100, the longToken price is $2000, the longOpenInterest is $10,000, shortOpenInterest is $5000
        // if longs pay shorts then the fundingFeeAmountPerSize.long.longToken should be increased by 0.05 tokens per $10,000 or 0.000005 tokens per $1
        // the claimableFundingAmountPerSize.short.longToken should be increased by 0.05 tokens per $5000 or 0.00001 tokens per $1
        if (result.longsPayShorts) {
            // use the same longTokenPrice.max and shortTokenPrice.max to calculate the amount to be paid and received
            // positions only pay funding in the position's collateral token
            // so the fundingUsdForLongCollateral is divided by the total long open interest for long positions using the longToken as collateral
            // and the fundingUsdForShortCollateral is divided by the total long open interest for long positions using the shortToken as collateral
            result.fundingFeeAmountPerSizeDelta.long.longToken = getFundingAmountPerSizeDelta(
                cache.fundingUsdForLongCollateral,
                cache.openInterest.long.longToken,
                prices.longTokenPrice.max,
                true // roundUpMagnitude
            );

            result.fundingFeeAmountPerSizeDelta.long.shortToken = getFundingAmountPerSizeDelta(
                cache.fundingUsdForShortCollateral,
                cache.openInterest.long.shortToken,
                prices.shortTokenPrice.max,
                true // roundUpMagnitude
            );

            // positions receive funding in both the longToken and shortToken
            // so the fundingUsdForLongCollateral and fundingUsdForShortCollateral is divided by the total short open interest
            result.claimableFundingAmountPerSizeDelta.short.longToken = getFundingAmountPerSizeDelta(
                cache.fundingUsdForLongCollateral,
                cache.shortOpenInterest,
                prices.longTokenPrice.max,
                false // roundUpMagnitude
            );

            result.claimableFundingAmountPerSizeDelta.short.shortToken = getFundingAmountPerSizeDelta(
                cache.fundingUsdForShortCollateral,
                cache.shortOpenInterest,
                prices.shortTokenPrice.max,
                false // roundUpMagnitude
            );
        } else {
            // use the same longTokenPrice.max and shortTokenPrice.max to calculate the amount to be paid and received
            // positions only pay funding in the position's collateral token
            // so the fundingUsdForLongCollateral is divided by the total short open interest for short positions using the longToken as collateral
            // and the fundingUsdForShortCollateral is divided by the total short open interest for short positions using the shortToken as collateral
            result.fundingFeeAmountPerSizeDelta.short.longToken = getFundingAmountPerSizeDelta(
                cache.fundingUsdForLongCollateral,
                cache.openInterest.short.longToken,
                prices.longTokenPrice.max,
                true // roundUpMagnitude
            );

            result.fundingFeeAmountPerSizeDelta.short.shortToken = getFundingAmountPerSizeDelta(
                cache.fundingUsdForShortCollateral,
                cache.openInterest.short.shortToken,
                prices.shortTokenPrice.max,
                true // roundUpMagnitude
            );

            // positions receive funding in both the longToken and shortToken
            // so the fundingUsdForLongCollateral and fundingUsdForShortCollateral is divided by the total long open interest
            result.claimableFundingAmountPerSizeDelta.long.longToken = getFundingAmountPerSizeDelta(
                cache.fundingUsdForLongCollateral,
                cache.longOpenInterest,
                prices.longTokenPrice.max,
                false // roundUpMagnitude
            );

            result.claimableFundingAmountPerSizeDelta.long.shortToken = getFundingAmountPerSizeDelta(
                cache.fundingUsdForShortCollateral,
                cache.longOpenInterest,
                prices.shortTokenPrice.max,
                false // roundUpMagnitude
            );
        }

        return result;
    }

    // @dev get the next funding factor per second
    // in case the minFundingFactorPerSecond is not zero, and the long / short skew has flipped
    // if orders are being created frequently it is possible that the minFundingFactorPerSecond prevents
    // the nextSavedFundingFactorPerSecond from being decreased fast enough for the sign to eventually flip
    // if it is bound by minFundingFactorPerSecond
    // for that reason, only the nextFundingFactorPerSecond is bound by minFundingFactorPerSecond
    // and the nextSavedFundingFactorPerSecond is not bound by minFundingFactorPerSecond
    // @return nextFundingFactorPerSecond, longsPayShorts, nextSavedFundingFactorPerSecond
    function getNextFundingFactorPerSecond(
        DataStore dataStore,
        Market.Props memory market,
        uint256 indexTokenPrice,
        uint256 durationInSeconds
    ) internal view returns (uint256, bool, int256) {
        GetNextFundingFactorPerSecondCache memory cache;

        bool useOpenInterestInTokens = dataStore.getBool(Keys.USE_OPEN_INTEREST_IN_TOKENS_FOR_BALANCE);

        uint256 longOpenInterest = getOpenInterestForBalance({
            dataStore: dataStore,
            market: market,
            useOpenInterestInTokens: useOpenInterestInTokens,
            indexTokenPrice: indexTokenPrice,
            isLong: true
        });

        uint256 shortOpenInterest = getOpenInterestForBalance({
            dataStore: dataStore,
            market: market,
            useOpenInterestInTokens: useOpenInterestInTokens,
            indexTokenPrice: indexTokenPrice,
            isLong: false
        });

        cache.diffUsd = Calc.diff(longOpenInterest, shortOpenInterest);
        cache.totalOpenInterest = longOpenInterest + shortOpenInterest;

        FundingConfigCache memory configCache;
        configCache.fundingIncreaseFactorPerSecond = dataStore.getUint(Keys.fundingIncreaseFactorPerSecondKey(market.marketToken));

        // if the open interest difference is zero and adaptive funding
        // is not enabled, then return zero as the funding factor
        if (cache.diffUsd == 0 && configCache.fundingIncreaseFactorPerSecond == 0) {
            return (0, true, 0);
        }

        if (cache.totalOpenInterest == 0) {
            revert Errors.UnableToGetFundingFactorEmptyOpenInterest();
        }

        cache.fundingExponentFactor = getFundingExponentFactor(dataStore, market.marketToken);

        cache.diffUsdAfterExponent = Precision.applyExponentFactor(cache.diffUsd, cache.fundingExponentFactor);
        cache.diffUsdToOpenInterestFactor = Precision.toFactor(cache.diffUsdAfterExponent, cache.totalOpenInterest);

        if (configCache.fundingIncreaseFactorPerSecond == 0) {
            cache.fundingFactor = getFundingFactor(dataStore, market.marketToken);
            uint256 maxFundingFactorPerSecond = dataStore.getUint(Keys.maxFundingFactorPerSecondKey(market.marketToken));

            // if there is no fundingIncreaseFactorPerSecond then return the static fundingFactor based on open interest difference
            uint256 fundingFactorPerSecond = Precision.applyFactor(cache.diffUsdToOpenInterestFactor, cache.fundingFactor);

            if (fundingFactorPerSecond > maxFundingFactorPerSecond) {
                fundingFactorPerSecond = maxFundingFactorPerSecond;
            }

            return (
                fundingFactorPerSecond,
                longOpenInterest > shortOpenInterest,
                0
            );
        }

        // if the savedFundingFactorPerSecond is positive then longs pay shorts
        // if the savedFundingFactorPerSecond is negative then shorts pay longs
        cache.savedFundingFactorPerSecond = getSavedFundingFactorPerSecond(dataStore, market.marketToken);
        cache.savedFundingFactorPerSecondMagnitude = cache.savedFundingFactorPerSecond.abs();

        configCache.thresholdForStableFunding = dataStore.getUint(Keys.thresholdForStableFundingKey(market.marketToken));
        configCache.thresholdForDecreaseFunding = dataStore.getUint(Keys.thresholdForDecreaseFundingKey(market.marketToken));

        // set the default of nextSavedFundingFactorPerSecond as the savedFundingFactorPerSecond
        cache.nextSavedFundingFactorPerSecond = cache.savedFundingFactorPerSecond;

        // the default will be NoChange
        FundingRateChangeType fundingRateChangeType;

        bool isSkewTheSameDirectionAsFunding = (cache.savedFundingFactorPerSecond > 0 && longOpenInterest > shortOpenInterest) || (cache.savedFundingFactorPerSecond < 0 && shortOpenInterest > longOpenInterest);

        if (isSkewTheSameDirectionAsFunding) {
            if (cache.diffUsdToOpenInterestFactor > configCache.thresholdForStableFunding) {
                fundingRateChangeType = FundingRateChangeType.Increase;
            } else if (cache.diffUsdToOpenInterestFactor < configCache.thresholdForDecreaseFunding) {
                // if thresholdForDecreaseFunding is zero and diffUsdToOpenInterestFactor is also zero
                // then the fundingRateChangeType would be NoChange
                fundingRateChangeType = FundingRateChangeType.Decrease;
            }
        } else {
            // if the skew has changed, then the funding should increase in the opposite direction
            fundingRateChangeType = FundingRateChangeType.Increase;
        }

        if (fundingRateChangeType == FundingRateChangeType.Increase) {
            // increase funding rate
            int256 increaseValue = Precision.applyFactor(cache.diffUsdToOpenInterestFactor, configCache.fundingIncreaseFactorPerSecond).toInt256() * durationInSeconds.toInt256();

            // if there are more longs than shorts, then the savedFundingFactorPerSecond should increase
            // otherwise the savedFundingFactorPerSecond should increase in the opposite direction / decrease
            if (longOpenInterest < shortOpenInterest) {
                increaseValue = -increaseValue;
            }

            cache.nextSavedFundingFactorPerSecond = cache.savedFundingFactorPerSecond + increaseValue;
        }

        if (fundingRateChangeType == FundingRateChangeType.Decrease && cache.savedFundingFactorPerSecondMagnitude != 0) {
            configCache.fundingDecreaseFactorPerSecond = dataStore.getUint(Keys.fundingDecreaseFactorPerSecondKey(market.marketToken));
            uint256 decreaseValue = configCache.fundingDecreaseFactorPerSecond * durationInSeconds;

            if (cache.savedFundingFactorPerSecondMagnitude <= decreaseValue) {
                // set the funding factor to 1 or -1 depending on the original savedFundingFactorPerSecond
                cache.nextSavedFundingFactorPerSecond = cache.savedFundingFactorPerSecond / cache.savedFundingFactorPerSecondMagnitude.toInt256();
            } else {
                // reduce the original savedFundingFactorPerSecond while keeping the original sign of the savedFundingFactorPerSecond
                int256 sign = cache.savedFundingFactorPerSecond / cache.savedFundingFactorPerSecondMagnitude.toInt256();
                cache.nextSavedFundingFactorPerSecond = (cache.savedFundingFactorPerSecondMagnitude - decreaseValue).toInt256() * sign;
            }
        }

        configCache.minFundingFactorPerSecond = dataStore.getUint(Keys.minFundingFactorPerSecondKey(market.marketToken));
        configCache.maxFundingFactorPerSecond = dataStore.getUint(Keys.maxFundingFactorPerSecondKey(market.marketToken));

        cache.nextSavedFundingFactorPerSecond = Calc.boundMagnitude(
            cache.nextSavedFundingFactorPerSecond,
            0,
            configCache.maxFundingFactorPerSecond
        );

        cache.nextSavedFundingFactorPerSecondWithMinBound = Calc.boundMagnitude(
            cache.nextSavedFundingFactorPerSecond,
            configCache.minFundingFactorPerSecond,
            configCache.maxFundingFactorPerSecond
        );

        return (
            cache.nextSavedFundingFactorPerSecondWithMinBound.abs(),
            cache.nextSavedFundingFactorPerSecondWithMinBound > 0,
            cache.nextSavedFundingFactorPerSecond
        );
    }

    // store funding values as token amount per (Precision.FLOAT_PRECISION_SQRT / Precision.FLOAT_PRECISION) of USD size
    function getFundingAmountPerSizeDelta(
        uint256 fundingUsd,
        uint256 openInterest,
        uint256 tokenPrice,
        bool roundUpMagnitude
    ) internal pure returns (uint256) {
        if (fundingUsd == 0 || openInterest == 0) { return 0; }

        uint256 fundingUsdPerSize = Precision.mulDiv(
            fundingUsd,
            Precision.FLOAT_PRECISION * Precision.FLOAT_PRECISION_SQRT,
            openInterest,
            roundUpMagnitude
        );

        if (roundUpMagnitude) {
            return Calc.roundUpDivision(fundingUsdPerSize, tokenPrice);
        } else {
            return fundingUsdPerSize / tokenPrice;
        }
    }

    // @dev update the cumulative borrowing factor for a market
    // @param dataStore DataStore
    // @param market the market to update
    // @param longToken the market's long token
    // @param shortToken the market's short token
    // @param prices the prices of the market tokens
    // @param isLong whether to update the long or short side
    function updateCumulativeBorrowingFactor(
        DataStore dataStore,
        EventEmitter eventEmitter,
        Market.Props memory market,
        MarketPrices memory prices,
        bool isLong
    ) external {
        (/* uint256 nextCumulativeBorrowingFactor */, uint256 delta, uint256 borrowingFactorPerSecond) = getNextCumulativeBorrowingFactor(
            dataStore,
            market,
            prices,
            isLong
        );

        incrementCumulativeBorrowingFactor(
            dataStore,
            eventEmitter,
            market.marketToken,
            isLong,
            delta
        );

        dataStore.setUint(Keys.cumulativeBorrowingFactorUpdatedAtKey(market.marketToken, isLong), Chain.currentTimestamp());

        MarketEventUtils.emitBorrowing(
            eventEmitter,
            market.marketToken,
            borrowingFactorPerSecond
        );
    }

    // @dev get the ratio of pnl to pool value
    // @param dataStore DataStore
    // @param oracle Oracle
    // @param market the trading market
    // @param isLong whether to get the value for the long or short side
    // @param maximize whether to maximize the factor
    // @return (pnl of positions) / (long or short pool value)
    function getPnlToPoolFactor(
        DataStore dataStore,
        IOracle oracle,
        address market,
        bool isLong,
        bool maximize
    ) internal view returns (int256) {
        Market.Props memory _market = getEnabledMarket(dataStore, market);
        MarketPrices memory prices = MarketPrices(
            oracle.getPrimaryPrice(_market.indexToken),
            oracle.getPrimaryPrice(_market.longToken),
            oracle.getPrimaryPrice(_market.shortToken)
        );

        return getPnlToPoolFactor(dataStore, _market, prices, isLong, maximize);
    }

    // @dev get the ratio of pnl to pool value
    // @param dataStore DataStore
    // @param market the market values
    // @param prices the prices of the market tokens
    // @param isLong whether to get the value for the long or short side
    // @param maximize whether to maximize the factor
    // @return (pnl of positions) / (long or short pool value)
    function getPnlToPoolFactor(
        DataStore dataStore,
        Market.Props memory market,
        MarketPrices memory prices,
        bool isLong,
        bool maximize
    ) internal view returns (int256) {
        uint256 poolUsd = getPoolUsdWithoutPnl(dataStore, market, prices, isLong, !maximize);

        if (poolUsd == 0) {
            return 0;
        }

        // note that this PnL does not factor in the PnL from
        // the pending price impact of positions
        int256 pnl = getPnl(
            dataStore,
            market,
            prices.indexTokenPrice,
            isLong,
            maximize
        );

        return Precision.toFactor(pnl, poolUsd);
    }

    function validateOpenInterest(
        DataStore dataStore,
        Market.Props memory market,
        bool isLong
    ) internal view {
        uint256 openInterest = getOpenInterest(dataStore, market, isLong);
        uint256 maxOpenInterest = getMaxOpenInterest(dataStore, market.marketToken, isLong);

        if (openInterest > maxOpenInterest) {
            revert Errors.MaxOpenInterestExceeded(openInterest, maxOpenInterest);
        }
    }

    // @dev validate that the pool amount is within the max allowed amount
    // @param dataStore DataStore
    // @param market the market to check
    // @param token the token to check
    function validatePoolAmount(
        DataStore dataStore,
        Market.Props memory market,
        address token
    ) internal view {
        uint256 poolAmount = getPoolAmount(dataStore, market, token);
        uint256 maxPoolAmount = getMaxPoolAmount(dataStore, market.marketToken, token);

        if (poolAmount > maxPoolAmount) {
            revert Errors.MaxPoolAmountExceeded(poolAmount, maxPoolAmount);
        }
    }

    function validatePoolUsdForDeposit(
        DataStore dataStore,
        Market.Props memory market,
        address token,
        uint256 tokenPrice
    ) internal view {
        uint256 poolAmount = getPoolAmount(dataStore, market, token);
        uint256 poolUsd = poolAmount * tokenPrice;
        uint256 maxPoolUsd = getMaxPoolUsdForDeposit(dataStore, market.marketToken, token);

        if (poolUsd > maxPoolUsd) {
            revert Errors.MaxPoolUsdForDepositExceeded(poolUsd, maxPoolUsd);
        }
    }

    // @dev validate that the amount of tokens required to be reserved
    // is below the configured threshold
    // @param dataStore DataStore
    // @param market the market values
    // @param prices the prices of the market tokens
    // @param isLong whether to check the long or short side
    function validateReserve(
        DataStore dataStore,
        Market.Props memory market,
        MarketPrices memory prices,
        bool isLong
    ) internal view {
        // poolUsd is used instead of pool amount as the indexToken may not match the longToken
        // additionally, the shortToken may not be a stablecoin
        uint256 poolUsd = getPoolUsdWithoutPnl(dataStore, market, prices, isLong, false);
        uint256 reserveFactor = getReserveFactor(dataStore, market.marketToken, isLong);
        uint256 maxReservedUsd = Precision.applyFactor(poolUsd, reserveFactor);

        uint256 reservedUsd = getReservedUsd(
            dataStore,
            market,
            prices,
            isLong
        );

        if (reservedUsd > maxReservedUsd) {
            revert Errors.InsufficientReserve(reservedUsd, maxReservedUsd);
        }
    }

    // @dev validate that the amount of tokens required to be reserved for open interest
    // is below the configured threshold
    // @param dataStore DataStore
    // @param market the market values
    // @param prices the prices of the market tokens
    // @param isLong whether to check the long or short side
    function validateOpenInterestReserve(
        DataStore dataStore,
        Market.Props memory market,
        MarketPrices memory prices,
        bool isLong
    ) internal view {
        // poolUsd is used instead of pool amount as the indexToken may not match the longToken
        // additionally, the shortToken may not be a stablecoin
        uint256 poolUsd = getPoolUsdWithoutPnl(dataStore, market, prices, isLong, false);
        uint256 reserveFactor = getOpenInterestReserveFactor(dataStore, market.marketToken, isLong);
        uint256 maxReservedUsd = Precision.applyFactor(poolUsd, reserveFactor);

        uint256 reservedUsd = getReservedUsd(
            dataStore,
            market,
            prices,
            isLong
        );

        if (reservedUsd > maxReservedUsd) {
            revert Errors.InsufficientReserveForOpenInterest(reservedUsd, maxReservedUsd);
        }
    }

    // @dev update the swap impact pool amount, if it is a positive impact amount
    // cap the impact amount to the amount available in the swap impact pool
    // @param dataStore DataStore
    // @param eventEmitter EventEmitter
    // @param market the market to apply to
    // @param token the token to apply to
    // @param tokenPrice the price of the token
    // @param priceImpactUsd the USD price impact
    function applySwapImpactWithCap(
        DataStore dataStore,
        EventEmitter eventEmitter,
        address market,
        address token,
        Price.Props memory tokenPrice,
        int256 priceImpactUsd
    ) internal returns (int256, uint256) {
        (int256 impactAmount, uint256 cappedDiffUsd) = getSwapImpactAmountWithCap(
            dataStore,
            market,
            token,
            tokenPrice,
            priceImpactUsd
        );

        // if there is a positive impact, the impact pool amount should be reduced
        // if there is a negative impact, the impact pool amount should be increased
        applyDeltaToSwapImpactPool(
            dataStore,
            eventEmitter,
            market,
            token,
            -impactAmount
        );

        return (impactAmount, cappedDiffUsd);
    }

    function getSwapImpactAmountWithCap(
        DataStore dataStore,
        address market,
        address token,
        Price.Props memory tokenPrice,
        int256 priceImpactUsd
    ) internal view returns (int256, uint256) {
        int256 impactAmount;
        uint256 cappedDiffUsd;

        if (priceImpactUsd > 0) {
            // positive impact: minimize impactAmount, use tokenPrice.max
            // round positive impactAmount down, this will be deducted from the swap impact pool for the user
            impactAmount = priceImpactUsd / tokenPrice.max.toInt256();

            int256 maxImpactAmount = getSwapImpactPoolAmount(dataStore, market, token).toInt256();
            if (impactAmount > maxImpactAmount) {
                cappedDiffUsd = (impactAmount - maxImpactAmount).toUint256() * tokenPrice.max;
                impactAmount = maxImpactAmount;
            }
        } else {
            // negative impact: maximize impactAmount, use tokenPrice.min
            // round negative impactAmount up, this will be deducted from the user
            impactAmount = Calc.roundUpMagnitudeDivision(priceImpactUsd, tokenPrice.min);
        }

        return (impactAmount, cappedDiffUsd);
    }

    // @dev get the funding amount to be deducted or distributed
    //
    // @param latestFundingAmountPerSize the latest funding amount per size
    // @param positionFundingAmountPerSize the funding amount per size for the position
    // @param positionSizeInUsd the position size in USD
    // @param roundUpMagnitude whether the round up the result
    //
    // @return fundingAmount
    function getFundingAmount(
        uint256 latestFundingAmountPerSize,
        uint256 positionFundingAmountPerSize,
        uint256 positionSizeInUsd,
        bool roundUpMagnitude
    ) internal pure returns (uint256) {
        uint256 fundingDiffFactor = (latestFundingAmountPerSize - positionFundingAmountPerSize);

        // a user could avoid paying funding fees by continually updating the position
        // before the funding fee becomes large enough to be chargeable
        // to avoid this, funding fee amounts should be rounded up
        //
        // this could lead to large additional charges if the token has a low number of decimals
        // or if the token's value is very high, so care should be taken to inform users of this
        //
        // if the calculation is for the claimable amount, the amount should be rounded down instead

        // divide the result by Precision.FLOAT_PRECISION * Precision.FLOAT_PRECISION_SQRT as the fundingAmountPerSize values
        // are stored based on FLOAT_PRECISION_SQRT values
        return Precision.mulDiv(
            positionSizeInUsd,
            fundingDiffFactor,
            Precision.FLOAT_PRECISION * Precision.FLOAT_PRECISION_SQRT,
            roundUpMagnitude
        );
    }

    // @dev get the borrowing fees for a position, assumes that cumulativeBorrowingFactor
    // has already been updated to the latest value
    // @param dataStore DataStore
    // @param position Position.Props
    // @return the borrowing fees for a position
    function getBorrowingFees(DataStore dataStore, Position.Props memory position) internal view returns (uint256) {
        uint256 cumulativeBorrowingFactor = getCumulativeBorrowingFactor(dataStore, position.market(), position.isLong());
        if (position.borrowingFactor() > cumulativeBorrowingFactor) {
            revert Errors.UnexpectedBorrowingFactor(position.borrowingFactor(), cumulativeBorrowingFactor);
        }
        uint256 diffFactor = cumulativeBorrowingFactor - position.borrowingFactor();
        return Precision.applyFactor(position.sizeInUsd(), diffFactor);
    }

    // @dev get the borrowing fees for a position by calculating the latest cumulativeBorrowingFactor
    // @param dataStore DataStore
    // @param position Position.Props
    // @param market the position's market
    // @param prices the prices of the market tokens
    // @return the borrowing fees for a position
    function getNextBorrowingFees(DataStore dataStore, Position.Props memory position, Market.Props memory market, MarketPrices memory prices) internal view returns (uint256) {
        (uint256 nextCumulativeBorrowingFactor, /* uint256 delta */, ) = getNextCumulativeBorrowingFactor(
            dataStore,
            market,
            prices,
            position.isLong()
        );

        if (position.borrowingFactor() > nextCumulativeBorrowingFactor) {
            revert Errors.UnexpectedBorrowingFactor(position.borrowingFactor(), nextCumulativeBorrowingFactor);
        }
        uint256 diffFactor = nextCumulativeBorrowingFactor - position.borrowingFactor();
        return Precision.applyFactor(position.sizeInUsd(), diffFactor);
    }

    // @dev get the total reserved USD required for positions
    // @param market the market to check
    // @param prices the prices of the market tokens
    // @param isLong whether to get the value for the long or short side
    function getReservedUsd(
        DataStore dataStore,
        Market.Props memory market,
        MarketPrices memory prices,
        bool isLong
    ) internal view returns (uint256) {
        uint256 reservedUsd;
        if (isLong) {
            // for longs calculate the reserved USD based on the open interest and current indexTokenPrice
            // this works well for e.g. an ETH / USD market with long collateral token as WETH
            // the available amount to be reserved would scale with the price of ETH
            // this also works for e.g. a SOL / USD market with long collateral token as WETH
            // if the price of SOL increases more than the price of ETH, additional amounts would be
            // automatically reserved
            uint256 openInterestInTokens = getOpenInterestInTokens(dataStore, market, isLong);
            reservedUsd = openInterestInTokens * prices.indexTokenPrice.max;
        } else {
            // for shorts use the open interest as the reserved USD value
            // this works well for e.g. an ETH / USD market with short collateral token as USDC
            // the available amount to be reserved would not change with the price of ETH
            reservedUsd = getOpenInterest(dataStore, market, isLong);
        }

        return reservedUsd;
    }

    // @dev get the virtual inventory for swaps
    // @param dataStore DataStore
    // @param market the market to check
    // @return returns (has virtual inventory, virtual long token inventory, virtual short token inventory)
    function getVirtualInventoryForSwaps(DataStore dataStore, address market) internal view returns (bool, uint256, uint256) {
        bytes32 virtualMarketId = dataStore.getBytes32(Keys.virtualMarketIdKey(market));
        if (virtualMarketId == bytes32(0)) {
            return (false, 0, 0);
        }

        return (
            true,
            dataStore.getUint(Keys.virtualInventoryForSwapsKey(virtualMarketId, true)),
            dataStore.getUint(Keys.virtualInventoryForSwapsKey(virtualMarketId, false))
        );
    }

    function getIsLongToken(Market.Props memory market, address token) internal pure returns (bool) {
        if (token != market.longToken && token != market.shortToken) {
            revert Errors.UnexpectedTokenForVirtualInventory(token, market.marketToken);
        }

        return token == market.longToken;
    }

    function getVirtualInventoryForPositions(DataStore dataStore, address token) internal view returns (bool, int256) {
        bytes32 virtualTokenId = dataStore.getBytes32(Keys.virtualTokenIdKey(token));
        if (virtualTokenId == bytes32(0)) {
            return (false, 0);
        }

        return (true, dataStore.getInt(Keys.virtualInventoryForPositionsKey(virtualTokenId)));
    }

    function getVirtualInventoryForPositionsInTokens(DataStore dataStore, address token) internal view returns (bool, int256) {
        bytes32 virtualTokenId = dataStore.getBytes32(Keys.virtualTokenIdKey(token));
        if (virtualTokenId == bytes32(0)) {
            return (false, 0);
        }

        return (true, dataStore.getInt(Keys.virtualInventoryForPositionsInTokensKey(virtualTokenId)));
    }

    // @dev update the virtual inventory for swaps
    // @param dataStore DataStore
    // @param marketAddress the market to update
    // @param token the token to update
    // @param delta the update amount
    function applyDeltaToVirtualInventoryForSwaps(
        DataStore dataStore,
        EventEmitter eventEmitter,
        Market.Props memory market,
        address token,
        int256 delta
    ) internal returns (bool, uint256) {
        bytes32 virtualMarketId = dataStore.getBytes32(Keys.virtualMarketIdKey(market.marketToken));
        if (virtualMarketId == bytes32(0)) {
            return (false, 0);
        }

        bool isLongToken = getIsLongToken(market, token);

        uint256 nextValue = dataStore.applyBoundedDeltaToUint(
            Keys.virtualInventoryForSwapsKey(virtualMarketId, isLongToken),
            delta
        );

        MarketEventUtils.emitVirtualSwapInventoryUpdated(eventEmitter, market.marketToken, isLongToken, virtualMarketId, delta, nextValue);

        return (true, nextValue);
    }

    function applyDeltaToVirtualInventoryForPositions(
        DataStore dataStore,
        EventEmitter eventEmitter,
        address token,
        int256 delta
    ) internal returns (bool, int256) {
        bytes32 virtualTokenId = dataStore.getBytes32(Keys.virtualTokenIdKey(token));
        if (virtualTokenId == bytes32(0)) {
            return (false, 0);
        }

        int256 nextValue = dataStore.applyDeltaToInt(
            Keys.virtualInventoryForPositionsKey(virtualTokenId),
            delta
        );

        MarketEventUtils.emitVirtualPositionInventoryUpdated(eventEmitter, token, virtualTokenId, delta, nextValue);

        return (true, nextValue);
    }

    function applyDeltaToVirtualInventoryForPositionsInTokens(
        DataStore dataStore,
        EventEmitter eventEmitter,
        address token,
        int256 delta
    ) internal returns (bool, int256) {
        bytes32 virtualTokenId = dataStore.getBytes32(Keys.virtualTokenIdKey(token));
        if (virtualTokenId == bytes32(0)) {
            return (false, 0);
        }

        int256 nextValue = dataStore.applyDeltaToInt(
            Keys.virtualInventoryForPositionsInTokensKey(virtualTokenId),
            delta
        );

        MarketEventUtils.emitVirtualPositionInventoryUpdated(eventEmitter, token, virtualTokenId, delta, nextValue);

        return (true, nextValue);
    }

    // @dev get the open interest of a market
    // @param dataStore DataStore
    // @param market the market to check
    // @param longToken the long token of the market
    // @param shortToken the short token of the market
    function getOpenInterest(
        DataStore dataStore,
        Market.Props memory market
    ) internal view returns (uint256) {
        uint256 longOpenInterest = getOpenInterest(dataStore, market, true);
        uint256 shortOpenInterest = getOpenInterest(dataStore, market, false);

        return longOpenInterest + shortOpenInterest;
    }

    function getOpenInterest(
        DataStore dataStore,
        Market.Props memory market,
        bool isLong
    ) internal view returns (uint256) {
        uint256 divisor = getPoolDivisor(market.longToken, market.shortToken);
        uint256 openInterestUsingLongTokenAsCollateral = getOpenInterest(dataStore, market.marketToken, market.longToken, isLong, divisor);
        uint256 openInterestUsingShortTokenAsCollateral = getOpenInterest(dataStore, market.marketToken, market.shortToken, isLong, divisor);

        return openInterestUsingLongTokenAsCollateral + openInterestUsingShortTokenAsCollateral;
    }

    function getOpenInterest(
        DataStore dataStore,
        address market,
        address collateralToken,
        bool isLong,
        uint256 divisor
    ) internal view returns (uint256) {
        return dataStore.getUint(Keys.openInterestKey(market, collateralToken, isLong)) / divisor;
    }

    function getOpenInterestForBalance(
        DataStore dataStore,
        Market.Props memory market,
        bool useOpenInterestInTokens,
        uint256 indexTokenPrice,
        bool isLong
    ) internal view returns (uint256) {
        uint256 divisor = getPoolDivisor(market.longToken, market.shortToken);

        uint256 openInterestUsingLongTokenAsCollateral = getOpenInterestForBalance({
            dataStore: dataStore,
            market: market.marketToken,
            divisor: divisor,
            useOpenInterestInTokens: useOpenInterestInTokens,
            indexTokenPrice: indexTokenPrice,
            collateralToken: market.longToken,
            isLong: isLong
        });

        uint256 openInterestUsingShortTokenAsCollateral = getOpenInterestForBalance({
            dataStore: dataStore,
            market: market.marketToken,
            divisor: divisor,
            useOpenInterestInTokens: useOpenInterestInTokens,
            indexTokenPrice: indexTokenPrice,
            collateralToken: market.shortToken,
            isLong: isLong
        });

        return openInterestUsingLongTokenAsCollateral + openInterestUsingShortTokenAsCollateral;
    }

    function getOpenInterestForBalance(
        DataStore dataStore,
        address market,
        uint256 divisor,
        bool useOpenInterestInTokens,
        uint256 indexTokenPrice,
        address collateralToken,
        bool isLong
    ) internal view returns (uint256) {
        if (useOpenInterestInTokens) {
            uint256 openInterestInTokens = getOpenInterestInTokens(
                dataStore,
                market,
                collateralToken,
                isLong,
                divisor
            );

            return openInterestInTokens * indexTokenPrice;
        }

        return getOpenInterest(dataStore, market, collateralToken, isLong, divisor);
    }

    // this is used to divide the values of getPoolAmount and getOpenInterest
    // if the longToken and shortToken are the same, then these values have to be divided by two
    // to avoid double counting
    function getPoolDivisor(address longToken, address shortToken) internal pure returns (uint256) {
        return longToken == shortToken ? 2 : 1;
    }

    function getOpenInterestInTokensInUsd(
        DataStore dataStore,
        Market.Props memory market,
        bool isLong,
        uint256 indexTokenPrice
    ) internal view returns (uint256) {
        uint256 openInterestInTokens = getOpenInterestInTokens(
            dataStore,
            market,
            isLong
        );

        return openInterestInTokens * indexTokenPrice;
    }

    // @dev the long and short open interest in tokens for a market
    // @param dataStore DataStore
    // @param market the market to check
    // @param longToken the long token of the market
    // @param shortToken the short token of the market
    // @param isLong whether to check the long or short side
    function getOpenInterestInTokens(
        DataStore dataStore,
        Market.Props memory market,
        bool isLong
    ) internal view returns (uint256) {
        uint256 divisor = getPoolDivisor(market.longToken, market.shortToken);
        uint256 openInterestUsingLongTokenAsCollateral = getOpenInterestInTokens(dataStore, market.marketToken, market.longToken, isLong, divisor);
        uint256 openInterestUsingShortTokenAsCollateral = getOpenInterestInTokens(dataStore, market.marketToken, market.shortToken, isLong, divisor);

        return openInterestUsingLongTokenAsCollateral + openInterestUsingShortTokenAsCollateral;
    }

    // @dev the long and short open interest in tokens for a market based on the collateral token used
    // @param dataStore DataStore
    // @param market the market to check
    // @param collateralToken the collateral token to check
    // @param isLong whether to check the long or short side
    function getOpenInterestInTokens(
        DataStore dataStore,
        address market,
        address collateralToken,
        bool isLong,
        uint256 divisor
    ) internal view returns (uint256) {
        return dataStore.getUint(Keys.openInterestInTokensKey(market, collateralToken, isLong)) / divisor;
    }

    // @dev get the sum of open interest and pnl for a market
    // getOpenInterestInTokens * tokenPrice would not reflect pending positive pnl
    // for short positions, so getOpenInterestWithPnl should be used if that info is needed
    // @param dataStore DataStore
    // @param market the market to check
    // @param longToken the long token of the market
    // @param shortToken the short token of the market
    // @param indexTokenPrice the price of the index token
    // @param isLong whether to check the long or short side
    // @param maximize whether to maximize or minimize the value
    // @return the sum of open interest and pnl for a market
    function getOpenInterestWithPnl(
        DataStore dataStore,
        Market.Props memory market,
        Price.Props memory indexTokenPrice,
        bool isLong,
        bool maximize
    ) internal view returns (int256) {
        uint256 openInterest = getOpenInterest(dataStore, market, isLong);
        int256 pnl = getPnl(dataStore, market, indexTokenPrice, isLong, maximize);
        return Calc.sumReturnInt256(openInterest, pnl);
    }

    // @dev get the max position impact factor for decreasing position
    // @param dataStore DataStore
    // @param market the market to check
    // @param isPositive whether the price impact is positive or negative
    function getMaxPositionImpactFactor(DataStore dataStore, address market, bool isPositive) internal view returns (uint256) {
        (uint256 maxPositiveImpactFactor, uint256 maxNegativeImpactFactor) = getMaxPositionImpactFactors(dataStore, market);

        return isPositive ? maxPositiveImpactFactor : maxNegativeImpactFactor;
    }

    function getMaxPositionImpactFactors(DataStore dataStore, address market) internal view returns (uint256, uint256) {
        uint256 maxPositiveImpactFactor = dataStore.getUint(Keys.maxPositionImpactFactorKey(market, true));
        uint256 maxNegativeImpactFactor = dataStore.getUint(Keys.maxPositionImpactFactorKey(market, false));

        if (maxPositiveImpactFactor > maxNegativeImpactFactor) {
            maxPositiveImpactFactor = maxNegativeImpactFactor;
        }

        return (maxPositiveImpactFactor, maxNegativeImpactFactor);
    }

    // @dev get the max position impact factor for liquidations
    // @param dataStore DataStore
    // @param market the market to check
    function getMaxPositionImpactFactorForLiquidations(DataStore dataStore, address market) internal view returns (uint256) {
        return dataStore.getUint(Keys.maxPositionImpactFactorForLiquidationsKey(market));
    }

    // @dev get the min collateral factor
    // @param dataStore DataStore
    // @param market the market to check
    // @notice Should always be larger than minCollateralFactorForLiquidation
    // to ensure users cannot create immediately liquidatable positions.
    function getMinCollateralFactor(DataStore dataStore, address market) internal view returns (uint256) {
        return dataStore.getUint(Keys.minCollateralFactorKey(market));
    }

    // @dev get the min collateral factor for liquidation
    // @param dataStore DataStore
    // @param market the market to check
    // @notice Should be lower than minCollateralFactor to prevent immediately liquidatable positions.
    function getMinCollateralFactorForLiquidation(DataStore dataStore, address market) internal view returns (uint256) {
        return dataStore.getUint(Keys.minCollateralFactorForLiquidationKey(market));
    }

    // @dev get the min collateral factor for open interest multiplier
    // @param dataStore DataStore
    // @param market the market to check
    // @param isLong whether it is for the long or short side
    function getMinCollateralFactorForOpenInterestMultiplier(DataStore dataStore, address market, bool isLong) internal view returns (uint256) {
        return dataStore.getUint(Keys.minCollateralFactorForOpenInterestMultiplierKey(market, isLong));
    }

    // @dev get the min collateral factor for open interest
    // @param dataStore DataStore
    // @param market the market to check
    // @param longToken the long token of the market
    // @param shortToken the short token of the market
    // @param openInterestDelta the change in open interest
    // @param isLong whether it is for the long or short side
    function getMinCollateralFactorForOpenInterest(
        DataStore dataStore,
        Market.Props memory market,
        int256 openInterestDelta,
        bool isLong
    ) internal view returns (uint256) {
        uint256 openInterest = getOpenInterest(dataStore, market, isLong);
        openInterest = Calc.sumReturnUint256(openInterest, openInterestDelta);
        uint256 multiplierFactor = getMinCollateralFactorForOpenInterestMultiplier(dataStore, market.marketToken, isLong);
        return Precision.applyFactor(openInterest, multiplierFactor);
    }

    // @dev get the total amount of position collateral for a market
    // @param dataStore DataStore
    // @param market the market to check
    // @param collateralToken the collateralToken to check
    // @param isLong whether to get the value for longs or shorts
    // @return the total amount of position collateral for a market
    function getCollateralSum(DataStore dataStore, address market, address collateralToken, bool isLong, uint256 divisor) internal view returns (uint256) {
        return dataStore.getUint(Keys.collateralSumKey(market, collateralToken, isLong)) / divisor;
    }

    // @dev get the reserve factor for a market
    // @param dataStore DataStore
    // @param market the market to check
    // @param isLong whether to get the value for longs or shorts
    // @return the reserve factor for a market
    function getReserveFactor(DataStore dataStore, address market, bool isLong) internal view returns (uint256) {
        return dataStore.getUint(Keys.reserveFactorKey(market, isLong));
    }

    // @dev get the open interest reserve factor for a market
    // @param dataStore DataStore
    // @param market the market to check
    // @param isLong whether to get the value for longs or shorts
    // @return the open interest reserve factor for a market
    function getOpenInterestReserveFactor(DataStore dataStore, address market, bool isLong) internal view returns (uint256) {
        return dataStore.getUint(Keys.openInterestReserveFactorKey(market, isLong));
    }

    // @dev get the max pnl factor for a market
    // @param dataStore DataStore
    // @param pnlFactorType the type of the pnl factor
    // @param market the market to check
    // @param isLong whether to get the value for longs or shorts
    // @return the max pnl factor for a market
    function getMaxPnlFactor(DataStore dataStore, bytes32 pnlFactorType, address market, bool isLong) internal view returns (uint256) {
        return dataStore.getUint(Keys.maxPnlFactorKey(pnlFactorType, market, isLong));
    }

    // @dev get the min pnl factor after ADL
    // @param dataStore DataStore
    // @param market the market to check
    // @param isLong whether to check the long or short side
    function getMinPnlFactorAfterAdl(DataStore dataStore, address market, bool isLong) internal view returns (uint256) {
        return dataStore.getUint(Keys.minPnlFactorAfterAdlKey(market, isLong));
    }

    // @dev get the funding factor for a market
    // @param dataStore DataStore
    // @param market the market to check
    // @return the funding factor for a market
    function getFundingFactor(DataStore dataStore, address market) internal view returns (uint256) {
        return dataStore.getUint(Keys.fundingFactorKey(market));
    }

    // @dev get the saved funding factor for a market
    // @param dataStore DataStore
    // @param market the market to check
    // @return the saved funding factor for a market
    function getSavedFundingFactorPerSecond(DataStore dataStore, address market) internal view returns (int256) {
        return dataStore.getInt(Keys.savedFundingFactorPerSecondKey(market));
    }

    // @dev set the saved funding factor
    // @param dataStore DataStore
    // @param market the market to set the funding factor for
    function setSavedFundingFactorPerSecond(DataStore dataStore, address market, int256 value) internal returns (int256) {
        return dataStore.setInt(Keys.savedFundingFactorPerSecondKey(market), value);
    }

    // @dev get the funding exponent factor for a market
    // @param dataStore DataStore
    // @param market the market to check
    // @return the funding exponent factor for a market
    function getFundingExponentFactor(DataStore dataStore, address market) internal view returns (uint256) {
        return dataStore.getUint(Keys.fundingExponentFactorKey(market));
    }

    // @dev get the funding fee amount per size for a market
    // @param dataStore DataStore
    // @param market the market to check
    // @param collateralToken the collateralToken to check
    // @param isLong whether to check the long or short size
    // @return the funding fee amount per size for a market based on collateralToken
    function getFundingFeeAmountPerSize(DataStore dataStore, address market, address collateralToken, bool isLong) internal view returns (uint256) {
        return dataStore.getUint(Keys.fundingFeeAmountPerSizeKey(market, collateralToken, isLong));
    }

    // @dev get the claimable funding amount per size for a market
    // @param dataStore DataStore
    // @param market the market to check
    // @param collateralToken the collateralToken to check
    // @param isLong whether to check the long or short size
    // @return the claimable funding amount per size for a market based on collateralToken
    function getClaimableFundingAmountPerSize(DataStore dataStore, address market, address collateralToken, bool isLong) internal view returns (uint256) {
        return dataStore.getUint(Keys.claimableFundingAmountPerSizeKey(market, collateralToken, isLong));
    }

    // @dev apply delta to the funding fee amount per size for a market
    // @param dataStore DataStore
    // @param market the market to set
    // @param collateralToken the collateralToken to set
    // @param isLong whether to set it for the long or short side
    // @param delta the delta to increment by
    function applyDeltaToFundingFeeAmountPerSize(
        DataStore dataStore,
        EventEmitter eventEmitter,
        address market,
        address collateralToken,
        bool isLong,
        uint256 delta
    ) internal {
        if (delta == 0) { return; }

        uint256 nextValue = dataStore.applyDeltaToUint(
            Keys.fundingFeeAmountPerSizeKey(market, collateralToken, isLong),
            delta
        );

        MarketEventUtils.emitFundingFeeAmountPerSizeUpdated(
            eventEmitter,
            market,
            collateralToken,
            isLong,
            delta,
            nextValue
        );
    }

    // @dev apply delta to the claimable funding amount per size for a market
    // @param dataStore DataStore
    // @param market the market to set
    // @param collateralToken the collateralToken to set
    // @param isLong whether to set it for the long or short side
    // @param delta the delta to increment by
    function applyDeltaToClaimableFundingAmountPerSize(
        DataStore dataStore,
        EventEmitter eventEmitter,
        address market,
        address collateralToken,
        bool isLong,
        uint256 delta
    ) internal {
        if (delta == 0) { return; }

        uint256 nextValue = dataStore.applyDeltaToUint(
            Keys.claimableFundingAmountPerSizeKey(market, collateralToken, isLong),
            delta
        );

        MarketEventUtils.emitClaimableFundingAmountPerSizeUpdated(
            eventEmitter,
            market,
            collateralToken,
            isLong,
            delta,
            nextValue
        );
    }

    // @dev get the number of seconds since funding was updated for a market
    // @param market the market to check
    // @return the number of seconds since funding was updated for a market
    function getSecondsSinceFundingUpdated(DataStore dataStore, address market) internal view returns (uint256) {
        uint256 updatedAt = dataStore.getUint(Keys.fundingUpdatedAtKey(market));
        if (updatedAt == 0) { return 0; }
        return Chain.currentTimestamp() - updatedAt;
    }

    // @dev get the borrowing factor for a market
    // @param dataStore DataStore
    // @param market the market to check
    // @param isLong whether to check the long or short side
    // @return the borrowing factor for a market
    function getBorrowingFactor(DataStore dataStore, address market, bool isLong) internal view returns (uint256) {
        return dataStore.getUint(Keys.borrowingFactorKey(market, isLong));
    }

    function getOptimalUsageFactor(DataStore dataStore, address market, bool isLong) internal view returns (uint256) {
        return dataStore.getUint(Keys.optimalUsageFactorKey(market, isLong));
    }

    // @dev get the borrowing exponent factor for a market
    // @param dataStore DataStore
    // @param market the market to check
    // @param isLong whether to check the long or short side
    // @return the borrowing exponent factor for a market
    function getBorrowingExponentFactor(DataStore dataStore, address market, bool isLong) internal view returns (uint256) {
        return dataStore.getUint(Keys.borrowingExponentFactorKey(market, isLong));
    }

    // @dev get the cumulative borrowing factor for a market
    // @param dataStore DataStore
    // @param market the market to check
    // @param isLong whether to check the long or short side
    // @return the cumulative borrowing factor for a market
    function getCumulativeBorrowingFactor(DataStore dataStore, address market, bool isLong) internal view returns (uint256) {
        return dataStore.getUint(Keys.cumulativeBorrowingFactorKey(market, isLong));
    }

    // @dev increase the cumulative borrowing factor
    // @param dataStore DataStore
    // @param eventEmitter EventEmitter
    // @param market the market to increment the borrowing factor for
    // @param isLong whether to increment the long or short side
    // @param delta the increase amount
    function incrementCumulativeBorrowingFactor(
        DataStore dataStore,
        EventEmitter eventEmitter,
        address market,
        bool isLong,
        uint256 delta
    ) internal {
        uint256 nextCumulativeBorrowingFactor = dataStore.incrementUint(
            Keys.cumulativeBorrowingFactorKey(market, isLong),
            delta
        );

        MarketEventUtils.emitBorrowingFactorUpdated(
            eventEmitter,
            market,
            isLong,
            delta,
            nextCumulativeBorrowingFactor
        );
    }

    // @dev get the timestamp of when the cumulative borrowing factor was last updated
    // @param dataStore DataStore
    // @param market the market to check
    // @param isLong whether to check the long or short side
    // @return the timestamp of when the cumulative borrowing factor was last updated
    function getCumulativeBorrowingFactorUpdatedAt(DataStore dataStore, address market, bool isLong) internal view returns (uint256) {
        return dataStore.getUint(Keys.cumulativeBorrowingFactorUpdatedAtKey(market, isLong));
    }

    // @dev get the number of seconds since the cumulative borrowing factor was last updated
    // @param dataStore DataStore
    // @param market the market to check
    // @param isLong whether to check the long or short side
    // @return the number of seconds since the cumulative borrowing factor was last updated
    function getSecondsSinceCumulativeBorrowingFactorUpdated(DataStore dataStore, address market, bool isLong) internal view returns (uint256) {
        uint256 updatedAt = getCumulativeBorrowingFactorUpdatedAt(dataStore, market, isLong);
        if (updatedAt == 0) { return 0; }
        return Chain.currentTimestamp() - updatedAt;
    }

    // @dev update the total borrowing amount after a position changes size
    // this is the sum of all position.borrowingFactor * position.sizeInUsd
    // @param dataStore DataStore
    // @param market the market to update
    // @param isLong whether to update the long or short side
    // @param prevPositionSizeInUsd the previous position size in USD
    // @param prevPositionBorrowingFactor the previous position borrowing factor
    // @param nextPositionSizeInUsd the next position size in USD
    // @param nextPositionBorrowingFactor the next position borrowing factor
    function updateTotalBorrowing(
        DataStore dataStore,
        address market,
        bool isLong,
        uint256 prevPositionSizeInUsd,
        uint256 prevPositionBorrowingFactor,
        uint256 nextPositionSizeInUsd,
        uint256 nextPositionBorrowingFactor
    ) external {
        uint256 totalBorrowing = getNextTotalBorrowing(
            dataStore,
            market,
            isLong,
            prevPositionSizeInUsd,
            prevPositionBorrowingFactor,
            nextPositionSizeInUsd,
            nextPositionBorrowingFactor
        );

        setTotalBorrowing(dataStore, market, isLong, totalBorrowing);
    }

    // @dev get the next total borrowing amount after a position changes size
    // @param dataStore DataStore
    // @param market the market to check
    // @param isLong whether to check the long or short side
    // @param prevPositionSizeInUsd the previous position size in USD
    // @param prevPositionBorrowingFactor the previous position borrowing factor
    // @param nextPositionSizeInUsd the next position size in USD
    // @param nextPositionBorrowingFactor the next position borrowing factor
    function getNextTotalBorrowing(
        DataStore dataStore,
        address market,
        bool isLong,
        uint256 prevPositionSizeInUsd,
        uint256 prevPositionBorrowingFactor,
        uint256 nextPositionSizeInUsd,
        uint256 nextPositionBorrowingFactor
    ) internal view returns (uint256) {
        uint256 totalBorrowing = getTotalBorrowing(dataStore, market, isLong);
        totalBorrowing -= Precision.applyFactor(prevPositionSizeInUsd, prevPositionBorrowingFactor);
        totalBorrowing += Precision.applyFactor(nextPositionSizeInUsd, nextPositionBorrowingFactor);

        return totalBorrowing;
    }

    // @dev get the next cumulative borrowing factor
    // @param dataStore DataStore
    // @param prices the prices of the market tokens
    // @param market the market to check
    // @param longToken the long token of the market
    // @param shortToken the short token of the market
    // @param isLong whether to check the long or short side
    function getNextCumulativeBorrowingFactor(
        DataStore dataStore,
        Market.Props memory market,
        MarketPrices memory prices,
        bool isLong
    ) internal view returns (uint256, uint256, uint256) {
        uint256 durationInSeconds = getSecondsSinceCumulativeBorrowingFactorUpdated(dataStore, market.marketToken, isLong);
        uint256 borrowingFactorPerSecond = getBorrowingFactorPerSecond(
            dataStore,
            market,
            prices,
            isLong
        );

        uint256 cumulativeBorrowingFactor = getCumulativeBorrowingFactor(dataStore, market.marketToken, isLong);

        uint256 delta = durationInSeconds * borrowingFactorPerSecond;
        uint256 nextCumulativeBorrowingFactor = cumulativeBorrowingFactor + delta;
        return (nextCumulativeBorrowingFactor, delta, borrowingFactorPerSecond);
    }

    // @dev get the borrowing factor per second
    // @param dataStore DataStore
    // @param market the market to get the borrowing factor per second for
    // @param prices the prices of the market tokens
    // @param isLong whether to get the factor for the long or short side
    function getBorrowingFactorPerSecond(
        DataStore dataStore,
        Market.Props memory market,
        MarketPrices memory prices,
        bool isLong
    ) internal view returns (uint256) {
        uint256 reservedUsd = getReservedUsd(
            dataStore,
            market,
            prices,
            isLong
        );

        if (reservedUsd == 0) { return 0; }

        // check if the borrowing fee for the smaller side should be skipped
        // if skipBorrowingFeeForSmallerSide is true, and the longOpenInterest is exactly the same as the shortOpenInterest
        // then the borrowing fee would be charged for both sides, this should be very rare
        bool skipBorrowingFeeForSmallerSide = dataStore.getBool(Keys.SKIP_BORROWING_FEE_FOR_SMALLER_SIDE);
        if (skipBorrowingFeeForSmallerSide) {
            bool useOpenInterestInTokens = dataStore.getBool(Keys.USE_OPEN_INTEREST_IN_TOKENS_FOR_BALANCE);
            uint256 longOpenInterest = getOpenInterestForBalance({
                dataStore: dataStore,
                market: market,
                useOpenInterestInTokens: useOpenInterestInTokens,
                indexTokenPrice: prices.indexTokenPrice.midPrice(),
                isLong: true
            });

            uint256 shortOpenInterest = getOpenInterestForBalance({
                dataStore: dataStore,
                market: market,
                useOpenInterestInTokens: useOpenInterestInTokens,
                indexTokenPrice: prices.indexTokenPrice.midPrice(),
                isLong: false
            });

            // if getting the borrowing factor for longs and if the longOpenInterest
            // is smaller than the shortOpenInterest, then return zero
            if (isLong && longOpenInterest < shortOpenInterest) {
                return 0;
            }

            // if getting the borrowing factor for shorts and if the shortOpenInterest
            // is smaller than the longOpenInterest, then return zero
            if (!isLong && shortOpenInterest < longOpenInterest) {
                return 0;
            }
        }

        uint256 poolUsd = getPoolUsdWithoutPnl(dataStore, market, prices, isLong, false);

        if (poolUsd == 0) {
            revert Errors.UnableToGetBorrowingFactorEmptyPoolUsd();
        }

        uint256 optimalUsageFactor = getOptimalUsageFactor(dataStore, market.marketToken, isLong);

        if (optimalUsageFactor != 0) {
            return getKinkBorrowingFactor(
                dataStore,
                market,
                isLong,
                reservedUsd,
                poolUsd,
                optimalUsageFactor
            );
        }

        uint256 borrowingExponentFactor = getBorrowingExponentFactor(dataStore, market.marketToken, isLong);
        uint256 reservedUsdAfterExponent = Precision.applyExponentFactor(reservedUsd, borrowingExponentFactor);

        uint256 reservedUsdToPoolFactor = Precision.toFactor(reservedUsdAfterExponent, poolUsd);
        uint256 borrowingFactor = getBorrowingFactor(dataStore, market.marketToken, isLong);

        return Precision.applyFactor(reservedUsdToPoolFactor, borrowingFactor);
    }

    function getKinkBorrowingFactor(
        DataStore dataStore,
        Market.Props memory market,
        bool isLong,
        uint256 reservedUsd,
        uint256 poolUsd,
        uint256 optimalUsageFactor
    ) internal view returns (uint256) {
        uint256 usageFactor = getUsageFactor(
            dataStore,
            market,
            isLong,
            reservedUsd,
            poolUsd
        );

        uint256 baseBorrowingFactor = dataStore.getUint(Keys.baseBorrowingFactorKey(market.marketToken, isLong));

        uint256 borrowingFactorPerSecond = Precision.applyFactor(
            usageFactor,
            baseBorrowingFactor
        );

        if (usageFactor > optimalUsageFactor && Precision.FLOAT_PRECISION > optimalUsageFactor) {
            uint256 diff = usageFactor - optimalUsageFactor;

            uint256 aboveOptimalUsageBorrowingFactor = dataStore.getUint(Keys.aboveOptimalUsageBorrowingFactorKey(market.marketToken, isLong));
            uint256 additionalBorrowingFactorPerSecond;

            if (aboveOptimalUsageBorrowingFactor > baseBorrowingFactor) {
                additionalBorrowingFactorPerSecond = aboveOptimalUsageBorrowingFactor - baseBorrowingFactor;
            }

            uint256 divisor = Precision.FLOAT_PRECISION - optimalUsageFactor;

            borrowingFactorPerSecond += additionalBorrowingFactorPerSecond * diff / divisor;
        }

        return borrowingFactorPerSecond;
    }

    function distributePositionImpactPool(
        DataStore dataStore,
        EventEmitter eventEmitter,
        address market
    ) external {
        (uint256 distributionAmount, uint256 nextPositionImpactPoolAmount) = getPendingPositionImpactPoolDistributionAmount(dataStore, market);

        if (distributionAmount != 0) {
            applyDeltaToPositionImpactPool(
                dataStore,
                eventEmitter,
                market,
                -distributionAmount.toInt256()
            );

            MarketEventUtils.emitPositionImpactPoolDistributed(
                eventEmitter,
                market,
                distributionAmount,
                nextPositionImpactPoolAmount
            );
        }

        dataStore.setUint(Keys.positionImpactPoolDistributedAtKey(market), Chain.currentTimestamp());
    }

    function getNextPositionImpactPoolAmount(
        DataStore dataStore,
        address market
    ) internal view returns (uint256) {
        (/* uint256 distributionAmount */, uint256 nextPositionImpactPoolAmount) = getPendingPositionImpactPoolDistributionAmount(dataStore, market);

        return nextPositionImpactPoolAmount;
    }

    // @return (distributionAmount, nextPositionImpactPoolAmount)
    function getPendingPositionImpactPoolDistributionAmount(
        DataStore dataStore,
        address market
    ) internal view returns (uint256, uint256) {
        uint256 positionImpactPoolAmount = getPositionImpactPoolAmount(dataStore, market);
        if (positionImpactPoolAmount == 0) { return (0, positionImpactPoolAmount); }

        uint256 distributionRate = dataStore.getUint(Keys.positionImpactPoolDistributionRateKey(market));
        if (distributionRate == 0) { return (0, positionImpactPoolAmount); }

        uint256 minPositionImpactPoolAmount = dataStore.getUint(Keys.minPositionImpactPoolAmountKey(market));
        if (positionImpactPoolAmount <= minPositionImpactPoolAmount) { return (0, positionImpactPoolAmount); }

        uint256 maxDistributionAmount = positionImpactPoolAmount - minPositionImpactPoolAmount;

        uint256 durationInSeconds = getSecondsSincePositionImpactPoolDistributed(dataStore, market);
        uint256 distributionAmount = Precision.applyFactor(durationInSeconds, distributionRate);

        if (distributionAmount > maxDistributionAmount) {
            distributionAmount = maxDistributionAmount;
        }

        return (distributionAmount, positionImpactPoolAmount - distributionAmount);
    }

    function getSecondsSincePositionImpactPoolDistributed(
        DataStore dataStore,
        address market
    ) internal view returns (uint256) {
        uint256 distributedAt = dataStore.getUint(Keys.positionImpactPoolDistributedAtKey(market));
        if (distributedAt == 0) { return 0; }
        return Chain.currentTimestamp() - distributedAt;
    }

    // @dev get the total pending borrowing fees
    // @param dataStore DataStore
    // @param market the market to check
    // @param longToken the long token of the market
    // @param shortToken the short token of the market
    // @param isLong whether to check the long or short side
    function getTotalPendingBorrowingFees(
        DataStore dataStore,
        Market.Props memory market,
        MarketPrices memory prices,
        bool isLong
    ) internal view returns (uint256) {
        uint256 openInterest = getOpenInterest(
            dataStore,
            market,
            isLong
        );

        (uint256 nextCumulativeBorrowingFactor, /* uint256 delta */, ) = getNextCumulativeBorrowingFactor(
            dataStore,
            market,
            prices,
            isLong
        );

        uint256 totalBorrowing = getTotalBorrowing(dataStore, market.marketToken, isLong);

        return Precision.applyFactor(openInterest, nextCumulativeBorrowingFactor) - totalBorrowing;
    }

    // @dev get the total borrowing value
    // the total borrowing value is the sum of position.borrowingFactor * position.size / (10 ^ 30)
    // for all positions of the market
    // if borrowing APR is 1000% for 100 years, the cumulativeBorrowingFactor could be as high as 100 * 10 * (10 ** 30)
    // (100% is 10 ** 30 so 1000% is 10 * (10 ** 30))
    // since position.size is a USD value with 30 decimals, under this scenario, there may be overflow issues
    // if open interest exceeds (2 ** 256) / (10 ** 30) / (100 * 10 * (10 ** 30)) => 115,792,090,000,000 USD
    // @param dataStore DataStore
    // @param market the market to check
    // @param isLong whether to check the long or short side
    // @return the total borrowing value
    function getTotalBorrowing(DataStore dataStore, address market, bool isLong) internal view returns (uint256) {
        return dataStore.getUint(Keys.totalBorrowingKey(market, isLong));
    }

    // @dev set the total borrowing value
    // @param dataStore DataStore
    // @param market the market to set
    // @param isLong whether to set the long or short side
    // @param value the value to set to
    function setTotalBorrowing(DataStore dataStore, address market, bool isLong, uint256 value) internal returns (uint256) {
        return dataStore.setUint(Keys.totalBorrowingKey(market, isLong), value);
    }

    // @dev convert a USD value to number of market tokens
    // @param usdValue the input USD value
    // @param poolValue the value of the pool
    // @param supply the supply of market tokens
    // @return the number of market tokens
    function usdToMarketTokenAmount(
        uint256 usdValue,
        uint256 poolValue,
        uint256 supply
    ) internal pure returns (uint256) {
        // if the supply and poolValue is zero, use 1 USD as the token price
        if (supply == 0 && poolValue == 0) {
            return Precision.floatToWei(usdValue);
        }

        // if the supply is zero and the poolValue is more than zero,
        // then include the poolValue for the amount of tokens minted so that
        // the market token price after mint would be 1 USD
        if (supply == 0 && poolValue > 0) {
            return Precision.floatToWei(poolValue + usdValue);
        }

        // round market tokens down
        return Precision.mulDiv(supply, usdValue, poolValue);
    }

    // @dev convert a number of market tokens to its USD value
    // @param marketTokenAmount the input number of market tokens
    // @param poolValue the value of the pool
    // @param supply the supply of market tokens
    // @return the USD value of the market tokens
    function marketTokenAmountToUsd(
        uint256 marketTokenAmount,
        uint256 poolValue,
        uint256 supply
    ) internal pure returns (uint256) {
        if (supply == 0) { revert Errors.EmptyMarketTokenSupply(); }

        return Precision.mulDiv(poolValue, marketTokenAmount, supply);
    }

    // @dev validate that the specified market exists and is enabled
    // @param dataStore DataStore
    // @param marketAddress the address of the market
    function validateEnabledMarket(DataStore dataStore, address marketAddress) external view {
        Market.Props memory market = MarketStoreUtils.get(dataStore, marketAddress);
        validateEnabledMarket(dataStore, market);
    }

    // @dev validate that the specified market exists and is enabled
    // @param dataStore DataStore
    // @param market the market to check
    function validateEnabledMarket(DataStore dataStore, Market.Props memory market) public view {
        if (market.marketToken == address(0)) {
            revert Errors.EmptyMarket();
        }

        bool isMarketDisabled = dataStore.getBool(Keys.isMarketDisabledKey(market.marketToken));
        if (isMarketDisabled) {
            revert Errors.DisabledMarket(market.marketToken);
        }
    }

    // @dev validate that the positions can be opened in the given market
    // @param market the market to check
    function validatePositionMarket(DataStore dataStore, Market.Props memory market) internal view {
        validateEnabledMarket(dataStore, market);

        if (isSwapOnlyMarket(market)) {
            revert Errors.InvalidPositionMarket(market.marketToken);
        }
    }

    function validatePositionMarket(DataStore dataStore, address marketAddress) internal view {
        Market.Props memory market = MarketStoreUtils.get(dataStore, marketAddress);
        validatePositionMarket(dataStore, market);
    }

    // @dev check if a market only supports swaps and not positions
    // @param market the market to check
    function isSwapOnlyMarket(Market.Props memory market) internal pure returns (bool) {
        return market.indexToken == address(0);
    }

    // @dev check if the given token is a collateral token of the market
    // @param market the market to check
    // @param token the token to check
    function isMarketCollateralToken(Market.Props memory market, address token) internal pure returns (bool) {
        return token == market.longToken || token == market.shortToken;
    }

    // @dev validate if the given token is a collateral token of the market
    // @param market the market to check
    // @param token the token to check
    function validateMarketCollateralToken(Market.Props memory market, address token) internal pure {
        if (!isMarketCollateralToken(market, token)) {
            revert Errors.InvalidCollateralTokenForMarket(market.marketToken, token);
        }
    }

    // @dev get the enabled market, revert if the market does not exist or is not enabled
    // @param dataStore DataStore
    // @param marketAddress the address of the market
    function getEnabledMarket(DataStore dataStore, address marketAddress) public view returns (Market.Props memory) {
        Market.Props memory market = MarketStoreUtils.get(dataStore, marketAddress);
        validateEnabledMarket(dataStore, market);
        return market;
    }

    function getSwapPathMarket(DataStore dataStore, address marketAddress) internal view returns (Market.Props memory) {
        Market.Props memory market = MarketStoreUtils.get(dataStore, marketAddress);
        validateSwapMarket(dataStore, market);
        return market;
    }

    // @dev get a list of market values based on an input array of market addresses
    // @param swapPath list of market addresses
    function getSwapPathMarkets(DataStore dataStore, address[] memory swapPath) external view returns (Market.Props[] memory) {
        Market.Props[] memory markets = new Market.Props[](swapPath.length);

        for (uint256 i; i < swapPath.length; i++) {
            address marketAddress = swapPath[i];
            markets[i] = getSwapPathMarket(dataStore, marketAddress);
        }

        return markets;
    }

    function validateSwapPath(DataStore dataStore, address[] memory swapPath) external view {
        uint256 maxSwapPathLength = dataStore.getUint(Keys.MAX_SWAP_PATH_LENGTH);
        if (swapPath.length > maxSwapPathLength) {
            revert Errors.MaxSwapPathLengthExceeded(swapPath.length, maxSwapPathLength);
        }

        for (uint256 i; i < swapPath.length; i++) {
            address marketAddress = swapPath[i];
            validateSwapMarket(dataStore, marketAddress);
        }
    }

    // @dev validate that the pending pnl is below the allowed amount
    // @param dataStore DataStore
    // @param market the market to check
    // @param prices the prices of the market tokens
    // @param pnlFactorType the pnl factor type to check
    function validateMaxPnl(
        DataStore dataStore,
        Market.Props memory market,
        MarketPrices memory prices,
        bytes32 pnlFactorTypeForLongs,
        bytes32 pnlFactorTypeForShorts
    ) internal view {
        (bool isPnlFactorExceededForLongs, int256 pnlToPoolFactorForLongs, uint256 maxPnlFactorForLongs) = isPnlFactorExceeded(
            dataStore,
            market,
            prices,
            true,
            pnlFactorTypeForLongs
        );

        if (isPnlFactorExceededForLongs) {
            revert Errors.PnlFactorExceededForLongs(pnlToPoolFactorForLongs, maxPnlFactorForLongs);
        }

        (bool isPnlFactorExceededForShorts, int256 pnlToPoolFactorForShorts, uint256 maxPnlFactorForShorts) = isPnlFactorExceeded(
            dataStore,
            market,
            prices,
            false,
            pnlFactorTypeForShorts
        );

        if (isPnlFactorExceededForShorts) {
            revert Errors.PnlFactorExceededForShorts(pnlToPoolFactorForShorts, maxPnlFactorForShorts);
        }
    }

    // @dev check if the pending pnl exceeds the allowed amount
    // @param dataStore DataStore
    // @param oracle Oracle
    // @param market the market to check
    // @param isLong whether to check the long or short side
    // @param pnlFactorType the pnl factor type to check
    function isPnlFactorExceeded(
        DataStore dataStore,
        IOracle oracle,
        address market,
        bool isLong,
        bytes32 pnlFactorType
    ) internal view returns (bool, int256, uint256) {
        Market.Props memory _market = getEnabledMarket(dataStore, market);
        MarketPrices memory prices = getMarketPrices(oracle, _market);

        return isPnlFactorExceeded(
            dataStore,
            _market,
            prices,
            isLong,
            pnlFactorType
        );
    }

    // @dev check if the pending pnl exceeds the allowed amount
    // @param dataStore DataStore
    // @param _market the market to check
    // @param prices the prices of the market tokens
    // @param isLong whether to check the long or short side
    // @param pnlFactorType the pnl factor type to check
    function isPnlFactorExceeded(
        DataStore dataStore,
        Market.Props memory market,
        MarketPrices memory prices,
        bool isLong,
        bytes32 pnlFactorType
    ) internal view returns (bool, int256, uint256) {
        int256 pnlToPoolFactor = getPnlToPoolFactor(dataStore, market, prices, isLong, true);
        uint256 maxPnlFactor = getMaxPnlFactor(dataStore, pnlFactorType, market.marketToken, isLong);

        bool isExceeded = pnlToPoolFactor > 0 && pnlToPoolFactor.toUint256() > maxPnlFactor;

        return (isExceeded, pnlToPoolFactor, maxPnlFactor);
    }

    function getUiFeeFactor(DataStore dataStore, address account) internal view returns (uint256) {
        uint256 maxUiFeeFactor = dataStore.getUint(Keys.MAX_UI_FEE_FACTOR);
        uint256 uiFeeFactor = dataStore.getUint(Keys.uiFeeFactorKey(account));

        return uiFeeFactor < maxUiFeeFactor ? uiFeeFactor : maxUiFeeFactor;
    }

    function setUiFeeFactor(
        DataStore dataStore,
        EventEmitter eventEmitter,
        address account,
        uint256 uiFeeFactor
    ) internal {
        uint256 maxUiFeeFactor = dataStore.getUint(Keys.MAX_UI_FEE_FACTOR);

        if (uiFeeFactor > maxUiFeeFactor) {
            revert Errors.InvalidUiFeeFactor(uiFeeFactor, maxUiFeeFactor);
        }

        dataStore.setUint(
            Keys.uiFeeFactorKey(account),
            uiFeeFactor
        );

        MarketEventUtils.emitUiFeeFactorUpdated(eventEmitter, account, uiFeeFactor);
    }

    function validateMarketTokenBalance(
        DataStore dataStore,
        Market.Props[] memory markets
    ) public view {
        for (uint256 i; i < markets.length; i++) {
            validateMarketTokenBalance(dataStore, markets[i]);
        }
    }

    function validateMarketTokenBalance(
        DataStore dataStore,
        address _market
    ) public view {
        Market.Props memory market = getEnabledMarket(dataStore, _market);
        validateMarketTokenBalance(dataStore, market);
    }

    function validateMarketTokenBalance(
        DataStore dataStore,
        Market.Props memory market
    ) public view {
        validateMarketTokenBalance(dataStore, market, market.longToken);

        if (market.longToken == market.shortToken) {
            return;
        }

        validateMarketTokenBalance(dataStore, market, market.shortToken);
    }

    function validateMarketTokenBalance(
        DataStore dataStore,
        Market.Props memory market,
        address token
    ) internal view {
        if (market.marketToken == address(0) || token == address(0)) {
            revert Errors.EmptyAddressInMarketTokenBalanceValidation(market.marketToken, token);
        }

        uint256 balance = IERC20(token).balanceOf(market.marketToken);
        uint256 expectedMinBalance = getExpectedMinTokenBalance(dataStore, market, token);

        if (balance < expectedMinBalance) {
            revert Errors.InvalidMarketTokenBalance(market.marketToken, token, balance, expectedMinBalance);
        }

        // funding fees can be claimed even if the collateral for positions that should pay funding fees
        // hasn't been reduced yet
        // due to that, funding fees and collateral is excluded from the expectedMinBalance calculation
        // and validated separately

        // use 1 for the getCollateralSum divisor since getCollateralSum does not sum over both the
        // longToken and shortToken
        uint256 collateralAmount = getCollateralSum(dataStore, market.marketToken, token, true, 1);
        collateralAmount += getCollateralSum(dataStore, market.marketToken, token, false, 1);

        if (balance < collateralAmount) {
            revert Errors.InvalidMarketTokenBalanceForCollateralAmount(market.marketToken, token, balance, collateralAmount);
        }

        uint256 claimableFundingFeeAmount = dataStore.getUint(Keys.claimableFundingAmountKey(market.marketToken, token));

        // in case of late liquidations, it may be possible for the claimableFundingFeeAmount to exceed the market token balance
        // but this should be very rare
        if (balance < claimableFundingFeeAmount) {
            revert Errors.InvalidMarketTokenBalanceForClaimableFunding(market.marketToken, token, balance, claimableFundingFeeAmount);
        }
    }

    function getExpectedMinTokenBalance(
        DataStore dataStore,
        Market.Props memory market,
        address token
    ) internal view returns (uint256) {
        GetExpectedMinTokenBalanceCache memory cache;

        // get the pool amount directly as MarketUtils.getPoolAmount will divide the amount by 2
        // for markets with the same long and short token
        cache.poolAmount = dataStore.getUint(Keys.poolAmountKey(market.marketToken, token));
        cache.swapImpactPoolAmount = getSwapImpactPoolAmount(dataStore, market.marketToken, token);
        cache.claimableCollateralAmount = dataStore.getUint(Keys.claimableCollateralAmountKey(market.marketToken, token));
        cache.claimableFeeAmount = dataStore.getUint(Keys.claimableFeeAmountKey(market.marketToken, token));
        cache.claimableUiFeeAmount = dataStore.getUint(Keys.claimableUiFeeAmountKey(market.marketToken, token));
        cache.affiliateRewardAmount = dataStore.getUint(Keys.affiliateRewardKey(market.marketToken, token));

        // funding fees are excluded from this summation as claimable funding fees
        // are incremented without a corresponding decrease of the collateral of
        // other positions, the collateral of other positions is decreased when
        // those positions are updated
        return
            cache.poolAmount
            + cache.swapImpactPoolAmount
            + cache.claimableCollateralAmount
            + cache.claimableFeeAmount
            + cache.claimableUiFeeAmount
            + cache.affiliateRewardAmount;
    }

    function getProportionalAmounts(
        DataStore dataStore,
        Market.Props memory market,
        MarketPrices memory prices,
        uint256 totalUsd
    ) internal view returns(uint256, uint256) {
        uint256 longTokenPoolAmount = getPoolAmount(dataStore, market, market.longToken);
        uint256 shortTokenPoolAmount = getPoolAmount(dataStore, market, market.shortToken);

        uint256 longTokenPoolUsd = longTokenPoolAmount * prices.longTokenPrice.max;
        uint256 shortTokenPoolUsd = shortTokenPoolAmount * prices.shortTokenPrice.max;

        uint256 totalPoolUsd = longTokenPoolUsd + shortTokenPoolUsd;

        uint256 longTokenOutputUsd = Precision.mulDiv(totalUsd, longTokenPoolUsd, totalPoolUsd);
        uint256 shortTokenOutputUsd = Precision.mulDiv(totalUsd, shortTokenPoolUsd, totalPoolUsd);

        return (longTokenOutputUsd / prices.longTokenPrice.max, shortTokenOutputUsd / prices.shortTokenPrice.max);
    }
}

// ============================================================
// FILE: contracts/multichain/IMultichainProvider.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.0;

import "../router/relay/IRelayUtils.sol";

/**
 * @title IMultichainProvider
 */
interface IMultichainProvider {
    enum ActionType {
        None,
        Deposit,
        GlvDeposit,
        BridgeOut,
        SetTraderReferralCode,
        Withdrawal,
        GlvWithdrawal,
        RegisterCode
    }

    function bridgeOut(address account, uint256 srcChainId, IRelayUtils.BridgeOutParams memory params) external returns (uint256);

    function withdrawTokens(address token, address receiver, uint256 amount) external;
}

// ============================================================
// FILE: contracts/multichain/IMultichainTransferRouter.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.0;

import "../router/relay/IRelayUtils.sol";

interface IMultichainTransferRouter {
    function bridgeIn(address account, address token) external payable;

    function bridgeOut(
        IRelayUtils.RelayParams calldata relayParams,
        address account,
        uint256 srcChainId,
        IRelayUtils.BridgeOutParams calldata params
    ) external;

    function bridgeOutFromController(
        address account,
        uint256 srcChainId,
        uint256 desChainId,
        uint256 deadline,
        IRelayUtils.BridgeOutParams calldata params
    ) external;

    function transferOut(
        IRelayUtils.BridgeOutParams calldata params
    ) external;
}

// ============================================================
// FILE: contracts/multichain/MultichainEventUtils.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.0;

import { EventEmitter } from "../event/EventEmitter.sol";
import { EventUtils } from "../event/EventUtils.sol";
import { Cast } from "../utils/Cast.sol";

/**
 * @title MultichainEventUtils
 */
library MultichainEventUtils {
    using EventUtils for EventUtils.AddressItems;
    using EventUtils for EventUtils.UintItems;
    using EventUtils for EventUtils.Bytes32Items;
    using EventUtils for EventUtils.StringItems;

    /// @param provider the address of the multichain provider for cross-chain action,
    /// or zero address for same-chain action
    function emitMultichainBridgeIn(
        EventEmitter eventEmitter,
        address provider,
        address token,
        address account,
        uint256 amount,
        uint256 srcChainId
    ) internal {
        EventUtils.EventLogData memory eventData;

        eventData.addressItems.initItems(3);
        eventData.addressItems.setItem(0, "provider", provider);
        eventData.addressItems.setItem(1, "token", token);
        eventData.addressItems.setItem(2, "account", account);

        eventData.uintItems.initItems(2);
        eventData.uintItems.setItem(0, "amount", amount);
        eventData.uintItems.setItem(1, "srcChainId", srcChainId);

        eventEmitter.emitEventLog1("MultichainBridgeIn", Cast.toBytes32(account), eventData);
    }

    function emitMultichainTransferIn(
        EventEmitter eventEmitter,
        address token,
        address account,
        uint256 amount,
        uint256 srcChainId
    ) internal {
        EventUtils.EventLogData memory eventData;

        eventData.addressItems.initItems(2);
        eventData.addressItems.setItem(0, "token", token);
        eventData.addressItems.setItem(1, "account", account);

        eventData.uintItems.initItems(2);
        eventData.uintItems.setItem(0, "amount", amount);
        eventData.uintItems.setItem(1, "srcChainId", srcChainId);

        eventEmitter.emitEventLog1("MultichainTransferIn", Cast.toBytes32(account), eventData);
    }

    /// @param provider the address of the multichain provider for Deposit/GlvDeposit action types,
    /// or handler address for BridgeOut action type
    function emitMultichainBridgeAction(
        EventEmitter eventEmitter,
        address provider,
        address account,
        uint256 srcChainId,
        uint256 actionType
    ) internal {
        EventUtils.EventLogData memory eventData;

        eventData.addressItems.initItems(2);
        eventData.addressItems.setItem(0, "provider", provider);
        eventData.addressItems.setItem(1, "account", account);

        eventData.uintItems.initItems(2);
        eventData.uintItems.setItem(0, "srcChainId", srcChainId);
        eventData.uintItems.setItem(1, "actionType", actionType);

        eventEmitter.emitEventLog1("MultichainBridgeAction", Cast.toBytes32(account), eventData);
    }

    /// @param provider the address of the multichain provider for Deposit/GlvDeposit action types,
    /// or handler address for BridgeOut action type
    function emitMultichainBridgeActionFailed(
        EventEmitter eventEmitter,
        address provider,
        address account,
        uint256 srcChainId,
        uint256 actionType,
        string memory reason
    ) internal {
        EventUtils.EventLogData memory eventData;

        eventData.addressItems.initItems(2);
        eventData.addressItems.setItem(0, "provider", provider);
        eventData.addressItems.setItem(1, "account", account);

        eventData.uintItems.initItems(2);
        eventData.uintItems.setItem(0, "srcChainId", srcChainId);
        eventData.uintItems.setItem(1, "actionType", actionType);

        eventData.stringItems.initItems(1);
        eventData.stringItems.setItem(0, "reason", reason);

        eventEmitter.emitEventLog1("MultichainBridgeActionFailed", Cast.toBytes32(account), eventData);
    }

    /// @param provider the address of the multichain provider for cross-chain action,
    /// or zero address for same-chain action
    function emitMultichainBridgeOut(
        EventEmitter eventEmitter,
        address provider,
        address token,
        address receiver,
        uint256 amount,
        uint256 srcChainId
    ) internal {
        EventUtils.EventLogData memory eventData;

        eventData.addressItems.initItems(3);
        eventData.addressItems.setItem(0, "provider", provider);
        eventData.addressItems.setItem(1, "token", token);
        eventData.addressItems.setItem(2, "receiver", receiver);

        eventData.uintItems.initItems(2);
        eventData.uintItems.setItem(0, "amount", amount);
        eventData.uintItems.setItem(1, "srcChainId", srcChainId);

        eventEmitter.emitEventLog1("MultichainBridgeOut", Cast.toBytes32(receiver), eventData);
    }

    function emitMultichainTransferOut(
        EventEmitter eventEmitter,
        address token,
        address account,
        address receiver,
        uint256 amount,
        uint256 srcChainId
    ) internal {
        EventUtils.EventLogData memory eventData;

        eventData.addressItems.initItems(3);
        eventData.addressItems.setItem(0, "token", token);
        eventData.addressItems.setItem(1, "account", account);
        eventData.addressItems.setItem(2, "receiver", receiver);

        eventData.uintItems.initItems(2);
        eventData.uintItems.setItem(0, "amount", amount);
        eventData.uintItems.setItem(1, "srcChainId", srcChainId);

        eventEmitter.emitEventLog1("MultichainTransferOut", Cast.toBytes32(account), eventData);
    }
}

// ============================================================
// FILE: contracts/multichain/MultichainUtils.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import "../data/DataStore.sol";
import "../data/Keys.sol";
import "../event/EventEmitter.sol";

import "./MultichainVault.sol";
import "./MultichainEventUtils.sol";
import "./IMultichainProvider.sol";

/**
 * @title MultichainUtils
 */
library MultichainUtils {
    using SafeERC20 for IERC20;

    /**
     * Records a deposit from another chain. IMultichainProvider has CONTROLLER role
     * @param multichainProvider the multichain provider contract
     * @param token address of the token being deposited
     * @param account user address on the source chain
     * @param srcChainId id of the source chain
     */
    function recordBridgeIn(
        DataStore dataStore,
        EventEmitter eventEmitter,
        MultichainVault multichainVault,
        IMultichainProvider multichainProvider,
        address token,
        address account,
        uint256 srcChainId
    ) external {
        // token should have been transferred to multichainVault by IMultichainProvider
        uint256 amount = multichainVault.recordTransferIn(token);

        if (amount == 0) {
            revert Errors.EmptyMultichainTransferInAmount(account, token);
        }

        _increaseMultichainBalance(dataStore, eventEmitter, account, token, amount, srcChainId);

        MultichainEventUtils.emitMultichainBridgeIn(
            eventEmitter,
            address(multichainProvider),
            token,
            account,
            amount,
            srcChainId
        );
    }

    /**
     * Records a transfer of tokens into the multichain vault
     * @param account user address on the source chain
     * @param token address of the token being transferred
     * @param srcChainId id of the source chain
     */
    function recordTransferIn(
        DataStore dataStore,
        EventEmitter eventEmitter,
        MultichainVault multichainVault,
        address token,
        address account,
        uint256 srcChainId
    ) external returns (uint256) {
        // token should have been transferred to multichainVault
        uint256 amount = multichainVault.recordTransferIn(token);
        if (amount == 0) {
            return 0;
        }

        _increaseMultichainBalance(dataStore, eventEmitter, account, token, amount, srcChainId);

        return amount;
    }

    function _increaseMultichainBalance(
        DataStore dataStore,
        EventEmitter eventEmitter,
        address account,
        address token,
        uint256 amount,
        uint256 srcChainId
    ) private {
        dataStore.incrementUint(Keys.multichainBalanceKey(account, token), amount);
        MultichainEventUtils.emitMultichainTransferIn(eventEmitter, token, account, amount, srcChainId);
    }

    /**
     * @dev transfer the specified amount of tokens from user's multichain balance to receiver
     * @param token the token to transfer
     * @param account the account for which the multichain balance is decreased
     * @param receiver the account to transfer to
     * @param amount the amount of tokens to transfer
     * @param srcChainId the source chain id
     */
    function transferOut(
        DataStore dataStore,
        EventEmitter eventEmitter,
        MultichainVault multichainVault,
        address token,
        address account,
        address receiver,
        uint256 amount,
        uint256 srcChainId
    ) external {
        if (amount == 0) {
            return;
        }

        uint256 balance = getMultichainBalanceAmount(dataStore, account, token);
        if (balance < amount) {
            revert Errors.InsufficientMultichainBalance(account, token, balance, amount);
        }

        dataStore.decrementUint(Keys.multichainBalanceKey(account, token), amount);
        multichainVault.transferOut(token, receiver, amount);
        MultichainEventUtils.emitMultichainTransferOut(eventEmitter, token, account, receiver, amount, srcChainId);
    }

    function getMultichainBalanceAmount(
        DataStore dataStore,
        address account,
        address token
    ) public view returns (uint256) {
        return dataStore.getUint(Keys.multichainBalanceKey(account, token));
    }

    function validateMultichainProvider(DataStore dataStore, address provider) external view {
        bytes32 providerKey = Keys.isMultichainProviderEnabledKey(provider);
        if (!dataStore.getBool(providerKey)) {
            revert Errors.InvalidMultichainProvider(provider);
        }
    }

    function validateMultichainEndpoint(DataStore dataStore, address endpoint) external view {
        bytes32 endpointKey = Keys.isMultichainEndpointEnabledKey(endpoint);
        if (!dataStore.getBool(endpointKey)) {
            revert Errors.InvalidMultichainEndpoint(endpoint);
        }
    }
}

// ============================================================
// FILE: contracts/multichain/MultichainVault.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.0;

import "../bank/StrictBank.sol";

/**
 * @title MultichainVault
 * @dev Vault for crosschain deposits
 */
contract MultichainVault is StrictBank {
    constructor(RoleStore _roleStore, DataStore _dataStore) StrictBank(_roleStore, _dataStore) {}
}

// ============================================================
// FILE: contracts/nonce/NonceUtils.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.0;

import "../data/DataStore.sol";
import "../data/Keys.sol";

// @title NonceUtils
// @dev Library to keep track of an incrementing nonce value
library NonceUtils {
    // @dev get the current nonce value
    // @param dataStore DataStore
    function getCurrentNonce(DataStore dataStore) internal view returns (uint256) {
        return dataStore.getUint(Keys.NONCE);
    }

    // @dev increment the current nonce value
    // @param dataStore DataStore
    // @return the new nonce value
    function incrementNonce(DataStore dataStore) internal returns (uint256) {
        return dataStore.incrementUint(Keys.NONCE, 1);
    }

    // @dev convenience function to create a bytes32 hash using the next nonce
    // it would be possible to use the nonce directly as an ID / key
    // however, for positions the key is a bytes32 value based on a hash of
    // the position values
    // so bytes32 is used instead for a standard key type
    // @param dataStore DataStore
    // @return bytes32 hash using the next nonce value
    function getNextKey(DataStore dataStore) internal returns (bytes32) {
        uint256 nonce = incrementNonce(dataStore);
        bytes32 key = getKey(dataStore, nonce);

        return key;
    }

    function getCurrentKey(DataStore dataStore) internal view returns (bytes32) {
        uint256 nonce = getCurrentNonce(dataStore);
        bytes32 key = getKey(dataStore, nonce);

        return key;
    }

    function getKey(DataStore dataStore, uint256 nonce) internal pure returns (bytes32) {
        return keccak256(abi.encode(address(dataStore), nonce));
    }
}

// ============================================================
// FILE: contracts/oracle/IOracle.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.0;

import "../data/DataStore.sol";
import "../event/EventEmitter.sol";
import "./OracleUtils.sol";

interface IOracle {
    function minTimestamp() external view returns (uint256);
    function maxTimestamp() external view returns (uint256);
    function dataStore() external view returns (DataStore);
    function eventEmitter() external view returns (EventEmitter);

    function validateSequencerUp() external view;
    function setPrices(OracleUtils.SetPricesParams memory params) external;
    function setPricesForAtomicAction(OracleUtils.SetPricesParams memory params) external;
    function setPrimaryPrice(address token, Price.Props memory price) external;
    function setTimestamps(uint256 _minTimestamp, uint256 _maxTimestamp) external;
    function clearAllPrices() external;
    function getTokensWithPricesCount() external view returns (uint256);
    function getTokensWithPrices(uint256 start, uint256 end) external view returns (address[] memory);
    function getPrimaryPrice(address token) external view returns (Price.Props memory);
    function primaryPrices(address token) external view returns (uint256 min, uint256 max);
    function validatePrices(
        OracleUtils.SetPricesParams memory params,
        bool forAtomicAction
    ) external returns (OracleUtils.ValidatedPrice[] memory);
}

// ============================================================
// FILE: contracts/oracle/OracleUtils.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.0;

import "../utils/Array.sol";
import "../price/Price.sol";

// @title OracleUtils
// @dev Library for oracle functions
library OracleUtils {
    using Array for uint256[];

    struct SetPricesParams {
        address[] tokens;
        address[] providers;
        bytes[] data;
    }

    struct ValidatedPrice {
        address token;
        uint256 min;
        uint256 max;
        uint256 timestamp;
        address provider;
    }

    struct SimulatePricesParams {
        address[] primaryTokens;
        Price.Props[] primaryPrices;
        uint256 minTimestamp;
        uint256 maxTimestamp;
    }

    function isOracleError(bytes4 errorSelector) internal pure returns (bool) {
        if (isOracleTimestampError(errorSelector)) {
            return true;
        }

        if (isEmptyPriceError(errorSelector)) {
            return true;
        }

        return false;
    }

    function isEmptyPriceError(bytes4 errorSelector) internal pure returns (bool) {
        if (errorSelector == Errors.EmptyPrimaryPrice.selector) {
            return true;
        }

        return false;
    }

    function isOracleTimestampError(bytes4 errorSelector) internal pure returns (bool) {
        if (errorSelector == Errors.OracleTimestampsAreLargerThanRequestExpirationTime.selector) {
            return true;
        }

        if (errorSelector == Errors.OracleTimestampsAreSmallerThanRequired.selector) {
            return true;
        }

        return false;
    }
}

// ============================================================
// FILE: contracts/order/IBaseOrderUtils.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.0;

import "./Order.sol";

interface IBaseOrderUtils {
    // @dev CreateOrderParams struct used in createOrder to avoid stack
    // too deep errors
    //
    // @param addresses address values
    // @param numbers number values
    // @param orderType for order.orderType
    // @param decreasePositionSwapType for order.decreasePositionSwapType
    // @param isLong for order.isLong
    // @param shouldUnwrapNativeToken for order.shouldUnwrapNativeToken
    // @param dataList a list of bytes32 values that can be used for additional data
    // @note all params except should be part of the corresponding struct hash in all relay contracts
    struct CreateOrderParams {
        CreateOrderParamsAddresses addresses;
        CreateOrderParamsNumbers numbers;
        Order.OrderType orderType;
        Order.DecreasePositionSwapType decreasePositionSwapType;
        bool isLong;
        bool shouldUnwrapNativeToken;
        bool autoCancel;
        bytes32 referralCode;
        bytes32[] dataList;
    }

    // @note all params except should be part of the corresponding struct hash in all relay contracts
    struct CreateOrderParamsAddresses {
        address receiver;
        address cancellationReceiver;
        address callbackContract;
        address uiFeeReceiver;
        address market;
        address initialCollateralToken;
        address[] swapPath;
    }

    // @param sizeDeltaUsd for order.sizeDeltaUsd
    // @param triggerPrice for order.triggerPrice
    // @param acceptablePrice for order.acceptablePrice
    // @param executionFee for order.executionFee
    // @param callbackGasLimit for order.callbackGasLimit
    // @param minOutputAmount for order.minOutputAmount
    // @param validFromTime for order.validFromTime
    // @note all params except should be part of the corresponding struct hash in all relay contracts
    struct CreateOrderParamsNumbers {
        uint256 sizeDeltaUsd;
        uint256 initialCollateralDeltaAmount;
        uint256 triggerPrice;
        uint256 acceptablePrice;
        uint256 executionFee;
        uint256 callbackGasLimit;
        uint256 minOutputAmount;
        uint256 validFromTime;
    }
}

// ============================================================
// FILE: contracts/order/Order.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.0;

import "../chain/Chain.sol";

// @title Order
// @dev Struct for orders
library Order {
    using Order for Props;

    enum OrderType {
        // @dev MarketSwap: swap token A to token B at the current market price
        // the order will be cancelled if the minOutputAmount cannot be fulfilled
        MarketSwap,
        // @dev LimitSwap: swap token A to token B if the minOutputAmount can be fulfilled
        LimitSwap,
        // @dev MarketIncrease: increase position at the current market price
        // the order will be cancelled if the position cannot be increased at the acceptablePrice
        MarketIncrease,
        // @dev LimitIncrease: increase position if the triggerPrice is reached and the acceptablePrice can be fulfilled
        LimitIncrease,
        // @dev MarketDecrease: decrease position at the current market price
        // the order will be cancelled if the position cannot be decreased at the acceptablePrice
        MarketDecrease,
        // @dev LimitDecrease: decrease position if the triggerPrice is reached and the acceptablePrice can be fulfilled
        LimitDecrease,
        // @dev StopLossDecrease: decrease position if the triggerPrice is reached and the acceptablePrice can be fulfilled
        StopLossDecrease,
        // @dev Liquidation: allows liquidation of positions if the criteria for liquidation are met
        Liquidation,
        // @dev StopIncrease: increase position if the triggerPrice is reached and the acceptablePrice can be fulfilled
        StopIncrease
    }

    // to help further differentiate orders
    enum SecondaryOrderType {
        None,
        Adl
    }

    enum DecreasePositionSwapType {
        NoSwap,
        SwapPnlTokenToCollateralToken,
        SwapCollateralTokenToPnlToken
    }

    // @dev there is a limit on the number of fields a struct can have when being passed
    // or returned as a memory variable which can cause "Stack too deep" errors
    // use sub-structs to avoid this issue
    // @param addresses address values
    // @param numbers number values
    // @param flags boolean values
    // @param _dataList a list of bytes32 values that can be used for additional data
    struct Props {
        Addresses addresses;
        Numbers numbers;
        Flags flags;
        bytes32[] _dataList;
    }

    // @param account the account of the order
    // @param receiver the receiver for any token transfers
    // this field is meant to allow the output of an order to be
    // received by an address that is different from the creator of the
    // order whether this is for swaps or whether the account is the owner
    // of a position
    // for funding fees and claimable collateral, the funds are still
    // credited to the owner of the position indicated by order.account
    // @param callbackContract the contract to call for callbacks
    // @param uiFeeReceiver the ui fee receiver
    // @param market the trading market
    // @param initialCollateralToken for increase orders, initialCollateralToken
    // is the token sent in by the user, the token will be swapped through the
    // specified swapPath, before being deposited into the position as collateral
    // for decrease orders, initialCollateralToken is the collateral token of the position
    // withdrawn collateral from the decrease of the position will be swapped
    // through the specified swapPath
    // for swaps, initialCollateralToken is the initial token sent for the swap
    // @param swapPath an array of market addresses to swap through
    struct Addresses {
        address account;
        address receiver;
        address cancellationReceiver;
        address callbackContract;
        address uiFeeReceiver;
        address market;
        address initialCollateralToken;
        address[] swapPath;
    }

    // @param sizeDeltaUsd the requested change in position size
    // @param initialCollateralDeltaAmount for increase orders, initialCollateralDeltaAmount
    // is the amount of the initialCollateralToken sent in by the user
    // for decrease orders, initialCollateralDeltaAmount is the amount of the position's
    // collateralToken to withdraw
    // for swaps, initialCollateralDeltaAmount is the amount of initialCollateralToken sent
    // in for the swap
    // @param orderType the order type
    // @param triggerPrice the trigger price for non-market orders
    // @param acceptablePrice the acceptable execution price for increase / decrease orders
    // @param executionFee the execution fee for keepers
    // @param callbackGasLimit the gas limit for the callbackContract
    // @param minOutputAmount the minimum output amount for decrease orders and swaps
    // note that for decrease orders, multiple tokens could be received, for this reason, the
    // minOutputAmount value is treated as a USD value for validation in decrease orders
    // @param srcChainId the source chain id
    struct Numbers {
        OrderType orderType;
        DecreasePositionSwapType decreasePositionSwapType;
        uint256 sizeDeltaUsd;
        uint256 initialCollateralDeltaAmount;
        uint256 triggerPrice;
        uint256 acceptablePrice;
        uint256 executionFee;
        uint256 callbackGasLimit;
        uint256 minOutputAmount;
        uint256 updatedAtTime;
        uint256 validFromTime;
        uint256 srcChainId;
    }

    // @param isLong whether the order is for a long or short
    // @param shouldUnwrapNativeToken whether to unwrap native tokens before
    // transferring to the user
    // @param isFrozen whether the order is frozen
    struct Flags {
        bool isLong;
        bool shouldUnwrapNativeToken;
        bool isFrozen;
        bool autoCancel;
    }

    // @dev the order account
    // @param props Props
    // @return the order account
    function account(Props memory props) internal pure returns (address) {
        return props.addresses.account;
    }

    // @dev set the order account
    // @param props Props
    // @param value the value to set to
    function setAccount(Props memory props, address value) internal pure {
        props.addresses.account = value;
    }

    // @dev the order receiver
    // @param props Props
    // @return the order receiver
    function receiver(Props memory props) internal pure returns (address) {
        return props.addresses.receiver;
    }

    // @dev set the order receiver
    // @param props Props
    // @param value the value to set to
    function setReceiver(Props memory props, address value) internal pure {
        props.addresses.receiver = value;
    }

    function cancellationReceiver(Props memory props) internal pure returns (address) {
        return props.addresses.cancellationReceiver;
    }

    function setCancellationReceiver(Props memory props, address value) internal pure {
        props.addresses.cancellationReceiver = value;
    }

    // @dev the order callbackContract
    // @param props Props
    // @return the order callbackContract
    function callbackContract(Props memory props) internal pure returns (address) {
        return props.addresses.callbackContract;
    }

    // @dev set the order callbackContract
    // @param props Props
    // @param value the value to set to
    function setCallbackContract(Props memory props, address value) internal pure {
        props.addresses.callbackContract = value;
    }

    // @dev the order market
    // @param props Props
    // @return the order market
    function market(Props memory props) internal pure returns (address) {
        return props.addresses.market;
    }

    // @dev set the order market
    // @param props Props
    // @param value the value to set to
    function setMarket(Props memory props, address value) internal pure {
        props.addresses.market = value;
    }

    // @dev the order initialCollateralToken
    // @param props Props
    // @return the order initialCollateralToken
    function initialCollateralToken(Props memory props) internal pure returns (address) {
        return props.addresses.initialCollateralToken;
    }

    // @dev set the order initialCollateralToken
    // @param props Props
    // @param value the value to set to
    function setInitialCollateralToken(Props memory props, address value) internal pure {
        props.addresses.initialCollateralToken = value;
    }

    // @dev the order uiFeeReceiver
    // @param props Props
    // @return the order uiFeeReceiver
    function uiFeeReceiver(Props memory props) internal pure returns (address) {
        return props.addresses.uiFeeReceiver;
    }

    // @dev set the order uiFeeReceiver
    // @param props Props
    // @param value the value to set to
    function setUiFeeReceiver(Props memory props, address value) internal pure {
        props.addresses.uiFeeReceiver = value;
    }

    // @dev the order swapPath
    // @param props Props
    // @return the order swapPath
    function swapPath(Props memory props) internal pure returns (address[] memory) {
        return props.addresses.swapPath;
    }

    // @dev set the order swapPath
    // @param props Props
    // @param value the value to set to
    function setSwapPath(Props memory props, address[] memory value) internal pure {
        props.addresses.swapPath = value;
    }

    // @dev the order type
    // @param props Props
    // @return the order type
    function orderType(Props memory props) internal pure returns (OrderType) {
        return props.numbers.orderType;
    }

    // @dev set the order type
    // @param props Props
    // @param value the value to set to
    function setOrderType(Props memory props, OrderType value) internal pure {
        props.numbers.orderType = value;
    }

    function decreasePositionSwapType(Props memory props) internal pure returns (DecreasePositionSwapType) {
        return props.numbers.decreasePositionSwapType;
    }

    function setDecreasePositionSwapType(Props memory props, DecreasePositionSwapType value) internal pure {
        props.numbers.decreasePositionSwapType = value;
    }

    // @dev the order sizeDeltaUsd
    // @param props Props
    // @return the order sizeDeltaUsd
    function sizeDeltaUsd(Props memory props) internal pure returns (uint256) {
        return props.numbers.sizeDeltaUsd;
    }

    // @dev set the order sizeDeltaUsd
    // @param props Props
    // @param value the value to set to
    function setSizeDeltaUsd(Props memory props, uint256 value) internal pure {
        props.numbers.sizeDeltaUsd = value;
    }

    // @dev the order initialCollateralDeltaAmount
    // @param props Props
    // @return the order initialCollateralDeltaAmount
    function initialCollateralDeltaAmount(Props memory props) internal pure returns (uint256) {
        return props.numbers.initialCollateralDeltaAmount;
    }

    // @dev set the order initialCollateralDeltaAmount
    // @param props Props
    // @param value the value to set to
    function setInitialCollateralDeltaAmount(Props memory props, uint256 value) internal pure {
        props.numbers.initialCollateralDeltaAmount = value;
    }

    // @dev the order triggerPrice
    // @param props Props
    // @return the order triggerPrice
    function triggerPrice(Props memory props) internal pure returns (uint256) {
        return props.numbers.triggerPrice;
    }

    // @dev set the order triggerPrice
    // @param props Props
    // @param value the value to set to
    function setTriggerPrice(Props memory props, uint256 value) internal pure {
        props.numbers.triggerPrice = value;
    }

    // @dev the order acceptablePrice
    // @param props Props
    // @return the order acceptablePrice
    function acceptablePrice(Props memory props) internal pure returns (uint256) {
        return props.numbers.acceptablePrice;
    }

    // @dev set the order acceptablePrice
    // @param props Props
    // @param value the value to set to
    function setAcceptablePrice(Props memory props, uint256 value) internal pure {
        props.numbers.acceptablePrice = value;
    }

    // @dev set the order executionFee
    // @param props Props
    // @param value the value to set to
    function setExecutionFee(Props memory props, uint256 value) internal pure {
        props.numbers.executionFee = value;
    }

    // @dev the order executionFee
    // @param props Props
    // @return the order executionFee
    function executionFee(Props memory props) internal pure returns (uint256) {
        return props.numbers.executionFee;
    }

    // @dev the order callbackGasLimit
    // @param props Props
    // @return the order callbackGasLimit
    function callbackGasLimit(Props memory props) internal pure returns (uint256) {
        return props.numbers.callbackGasLimit;
    }

    // @dev set the order callbackGasLimit
    // @param props Props
    // @param value the value to set to
    function setCallbackGasLimit(Props memory props, uint256 value) internal pure {
        props.numbers.callbackGasLimit = value;
    }

    // @dev the order minOutputAmount
    // @param props Props
    // @return the order minOutputAmount
    function minOutputAmount(Props memory props) internal pure returns (uint256) {
        return props.numbers.minOutputAmount;
    }

    // @dev set the order minOutputAmount
    // @param props Props
    // @param value the value to set to
    function setMinOutputAmount(Props memory props, uint256 value) internal pure {
        props.numbers.minOutputAmount = value;
    }

    // @dev the order updatedAtTime
    // @param props Props
    // @return the order updatedAtTime
    function updatedAtTime(Props memory props) internal pure returns (uint256) {
        return props.numbers.updatedAtTime;
    }

    // @dev set the order updatedAtTime
    // @param props Props
    // @param value the value to set to
    function setUpdatedAtTime(Props memory props, uint256 value) internal pure {
        props.numbers.updatedAtTime = value;
    }

    function validFromTime(Props memory props) internal pure returns (uint256) {
        return props.numbers.validFromTime;
    }
    function setValidFromTime(Props memory props, uint256 value) internal pure {
        props.numbers.validFromTime = value;
    }

    function srcChainId(Props memory props) internal pure returns (uint256) {
        return props.numbers.srcChainId;
    }
    function setSrcChainId(Props memory props, uint256 value) internal pure {
        props.numbers.srcChainId = value;
    }

    // @dev whether the order is for a long or short
    // @param props Props
    // @return whether the order is for a long or short
    function isLong(Props memory props) internal pure returns (bool) {
        return props.flags.isLong;
    }

    // @dev set whether the order is for a long or short
    // @param props Props
    // @param value the value to set to
    function setIsLong(Props memory props, bool value) internal pure {
        props.flags.isLong = value;
    }

    // @dev whether to unwrap the native token before transfers to the user
    // @param props Props
    // @return whether to unwrap the native token before transfers to the user
    function shouldUnwrapNativeToken(Props memory props) internal pure returns (bool) {
        return props.flags.shouldUnwrapNativeToken;
    }

    // @dev set whether the native token should be unwrapped before being
    // transferred to the receiver
    // @param props Props
    // @param value the value to set to
    function setShouldUnwrapNativeToken(Props memory props, bool value) internal pure {
        props.flags.shouldUnwrapNativeToken = value;
    }

    // @dev whether the order is frozen
    // @param props Props
    // @return whether the order is frozen
    function isFrozen(Props memory props) internal pure returns (bool) {
        return props.flags.isFrozen;
    }

    // @dev set whether the order is frozen
    // transferred to the receiver
    // @param props Props
    // @param value the value to set to
    function setIsFrozen(Props memory props, bool value) internal pure {
        props.flags.isFrozen = value;
    }

    function autoCancel(Props memory props) internal pure returns (bool) {
        return props.flags.autoCancel;
    }

    function setAutoCancel(Props memory props, bool value) internal pure {
        props.flags.autoCancel = value;
    }

    function dataList(Props memory props) internal pure returns (bytes32[] memory) {
        return props._dataList;
    }

    function setDataList(Props memory props, bytes32[] memory value) internal pure {
        props._dataList = value;
    }

    // @param props Props
    function touch(Props memory props) internal view {
        props.setUpdatedAtTime(Chain.currentTimestamp());
    }

    function isSupportedOrder(OrderType _orderType) internal pure returns (bool) {
        return _orderType == OrderType.MarketSwap ||
               _orderType == OrderType.LimitSwap ||
               _orderType == OrderType.MarketIncrease ||
               _orderType == OrderType.MarketDecrease ||
               _orderType == OrderType.LimitIncrease ||
               _orderType == OrderType.LimitDecrease ||
               _orderType == OrderType.StopIncrease ||
               _orderType == OrderType.StopLossDecrease ||
               _orderType == OrderType.Liquidation;
    }

    // @dev check if an orderType is a market order
    // @param orderType the order type
    // @return whether an orderType is a market order
    function isMarketOrder(OrderType _orderType) internal pure returns (bool) {
        // a liquidation order is not considered as a market order
        return _orderType == OrderType.MarketSwap ||
               _orderType == OrderType.MarketIncrease ||
               _orderType == OrderType.MarketDecrease;
    }

    // @dev check if an orderType is a swap order
    // @param orderType the order type
    // @return whether an orderType is a swap order
    function isSwapOrder(OrderType _orderType) internal pure returns (bool) {
        return _orderType == OrderType.MarketSwap ||
               _orderType == OrderType.LimitSwap;
    }

    // @dev check if an orderType is a position order
    // @param orderType the order type
    // @return whether an orderType is a position order
    function isPositionOrder(OrderType _orderType) internal pure returns (bool) {
        return isIncreaseOrder(_orderType) || isDecreaseOrder(_orderType);
    }

    // @dev check if an orderType is an increase order
    // @param orderType the order type
    // @return whether an orderType is an increase order
    function isIncreaseOrder(OrderType _orderType) internal pure returns (bool) {
        return _orderType == OrderType.MarketIncrease ||
               _orderType == OrderType.LimitIncrease ||
               _orderType == OrderType.StopIncrease;
    }

    // @dev check if an orderType is a decrease order
    // @param orderType the order type
    // @return whether an orderType is a decrease order
    function isDecreaseOrder(OrderType _orderType) internal pure returns (bool) {
        return _orderType == OrderType.MarketDecrease ||
               _orderType == OrderType.LimitDecrease ||
               _orderType == OrderType.StopLossDecrease ||
               _orderType == OrderType.Liquidation;
    }

    // @dev check if an orderType is a liquidation order
    // @param orderType the order type
    // @return whether an orderType is a liquidation order
    function isLiquidationOrder(OrderType _orderType) internal pure returns (bool) {
        return _orderType == OrderType.Liquidation;
    }
}

// ============================================================
// FILE: contracts/order/OrderEventUtils.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.0;

import "../event/EventEmitter.sol";
import "../utils/Cast.sol";

import "./Order.sol";

library OrderEventUtils {
    using Order for Order.Props;

    using EventUtils for EventUtils.AddressItems;
    using EventUtils for EventUtils.UintItems;
    using EventUtils for EventUtils.IntItems;
    using EventUtils for EventUtils.BoolItems;
    using EventUtils for EventUtils.Bytes32Items;
    using EventUtils for EventUtils.BytesItems;
    using EventUtils for EventUtils.StringItems;

    function emitOrderCreated(
        EventEmitter eventEmitter,
        bytes32 key,
        Order.Props memory order
    ) external {
        EventUtils.EventLogData memory eventData = createEventData(order);

        eventData.bytes32Items.initItems(1);
        eventData.bytes32Items.setItem(0, "key", key);

        eventEmitter.emitEventLog2(
            "OrderCreated",
            key,
            Cast.toBytes32(order.account()),
            eventData
        );
    }

    function emitOrderExecuted(
        EventEmitter eventEmitter,
        bytes32 key,
        address account,
        Order.SecondaryOrderType secondaryOrderType
    ) external {
        EventUtils.EventLogData memory eventData;

        eventData.bytes32Items.initItems(1);
        eventData.bytes32Items.setItem(0, "key", key);

        eventData.addressItems.initItems(1);
        eventData.addressItems.setItem(0, "account", account);

        eventData.uintItems.initItems(1);
        eventData.uintItems.setItem(0, "secondaryOrderType", uint256(secondaryOrderType));

        eventEmitter.emitEventLog2(
            "OrderExecuted",
            key,
            Cast.toBytes32(account),
            eventData
        );
    }

    function emitOrderUpdated(
        EventEmitter eventEmitter,
        bytes32 key,
        Order.Props memory order
    ) external {
        EventUtils.EventLogData memory eventData;

        eventData.bytes32Items.initItems(1);
        eventData.bytes32Items.setItem(0, "key", key);

        eventData.addressItems.initItems(1);
        eventData.addressItems.setItem(0, "account", order.account());

        eventData.uintItems.initItems(6);
        eventData.uintItems.setItem(0, "sizeDeltaUsd", order.sizeDeltaUsd());
        eventData.uintItems.setItem(1, "acceptablePrice", order.acceptablePrice());
        eventData.uintItems.setItem(2, "triggerPrice", order.triggerPrice());
        eventData.uintItems.setItem(3, "minOutputAmount", order.minOutputAmount());
        eventData.uintItems.setItem(4, "updatedAtTime", order.updatedAtTime());
        eventData.uintItems.setItem(5, "validFromTime", order.validFromTime());

        eventData.boolItems.initItems(1);
        eventData.boolItems.setItem(0, "autoCancel", order.autoCancel());

        eventData.bytes32Items.initArrayItems(1);
        eventData.bytes32Items.setItem(0, "dataList", order.dataList());

        eventEmitter.emitEventLog2(
            "OrderUpdated",
            key,
            Cast.toBytes32(order.account()),
            eventData
        );
    }

    function emitOrderSizeDeltaAutoUpdated(
        EventEmitter eventEmitter,
        bytes32 key,
        uint256 sizeDeltaUsd,
        uint256 nextSizeDeltaUsd
    ) external {
        EventUtils.EventLogData memory eventData;

        eventData.bytes32Items.initItems(1);
        eventData.bytes32Items.setItem(0, "key", key);

        eventData.uintItems.initItems(2);
        eventData.uintItems.setItem(0, "sizeDeltaUsd", sizeDeltaUsd);
        eventData.uintItems.setItem(1, "nextSizeDeltaUsd", nextSizeDeltaUsd);

        eventEmitter.emitEventLog1(
            "OrderSizeDeltaAutoUpdated",
            key,
            eventData
        );
    }

    function emitOrderCollateralDeltaAmountAutoUpdated(
        EventEmitter eventEmitter,
        bytes32 key,
        uint256 collateralDeltaAmount,
        uint256 nextCollateralDeltaAmount
    ) external {
        EventUtils.EventLogData memory eventData;

        eventData.bytes32Items.initItems(1);
        eventData.bytes32Items.setItem(0, "key", key);

        eventData.uintItems.initItems(2);
        eventData.uintItems.setItem(0, "collateralDeltaAmount", collateralDeltaAmount);
        eventData.uintItems.setItem(1, "nextCollateralDeltaAmount", nextCollateralDeltaAmount);

        eventEmitter.emitEventLog1(
            "OrderCollateralDeltaAmountAutoUpdated",
            key,
            eventData
        );
    }

    function emitOrderCancelled(
        EventEmitter eventEmitter,
        bytes32 key,
        address account,
        string memory reason,
        bytes memory reasonBytes
    ) external {
        EventUtils.EventLogData memory eventData;

        eventData.bytes32Items.initItems(1);
        eventData.bytes32Items.setItem(0, "key", key);

        eventData.addressItems.initItems(1);
        eventData.addressItems.setItem(0, "account", account);

        eventData.stringItems.initItems(1);
        eventData.stringItems.setItem(0, "reason", reason);

        eventData.bytesItems.initItems(1);
        eventData.bytesItems.setItem(0, "reasonBytes", reasonBytes);

        eventEmitter.emitEventLog2(
            "OrderCancelled",
            key,
            Cast.toBytes32(account),
            eventData
        );
    }

    function emitOrderFrozen(
        EventEmitter eventEmitter,
        bytes32 key,
        address account,
        string memory reason,
        bytes memory reasonBytes
    ) external {
        EventUtils.EventLogData memory eventData;

        eventData.bytes32Items.initItems(1);
        eventData.bytes32Items.setItem(0, "key", key);

        eventData.addressItems.initItems(1);
        eventData.addressItems.setItem(0, "account", account);

        eventData.stringItems.initItems(1);
        eventData.stringItems.setItem(0, "reason", reason);

        eventData.bytesItems.initItems(1);
        eventData.bytesItems.setItem(0, "reasonBytes", reasonBytes);

        eventEmitter.emitEventLog2(
            "OrderFrozen",
            key,
            Cast.toBytes32(account),
            eventData
        );
    }

    function createEventData(Order.Props memory order) public pure returns (EventUtils.EventLogData memory) {
        EventUtils.EventLogData memory eventData;
        eventData.addressItems.initItems(7);
        eventData.addressItems.setItem(0, "account", order.account());
        eventData.addressItems.setItem(1, "receiver", order.receiver());
        eventData.addressItems.setItem(2, "callbackContract", order.callbackContract());
        eventData.addressItems.setItem(3, "uiFeeReceiver", order.uiFeeReceiver());
        eventData.addressItems.setItem(4, "market", order.market());
        eventData.addressItems.setItem(5, "initialCollateralToken", order.initialCollateralToken());
        eventData.addressItems.setItem(6, "cancellationReceiver", order.cancellationReceiver());

        eventData.addressItems.initArrayItems(1);
        eventData.addressItems.setItem(0, "swapPath", order.swapPath());

        eventData.uintItems.initItems(12);
        eventData.uintItems.setItem(0, "orderType", uint256(order.orderType()));
        eventData.uintItems.setItem(1, "decreasePositionSwapType", uint256(order.decreasePositionSwapType()));
        eventData.uintItems.setItem(2, "sizeDeltaUsd", order.sizeDeltaUsd());
        eventData.uintItems.setItem(3, "initialCollateralDeltaAmount", order.initialCollateralDeltaAmount());
        eventData.uintItems.setItem(4, "triggerPrice", order.triggerPrice());
        eventData.uintItems.setItem(5, "acceptablePrice", order.acceptablePrice());
        eventData.uintItems.setItem(6, "executionFee", order.executionFee());
        eventData.uintItems.setItem(7, "callbackGasLimit", order.callbackGasLimit());
        eventData.uintItems.setItem(8, "minOutputAmount", order.minOutputAmount());
        eventData.uintItems.setItem(9, "updatedAtTime", order.updatedAtTime());
        eventData.uintItems.setItem(10, "validFromTime", order.validFromTime());
        eventData.uintItems.setItem(11, "srcChainId", order.srcChainId());

        eventData.boolItems.initItems(3);
        eventData.boolItems.setItem(0, "isLong", order.isLong());
        eventData.boolItems.setItem(1, "shouldUnwrapNativeToken", order.shouldUnwrapNativeToken());
        eventData.boolItems.setItem(2, "autoCancel", order.autoCancel());

        eventData.bytes32Items.initArrayItems(1);
        eventData.bytes32Items.setItem(0, "dataList", order.dataList());
        return eventData;
    }

    function emitPositionCollateralUsedForExecutionFee(
        EventEmitter eventEmitter,
        bytes32 orderKey,
        address feeToken,
        uint256 positionCollateralAmountUsed
    ) external {
        EventUtils.EventLogData memory eventData;

        eventData.bytes32Items.initItems(1);
        eventData.bytes32Items.setItem(0, "key", orderKey);

        eventData.addressItems.initItems(1);
        eventData.addressItems.setItem(0, "feeToken", feeToken);

        eventData.uintItems.initItems(1);
        eventData.uintItems.setItem(0, "positionCollateralAmountUsed", positionCollateralAmountUsed);

        eventEmitter.emitEventLog1(
            "PositionCollateralUsedForExecutionFee",
            orderKey,
            eventData
        );
    }
}

// ============================================================
// FILE: contracts/order/OrderStoreUtils.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.0;

import "../data/Keys.sol";
import "../data/DataStore.sol";

import "./Order.sol";

/**
 * @title OrderStoreUtils
 * @dev Library for order storage functions
 */
library OrderStoreUtils {
    using Order for Order.Props;

    bytes32 public constant ACCOUNT = keccak256(abi.encode("ACCOUNT"));
    bytes32 public constant RECEIVER = keccak256(abi.encode("RECEIVER"));
    bytes32 public constant CANCELLATION_RECEIVER = keccak256(abi.encode("CANCELLATION_RECEIVER"));
    bytes32 public constant CALLBACK_CONTRACT = keccak256(abi.encode("CALLBACK_CONTRACT"));
    bytes32 public constant UI_FEE_RECEIVER = keccak256(abi.encode("UI_FEE_RECEIVER"));
    bytes32 public constant MARKET = keccak256(abi.encode("MARKET"));
    bytes32 public constant INITIAL_COLLATERAL_TOKEN = keccak256(abi.encode("INITIAL_COLLATERAL_TOKEN"));
    bytes32 public constant SWAP_PATH = keccak256(abi.encode("SWAP_PATH"));

    bytes32 public constant ORDER_TYPE = keccak256(abi.encode("ORDER_TYPE"));
    bytes32 public constant DECREASE_POSITION_SWAP_TYPE = keccak256(abi.encode("DECREASE_POSITION_SWAP_TYPE"));
    bytes32 public constant SIZE_DELTA_USD = keccak256(abi.encode("SIZE_DELTA_USD"));
    bytes32 public constant INITIAL_COLLATERAL_DELTA_AMOUNT = keccak256(abi.encode("INITIAL_COLLATERAL_DELTA_AMOUNT"));
    bytes32 public constant TRIGGER_PRICE = keccak256(abi.encode("TRIGGER_PRICE"));
    bytes32 public constant ACCEPTABLE_PRICE = keccak256(abi.encode("ACCEPTABLE_PRICE"));
    bytes32 public constant EXECUTION_FEE = keccak256(abi.encode("EXECUTION_FEE"));
    bytes32 public constant CALLBACK_GAS_LIMIT = keccak256(abi.encode("CALLBACK_GAS_LIMIT"));
    bytes32 public constant MIN_OUTPUT_AMOUNT = keccak256(abi.encode("MIN_OUTPUT_AMOUNT"));
    bytes32 public constant VALID_FROM_TIME = keccak256(abi.encode("VALID_FROM_TIME"));
    bytes32 public constant UPDATED_AT_TIME = keccak256(abi.encode("UPDATED_AT_TIME"));
    bytes32 public constant SRC_CHAIN_ID = keccak256(abi.encode("SRC_CHAIN_ID"));

    bytes32 public constant IS_LONG = keccak256(abi.encode("IS_LONG"));
    bytes32 public constant SHOULD_UNWRAP_NATIVE_TOKEN = keccak256(abi.encode("SHOULD_UNWRAP_NATIVE_TOKEN"));
    bytes32 public constant IS_FROZEN = keccak256(abi.encode("IS_FROZEN"));
    bytes32 public constant AUTO_CANCEL = keccak256(abi.encode("AUTO_CANCEL"));

    bytes32 public constant DATA_LIST = keccak256(abi.encode("DATA_LIST"));

    function get(DataStore dataStore, bytes32 key) external view returns (Order.Props memory) {
        Order.Props memory order;
        if (!dataStore.containsBytes32(Keys.ORDER_LIST, key)) {
            return order;
        }

        order.setAccount(dataStore.getAddress(
            keccak256(abi.encode(key, ACCOUNT))
        ));

        order.setReceiver(dataStore.getAddress(
            keccak256(abi.encode(key, RECEIVER))
        ));

        order.setCancellationReceiver(dataStore.getAddress(
            keccak256(abi.encode(key, CANCELLATION_RECEIVER))
        ));

        order.setCallbackContract(dataStore.getAddress(
            keccak256(abi.encode(key, CALLBACK_CONTRACT))
        ));

        order.setUiFeeReceiver(dataStore.getAddress(
            keccak256(abi.encode(key, UI_FEE_RECEIVER))
        ));

        order.setMarket(dataStore.getAddress(
            keccak256(abi.encode(key, MARKET))
        ));

        order.setInitialCollateralToken(dataStore.getAddress(
            keccak256(abi.encode(key, INITIAL_COLLATERAL_TOKEN))
        ));

        order.setSwapPath(dataStore.getAddressArray(
            keccak256(abi.encode(key, SWAP_PATH))
        ));

        order.setOrderType(Order.OrderType(dataStore.getUint(
            keccak256(abi.encode(key, ORDER_TYPE))
        )));

        order.setDecreasePositionSwapType(Order.DecreasePositionSwapType(dataStore.getUint(
            keccak256(abi.encode(key, DECREASE_POSITION_SWAP_TYPE))
        )));

        order.setSizeDeltaUsd(dataStore.getUint(
            keccak256(abi.encode(key, SIZE_DELTA_USD))
        ));

        order.setInitialCollateralDeltaAmount(dataStore.getUint(
            keccak256(abi.encode(key, INITIAL_COLLATERAL_DELTA_AMOUNT))
        ));

        order.setTriggerPrice(dataStore.getUint(
            keccak256(abi.encode(key, TRIGGER_PRICE))
        ));

        order.setAcceptablePrice(dataStore.getUint(
            keccak256(abi.encode(key, ACCEPTABLE_PRICE))
        ));

        order.setExecutionFee(dataStore.getUint(
            keccak256(abi.encode(key, EXECUTION_FEE))
        ));

        order.setCallbackGasLimit(dataStore.getUint(
            keccak256(abi.encode(key, CALLBACK_GAS_LIMIT))
        ));

        order.setMinOutputAmount(dataStore.getUint(
            keccak256(abi.encode(key, MIN_OUTPUT_AMOUNT))
        ));

        order.setValidFromTime(dataStore.getUint(
            keccak256(abi.encode(key, VALID_FROM_TIME))
        ));

        order.setUpdatedAtTime(dataStore.getUint(
            keccak256(abi.encode(key, UPDATED_AT_TIME))
        ));

        order.setSrcChainId(dataStore.getUint(
            keccak256(abi.encode(key, SRC_CHAIN_ID))
        ));

        order.setIsLong(dataStore.getBool(
            keccak256(abi.encode(key, IS_LONG))
        ));

        order.setShouldUnwrapNativeToken(dataStore.getBool(
            keccak256(abi.encode(key, SHOULD_UNWRAP_NATIVE_TOKEN))
        ));

        order.setIsFrozen(dataStore.getBool(
            keccak256(abi.encode(key, IS_FROZEN))
        ));

        order.setAutoCancel(dataStore.getBool(
            keccak256(abi.encode(key, AUTO_CANCEL))
        ));

        order.setDataList(dataStore.getBytes32Array(
            keccak256(abi.encode(key, DATA_LIST))
        ));

        return order;
    }

    function set(DataStore dataStore, bytes32 key, Order.Props memory order) external {
        dataStore.addBytes32(
            Keys.ORDER_LIST,
            key
        );

        dataStore.addBytes32(
            Keys.accountOrderListKey(order.account()),
            key
        );

        dataStore.setAddress(
            keccak256(abi.encode(key, ACCOUNT)),
            order.account()
        );

        dataStore.setAddress(
            keccak256(abi.encode(key, RECEIVER)),
            order.receiver()
        );

        dataStore.setAddress(
            keccak256(abi.encode(key, CANCELLATION_RECEIVER)),
            order.cancellationReceiver()
        );

        dataStore.setAddress(
            keccak256(abi.encode(key, CALLBACK_CONTRACT)),
            order.callbackContract()
        );

        dataStore.setAddress(
            keccak256(abi.encode(key, UI_FEE_RECEIVER)),
            order.uiFeeReceiver()
        );

        dataStore.setAddress(
            keccak256(abi.encode(key, MARKET)),
            order.market()
        );

        dataStore.setAddress(
            keccak256(abi.encode(key, INITIAL_COLLATERAL_TOKEN)),
            order.initialCollateralToken()
        );

        dataStore.setAddressArray(
            keccak256(abi.encode(key, SWAP_PATH)),
            order.swapPath()
        );

        dataStore.setUint(
            keccak256(abi.encode(key, ORDER_TYPE)),
            uint256(order.orderType())
        );

        dataStore.setUint(
            keccak256(abi.encode(key, DECREASE_POSITION_SWAP_TYPE)),
            uint256(order.decreasePositionSwapType())
        );

        dataStore.setUint(
            keccak256(abi.encode(key, SIZE_DELTA_USD)),
            order.sizeDeltaUsd()
        );

        dataStore.setUint(
            keccak256(abi.encode(key, INITIAL_COLLATERAL_DELTA_AMOUNT)),
            order.initialCollateralDeltaAmount()
        );

        dataStore.setUint(
            keccak256(abi.encode(key, TRIGGER_PRICE)),
            order.triggerPrice()
        );

        dataStore.setUint(
            keccak256(abi.encode(key, ACCEPTABLE_PRICE)),
            order.acceptablePrice()
        );

        dataStore.setUint(
            keccak256(abi.encode(key, EXECUTION_FEE)),
            order.executionFee()
        );

        dataStore.setUint(
            keccak256(abi.encode(key, CALLBACK_GAS_LIMIT)),
            order.callbackGasLimit()
        );

        dataStore.setUint(
            keccak256(abi.encode(key, MIN_OUTPUT_AMOUNT)),
            order.minOutputAmount()
        );

        dataStore.setUint(
            keccak256(abi.encode(key, VALID_FROM_TIME)),
            order.validFromTime()
        );

        dataStore.setUint(
            keccak256(abi.encode(key, UPDATED_AT_TIME)),
            order.updatedAtTime()
        );

        dataStore.setUint(
            keccak256(abi.encode(key, SRC_CHAIN_ID)),
            order.srcChainId()
        );

        dataStore.setBool(
            keccak256(abi.encode(key, IS_LONG)),
            order.isLong()
        );

        dataStore.setBool(
            keccak256(abi.encode(key, SHOULD_UNWRAP_NATIVE_TOKEN)),
            order.shouldUnwrapNativeToken()
        );

        dataStore.setBool(
            keccak256(abi.encode(key, IS_FROZEN)),
            order.isFrozen()
        );

        dataStore.setBool(
            keccak256(abi.encode(key, AUTO_CANCEL)),
            order.autoCancel()
        );

        dataStore.setBytes32Array(
            keccak256(abi.encode(key, DATA_LIST)),
            order.dataList()
        );
    }

    function remove(DataStore dataStore, bytes32 key, address account) external {
        if (!dataStore.containsBytes32(Keys.ORDER_LIST, key)) {
            revert Errors.OrderNotFound(key);
        }

        dataStore.removeBytes32(
            Keys.ORDER_LIST,
            key
        );

        dataStore.removeBytes32(
            Keys.accountOrderListKey(account),
            key
        );

        dataStore.removeAddress(
            keccak256(abi.encode(key, ACCOUNT))
        );

        dataStore.removeAddress(
            keccak256(abi.encode(key, RECEIVER))
        );

        dataStore.removeAddress(
            keccak256(abi.encode(key, CANCELLATION_RECEIVER))
        );

        dataStore.removeAddress(
            keccak256(abi.encode(key, CALLBACK_CONTRACT))
        );

        dataStore.removeAddress(
            keccak256(abi.encode(key, UI_FEE_RECEIVER))
        );

        dataStore.removeAddress(
            keccak256(abi.encode(key, MARKET))
        );

        dataStore.removeAddress(
            keccak256(abi.encode(key, INITIAL_COLLATERAL_TOKEN))
        );

        dataStore.removeAddressArray(
            keccak256(abi.encode(key, SWAP_PATH))
        );

        dataStore.removeUint(
            keccak256(abi.encode(key, ORDER_TYPE))
        );

        dataStore.removeUint(
            keccak256(abi.encode(key, DECREASE_POSITION_SWAP_TYPE))
        );

        dataStore.removeUint(
            keccak256(abi.encode(key, SIZE_DELTA_USD))
        );

        dataStore.removeUint(
            keccak256(abi.encode(key, INITIAL_COLLATERAL_DELTA_AMOUNT))
        );

        dataStore.removeUint(
            keccak256(abi.encode(key, TRIGGER_PRICE))
        );

        dataStore.removeUint(
            keccak256(abi.encode(key, ACCEPTABLE_PRICE))
        );

        dataStore.removeUint(
            keccak256(abi.encode(key, EXECUTION_FEE))
        );

        dataStore.removeUint(
            keccak256(abi.encode(key, CALLBACK_GAS_LIMIT))
        );

        dataStore.removeUint(
            keccak256(abi.encode(key, MIN_OUTPUT_AMOUNT))
        );

        dataStore.removeUint(
            keccak256(abi.encode(key, VALID_FROM_TIME))
        );

        dataStore.removeUint(
            keccak256(abi.encode(key, UPDATED_AT_TIME))
        );

        dataStore.removeUint(
            keccak256(abi.encode(key, SRC_CHAIN_ID))
        );

        dataStore.removeBool(
            keccak256(abi.encode(key, IS_LONG))
        );

        dataStore.removeBool(
            keccak256(abi.encode(key, SHOULD_UNWRAP_NATIVE_TOKEN))
        );

        dataStore.removeBool(
            keccak256(abi.encode(key, IS_FROZEN))
        );

        dataStore.removeBool(
            keccak256(abi.encode(key, AUTO_CANCEL))
        );

        dataStore.removeBytes32Array(
            keccak256(abi.encode(key, DATA_LIST))
        );
    }

    function getOrderCount(DataStore dataStore) internal view returns (uint256) {
        return dataStore.getBytes32Count(Keys.ORDER_LIST);
    }

    function getOrderKeys(DataStore dataStore, uint256 start, uint256 end) internal view returns (bytes32[] memory) {
        return dataStore.getBytes32ValuesAt(Keys.ORDER_LIST, start, end);
    }

    function getAccountOrderCount(DataStore dataStore, address account) internal view returns (uint256) {
        return dataStore.getBytes32Count(Keys.accountOrderListKey(account));
    }

    function getAccountOrderKeys(DataStore dataStore, address account, uint256 start, uint256 end) internal view returns (bytes32[] memory) {
        return dataStore.getBytes32ValuesAt(Keys.accountOrderListKey(account), start, end);
    }
}

// ============================================================
// FILE: contracts/position/Position.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.0;

// @title Position
// @dev Stuct for positions
//
// borrowing fees for position require only a borrowingFactor to track
// an example on how this works is if the global cumulativeBorrowingFactor is 10020%
// a position would be opened with borrowingFactor as 10020%
// after some time, if the cumulativeBorrowingFactor is updated to 10025% the position would
// owe 5% of the position size as borrowing fees
// the total pending borrowing fees of all positions is factored into the calculation of the pool value for LPs
// when a position is increased or decreased, the pending borrowing fees for the position is deducted from the position's
// collateral and transferred into the LP pool
//
// the same borrowing fee factor tracking cannot be applied for funding fees as those calculations consider pending funding fees
// based on the fiat value of the position sizes
//
// for example, if the price of the longToken is $2000 and a long position owes $200 in funding fees, the opposing short position
// claims the funding fees of 0.1 longToken ($200), if the price of the longToken changes to $4000 later, the long position would
// only owe 0.05 longToken ($200)
// this would result in differences between the amounts deducted and amounts paid out, for this reason, the actual token amounts
// to be deducted and to be paid out need to be tracked instead
//
// for funding fees, there are four values to consider:
// 1. long positions with market.longToken as collateral
// 2. long positions with market.shortToken as collateral
// 3. short positions with market.longToken as collateral
// 4. short positions with market.shortToken as collateral
library Position {
    // @dev there is a limit on the number of fields a struct can have when being passed
    // or returned as a memory variable which can cause "Stack too deep" errors
    // use sub-structs to avoid this issue
    // @param addresses address values
    // @param numbers number values
    // @param flags boolean values
    struct Props {
        Addresses addresses;
        Numbers numbers;
        Flags flags;
    }

    // @param account the position's account
    // @param market the position's market
    // @param collateralToken the position's collateralToken
    struct Addresses {
        address account;
        address market;
        address collateralToken;
    }

    // @param sizeInUsd the position's size in USD
    // @param sizeInTokens the position's size in tokens
    // @param collateralAmount the amount of collateralToken for collateral
    // @param pendingImpactAmount the amount of pending impact for the position
    // @param borrowingFactor the position's borrowing factor
    // @param fundingFeeAmountPerSize the position's funding fee per size
    // @param longTokenClaimableFundingAmountPerSize the position's claimable funding amount per size
    // for the market.longToken
    // @param shortTokenClaimableFundingAmountPerSize the position's claimable funding amount per size
    // for the market.shortToken
    // @param increasedAtTime the time at which this position was increased
    // @param decreasedAtTime the time at which this position was decreased
    struct Numbers {
        uint256 sizeInUsd;
        uint256 sizeInTokens;
        uint256 collateralAmount;
        int256 pendingImpactAmount;
        uint256 borrowingFactor;
        uint256 fundingFeeAmountPerSize;
        uint256 longTokenClaimableFundingAmountPerSize;
        uint256 shortTokenClaimableFundingAmountPerSize;
        uint256 increasedAtTime;
        uint256 decreasedAtTime;
    }

    // @param isLong whether the position is a long or short
    struct Flags {
        bool isLong;
    }

    function account(Props memory props) internal pure returns (address) {
        return props.addresses.account;
    }

    function setAccount(Props memory props, address value) internal pure {
        props.addresses.account = value;
    }

    function market(Props memory props) internal pure returns (address) {
        return props.addresses.market;
    }

    function setMarket(Props memory props, address value) internal pure {
        props.addresses.market = value;
    }

    function collateralToken(Props memory props) internal pure returns (address) {
        return props.addresses.collateralToken;
    }

    function setCollateralToken(Props memory props, address value) internal pure {
        props.addresses.collateralToken = value;
    }

    function sizeInUsd(Props memory props) internal pure returns (uint256) {
        return props.numbers.sizeInUsd;
    }

    function setSizeInUsd(Props memory props, uint256 value) internal pure {
        props.numbers.sizeInUsd = value;
    }

    function sizeInTokens(Props memory props) internal pure returns (uint256) {
        return props.numbers.sizeInTokens;
    }

    function setSizeInTokens(Props memory props, uint256 value) internal pure {
        props.numbers.sizeInTokens = value;
    }

    function collateralAmount(Props memory props) internal pure returns (uint256) {
        return props.numbers.collateralAmount;
    }

    function setCollateralAmount(Props memory props, uint256 value) internal pure {
        props.numbers.collateralAmount = value;
    }

    function pendingImpactAmount(Props memory props) internal pure returns (int256) {
        return props.numbers.pendingImpactAmount;
    }

    function setPendingImpactAmount(Props memory props, int256 value) internal pure {
        props.numbers.pendingImpactAmount = value;
    }

    function borrowingFactor(Props memory props) internal pure returns (uint256) {
        return props.numbers.borrowingFactor;
    }

    function setBorrowingFactor(Props memory props, uint256 value) internal pure {
        props.numbers.borrowingFactor = value;
    }

    function fundingFeeAmountPerSize(Props memory props) internal pure returns (uint256) {
        return props.numbers.fundingFeeAmountPerSize;
    }

    function setFundingFeeAmountPerSize(Props memory props, uint256 value) internal pure {
        props.numbers.fundingFeeAmountPerSize = value;
    }

    function longTokenClaimableFundingAmountPerSize(Props memory props) internal pure returns (uint256) {
        return props.numbers.longTokenClaimableFundingAmountPerSize;
    }

    function setLongTokenClaimableFundingAmountPerSize(Props memory props, uint256 value) internal pure {
        props.numbers.longTokenClaimableFundingAmountPerSize = value;
    }

    function shortTokenClaimableFundingAmountPerSize(Props memory props) internal pure returns (uint256) {
        return props.numbers.shortTokenClaimableFundingAmountPerSize;
    }

    function setShortTokenClaimableFundingAmountPerSize(Props memory props, uint256 value) internal pure {
        props.numbers.shortTokenClaimableFundingAmountPerSize = value;
    }

    function increasedAtTime(Props memory props) internal pure returns (uint256) {
        return props.numbers.increasedAtTime;
    }

    function setIncreasedAtTime(Props memory props, uint256 value) internal pure {
        props.numbers.increasedAtTime = value;
    }

    function decreasedAtTime(Props memory props) internal pure returns (uint256) {
        return props.numbers.decreasedAtTime;
    }

    function setDecreasedAtTime(Props memory props, uint256 value) internal pure {
        props.numbers.decreasedAtTime = value;
    }

    function isLong(Props memory props) internal pure returns (bool) {
        return props.flags.isLong;
    }

    function setIsLong(Props memory props, bool value) internal pure {
        props.flags.isLong = value;
    }

    // @dev get the key for a position
    // @param account the position's account
    // @param market the position's market
    // @param collateralToken the position's collateralToken
    // @param isLong whether the position is long or short
    // @return the position key
    function getPositionKey(address _account, address _market, address _collateralToken, bool _isLong) internal pure returns (bytes32) {
        bytes32 _key = keccak256(abi.encode(_account, _market, _collateralToken, _isLong));

        return _key;
    }
}

// ============================================================
// FILE: contracts/price/Price.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.0;

// @title Price
// @dev Struct for prices
library Price {
    // @param min the min price
    // @param max the max price
    struct Props {
        uint256 min;
        uint256 max;
    }

    // @dev check if a price is empty
    // @param props Props
    // @return whether a price is empty
    function isEmpty(Props memory props) internal pure returns (bool) {
        return props.min == 0 || props.max == 0;
    }

    // @dev get the average of the min and max values
    // @param props Props
    // @return the average of the min and max values
    function midPrice(Props memory props) internal pure returns (uint256) {
        return (props.max + props.min) / 2;
    }

    // @dev pick either the min or max value
    // @param props Props
    // @param maximize whether to pick the min or max value
    // @return either the min or max value
    function pickPrice(Props memory props, bool maximize) internal pure returns (uint256) {
        return maximize ? props.max : props.min;
    }

    // @dev pick the min or max price depending on whether it is for a long or short position
    // and whether the pending pnl should be maximized or not
    // @param props Props
    // @param isLong whether it is for a long or short position
    // @param maximize whether the pnl should be maximized or not
    // @return the min or max price
    function pickPriceForPnl(Props memory props, bool isLong, bool maximize) internal pure returns (uint256) {
        // for long positions, pick the larger price to maximize pnl
        // for short positions, pick the smaller price to maximize pnl
        if (isLong) {
            return maximize ? props.max : props.min;
        }

        return maximize ? props.min : props.max;
    }
}

// ============================================================
// FILE: contracts/pricing/ISwapPricingUtils.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

interface ISwapPricingUtils {
    enum SwapPricingType {
        Swap,
        Shift,
        AtomicWithdrawal,
        Deposit,
        Withdrawal,
        AtomicSwap
    }
}

// ============================================================
// FILE: contracts/referral/IReferralStorage.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.0;

// @title IReferralStorage
// @dev Interface for ReferralStorage
interface IReferralStorage {
    // @dev get the owner of a referral code
    // @param _code the referral code
    // @return the owner of the referral code
    function codeOwners(bytes32 _code) external view returns (address);
    // @dev get the referral code of a trader
    // @param _account the address of the trader
    // @return the referral code
    function traderReferralCodes(address _account) external view returns (bytes32);
    // @dev get the trader discount share for an affiliate
    // @param _account the address of the affiliate
    // @return the trader discount share
    function referrerDiscountShares(address _account) external view returns (uint256);
    // @dev get the tier level of an affiliate
    // @param _account the address of the affiliate
    // @return the tier level of the affiliate
    function referrerTiers(address _account) external view returns (uint256);
    // @dev get the referral info for a trader
    // @param _account the address of the trader
    // @return (referral code, affiliate)
    function getTraderReferralInfo(address _account) external view returns (bytes32, address);
    // @dev set the referral code for a trader
    // @param _account the address of the trader
    // @param _code the referral code
    function setTraderReferralCode(address _account, bytes32 _code) external;
    // @dev register a referral code
    // @param _code the referral code to register
    function registerCode(bytes32 _code) external;
    // @dev set the values for a tier
    // @param _tierId the tier level
    // @param _totalRebate the total rebate for the tier (affiliate reward + trader discount)
    // @param _discountShare the share of the totalRebate for traders
    function setTier(uint256 _tierId, uint256 _totalRebate, uint256 _discountShare) external;
    // @dev set the tier for an affiliate
    // @param _tierId the tier level
    function setReferrerTier(address _referrer, uint256 _tierId) external;
    // @dev set the owner for a referral code
    // @param _code the referral code
    // @param _newAccount the new owner
    function govSetCodeOwner(bytes32 _code, address _newAccount) external;

    // @dev get the tier values for a tier level
    // @param _tierLevel the tier level
    // @return (totalRebate, discountShare)
    function tiers(uint256 _tierLevel) external view returns (uint256, uint256);
}

// ============================================================
// FILE: contracts/referral/ReferralEventUtils.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.0;

import "../event/EventEmitter.sol";
import "../event/EventUtils.sol";
import "../utils/Cast.sol";

library ReferralEventUtils {
    using EventUtils for EventUtils.AddressItems;
    using EventUtils for EventUtils.UintItems;
    using EventUtils for EventUtils.IntItems;
    using EventUtils for EventUtils.BoolItems;
    using EventUtils for EventUtils.Bytes32Items;
    using EventUtils for EventUtils.BytesItems;
    using EventUtils for EventUtils.StringItems;

    function emitAffiliateRewardUpdated(
        EventEmitter eventEmitter,
        address market,
        address token,
        address affiliate,
        uint256 delta,
        uint256 nextValue,
        uint256 nextPoolValue
    ) external {
        EventUtils.EventLogData memory eventData;

        eventData.addressItems.initItems(3);
        eventData.addressItems.setItem(0, "market", market);
        eventData.addressItems.setItem(1, "token", token);
        eventData.addressItems.setItem(2, "affiliate", affiliate);

        eventData.uintItems.initItems(3);
        eventData.uintItems.setItem(0, "delta", delta);
        eventData.uintItems.setItem(1, "nextValue", nextValue);
        eventData.uintItems.setItem(2, "nextPoolValue", nextPoolValue);

        eventEmitter.emitEventLog2(
            "AffiliateRewardUpdated",
            Cast.toBytes32(market),
            Cast.toBytes32(affiliate),
            eventData
        );
    }

    function emitAffiliateRewardClaimed(
        EventEmitter eventEmitter,
        address market,
        address token,
        address affiliate,
        address receiver,
        uint256 amount,
        uint256 nextPoolValue
    ) external {
        EventUtils.EventLogData memory eventData;

        eventData.addressItems.initItems(4);
        eventData.addressItems.setItem(0, "market", market);
        eventData.addressItems.setItem(1, "token", token);
        eventData.addressItems.setItem(2, "affiliate", affiliate);
        eventData.addressItems.setItem(3, "receiver", receiver);

        eventData.uintItems.initItems(2);
        eventData.uintItems.setItem(0, "amount", amount);
        eventData.uintItems.setItem(1, "nextPoolValue", nextPoolValue);

        eventEmitter.emitEventLog1(
            "AffiliateRewardClaimed",
            Cast.toBytes32(affiliate),
            eventData
        );
    }
}

// ============================================================
// FILE: contracts/referral/ReferralUtils.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.0;

import "../data/DataStore.sol";
import "../data/Keys.sol";

import "../event/EventEmitter.sol";
import "../market/MarketToken.sol";
import "../market/MarketUtils.sol";

import "./IReferralStorage.sol";
import "./ReferralEventUtils.sol";

import "../utils/Precision.sol";

// @title ReferralUtils
// @dev Library for referral functions
library ReferralUtils {
    // @dev set the referral code for a trader
    // @param referralStorage The referral storage instance to use.
    // @param account The account of the trader.
    // @param referralCode The referral code.
    function setTraderReferralCode(
        IReferralStorage referralStorage,
        address account,
        bytes32 referralCode
    ) internal {
        if (referralCode == bytes32(0)) { return; }
        if (address(referralStorage) == address(0)) { return; }

        // skip setting of the referral code if the user already has a referral code
        if (referralStorage.traderReferralCodes(account) != bytes32(0)) { return; }

        referralStorage.setTraderReferralCode(account, referralCode);
    }

    // @dev Increments the affiliate's reward balance by the specified delta.
    // @param dataStore The data store instance to use.
    // @param eventEmitter The event emitter instance to use.
    // @param market The market address.
    // @param token The token address.
    // @param affiliate The affiliate's address.
    // @param trader The trader's address.
    // @param delta The amount to increment the reward balance by.
    function incrementAffiliateReward(
        DataStore dataStore,
        EventEmitter eventEmitter,
        address market,
        address token,
        address affiliate,
        uint256 delta
    ) internal {
        if (delta == 0) { return; }

        uint256 nextValue = dataStore.incrementUint(Keys.affiliateRewardKey(market, token, affiliate), delta);
        uint256 nextPoolValue = dataStore.incrementUint(Keys.affiliateRewardKey(market, token), delta);

        ReferralEventUtils.emitAffiliateRewardUpdated(
            eventEmitter,
            market,
            token,
            affiliate,
            delta,
            nextValue,
            nextPoolValue
        );
    }

    // @dev Gets the referral information for the specified trader.
    // @param referralStorage The referral storage instance to use.
    // @param trader The trader's address.
    // @return The affiliate's address, the total rebate, and the discount share.
    function getReferralInfo(
        DataStore dataStore,
        IReferralStorage referralStorage,
        address trader
    ) internal view returns (bytes32, address, uint256, uint256, uint256) {
        if (address(referralStorage) == address(0)) {
            return (bytes32(0), address(0), 0, 0, 0);
        }

        bytes32 code = referralStorage.traderReferralCodes(trader);
        address affiliate;
        uint256 totalRebate;
        uint256 discountShare;
        uint256 minAffiliateRewardFactor;

        if (code != bytes32(0)) {
            affiliate = referralStorage.codeOwners(code);
            uint256 referralTierLevel = referralStorage.referrerTiers(affiliate);
            (totalRebate, discountShare) = referralStorage.tiers(referralTierLevel);
            minAffiliateRewardFactor = dataStore.getUint(Keys.minAffiliateRewardFactorKey(referralTierLevel));

            uint256 customDiscountShare = referralStorage.referrerDiscountShares(affiliate);
            if (customDiscountShare != 0) {
                discountShare = customDiscountShare;
            }
        }

        uint256 traderDiscountFactor = Precision.basisPointsToFloat(totalRebate * discountShare / Precision.BASIS_POINTS_DIVISOR);
        uint256 totalRebateFactor = Precision.basisPointsToFloat(totalRebate);
        uint256 affiliateRewardFactor = totalRebateFactor - traderDiscountFactor;

        return (
            code,
            affiliate,
            affiliateRewardFactor,
            traderDiscountFactor,
            minAffiliateRewardFactor
        );
    }

    // @dev Claims affiliate rewards for the given markets and tokens and sends the rewards to the specified receiver.
    // @param dataStore The data store instance to use.
    // @param eventEmitter The event emitter instance to use.
    // @param markets An array of market addresses
    // @param tokens An array of token addresses, corresponding to the given markets
    // @param receiver The address to which the claimed rewards should be sent
    // @param account The affiliate's address.
    function batchClaimAffiliateRewards(
        DataStore dataStore,
        EventEmitter eventEmitter,
        address[] memory markets,
        address[] memory tokens,
        address receiver,
        address account
    ) external returns (uint256[] memory) {
        if (markets.length != tokens.length) {
            revert Errors.InvalidClaimAffiliateRewardsInput(markets.length, tokens.length);
        }

        FeatureUtils.validateFeature(dataStore, Keys.claimAffiliateRewardsFeatureDisabledKey(address(this)));

        AccountUtils.validateReceiver(receiver);

        uint256[] memory claimedAmounts = new uint256[](markets.length);

        for (uint256 i; i < markets.length; i++) {
            claimedAmounts[i] = _claimAffiliateReward(
                dataStore,
                eventEmitter,
                markets[i],
                tokens[i],
                account,
                receiver
            );
        }

        return claimedAmounts;
    }

    function _claimAffiliateReward(
        DataStore dataStore,
        EventEmitter eventEmitter,
        address market,
        address token,
        address account,
        address receiver
    ) private returns (uint256) {
        bytes32 key = Keys.affiliateRewardKey(market, token, account);

        uint256 rewardAmount = dataStore.getUint(key);
        dataStore.setUint(key, 0);

        uint256 nextPoolValue = dataStore.decrementUint(Keys.affiliateRewardKey(market, token), rewardAmount);

        MarketToken(payable(market)).transferOut(
            token,
            receiver,
            rewardAmount
        );

        MarketUtils.validateMarketTokenBalance(dataStore, market);

        ReferralEventUtils.emitAffiliateRewardClaimed(
            eventEmitter,
            market,
            token,
            account,
            receiver,
            rewardAmount,
            nextPoolValue
        );

        return rewardAmount;
    }
}

// ============================================================
// FILE: contracts/role/Role.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.0;

/**
 * @title Role
 * @dev Library for role keys
 */
library Role {
    /**
     * @dev The ROLE_ADMIN role.
     * Hash: 0x56908b85b56869d7c69cd020749874f238259af9646ca930287866cdd660b7d9
     */
    bytes32 public constant ROLE_ADMIN = keccak256(abi.encode("ROLE_ADMIN"));

    /**
     * @dev The TIMELOCK_ADMIN role.
     * Hash: 0xf49b0c86b385620e25b0985905d1a112a5f1bc1d51a7a292a8cdf112b3a7c47c
     */
    bytes32 public constant TIMELOCK_ADMIN = keccak256(abi.encode("TIMELOCK_ADMIN"));

    /**
     * @dev The TIMELOCK_MULTISIG role.
     * Hash: 0xe068a8d811c3c8290a8be34607cfa3184b26ffb8dea4dde7a451adfba9fa173a
     */
    bytes32 public constant TIMELOCK_MULTISIG = keccak256(abi.encode("TIMELOCK_MULTISIG"));

    /**
     * @dev The CONFIG_KEEPER role.
     * Hash: 0x901fb3de937a1dcb6ecaf26886fda47a088e74f36232a0673eade97079dc225b
     */
    bytes32 public constant CONFIG_KEEPER = keccak256(abi.encode("CONFIG_KEEPER"));

    /**
     * @dev The LIMITED_CONFIG_KEEPER role.
     * Hash: 0xb49beded4d572a2d32002662fc5c735817329f4337b3a488aab0b5e835c01ba7
     */
    bytes32 public constant LIMITED_CONFIG_KEEPER = keccak256(abi.encode("LIMITED_CONFIG_KEEPER"));

    /**
     * @dev The CONTROLLER role.
     * Hash: 0x97adf037b2472f4a6a9825eff7d2dd45e37f2dc308df2a260d6a72af4189a65b
     */
    bytes32 public constant CONTROLLER = keccak256(abi.encode("CONTROLLER"));

    /**
     * @dev The GOV_TOKEN_CONTROLLER role.
     * Hash: 0x16a157db08319d4eaf6b157a71f5d2e18c6500cab8a25bee0b4f9c753cb13690
     */
    bytes32 public constant GOV_TOKEN_CONTROLLER = keccak256(abi.encode("GOV_TOKEN_CONTROLLER"));

    /**
     * @dev The ROUTER_PLUGIN role.
     * Hash: 0xc82e6cc76072f8edb32d42796e58e13ab6e145524eb6b36c073be82f20d410f3
     */
    bytes32 public constant ROUTER_PLUGIN = keccak256(abi.encode("ROUTER_PLUGIN"));

    /**
     * @dev The MARKET_KEEPER role.
     * Hash: 0xd66692c70b60cf1337e643d6a6473f6865d8c03f3c26b460df3d19b504fb46ae
     */
    bytes32 public constant MARKET_KEEPER = keccak256(abi.encode("MARKET_KEEPER"));

    /**
     * @dev The FEE_KEEPER role.
     * Hash: 0xe0ff4cc0c6ecffab6db3f63ea62dd53f8091919ac57669f1bb3d9828278081d8
     */
    bytes32 public constant FEE_KEEPER = keccak256(abi.encode("FEE_KEEPER"));

    /**
     * @dev The FEE_DISTRIBUTION_KEEPER role.
     * Hash: 0xc23a98a1bf683201c11eeeb8344052ad3bc603c8ddcad06093edc1e8dafa96a2
     */
    bytes32 public constant FEE_DISTRIBUTION_KEEPER = keccak256(abi.encode("FEE_DISTRIBUTION_KEEPER"));

    /**
     * @dev The ORDER_KEEPER role.
     * Hash: 0x40a07f8f0fc57fcf18b093d96362a8e661eaac7b7e6edbf66f242111f83a6794
     */
    bytes32 public constant ORDER_KEEPER = keccak256(abi.encode("ORDER_KEEPER"));

    /**
     * @dev The FROZEN_ORDER_KEEPER role.
     * Hash: 0xcb6c7bc0d25d73c91008af44527b80c56dee4db8965845d926a25659a4a8bc07
     */
    bytes32 public constant FROZEN_ORDER_KEEPER = keccak256(abi.encode("FROZEN_ORDER_KEEPER"));

    /**
     * @dev The PRICING_KEEPER role.
     * Hash: 0x2700e36dc4e6a0daa977bffd4368adbd48f8058da74152919f91f58eddb42103
     */
    bytes32 public constant PRICING_KEEPER = keccak256(abi.encode("PRICING_KEEPER"));
    /**
     * @dev The LIQUIDATION_KEEPER role.
     * Hash: 0x556c788ffc0574ec93966d808c170833d96489c9c58f5bcb3dadf711ba28720e
     */
    bytes32 public constant LIQUIDATION_KEEPER = keccak256(abi.encode("LIQUIDATION_KEEPER"));
    /**
     * @dev The ADL_KEEPER role.
     * Hash: 0xb37d64edaeaf5e634c13682dbd813f5a12fec9eb4f74433a089e7a3c3289af91
     */
    bytes32 public constant ADL_KEEPER = keccak256(abi.encode("ADL_KEEPER"));
    /**
     * @dev The CONTRIBUTOR_KEEPER role.
     * Hash: 0xfa89e7b5ea0a346d73c71d7d6a3512b9f2ea2c2e6c5fb8211ec351d35deef0f4
     */
    bytes32 public constant CONTRIBUTOR_KEEPER = keccak256(abi.encode("CONTRIBUTOR_KEEPER"));
    /**
     * @dev The CONTRIBUTOR_DISTRIBUTOR role.
     * Hash: 0xcdf6da7ad30d8b9afea66fb1cb11b1b7d0b50e9b30b69561a3ca52c39251360c
     */
    bytes32 public constant CONTRIBUTOR_DISTRIBUTOR = keccak256(abi.encode("CONTRIBUTOR_DISTRIBUTOR"));

    /**
     * @dev The CLAIM_ADMIN role.
     * Hash: 0x3816efacf145d41a12de1ee8ae9dc340b887f4ca0f3bba62a645b2fefa4cab33
     */
    bytes32 public constant CLAIM_ADMIN = keccak256(abi.encode("CLAIM_ADMIN"));
    /**
     * @dev The MULTICHAIN_READER role.
     * Hash: 0xdb34a94d601aa170c498f99c1628bd6182669f4ea4522eb87795649193ee93f8
     */
    bytes32 public constant MULTICHAIN_READER = keccak256(abi.encode("MULTICHAIN_READER"));
}

// ============================================================
// FILE: contracts/role/RoleModule.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.0;

import "./RoleStore.sol";

/**
 * @title RoleModule
 * @dev Contract for role validation functions
 */
contract RoleModule {
    RoleStore public immutable roleStore;

    /**
     * @dev Constructor that initializes the role store for this contract.
     *
     * @param _roleStore The contract instance to use as the role store.
     */
    constructor(RoleStore _roleStore) {
        roleStore = _roleStore;
    }

    modifier onlySelfOrController() {
        if (msg.sender != address(this) && !roleStore.hasRole(msg.sender, Role.CONTROLLER)) {
            revert Errors.Unauthorized(msg.sender, "SELF_OR_CONTROLLER");
        }
        _;
    }

    /**
     * @dev Only allows the contract's own address to call the function.
     */
    modifier onlySelf() {
        if (msg.sender != address(this)) {
            revert Errors.Unauthorized(msg.sender, "SELF");
        }
        _;
    }

    /**
     * @dev Only allows addresses with the TIMELOCK_MULTISIG role to call the function.
     */
    modifier onlyTimelockMultisig() {
        _validateRole(Role.TIMELOCK_MULTISIG, "TIMELOCK_MULTISIG");
        _;
    }

    /**
     * @dev Only allows addresses with the TIMELOCK_ADMIN role to call the function.
     */
    modifier onlyTimelockAdmin() {
        _validateRole(Role.TIMELOCK_ADMIN, "TIMELOCK_ADMIN");
        _;
    }

    /**
     * @dev Only allows addresses with the CONFIG_KEEPER role to call the function.
     */
    modifier onlyConfigKeeper() {
        _validateRole(Role.CONFIG_KEEPER, "CONFIG_KEEPER");
        _;
    }

    /**
     * @dev Only allows addresses with the LIMITED_CONFIG_KEEPER role to call the function.
     */
    modifier onlyLimitedConfigKeeper() {
        _validateRole(Role.LIMITED_CONFIG_KEEPER, "LIMITED_CONFIG_KEEPER");
        _;
    }

    /**
     * @dev Only allows addresses with the CONTROLLER role to call the function.
     */
    modifier onlyController() {
        _validateRole(Role.CONTROLLER, "CONTROLLER");
        _;
    }

    /**
     * @dev Only allows addresses with the GOV_TOKEN_CONTROLLER role to call the function.
     */
    modifier onlyGovTokenController() {
        _validateRole(Role.GOV_TOKEN_CONTROLLER, "GOV_TOKEN_CONTROLLER");
        _;
    }

    /**
     * @dev Only allows addresses with the ROUTER_PLUGIN role to call the function.
     */
    modifier onlyRouterPlugin() {
        _validateRole(Role.ROUTER_PLUGIN, "ROUTER_PLUGIN");
        _;
    }

    /**
     * @dev Only allows addresses with the MARKET_KEEPER role to call the function.
     */
    modifier onlyMarketKeeper() {
        _validateRole(Role.MARKET_KEEPER, "MARKET_KEEPER");
        _;
    }

    /**
     * @dev Only allows addresses with the FEE_KEEPER role to call the function.
     */
    modifier onlyFeeKeeper() {
        _validateRole(Role.FEE_KEEPER, "FEE_KEEPER");
        _;
    }

    /**
     * @dev Only allows addresses with the FEE_DISTRIBUTION_KEEPER role to call the function.
     */
    modifier onlyFeeDistributionKeeper() {
        _validateRole(Role.FEE_DISTRIBUTION_KEEPER, "FEE_DISTRIBUTION_KEEPER");
        _;
    }

    /**
     * @dev Only allows addresses with the ORDER_KEEPER role to call the function.
     */
    modifier onlyOrderKeeper() {
        _validateRole(Role.ORDER_KEEPER, "ORDER_KEEPER");
        _;
    }

    /**
     * @dev Only allows addresses with the PRICING_KEEPER role to call the function.
     */
    modifier onlyPricingKeeper() {
        _validateRole(Role.PRICING_KEEPER, "PRICING_KEEPER");
        _;
    }

    /**
     * @dev Only allows addresses with the LIQUIDATION_KEEPER role to call the function.
     */
    modifier onlyLiquidationKeeper() {
        _validateRole(Role.LIQUIDATION_KEEPER, "LIQUIDATION_KEEPER");
        _;
    }

    /**
     * @dev Only allows addresses with the ADL_KEEPER role to call the function.
     */
    modifier onlyAdlKeeper() {
        _validateRole(Role.ADL_KEEPER, "ADL_KEEPER");
        _;
    }

    /**
     * @dev Only allows addresses with the CONTRIBUTOR_KEEPER role to call the function.
     */
    modifier onlyContributorKeeper() {
        _validateRole(Role.CONTRIBUTOR_KEEPER, "CONTRIBUTOR_KEEPER");
        _;
    }

    /**
     * @dev Only allows addresses with the CONTRIBUTOR_DISTRIBUTOR role to call the function.
     */
    modifier onlyContributorDistributor() {
        _validateRole(Role.CONTRIBUTOR_DISTRIBUTOR, "CONTRIBUTOR_DISTRIBUTOR");
        _;
    }

    /**
     * @dev Only allows addresses with the CLAIM_ADMIN role to call the function.
     */
    modifier onlyClaimAdmin() {
        _validateRole(Role.CLAIM_ADMIN, "CLAIM_ADMIN");
        _;
    }

    /**
     * @dev Only allows addresses with the MULTICHAIN_READER role to call the function.
     */
    modifier onlyMultichainReader() {
        _validateRole(Role.MULTICHAIN_READER, "MULTICHAIN_READER");
        _;
    }

    /**
     * @dev Validates that the caller has the specified role.
     *
     * If the caller does not have the specified role, the transaction is reverted.
     *
     * @param role The key of the role to validate.
     * @param roleName The name of the role to validate.
     */
    function _validateRole(bytes32 role, string memory roleName) internal view {
        if (!roleStore.hasRole(msg.sender, role)) {
            revert Errors.Unauthorized(msg.sender, roleName);
        }
    }
}

// ============================================================
// FILE: contracts/role/RoleStore.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";
import "../utils/EnumerableValues.sol";
import "./Role.sol";
import "../error/Errors.sol";

/**
 * @title RoleStore
 * @dev Stores roles and their members.
 */
contract RoleStore {
    using EnumerableSet for EnumerableSet.AddressSet;
    using EnumerableSet for EnumerableSet.Bytes32Set;
    using EnumerableValues for EnumerableSet.AddressSet;
    using EnumerableValues for EnumerableSet.Bytes32Set;

    EnumerableSet.Bytes32Set internal roles;
    mapping(bytes32 => EnumerableSet.AddressSet) internal roleMembers;
    // checking if an account has a role is a frequently used function
    // roleCache helps to save gas by offering a more efficient lookup
    // vs calling roleMembers[key].contains(account)
    mapping(address => mapping (bytes32 => bool)) roleCache;

    modifier onlyRoleAdmin() {
        if (!hasRole(msg.sender, Role.ROLE_ADMIN)) {
            revert Errors.Unauthorized(msg.sender, "ROLE_ADMIN");
        }
        _;
    }

    constructor() {
        _grantRole(msg.sender, Role.ROLE_ADMIN);
    }

    /**
     * @dev Grants the specified role to the given account.
     *
     * @param account The address of the account.
     * @param roleKey The key of the role to grant.
     */
    function grantRole(address account, bytes32 roleKey) external onlyRoleAdmin {
        _grantRole(account, roleKey);
    }

    /**
     * @dev Revokes the specified role from the given account.
     *
     * @param account The address of the account.
     * @param roleKey The key of the role to revoke.
     */
    function revokeRole(address account, bytes32 roleKey) external onlyRoleAdmin {
        _revokeRole(account, roleKey);
    }

    /**
     * @dev Returns true if the given account has the specified role.
     *
     * @param account The address of the account.
     * @param roleKey The key of the role.
     * @return True if the account has the role, false otherwise.
     */
    function hasRole(address account, bytes32 roleKey) public view returns (bool) {
        return roleCache[account][roleKey];
    }

    /**
     * @dev Returns the number of roles stored in the contract.
     *
     * @return The number of roles.
     */
    function getRoleCount() external view returns (uint256) {
        return roles.length();
    }

    /**
     * @dev Returns the keys of the roles stored in the contract.
     *
     * @param start The starting index of the range of roles to return.
     * @param end The ending index of the range of roles to return.
     * @return The keys of the roles.
     */
    function getRoles(uint256 start, uint256 end) external view returns (bytes32[] memory) {
        return roles.valuesAt(start, end);
    }

    /**
     * @dev Returns the number of members of the specified role.
     *
     * @param roleKey The key of the role.
     * @return The number of members of the role.
     */
    function getRoleMemberCount(bytes32 roleKey) external view returns (uint256) {
        return roleMembers[roleKey].length();
    }

    /**
     * @dev Returns the members of the specified role.
     *
     * @param roleKey The key of the role.
     * @param start the start index, the value for this index will be included.
     * @param end the end index, the value for this index will not be included.
     * @return The members of the role.
     */
    function getRoleMembers(bytes32 roleKey, uint256 start, uint256 end) external view returns (address[] memory) {
        return roleMembers[roleKey].valuesAt(start, end);
    }

    function _grantRole(address account, bytes32 roleKey) internal {
        roles.add(roleKey);
        roleMembers[roleKey].add(account);
        roleCache[account][roleKey] = true;
    }

    function _revokeRole(address account, bytes32 roleKey) internal {
        roleMembers[roleKey].remove(account);
        roleCache[account][roleKey] = false;

        if (roleMembers[roleKey].length() == 0) {
            if (roleKey == Role.ROLE_ADMIN) {
                revert Errors.ThereMustBeAtLeastOneRoleAdmin();
            }
            if (roleKey == Role.TIMELOCK_MULTISIG) {
                revert Errors.ThereMustBeAtLeastOneTimelockMultiSig();
            }
        }
    }
}

// ============================================================
// FILE: contracts/router/BaseRouter.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";

import "../utils/PayableMulticall.sol";
import "../utils/AccountUtils.sol";

import "../data/DataStore.sol";
import "../event/EventEmitter.sol";
import "../token/TokenUtils.sol";

import "./Router.sol";

contract BaseRouter is ReentrancyGuard, PayableMulticall, RoleModule {
    using SafeERC20 for IERC20;

    Router public immutable router;
    DataStore public immutable dataStore;
    EventEmitter public immutable eventEmitter;

    constructor(
        Router _router,
        RoleStore _roleStore,
        DataStore _dataStore,
        EventEmitter _eventEmitter
    ) RoleModule(_roleStore) {
        router = _router;
        dataStore = _dataStore;
        eventEmitter = _eventEmitter;
    }

    // @dev Wraps the specified amount of native tokens into WNT then sends the WNT to the specified address
    function sendWnt(address receiver, uint256 amount) external payable nonReentrant {
        AccountUtils.validateReceiver(receiver);
        TokenUtils.depositAndSendWrappedNativeToken(dataStore, receiver, amount);
    }

    // @dev Sends the given amount of tokens to the given address
    function sendTokens(address token, address receiver, uint256 amount) external payable nonReentrant {
        AccountUtils.validateReceiver(receiver);
        address account = msg.sender;
        router.pluginTransfer(token, account, receiver, amount);
    }

    function sendNativeToken(address receiver, uint256 amount) external payable nonReentrant {
        AccountUtils.validateReceiver(receiver);
        TokenUtils.sendNativeToken(dataStore, receiver, amount);
    }
}

// ============================================================
// FILE: contracts/router/ExchangeRouter.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.0;

import "../exchange/IDepositHandler.sol";
import "../exchange/IWithdrawalHandler.sol";
import "../exchange/IShiftHandler.sol";
import "../exchange/IOrderHandler.sol";
import "../external/IExternalHandler.sol";
import "../exchange/IJitOrderHandler.sol";

import "../deposit/DepositStoreUtils.sol";
import "../withdrawal/WithdrawalStoreUtils.sol";
import "../shift/IShiftUtils.sol";
import "../shift/ShiftStoreUtils.sol";
import "../order/OrderStoreUtils.sol";

import "../callback/CallbackUtils.sol";
import "../fee/FeeUtils.sol";
import "../nonce/NonceUtils.sol";
import "../referral/ReferralUtils.sol";

import "./BaseRouter.sol";
import "./IExchangeRouter.sol";
import "../glv/glvShift/GlvShiftUtils.sol";

/**
 * @title ExchangeRouter
 * @dev Router for exchange functions, supports functions which require
 * token transfers from the user
 *
 * IMPORTANT: PayableMulticall uses delegatecall, msg.value will be the same for each delegatecall
 * extra care should be taken when using msg.value in any of the functions in this contract
 *
 * To avoid front-running issues, most actions require two steps to execute:
 *
 * - User sends transaction with request details, e.g. deposit / withdraw liquidity,
 * swap, increase / decrease position
 * - Keepers listen for the transactions, include the prices for the request then
 * send a transaction to execute the request
 *
 * Prices are provided by an off-chain oracle system:
 *
 * - Oracle keepers continually check the latest blocks
 * - When there is a new block, oracle keepers fetch the latest prices from
 * reference exchanges
 * - Oracle keepers then sign the median price for each token together with
 * the block hash
 * - Oracle keepers then send the data and signature to archive nodes
 * - Archive nodes display this information for anyone to query
 *
 * Example:
 *
 * - Block 100 is finalized on the blockchain
 * - Oracle keepers observe this block
 * - Oracle keepers pull the latest prices from reference exchanges,
 * token A: price 20,000, token B: price 80,000
 * - Oracle keepers sign [chainId, blockhash(100), 20,000], [chainId, blockhash(100), 80,000]
 * - If in block 100, there was a market order to open a long position for token A,
 * the market order would have a block number of 100
 * - The prices signed at block 100 can be used to execute this order
 * - Order keepers would bundle the signature and price data for token A
 * then execute the order
 */
contract ExchangeRouter is IExchangeRouter, BaseRouter {
    using Deposit for Deposit.Props;
    using Withdrawal for Withdrawal.Props;
    using Order for Order.Props;
    using Shift for Shift.Props;

    IDepositHandler public immutable depositHandler;
    IWithdrawalHandler public immutable withdrawalHandler;
    IShiftHandler public immutable shiftHandler;
    IOrderHandler public immutable orderHandler;
    IExternalHandler public immutable externalHandler;
    IJitOrderHandler public immutable jitOrderHandler;

    // @dev Constructor that initializes the contract with the provided Router, RoleStore, DataStore,
    // EventEmitter, IDepositHandler, IWithdrawalHandler, IOrderHandler, and OrderStore instances
    constructor(
        Router _router,
        RoleStore _roleStore,
        DataStore _dataStore,
        EventEmitter _eventEmitter,
        IDepositHandler _depositHandler,
        IWithdrawalHandler _withdrawalHandler,
        IShiftHandler _shiftHandler,
        IOrderHandler _orderHandler,
        IExternalHandler _externalHandler,
        IJitOrderHandler _jitOrderHandler
    ) BaseRouter(_router, _roleStore, _dataStore, _eventEmitter) {
        depositHandler = _depositHandler;
        withdrawalHandler = _withdrawalHandler;
        shiftHandler = _shiftHandler;
        orderHandler = _orderHandler;
        externalHandler = _externalHandler;
        jitOrderHandler = _jitOrderHandler;
    }

    // makeExternalCalls can be used to perform an external swap before
    // an action
    // example:
    // - ExchangeRouter.sendTokens(token: WETH, receiver: externalHandler, amount: 1e18)
    // - ExchangeRouter.makeExternalCalls(
    //     WETH.approve(spender: aggregator, amount: 1e18),
    //     aggregator.swap(amount: 1, from: WETH, to: USDC, receiver: orderHandler)
    // )
    // - ExchangeRouter.createOrder
    // the msg.sender for makeExternalCalls would be externalHandler
    // refundTokens can be used to retrieve any excess tokens that may
    // be left in the externalHandler
    function makeExternalCalls(
        address[] memory externalCallTargets,
        bytes[] memory externalCallDataList,
        address[] memory refundTokens,
        address[] memory refundReceivers
    ) external payable nonReentrant {
        externalHandler.makeExternalCalls(
            externalCallTargets,
            externalCallDataList,
            refundTokens,
            refundReceivers
        );
    }

    /**
     * @dev Creates a new deposit with the given long token, short token, long token amount, short token
     * amount, and deposit parameters. The deposit is created by transferring the specified amounts of
     * long and short tokens from the caller's account to the deposit store, and then calling the
     * `createDeposit()` function on the deposit handler contract.
     *
     * @param params The deposit parameters, as specified in the `IDepositUtils.CreateDepositParams` struct
     * @return The unique ID of the newly created deposit
     */
    function createDeposit(
        IDepositUtils.CreateDepositParams calldata params
    ) external override payable nonReentrant returns (bytes32) {
        address account = msg.sender;

        return depositHandler.createDeposit(
            account,
            0, // srcChainId is the current block.chainId
            params
        );
    }

    function cancelDeposit(bytes32 key) external override payable nonReentrant {
        Deposit.Props memory deposit = DepositStoreUtils.get(dataStore, key);
        if (deposit.account() == address(0)) {
            revert Errors.EmptyDeposit();
        }

        if (deposit.account() != msg.sender) {
            revert Errors.Unauthorized(msg.sender, "account for cancelDeposit");
        }

        depositHandler.cancelDeposit(key);
    }

    function simulateExecuteLatestDeposit(
        OracleUtils.SimulatePricesParams memory simulatedOracleParams
    ) external payable nonReentrant {
        bytes32 key = NonceUtils.getCurrentKey(dataStore);
        depositHandler.simulateExecuteDeposit(key, simulatedOracleParams);
    }

    function createWithdrawal(
        IWithdrawalUtils.CreateWithdrawalParams calldata params
    ) external override payable nonReentrant returns (bytes32) {
        address account = msg.sender;

        return withdrawalHandler.createWithdrawal(
            account,
            0, // srcChainId is the current block.chainId
            params
        );
    }

    function cancelWithdrawal(bytes32 key) external override payable nonReentrant {
        Withdrawal.Props memory withdrawal = WithdrawalStoreUtils.get(dataStore, key);
        if (withdrawal.account() != msg.sender) {
            revert Errors.Unauthorized(msg.sender, "account for cancelWithdrawal");
        }

        withdrawalHandler.cancelWithdrawal(key);
    }

    function executeAtomicWithdrawal(
        IWithdrawalUtils.CreateWithdrawalParams calldata params,
        OracleUtils.SetPricesParams calldata oracleParams
    ) external override payable nonReentrant {
        address account = msg.sender;

        return withdrawalHandler.executeAtomicWithdrawal(
            account,
            params,
            oracleParams
        );
    }

    function simulateExecuteLatestWithdrawal(
        OracleUtils.SimulatePricesParams memory simulatedOracleParams,
        ISwapPricingUtils.SwapPricingType swapPricingType
    ) external payable nonReentrant {
        bytes32 key = NonceUtils.getCurrentKey(dataStore);
        withdrawalHandler.simulateExecuteWithdrawal(key, simulatedOracleParams, swapPricingType);
    }

    function createShift(
        IShiftUtils.CreateShiftParams calldata params
    ) external override payable nonReentrant returns (bytes32) {
        address account = msg.sender;

        return shiftHandler.createShift(
            account,
            0, // srcChainId is the current block.chainId
            params
        );
    }

    function cancelShift(bytes32 key) external override payable nonReentrant {
        Shift.Props memory shift = ShiftStoreUtils.get(dataStore, key);
        if (shift.account() != msg.sender) {
            revert Errors.Unauthorized(msg.sender, "account for cancelShift");
        }

        shiftHandler.cancelShift(key);
    }

    function simulateExecuteLatestShift(
        OracleUtils.SimulatePricesParams memory simulatedOracleParams
    ) external payable nonReentrant {
        bytes32 key = NonceUtils.getCurrentKey(dataStore);
        shiftHandler.simulateExecuteShift(key, simulatedOracleParams);
    }

    /**
     * @dev Creates a new order with the given amount, order parameters. The order is
     * created by transferring the specified amount of collateral tokens from the caller's account to the
     * order store, and then calling the `createOrder()` function on the order handler contract. The
     * referral code is also set on the caller's account using the referral storage contract.
     */
    function createOrder(
        IBaseOrderUtils.CreateOrderParams calldata params
    ) external override payable nonReentrant returns (bytes32) {
        address account = msg.sender;

        return orderHandler.createOrder(
            account,
            0, // srcChainId is the current block.chainId
            params,
            false
        );
    }

    function setSavedCallbackContract(
        address market,
        address callbackContract
    ) external payable nonReentrant {
        // save the callback contract based on the account and market so that
        // it can be called on liquidations and ADLs
        CallbackUtils.setSavedCallbackContract(
            dataStore,
            msg.sender, // account
            market,
            callbackContract
        );
    }

    /**
     * @dev Updates the given order with the specified size delta, acceptable price, and trigger price.
     * The `updateOrder()` feature must be enabled for the given order type. The caller must be the owner
     * of the order, and the order must not be a market order. The size delta, trigger price, and
     * acceptable price are updated on the order, and the order is unfrozen. Any additional WNT that is
     * transferred to the contract is added to the order's execution fee. The updated order is then saved
     * in the order store, and an `OrderUpdated` event is emitted.
     *
     * @param key The unique ID of the order to be updated
     * @param sizeDeltaUsd The new size delta for the order
     * @param acceptablePrice The new acceptable price for the order
     * @param triggerPrice The new trigger price for the order
     */
    function updateOrder(
        bytes32 key,
        uint256 sizeDeltaUsd,
        uint256 acceptablePrice,
        uint256 triggerPrice,
        uint256 minOutputAmount,
        uint256 validFromTime,
        bool autoCancel
    ) external payable nonReentrant {
        Order.Props memory order = OrderStoreUtils.get(dataStore, key);
        if (order.account() != msg.sender) {
            revert Errors.Unauthorized(msg.sender, "account for updateOrder");
        }

        orderHandler.updateOrder(
            key,
            sizeDeltaUsd,
            acceptablePrice,
            triggerPrice,
            minOutputAmount,
            validFromTime,
            autoCancel,
            order,
            false
        );
    }

    /**
     * @dev Cancels the given order. The `cancelOrder()` feature must be enabled for the given order
     * type. The caller must be the owner of the order, and the order must not be a market order. The
     * order is cancelled by calling the `cancelOrder()` function in the `OrderUtils` contract. This
     * function also records the starting gas amount and the reason for cancellation, which is passed to
     * the `cancelOrder()` function.
     *
     * @param key The unique ID of the order to be cancelled
     */
    function cancelOrder(bytes32 key) external payable nonReentrant {
        Order.Props memory order = OrderStoreUtils.get(dataStore, key);
        if (order.account() == address(0)) {
            revert Errors.EmptyOrder();
        }

        if (order.account() != msg.sender) {
            revert Errors.Unauthorized(msg.sender, "account for cancelOrder");
        }

        orderHandler.cancelOrder(key);
    }

    function simulateExecuteLatestOrder(
        OracleUtils.SimulatePricesParams memory simulatedOracleParams
    ) external payable nonReentrant {
        bytes32 key = NonceUtils.getCurrentKey(dataStore);
        orderHandler.simulateExecuteOrder(key, simulatedOracleParams);
    }

    /**
     * @dev Claims funding fees for the given markets and tokens on behalf of the caller, and sends the
     * fees to the specified receiver. The length of the `markets` and `tokens` arrays must be the same.
     * For each market-token pair, the `claimFundingFees()` function in the `MarketUtils` contract is
     * called to claim the fees for the caller.
     *
     * @param markets An array of market addresses
     * @param tokens An array of token addresses, corresponding to the given markets
     * @param receiver The address to which the claimed fees should be sent
     */
    function claimFundingFees(
        address[] memory markets,
        address[] memory tokens,
        address receiver
    ) external payable nonReentrant returns (uint256[] memory) {
        address account = msg.sender;
        return
            FeeUtils.batchClaimFundingFees(
                dataStore,
                eventEmitter,
                markets,
                tokens,
                receiver,
                account
            );
    }

    function claimCollateral(
        address[] memory markets,
        address[] memory tokens,
        uint256[] memory timeKeys,
        address receiver
    ) external payable nonReentrant returns (uint256[] memory) {
        address account = msg.sender;
        return
            MarketUtils.batchClaimCollateral(
                dataStore,
                eventEmitter,
                markets,
                tokens,
                timeKeys,
                receiver,
                account
            );
    }

    /**
     * @dev Claims affiliate rewards for the given markets and tokens on behalf of the caller, and sends
     * the rewards to the specified receiver. The length of the `markets` and `tokens` arrays must be
     * the same. For each market-token pair, the `claimAffiliateReward()` function in the `ReferralUtils`
     * contract is called to claim the rewards for the caller.
     *
     * @param markets An array of market addresses
     * @param tokens An array of token addresses, corresponding to the given markets
     * @param receiver The address to which the claimed rewards should be sent
     */
    function claimAffiliateRewards(
        address[] memory markets,
        address[] memory tokens,
        address receiver
    ) external payable nonReentrant returns (uint256[] memory) {
        address account = msg.sender;
        return
            ReferralUtils.batchClaimAffiliateRewards(
                dataStore,
                eventEmitter,
                markets,
                tokens,
                receiver,
                account
            );
    }

    function setUiFeeFactor(uint256 uiFeeFactor) external payable nonReentrant {
        address account = msg.sender;
        MarketUtils.setUiFeeFactor(dataStore, eventEmitter, account, uiFeeFactor);
    }

    function claimUiFees(
        address[] memory markets,
        address[] memory tokens,
        address receiver
    ) external payable nonReentrant returns (uint256[] memory) {
        address uiFeeReceiver = msg.sender;
        return FeeUtils.batchClaimUiFees(dataStore, eventEmitter, markets, tokens, receiver, uiFeeReceiver);
    }

    function simulateExecuteLatestJitOrder(
        GlvShiftUtils.CreateGlvShiftParams[] memory shiftParamsList,
        OracleUtils.SimulatePricesParams memory simulatedOracleParams
    ) external payable nonReentrant {
        bytes32 key = NonceUtils.getCurrentKey(dataStore);
        jitOrderHandler.simulateExecuteJitOrder(shiftParamsList, key, simulatedOracleParams);
    }
}

// ============================================================
// FILE: contracts/router/IExchangeRouter.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.0;

import "../deposit/IDepositUtils.sol";
import "../withdrawal/IWithdrawalUtils.sol";
import "../oracle/OracleUtils.sol";
import "../shift/IShiftUtils.sol";
import "../order/IBaseOrderUtils.sol";

interface IExchangeRouter {
    function createDeposit(
        IDepositUtils.CreateDepositParams calldata params
    ) external payable returns (bytes32);

    function cancelDeposit(bytes32 key) external payable;

    function createWithdrawal(
        IWithdrawalUtils.CreateWithdrawalParams calldata params
    ) external payable returns (bytes32);

    function cancelWithdrawal(bytes32 key) external payable;

    function executeAtomicWithdrawal(
        IWithdrawalUtils.CreateWithdrawalParams calldata params,
        OracleUtils.SetPricesParams calldata oracleParams
    ) external payable;

    function createShift(
        IShiftUtils.CreateShiftParams calldata params
    ) external payable returns (bytes32);

    function cancelShift(bytes32 key) external payable;

    function createOrder(
        IBaseOrderUtils.CreateOrderParams calldata params
    ) external payable returns (bytes32);

    function updateOrder(
        bytes32 key,
        uint256 sizeDeltaUsd,
        uint256 acceptablePrice,
        uint256 triggerPrice,
        uint256 minOutputAmount,
        uint256 validFromTime,
        bool autoCancel
    ) external payable;

    function cancelOrder(bytes32 key) external payable;
}

// ============================================================
// FILE: contracts/router/relay/IRelayUtils.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.0;

import "../../oracle/OracleUtils.sol";
import "../../order/IBaseOrderUtils.sol";

interface IRelayUtils {
    struct FeeParams {
        // 1. if no swap is needed then `feeToken` should be WNT address, `feeAmount` should be correct amount and `feeSwapPath` should be empty
        // 2. if GMX v2 swap is used to swap relay fee then `feeToken` should be the address of the input token,
        //    `feeAmount` should be the amount of the input token enough to cover the relay fee in WNT, and `feeSwapPath` should be the list of markets
        //    through which the input token should be swapped to get the output token
        // 3. if external calls are used then `feeToken` should be WNT address (even though the input token is different)
        //    `feeAmount` should be 0 because the input token and amount will be specified in `externalCalls`
        //    `feeSwapPath` should be empty
        address feeToken;
        uint256 feeAmount;
        address[] feeSwapPath;
    }

    struct TokenPermit {
        // EIP-2612 permit https://eips.ethereum.org/EIPS/eip-2612
        address owner;
        address spender;
        uint256 value;
        uint256 deadline;
        uint8 v;
        bytes32 r;
        bytes32 s;
        address token;
    }

    // external calls could be used to swap relay fee and/or position collateral
    // GMX v2 swaps consume relatively a lot of gas, so using external calls could reduce txn fee
    // for relay fee the funds should be sent to the RelayRouter contract
    // for position collateral the funds should be sent to the OrderVault contract
    //
    // @note when using external calls for position collateral and creating multiple orders via `batch()`
    // then the funds will be allocated to the first increase order because all external calls are processed first
    // and only then OrderVault's balance is used for order's initialCollateralDeltaAmount
    //
    // @note using external calls for position collateral and atomic swaps for relay fee at the same time should be done with caution
    // if position collateral and initial relay fee token are the same then the collateral will be lost
    // for example, a user wants to pay ARB to open a position with USDC as collateral and pay USDC as a relay fee
    // 1. external calls swap ARB for USDC and sends USDC to the OrderVault to use as position collateral
    // 2. USDC is sent to the OrderVault before the swap
    // 3. on swap OrderVault.tokenBalances are synced
    // 4. on order creation OrderVault.recordTransferInt returns 0
    // 5. the collateral is lost
    struct ExternalCalls {
        // Gelato Relay Router contracts do not support `multicall` and `sendTokens` methods
        // so all tokens and amounts should be specified here
        address[] sendTokens; // tokens to send to ExternalHandler
        uint256[] sendAmounts; // tokens amounts to send to ExternalHandler
        // lists of external calls to be made
        address[] externalCallTargets; // external targets to call
        bytes[] externalCallDataList; // external call data list
        // refundTokens and refundReceivers are used to send residual funds left in the ExchangeHandler
        // for example, if "swapExactOut" is used some amount of "tokenIn" could be lefts
        address[] refundTokens; // tokens to refund to user
        address[] refundReceivers; // receivers of the refunds
    }

    struct RelayParams {
        // oracle params are used for relay fee swap through GMX v2 pools
        // if swap is not needed then `oracleParams` values should be empty
        OracleUtils.SetPricesParams oracleParams;
        ExternalCalls externalCalls;
        // token permits could be used to approve spending of tokens by the Router contract
        // instead of sending separate approval transactions
        TokenPermit[] tokenPermits;
        FeeParams fee;
        // interface generates a random nonce
        uint256 userNonce;
        // deadline for the transaction. should be used for extra safety so signed message
        // can't be used in future if a user signs and forgets about it
        uint256 deadline;
        bytes signature;
        uint256 desChainId;
    }

    struct TransferRequests {
        address[] tokens;
        address[] receivers;
        uint256[] amounts;
    }

    struct BridgeOutParams {
        address token;
        uint256 amount;
        uint256 minAmountOut;
        address provider;
        bytes data; // provider specific data e.g. dstEid
    }

    // @note all params except account should be part of the corresponding struct hash
    struct UpdateOrderParams {
        bytes32 key;
        uint256 sizeDeltaUsd;
        uint256 acceptablePrice;
        uint256 triggerPrice;
        uint256 minOutputAmount;
        uint256 validFromTime;
        bool autoCancel;
        // should be non zero if order's execution fee should be increased
        // otherwise should be 0
        uint256 executionFeeIncrease;
    }

    struct BatchParams {
        IBaseOrderUtils.CreateOrderParams[] createOrderParamsList;
        UpdateOrderParams[] updateOrderParamsList;
        bytes32[] cancelOrderKeys;
    }
}

// ============================================================
// FILE: contracts/router/Router.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import "../role/RoleModule.sol";

/**
 * @title Router
 * @dev Users will approve this router for token spenditures
 */
contract Router is RoleModule {
    using SafeERC20 for IERC20;

    constructor(RoleStore _roleStore) RoleModule(_roleStore) {}

    /**
     * @dev transfer the specified amount of tokens from the account to the receiver
     * @param token the token to transfer
     * @param account the account to transfer from
     * @param receiver the account to transfer to
     * @param amount the amount of tokens to transfer
     */
    function pluginTransfer(address token, address account, address receiver, uint256 amount) external onlyRouterPlugin {
        IERC20(token).safeTransferFrom(account, receiver, amount);
    }
}

// ============================================================
// FILE: contracts/shift/IShiftUtils.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.0;

interface IShiftUtils {
    struct CreateShiftParams {
        CreateShiftParamsAddresses addresses;
        uint256 minMarketTokens;
        uint256 executionFee;
        uint256 callbackGasLimit;
        bytes32[] dataList;
    }

    struct CreateShiftParamsAddresses {
        address receiver;
        address callbackContract;
        address uiFeeReceiver;
        address fromMarket;
        address toMarket;
    }
}

// ============================================================
// FILE: contracts/shift/Shift.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.0;

library Shift {
    struct Props {
        Addresses addresses;
        Numbers numbers;
        bytes32[] _dataList;
    }

    struct Addresses {
        address account;
        address receiver;
        address callbackContract;
        address uiFeeReceiver;
        address fromMarket;
        address toMarket;
    }

    struct Numbers {
        uint256 marketTokenAmount;
        uint256 minMarketTokens;
        uint256 updatedAtTime;
        uint256 executionFee;
        uint256 callbackGasLimit;
        uint256 srcChainId;
    }

    function account(Props memory props) internal pure returns (address) {
        return props.addresses.account;
    }

    function setAccount(Props memory props, address value) internal pure {
        props.addresses.account = value;
    }

    function receiver(Props memory props) internal pure returns (address) {
        return props.addresses.receiver;
    }

    function setReceiver(Props memory props, address value) internal pure {
        props.addresses.receiver = value;
    }

    function callbackContract(Props memory props) internal pure returns (address) {
        return props.addresses.callbackContract;
    }

    function setCallbackContract(Props memory props, address value) internal pure {
        props.addresses.callbackContract = value;
    }

    function uiFeeReceiver(Props memory props) internal pure returns (address) {
        return props.addresses.uiFeeReceiver;
    }

    function setUiFeeReceiver(Props memory props, address value) internal pure {
        props.addresses.uiFeeReceiver = value;
    }

    function fromMarket(Props memory props) internal pure returns (address) {
        return props.addresses.fromMarket;
    }

    function setFromMarket(Props memory props, address value) internal pure {
        props.addresses.fromMarket = value;
    }

    function toMarket(Props memory props) internal pure returns (address) {
        return props.addresses.toMarket;
    }

    function setToMarket(Props memory props, address value) internal pure {
        props.addresses.toMarket = value;
    }

    function marketTokenAmount(Props memory props) internal pure returns (uint256) {
        return props.numbers.marketTokenAmount;
    }

    function setMarketTokenAmount(Props memory props, uint256 value) internal pure {
        props.numbers.marketTokenAmount = value;
    }

    function minMarketTokens(Props memory props) internal pure returns (uint256) {
        return props.numbers.minMarketTokens;
    }

    function setMinMarketTokens(Props memory props, uint256 value) internal pure {
        props.numbers.minMarketTokens = value;
    }

    function updatedAtTime(Props memory props) internal pure returns (uint256) {
        return props.numbers.updatedAtTime;
    }

    function setUpdatedAtTime(Props memory props, uint256 value) internal pure {
        props.numbers.updatedAtTime = value;
    }

    function executionFee(Props memory props) internal pure returns (uint256) {
        return props.numbers.executionFee;
    }

    function setExecutionFee(Props memory props, uint256 value) internal pure {
        props.numbers.executionFee = value;
    }

    function callbackGasLimit(Props memory props) internal pure returns (uint256) {
        return props.numbers.callbackGasLimit;
    }

    function setCallbackGasLimit(Props memory props, uint256 value) internal pure {
        props.numbers.callbackGasLimit = value;
    }

    function srcChainId(Props memory props) internal pure returns (uint256) {
        return props.numbers.srcChainId;
    }

    function setSrcChainId(Props memory props, uint256 value) internal pure {
        props.numbers.srcChainId = value;
    }

    function dataList(Props memory props) internal pure returns (bytes32[] memory) {
        return props._dataList;
    }

    function setDataList(Props memory props, bytes32[] memory value) internal pure {
        props._dataList = value;
    }
}

// ============================================================
// FILE: contracts/shift/ShiftEventUtils.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.0;

import "../event/EventEmitter.sol";
import "../event/EventUtils.sol";
import "../utils/Cast.sol";

import "./Shift.sol";

library ShiftEventUtils {
    using Shift for Shift.Props;

    using EventUtils for EventUtils.AddressItems;
    using EventUtils for EventUtils.UintItems;
    using EventUtils for EventUtils.IntItems;
    using EventUtils for EventUtils.BoolItems;
    using EventUtils for EventUtils.Bytes32Items;
    using EventUtils for EventUtils.BytesItems;
    using EventUtils for EventUtils.StringItems;

    function emitShiftCreated(
        EventEmitter eventEmitter,
        bytes32 key,
        Shift.Props memory shift
    ) external {
        EventUtils.EventLogData memory eventData = createEventData(shift);

        eventData.bytes32Items.initItems(1);
        eventData.bytes32Items.setItem(0, "key", key);

        eventEmitter.emitEventLog2(
            "ShiftCreated",
            key,
            Cast.toBytes32(shift.account()),
            eventData
        );
    }

    function emitShiftExecuted(
        EventEmitter eventEmitter,
        bytes32 key,
        address account,
        uint256 receivedMarketTokens
    ) external {
        EventUtils.EventLogData memory eventData;

        eventData.bytes32Items.initItems(1);
        eventData.bytes32Items.setItem(0, "key", key);

        eventData.addressItems.initItems(1);
        eventData.addressItems.setItem(0, "account", account);

        eventData.uintItems.initItems(1);
        eventData.uintItems.setItem(0, "receivedMarketTokens", receivedMarketTokens);

        eventEmitter.emitEventLog2(
            "ShiftExecuted",
            key,
            Cast.toBytes32(account),
            eventData
        );
    }

    function emitShiftCancelled(
        EventEmitter eventEmitter,
        bytes32 key,
        address account,
        string memory reason,
        bytes memory reasonBytes
    ) external {
        EventUtils.EventLogData memory eventData;

        eventData.bytes32Items.initItems(1);
        eventData.bytes32Items.setItem(0, "key", key);

        eventData.addressItems.initItems(1);
        eventData.addressItems.setItem(0, "account", account);

        eventData.stringItems.initItems(1);
        eventData.stringItems.setItem(0, "reason", reason);

        eventData.bytesItems.initItems(1);
        eventData.bytesItems.setItem(0, "reasonBytes", reasonBytes);

        eventEmitter.emitEventLog2(
            "ShiftCancelled",
            key,
            Cast.toBytes32(account),
            eventData
        );
    }

    function createEventData(Shift.Props memory shift) public pure returns(EventUtils.EventLogData memory) {
        EventUtils.EventLogData memory eventData;

        eventData.addressItems.initItems(6);
        eventData.addressItems.setItem(0, "account", shift.account());
        eventData.addressItems.setItem(1, "receiver", shift.receiver());
        eventData.addressItems.setItem(2, "callbackContract", shift.callbackContract());
        eventData.addressItems.setItem(3, "fromMarket", shift.fromMarket());
        eventData.addressItems.setItem(4, "toMarket", shift.toMarket());
        eventData.addressItems.setItem(5, "uiFeeReceiver", shift.uiFeeReceiver());

        eventData.uintItems.initItems(6);
        eventData.uintItems.setItem(0, "marketTokenAmount", shift.marketTokenAmount());
        eventData.uintItems.setItem(1, "minMarketTokens", shift.minMarketTokens());
        eventData.uintItems.setItem(2, "updatedAtTime", shift.updatedAtTime());
        eventData.uintItems.setItem(3, "executionFee", shift.executionFee());
        eventData.uintItems.setItem(4, "callbackGasLimit", shift.callbackGasLimit());
        eventData.uintItems.setItem(5, "srcChainId", shift.srcChainId());

        eventData.bytes32Items.initArrayItems(1);
        eventData.bytes32Items.setItem(0, "dataList", shift.dataList());
        return eventData;
    }
}

// ============================================================
// FILE: contracts/shift/ShiftStoreUtils.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.0;

import "../data/Keys.sol";
import "../data/DataStore.sol";

import "./Shift.sol";

library ShiftStoreUtils {
    using Shift for Shift.Props;

    bytes32 public constant ACCOUNT = keccak256(abi.encode("ACCOUNT"));
    bytes32 public constant RECEIVER = keccak256(abi.encode("RECEIVER"));
    bytes32 public constant CALLBACK_CONTRACT = keccak256(abi.encode("CALLBACK_CONTRACT"));
    bytes32 public constant UI_FEE_RECEIVER = keccak256(abi.encode("UI_FEE_RECEIVER"));
    bytes32 public constant FROM_MARKET = keccak256(abi.encode("FROM_MARKET"));
    bytes32 public constant TO_MARKET = keccak256(abi.encode("TO_MARKET"));

    bytes32 public constant MARKET_TOKEN_AMOUNT = keccak256(abi.encode("MARKET_TOKEN_AMOUNT"));
    bytes32 public constant MIN_MARKET_TOKENS = keccak256(abi.encode("MIN_MARKET_TOKENS"));
    bytes32 public constant UPDATED_AT_TIME = keccak256(abi.encode("UPDATED_AT_TIME"));
    bytes32 public constant EXECUTION_FEE = keccak256(abi.encode("EXECUTION_FEE"));
    bytes32 public constant CALLBACK_GAS_LIMIT = keccak256(abi.encode("CALLBACK_GAS_LIMIT"));
    bytes32 public constant SRC_CHAIN_ID = keccak256(abi.encode("SRC_CHAIN_ID"));

    bytes32 public constant DATA_LIST = keccak256(abi.encode("DATA_LIST"));

    function get(DataStore dataStore, bytes32 key) external view returns (Shift.Props memory) {
        Shift.Props memory shift;
        if (!dataStore.containsBytes32(Keys.SHIFT_LIST, key)) {
            return shift;
        }

        shift.setAccount(dataStore.getAddress(
            keccak256(abi.encode(key, ACCOUNT))
        ));

        shift.setReceiver(dataStore.getAddress(
            keccak256(abi.encode(key, RECEIVER))
        ));

        shift.setCallbackContract(dataStore.getAddress(
            keccak256(abi.encode(key, CALLBACK_CONTRACT))
        ));

        shift.setUiFeeReceiver(dataStore.getAddress(
            keccak256(abi.encode(key, UI_FEE_RECEIVER))
        ));

        shift.setFromMarket(dataStore.getAddress(
            keccak256(abi.encode(key, FROM_MARKET))
        ));

        shift.setToMarket(dataStore.getAddress(
            keccak256(abi.encode(key, TO_MARKET))
        ));

        shift.setMarketTokenAmount(dataStore.getUint(
            keccak256(abi.encode(key, MARKET_TOKEN_AMOUNT))
        ));

        shift.setMinMarketTokens(dataStore.getUint(
            keccak256(abi.encode(key, MIN_MARKET_TOKENS))
        ));

        shift.setUpdatedAtTime(dataStore.getUint(
            keccak256(abi.encode(key, UPDATED_AT_TIME))
        ));

        shift.setExecutionFee(dataStore.getUint(
            keccak256(abi.encode(key, EXECUTION_FEE))
        ));

        shift.setCallbackGasLimit(dataStore.getUint(
            keccak256(abi.encode(key, CALLBACK_GAS_LIMIT))
        ));

        shift.setSrcChainId(dataStore.getUint(
            keccak256(abi.encode(key, SRC_CHAIN_ID))
        ));

        shift.setDataList(dataStore.getBytes32Array(
            keccak256(abi.encode(key, DATA_LIST))
        ));

        return shift;
    }

    function set(DataStore dataStore, bytes32 key, Shift.Props memory shift) external {
        dataStore.addBytes32(
            Keys.SHIFT_LIST,
            key
        );

        dataStore.addBytes32(
            Keys.accountShiftListKey(shift.account()),
            key
        );

        dataStore.setAddress(
            keccak256(abi.encode(key, ACCOUNT)),
            shift.account()
        );

        dataStore.setAddress(
            keccak256(abi.encode(key, RECEIVER)),
            shift.receiver()
        );

        dataStore.setAddress(
            keccak256(abi.encode(key, CALLBACK_CONTRACT)),
            shift.callbackContract()
        );

        dataStore.setAddress(
            keccak256(abi.encode(key, UI_FEE_RECEIVER)),
            shift.uiFeeReceiver()
        );

        dataStore.setAddress(
            keccak256(abi.encode(key, FROM_MARKET)),
            shift.fromMarket()
        );

        dataStore.setAddress(
            keccak256(abi.encode(key, TO_MARKET)),
            shift.toMarket()
        );

        dataStore.setUint(
            keccak256(abi.encode(key, MARKET_TOKEN_AMOUNT)),
            shift.marketTokenAmount()
        );

        dataStore.setUint(
            keccak256(abi.encode(key, MIN_MARKET_TOKENS)),
            shift.minMarketTokens()
        );

        dataStore.setUint(
            keccak256(abi.encode(key, UPDATED_AT_TIME)),
            shift.updatedAtTime()
        );

        dataStore.setUint(
            keccak256(abi.encode(key, EXECUTION_FEE)),
            shift.executionFee()
        );

        dataStore.setUint(
            keccak256(abi.encode(key, CALLBACK_GAS_LIMIT)),
            shift.callbackGasLimit()
        );

        dataStore.setUint(
            keccak256(abi.encode(key, SRC_CHAIN_ID)),
            shift.srcChainId()
        );

        dataStore.setBytes32Array(
            keccak256(abi.encode(key, DATA_LIST)),
            shift.dataList()
        );
    }

    function remove(DataStore dataStore, bytes32 key, address account) external {
        if (!dataStore.containsBytes32(Keys.SHIFT_LIST, key)) {
            revert Errors.ShiftNotFound(key);
        }

        dataStore.removeBytes32(
            Keys.SHIFT_LIST,
            key
        );

        dataStore.removeBytes32(
            Keys.accountShiftListKey(account),
            key
        );

        dataStore.removeAddress(
            keccak256(abi.encode(key, ACCOUNT))
        );

        dataStore.removeAddress(
            keccak256(abi.encode(key, RECEIVER))
        );

        dataStore.removeAddress(
            keccak256(abi.encode(key, CALLBACK_CONTRACT))
        );

        dataStore.removeAddress(
            keccak256(abi.encode(key, UI_FEE_RECEIVER))
        );

        dataStore.removeAddress(
            keccak256(abi.encode(key, FROM_MARKET))
        );

        dataStore.removeAddress(
            keccak256(abi.encode(key, TO_MARKET))
        );

        dataStore.removeUint(
            keccak256(abi.encode(key, MARKET_TOKEN_AMOUNT))
        );

        dataStore.removeUint(
            keccak256(abi.encode(key, MIN_MARKET_TOKENS))
        );

        dataStore.removeUint(
            keccak256(abi.encode(key, UPDATED_AT_TIME))
        );

        dataStore.removeUint(
            keccak256(abi.encode(key, EXECUTION_FEE))
        );

        dataStore.removeUint(
            keccak256(abi.encode(key, CALLBACK_GAS_LIMIT))
        );

        dataStore.removeUint(
            keccak256(abi.encode(key, SRC_CHAIN_ID))
        );

        dataStore.removeBytes32Array(
            keccak256(abi.encode(key, DATA_LIST))
        );
    }

    function getShiftCount(DataStore dataStore) internal view returns (uint256) {
        return dataStore.getBytes32Count(Keys.SHIFT_LIST);
    }

    function getShiftKeys(DataStore dataStore, uint256 start, uint256 end) internal view returns (bytes32[] memory) {
        return dataStore.getBytes32ValuesAt(Keys.SHIFT_LIST, start, end);
    }

    function getAccountShiftCount(DataStore dataStore, address account) internal view returns (uint256) {
        return dataStore.getBytes32Count(Keys.accountShiftListKey(account));
    }

    function getAccountShiftKeys(DataStore dataStore, address account, uint256 start, uint256 end) internal view returns (bytes32[] memory) {
        return dataStore.getBytes32ValuesAt(Keys.accountShiftListKey(account), start, end);
    }
}

// ============================================================
// FILE: contracts/shift/ShiftUtils.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.0;

import "../data/DataStore.sol";
import "../event/EventEmitter.sol";

import "./ShiftVault.sol";
import "./ShiftStoreUtils.sol";
import "./ShiftEventUtils.sol";
import "./IShiftUtils.sol";

import "../nonce/NonceUtils.sol";

import "../gas/GasUtils.sol";
import "../callback/CallbackUtils.sol";
import "../utils/AccountUtils.sol";
import "../market/MarketUtils.sol";

import "../deposit/DepositVault.sol";
import "../exchange/IDepositHandler.sol";
import "../exchange/IWithdrawalHandler.sol";

import "../multichain/IMultichainTransferRouter.sol";

library ShiftUtils {
    using Deposit for Deposit.Props;
    using Withdrawal for Withdrawal.Props;
    using Shift for Shift.Props;

    using EventUtils for EventUtils.AddressItems;
    using EventUtils for EventUtils.UintItems;
    using EventUtils for EventUtils.IntItems;
    using EventUtils for EventUtils.BoolItems;
    using EventUtils for EventUtils.Bytes32Items;
    using EventUtils for EventUtils.BytesItems;
    using EventUtils for EventUtils.StringItems;

    struct CreateShiftCache {
        uint256 estimatedGasLimit;
        uint256 oraclePriceCount;
        bytes32 key;
    }

    struct ExecuteShiftParams {
        DataStore dataStore;
        EventEmitter eventEmitter;
        MultichainVault multichainVault;
        ShiftVault shiftVault;
        IOracle oracle;
        IDepositHandler depositHandler;
        IWithdrawalHandler withdrawalHandler;
        ISwapHandler swapHandler;
        bytes32 key;
        address keeper;
        uint256 startingGas;
    }

    struct ExecuteShiftCache {
        Withdrawal.Props withdrawal;
        bytes32 withdrawalKey;
        IExecuteWithdrawalUtils.ExecuteWithdrawalParams executeWithdrawalParams;
        Market.Props depositMarket;
        uint256 initialLongTokenAmount;
        uint256 initialShortTokenAmount;
        Deposit.Props deposit;
        bytes32 depositKey;
        IExecuteDepositUtils.ExecuteDepositParams executeDepositParams;
        uint256 receivedMarketTokens;
        EventUtils.EventLogData eventData;
    }

    function createShift(
        DataStore dataStore,
        EventEmitter eventEmitter,
        ShiftVault shiftVault,
        address account,
        uint256 srcChainId,
        IShiftUtils.CreateShiftParams memory params
    ) external returns (bytes32) {
        AccountUtils.validateAccount(account);

        if (params.addresses.fromMarket == params.addresses.toMarket) {
            revert Errors.ShiftFromAndToMarketAreEqual(params.addresses.fromMarket);
        }

        // GMX_DATA_ACTION hash is reserved for bridging out tokens, which is not supported during shifts
        if (params.dataList.length != 0 && params.dataList[0] == Keys.GMX_DATA_ACTION) {
            revert Errors.BridgeOutNotSupportedDuringShift();
        }

        address wnt = TokenUtils.wnt(dataStore);
        uint256 wntAmount = shiftVault.recordTransferIn(wnt);

        if (wntAmount < params.executionFee) {
            revert Errors.InsufficientWntAmountForExecutionFee(wntAmount, params.executionFee);
        }

        AccountUtils.validateReceiver(params.addresses.receiver);

        uint256 marketTokenAmount = shiftVault.recordTransferIn(params.addresses.fromMarket);

        if (marketTokenAmount == 0) {
            revert Errors.EmptyShiftAmount();
        }

        params.executionFee = wntAmount;

        Market.Props memory fromMarket = MarketUtils.getEnabledMarket(dataStore, params.addresses.fromMarket);
        Market.Props memory toMarket = MarketUtils.getEnabledMarket(dataStore, params.addresses.toMarket);

        if (fromMarket.longToken != toMarket.longToken) {
            revert Errors.LongTokensAreNotEqual(fromMarket.longToken, toMarket.longToken);
        }

        if (fromMarket.shortToken != toMarket.shortToken) {
            revert Errors.ShortTokensAreNotEqual(fromMarket.shortToken, toMarket.shortToken);
        }

        Shift.Props memory shift = Shift.Props(
            Shift.Addresses(
                account,
                params.addresses.receiver,
                params.addresses.callbackContract,
                params.addresses.uiFeeReceiver,
                params.addresses.fromMarket,
                params.addresses.toMarket
            ),
            Shift.Numbers(
                marketTokenAmount,
                params.minMarketTokens,
                Chain.currentTimestamp(),
                params.executionFee,
                params.callbackGasLimit,
                srcChainId
            ),
            params.dataList
        );

        CallbackUtils.validateCallbackGasLimit(dataStore, shift.callbackGasLimit());

        CreateShiftCache memory cache;

        cache.estimatedGasLimit = GasUtils.estimateExecuteShiftGasLimit(dataStore, shift);
        cache.oraclePriceCount = GasUtils.estimateShiftOraclePriceCount();
        GasUtils.validateExecutionFee(dataStore, cache.estimatedGasLimit, params.executionFee, cache.oraclePriceCount);

        cache.key = NonceUtils.getNextKey(dataStore);

        ShiftStoreUtils.set(dataStore, cache.key, shift);

        ShiftEventUtils.emitShiftCreated(eventEmitter, cache.key, shift);

        return cache.key;
    }

    // @param params execution params
    // @param shift the shift to execute
    // @param skipRemoval if true, the shift will not be removed from the data store.
    // This is used when executing a shift as part of a glv shift and the shift is not stored in the data store
    // @returns receivedMarketTokens the amount of market tokens received
    function executeShift(
        ExecuteShiftParams memory params,
        Shift.Props memory shift,
        bool skipRemoval
    ) external returns (uint256) {
        // 63/64 gas is forwarded to external calls, reduce the startingGas to account for this
        params.startingGas -= gasleft() / 63;

        if (skipRemoval) {
            if (params.dataStore.containsBytes32(Keys.SHIFT_LIST, params.key)) {
                revert Errors.RemovalShouldNotBeSkipped(Keys.SHIFT_LIST, params.key);
            }
        } else {
            ShiftStoreUtils.remove(params.dataStore, params.key, shift.account());
        }

        if (shift.account() == address(0)) {
            revert Errors.EmptyShift();
        }

        if (shift.marketTokenAmount() == 0) {
            revert Errors.EmptyShiftAmount();
        }

        ExecuteShiftCache memory cache;

        cache.depositMarket = MarketStoreUtils.get(params.dataStore, shift.toMarket());

        // if a user sends tokens directly to the shiftVault
        // the recordTransferIn after the shift withdrawal would record
        // these additional tokens and perform a deposit on the combined
        // token amount (tokens directly sent + tokens withdrawn)
        //
        // a user could use this to avoid paying deposit fees
        //
        // call shiftVault.recordTransferIn before the withdrawal to prevent
        // this
        params.shiftVault.recordTransferIn(cache.depositMarket.longToken);
        params.shiftVault.recordTransferIn(cache.depositMarket.shortToken);

        // srcChainId must be zero for the withdrawal, so that the withdrawn
        // tokens would be sent to the ShiftVault wallet balance instead of the
        // ShiftVault multichain balance
        cache.withdrawal = Withdrawal.Props(
            Withdrawal.Addresses(
                shift.account(),
                address(params.shiftVault), // receiver
                address(0), // callbackContract
                shift.uiFeeReceiver(), // uiFeeReceiver
                shift.fromMarket(), // market
                new address[](0), // longTokenSwapPath
                new address[](0) // shortTokenSwapPath
            ),
            Withdrawal.Numbers(
                shift.marketTokenAmount(),
                0, // minLongTokenAmount
                0, // minShortTokenAmount
                shift.updatedAtTime(),
                0, // executionFee
                0, // callbackGasLimit
                0 // srcChainId is the current block.chainId
            ),
            Withdrawal.Flags(false),
            new bytes32[](0) // dataList
        );

        cache.withdrawalKey = keccak256(abi.encode(params.key, "withdrawal"));
        WithdrawalEventUtils.emitWithdrawalCreated(
            params.eventEmitter,
            cache.withdrawalKey,
            cache.withdrawal,
            Withdrawal.WithdrawalType.Shift
        );

        cache.executeWithdrawalParams = IExecuteWithdrawalUtils.ExecuteWithdrawalParams(
            params.dataStore,
            params.eventEmitter,
            params.multichainVault,
            IMultichainTransferRouter(payable(0)),
            WithdrawalVault(payable(params.shiftVault)),
            params.oracle,
            params.swapHandler,
            cache.withdrawalKey,
            params.keeper,
            params.startingGas,
            ISwapPricingUtils.SwapPricingType.Shift
        );

        params.withdrawalHandler.executeWithdrawalFromController(cache.executeWithdrawalParams, cache.withdrawal);

        // if the initialLongToken and initialShortToken are the same, only the initialLongTokenAmount would
        // be non-zero, the initialShortTokenAmount would be zero
        cache.initialLongTokenAmount = params.shiftVault.recordTransferIn(cache.depositMarket.longToken);
        cache.initialShortTokenAmount = params.shiftVault.recordTransferIn(cache.depositMarket.shortToken);

        // set the uiFeeReceiver to the zero address since the ui fee was already paid
        // while executing the withdrawal
        // srcChainId should be the Shift srcChainId so that the GM tokens would
        // go into the appropriate balance either the user's wallet balance
        // or their multichain balance
        cache.deposit = Deposit.Props(
            Deposit.Addresses(
                shift.account(),
                shift.receiver(),
                address(0), // callbackContract
                address(0), // uiFeeReceiver
                shift.toMarket(), // market
                cache.depositMarket.longToken, // initialLongToken
                cache.depositMarket.shortToken, // initialShortToken
                new address[](0), // longTokenSwapPath
                new address[](0) // shortTokenSwapPath
            ),
            Deposit.Numbers(
                cache.initialLongTokenAmount,
                cache.initialShortTokenAmount,
                shift.minMarketTokens(),
                shift.updatedAtTime(),
                0, // executionFee
                0, // callbackGasLimit
                shift.srcChainId()
            ),
            Deposit.Flags(
                false // shouldUnwrapNativeToken
            ),
            new bytes32[](0) // dataList
        );

        cache.depositKey = keccak256(abi.encode(params.key, "deposit"));
        DepositEventUtils.emitDepositCreated(
            params.eventEmitter,
            cache.depositKey,
            cache.deposit,
            Deposit.DepositType.Shift
        );

        // price impact from changes in virtual inventory should be excluded
        // since the action of withdrawing and depositing should not result in
        // a net change of virtual inventory
        // shift.srcChainId should be used for the srcChainId here so that GM tokens
        // would go to the appropriate balance eitehr the user's wallet balance or multichain balance
        cache.executeDepositParams = IExecuteDepositUtils.ExecuteDepositParams(
            params.dataStore,
            params.eventEmitter,
            params.multichainVault,
            IMultichainTransferRouter(payable(0)),
            DepositVault(payable(params.shiftVault)),
            params.oracle,
            params.swapHandler,
            cache.depositKey,
            params.keeper,
            params.startingGas,
            ISwapPricingUtils.SwapPricingType.Shift,
            false // includeVirtualInventoryImpact
        );

        cache.receivedMarketTokens = params.depositHandler.executeDepositFromController(
            cache.executeDepositParams,
            cache.deposit
        );

        ShiftEventUtils.emitShiftExecuted(params.eventEmitter, params.key, shift.account(), cache.receivedMarketTokens);

        cache.eventData.uintItems.initItems(1);
        cache.eventData.uintItems.setItem(0, "receivedMarketTokens", cache.receivedMarketTokens);
        CallbackUtils.afterShiftExecution(params.key, shift, cache.eventData);

        GasUtils.payExecutionFee(
            GasUtils.PayExecutionFeeContracts(
                params.dataStore,
                params.eventEmitter,
                params.multichainVault,
                params.shiftVault
            ),
            params.key,
            shift.callbackContract(),
            shift.executionFee(),
            params.startingGas,
            GasUtils.estimateShiftOraclePriceCount(),
            params.keeper,
            shift.receiver(),
            shift.srcChainId()
        );

        return cache.receivedMarketTokens;
    }

    function cancelShift(
        DataStore dataStore,
        EventEmitter eventEmitter,
        MultichainVault multichainVault,
        ShiftVault shiftVault,
        bytes32 key,
        address keeper,
        uint256 startingGas,
        string memory reason,
        bytes memory reasonBytes
    ) external {
        // 63/64 gas is forwarded to external calls, reduce the startingGas to account for this
        startingGas -= gasleft() / 63;

        Shift.Props memory shift = ShiftStoreUtils.get(dataStore, key);

        if (shift.account() == address(0)) {
            revert Errors.EmptyShift();
        }

        if (shift.marketTokenAmount() == 0) {
            revert Errors.EmptyShiftAmount();
        }

        ShiftStoreUtils.remove(dataStore, key, shift.account());

        if (shift.srcChainId() == 0) {
            shiftVault.transferOut(
                shift.fromMarket(),
                shift.account(),
                shift.marketTokenAmount(),
                false // shouldUnwrapNativeToken
            );
        } else {
            shiftVault.transferOut(
                shift.fromMarket(),
                address(multichainVault),
                shift.marketTokenAmount(),
                false // shouldUnwrapNativeToken
            );
            MultichainUtils.recordTransferIn(
                dataStore,
                eventEmitter,
                multichainVault,
                shift.fromMarket(),
                shift.account(),
                0 // srcChainId is the current block.chainId
            );
        }

        ShiftEventUtils.emitShiftCancelled(eventEmitter, key, shift.account(), reason, reasonBytes);

        EventUtils.EventLogData memory eventData;
        CallbackUtils.afterShiftCancellation(key, shift, eventData);

        GasUtils.payExecutionFee(
            GasUtils.PayExecutionFeeContracts(dataStore, eventEmitter, multichainVault, shiftVault),
            key,
            shift.callbackContract(),
            shift.executionFee(),
            startingGas,
            GasUtils.estimateShiftOraclePriceCount(),
            keeper,
            shift.receiver(),
            shift.srcChainId()
        );
    }
}

// ============================================================
// FILE: contracts/shift/ShiftVault.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.0;

import "../bank/StrictBank.sol";

contract ShiftVault is StrictBank {
    constructor(RoleStore _roleStore, DataStore _dataStore) StrictBank(_roleStore, _dataStore) {}
}

// ============================================================
// FILE: contracts/swap/ISwapHandler.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.0;

import "./ISwapUtils.sol";

interface ISwapHandler {
    function swap(ISwapUtils.SwapParams memory params) external returns (address, uint256);
}

// ============================================================
// FILE: contracts/swap/ISwapUtils.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.0;

import "../data/DataStore.sol";
import "../event/EventEmitter.sol";
import "../bank/Bank.sol";
import "../market/Market.sol";

import "../oracle/IOracle.sol";
import "../pricing/ISwapPricingUtils.sol";

interface ISwapUtils {
    event SwapReverted(string reason, bytes reasonBytes);

    /**
     * @param dataStore The contract that provides access to data stored on-chain.
     * @param eventEmitter The contract that emits events.
     * @param oracle The contract that provides access to price data from oracles.
     * @param bank The contract providing the funds for the swap.
     * @param key An identifying key for the swap.
     * @param tokenIn The address of the token that is being swapped.
     * @param amountIn The amount of the token that is being swapped.
     * @param swapPathMarkets An array of market properties, specifying the markets in which the swap should be executed.
     * @param minOutputAmount The minimum amount of tokens that should be received as part of the swap.
     * @param receiver The address to which the swapped tokens should be sent.
     * @param uiFeeReceiver The address of the ui fee receiver.
     * @param shouldUnwrapNativeToken A boolean indicating whether the received tokens should be unwrapped from the wrapped native token (WNT) if they are wrapped.
     */
    struct SwapParams {
        DataStore dataStore;
        EventEmitter eventEmitter;
        IOracle oracle;
        Bank bank;
        bytes32 key;
        address tokenIn;
        uint256 amountIn;
        Market.Props[] swapPathMarkets;
        uint256 minOutputAmount;
        address receiver;
        address uiFeeReceiver;
        bool shouldUnwrapNativeToken;
        ISwapPricingUtils.SwapPricingType swapPricingType;
    }
}

// ============================================================
// FILE: contracts/token/IWNT.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.0;

/**
 * @title IWNT
 * @dev Interface for Wrapped Native Tokens, e.g. WETH
 * The contract is named WNT instead of WETH for a more general reference name
 * that can be used on any blockchain
 */
interface IWNT {
    function deposit() external payable;
    function withdraw(uint256 amount) external;
}

// ============================================================
// FILE: contracts/token/TokenUtils.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/utils/Address.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import "../data/DataStore.sol";
import "../data/Keys.sol";
import "../error/ErrorUtils.sol";
import "../utils/AccountUtils.sol";

import "./IWNT.sol";

/**
 * @title TokenUtils
 * @dev Library for token functions, helps with transferring of tokens and
 * native token functions
 */
library TokenUtils {
    using Address for address;
    using SafeERC20 for IERC20;

    event TokenTransferReverted(string reason, bytes returndata);
    event NativeTokenTransferReverted(string reason);

    /**
     * @dev Returns the address of the WNT token.
     * @param dataStore DataStore contract instance where the address of the WNT token is stored.
     * @return The address of the WNT token.
     */
    function wnt(DataStore dataStore) internal view returns (address) {
        return dataStore.getAddress(Keys.WNT);
    }

    /**
     * @dev Transfers the specified amount of `token` from the caller to `receiver`.
     * limit the amount of gas forwarded so that a user cannot intentionally
     * construct a token call that would consume all gas and prevent necessary
     * actions like request cancellation from being executed
     *
     * @param dataStore The data store that contains the `tokenTransferGasLimit` for the specified `token`.
     * @param token The address of the ERC20 token that is being transferred.
     * @param receiver The address of the recipient of the `token` transfer.
     * @param amount The amount of `token` to transfer.
     */
    function transfer(
        DataStore dataStore,
        address token,
        address receiver,
        uint256 amount
    ) internal {
        if (amount == 0) { return; }
        AccountUtils.validateReceiver(receiver);

        uint256 gasLimit = dataStore.getUint(Keys.tokenTransferGasLimit(token));
        if (gasLimit == 0) {
            revert Errors.EmptyTokenTranferGasLimit(token);
        }

        (bool success0, /* bytes memory returndata */) = nonRevertingTransferWithGasLimit(
            IERC20(token),
            receiver,
            amount,
            gasLimit
        );

        if (success0) { return; }

        address holdingAddress = dataStore.getAddress(Keys.HOLDING_ADDRESS);

        if (holdingAddress == address(0)) {
            revert Errors.EmptyHoldingAddress();
        }

        // in case transfers to the receiver fail due to blacklisting or other reasons
        // send the tokens to a holding address to avoid possible gaming through reverting
        // transfers
        (bool success1, bytes memory returndata) = nonRevertingTransferWithGasLimit(
            IERC20(token),
            holdingAddress,
            amount,
            gasLimit
        );

        if (success1) { return; }

        (string memory reason, /* bool hasRevertMessage */) = ErrorUtils.getRevertMessage(returndata);
        emit TokenTransferReverted(reason, returndata);

        // throw custom errors to prevent spoofing of errors
        // this is necessary because contracts like DepositHandler, WithdrawalHandler, OrderHandler
        // do not cancel requests for specific errors
        revert Errors.TokenTransferError(token, receiver, amount);
    }

    function sendNativeToken(
        DataStore dataStore,
        address receiver,
        uint256 amount
    ) internal {
        if (amount == 0) { return; }

        AccountUtils.validateReceiver(receiver);

        uint256 gasLimit = dataStore.getUint(Keys.NATIVE_TOKEN_TRANSFER_GAS_LIMIT);

        bool success;
        // use an assembly call to avoid loading large data into memory
        // input mem[in…(in+insize)]
        // output area mem[out…(out+outsize))]
        assembly {
            success := call(
                gasLimit, // gas limit
                receiver, // receiver
                amount, // value
                0, // in
                0, // insize
                0, // out
                0 // outsize
            )
        }

        if (success) { return; }

        // if the transfer failed, re-wrap the token and send it to the receiver
        depositAndSendWrappedNativeToken(
            dataStore,
            receiver,
            amount
        );
    }

    /**
     * Deposits the specified amount of native token and sends the specified
     * amount of wrapped native token to the specified receiver address.
     *
     * @param dataStore the data store to use for storing and retrieving data
     * @param receiver the address of the recipient of the wrapped native token transfer
     * @param amount the amount of native token to deposit and the amount of wrapped native token to send
     */
    function depositAndSendWrappedNativeToken(
        DataStore dataStore,
        address receiver,
        uint256 amount
    ) internal {
        if (amount == 0) { return; }
        AccountUtils.validateReceiver(receiver);

        address _wnt = wnt(dataStore);
        IWNT(_wnt).deposit{value: amount}();

        transfer(
            dataStore,
            _wnt,
            receiver,
            amount
        );
    }

    /**
     * @dev Withdraws the specified amount of wrapped native token and sends the
     * corresponding amount of native token to the specified receiver address.
     *
     * limit the amount of gas forwarded so that a user cannot intentionally
     * construct a token call that would consume all gas and prevent necessary
     * actions like request cancellation from being executed
     *
     * @param dataStore the data store to use for storing and retrieving data
     * @param _wnt the address of the WNT contract to withdraw the wrapped native token from
     * @param receiver the address of the recipient of the native token transfer
     * @param amount the amount of wrapped native token to withdraw and the amount of native token to send
     */
    function withdrawAndSendNativeToken(
        DataStore dataStore,
        address _wnt,
        address receiver,
        uint256 amount
    ) internal {
        if (amount == 0) { return; }
        AccountUtils.validateReceiver(receiver);

        IWNT(_wnt).withdraw(amount);

        uint256 gasLimit = dataStore.getUint(Keys.NATIVE_TOKEN_TRANSFER_GAS_LIMIT);

        bool success;
        // use an assembly call to avoid loading large data into memory
        // input mem[in…(in+insize)]
        // output area mem[out…(out+outsize))]
        assembly {
            success := call(
                gasLimit, // gas limit
                receiver, // receiver
                amount, // value
                0, // in
                0, // insize
                0, // out
                0 // outsize
            )
        }

        if (success) { return; }

        // if the transfer failed, re-wrap the token and send it to the receiver
        depositAndSendWrappedNativeToken(
            dataStore,
            receiver,
            amount
        );
    }

    /**
     * @dev Transfers the specified amount of ERC20 token to the specified receiver
     * address, with a gas limit to prevent the transfer from consuming all available gas.
     * adapted from https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/utils/SafeERC20.sol
     *
     * @param token the ERC20 contract to transfer the tokens from
     * @param to the address of the recipient of the token transfer
     * @param amount the amount of tokens to transfer
     * @param gasLimit the maximum amount of gas that the token transfer can consume
     * @return a tuple containing a boolean indicating the success or failure of the
     * token transfer, and a bytes value containing the return data from the token transfer
     */
    function nonRevertingTransferWithGasLimit(
        IERC20 token,
        address to,
        uint256 amount,
        uint256 gasLimit
    ) internal returns (bool, bytes memory) {
        bytes memory data = abi.encodeWithSelector(token.transfer.selector, to, amount);
        (bool success, bytes memory returndata) = address(token).call{ gas: gasLimit }(data);

        if (success) {
            if (returndata.length == 0) {
                // only check isContract if the call was successful and the return data is empty
                // otherwise we already know that it was a contract
                if (!address(token).isContract()) {
                    return (false, "Call to non-contract");
                }
            }

            // some tokens do not revert on a failed transfer, they will return a boolean instead
            // validate that the returned boolean is true, otherwise indicate that the token transfer failed
            if (returndata.length > 0 && !abi.decode(returndata, (bool))) {
                return (false, returndata);
            }

            // transfers on some tokens do not return a boolean value, they will just revert if a transfer fails
            // for these tokens, if success is true then the transfer should have completed
            return (true, returndata);
        }

        return (false, returndata);
    }
}

// ============================================================
// FILE: contracts/utils/AccountUtils.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.0;

import "../error/Errors.sol";

library AccountUtils {
    function validateAccount(address account) internal pure {
        if (account == address(0)) {
            revert Errors.EmptyAccount();
        }
    }

    function validateReceiver(address receiver) internal pure {
        if (receiver == address(0)) {
            revert Errors.EmptyReceiver();
        }
    }

    function isContract(address account) internal view returns (bool) {
        return account.code.length > 0;
    }

}

// ============================================================
// FILE: contracts/utils/Array.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/utils/math/SafeCast.sol";
import "../error/Errors.sol";

/**
 * @title Array
 * @dev Library for array functions
 */
library Array {
    using SafeCast for int256;

    /**
     * @dev Gets the value of the element at the specified index in the given array. If the index is out of bounds, returns 0.
     *
     * @param arr the array to get the value from
     * @param index the index of the element in the array
     * @return the value of the element at the specified index in the array
     */
    function get(bytes32[] memory arr, uint256 index) internal pure returns (bytes32) {
        if (index < arr.length) {
            return arr[index];
        }

        return bytes32(0);
    }

    /**
     * @dev Determines whether all of the elements in the given array are equal to the specified value.
     *
     * @param arr the array to check the elements of
     * @param value the value to compare the elements of the array to
     * @return true if all of the elements in the array are equal to the specified value, false otherwise
     */
    function areEqualTo(uint256[] memory arr, uint256 value) internal pure returns (bool) {
        for (uint256 i; i < arr.length; i++) {
            if (arr[i] != value) {
                return false;
            }
        }

        return true;
    }

    /**
     * @dev Determines whether all of the elements in the given array are greater than the specified value.
     *
     * @param arr the array to check the elements of
     * @param value the value to compare the elements of the array to
     * @return true if all of the elements in the array are greater than the specified value, false otherwise
     */
    function areGreaterThan(uint256[] memory arr, uint256 value) internal pure returns (bool) {
        for (uint256 i; i < arr.length; i++) {
            if (arr[i] <= value) {
                return false;
            }
        }

        return true;
    }

    /**
     * @dev Determines whether all of the elements in the given array are greater than or equal to the specified value.
     *
     * @param arr the array to check the elements of
     * @param value the value to compare the elements of the array to
     * @return true if all of the elements in the array are greater than or equal to the specified value, false otherwise
     */
    function areGreaterThanOrEqualTo(uint256[] memory arr, uint256 value) internal pure returns (bool) {
        for (uint256 i; i < arr.length; i++) {
            if (arr[i] < value) {
                return false;
            }
        }

        return true;
    }

    /**
     * @dev Determines whether all of the elements in the given array are less than the specified value.
     *
     * @param arr the array to check the elements of
     * @param value the value to compare the elements of the array to
     * @return true if all of the elements in the array are less than the specified value, false otherwise
     */
    function areLessThan(uint256[] memory arr, uint256 value) internal pure returns (bool) {
        for (uint256 i; i < arr.length; i++) {
            if (arr[i] >= value) {
                return false;
            }
        }

        return true;
    }

    /**
     * @dev Determines whether all of the elements in the given array are less than or equal to the specified value.
     *
     * @param arr the array to check the elements of
     * @param value the value to compare the elements of the array to
     * @return true if all of the elements in the array are less than or equal to the specified value, false otherwise
     */
    function areLessThanOrEqualTo(uint256[] memory arr, uint256 value) internal pure returns (bool) {
        for (uint256 i; i < arr.length; i++) {
            if (arr[i] > value) {
                return false;
            }
        }

        return true;
    }

    /**
     * @dev Gets the median value of the elements in the given array. For arrays with an odd number of elements, returns the element at the middle index. For arrays with an even number of elements, returns the average of the two middle elements.
     *
     * @param arr the array to get the median value from
     * @return the median value of the elements in the given array
     */
    function getMedian(uint256[] memory arr) internal pure returns (uint256) {
        if (arr.length % 2 == 1) {
            return arr[arr.length / 2];
        }

        return (arr[arr.length / 2] + arr[arr.length / 2 - 1]) / 2;
    }

    /**
     * @dev Gets the uncompacted value at the specified index in the given array of compacted values.
     *
     * @param compactedValues the array of compacted values to get the uncompacted value from
     * @param index the index of the uncompacted value in the array
     * @param compactedValueBitLength the length of each compacted value, in bits
     * @param bitmask the bitmask to use to extract the uncompacted value from the compacted value
     * @return the uncompacted value at the specified index in the array of compacted values
     */
    function getUncompactedValue(
        uint256[] memory compactedValues,
        uint256 index,
        uint256 compactedValueBitLength,
        uint256 bitmask,
        string memory label
    ) internal pure returns (uint256) {
        uint256 compactedValuesPerSlot = 256 / compactedValueBitLength;

        uint256 slotIndex = index / compactedValuesPerSlot;
        if (slotIndex >= compactedValues.length) {
            revert Errors.CompactedArrayOutOfBounds(compactedValues, index, slotIndex, label);
        }

        uint256 slotBits = compactedValues[slotIndex];
        uint256 offset = (index - slotIndex * compactedValuesPerSlot) * compactedValueBitLength;

        uint256 value = (slotBits >> offset) & bitmask;

        return value;
    }

    /**
     * Converts an array of bytes32 values to bytes.
     * 
     * @dev Used to decode the dataList and the first element is not included in the result (i.e. loop starts at index 1)
     * because it is expected to be the  GMX_DATA_ACTION hash.
     *
     * @param dataList the array of bytes32 values to convert
     * @return data the bytes array representing the input dataList
     */
    function dataArrayToBytes(bytes32[] memory dataList) internal pure returns (bytes memory) {
        bytes memory data;

        for (uint256 i = 1; i < dataList.length; i++) {
            data = bytes.concat(data, bytes32(dataList[i]));
        }

        return data;
    }
}

// ============================================================
// FILE: contracts/utils/Calc.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/utils/math/SignedMath.sol";
import "@openzeppelin/contracts/utils/math/SafeCast.sol";

/**
 * @title Calc
 * @dev Library for math functions
 */
library Calc {
    using SignedMath for int256;
    using SafeCast for uint256;

    // this method assumes that min is less than max
    function boundMagnitude(int256 value, uint256 min, uint256 max) internal pure returns (int256) {
        uint256 magnitude = value.abs();

        if (magnitude < min) {
            magnitude = min;
        }

        if (magnitude > max) {
            magnitude = max;
        }

        int256 sign = value == 0 ? int256(1) : value / value.abs().toInt256();

        return magnitude.toInt256() * sign;
    }

    /**
     * @dev Calculates the result of dividing the first number by the second number,
     * rounded up to the nearest integer.
     *
     * @param a the dividend
     * @param b the divisor
     * @return the result of dividing the first number by the second number, rounded up to the nearest integer
     */
    function roundUpDivision(uint256 a, uint256 b) internal pure returns (uint256) {
        return (a + b - 1) / b;
    }

    /**
     * Calculates the result of dividing the first number by the second number,
     * rounded up to the nearest integer.
     * The rounding is purely on the magnitude of a, if a is negative the result
     * is a larger magnitude negative
     *
     * @param a the dividend
     * @param b the divisor
     * @return the result of dividing the first number by the second number, rounded up to the nearest integer
     */
    function roundUpMagnitudeDivision(int256 a, uint256 b) internal pure returns (int256) {
        if (a < 0) {
            return (a - b.toInt256() + 1) / b.toInt256();
        }

        return (a + b.toInt256() - 1) / b.toInt256();
    }

    /**
     * Adds two numbers together and return a uint256 value, treating the second number as a signed integer.
     *
     * @param a the first number
     * @param b the second number
     * @return the result of adding the two numbers together
     */
    function sumReturnUint256(uint256 a, int256 b) internal pure returns (uint256) {
        if (b > 0) {
            return a + b.abs();
        }

        return a - b.abs();
    }

    /**
     * Adds two numbers together and return an int256 value, treating the second number as a signed integer.
     *
     * @param a the first number
     * @param b the second number
     * @return the result of adding the two numbers together
     */
    function sumReturnInt256(uint256 a, int256 b) internal pure returns (int256) {
        return a.toInt256() + b;
    }

    /**
     * @dev Calculates the absolute difference between two numbers.
     *
     * @param a the first number
     * @param b the second number
     * @return the absolute difference between the two numbers
     */
    function diff(uint256 a, uint256 b) internal pure returns (uint256) {
        return a > b ? a - b : b - a;
    }

    /**
     * Adds two numbers together, the result is bounded to prevent overflows.
     *
     * @param a the first number
     * @param b the second number
     * @return the result of adding the two numbers together
     */
    function boundedAdd(int256 a, int256 b) internal pure returns (int256) {
        // if either a or b is zero or if the signs are different there should not be any overflows
        if (a == 0 || b == 0 || (a < 0 && b > 0) || (a > 0 && b < 0)) {
            return a + b;
        }

        // if adding `b` to `a` would result in a value less than the min int256 value
        // then return the min int256 value
        if (a < 0 && b <= type(int256).min - a) {
            return type(int256).min;
        }

        // if adding `b` to `a` would result in a value more than the max int256 value
        // then return the max int256 value
        if (a > 0 && b >= type(int256).max - a) {
            return type(int256).max;
        }

        return a + b;
    }

    /**
     * Returns a - b, the result is bounded to prevent overflows.
     * Note that this will revert if b is type(int256).min because of the usage of "-b".
     *
     * @param a the first number
     * @param b the second number
     * @return the bounded result of a - b
     */
    function boundedSub(int256 a, int256 b) internal pure returns (int256) {
        // if either a or b is zero or the signs are the same there should not be any overflow
        if (a == 0 || b == 0 || (a > 0 && b > 0) || (a < 0 && b < 0)) {
            return a - b;
        }

        // if adding `-b` to `a` would result in a value greater than the max int256 value
        // then return the max int256 value
        if (a > 0 && -b >= type(int256).max - a) {
            return type(int256).max;
        }

        // if subtracting `b` from `a` would result in a value less than the min int256 value
        // then return the min int256 value
        if (a < 0 && -b <= type(int256).min - a) {
            return type(int256).min;
        }

        return a - b;
    }


    /**
     * Converts the given unsigned integer to a signed integer, using the given
     * flag to determine whether the result should be positive or negative.
     *
     * @param a the unsigned integer to convert
     * @param isPositive whether the result should be positive (if true) or negative (if false)
     * @return the signed integer representation of the given unsigned integer
     */
    function toSigned(uint256 a, bool isPositive) internal pure returns (int256) {
        if (isPositive) {
            return a.toInt256();
        } else {
            return -a.toInt256();
        }
    }
}

// ============================================================
// FILE: contracts/utils/Cast.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.0;

import "../error/Errors.sol";

/**
 * @title Cast
 * @dev Library for casting functions
 */
library Cast {
    function toBytes32(address value) internal pure returns (bytes32) {
        return bytes32(uint256(uint160(value)));
    }

    /**
     * @dev Converts a bytes array to a uint256.
     * Handles cases where the uint256 stored in bytes is stored with or without padding.
     * @param uint256AsBytes The bytes array representing the uint256 value.
     * @return value The uint256 value obtained from the bytes array.
     */
    function bytesToUint256(bytes memory uint256AsBytes) internal pure returns (uint256) {
        uint256 length = uint256AsBytes.length;

        if(length > 32) {
            revert Errors.Uint256AsBytesLengthExceeds32Bytes(length);
        }

        if (length == 0) {
            return 0;
        }

        uint256 value;

        assembly {
            value := mload(add(uint256AsBytes, 32))
        }

        return value = value >> (8 * (32 - length));
    }

    function uint256ToBytes(uint256 x) internal pure returns (bytes memory b) {
        b = new bytes(32);
        assembly { mstore(add(b, 32), x) }
        return b;
    }

    function uint192ToBytes(uint192 x) internal pure returns (bytes memory b) {
        b = new bytes(32);
        assembly { mstore(add(b, 32), x) }
        return b;
    }

    function uint32ToBytes(uint32 x) internal pure returns (bytes memory b) {
        b = new bytes(32);
        assembly { mstore(add(b, 32), x) }
        return b;
    }

    function int32ToBytes(int32 x) internal pure returns (bytes memory b) {
        b = new bytes(32);
//        bytes memory expoBytes = new bytes(1);
//        if (x < 0) {
//            expoBytes[0] = bytes1(uint8(-x)); // Use absolute value, e.g., uint8(8) -> 0x08
//        } else {
//            expoBytes[0] = bytes1(uint8(x));
//        }
        assembly { mstore(add(b, 32), x) }
        return b;
//        return expoBytes;
    }
}

// ============================================================
// FILE: contracts/utils/EnumerableValues.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";

/**
 * @title EnumerableValues
 * @dev Library to extend the EnumerableSet library with functions to get
 * valuesAt for a range
 */
library EnumerableValues {
    using EnumerableSet for EnumerableSet.Bytes32Set;
    using EnumerableSet for EnumerableSet.AddressSet;
    using EnumerableSet for EnumerableSet.UintSet;

    /**
     * Returns an array of bytes32 values from the given set, starting at the given
     * start index and ending before the given end index.
     *
     * @param set The set to get the values from.
     * @param start The starting index.
     * @param end The ending index.
     * @return An array of bytes32 values.
     */
    function valuesAt(EnumerableSet.Bytes32Set storage set, uint256 start, uint256 end) internal view returns (bytes32[] memory) {
        uint256 max = set.length();
        if (end > max) { end = max; }

        bytes32[] memory items = new bytes32[](end - start);
        for (uint256 i = start; i < end; i++) {
            items[i - start] = set.at(i);
        }

        return items;
    }


    /**
     * Returns an array of address values from the given set, starting at the given
     * start index and ending before the given end index.
     *
     * @param set The set to get the values from.
     * @param start The starting index.
     * @param end The ending index.
     * @return An array of address values.
     */
    function valuesAt(EnumerableSet.AddressSet storage set, uint256 start, uint256 end) internal view returns (address[] memory) {
        uint256 max = set.length();
        if (end > max) { end = max; }

        address[] memory items = new address[](end - start);
        for (uint256 i = start; i < end; i++) {
            items[i - start] = set.at(i);
        }

        return items;
    }


    /**
     * Returns an array of uint256 values from the given set, starting at the given
     * start index and ending before the given end index, the item at the end index will not be returned.
     *
     * @param set The set to get the values from.
     * @param start The starting index (inclusive, item at the start index will be returned).
     * @param end The ending index (exclusive, item at the end index will not be returned).
     * @return An array of uint256 values.
     */
    function valuesAt(EnumerableSet.UintSet storage set, uint256 start, uint256 end) internal view returns (uint256[] memory) {
        if (start >= set.length()) {
            return new uint256[](0);
        }

        uint256 max = set.length();
        if (end > max) { end = max; }

        uint256[] memory items = new uint256[](end - start);
        for (uint256 i = start; i < end; i++) {
            items[i - start] = set.at(i);
        }

        return items;
    }
}

// ============================================================
// FILE: contracts/utils/PayableMulticall.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.0;

import "../error/ErrorUtils.sol";

/**
 * @title PayableMulticall
 * @dev Contract to help call multiple functions in a single transaction
 * all function calls will have the original sender as the msg.sender value
 * IMPORTANT: in the multicall, msg.value will be the same for each delegatecall
 * extra care should be taken if msg.value is used in any of the functions of the inheriting contract
 */
abstract contract PayableMulticall {
    /**
     * @dev Receives and executes a batch of function calls on this contract.
     */
    function multicall(bytes[] calldata data) external payable virtual returns (bytes[] memory results) {
        results = new bytes[](data.length);

        for (uint256 i; i < data.length; i++) {
            (bool success, bytes memory result) = address(this).delegatecall(data[i]);

            if (!success) {
                ErrorUtils.revertWithParsedMessage(result);
            }

            results[i] = result;
        }

        return results;
    }
}

// ============================================================
// FILE: contracts/utils/Precision.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.0;

// there is a known issue with prb-math v3.x releases
// https://github.com/PaulRBerg/prb-math/issues/178
// due to this, either prb-math v2.x or v4.x versions should be used instead
import "prb-math/contracts/PRBMathUD60x18.sol";

import "@openzeppelin/contracts/utils/math/SafeCast.sol";
import "@openzeppelin/contracts/utils/math/SignedMath.sol";
import "@openzeppelin/contracts/utils/math/Math.sol";

/**
 * @title Precision
 * @dev Library for precision values and conversions
 */
library Precision {
    using SafeCast for uint256;
    using SafeCast for int256;
    using SignedMath for int256;

    uint256 public constant FLOAT_PRECISION = 10 ** 30;
    uint256 public constant FLOAT_PRECISION_SQRT = 10 ** 15;

    uint256 public constant WEI_PRECISION = 10 ** 18;
    uint256 public constant BASIS_POINTS_DIVISOR = 10000;

    uint256 public constant FLOAT_TO_WEI_DIVISOR = 10 ** 12;

    /**
     * Applies the given factor to the given value and returns the result.
     *
     * @param value The value to apply the factor to.
     * @param factor The factor to apply.
     * @return The result of applying the factor to the value.
     */
    function applyFactor(uint256 value, uint256 factor) internal pure returns (uint256) {
        return mulDiv(value, factor, FLOAT_PRECISION);
    }

    /**
     * Applies the given factor to the given value and returns the result.
     *
     * @param value The value to apply the factor to.
     * @param factor The factor to apply.
     * @return The result of applying the factor to the value.
     */
    function applyFactor(uint256 value, int256 factor) internal pure returns (int256) {
        return mulDiv(value, factor, FLOAT_PRECISION);
    }

    function applyFactor(uint256 value, int256 factor, bool roundUpMagnitude) internal pure returns (int256) {
        return mulDiv(value, factor, FLOAT_PRECISION, roundUpMagnitude);
    }

    function mulDiv(uint256 value, uint256 numerator, uint256 denominator) internal pure returns (uint256) {
        return Math.mulDiv(value, numerator, denominator);
    }

    function mulDiv(int256 value, uint256 numerator, uint256 denominator) internal pure returns (int256) {
        return mulDiv(numerator, value, denominator);
    }

    function mulDiv(uint256 value, int256 numerator, uint256 denominator) internal pure returns (int256) {
        uint256 result = mulDiv(value, numerator.abs(), denominator);
        return numerator > 0 ? result.toInt256() : -result.toInt256();
    }

    function mulDiv(uint256 value, int256 numerator, uint256 denominator, bool roundUpMagnitude) internal pure returns (int256) {
        uint256 result = mulDiv(value, numerator.abs(), denominator, roundUpMagnitude);
        return numerator > 0 ? result.toInt256() : -result.toInt256();
    }

    function mulDiv(uint256 value, uint256 numerator, uint256 denominator, bool roundUpMagnitude) internal pure returns (uint256) {
        if (roundUpMagnitude) {
            return Math.mulDiv(value, numerator, denominator, Math.Rounding.Up);
        }

        return Math.mulDiv(value, numerator, denominator);
    }

    function mulDiv(int256 value, uint256 numerator, uint256 denominator, bool roundUpMagnitude) internal pure returns (int256) {
        uint256 result = mulDiv(value.abs(), numerator, denominator, roundUpMagnitude);
        return value > 0 ? result.toInt256() : -result.toInt256();
    }

    function applyExponentFactor(
        uint256 floatValue,
        uint256 exponentFactor
    ) internal pure returns (uint256) {
        // `PRBMathUD60x18.pow` doesn't work for `x` less than one
        if (floatValue < FLOAT_PRECISION) {
            return 0;
        }

        if (exponentFactor == FLOAT_PRECISION) {
            return floatValue;
        }

        // `PRBMathUD60x18.pow` accepts 2 fixed point numbers 60x18
        // we need to convert float (30 decimals) to 60x18 (18 decimals) and then back to 30 decimals
        uint256 weiValue = PRBMathUD60x18.pow(
            floatToWei(floatValue),
            floatToWei(exponentFactor)
        );

        return weiToFloat(weiValue);
    }

    function toFactor(uint256 value, uint256 divisor, bool roundUpMagnitude) internal pure returns (uint256) {
        if (value == 0) { return 0; }

        if (roundUpMagnitude) {
            return Math.mulDiv(value, FLOAT_PRECISION, divisor, Math.Rounding.Up);
        }

        return Math.mulDiv(value, FLOAT_PRECISION, divisor);
    }

    function toFactor(uint256 value, uint256 divisor) internal pure returns (uint256) {
        return toFactor(value, divisor, false);
    }

    function toFactor(int256 value, uint256 divisor) internal pure returns (int256) {
        uint256 result = toFactor(value.abs(), divisor);
        return value > 0 ? result.toInt256() : -result.toInt256();
    }

    /**
     * Converts the given value from float to wei.
     *
     * @param value The value to convert.
     * @return The converted value in wei.
     */
    function floatToWei(uint256 value) internal pure returns (uint256) {
        return value / FLOAT_TO_WEI_DIVISOR;
    }

    /**
     * Converts the given value from wei to float.
     *
     * @param value The value to convert.
     * @return The converted value in float.
     */
    function weiToFloat(uint256 value) internal pure returns (uint256) {
        return value * FLOAT_TO_WEI_DIVISOR;
    }

    /**
     * Converts the given number of basis points to float.
     *
     * @param basisPoints The number of basis points to convert.
     * @return The converted value in float.
     */
    function basisPointsToFloat(uint256 basisPoints) internal pure returns (uint256) {
        return basisPoints * FLOAT_PRECISION / BASIS_POINTS_DIVISOR;
    }
}

// ============================================================
// FILE: contracts/utils/StringUtils.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.0;

library StringUtils {
    function compareStrings(string memory a, string memory b) internal pure returns (bool) {
        return (keccak256(abi.encodePacked((a))) == keccak256(abi.encodePacked((b))));
    }
}

// ============================================================
// FILE: contracts/withdrawal/IExecuteWithdrawalUtils.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.0;

import "../data/DataStore.sol";
import "../event/EventEmitter.sol";
import "../withdrawal/WithdrawalVault.sol";
import "../multichain/MultichainVault.sol";
import "../oracle/IOracle.sol";
import "../pricing/ISwapPricingUtils.sol";
import "../swap/ISwapHandler.sol";

import "../multichain/IMultichainTransferRouter.sol";

interface IExecuteWithdrawalUtils {
    struct ExecuteWithdrawalParams {
        DataStore dataStore;
        EventEmitter eventEmitter;
        MultichainVault multichainVault;
        IMultichainTransferRouter multichainTransferRouter;
        WithdrawalVault withdrawalVault;
        IOracle oracle;
        ISwapHandler swapHandler;
        bytes32 key;
        address keeper;
        uint256 startingGas;
        ISwapPricingUtils.SwapPricingType swapPricingType;
    }

    struct ExecuteWithdrawalResult {
        address outputToken;
        uint256 outputAmount;
        address secondaryOutputToken;
        uint256 secondaryOutputAmount;
    }
}

// ============================================================
// FILE: contracts/withdrawal/IWithdrawalUtils.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.0;

interface IWithdrawalUtils {
    /**
     * @param receiver The address that will receive the withdrawal tokens.
     * @param callbackContract The contract that will be called back.
     * @param market The market on which the withdrawal will be executed.
     * @param minLongTokenAmount The minimum amount of long tokens that must be withdrawn.
     * @param minShortTokenAmount The minimum amount of short tokens that must be withdrawn.
     * @param shouldUnwrapNativeToken Whether the native token should be unwrapped when executing the withdrawal.
     * @param executionFee The execution fee for the withdrawal.
     * @param callbackGasLimit The gas limit for calling the callback contract.
     * @param dataList a list of bytes32 values that can be used for additional data.
     */
    struct CreateWithdrawalParams {
        CreateWithdrawalParamsAddresses addresses;
        uint256 minLongTokenAmount;
        uint256 minShortTokenAmount;
        bool shouldUnwrapNativeToken;
        uint256 executionFee;
        uint256 callbackGasLimit;
        bytes32[] dataList;
    }

    struct CreateWithdrawalParamsAddresses {
        address receiver;
        address callbackContract;
        address uiFeeReceiver;
        address market;
        address[] longTokenSwapPath;
        address[] shortTokenSwapPath;
    }
}

// ============================================================
// FILE: contracts/withdrawal/Withdrawal.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.0;

/**
 * @title Withdrawal
 * @dev Struct for withdrawals
 */
library Withdrawal {
    enum WithdrawalType {
        Normal,
        Shift,
        Glv
    }

    // @dev there is a limit on the number of fields a struct can have when being passed
    // or returned as a memory variable which can cause "Stack too deep" errors
    // use sub-structs to avoid this issue
    // @param addresses address values
    // @param numbers number values
    // @param flags boolean values
    // @param _dataList a list of bytes32 values that can be used for additional data
    struct Props {
        Addresses addresses;
        Numbers numbers;
        Flags flags;
        bytes32[] _dataList;
    }

    // @param account The account to withdraw for.
    // @param receiver The address that will receive the withdrawn tokens.
    // @param callbackContract The contract that will be called back.
    // @param uiFeeReceiver The ui fee receiver.
    // @param market The market on which the withdrawal will be executed.
    // @param longTokenSwapPath The path for swapping long tokens.
    // @param shortTokenSwapPath The path for swapping short tokens.
    struct Addresses {
        address account;
        address receiver;
        address callbackContract;
        address uiFeeReceiver;
        address market;
        address[] longTokenSwapPath;
        address[] shortTokenSwapPath;
    }

    // @param marketTokenAmount The amount of market tokens that will be withdrawn.
    // @param minLongTokenAmount The minimum amount of long tokens that must be withdrawn.
    // @param minShortTokenAmount The minimum amount of short tokens that must be withdrawn.
    // @param executionFee The execution fee for the withdrawal.
    // @param callbackGasLimit The gas limit for calling the callback contract.
    // @param srcChainId The source chain id.
    struct Numbers {
        uint256 marketTokenAmount;
        uint256 minLongTokenAmount;
        uint256 minShortTokenAmount;
        uint256 updatedAtTime;
        uint256 executionFee;
        uint256 callbackGasLimit;
        uint256 srcChainId;
    }

    // @param shouldUnwrapNativeToken whether to unwrap the native token when
    struct Flags {
        bool shouldUnwrapNativeToken;
    }

    function account(Props memory props) internal pure returns (address) {
        return props.addresses.account;
    }

    function setAccount(Props memory props, address value) internal pure {
        props.addresses.account = value;
    }

    function receiver(Props memory props) internal pure returns (address) {
        return props.addresses.receiver;
    }

    function setReceiver(Props memory props, address value) internal pure {
        props.addresses.receiver = value;
    }

    function callbackContract(Props memory props) internal pure returns (address) {
        return props.addresses.callbackContract;
    }

    function setCallbackContract(Props memory props, address value) internal pure {
        props.addresses.callbackContract = value;
    }

    function uiFeeReceiver(Props memory props) internal pure returns (address) {
        return props.addresses.uiFeeReceiver;
    }

    function setUiFeeReceiver(Props memory props, address value) internal pure {
        props.addresses.uiFeeReceiver = value;
    }

    function market(Props memory props) internal pure returns (address) {
        return props.addresses.market;
    }

    function setMarket(Props memory props, address value) internal pure {
        props.addresses.market = value;
    }

    function longTokenSwapPath(Props memory props) internal pure returns (address[] memory) {
        return props.addresses.longTokenSwapPath;
    }

    function setLongTokenSwapPath(Props memory props, address[] memory value) internal pure {
        props.addresses.longTokenSwapPath = value;
    }

    function shortTokenSwapPath(Props memory props) internal pure returns (address[] memory) {
        return props.addresses.shortTokenSwapPath;
    }

    function setShortTokenSwapPath(Props memory props, address[] memory value) internal pure {
        props.addresses.shortTokenSwapPath = value;
    }

    function marketTokenAmount(Props memory props) internal pure returns (uint256) {
        return props.numbers.marketTokenAmount;
    }

    function setMarketTokenAmount(Props memory props, uint256 value) internal pure {
        props.numbers.marketTokenAmount = value;
    }

    function minLongTokenAmount(Props memory props) internal pure returns (uint256) {
        return props.numbers.minLongTokenAmount;
    }

    function setMinLongTokenAmount(Props memory props, uint256 value) internal pure {
        props.numbers.minLongTokenAmount = value;
    }

    function minShortTokenAmount(Props memory props) internal pure returns (uint256) {
        return props.numbers.minShortTokenAmount;
    }

    function setMinShortTokenAmount(Props memory props, uint256 value) internal pure {
        props.numbers.minShortTokenAmount = value;
    }

    function updatedAtTime(Props memory props) internal pure returns (uint256) {
        return props.numbers.updatedAtTime;
    }

    function setUpdatedAtTime(Props memory props, uint256 value) internal pure {
        props.numbers.updatedAtTime = value;
    }

    function executionFee(Props memory props) internal pure returns (uint256) {
        return props.numbers.executionFee;
    }

    function setExecutionFee(Props memory props, uint256 value) internal pure {
        props.numbers.executionFee = value;
    }

    function callbackGasLimit(Props memory props) internal pure returns (uint256) {
        return props.numbers.callbackGasLimit;
    }

    function setCallbackGasLimit(Props memory props, uint256 value) internal pure {
        props.numbers.callbackGasLimit = value;
    }

    function srcChainId(Props memory props) internal pure returns (uint256) {
        return props.numbers.srcChainId;
    }

    function setSrcChainId(Props memory props, uint256 value) internal pure {
        props.numbers.srcChainId = value;
    }

    function shouldUnwrapNativeToken(Props memory props) internal pure returns (bool) {
        return props.flags.shouldUnwrapNativeToken;
    }

    function setShouldUnwrapNativeToken(Props memory props, bool value) internal pure {
        props.flags.shouldUnwrapNativeToken = value;
    }

    function dataList(Props memory props) internal pure returns (bytes32[] memory) {
        return props._dataList;
    }

    function setDataList(Props memory props, bytes32[] memory value) internal pure {
        props._dataList = value;
    }
}

// ============================================================
// FILE: contracts/withdrawal/WithdrawalEventUtils.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.0;

import "../event/EventEmitter.sol";
import "../event/EventUtils.sol";
import "../utils/Cast.sol";

import "./Withdrawal.sol";
import "../pricing/ISwapPricingUtils.sol";

library WithdrawalEventUtils {
    using Withdrawal for Withdrawal.Props;

    using EventUtils for EventUtils.AddressItems;
    using EventUtils for EventUtils.UintItems;
    using EventUtils for EventUtils.IntItems;
    using EventUtils for EventUtils.BoolItems;
    using EventUtils for EventUtils.Bytes32Items;
    using EventUtils for EventUtils.BytesItems;
    using EventUtils for EventUtils.StringItems;

    function emitWithdrawalCreated(
        EventEmitter eventEmitter,
        bytes32 key,
        Withdrawal.Props memory withdrawal,
        Withdrawal.WithdrawalType withdrawalType
    ) external {
        EventUtils.EventLogData memory eventData = createEventData(withdrawal, withdrawalType);

        eventData.bytes32Items.initItems(1);
        eventData.bytes32Items.setItem(0, "key", key);

        eventEmitter.emitEventLog2(
            "WithdrawalCreated",
            key,
            Cast.toBytes32(withdrawal.account()),
            eventData
        );
    }

    function emitWithdrawalExecuted(
        EventEmitter eventEmitter,
        bytes32 key,
        address account,
        ISwapPricingUtils.SwapPricingType swapPricingType
    ) external {
        EventUtils.EventLogData memory eventData;

        eventData.bytes32Items.initItems(1);
        eventData.bytes32Items.setItem(0, "key", key);

        eventData.addressItems.initItems(1);
        eventData.addressItems.setItem(0, "account", account);

        eventData.uintItems.initItems(1);
        eventData.uintItems.setItem(0, "swapPricingType", uint256(swapPricingType));

        eventEmitter.emitEventLog2(
            "WithdrawalExecuted",
            key,
            Cast.toBytes32(account),
            eventData
        );
    }

    function emitWithdrawalCancelled(
        EventEmitter eventEmitter,
        bytes32 key,
        address account,
        string memory reason,
        bytes memory reasonBytes
    ) external {
        EventUtils.EventLogData memory eventData;

        eventData.bytes32Items.initItems(1);
        eventData.bytes32Items.setItem(0, "key", key);

        eventData.addressItems.initItems(1);
        eventData.addressItems.setItem(0, "account", account);

        eventData.stringItems.initItems(1);
        eventData.stringItems.setItem(0, "reason", reason);

        eventData.bytesItems.initItems(1);
        eventData.bytesItems.setItem(0, "reasonBytes", reasonBytes);

        eventEmitter.emitEventLog2(
            "WithdrawalCancelled",
            key,
            Cast.toBytes32(account),
            eventData
        );
    }

    function createEventData(Withdrawal.Props memory withdrawal, Withdrawal.WithdrawalType withdrawalType)
    public pure returns(EventUtils.EventLogData memory) {
        EventUtils.EventLogData memory eventData;

        eventData.addressItems.initItems(5);
        eventData.addressItems.setItem(0, "account", withdrawal.account());
        eventData.addressItems.setItem(1, "receiver", withdrawal.receiver());
        eventData.addressItems.setItem(2, "callbackContract", withdrawal.callbackContract());
        eventData.addressItems.setItem(3, "market", withdrawal.market());
        eventData.addressItems.setItem(4, "uiFeeReceiver", withdrawal.uiFeeReceiver());

        eventData.addressItems.initArrayItems(2);
        eventData.addressItems.setItem(0, "longTokenSwapPath", withdrawal.longTokenSwapPath());
        eventData.addressItems.setItem(1, "shortTokenSwapPath", withdrawal.shortTokenSwapPath());

        eventData.uintItems.initItems(8);
        eventData.uintItems.setItem(0, "marketTokenAmount", withdrawal.marketTokenAmount());
        eventData.uintItems.setItem(1, "minLongTokenAmount", withdrawal.minLongTokenAmount());
        eventData.uintItems.setItem(2, "minShortTokenAmount", withdrawal.minShortTokenAmount());
        eventData.uintItems.setItem(3, "updatedAtTime", withdrawal.updatedAtTime());
        eventData.uintItems.setItem(4, "executionFee", withdrawal.executionFee());
        eventData.uintItems.setItem(5, "callbackGasLimit", withdrawal.callbackGasLimit());
        eventData.uintItems.setItem(6, "withdrawalType", uint256(withdrawalType));
        eventData.uintItems.setItem(7, "srcChainId", withdrawal.srcChainId());

        eventData.boolItems.initItems(1);
        eventData.boolItems.setItem(0, "shouldUnwrapNativeToken", withdrawal.shouldUnwrapNativeToken());

        eventData.bytes32Items.initArrayItems(1);
        eventData.bytes32Items.setItem(0, "dataList", withdrawal.dataList());
        return eventData;
    }
}

// ============================================================
// FILE: contracts/withdrawal/WithdrawalStoreUtils.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.0;

import "../data/Keys.sol";
import "../data/DataStore.sol";

import "./Withdrawal.sol";

/**
 * @title WithdrawalStoreUtils
 * @dev Library for withdrawal storage functions
 */
library WithdrawalStoreUtils {
    using Withdrawal for Withdrawal.Props;

    bytes32 public constant ACCOUNT = keccak256(abi.encode("ACCOUNT"));
    bytes32 public constant RECEIVER = keccak256(abi.encode("RECEIVER"));
    bytes32 public constant CALLBACK_CONTRACT = keccak256(abi.encode("CALLBACK_CONTRACT"));
    bytes32 public constant UI_FEE_RECEIVER = keccak256(abi.encode("UI_FEE_RECEIVER"));
    bytes32 public constant MARKET = keccak256(abi.encode("MARKET"));
    bytes32 public constant LONG_TOKEN_SWAP_PATH = keccak256(abi.encode("LONG_TOKEN_SWAP_PATH"));
    bytes32 public constant SHORT_TOKEN_SWAP_PATH = keccak256(abi.encode("SHORT_TOKEN_SWAP_PATH"));

    bytes32 public constant MARKET_TOKEN_AMOUNT = keccak256(abi.encode("MARKET_TOKEN_AMOUNT"));
    bytes32 public constant MIN_LONG_TOKEN_AMOUNT = keccak256(abi.encode("MIN_LONG_TOKEN_AMOUNT"));
    bytes32 public constant MIN_SHORT_TOKEN_AMOUNT = keccak256(abi.encode("MIN_SHORT_TOKEN_AMOUNT"));
    bytes32 public constant UPDATED_AT_TIME = keccak256(abi.encode("UPDATED_AT_TIME"));
    bytes32 public constant EXECUTION_FEE = keccak256(abi.encode("EXECUTION_FEE"));
    bytes32 public constant CALLBACK_GAS_LIMIT = keccak256(abi.encode("CALLBACK_GAS_LIMIT"));
    bytes32 public constant SRC_CHAIN_ID = keccak256(abi.encode("SRC_CHAIN_ID"));

    bytes32 public constant SHOULD_UNWRAP_NATIVE_TOKEN = keccak256(abi.encode("SHOULD_UNWRAP_NATIVE_TOKEN"));

    bytes32 public constant DATA_LIST = keccak256(abi.encode("DATA_LIST"));

    function get(DataStore dataStore, bytes32 key) external view returns (Withdrawal.Props memory) {
        Withdrawal.Props memory withdrawal;
        if (!dataStore.containsBytes32(Keys.WITHDRAWAL_LIST, key)) {
            return withdrawal;
        }

        withdrawal.setAccount(dataStore.getAddress(
            keccak256(abi.encode(key, ACCOUNT))
        ));

        withdrawal.setReceiver(dataStore.getAddress(
            keccak256(abi.encode(key, RECEIVER))
        ));

        withdrawal.setCallbackContract(dataStore.getAddress(
            keccak256(abi.encode(key, CALLBACK_CONTRACT))
        ));

        withdrawal.setUiFeeReceiver(dataStore.getAddress(
            keccak256(abi.encode(key, UI_FEE_RECEIVER))
        ));

        withdrawal.setMarket(dataStore.getAddress(
            keccak256(abi.encode(key, MARKET))
        ));

        withdrawal.setLongTokenSwapPath(dataStore.getAddressArray(
            keccak256(abi.encode(key, LONG_TOKEN_SWAP_PATH))
        ));

        withdrawal.setShortTokenSwapPath(dataStore.getAddressArray(
            keccak256(abi.encode(key, SHORT_TOKEN_SWAP_PATH))
        ));

        withdrawal.setMarketTokenAmount(dataStore.getUint(
            keccak256(abi.encode(key, MARKET_TOKEN_AMOUNT))
        ));

        withdrawal.setMinLongTokenAmount(dataStore.getUint(
            keccak256(abi.encode(key, MIN_LONG_TOKEN_AMOUNT))
        ));

        withdrawal.setMinShortTokenAmount(dataStore.getUint(
            keccak256(abi.encode(key, MIN_SHORT_TOKEN_AMOUNT))
        ));

        withdrawal.setUpdatedAtTime(dataStore.getUint(
            keccak256(abi.encode(key, UPDATED_AT_TIME))
        ));

        withdrawal.setExecutionFee(dataStore.getUint(
            keccak256(abi.encode(key, EXECUTION_FEE))
        ));

        withdrawal.setCallbackGasLimit(dataStore.getUint(
            keccak256(abi.encode(key, CALLBACK_GAS_LIMIT))
        ));

        withdrawal.setSrcChainId(dataStore.getUint(
            keccak256(abi.encode(key, SRC_CHAIN_ID))
        ));

        withdrawal.setShouldUnwrapNativeToken(dataStore.getBool(
            keccak256(abi.encode(key, SHOULD_UNWRAP_NATIVE_TOKEN))
        ));

        withdrawal.setDataList(dataStore.getBytes32Array(
            keccak256(abi.encode(key, DATA_LIST))
        ));

        return withdrawal;
    }

    function set(DataStore dataStore, bytes32 key, Withdrawal.Props memory withdrawal) external {
        dataStore.addBytes32(
            Keys.WITHDRAWAL_LIST,
            key
        );

        dataStore.addBytes32(
            Keys.accountWithdrawalListKey(withdrawal.account()),
            key
        );

        dataStore.setAddress(
            keccak256(abi.encode(key, ACCOUNT)),
            withdrawal.account()
        );

        dataStore.setAddress(
            keccak256(abi.encode(key, RECEIVER)),
            withdrawal.receiver()
        );

        dataStore.setAddress(
            keccak256(abi.encode(key, CALLBACK_CONTRACT)),
            withdrawal.callbackContract()
        );

        dataStore.setAddress(
            keccak256(abi.encode(key, UI_FEE_RECEIVER)),
            withdrawal.uiFeeReceiver()
        );

        dataStore.setAddress(
            keccak256(abi.encode(key, MARKET)),
            withdrawal.market()
        );

        dataStore.setAddressArray(
            keccak256(abi.encode(key, LONG_TOKEN_SWAP_PATH)),
            withdrawal.longTokenSwapPath()
        );

        dataStore.setAddressArray(
            keccak256(abi.encode(key, SHORT_TOKEN_SWAP_PATH)),
            withdrawal.shortTokenSwapPath()
        );

        dataStore.setUint(
            keccak256(abi.encode(key, MARKET_TOKEN_AMOUNT)),
            withdrawal.marketTokenAmount()
        );

        dataStore.setUint(
            keccak256(abi.encode(key, MIN_LONG_TOKEN_AMOUNT)),
            withdrawal.minLongTokenAmount()
        );

        dataStore.setUint(
            keccak256(abi.encode(key, MIN_SHORT_TOKEN_AMOUNT)),
            withdrawal.minShortTokenAmount()
        );

        dataStore.setUint(
            keccak256(abi.encode(key, UPDATED_AT_TIME)),
            withdrawal.updatedAtTime()
        );

        dataStore.setUint(
            keccak256(abi.encode(key, EXECUTION_FEE)),
            withdrawal.executionFee()
        );

        dataStore.setUint(
            keccak256(abi.encode(key, CALLBACK_GAS_LIMIT)),
            withdrawal.callbackGasLimit()
        );

        dataStore.setUint(
            keccak256(abi.encode(key, SRC_CHAIN_ID)),
            withdrawal.srcChainId()
        );

        dataStore.setBool(
            keccak256(abi.encode(key, SHOULD_UNWRAP_NATIVE_TOKEN)),
            withdrawal.shouldUnwrapNativeToken()
        );

        dataStore.setBytes32Array(
            keccak256(abi.encode(key, DATA_LIST)),
            withdrawal.dataList()
        );
    }

    function remove(DataStore dataStore, bytes32 key, address account) external {
        if (!dataStore.containsBytes32(Keys.WITHDRAWAL_LIST, key)) {
            revert Errors.WithdrawalNotFound(key);
        }

        dataStore.removeBytes32(
            Keys.WITHDRAWAL_LIST,
            key
        );

        dataStore.removeBytes32(
            Keys.accountWithdrawalListKey(account),
            key
        );

        dataStore.removeAddress(
            keccak256(abi.encode(key, ACCOUNT))
        );

        dataStore.removeAddress(
            keccak256(abi.encode(key, RECEIVER))
        );

        dataStore.removeAddress(
            keccak256(abi.encode(key, CALLBACK_CONTRACT))
        );

        dataStore.removeAddress(
            keccak256(abi.encode(key, UI_FEE_RECEIVER))
        );

        dataStore.removeAddress(
            keccak256(abi.encode(key, MARKET))
        );

        dataStore.removeAddressArray(
            keccak256(abi.encode(key, LONG_TOKEN_SWAP_PATH))
        );

        dataStore.removeAddressArray(
            keccak256(abi.encode(key, SHORT_TOKEN_SWAP_PATH))
        );

        dataStore.removeUint(
            keccak256(abi.encode(key, MARKET_TOKEN_AMOUNT))
        );

        dataStore.removeUint(
            keccak256(abi.encode(key, MIN_LONG_TOKEN_AMOUNT))
        );

        dataStore.removeUint(
            keccak256(abi.encode(key, MIN_SHORT_TOKEN_AMOUNT))
        );

        dataStore.removeUint(
            keccak256(abi.encode(key, UPDATED_AT_TIME))
        );

        dataStore.removeUint(
            keccak256(abi.encode(key, EXECUTION_FEE))
        );

        dataStore.removeUint(
            keccak256(abi.encode(key, SRC_CHAIN_ID))
        );

        dataStore.removeUint(
            keccak256(abi.encode(key, CALLBACK_GAS_LIMIT))
        );

        dataStore.removeBool(
            keccak256(abi.encode(key, SHOULD_UNWRAP_NATIVE_TOKEN))
        );

        dataStore.removeBytes32Array(
            keccak256(abi.encode(key, DATA_LIST))
        );
    }

    function getWithdrawalCount(DataStore dataStore) internal view returns (uint256) {
        return dataStore.getBytes32Count(Keys.WITHDRAWAL_LIST);
    }

    function getWithdrawalKeys(DataStore dataStore, uint256 start, uint256 end) internal view returns (bytes32[] memory) {
        return dataStore.getBytes32ValuesAt(Keys.WITHDRAWAL_LIST, start, end);
    }

    function getAccountWithdrawalCount(DataStore dataStore, address account) internal view returns (uint256) {
        return dataStore.getBytes32Count(Keys.accountWithdrawalListKey(account));
    }

    function getAccountWithdrawalKeys(DataStore dataStore, address account, uint256 start, uint256 end) internal view returns (bytes32[] memory) {
        return dataStore.getBytes32ValuesAt(Keys.accountWithdrawalListKey(account), start, end);
    }
}

// ============================================================
// FILE: contracts/withdrawal/WithdrawalVault.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.0;

import "../bank/StrictBank.sol";

// @title WithdrawalVault
// @dev Vault for withdrawals
contract WithdrawalVault is StrictBank {
    constructor(RoleStore _roleStore, DataStore _dataStore) StrictBank(_roleStore, _dataStore) {}
}

// ============================================================
// FILE: prb-math/contracts/PRBMath.sol
// ============================================================

// SPDX-License-Identifier: Unlicense
pragma solidity >=0.8.4;

/// @notice Emitted when the result overflows uint256.
error PRBMath__MulDivFixedPointOverflow(uint256 prod1);

/// @notice Emitted when the result overflows uint256.
error PRBMath__MulDivOverflow(uint256 prod1, uint256 denominator);

/// @notice Emitted when one of the inputs is type(int256).min.
error PRBMath__MulDivSignedInputTooSmall();

/// @notice Emitted when the intermediary absolute result overflows int256.
error PRBMath__MulDivSignedOverflow(uint256 rAbs);

/// @notice Emitted when the input is MIN_SD59x18.
error PRBMathSD59x18__AbsInputTooSmall();

/// @notice Emitted when ceiling a number overflows SD59x18.
error PRBMathSD59x18__CeilOverflow(int256 x);

/// @notice Emitted when one of the inputs is MIN_SD59x18.
error PRBMathSD59x18__DivInputTooSmall();

/// @notice Emitted when one of the intermediary unsigned results overflows SD59x18.
error PRBMathSD59x18__DivOverflow(uint256 rAbs);

/// @notice Emitted when the input is greater than 133.084258667509499441.
error PRBMathSD59x18__ExpInputTooBig(int256 x);

/// @notice Emitted when the input is greater than 192.
error PRBMathSD59x18__Exp2InputTooBig(int256 x);

/// @notice Emitted when flooring a number underflows SD59x18.
error PRBMathSD59x18__FloorUnderflow(int256 x);

/// @notice Emitted when converting a basic integer to the fixed-point format overflows SD59x18.
error PRBMathSD59x18__FromIntOverflow(int256 x);

/// @notice Emitted when converting a basic integer to the fixed-point format underflows SD59x18.
error PRBMathSD59x18__FromIntUnderflow(int256 x);

/// @notice Emitted when the product of the inputs is negative.
error PRBMathSD59x18__GmNegativeProduct(int256 x, int256 y);

/// @notice Emitted when multiplying the inputs overflows SD59x18.
error PRBMathSD59x18__GmOverflow(int256 x, int256 y);

/// @notice Emitted when the input is less than or equal to zero.
error PRBMathSD59x18__LogInputTooSmall(int256 x);

/// @notice Emitted when one of the inputs is MIN_SD59x18.
error PRBMathSD59x18__MulInputTooSmall();

/// @notice Emitted when the intermediary absolute result overflows SD59x18.
error PRBMathSD59x18__MulOverflow(uint256 rAbs);

/// @notice Emitted when the intermediary absolute result overflows SD59x18.
error PRBMathSD59x18__PowuOverflow(uint256 rAbs);

/// @notice Emitted when the input is negative.
error PRBMathSD59x18__SqrtNegativeInput(int256 x);

/// @notice Emitted when the calculating the square root overflows SD59x18.
error PRBMathSD59x18__SqrtOverflow(int256 x);

/// @notice Emitted when addition overflows UD60x18.
error PRBMathUD60x18__AddOverflow(uint256 x, uint256 y);

/// @notice Emitted when ceiling a number overflows UD60x18.
error PRBMathUD60x18__CeilOverflow(uint256 x);

/// @notice Emitted when the input is greater than 133.084258667509499441.
error PRBMathUD60x18__ExpInputTooBig(uint256 x);

/// @notice Emitted when the input is greater than 192.
error PRBMathUD60x18__Exp2InputTooBig(uint256 x);

/// @notice Emitted when converting a basic integer to the fixed-point format format overflows UD60x18.
error PRBMathUD60x18__FromUintOverflow(uint256 x);

/// @notice Emitted when multiplying the inputs overflows UD60x18.
error PRBMathUD60x18__GmOverflow(uint256 x, uint256 y);

/// @notice Emitted when the input is less than 1.
error PRBMathUD60x18__LogInputTooSmall(uint256 x);

/// @notice Emitted when the calculating the square root overflows UD60x18.
error PRBMathUD60x18__SqrtOverflow(uint256 x);

/// @notice Emitted when subtraction underflows UD60x18.
error PRBMathUD60x18__SubUnderflow(uint256 x, uint256 y);

/// @dev Common mathematical functions used in both PRBMathSD59x18 and PRBMathUD60x18. Note that this shared library
/// does not always assume the signed 59.18-decimal fixed-point or the unsigned 60.18-decimal fixed-point
/// representation. When it does not, it is explicitly mentioned in the NatSpec documentation.
library PRBMath {
    /// STRUCTS ///

    struct SD59x18 {
        int256 value;
    }

    struct UD60x18 {
        uint256 value;
    }

    /// STORAGE ///

    /// @dev How many trailing decimals can be represented.
    uint256 internal constant SCALE = 1e18;

    /// @dev Largest power of two divisor of SCALE.
    uint256 internal constant SCALE_LPOTD = 262144;

    /// @dev SCALE inverted mod 2^256.
    uint256 internal constant SCALE_INVERSE =
        78156646155174841979727994598816262306175212592076161876661_508869554232690281;

    /// FUNCTIONS ///

    /// @notice Calculates the binary exponent of x using the binary fraction method.
    /// @dev Has to use 192.64-bit fixed-point numbers.
    /// See https://ethereum.stackexchange.com/a/96594/24693.
    /// @param x The exponent as an unsigned 192.64-bit fixed-point number.
    /// @return result The result as an unsigned 60.18-decimal fixed-point number.
    function exp2(uint256 x) internal pure returns (uint256 result) {
        unchecked {
            // Start from 0.5 in the 192.64-bit fixed-point format.
            result = 0x800000000000000000000000000000000000000000000000;

            // Multiply the result by root(2, 2^-i) when the bit at position i is 1. None of the intermediary results overflows
            // because the initial result is 2^191 and all magic factors are less than 2^65.
            if (x & 0x8000000000000000 > 0) {
                result = (result * 0x16A09E667F3BCC909) >> 64;
            }
            if (x & 0x4000000000000000 > 0) {
                result = (result * 0x1306FE0A31B7152DF) >> 64;
            }
            if (x & 0x2000000000000000 > 0) {
                result = (result * 0x1172B83C7D517ADCE) >> 64;
            }
            if (x & 0x1000000000000000 > 0) {
                result = (result * 0x10B5586CF9890F62A) >> 64;
            }
            if (x & 0x800000000000000 > 0) {
                result = (result * 0x1059B0D31585743AE) >> 64;
            }
            if (x & 0x400000000000000 > 0) {
                result = (result * 0x102C9A3E778060EE7) >> 64;
            }
            if (x & 0x200000000000000 > 0) {
                result = (result * 0x10163DA9FB33356D8) >> 64;
            }
            if (x & 0x100000000000000 > 0) {
                result = (result * 0x100B1AFA5ABCBED61) >> 64;
            }
            if (x & 0x80000000000000 > 0) {
                result = (result * 0x10058C86DA1C09EA2) >> 64;
            }
            if (x & 0x40000000000000 > 0) {
                result = (result * 0x1002C605E2E8CEC50) >> 64;
            }
            if (x & 0x20000000000000 > 0) {
                result = (result * 0x100162F3904051FA1) >> 64;
            }
            if (x & 0x10000000000000 > 0) {
                result = (result * 0x1000B175EFFDC76BA) >> 64;
            }
            if (x & 0x8000000000000 > 0) {
                result = (result * 0x100058BA01FB9F96D) >> 64;
            }
            if (x & 0x4000000000000 > 0) {
                result = (result * 0x10002C5CC37DA9492) >> 64;
            }
            if (x & 0x2000000000000 > 0) {
                result = (result * 0x1000162E525EE0547) >> 64;
            }
            if (x & 0x1000000000000 > 0) {
                result = (result * 0x10000B17255775C04) >> 64;
            }
            if (x & 0x800000000000 > 0) {
                result = (result * 0x1000058B91B5BC9AE) >> 64;
            }
            if (x & 0x400000000000 > 0) {
                result = (result * 0x100002C5C89D5EC6D) >> 64;
            }
            if (x & 0x200000000000 > 0) {
                result = (result * 0x10000162E43F4F831) >> 64;
            }
            if (x & 0x100000000000 > 0) {
                result = (result * 0x100000B1721BCFC9A) >> 64;
            }
            if (x & 0x80000000000 > 0) {
                result = (result * 0x10000058B90CF1E6E) >> 64;
            }
            if (x & 0x40000000000 > 0) {
                result = (result * 0x1000002C5C863B73F) >> 64;
            }
            if (x & 0x20000000000 > 0) {
                result = (result * 0x100000162E430E5A2) >> 64;
            }
            if (x & 0x10000000000 > 0) {
                result = (result * 0x1000000B172183551) >> 64;
            }
            if (x & 0x8000000000 > 0) {
                result = (result * 0x100000058B90C0B49) >> 64;
            }
            if (x & 0x4000000000 > 0) {
                result = (result * 0x10000002C5C8601CC) >> 64;
            }
            if (x & 0x2000000000 > 0) {
                result = (result * 0x1000000162E42FFF0) >> 64;
            }
            if (x & 0x1000000000 > 0) {
                result = (result * 0x10000000B17217FBB) >> 64;
            }
            if (x & 0x800000000 > 0) {
                result = (result * 0x1000000058B90BFCE) >> 64;
            }
            if (x & 0x400000000 > 0) {
                result = (result * 0x100000002C5C85FE3) >> 64;
            }
            if (x & 0x200000000 > 0) {
                result = (result * 0x10000000162E42FF1) >> 64;
            }
            if (x & 0x100000000 > 0) {
                result = (result * 0x100000000B17217F8) >> 64;
            }
            if (x & 0x80000000 > 0) {
                result = (result * 0x10000000058B90BFC) >> 64;
            }
            if (x & 0x40000000 > 0) {
                result = (result * 0x1000000002C5C85FE) >> 64;
            }
            if (x & 0x20000000 > 0) {
                result = (result * 0x100000000162E42FF) >> 64;
            }
            if (x & 0x10000000 > 0) {
                result = (result * 0x1000000000B17217F) >> 64;
            }
            if (x & 0x8000000 > 0) {
                result = (result * 0x100000000058B90C0) >> 64;
            }
            if (x & 0x4000000 > 0) {
                result = (result * 0x10000000002C5C860) >> 64;
            }
            if (x & 0x2000000 > 0) {
                result = (result * 0x1000000000162E430) >> 64;
            }
            if (x & 0x1000000 > 0) {
                result = (result * 0x10000000000B17218) >> 64;
            }
            if (x & 0x800000 > 0) {
                result = (result * 0x1000000000058B90C) >> 64;
            }
            if (x & 0x400000 > 0) {
                result = (result * 0x100000000002C5C86) >> 64;
            }
            if (x & 0x200000 > 0) {
                result = (result * 0x10000000000162E43) >> 64;
            }
            if (x & 0x100000 > 0) {
                result = (result * 0x100000000000B1721) >> 64;
            }
            if (x & 0x80000 > 0) {
                result = (result * 0x10000000000058B91) >> 64;
            }
            if (x & 0x40000 > 0) {
                result = (result * 0x1000000000002C5C8) >> 64;
            }
            if (x & 0x20000 > 0) {
                result = (result * 0x100000000000162E4) >> 64;
            }
            if (x & 0x10000 > 0) {
                result = (result * 0x1000000000000B172) >> 64;
            }
            if (x & 0x8000 > 0) {
                result = (result * 0x100000000000058B9) >> 64;
            }
            if (x & 0x4000 > 0) {
                result = (result * 0x10000000000002C5D) >> 64;
            }
            if (x & 0x2000 > 0) {
                result = (result * 0x1000000000000162E) >> 64;
            }
            if (x & 0x1000 > 0) {
                result = (result * 0x10000000000000B17) >> 64;
            }
            if (x & 0x800 > 0) {
                result = (result * 0x1000000000000058C) >> 64;
            }
            if (x & 0x400 > 0) {
                result = (result * 0x100000000000002C6) >> 64;
            }
            if (x & 0x200 > 0) {
                result = (result * 0x10000000000000163) >> 64;
            }
            if (x & 0x100 > 0) {
                result = (result * 0x100000000000000B1) >> 64;
            }
            if (x & 0x80 > 0) {
                result = (result * 0x10000000000000059) >> 64;
            }
            if (x & 0x40 > 0) {
                result = (result * 0x1000000000000002C) >> 64;
            }
            if (x & 0x20 > 0) {
                result = (result * 0x10000000000000016) >> 64;
            }
            if (x & 0x10 > 0) {
                result = (result * 0x1000000000000000B) >> 64;
            }
            if (x & 0x8 > 0) {
                result = (result * 0x10000000000000006) >> 64;
            }
            if (x & 0x4 > 0) {
                result = (result * 0x10000000000000003) >> 64;
            }
            if (x & 0x2 > 0) {
                result = (result * 0x10000000000000001) >> 64;
            }
            if (x & 0x1 > 0) {
                result = (result * 0x10000000000000001) >> 64;
            }

            // We're doing two things at the same time:
            //
            //   1. Multiply the result by 2^n + 1, where "2^n" is the integer part and the one is added to account for
            //      the fact that we initially set the result to 0.5. This is accomplished by subtracting from 191
            //      rather than 192.
            //   2. Convert the result to the unsigned 60.18-decimal fixed-point format.
            //
            // This works because 2^(191-ip) = 2^ip / 2^191, where "ip" is the integer part "2^n".
            result *= SCALE;
            result >>= (191 - (x >> 64));
        }
    }

    /// @notice Finds the zero-based index of the first one in the binary representation of x.
    /// @dev See the note on msb in the "Find First Set" Wikipedia article https://en.wikipedia.org/wiki/Find_first_set
    /// @param x The uint256 number for which to find the index of the most significant bit.
    /// @return msb The index of the most significant bit as an uint256.
    function mostSignificantBit(uint256 x) internal pure returns (uint256 msb) {
        if (x >= 2**128) {
            x >>= 128;
            msb += 128;
        }
        if (x >= 2**64) {
            x >>= 64;
            msb += 64;
        }
        if (x >= 2**32) {
            x >>= 32;
            msb += 32;
        }
        if (x >= 2**16) {
            x >>= 16;
            msb += 16;
        }
        if (x >= 2**8) {
            x >>= 8;
            msb += 8;
        }
        if (x >= 2**4) {
            x >>= 4;
            msb += 4;
        }
        if (x >= 2**2) {
            x >>= 2;
            msb += 2;
        }
        if (x >= 2**1) {
            // No need to shift x any more.
            msb += 1;
        }
    }

    /// @notice Calculates floor(x*y÷denominator) with full precision.
    ///
    /// @dev Credit to Remco Bloemen under MIT license https://xn--2-umb.com/21/muldiv.
    ///
    /// Requirements:
    /// - The denominator cannot be zero.
    /// - The result must fit within uint256.
    ///
    /// Caveats:
    /// - This function does not work with fixed-point numbers.
    ///
    /// @param x The multiplicand as an uint256.
    /// @param y The multiplier as an uint256.
    /// @param denominator The divisor as an uint256.
    /// @return result The result as an uint256.
    function mulDiv(
        uint256 x,
        uint256 y,
        uint256 denominator
    ) internal pure returns (uint256 result) {
        // 512-bit multiply [prod1 prod0] = x * y. Compute the product mod 2^256 and mod 2^256 - 1, then use
        // use the Chinese Remainder Theorem to reconstruct the 512 bit result. The result is stored in two 256
        // variables such that product = prod1 * 2^256 + prod0.
        uint256 prod0; // Least significant 256 bits of the product
        uint256 prod1; // Most significant 256 bits of the product
        assembly {
            let mm := mulmod(x, y, not(0))
            prod0 := mul(x, y)
            prod1 := sub(sub(mm, prod0), lt(mm, prod0))
        }

        // Handle non-overflow cases, 256 by 256 division.
        if (prod1 == 0) {
            unchecked {
                result = prod0 / denominator;
            }
            return result;
        }

        // Make sure the result is less than 2^256. Also prevents denominator == 0.
        if (prod1 >= denominator) {
            revert PRBMath__MulDivOverflow(prod1, denominator);
        }

        ///////////////////////////////////////////////
        // 512 by 256 division.
        ///////////////////////////////////////////////

        // Make division exact by subtracting the remainder from [prod1 prod0].
        uint256 remainder;
        assembly {
            // Compute remainder using mulmod.
            remainder := mulmod(x, y, denominator)

            // Subtract 256 bit number from 512 bit number.
            prod1 := sub(prod1, gt(remainder, prod0))
            prod0 := sub(prod0, remainder)
        }

        // Factor powers of two out of denominator and compute largest power of two divisor of denominator. Always >= 1.
        // See https://cs.stackexchange.com/q/138556/92363.
        unchecked {
            // Does not overflow because the denominator cannot be zero at this stage in the function.
            uint256 lpotdod = denominator & (~denominator + 1);
            assembly {
                // Divide denominator by lpotdod.
                denominator := div(denominator, lpotdod)

                // Divide [prod1 prod0] by lpotdod.
                prod0 := div(prod0, lpotdod)

                // Flip lpotdod such that it is 2^256 / lpotdod. If lpotdod is zero, then it becomes one.
                lpotdod := add(div(sub(0, lpotdod), lpotdod), 1)
            }

            // Shift in bits from prod1 into prod0.
            prod0 |= prod1 * lpotdod;

            // Invert denominator mod 2^256. Now that denominator is an odd number, it has an inverse modulo 2^256 such
            // that denominator * inv = 1 mod 2^256. Compute the inverse by starting with a seed that is correct for
            // four bits. That is, denominator * inv = 1 mod 2^4.
            uint256 inverse = (3 * denominator) ^ 2;

            // Use the Newton-Raphson iteration to improve the precision. Thanks to Hensel's lifting lemma, this also works
            // in modular arithmetic, doubling the correct bits in each step.
            inverse *= 2 - denominator * inverse; // inverse mod 2^8
            inverse *= 2 - denominator * inverse; // inverse mod 2^16
            inverse *= 2 - denominator * inverse; // inverse mod 2^32
            inverse *= 2 - denominator * inverse; // inverse mod 2^64
            inverse *= 2 - denominator * inverse; // inverse mod 2^128
            inverse *= 2 - denominator * inverse; // inverse mod 2^256

            // Because the division is now exact we can divide by multiplying with the modular inverse of denominator.
            // This will give us the correct result modulo 2^256. Since the preconditions guarantee that the outcome is
            // less than 2^256, this is the final result. We don't need to compute the high bits of the result and prod1
            // is no longer required.
            result = prod0 * inverse;
            return result;
        }
    }

    /// @notice Calculates floor(x*y÷1e18) with full precision.
    ///
    /// @dev Variant of "mulDiv" with constant folding, i.e. in which the denominator is always 1e18. Before returning the
    /// final result, we add 1 if (x * y) % SCALE >= HALF_SCALE. Without this, 6.6e-19 would be truncated to 0 instead of
    /// being rounded to 1e-18.  See "Listing 6" and text above it at https://accu.org/index.php/journals/1717.
    ///
    /// Requirements:
    /// - The result must fit within uint256.
    ///
    /// Caveats:
    /// - The body is purposely left uncommented; see the NatSpec comments in "PRBMath.mulDiv" to understand how this works.
    /// - It is assumed that the result can never be type(uint256).max when x and y solve the following two equations:
    ///     1. x * y = type(uint256).max * SCALE
    ///     2. (x * y) % SCALE >= SCALE / 2
    ///
    /// @param x The multiplicand as an unsigned 60.18-decimal fixed-point number.
    /// @param y The multiplier as an unsigned 60.18-decimal fixed-point number.
    /// @return result The result as an unsigned 60.18-decimal fixed-point number.
    function mulDivFixedPoint(uint256 x, uint256 y) internal pure returns (uint256 result) {
        uint256 prod0;
        uint256 prod1;
        assembly {
            let mm := mulmod(x, y, not(0))
            prod0 := mul(x, y)
            prod1 := sub(sub(mm, prod0), lt(mm, prod0))
        }

        if (prod1 >= SCALE) {
            revert PRBMath__MulDivFixedPointOverflow(prod1);
        }

        uint256 remainder;
        uint256 roundUpUnit;
        assembly {
            remainder := mulmod(x, y, SCALE)
            roundUpUnit := gt(remainder, 499999999999999999)
        }

        if (prod1 == 0) {
            unchecked {
                result = (prod0 / SCALE) + roundUpUnit;
                return result;
            }
        }

        assembly {
            result := add(
                mul(
                    or(
                        div(sub(prod0, remainder), SCALE_LPOTD),
                        mul(sub(prod1, gt(remainder, prod0)), add(div(sub(0, SCALE_LPOTD), SCALE_LPOTD), 1))
                    ),
                    SCALE_INVERSE
                ),
                roundUpUnit
            )
        }
    }

    /// @notice Calculates floor(x*y÷denominator) with full precision.
    ///
    /// @dev An extension of "mulDiv" for signed numbers. Works by computing the signs and the absolute values separately.
    ///
    /// Requirements:
    /// - None of the inputs can be type(int256).min.
    /// - The result must fit within int256.
    ///
    /// @param x The multiplicand as an int256.
    /// @param y The multiplier as an int256.
    /// @param denominator The divisor as an int256.
    /// @return result The result as an int256.
    function mulDivSigned(
        int256 x,
        int256 y,
        int256 denominator
    ) internal pure returns (int256 result) {
        if (x == type(int256).min || y == type(int256).min || denominator == type(int256).min) {
            revert PRBMath__MulDivSignedInputTooSmall();
        }

        // Get hold of the absolute values of x, y and the denominator.
        uint256 ax;
        uint256 ay;
        uint256 ad;
        unchecked {
            ax = x < 0 ? uint256(-x) : uint256(x);
            ay = y < 0 ? uint256(-y) : uint256(y);
            ad = denominator < 0 ? uint256(-denominator) : uint256(denominator);
        }

        // Compute the absolute value of (x*y)÷denominator. The result must fit within int256.
        uint256 rAbs = mulDiv(ax, ay, ad);
        if (rAbs > uint256(type(int256).max)) {
            revert PRBMath__MulDivSignedOverflow(rAbs);
        }

        // Get the signs of x, y and the denominator.
        uint256 sx;
        uint256 sy;
        uint256 sd;
        assembly {
            sx := sgt(x, sub(0, 1))
            sy := sgt(y, sub(0, 1))
            sd := sgt(denominator, sub(0, 1))
        }

        // XOR over sx, sy and sd. This is checking whether there are one or three negative signs in the inputs.
        // If yes, the result should be negative.
        result = sx ^ sy ^ sd == 0 ? -int256(rAbs) : int256(rAbs);
    }

    /// @notice Calculates the square root of x, rounding down.
    /// @dev Uses the Babylonian method https://en.wikipedia.org/wiki/Methods_of_computing_square_roots#Babylonian_method.
    ///
    /// Caveats:
    /// - This function does not work with fixed-point numbers.
    ///
    /// @param x The uint256 number for which to calculate the square root.
    /// @return result The result as an uint256.
    function sqrt(uint256 x) internal pure returns (uint256 result) {
        if (x == 0) {
            return 0;
        }

        // Set the initial guess to the least power of two that is greater than or equal to sqrt(x).
        uint256 xAux = uint256(x);
        result = 1;
        if (xAux >= 0x100000000000000000000000000000000) {
            xAux >>= 128;
            result <<= 64;
        }
        if (xAux >= 0x10000000000000000) {
            xAux >>= 64;
            result <<= 32;
        }
        if (xAux >= 0x100000000) {
            xAux >>= 32;
            result <<= 16;
        }
        if (xAux >= 0x10000) {
            xAux >>= 16;
            result <<= 8;
        }
        if (xAux >= 0x100) {
            xAux >>= 8;
            result <<= 4;
        }
        if (xAux >= 0x10) {
            xAux >>= 4;
            result <<= 2;
        }
        if (xAux >= 0x8) {
            result <<= 1;
        }

        // The operations can never overflow because the result is max 2^127 when it enters this block.
        unchecked {
            result = (result + x / result) >> 1;
            result = (result + x / result) >> 1;
            result = (result + x / result) >> 1;
            result = (result + x / result) >> 1;
            result = (result + x / result) >> 1;
            result = (result + x / result) >> 1;
            result = (result + x / result) >> 1; // Seven iterations should be enough
            uint256 roundedDownResult = x / result;
            return result >= roundedDownResult ? roundedDownResult : result;
        }
    }
}

// ============================================================
// FILE: prb-math/contracts/PRBMathUD60x18.sol
// ============================================================

// SPDX-License-Identifier: Unlicense
pragma solidity >=0.8.4;

import "./PRBMath.sol";

/// @title PRBMathUD60x18
/// @author Paul Razvan Berg
/// @notice Smart contract library for advanced fixed-point math that works with uint256 numbers considered to have 18
/// trailing decimals. We call this number representation unsigned 60.18-decimal fixed-point, since there can be up to 60
/// digits in the integer part and up to 18 decimals in the fractional part. The numbers are bound by the minimum and the
/// maximum values permitted by the Solidity type uint256.
library PRBMathUD60x18 {
    /// @dev Half the SCALE number.
    uint256 internal constant HALF_SCALE = 5e17;

    /// @dev log2(e) as an unsigned 60.18-decimal fixed-point number.
    uint256 internal constant LOG2_E = 1_442695040888963407;

    /// @dev The maximum value an unsigned 60.18-decimal fixed-point number can have.
    uint256 internal constant MAX_UD60x18 =
        115792089237316195423570985008687907853269984665640564039457_584007913129639935;

    /// @dev The maximum whole value an unsigned 60.18-decimal fixed-point number can have.
    uint256 internal constant MAX_WHOLE_UD60x18 =
        115792089237316195423570985008687907853269984665640564039457_000000000000000000;

    /// @dev How many trailing decimals can be represented.
    uint256 internal constant SCALE = 1e18;

    /// @notice Calculates the arithmetic average of x and y, rounding down.
    /// @param x The first operand as an unsigned 60.18-decimal fixed-point number.
    /// @param y The second operand as an unsigned 60.18-decimal fixed-point number.
    /// @return result The arithmetic average as an unsigned 60.18-decimal fixed-point number.
    function avg(uint256 x, uint256 y) internal pure returns (uint256 result) {
        // The operations can never overflow.
        unchecked {
            // The last operand checks if both x and y are odd and if that is the case, we add 1 to the result. We need
            // to do this because if both numbers are odd, the 0.5 remainder gets truncated twice.
            result = (x >> 1) + (y >> 1) + (x & y & 1);
        }
    }

    /// @notice Yields the least unsigned 60.18 decimal fixed-point number greater than or equal to x.
    ///
    /// @dev Optimized for fractional value inputs, because for every whole value there are (1e18 - 1) fractional counterparts.
    /// See https://en.wikipedia.org/wiki/Floor_and_ceiling_functions.
    ///
    /// Requirements:
    /// - x must be less than or equal to MAX_WHOLE_UD60x18.
    ///
    /// @param x The unsigned 60.18-decimal fixed-point number to ceil.
    /// @param result The least integer greater than or equal to x, as an unsigned 60.18-decimal fixed-point number.
    function ceil(uint256 x) internal pure returns (uint256 result) {
        if (x > MAX_WHOLE_UD60x18) {
            revert PRBMathUD60x18__CeilOverflow(x);
        }
        assembly {
            // Equivalent to "x % SCALE" but faster.
            let remainder := mod(x, SCALE)

            // Equivalent to "SCALE - remainder" but faster.
            let delta := sub(SCALE, remainder)

            // Equivalent to "x + delta * (remainder > 0 ? 1 : 0)" but faster.
            result := add(x, mul(delta, gt(remainder, 0)))
        }
    }

    /// @notice Divides two unsigned 60.18-decimal fixed-point numbers, returning a new unsigned 60.18-decimal fixed-point number.
    ///
    /// @dev Uses mulDiv to enable overflow-safe multiplication and division.
    ///
    /// Requirements:
    /// - The denominator cannot be zero.
    ///
    /// @param x The numerator as an unsigned 60.18-decimal fixed-point number.
    /// @param y The denominator as an unsigned 60.18-decimal fixed-point number.
    /// @param result The quotient as an unsigned 60.18-decimal fixed-point number.
    function div(uint256 x, uint256 y) internal pure returns (uint256 result) {
        result = PRBMath.mulDiv(x, SCALE, y);
    }

    /// @notice Returns Euler's number as an unsigned 60.18-decimal fixed-point number.
    /// @dev See https://en.wikipedia.org/wiki/E_(mathematical_constant).
    function e() internal pure returns (uint256 result) {
        result = 2_718281828459045235;
    }

    /// @notice Calculates the natural exponent of x.
    ///
    /// @dev Based on the insight that e^x = 2^(x * log2(e)).
    ///
    /// Requirements:
    /// - All from "log2".
    /// - x must be less than 133.084258667509499441.
    ///
    /// @param x The exponent as an unsigned 60.18-decimal fixed-point number.
    /// @return result The result as an unsigned 60.18-decimal fixed-point number.
    function exp(uint256 x) internal pure returns (uint256 result) {
        // Without this check, the value passed to "exp2" would be greater than 192.
        if (x >= 133_084258667509499441) {
            revert PRBMathUD60x18__ExpInputTooBig(x);
        }

        // Do the fixed-point multiplication inline to save gas.
        unchecked {
            uint256 doubleScaleProduct = x * LOG2_E;
            result = exp2((doubleScaleProduct + HALF_SCALE) / SCALE);
        }
    }

    /// @notice Calculates the binary exponent of x using the binary fraction method.
    ///
    /// @dev See https://ethereum.stackexchange.com/q/79903/24693.
    ///
    /// Requirements:
    /// - x must be 192 or less.
    /// - The result must fit within MAX_UD60x18.
    ///
    /// @param x The exponent as an unsigned 60.18-decimal fixed-point number.
    /// @return result The result as an unsigned 60.18-decimal fixed-point number.
    function exp2(uint256 x) internal pure returns (uint256 result) {
        // 2^192 doesn't fit within the 192.64-bit format used internally in this function.
        if (x >= 192e18) {
            revert PRBMathUD60x18__Exp2InputTooBig(x);
        }

        unchecked {
            // Convert x to the 192.64-bit fixed-point format.
            uint256 x192x64 = (x << 64) / SCALE;

            // Pass x to the PRBMath.exp2 function, which uses the 192.64-bit fixed-point number representation.
            result = PRBMath.exp2(x192x64);
        }
    }

    /// @notice Yields the greatest unsigned 60.18 decimal fixed-point number less than or equal to x.
    /// @dev Optimized for fractional value inputs, because for every whole value there are (1e18 - 1) fractional counterparts.
    /// See https://en.wikipedia.org/wiki/Floor_and_ceiling_functions.
    /// @param x The unsigned 60.18-decimal fixed-point number to floor.
    /// @param result The greatest integer less than or equal to x, as an unsigned 60.18-decimal fixed-point number.
    function floor(uint256 x) internal pure returns (uint256 result) {
        assembly {
            // Equivalent to "x % SCALE" but faster.
            let remainder := mod(x, SCALE)

            // Equivalent to "x - remainder * (remainder > 0 ? 1 : 0)" but faster.
            result := sub(x, mul(remainder, gt(remainder, 0)))
        }
    }

    /// @notice Yields the excess beyond the floor of x.
    /// @dev Based on the odd function definition https://en.wikipedia.org/wiki/Fractional_part.
    /// @param x The unsigned 60.18-decimal fixed-point number to get the fractional part of.
    /// @param result The fractional part of x as an unsigned 60.18-decimal fixed-point number.
    function frac(uint256 x) internal pure returns (uint256 result) {
        assembly {
            result := mod(x, SCALE)
        }
    }

    /// @notice Converts a number from basic integer form to unsigned 60.18-decimal fixed-point representation.
    ///
    /// @dev Requirements:
    /// - x must be less than or equal to MAX_UD60x18 divided by SCALE.
    ///
    /// @param x The basic integer to convert.
    /// @param result The same number in unsigned 60.18-decimal fixed-point representation.
    function fromUint(uint256 x) internal pure returns (uint256 result) {
        unchecked {
            if (x > MAX_UD60x18 / SCALE) {
                revert PRBMathUD60x18__FromUintOverflow(x);
            }
            result = x * SCALE;
        }
    }

    /// @notice Calculates geometric mean of x and y, i.e. sqrt(x * y), rounding down.
    ///
    /// @dev Requirements:
    /// - x * y must fit within MAX_UD60x18, lest it overflows.
    ///
    /// @param x The first operand as an unsigned 60.18-decimal fixed-point number.
    /// @param y The second operand as an unsigned 60.18-decimal fixed-point number.
    /// @return result The result as an unsigned 60.18-decimal fixed-point number.
    function gm(uint256 x, uint256 y) internal pure returns (uint256 result) {
        if (x == 0) {
            return 0;
        }

        unchecked {
            // Checking for overflow this way is faster than letting Solidity do it.
            uint256 xy = x * y;
            if (xy / x != y) {
                revert PRBMathUD60x18__GmOverflow(x, y);
            }

            // We don't need to multiply by the SCALE here because the x*y product had already picked up a factor of SCALE
            // during multiplication. See the comments within the "sqrt" function.
            result = PRBMath.sqrt(xy);
        }
    }

    /// @notice Calculates 1 / x, rounding toward zero.
    ///
    /// @dev Requirements:
    /// - x cannot be zero.
    ///
    /// @param x The unsigned 60.18-decimal fixed-point number for which to calculate the inverse.
    /// @return result The inverse as an unsigned 60.18-decimal fixed-point number.
    function inv(uint256 x) internal pure returns (uint256 result) {
        unchecked {
            // 1e36 is SCALE * SCALE.
            result = 1e36 / x;
        }
    }

    /// @notice Calculates the natural logarithm of x.
    ///
    /// @dev Based on the insight that ln(x) = log2(x) / log2(e).
    ///
    /// Requirements:
    /// - All from "log2".
    ///
    /// Caveats:
    /// - All from "log2".
    /// - This doesn't return exactly 1 for 2.718281828459045235, for that we would need more fine-grained precision.
    ///
    /// @param x The unsigned 60.18-decimal fixed-point number for which to calculate the natural logarithm.
    /// @return result The natural logarithm as an unsigned 60.18-decimal fixed-point number.
    function ln(uint256 x) internal pure returns (uint256 result) {
        // Do the fixed-point multiplication inline to save gas. This is overflow-safe because the maximum value that log2(x)
        // can return is 196205294292027477728.
        unchecked {
            result = (log2(x) * SCALE) / LOG2_E;
        }
    }

    /// @notice Calculates the common logarithm of x.
    ///
    /// @dev First checks if x is an exact power of ten and it stops if yes. If it's not, calculates the common
    /// logarithm based on the insight that log10(x) = log2(x) / log2(10).
    ///
    /// Requirements:
    /// - All from "log2".
    ///
    /// Caveats:
    /// - All from "log2".
    ///
    /// @param x The unsigned 60.18-decimal fixed-point number for which to calculate the common logarithm.
    /// @return result The common logarithm as an unsigned 60.18-decimal fixed-point number.
    function log10(uint256 x) internal pure returns (uint256 result) {
        if (x < SCALE) {
            revert PRBMathUD60x18__LogInputTooSmall(x);
        }

        // Note that the "mul" in this block is the assembly multiplication operation, not the "mul" function defined
        // in this contract.
        // prettier-ignore
        assembly {
            switch x
            case 1 { result := mul(SCALE, sub(0, 18)) }
            case 10 { result := mul(SCALE, sub(1, 18)) }
            case 100 { result := mul(SCALE, sub(2, 18)) }
            case 1000 { result := mul(SCALE, sub(3, 18)) }
            case 10000 { result := mul(SCALE, sub(4, 18)) }
            case 100000 { result := mul(SCALE, sub(5, 18)) }
            case 1000000 { result := mul(SCALE, sub(6, 18)) }
            case 10000000 { result := mul(SCALE, sub(7, 18)) }
            case 100000000 { result := mul(SCALE, sub(8, 18)) }
            case 1000000000 { result := mul(SCALE, sub(9, 18)) }
            case 10000000000 { result := mul(SCALE, sub(10, 18)) }
            case 100000000000 { result := mul(SCALE, sub(11, 18)) }
            case 1000000000000 { result := mul(SCALE, sub(12, 18)) }
            case 10000000000000 { result := mul(SCALE, sub(13, 18)) }
            case 100000000000000 { result := mul(SCALE, sub(14, 18)) }
            case 1000000000000000 { result := mul(SCALE, sub(15, 18)) }
            case 10000000000000000 { result := mul(SCALE, sub(16, 18)) }
            case 100000000000000000 { result := mul(SCALE, sub(17, 18)) }
            case 1000000000000000000 { result := 0 }
            case 10000000000000000000 { result := SCALE }
            case 100000000000000000000 { result := mul(SCALE, 2) }
            case 1000000000000000000000 { result := mul(SCALE, 3) }
            case 10000000000000000000000 { result := mul(SCALE, 4) }
            case 100000000000000000000000 { result := mul(SCALE, 5) }
            case 1000000000000000000000000 { result := mul(SCALE, 6) }
            case 10000000000000000000000000 { result := mul(SCALE, 7) }
            case 100000000000000000000000000 { result := mul(SCALE, 8) }
            case 1000000000000000000000000000 { result := mul(SCALE, 9) }
            case 10000000000000000000000000000 { result := mul(SCALE, 10) }
            case 100000000000000000000000000000 { result := mul(SCALE, 11) }
            case 1000000000000000000000000000000 { result := mul(SCALE, 12) }
            case 10000000000000000000000000000000 { result := mul(SCALE, 13) }
            case 100000000000000000000000000000000 { result := mul(SCALE, 14) }
            case 1000000000000000000000000000000000 { result := mul(SCALE, 15) }
            case 10000000000000000000000000000000000 { result := mul(SCALE, 16) }
            case 100000000000000000000000000000000000 { result := mul(SCALE, 17) }
            case 1000000000000000000000000000000000000 { result := mul(SCALE, 18) }
            case 10000000000000000000000000000000000000 { result := mul(SCALE, 19) }
            case 100000000000000000000000000000000000000 { result := mul(SCALE, 20) }
            case 1000000000000000000000000000000000000000 { result := mul(SCALE, 21) }
            case 10000000000000000000000000000000000000000 { result := mul(SCALE, 22) }
            case 100000000000000000000000000000000000000000 { result := mul(SCALE, 23) }
            case 1000000000000000000000000000000000000000000 { result := mul(SCALE, 24) }
            case 10000000000000000000000000000000000000000000 { result := mul(SCALE, 25) }
            case 100000000000000000000000000000000000000000000 { result := mul(SCALE, 26) }
            case 1000000000000000000000000000000000000000000000 { result := mul(SCALE, 27) }
            case 10000000000000000000000000000000000000000000000 { result := mul(SCALE, 28) }
            case 100000000000000000000000000000000000000000000000 { result := mul(SCALE, 29) }
            case 1000000000000000000000000000000000000000000000000 { result := mul(SCALE, 30) }
            case 10000000000000000000000000000000000000000000000000 { result := mul(SCALE, 31) }
            case 100000000000000000000000000000000000000000000000000 { result := mul(SCALE, 32) }
            case 1000000000000000000000000000000000000000000000000000 { result := mul(SCALE, 33) }
            case 10000000000000000000000000000000000000000000000000000 { result := mul(SCALE, 34) }
            case 100000000000000000000000000000000000000000000000000000 { result := mul(SCALE, 35) }
            case 1000000000000000000000000000000000000000000000000000000 { result := mul(SCALE, 36) }
            case 10000000000000000000000000000000000000000000000000000000 { result := mul(SCALE, 37) }
            case 100000000000000000000000000000000000000000000000000000000 { result := mul(SCALE, 38) }
            case 1000000000000000000000000000000000000000000000000000000000 { result := mul(SCALE, 39) }
            case 10000000000000000000000000000000000000000000000000000000000 { result := mul(SCALE, 40) }
            case 100000000000000000000000000000000000000000000000000000000000 { result := mul(SCALE, 41) }
            case 1000000000000000000000000000000000000000000000000000000000000 { result := mul(SCALE, 42) }
            case 10000000000000000000000000000000000000000000000000000000000000 { result := mul(SCALE, 43) }
            case 100000000000000000000000000000000000000000000000000000000000000 { result := mul(SCALE, 44) }
            case 1000000000000000000000000000000000000000000000000000000000000000 { result := mul(SCALE, 45) }
            case 10000000000000000000000000000000000000000000000000000000000000000 { result := mul(SCALE, 46) }
            case 100000000000000000000000000000000000000000000000000000000000000000 { result := mul(SCALE, 47) }
            case 1000000000000000000000000000000000000000000000000000000000000000000 { result := mul(SCALE, 48) }
            case 10000000000000000000000000000000000000000000000000000000000000000000 { result := mul(SCALE, 49) }
            case 100000000000000000000000000000000000000000000000000000000000000000000 { result := mul(SCALE, 50) }
            case 1000000000000000000000000000000000000000000000000000000000000000000000 { result := mul(SCALE, 51) }
            case 10000000000000000000000000000000000000000000000000000000000000000000000 { result := mul(SCALE, 52) }
            case 100000000000000000000000000000000000000000000000000000000000000000000000 { result := mul(SCALE, 53) }
            case 1000000000000000000000000000000000000000000000000000000000000000000000000 { result := mul(SCALE, 54) }
            case 10000000000000000000000000000000000000000000000000000000000000000000000000 { result := mul(SCALE, 55) }
            case 100000000000000000000000000000000000000000000000000000000000000000000000000 { result := mul(SCALE, 56) }
            case 1000000000000000000000000000000000000000000000000000000000000000000000000000 { result := mul(SCALE, 57) }
            case 10000000000000000000000000000000000000000000000000000000000000000000000000000 { result := mul(SCALE, 58) }
            case 100000000000000000000000000000000000000000000000000000000000000000000000000000 { result := mul(SCALE, 59) }
            default {
                result := MAX_UD60x18
            }
        }

        if (result == MAX_UD60x18) {
            // Do the fixed-point division inline to save gas. The denominator is log2(10).
            unchecked {
                result = (log2(x) * SCALE) / 3_321928094887362347;
            }
        }
    }

    /// @notice Calculates the binary logarithm of x.
    ///
    /// @dev Based on the iterative approximation algorithm.
    /// https://en.wikipedia.org/wiki/Binary_logarithm#Iterative_approximation
    ///
    /// Requirements:
    /// - x must be greater than or equal to SCALE, otherwise the result would be negative.
    ///
    /// Caveats:
    /// - The results are nor perfectly accurate to the last decimal, due to the lossy precision of the iterative approximation.
    ///
    /// @param x The unsigned 60.18-decimal fixed-point number for which to calculate the binary logarithm.
    /// @return result The binary logarithm as an unsigned 60.18-decimal fixed-point number.
    function log2(uint256 x) internal pure returns (uint256 result) {
        if (x < SCALE) {
            revert PRBMathUD60x18__LogInputTooSmall(x);
        }
        unchecked {
            // Calculate the integer part of the logarithm and add it to the result and finally calculate y = x * 2^(-n).
            uint256 n = PRBMath.mostSignificantBit(x / SCALE);

            // The integer part of the logarithm as an unsigned 60.18-decimal fixed-point number. The operation can't overflow
            // because n is maximum 255 and SCALE is 1e18.
            result = n * SCALE;

            // This is y = x * 2^(-n).
            uint256 y = x >> n;

            // If y = 1, the fractional part is zero.
            if (y == SCALE) {
                return result;
            }

            // Calculate the fractional part via the iterative approximation.
            // The "delta >>= 1" part is equivalent to "delta /= 2", but shifting bits is faster.
            for (uint256 delta = HALF_SCALE; delta > 0; delta >>= 1) {
                y = (y * y) / SCALE;

                // Is y^2 > 2 and so in the range [2,4)?
                if (y >= 2 * SCALE) {
                    // Add the 2^(-m) factor to the logarithm.
                    result += delta;

                    // Corresponds to z/2 on Wikipedia.
                    y >>= 1;
                }
            }
        }
    }

    /// @notice Multiplies two unsigned 60.18-decimal fixed-point numbers together, returning a new unsigned 60.18-decimal
    /// fixed-point number.
    /// @dev See the documentation for the "PRBMath.mulDivFixedPoint" function.
    /// @param x The multiplicand as an unsigned 60.18-decimal fixed-point number.
    /// @param y The multiplier as an unsigned 60.18-decimal fixed-point number.
    /// @return result The product as an unsigned 60.18-decimal fixed-point number.
    function mul(uint256 x, uint256 y) internal pure returns (uint256 result) {
        result = PRBMath.mulDivFixedPoint(x, y);
    }

    /// @notice Returns PI as an unsigned 60.18-decimal fixed-point number.
    function pi() internal pure returns (uint256 result) {
        result = 3_141592653589793238;
    }

    /// @notice Raises x to the power of y.
    ///
    /// @dev Based on the insight that x^y = 2^(log2(x) * y).
    ///
    /// Requirements:
    /// - All from "exp2", "log2" and "mul".
    ///
    /// Caveats:
    /// - All from "exp2", "log2" and "mul".
    /// - Assumes 0^0 is 1.
    ///
    /// @param x Number to raise to given power y, as an unsigned 60.18-decimal fixed-point number.
    /// @param y Exponent to raise x to, as an unsigned 60.18-decimal fixed-point number.
    /// @return result x raised to power y, as an unsigned 60.18-decimal fixed-point number.
    function pow(uint256 x, uint256 y) internal pure returns (uint256 result) {
        if (x == 0) {
            result = y == 0 ? SCALE : uint256(0);
        } else {
            result = exp2(mul(log2(x), y));
        }
    }

    /// @notice Raises x (unsigned 60.18-decimal fixed-point number) to the power of y (basic unsigned integer) using the
    /// famous algorithm "exponentiation by squaring".
    ///
    /// @dev See https://en.wikipedia.org/wiki/Exponentiation_by_squaring
    ///
    /// Requirements:
    /// - The result must fit within MAX_UD60x18.
    ///
    /// Caveats:
    /// - All from "mul".
    /// - Assumes 0^0 is 1.
    ///
    /// @param x The base as an unsigned 60.18-decimal fixed-point number.
    /// @param y The exponent as an uint256.
    /// @return result The result as an unsigned 60.18-decimal fixed-point number.
    function powu(uint256 x, uint256 y) internal pure returns (uint256 result) {
        // Calculate the first iteration of the loop in advance.
        result = y & 1 > 0 ? x : SCALE;

        // Equivalent to "for(y /= 2; y > 0; y /= 2)" but faster.
        for (y >>= 1; y > 0; y >>= 1) {
            x = PRBMath.mulDivFixedPoint(x, x);

            // Equivalent to "y % 2 == 1" but faster.
            if (y & 1 > 0) {
                result = PRBMath.mulDivFixedPoint(result, x);
            }
        }
    }

    /// @notice Returns 1 as an unsigned 60.18-decimal fixed-point number.
    function scale() internal pure returns (uint256 result) {
        result = SCALE;
    }

    /// @notice Calculates the square root of x, rounding down.
    /// @dev Uses the Babylonian method https://en.wikipedia.org/wiki/Methods_of_computing_square_roots#Babylonian_method.
    ///
    /// Requirements:
    /// - x must be less than MAX_UD60x18 / SCALE.
    ///
    /// @param x The unsigned 60.18-decimal fixed-point number for which to calculate the square root.
    /// @return result The result as an unsigned 60.18-decimal fixed-point .
    function sqrt(uint256 x) internal pure returns (uint256 result) {
        unchecked {
            if (x > MAX_UD60x18 / SCALE) {
                revert PRBMathUD60x18__SqrtOverflow(x);
            }
            // Multiply x by the SCALE to account for the factor of SCALE that is picked up when multiplying two unsigned
            // 60.18-decimal fixed-point numbers together (in this case, those two numbers are both the square root).
            result = PRBMath.sqrt(x * SCALE);
        }
    }

    /// @notice Converts a unsigned 60.18-decimal fixed-point number to basic integer form, rounding down in the process.
    /// @param x The unsigned 60.18-decimal fixed-point number to convert.
    /// @return result The same number in basic integer form.
    function toUint(uint256 x) internal pure returns (uint256 result) {
        unchecked {
            result = x / SCALE;
        }
    }
}
