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

// File: @openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol


// OpenZeppelin Contracts (last updated v5.4.0) (token/ERC20/extensions/IERC20Metadata.sol)

pragma solidity >=0.6.2;


/**
 * @dev Interface for the optional metadata functions from the ERC-20 standard.
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

// File: @openzeppelin/contracts/interfaces/draft-IERC6093.sol


// OpenZeppelin Contracts (last updated v5.5.0) (interfaces/draft-IERC6093.sol)

pragma solidity >=0.8.4;

/**
 * @dev Standard ERC-20 Errors
 * Interface of the https://eips.ethereum.org/EIPS/eip-6093[ERC-6093] custom errors for ERC-20 tokens.
 */
interface IERC20Errors {
    /**
     * @dev Indicates an error related to the current `balance` of a `sender`. Used in transfers.
     * @param sender Address whose tokens are being transferred.
     * @param balance Current balance for the interacting account.
     * @param needed Minimum amount required to perform a transfer.
     */
    error ERC20InsufficientBalance(address sender, uint256 balance, uint256 needed);

    /**
     * @dev Indicates a failure with the token `sender`. Used in transfers.
     * @param sender Address whose tokens are being transferred.
     */
    error ERC20InvalidSender(address sender);

    /**
     * @dev Indicates a failure with the token `receiver`. Used in transfers.
     * @param receiver Address to which tokens are being transferred.
     */
    error ERC20InvalidReceiver(address receiver);

    /**
     * @dev Indicates a failure with the `spender`’s `allowance`. Used in transfers.
     * @param spender Address that may be allowed to operate on tokens without being their owner.
     * @param allowance Amount of tokens a `spender` is allowed to operate with.
     * @param needed Minimum amount required to perform a transfer.
     */
    error ERC20InsufficientAllowance(address spender, uint256 allowance, uint256 needed);

    /**
     * @dev Indicates a failure with the `approver` of a token to be approved. Used in approvals.
     * @param approver Address initiating an approval operation.
     */
    error ERC20InvalidApprover(address approver);

    /**
     * @dev Indicates a failure with the `spender` to be approved. Used in approvals.
     * @param spender Address that may be allowed to operate on tokens without being their owner.
     */
    error ERC20InvalidSpender(address spender);
}

/**
 * @dev Standard ERC-721 Errors
 * Interface of the https://eips.ethereum.org/EIPS/eip-6093[ERC-6093] custom errors for ERC-721 tokens.
 */
interface IERC721Errors {
    /**
     * @dev Indicates that an address can't be an owner. For example, `address(0)` is a forbidden owner in ERC-721.
     * Used in balance queries.
     * @param owner Address of the current owner of a token.
     */
    error ERC721InvalidOwner(address owner);

    /**
     * @dev Indicates a `tokenId` whose `owner` is the zero address.
     * @param tokenId Identifier number of a token.
     */
    error ERC721NonexistentToken(uint256 tokenId);

    /**
     * @dev Indicates an error related to the ownership over a particular token. Used in transfers.
     * @param sender Address whose tokens are being transferred.
     * @param tokenId Identifier number of a token.
     * @param owner Address of the current owner of a token.
     */
    error ERC721IncorrectOwner(address sender, uint256 tokenId, address owner);

    /**
     * @dev Indicates a failure with the token `sender`. Used in transfers.
     * @param sender Address whose tokens are being transferred.
     */
    error ERC721InvalidSender(address sender);

    /**
     * @dev Indicates a failure with the token `receiver`. Used in transfers.
     * @param receiver Address to which tokens are being transferred.
     */
    error ERC721InvalidReceiver(address receiver);

    /**
     * @dev Indicates a failure with the `operator`’s approval. Used in transfers.
     * @param operator Address that may be allowed to operate on tokens without being their owner.
     * @param tokenId Identifier number of a token.
     */
    error ERC721InsufficientApproval(address operator, uint256 tokenId);

    /**
     * @dev Indicates a failure with the `approver` of a token to be approved. Used in approvals.
     * @param approver Address initiating an approval operation.
     */
    error ERC721InvalidApprover(address approver);

    /**
     * @dev Indicates a failure with the `operator` to be approved. Used in approvals.
     * @param operator Address that may be allowed to operate on tokens without being their owner.
     */
    error ERC721InvalidOperator(address operator);
}

/**
 * @dev Standard ERC-1155 Errors
 * Interface of the https://eips.ethereum.org/EIPS/eip-6093[ERC-6093] custom errors for ERC-1155 tokens.
 */
interface IERC1155Errors {
    /**
     * @dev Indicates an error related to the current `balance` of a `sender`. Used in transfers.
     * @param sender Address whose tokens are being transferred.
     * @param balance Current balance for the interacting account.
     * @param needed Minimum amount required to perform a transfer.
     * @param tokenId Identifier number of a token.
     */
    error ERC1155InsufficientBalance(address sender, uint256 balance, uint256 needed, uint256 tokenId);

    /**
     * @dev Indicates a failure with the token `sender`. Used in transfers.
     * @param sender Address whose tokens are being transferred.
     */
    error ERC1155InvalidSender(address sender);

    /**
     * @dev Indicates a failure with the token `receiver`. Used in transfers.
     * @param receiver Address to which tokens are being transferred.
     */
    error ERC1155InvalidReceiver(address receiver);

    /**
     * @dev Indicates a failure with the `operator`’s approval. Used in transfers.
     * @param operator Address that may be allowed to operate on tokens without being their owner.
     * @param owner Address of the current owner of a token.
     */
    error ERC1155MissingApprovalForAll(address operator, address owner);

    /**
     * @dev Indicates a failure with the `approver` of a token to be approved. Used in approvals.
     * @param approver Address initiating an approval operation.
     */
    error ERC1155InvalidApprover(address approver);

    /**
     * @dev Indicates a failure with the `operator` to be approved. Used in approvals.
     * @param operator Address that may be allowed to operate on tokens without being their owner.
     */
    error ERC1155InvalidOperator(address operator);

    /**
     * @dev Indicates an array length mismatch between ids and values in a safeBatchTransferFrom operation.
     * Used in batch transfers.
     * @param idsLength Length of the array of token identifiers
     * @param valuesLength Length of the array of token amounts
     */
    error ERC1155InvalidArrayLength(uint256 idsLength, uint256 valuesLength);
}

// File: @openzeppelin/contracts/token/ERC20/ERC20.sol


// OpenZeppelin Contracts (last updated v5.5.0) (token/ERC20/ERC20.sol)

pragma solidity ^0.8.20;





/**
 * @dev Implementation of the {IERC20} interface.
 *
 * This implementation is agnostic to the way tokens are created. This means
 * that a supply mechanism has to be added in a derived contract using {_mint}.
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
 * conventional and does not conflict with the expectations of ERC-20
 * applications.
 */
abstract contract ERC20 is Context, IERC20, IERC20Metadata, IERC20Errors {
    mapping(address account => uint256) private _balances;

    mapping(address account => mapping(address spender => uint256)) private _allowances;

    uint256 private _totalSupply;

    string private _name;
    string private _symbol;

    /**
     * @dev Sets the values for {name} and {symbol}.
     *
     * Both values are immutable: they can only be set once during construction.
     */
    constructor(string memory name_, string memory symbol_) {
        _name = name_;
        _symbol = symbol_;
    }

    /**
     * @dev Returns the name of the token.
     */
    function name() public view virtual returns (string memory) {
        return _name;
    }

    /**
     * @dev Returns the symbol of the token, usually a shorter version of the
     * name.
     */
    function symbol() public view virtual returns (string memory) {
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
    function decimals() public view virtual returns (uint8) {
        return 18;
    }

    /// @inheritdoc IERC20
    function totalSupply() public view virtual returns (uint256) {
        return _totalSupply;
    }

    /// @inheritdoc IERC20
    function balanceOf(address account) public view virtual returns (uint256) {
        return _balances[account];
    }

    /**
     * @dev See {IERC20-transfer}.
     *
     * Requirements:
     *
     * - `to` cannot be the zero address.
     * - the caller must have a balance of at least `value`.
     */
    function transfer(address to, uint256 value) public virtual returns (bool) {
        address owner = _msgSender();
        _transfer(owner, to, value);
        return true;
    }

    /// @inheritdoc IERC20
    function allowance(address owner, address spender) public view virtual returns (uint256) {
        return _allowances[owner][spender];
    }

    /**
     * @dev See {IERC20-approve}.
     *
     * NOTE: If `value` is the maximum `uint256`, the allowance is not updated on
     * `transferFrom`. This is semantically equivalent to an infinite approval.
     *
     * Requirements:
     *
     * - `spender` cannot be the zero address.
     */
    function approve(address spender, uint256 value) public virtual returns (bool) {
        address owner = _msgSender();
        _approve(owner, spender, value);
        return true;
    }

    /**
     * @dev See {IERC20-transferFrom}.
     *
     * Skips emitting an {Approval} event indicating an allowance update. This is not
     * required by the ERC. See {xref-ERC20-_approve-address-address-uint256-bool-}[_approve].
     *
     * NOTE: Does not update the allowance if the current allowance
     * is the maximum `uint256`.
     *
     * Requirements:
     *
     * - `from` and `to` cannot be the zero address.
     * - `from` must have a balance of at least `value`.
     * - the caller must have allowance for ``from``'s tokens of at least
     * `value`.
     */
    function transferFrom(address from, address to, uint256 value) public virtual returns (bool) {
        address spender = _msgSender();
        _spendAllowance(from, spender, value);
        _transfer(from, to, value);
        return true;
    }

    /**
     * @dev Moves a `value` amount of tokens from `from` to `to`.
     *
     * This internal function is equivalent to {transfer}, and can be used to
     * e.g. implement automatic token fees, slashing mechanisms, etc.
     *
     * Emits a {Transfer} event.
     *
     * NOTE: This function is not virtual, {_update} should be overridden instead.
     */
    function _transfer(address from, address to, uint256 value) internal {
        if (from == address(0)) {
            revert ERC20InvalidSender(address(0));
        }
        if (to == address(0)) {
            revert ERC20InvalidReceiver(address(0));
        }
        _update(from, to, value);
    }

    /**
     * @dev Transfers a `value` amount of tokens from `from` to `to`, or alternatively mints (or burns) if `from`
     * (or `to`) is the zero address. All customizations to transfers, mints, and burns should be done by overriding
     * this function.
     *
     * Emits a {Transfer} event.
     */
    function _update(address from, address to, uint256 value) internal virtual {
        if (from == address(0)) {
            // Overflow check required: The rest of the code assumes that totalSupply never overflows
            _totalSupply += value;
        } else {
            uint256 fromBalance = _balances[from];
            if (fromBalance < value) {
                revert ERC20InsufficientBalance(from, fromBalance, value);
            }
            unchecked {
                // Overflow not possible: value <= fromBalance <= totalSupply.
                _balances[from] = fromBalance - value;
            }
        }

        if (to == address(0)) {
            unchecked {
                // Overflow not possible: value <= totalSupply or value <= fromBalance <= totalSupply.
                _totalSupply -= value;
            }
        } else {
            unchecked {
                // Overflow not possible: balance + value is at most totalSupply, which we know fits into a uint256.
                _balances[to] += value;
            }
        }

        emit Transfer(from, to, value);
    }

    /**
     * @dev Creates a `value` amount of tokens and assigns them to `account`, by transferring it from address(0).
     * Relies on the `_update` mechanism
     *
     * Emits a {Transfer} event with `from` set to the zero address.
     *
     * NOTE: This function is not virtual, {_update} should be overridden instead.
     */
    function _mint(address account, uint256 value) internal {
        if (account == address(0)) {
            revert ERC20InvalidReceiver(address(0));
        }
        _update(address(0), account, value);
    }

    /**
     * @dev Destroys a `value` amount of tokens from `account`, lowering the total supply.
     * Relies on the `_update` mechanism.
     *
     * Emits a {Transfer} event with `to` set to the zero address.
     *
     * NOTE: This function is not virtual, {_update} should be overridden instead
     */
    function _burn(address account, uint256 value) internal {
        if (account == address(0)) {
            revert ERC20InvalidSender(address(0));
        }
        _update(account, address(0), value);
    }

    /**
     * @dev Sets `value` as the allowance of `spender` over the `owner`'s tokens.
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
     *
     * Overrides to this logic should be done to the variant with an additional `bool emitEvent` argument.
     */
    function _approve(address owner, address spender, uint256 value) internal {
        _approve(owner, spender, value, true);
    }

    /**
     * @dev Variant of {_approve} with an optional flag to enable or disable the {Approval} event.
     *
     * By default (when calling {_approve}) the flag is set to true. On the other hand, approval changes made by
     * `_spendAllowance` during the `transferFrom` operation sets the flag to false. This saves gas by not emitting any
     * `Approval` event during `transferFrom` operations.
     *
     * Anyone who wishes to continue emitting `Approval` events on the `transferFrom` operation can force the flag to
     * true using the following override:
     *
     * ```solidity
     * function _approve(address owner, address spender, uint256 value, bool) internal virtual override {
     *     super._approve(owner, spender, value, true);
     * }
     * ```
     *
     * Requirements are the same as {_approve}.
     */
    function _approve(address owner, address spender, uint256 value, bool emitEvent) internal virtual {
        if (owner == address(0)) {
            revert ERC20InvalidApprover(address(0));
        }
        if (spender == address(0)) {
            revert ERC20InvalidSpender(address(0));
        }
        _allowances[owner][spender] = value;
        if (emitEvent) {
            emit Approval(owner, spender, value);
        }
    }

    /**
     * @dev Updates `owner`'s allowance for `spender` based on spent `value`.
     *
     * Does not update the allowance value in case of infinite allowance.
     * Revert if not enough allowance is available.
     *
     * Does not emit an {Approval} event.
     */
    function _spendAllowance(address owner, address spender, uint256 value) internal virtual {
        uint256 currentAllowance = allowance(owner, spender);
        if (currentAllowance < type(uint256).max) {
            if (currentAllowance < value) {
                revert ERC20InsufficientAllowance(spender, currentAllowance, value);
            }
            unchecked {
                _approve(owner, spender, currentAllowance - value, false);
            }
        }
    }
}

// File: @openzeppelin/contracts/interfaces/IERC20.sol


// OpenZeppelin Contracts (last updated v5.4.0) (interfaces/IERC20.sol)

pragma solidity >=0.4.16;


// File: @openzeppelin/contracts/utils/introspection/IERC165.sol


// OpenZeppelin Contracts (last updated v5.4.0) (utils/introspection/IERC165.sol)

pragma solidity >=0.4.16;

/**
 * @dev Interface of the ERC-165 standard, as defined in the
 * https://eips.ethereum.org/EIPS/eip-165[ERC].
 *
 * Implementers can declare support of contract interfaces, which can then be
 * queried by others ({ERC165Checker}).
 *
 * For an implementation, see {ERC165}.
 */
interface IERC165 {
    /**
     * @dev Returns true if this contract implements the interface defined by
     * `interfaceId`. See the corresponding
     * https://eips.ethereum.org/EIPS/eip-165#how-interfaces-are-identified[ERC section]
     * to learn more about how these ids are created.
     *
     * This function call must use less than 30 000 gas.
     */
    function supportsInterface(bytes4 interfaceId) external view returns (bool);
}

// File: @openzeppelin/contracts/interfaces/IERC165.sol


// OpenZeppelin Contracts (last updated v5.4.0) (interfaces/IERC165.sol)

pragma solidity >=0.4.16;


// File: @openzeppelin/contracts/interfaces/IERC1363.sol


// OpenZeppelin Contracts (last updated v5.4.0) (interfaces/IERC1363.sol)

pragma solidity >=0.6.2;



/**
 * @title IERC1363
 * @dev Interface of the ERC-1363 standard as defined in the https://eips.ethereum.org/EIPS/eip-1363[ERC-1363].
 *
 * Defines an extension interface for ERC-20 tokens that supports executing code on a recipient contract
 * after `transfer` or `transferFrom`, or code on a spender contract after `approve`, in a single transaction.
 */
interface IERC1363 is IERC20, IERC165 {
    /*
     * Note: the ERC-165 identifier for this interface is 0xb0202a11.
     * 0xb0202a11 ===
     *   bytes4(keccak256('transferAndCall(address,uint256)')) ^
     *   bytes4(keccak256('transferAndCall(address,uint256,bytes)')) ^
     *   bytes4(keccak256('transferFromAndCall(address,address,uint256)')) ^
     *   bytes4(keccak256('transferFromAndCall(address,address,uint256,bytes)')) ^
     *   bytes4(keccak256('approveAndCall(address,uint256)')) ^
     *   bytes4(keccak256('approveAndCall(address,uint256,bytes)'))
     */

    /**
     * @dev Moves a `value` amount of tokens from the caller's account to `to`
     * and then calls {IERC1363Receiver-onTransferReceived} on `to`.
     * @param to The address which you want to transfer to.
     * @param value The amount of tokens to be transferred.
     * @return A boolean value indicating whether the operation succeeded unless throwing.
     */
    function transferAndCall(address to, uint256 value) external returns (bool);

    /**
     * @dev Moves a `value` amount of tokens from the caller's account to `to`
     * and then calls {IERC1363Receiver-onTransferReceived} on `to`.
     * @param to The address which you want to transfer to.
     * @param value The amount of tokens to be transferred.
     * @param data Additional data with no specified format, sent in call to `to`.
     * @return A boolean value indicating whether the operation succeeded unless throwing.
     */
    function transferAndCall(address to, uint256 value, bytes calldata data) external returns (bool);

    /**
     * @dev Moves a `value` amount of tokens from `from` to `to` using the allowance mechanism
     * and then calls {IERC1363Receiver-onTransferReceived} on `to`.
     * @param from The address which you want to send tokens from.
     * @param to The address which you want to transfer to.
     * @param value The amount of tokens to be transferred.
     * @return A boolean value indicating whether the operation succeeded unless throwing.
     */
    function transferFromAndCall(address from, address to, uint256 value) external returns (bool);

    /**
     * @dev Moves a `value` amount of tokens from `from` to `to` using the allowance mechanism
     * and then calls {IERC1363Receiver-onTransferReceived} on `to`.
     * @param from The address which you want to send tokens from.
     * @param to The address which you want to transfer to.
     * @param value The amount of tokens to be transferred.
     * @param data Additional data with no specified format, sent in call to `to`.
     * @return A boolean value indicating whether the operation succeeded unless throwing.
     */
    function transferFromAndCall(address from, address to, uint256 value, bytes calldata data) external returns (bool);

    /**
     * @dev Sets a `value` amount of tokens as the allowance of `spender` over the
     * caller's tokens and then calls {IERC1363Spender-onApprovalReceived} on `spender`.
     * @param spender The address which will spend the funds.
     * @param value The amount of tokens to be spent.
     * @return A boolean value indicating whether the operation succeeded unless throwing.
     */
    function approveAndCall(address spender, uint256 value) external returns (bool);

    /**
     * @dev Sets a `value` amount of tokens as the allowance of `spender` over the
     * caller's tokens and then calls {IERC1363Spender-onApprovalReceived} on `spender`.
     * @param spender The address which will spend the funds.
     * @param value The amount of tokens to be spent.
     * @param data Additional data with no specified format, sent in call to `spender`.
     * @return A boolean value indicating whether the operation succeeded unless throwing.
     */
    function approveAndCall(address spender, uint256 value, bytes calldata data) external returns (bool);
}

// File: @openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol


// OpenZeppelin Contracts (last updated v5.5.0) (token/ERC20/utils/SafeERC20.sol)

pragma solidity ^0.8.20;



/**
 * @title SafeERC20
 * @dev Wrappers around ERC-20 operations that throw on failure (when the token
 * contract returns false). Tokens that return no value (and instead revert or
 * throw on failure) are also supported, non-reverting calls are assumed to be
 * successful.
 * To use this library you can add a `using SafeERC20 for IERC20;` statement to your contract,
 * which allows you to call the safe operations as `token.safeTransfer(...)`, etc.
 */
library SafeERC20 {
    /**
     * @dev An operation with an ERC-20 token failed.
     */
    error SafeERC20FailedOperation(address token);

    /**
     * @dev Indicates a failed `decreaseAllowance` request.
     */
    error SafeERC20FailedDecreaseAllowance(address spender, uint256 currentAllowance, uint256 requestedDecrease);

    /**
     * @dev Transfer `value` amount of `token` from the calling contract to `to`. If `token` returns no value,
     * non-reverting calls are assumed to be successful.
     */
    function safeTransfer(IERC20 token, address to, uint256 value) internal {
        if (!_safeTransfer(token, to, value, true)) {
            revert SafeERC20FailedOperation(address(token));
        }
    }

    /**
     * @dev Transfer `value` amount of `token` from `from` to `to`, spending the approval given by `from` to the
     * calling contract. If `token` returns no value, non-reverting calls are assumed to be successful.
     */
    function safeTransferFrom(IERC20 token, address from, address to, uint256 value) internal {
        if (!_safeTransferFrom(token, from, to, value, true)) {
            revert SafeERC20FailedOperation(address(token));
        }
    }

    /**
     * @dev Variant of {safeTransfer} that returns a bool instead of reverting if the operation is not successful.
     */
    function trySafeTransfer(IERC20 token, address to, uint256 value) internal returns (bool) {
        return _safeTransfer(token, to, value, false);
    }

    /**
     * @dev Variant of {safeTransferFrom} that returns a bool instead of reverting if the operation is not successful.
     */
    function trySafeTransferFrom(IERC20 token, address from, address to, uint256 value) internal returns (bool) {
        return _safeTransferFrom(token, from, to, value, false);
    }

    /**
     * @dev Increase the calling contract's allowance toward `spender` by `value`. If `token` returns no value,
     * non-reverting calls are assumed to be successful.
     *
     * IMPORTANT: If the token implements ERC-7674 (ERC-20 with temporary allowance), and if the "client"
     * smart contract uses ERC-7674 to set temporary allowances, then the "client" smart contract should avoid using
     * this function. Performing a {safeIncreaseAllowance} or {safeDecreaseAllowance} operation on a token contract
     * that has a non-zero temporary allowance (for that particular owner-spender) will result in unexpected behavior.
     */
    function safeIncreaseAllowance(IERC20 token, address spender, uint256 value) internal {
        uint256 oldAllowance = token.allowance(address(this), spender);
        forceApprove(token, spender, oldAllowance + value);
    }

    /**
     * @dev Decrease the calling contract's allowance toward `spender` by `requestedDecrease`. If `token` returns no
     * value, non-reverting calls are assumed to be successful.
     *
     * IMPORTANT: If the token implements ERC-7674 (ERC-20 with temporary allowance), and if the "client"
     * smart contract uses ERC-7674 to set temporary allowances, then the "client" smart contract should avoid using
     * this function. Performing a {safeIncreaseAllowance} or {safeDecreaseAllowance} operation on a token contract
     * that has a non-zero temporary allowance (for that particular owner-spender) will result in unexpected behavior.
     */
    function safeDecreaseAllowance(IERC20 token, address spender, uint256 requestedDecrease) internal {
        unchecked {
            uint256 currentAllowance = token.allowance(address(this), spender);
            if (currentAllowance < requestedDecrease) {
                revert SafeERC20FailedDecreaseAllowance(spender, currentAllowance, requestedDecrease);
            }
            forceApprove(token, spender, currentAllowance - requestedDecrease);
        }
    }

    /**
     * @dev Set the calling contract's allowance toward `spender` to `value`. If `token` returns no value,
     * non-reverting calls are assumed to be successful. Meant to be used with tokens that require the approval
     * to be set to zero before setting it to a non-zero value, such as USDT.
     *
     * NOTE: If the token implements ERC-7674, this function will not modify any temporary allowance. This function
     * only sets the "standard" allowance. Any temporary allowance will remain active, in addition to the value being
     * set here.
     */
    function forceApprove(IERC20 token, address spender, uint256 value) internal {
        if (!_safeApprove(token, spender, value, false)) {
            if (!_safeApprove(token, spender, 0, true)) revert SafeERC20FailedOperation(address(token));
            if (!_safeApprove(token, spender, value, true)) revert SafeERC20FailedOperation(address(token));
        }
    }

    /**
     * @dev Performs an {ERC1363} transferAndCall, with a fallback to the simple {ERC20} transfer if the target has no
     * code. This can be used to implement an {ERC721}-like safe transfer that relies on {ERC1363} checks when
     * targeting contracts.
     *
     * Reverts if the returned value is other than `true`.
     */
    function transferAndCallRelaxed(IERC1363 token, address to, uint256 value, bytes memory data) internal {
        if (to.code.length == 0) {
            safeTransfer(token, to, value);
        } else if (!token.transferAndCall(to, value, data)) {
            revert SafeERC20FailedOperation(address(token));
        }
    }

    /**
     * @dev Performs an {ERC1363} transferFromAndCall, with a fallback to the simple {ERC20} transferFrom if the target
     * has no code. This can be used to implement an {ERC721}-like safe transfer that relies on {ERC1363} checks when
     * targeting contracts.
     *
     * Reverts if the returned value is other than `true`.
     */
    function transferFromAndCallRelaxed(
        IERC1363 token,
        address from,
        address to,
        uint256 value,
        bytes memory data
    ) internal {
        if (to.code.length == 0) {
            safeTransferFrom(token, from, to, value);
        } else if (!token.transferFromAndCall(from, to, value, data)) {
            revert SafeERC20FailedOperation(address(token));
        }
    }

    /**
     * @dev Performs an {ERC1363} approveAndCall, with a fallback to the simple {ERC20} approve if the target has no
     * code. This can be used to implement an {ERC721}-like safe transfer that rely on {ERC1363} checks when
     * targeting contracts.
     *
     * NOTE: When the recipient address (`to`) has no code (i.e. is an EOA), this function behaves as {forceApprove}.
     * Oppositely, when the recipient address (`to`) has code, this function only attempts to call {ERC1363-approveAndCall}
     * once without retrying, and relies on the returned value to be true.
     *
     * Reverts if the returned value is other than `true`.
     */
    function approveAndCallRelaxed(IERC1363 token, address to, uint256 value, bytes memory data) internal {
        if (to.code.length == 0) {
            forceApprove(token, to, value);
        } else if (!token.approveAndCall(to, value, data)) {
            revert SafeERC20FailedOperation(address(token));
        }
    }

    /**
     * @dev Imitates a Solidity `token.transfer(to, value)` call, relaxing the requirement on the return value: the
     * return value is optional (but if data is returned, it must not be false).
     *
     * @param token The token targeted by the call.
     * @param to The recipient of the tokens
     * @param value The amount of token to transfer
     * @param bubble Behavior switch if the transfer call reverts: bubble the revert reason or return a false boolean.
     */
    function _safeTransfer(IERC20 token, address to, uint256 value, bool bubble) private returns (bool success) {
        bytes4 selector = IERC20.transfer.selector;

        assembly ("memory-safe") {
            let fmp := mload(0x40)
            mstore(0x00, selector)
            mstore(0x04, and(to, shr(96, not(0))))
            mstore(0x24, value)
            success := call(gas(), token, 0, 0x00, 0x44, 0x00, 0x20)
            // if call success and return is true, all is good.
            // otherwise (not success or return is not true), we need to perform further checks
            if iszero(and(success, eq(mload(0x00), 1))) {
                // if the call was a failure and bubble is enabled, bubble the error
                if and(iszero(success), bubble) {
                    returndatacopy(fmp, 0x00, returndatasize())
                    revert(fmp, returndatasize())
                }
                // if the return value is not true, then the call is only successful if:
                // - the token address has code
                // - the returndata is empty
                success := and(success, and(iszero(returndatasize()), gt(extcodesize(token), 0)))
            }
            mstore(0x40, fmp)
        }
    }

    /**
     * @dev Imitates a Solidity `token.transferFrom(from, to, value)` call, relaxing the requirement on the return
     * value: the return value is optional (but if data is returned, it must not be false).
     *
     * @param token The token targeted by the call.
     * @param from The sender of the tokens
     * @param to The recipient of the tokens
     * @param value The amount of token to transfer
     * @param bubble Behavior switch if the transfer call reverts: bubble the revert reason or return a false boolean.
     */
    function _safeTransferFrom(
        IERC20 token,
        address from,
        address to,
        uint256 value,
        bool bubble
    ) private returns (bool success) {
        bytes4 selector = IERC20.transferFrom.selector;

        assembly ("memory-safe") {
            let fmp := mload(0x40)
            mstore(0x00, selector)
            mstore(0x04, and(from, shr(96, not(0))))
            mstore(0x24, and(to, shr(96, not(0))))
            mstore(0x44, value)
            success := call(gas(), token, 0, 0x00, 0x64, 0x00, 0x20)
            // if call success and return is true, all is good.
            // otherwise (not success or return is not true), we need to perform further checks
            if iszero(and(success, eq(mload(0x00), 1))) {
                // if the call was a failure and bubble is enabled, bubble the error
                if and(iszero(success), bubble) {
                    returndatacopy(fmp, 0x00, returndatasize())
                    revert(fmp, returndatasize())
                }
                // if the return value is not true, then the call is only successful if:
                // - the token address has code
                // - the returndata is empty
                success := and(success, and(iszero(returndatasize()), gt(extcodesize(token), 0)))
            }
            mstore(0x40, fmp)
            mstore(0x60, 0)
        }
    }

    /**
     * @dev Imitates a Solidity `token.approve(spender, value)` call, relaxing the requirement on the return value:
     * the return value is optional (but if data is returned, it must not be false).
     *
     * @param token The token targeted by the call.
     * @param spender The spender of the tokens
     * @param value The amount of token to transfer
     * @param bubble Behavior switch if the transfer call reverts: bubble the revert reason or return a false boolean.
     */
    function _safeApprove(IERC20 token, address spender, uint256 value, bool bubble) private returns (bool success) {
        bytes4 selector = IERC20.approve.selector;

        assembly ("memory-safe") {
            let fmp := mload(0x40)
            mstore(0x00, selector)
            mstore(0x04, and(spender, shr(96, not(0))))
            mstore(0x24, value)
            success := call(gas(), token, 0, 0x00, 0x44, 0x00, 0x20)
            // if call success and return is true, all is good.
            // otherwise (not success or return is not true), we need to perform further checks
            if iszero(and(success, eq(mload(0x00), 1))) {
                // if the call was a failure and bubble is enabled, bubble the error
                if and(iszero(success), bubble) {
                    returndatacopy(fmp, 0x00, returndatasize())
                    revert(fmp, returndatasize())
                }
                // if the return value is not true, then the call is only successful if:
                // - the token address has code
                // - the returndata is empty
                success := and(success, and(iszero(returndatasize()), gt(extcodesize(token), 0)))
            }
            mstore(0x40, fmp)
        }
    }
}

// File: @openzeppelin/contracts/utils/Panic.sol


// OpenZeppelin Contracts (last updated v5.1.0) (utils/Panic.sol)

pragma solidity ^0.8.20;

/**
 * @dev Helper library for emitting standardized panic codes.
 *
 * ```solidity
 * contract Example {
 *      using Panic for uint256;
 *
 *      // Use any of the declared internal constants
 *      function foo() { Panic.GENERIC.panic(); }
 *
 *      // Alternatively
 *      function foo() { Panic.panic(Panic.GENERIC); }
 * }
 * ```
 *
 * Follows the list from https://github.com/ethereum/solidity/blob/v0.8.24/libsolutil/ErrorCodes.h[libsolutil].
 *
 * _Available since v5.1._
 */
// slither-disable-next-line unused-state
library Panic {
    /// @dev generic / unspecified error
    uint256 internal constant GENERIC = 0x00;
    /// @dev used by the assert() builtin
    uint256 internal constant ASSERT = 0x01;
    /// @dev arithmetic underflow or overflow
    uint256 internal constant UNDER_OVERFLOW = 0x11;
    /// @dev division or modulo by zero
    uint256 internal constant DIVISION_BY_ZERO = 0x12;
    /// @dev enum conversion error
    uint256 internal constant ENUM_CONVERSION_ERROR = 0x21;
    /// @dev invalid encoding in storage
    uint256 internal constant STORAGE_ENCODING_ERROR = 0x22;
    /// @dev empty array pop
    uint256 internal constant EMPTY_ARRAY_POP = 0x31;
    /// @dev array out of bounds access
    uint256 internal constant ARRAY_OUT_OF_BOUNDS = 0x32;
    /// @dev resource error (too large allocation or too large array)
    uint256 internal constant RESOURCE_ERROR = 0x41;
    /// @dev calling invalid internal function
    uint256 internal constant INVALID_INTERNAL_FUNCTION = 0x51;

    /// @dev Reverts with a panic code. Recommended to use with
    /// the internal constants with predefined codes.
    function panic(uint256 code) internal pure {
        assembly ("memory-safe") {
            mstore(0x00, 0x4e487b71)
            mstore(0x20, code)
            revert(0x1c, 0x24)
        }
    }
}

// File: @openzeppelin/contracts/utils/math/SafeCast.sol


// OpenZeppelin Contracts (last updated v5.6.0) (utils/math/SafeCast.sol)
// This file was procedurally generated from scripts/generate/templates/SafeCast.js.

pragma solidity ^0.8.20;

/**
 * @dev Wrappers over Solidity's uintXX/intXX/bool casting operators with added overflow
 * checks.
 *
 * Downcasting from uint256/int256 in Solidity does not revert on overflow. This can
 * easily result in undesired exploitation or bugs, since developers usually
 * assume that overflows raise errors. `SafeCast` restores this intuition by
 * reverting the transaction when such an operation overflows.
 *
 * Using this library instead of the unchecked operations eliminates an entire
 * class of bugs, so it's recommended to use it always.
 */
library SafeCast {
    /**
     * @dev Value doesn't fit in a uint of `bits` size.
     */
    error SafeCastOverflowedUintDowncast(uint8 bits, uint256 value);

    /**
     * @dev An int value doesn't fit in a uint of `bits` size.
     */
    error SafeCastOverflowedIntToUint(int256 value);

    /**
     * @dev Value doesn't fit in an int of `bits` size.
     */
    error SafeCastOverflowedIntDowncast(uint8 bits, int256 value);

    /**
     * @dev A uint value doesn't fit in an int of `bits` size.
     */
    error SafeCastOverflowedUintToInt(uint256 value);

    /**
     * @dev Returns the downcasted uint248 from uint256, reverting on
     * overflow (when the input is greater than largest uint248).
     *
     * Counterpart to Solidity's `uint248` operator.
     *
     * Requirements:
     *
     * - input must fit into 248 bits
     */
    function toUint248(uint256 value) internal pure returns (uint248) {
        if (value > type(uint248).max) {
            revert SafeCastOverflowedUintDowncast(248, value);
        }
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
     */
    function toUint240(uint256 value) internal pure returns (uint240) {
        if (value > type(uint240).max) {
            revert SafeCastOverflowedUintDowncast(240, value);
        }
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
     */
    function toUint232(uint256 value) internal pure returns (uint232) {
        if (value > type(uint232).max) {
            revert SafeCastOverflowedUintDowncast(232, value);
        }
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
     */
    function toUint224(uint256 value) internal pure returns (uint224) {
        if (value > type(uint224).max) {
            revert SafeCastOverflowedUintDowncast(224, value);
        }
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
     */
    function toUint216(uint256 value) internal pure returns (uint216) {
        if (value > type(uint216).max) {
            revert SafeCastOverflowedUintDowncast(216, value);
        }
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
     */
    function toUint208(uint256 value) internal pure returns (uint208) {
        if (value > type(uint208).max) {
            revert SafeCastOverflowedUintDowncast(208, value);
        }
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
     */
    function toUint200(uint256 value) internal pure returns (uint200) {
        if (value > type(uint200).max) {
            revert SafeCastOverflowedUintDowncast(200, value);
        }
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
     */
    function toUint192(uint256 value) internal pure returns (uint192) {
        if (value > type(uint192).max) {
            revert SafeCastOverflowedUintDowncast(192, value);
        }
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
     */
    function toUint184(uint256 value) internal pure returns (uint184) {
        if (value > type(uint184).max) {
            revert SafeCastOverflowedUintDowncast(184, value);
        }
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
     */
    function toUint176(uint256 value) internal pure returns (uint176) {
        if (value > type(uint176).max) {
            revert SafeCastOverflowedUintDowncast(176, value);
        }
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
     */
    function toUint168(uint256 value) internal pure returns (uint168) {
        if (value > type(uint168).max) {
            revert SafeCastOverflowedUintDowncast(168, value);
        }
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
     */
    function toUint160(uint256 value) internal pure returns (uint160) {
        if (value > type(uint160).max) {
            revert SafeCastOverflowedUintDowncast(160, value);
        }
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
     */
    function toUint152(uint256 value) internal pure returns (uint152) {
        if (value > type(uint152).max) {
            revert SafeCastOverflowedUintDowncast(152, value);
        }
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
     */
    function toUint144(uint256 value) internal pure returns (uint144) {
        if (value > type(uint144).max) {
            revert SafeCastOverflowedUintDowncast(144, value);
        }
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
     */
    function toUint136(uint256 value) internal pure returns (uint136) {
        if (value > type(uint136).max) {
            revert SafeCastOverflowedUintDowncast(136, value);
        }
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
     */
    function toUint128(uint256 value) internal pure returns (uint128) {
        if (value > type(uint128).max) {
            revert SafeCastOverflowedUintDowncast(128, value);
        }
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
     */
    function toUint120(uint256 value) internal pure returns (uint120) {
        if (value > type(uint120).max) {
            revert SafeCastOverflowedUintDowncast(120, value);
        }
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
     */
    function toUint112(uint256 value) internal pure returns (uint112) {
        if (value > type(uint112).max) {
            revert SafeCastOverflowedUintDowncast(112, value);
        }
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
     */
    function toUint104(uint256 value) internal pure returns (uint104) {
        if (value > type(uint104).max) {
            revert SafeCastOverflowedUintDowncast(104, value);
        }
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
     */
    function toUint96(uint256 value) internal pure returns (uint96) {
        if (value > type(uint96).max) {
            revert SafeCastOverflowedUintDowncast(96, value);
        }
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
     */
    function toUint88(uint256 value) internal pure returns (uint88) {
        if (value > type(uint88).max) {
            revert SafeCastOverflowedUintDowncast(88, value);
        }
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
     */
    function toUint80(uint256 value) internal pure returns (uint80) {
        if (value > type(uint80).max) {
            revert SafeCastOverflowedUintDowncast(80, value);
        }
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
     */
    function toUint72(uint256 value) internal pure returns (uint72) {
        if (value > type(uint72).max) {
            revert SafeCastOverflowedUintDowncast(72, value);
        }
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
     */
    function toUint64(uint256 value) internal pure returns (uint64) {
        if (value > type(uint64).max) {
            revert SafeCastOverflowedUintDowncast(64, value);
        }
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
     */
    function toUint56(uint256 value) internal pure returns (uint56) {
        if (value > type(uint56).max) {
            revert SafeCastOverflowedUintDowncast(56, value);
        }
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
     */
    function toUint48(uint256 value) internal pure returns (uint48) {
        if (value > type(uint48).max) {
            revert SafeCastOverflowedUintDowncast(48, value);
        }
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
     */
    function toUint40(uint256 value) internal pure returns (uint40) {
        if (value > type(uint40).max) {
            revert SafeCastOverflowedUintDowncast(40, value);
        }
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
     */
    function toUint32(uint256 value) internal pure returns (uint32) {
        if (value > type(uint32).max) {
            revert SafeCastOverflowedUintDowncast(32, value);
        }
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
     */
    function toUint24(uint256 value) internal pure returns (uint24) {
        if (value > type(uint24).max) {
            revert SafeCastOverflowedUintDowncast(24, value);
        }
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
     */
    function toUint16(uint256 value) internal pure returns (uint16) {
        if (value > type(uint16).max) {
            revert SafeCastOverflowedUintDowncast(16, value);
        }
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
     */
    function toUint8(uint256 value) internal pure returns (uint8) {
        if (value > type(uint8).max) {
            revert SafeCastOverflowedUintDowncast(8, value);
        }
        return uint8(value);
    }

    /**
     * @dev Converts a signed int256 into an unsigned uint256.
     *
     * Requirements:
     *
     * - input must be greater than or equal to 0.
     */
    function toUint256(int256 value) internal pure returns (uint256) {
        if (value < 0) {
            revert SafeCastOverflowedIntToUint(value);
        }
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
     */
    function toInt248(int256 value) internal pure returns (int248 downcasted) {
        downcasted = int248(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(248, value);
        }
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
     */
    function toInt240(int256 value) internal pure returns (int240 downcasted) {
        downcasted = int240(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(240, value);
        }
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
     */
    function toInt232(int256 value) internal pure returns (int232 downcasted) {
        downcasted = int232(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(232, value);
        }
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
     */
    function toInt224(int256 value) internal pure returns (int224 downcasted) {
        downcasted = int224(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(224, value);
        }
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
     */
    function toInt216(int256 value) internal pure returns (int216 downcasted) {
        downcasted = int216(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(216, value);
        }
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
     */
    function toInt208(int256 value) internal pure returns (int208 downcasted) {
        downcasted = int208(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(208, value);
        }
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
     */
    function toInt200(int256 value) internal pure returns (int200 downcasted) {
        downcasted = int200(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(200, value);
        }
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
     */
    function toInt192(int256 value) internal pure returns (int192 downcasted) {
        downcasted = int192(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(192, value);
        }
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
     */
    function toInt184(int256 value) internal pure returns (int184 downcasted) {
        downcasted = int184(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(184, value);
        }
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
     */
    function toInt176(int256 value) internal pure returns (int176 downcasted) {
        downcasted = int176(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(176, value);
        }
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
     */
    function toInt168(int256 value) internal pure returns (int168 downcasted) {
        downcasted = int168(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(168, value);
        }
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
     */
    function toInt160(int256 value) internal pure returns (int160 downcasted) {
        downcasted = int160(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(160, value);
        }
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
     */
    function toInt152(int256 value) internal pure returns (int152 downcasted) {
        downcasted = int152(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(152, value);
        }
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
     */
    function toInt144(int256 value) internal pure returns (int144 downcasted) {
        downcasted = int144(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(144, value);
        }
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
     */
    function toInt136(int256 value) internal pure returns (int136 downcasted) {
        downcasted = int136(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(136, value);
        }
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
     */
    function toInt128(int256 value) internal pure returns (int128 downcasted) {
        downcasted = int128(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(128, value);
        }
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
     */
    function toInt120(int256 value) internal pure returns (int120 downcasted) {
        downcasted = int120(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(120, value);
        }
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
     */
    function toInt112(int256 value) internal pure returns (int112 downcasted) {
        downcasted = int112(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(112, value);
        }
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
     */
    function toInt104(int256 value) internal pure returns (int104 downcasted) {
        downcasted = int104(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(104, value);
        }
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
     */
    function toInt96(int256 value) internal pure returns (int96 downcasted) {
        downcasted = int96(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(96, value);
        }
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
     */
    function toInt88(int256 value) internal pure returns (int88 downcasted) {
        downcasted = int88(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(88, value);
        }
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
     */
    function toInt80(int256 value) internal pure returns (int80 downcasted) {
        downcasted = int80(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(80, value);
        }
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
     */
    function toInt72(int256 value) internal pure returns (int72 downcasted) {
        downcasted = int72(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(72, value);
        }
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
     */
    function toInt64(int256 value) internal pure returns (int64 downcasted) {
        downcasted = int64(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(64, value);
        }
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
     */
    function toInt56(int256 value) internal pure returns (int56 downcasted) {
        downcasted = int56(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(56, value);
        }
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
     */
    function toInt48(int256 value) internal pure returns (int48 downcasted) {
        downcasted = int48(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(48, value);
        }
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
     */
    function toInt40(int256 value) internal pure returns (int40 downcasted) {
        downcasted = int40(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(40, value);
        }
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
     */
    function toInt32(int256 value) internal pure returns (int32 downcasted) {
        downcasted = int32(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(32, value);
        }
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
     */
    function toInt24(int256 value) internal pure returns (int24 downcasted) {
        downcasted = int24(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(24, value);
        }
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
     */
    function toInt16(int256 value) internal pure returns (int16 downcasted) {
        downcasted = int16(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(16, value);
        }
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
     */
    function toInt8(int256 value) internal pure returns (int8 downcasted) {
        downcasted = int8(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(8, value);
        }
    }

    /**
     * @dev Converts an unsigned uint256 into a signed int256.
     *
     * Requirements:
     *
     * - input must be less than or equal to maxInt256.
     */
    function toInt256(uint256 value) internal pure returns (int256) {
        // Note: Unsafe cast below is okay because `type(int256).max` is guaranteed to be positive
        if (value > uint256(type(int256).max)) {
            revert SafeCastOverflowedUintToInt(value);
        }
        return int256(value);
    }

    /**
     * @dev Cast a boolean (false or true) to a uint256 (0 or 1) with no jump.
     */
    function toUint(bool b) internal pure returns (uint256 u) {
        assembly ("memory-safe") {
            u := iszero(iszero(b))
        }
    }
}

// File: @openzeppelin/contracts/utils/math/Math.sol


// OpenZeppelin Contracts (last updated v5.6.0) (utils/math/Math.sol)

pragma solidity ^0.8.20;



/**
 * @dev Standard math utilities missing in the Solidity language.
 */
library Math {
    enum Rounding {
        Floor, // Toward negative infinity
        Ceil, // Toward positive infinity
        Trunc, // Toward zero
        Expand // Away from zero
    }

    /**
     * @dev Return the 512-bit addition of two uint256.
     *
     * The result is stored in two 256 variables such that sum = high * 2²⁵⁶ + low.
     */
    function add512(uint256 a, uint256 b) internal pure returns (uint256 high, uint256 low) {
        assembly ("memory-safe") {
            low := add(a, b)
            high := lt(low, a)
        }
    }

    /**
     * @dev Return the 512-bit multiplication of two uint256.
     *
     * The result is stored in two 256 variables such that product = high * 2²⁵⁶ + low.
     */
    function mul512(uint256 a, uint256 b) internal pure returns (uint256 high, uint256 low) {
        // 512-bit multiply [high low] = x * y. Compute the product mod 2²⁵⁶ and mod 2²⁵⁶ - 1, then use
        // the Chinese Remainder Theorem to reconstruct the 512 bit result. The result is stored in two 256
        // variables such that product = high * 2²⁵⁶ + low.
        assembly ("memory-safe") {
            let mm := mulmod(a, b, not(0))
            low := mul(a, b)
            high := sub(sub(mm, low), lt(mm, low))
        }
    }

    /**
     * @dev Returns the addition of two unsigned integers, with a success flag (no overflow).
     */
    function tryAdd(uint256 a, uint256 b) internal pure returns (bool success, uint256 result) {
        unchecked {
            uint256 c = a + b;
            success = c >= a;
            result = c * SafeCast.toUint(success);
        }
    }

    /**
     * @dev Returns the subtraction of two unsigned integers, with a success flag (no overflow).
     */
    function trySub(uint256 a, uint256 b) internal pure returns (bool success, uint256 result) {
        unchecked {
            uint256 c = a - b;
            success = c <= a;
            result = c * SafeCast.toUint(success);
        }
    }

    /**
     * @dev Returns the multiplication of two unsigned integers, with a success flag (no overflow).
     */
    function tryMul(uint256 a, uint256 b) internal pure returns (bool success, uint256 result) {
        unchecked {
            uint256 c = a * b;
            assembly ("memory-safe") {
                // Only true when the multiplication doesn't overflow
                // (c / a == b) || (a == 0)
                success := or(eq(div(c, a), b), iszero(a))
            }
            // equivalent to: success ? c : 0
            result = c * SafeCast.toUint(success);
        }
    }

    /**
     * @dev Returns the division of two unsigned integers, with a success flag (no division by zero).
     */
    function tryDiv(uint256 a, uint256 b) internal pure returns (bool success, uint256 result) {
        unchecked {
            success = b > 0;
            assembly ("memory-safe") {
                // The `DIV` opcode returns zero when the denominator is 0.
                result := div(a, b)
            }
        }
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers, with a success flag (no division by zero).
     */
    function tryMod(uint256 a, uint256 b) internal pure returns (bool success, uint256 result) {
        unchecked {
            success = b > 0;
            assembly ("memory-safe") {
                // The `MOD` opcode returns zero when the denominator is 0.
                result := mod(a, b)
            }
        }
    }

    /**
     * @dev Unsigned saturating addition, bounds to `2²⁵⁶ - 1` instead of overflowing.
     */
    function saturatingAdd(uint256 a, uint256 b) internal pure returns (uint256) {
        (bool success, uint256 result) = tryAdd(a, b);
        return ternary(success, result, type(uint256).max);
    }

    /**
     * @dev Unsigned saturating subtraction, bounds to zero instead of overflowing.
     */
    function saturatingSub(uint256 a, uint256 b) internal pure returns (uint256) {
        (, uint256 result) = trySub(a, b);
        return result;
    }

    /**
     * @dev Unsigned saturating multiplication, bounds to `2²⁵⁶ - 1` instead of overflowing.
     */
    function saturatingMul(uint256 a, uint256 b) internal pure returns (uint256) {
        (bool success, uint256 result) = tryMul(a, b);
        return ternary(success, result, type(uint256).max);
    }

    /**
     * @dev Branchless ternary evaluation for `condition ? a : b`. Gas costs are constant.
     *
     * IMPORTANT: This function may reduce bytecode size and consume less gas when used standalone.
     * However, the compiler may optimize Solidity ternary operations (i.e. `condition ? a : b`) to only compute
     * one branch when needed, making this function more expensive.
     */
    function ternary(bool condition, uint256 a, uint256 b) internal pure returns (uint256) {
        unchecked {
            // branchless ternary works because:
            // b ^ (a ^ b) == a
            // b ^ 0 == b
            return b ^ ((a ^ b) * SafeCast.toUint(condition));
        }
    }

    /**
     * @dev Returns the largest of two numbers.
     */
    function max(uint256 a, uint256 b) internal pure returns (uint256) {
        return ternary(a > b, a, b);
    }

    /**
     * @dev Returns the smallest of two numbers.
     */
    function min(uint256 a, uint256 b) internal pure returns (uint256) {
        return ternary(a < b, a, b);
    }

    /**
     * @dev Returns the average of two numbers. The result is rounded towards
     * zero.
     */
    function average(uint256 a, uint256 b) internal pure returns (uint256) {
        unchecked {
            // (a + b) / 2 can overflow.
            return (a & b) + (a ^ b) / 2;
        }
    }

    /**
     * @dev Returns the ceiling of the division of two numbers.
     *
     * This differs from standard division with `/` in that it rounds towards infinity instead
     * of rounding towards zero.
     */
    function ceilDiv(uint256 a, uint256 b) internal pure returns (uint256) {
        if (b == 0) {
            // Guarantee the same behavior as in a regular Solidity division.
            Panic.panic(Panic.DIVISION_BY_ZERO);
        }

        // The following calculation ensures accurate ceiling division without overflow.
        // Since a is non-zero, (a - 1) / b will not overflow.
        // The largest possible result occurs when (a - 1) / b is type(uint256).max,
        // but the largest value we can obtain is type(uint256).max - 1, which happens
        // when a = type(uint256).max and b = 1.
        unchecked {
            return SafeCast.toUint(a > 0) * ((a - 1) / b + 1);
        }
    }

    /**
     * @dev Calculates floor(x * y / denominator) with full precision. Throws if result overflows a uint256 or
     * denominator == 0.
     *
     * Original credit to Remco Bloemen under MIT license (https://xn--2-umb.com/21/muldiv) with further edits by
     * Uniswap Labs also under MIT license.
     */
    function mulDiv(uint256 x, uint256 y, uint256 denominator) internal pure returns (uint256 result) {
        unchecked {
            (uint256 high, uint256 low) = mul512(x, y);

            // Handle non-overflow cases, 256 by 256 division.
            if (high == 0) {
                // Solidity will revert if denominator == 0, unlike the div opcode on its own.
                // The surrounding unchecked block does not change this fact.
                // See https://docs.soliditylang.org/en/latest/control-structures.html#checked-or-unchecked-arithmetic.
                return low / denominator;
            }

            // Make sure the result is less than 2²⁵⁶. Also prevents denominator == 0.
            if (denominator <= high) {
                Panic.panic(ternary(denominator == 0, Panic.DIVISION_BY_ZERO, Panic.UNDER_OVERFLOW));
            }

            ///////////////////////////////////////////////
            // 512 by 256 division.
            ///////////////////////////////////////////////

            // Make division exact by subtracting the remainder from [high low].
            uint256 remainder;
            assembly ("memory-safe") {
                // Compute remainder using mulmod.
                remainder := mulmod(x, y, denominator)

                // Subtract 256 bit number from 512 bit number.
                high := sub(high, gt(remainder, low))
                low := sub(low, remainder)
            }

            // Factor powers of two out of denominator and compute largest power of two divisor of denominator.
            // Always >= 1. See https://cs.stackexchange.com/q/138556/92363.

            uint256 twos = denominator & (0 - denominator);
            assembly ("memory-safe") {
                // Divide denominator by twos.
                denominator := div(denominator, twos)

                // Divide [high low] by twos.
                low := div(low, twos)

                // Flip twos such that it is 2²⁵⁶ / twos. If twos is zero, then it becomes one.
                twos := add(div(sub(0, twos), twos), 1)
            }

            // Shift in bits from high into low.
            low |= high * twos;

            // Invert denominator mod 2²⁵⁶. Now that denominator is an odd number, it has an inverse modulo 2²⁵⁶ such
            // that denominator * inv ≡ 1 mod 2²⁵⁶. Compute the inverse by starting with a seed that is correct for
            // four bits. That is, denominator * inv ≡ 1 mod 2⁴.
            uint256 inverse = (3 * denominator) ^ 2;

            // Use the Newton-Raphson iteration to improve the precision. Thanks to Hensel's lifting lemma, this also
            // works in modular arithmetic, doubling the correct bits in each step.
            inverse *= 2 - denominator * inverse; // inverse mod 2⁸
            inverse *= 2 - denominator * inverse; // inverse mod 2¹⁶
            inverse *= 2 - denominator * inverse; // inverse mod 2³²
            inverse *= 2 - denominator * inverse; // inverse mod 2⁶⁴
            inverse *= 2 - denominator * inverse; // inverse mod 2¹²⁸
            inverse *= 2 - denominator * inverse; // inverse mod 2²⁵⁶

            // Because the division is now exact we can divide by multiplying with the modular inverse of denominator.
            // This will give us the correct result modulo 2²⁵⁶. Since the preconditions guarantee that the outcome is
            // less than 2²⁵⁶, this is the final result. We don't need to compute the high bits of the result and high
            // is no longer required.
            result = low * inverse;
            return result;
        }
    }

    /**
     * @dev Calculates x * y / denominator with full precision, following the selected rounding direction.
     */
    function mulDiv(uint256 x, uint256 y, uint256 denominator, Rounding rounding) internal pure returns (uint256) {
        return mulDiv(x, y, denominator) + SafeCast.toUint(unsignedRoundsUp(rounding) && mulmod(x, y, denominator) > 0);
    }

    /**
     * @dev Calculates floor(x * y >> n) with full precision. Throws if result overflows a uint256.
     */
    function mulShr(uint256 x, uint256 y, uint8 n) internal pure returns (uint256 result) {
        unchecked {
            (uint256 high, uint256 low) = mul512(x, y);
            if (high >= 1 << n) {
                Panic.panic(Panic.UNDER_OVERFLOW);
            }
            return (high << (256 - n)) | (low >> n);
        }
    }

    /**
     * @dev Calculates x * y >> n with full precision, following the selected rounding direction.
     */
    function mulShr(uint256 x, uint256 y, uint8 n, Rounding rounding) internal pure returns (uint256) {
        return mulShr(x, y, n) + SafeCast.toUint(unsignedRoundsUp(rounding) && mulmod(x, y, 1 << n) > 0);
    }

    /**
     * @dev Calculate the modular multiplicative inverse of a number in Z/nZ.
     *
     * If n is a prime, then Z/nZ is a field. In that case all elements are inversible, except 0.
     * If n is not a prime, then Z/nZ is not a field, and some elements might not be inversible.
     *
     * If the input value is not inversible, 0 is returned.
     *
     * NOTE: If you know for sure that n is (big) a prime, it may be cheaper to use Fermat's little theorem and get the
     * inverse using `Math.modExp(a, n - 2, n)`. See {invModPrime}.
     */
    function invMod(uint256 a, uint256 n) internal pure returns (uint256) {
        unchecked {
            if (n == 0) return 0;

            // The inverse modulo is calculated using the Extended Euclidean Algorithm (iterative version)
            // Used to compute integers x and y such that: ax + ny = gcd(a, n).
            // When the gcd is 1, then the inverse of a modulo n exists and it's x.
            // ax + ny = 1
            // ax = 1 + (-y)n
            // ax ≡ 1 (mod n) # x is the inverse of a modulo n

            // If the remainder is 0 the gcd is n right away.
            uint256 remainder = a % n;
            uint256 gcd = n;

            // Therefore the initial coefficients are:
            // ax + ny = gcd(a, n) = n
            // 0a + 1n = n
            int256 x = 0;
            int256 y = 1;

            while (remainder != 0) {
                uint256 quotient = gcd / remainder;

                (gcd, remainder) = (
                    // The old remainder is the next gcd to try.
                    remainder,
                    // Compute the next remainder.
                    // Can't overflow given that (a % gcd) * (gcd // (a % gcd)) <= gcd
                    // where gcd is at most n (capped to type(uint256).max)
                    gcd - remainder * quotient
                );

                (x, y) = (
                    // Increment the coefficient of a.
                    y,
                    // Decrement the coefficient of n.
                    // Can overflow, but the result is casted to uint256 so that the
                    // next value of y is "wrapped around" to a value between 0 and n - 1.
                    x - y * int256(quotient)
                );
            }

            if (gcd != 1) return 0; // No inverse exists.
            return ternary(x < 0, n - uint256(-x), uint256(x)); // Wrap the result if it's negative.
        }
    }

    /**
     * @dev Variant of {invMod}. More efficient, but only works if `p` is known to be a prime greater than `2`.
     *
     * From https://en.wikipedia.org/wiki/Fermat%27s_little_theorem[Fermat's little theorem], we know that if p is
     * prime, then `a**(p-1) ≡ 1 mod p`. As a consequence, we have `a * a**(p-2) ≡ 1 mod p`, which means that
     * `a**(p-2)` is the modular multiplicative inverse of a in Fp.
     *
     * NOTE: this function does NOT check that `p` is a prime greater than `2`.
     */
    function invModPrime(uint256 a, uint256 p) internal view returns (uint256) {
        unchecked {
            return Math.modExp(a, p - 2, p);
        }
    }

    /**
     * @dev Returns the modular exponentiation of the specified base, exponent and modulus (b ** e % m)
     *
     * Requirements:
     * - modulus can't be zero
     * - underlying staticcall to precompile must succeed
     *
     * IMPORTANT: The result is only valid if the underlying call succeeds. When using this function, make
     * sure the chain you're using it on supports the precompiled contract for modular exponentiation
     * at address 0x05 as specified in https://eips.ethereum.org/EIPS/eip-198[EIP-198]. Otherwise,
     * the underlying function will succeed given the lack of a revert, but the result may be incorrectly
     * interpreted as 0.
     */
    function modExp(uint256 b, uint256 e, uint256 m) internal view returns (uint256) {
        (bool success, uint256 result) = tryModExp(b, e, m);
        if (!success) {
            Panic.panic(Panic.DIVISION_BY_ZERO);
        }
        return result;
    }

    /**
     * @dev Returns the modular exponentiation of the specified base, exponent and modulus (b ** e % m).
     * It includes a success flag indicating if the operation succeeded. Operation will be marked as failed if trying
     * to operate modulo 0 or if the underlying precompile reverted.
     *
     * IMPORTANT: The result is only valid if the success flag is true. When using this function, make sure the chain
     * you're using it on supports the precompiled contract for modular exponentiation at address 0x05 as specified in
     * https://eips.ethereum.org/EIPS/eip-198[EIP-198]. Otherwise, the underlying function will succeed given the lack
     * of a revert, but the result may be incorrectly interpreted as 0.
     */
    function tryModExp(uint256 b, uint256 e, uint256 m) internal view returns (bool success, uint256 result) {
        if (m == 0) return (false, 0);
        assembly ("memory-safe") {
            let ptr := mload(0x40)
            // | Offset    | Content    | Content (Hex)                                                      |
            // |-----------|------------|--------------------------------------------------------------------|
            // | 0x00:0x1f | size of b  | 0x0000000000000000000000000000000000000000000000000000000000000020 |
            // | 0x20:0x3f | size of e  | 0x0000000000000000000000000000000000000000000000000000000000000020 |
            // | 0x40:0x5f | size of m  | 0x0000000000000000000000000000000000000000000000000000000000000020 |
            // | 0x60:0x7f | value of b | 0x<.............................................................b> |
            // | 0x80:0x9f | value of e | 0x<.............................................................e> |
            // | 0xa0:0xbf | value of m | 0x<.............................................................m> |
            mstore(ptr, 0x20)
            mstore(add(ptr, 0x20), 0x20)
            mstore(add(ptr, 0x40), 0x20)
            mstore(add(ptr, 0x60), b)
            mstore(add(ptr, 0x80), e)
            mstore(add(ptr, 0xa0), m)

            // Given the result < m, it's guaranteed to fit in 32 bytes,
            // so we can use the memory scratch space located at offset 0.
            success := staticcall(gas(), 0x05, ptr, 0xc0, 0x00, 0x20)
            result := mload(0x00)
        }
    }

    /**
     * @dev Variant of {modExp} that supports inputs of arbitrary length.
     */
    function modExp(bytes memory b, bytes memory e, bytes memory m) internal view returns (bytes memory) {
        (bool success, bytes memory result) = tryModExp(b, e, m);
        if (!success) {
            Panic.panic(Panic.DIVISION_BY_ZERO);
        }
        return result;
    }

    /**
     * @dev Variant of {tryModExp} that supports inputs of arbitrary length.
     */
    function tryModExp(
        bytes memory b,
        bytes memory e,
        bytes memory m
    ) internal view returns (bool success, bytes memory result) {
        if (_zeroBytes(m)) return (false, new bytes(0));

        uint256 mLen = m.length;

        // Encode call args in result and move the free memory pointer
        result = abi.encodePacked(b.length, e.length, mLen, b, e, m);

        assembly ("memory-safe") {
            let dataPtr := add(result, 0x20)
            // Write result on top of args to avoid allocating extra memory.
            success := staticcall(gas(), 0x05, dataPtr, mload(result), dataPtr, mLen)
            // Overwrite the length.
            // result.length > returndatasize() is guaranteed because returndatasize() == m.length
            mstore(result, mLen)
            // Set the memory pointer after the returned data.
            mstore(0x40, add(dataPtr, mLen))
        }
    }

    /**
     * @dev Returns whether the provided byte array is zero.
     */
    function _zeroBytes(bytes memory buffer) private pure returns (bool) {
        uint256 chunk;
        for (uint256 i = 0; i < buffer.length; i += 0x20) {
            // See _unsafeReadBytesOffset from utils/Bytes.sol
            assembly ("memory-safe") {
                chunk := mload(add(add(buffer, 0x20), i))
            }
            if (chunk >> (8 * saturatingSub(i + 0x20, buffer.length)) != 0) {
                return false;
            }
        }
        return true;
    }

    /**
     * @dev Returns the square root of a number. If the number is not a perfect square, the value is rounded
     * towards zero.
     *
     * This method is based on Newton's method for computing square roots; the algorithm is restricted to only
     * using integer operations.
     */
    function sqrt(uint256 a) internal pure returns (uint256) {
        unchecked {
            // Take care of easy edge cases when a == 0 or a == 1
            if (a <= 1) {
                return a;
            }

            // In this function, we use Newton's method to get a root of `f(x) := x² - a`. It involves building a
            // sequence x_n that converges toward sqrt(a). For each iteration x_n, we also define the error between
            // the current value as `ε_n = | x_n - sqrt(a) |`.
            //
            // For our first estimation, we consider `e` the smallest power of 2 which is bigger than the square root
            // of the target. (i.e. `2**(e-1) ≤ sqrt(a) < 2**e`). We know that `e ≤ 128` because `(2¹²⁸)² = 2²⁵⁶` is
            // bigger than any uint256.
            //
            // By noticing that
            // `2**(e-1) ≤ sqrt(a) < 2**e → (2**(e-1))² ≤ a < (2**e)² → 2**(2*e-2) ≤ a < 2**(2*e)`
            // we can deduce that `e - 1` is `log2(a) / 2`. We can thus compute `x_n = 2**(e-1)` using a method similar
            // to the msb function.
            uint256 aa = a;
            uint256 xn = 1;

            if (aa >= (1 << 128)) {
                aa >>= 128;
                xn <<= 64;
            }
            if (aa >= (1 << 64)) {
                aa >>= 64;
                xn <<= 32;
            }
            if (aa >= (1 << 32)) {
                aa >>= 32;
                xn <<= 16;
            }
            if (aa >= (1 << 16)) {
                aa >>= 16;
                xn <<= 8;
            }
            if (aa >= (1 << 8)) {
                aa >>= 8;
                xn <<= 4;
            }
            if (aa >= (1 << 4)) {
                aa >>= 4;
                xn <<= 2;
            }
            if (aa >= (1 << 2)) {
                xn <<= 1;
            }

            // We now have x_n such that `x_n = 2**(e-1) ≤ sqrt(a) < 2**e = 2 * x_n`. This implies ε_n ≤ 2**(e-1).
            //
            // We can refine our estimation by noticing that the middle of that interval minimizes the error.
            // If we move x_n to equal 2**(e-1) + 2**(e-2), then we reduce the error to ε_n ≤ 2**(e-2).
            // This is going to be our x_0 (and ε_0)
            xn = (3 * xn) >> 1; // ε_0 := | x_0 - sqrt(a) | ≤ 2**(e-2)

            // From here, Newton's method give us:
            // x_{n+1} = (x_n + a / x_n) / 2
            //
            // One should note that:
            // x_{n+1}² - a = ((x_n + a / x_n) / 2)² - a
            //              = ((x_n² + a) / (2 * x_n))² - a
            //              = (x_n⁴ + 2 * a * x_n² + a²) / (4 * x_n²) - a
            //              = (x_n⁴ + 2 * a * x_n² + a² - 4 * a * x_n²) / (4 * x_n²)
            //              = (x_n⁴ - 2 * a * x_n² + a²) / (4 * x_n²)
            //              = (x_n² - a)² / (2 * x_n)²
            //              = ((x_n² - a) / (2 * x_n))²
            //              ≥ 0
            // Which proves that for all n ≥ 1, sqrt(a) ≤ x_n
            //
            // This gives us the proof of quadratic convergence of the sequence:
            // ε_{n+1} = | x_{n+1} - sqrt(a) |
            //         = | (x_n + a / x_n) / 2 - sqrt(a) |
            //         = | (x_n² + a - 2*x_n*sqrt(a)) / (2 * x_n) |
            //         = | (x_n - sqrt(a))² / (2 * x_n) |
            //         = | ε_n² / (2 * x_n) |
            //         = ε_n² / | (2 * x_n) |
            //
            // For the first iteration, we have a special case where x_0 is known:
            // ε_1 = ε_0² / | (2 * x_0) |
            //     ≤ (2**(e-2))² / (2 * (2**(e-1) + 2**(e-2)))
            //     ≤ 2**(2*e-4) / (3 * 2**(e-1))
            //     ≤ 2**(e-3) / 3
            //     ≤ 2**(e-3-log2(3))
            //     ≤ 2**(e-4.5)
            //
            // For the following iterations, we use the fact that, 2**(e-1) ≤ sqrt(a) ≤ x_n:
            // ε_{n+1} = ε_n² / | (2 * x_n) |
            //         ≤ (2**(e-k))² / (2 * 2**(e-1))
            //         ≤ 2**(2*e-2*k) / 2**e
            //         ≤ 2**(e-2*k)
            xn = (xn + a / xn) >> 1; // ε_1 := | x_1 - sqrt(a) | ≤ 2**(e-4.5)  -- special case, see above
            xn = (xn + a / xn) >> 1; // ε_2 := | x_2 - sqrt(a) | ≤ 2**(e-9)    -- general case with k = 4.5
            xn = (xn + a / xn) >> 1; // ε_3 := | x_3 - sqrt(a) | ≤ 2**(e-18)   -- general case with k = 9
            xn = (xn + a / xn) >> 1; // ε_4 := | x_4 - sqrt(a) | ≤ 2**(e-36)   -- general case with k = 18
            xn = (xn + a / xn) >> 1; // ε_5 := | x_5 - sqrt(a) | ≤ 2**(e-72)   -- general case with k = 36
            xn = (xn + a / xn) >> 1; // ε_6 := | x_6 - sqrt(a) | ≤ 2**(e-144)  -- general case with k = 72

            // Because e ≤ 128 (as discussed during the first estimation phase), we know have reached a precision
            // ε_6 ≤ 2**(e-144) < 1. Given we're operating on integers, then we can ensure that xn is now either
            // sqrt(a) or sqrt(a) + 1.
            return xn - SafeCast.toUint(xn > a / xn);
        }
    }

    /**
     * @dev Calculates sqrt(a), following the selected rounding direction.
     */
    function sqrt(uint256 a, Rounding rounding) internal pure returns (uint256) {
        unchecked {
            uint256 result = sqrt(a);
            return result + SafeCast.toUint(unsignedRoundsUp(rounding) && result * result < a);
        }
    }

    /**
     * @dev Return the log in base 2 of a positive value rounded towards zero.
     * Returns 0 if given 0.
     */
    function log2(uint256 x) internal pure returns (uint256 r) {
        // If value has upper 128 bits set, log2 result is at least 128
        r = SafeCast.toUint(x > 0xffffffffffffffffffffffffffffffff) << 7;
        // If upper 64 bits of 128-bit half set, add 64 to result
        r |= SafeCast.toUint((x >> r) > 0xffffffffffffffff) << 6;
        // If upper 32 bits of 64-bit half set, add 32 to result
        r |= SafeCast.toUint((x >> r) > 0xffffffff) << 5;
        // If upper 16 bits of 32-bit half set, add 16 to result
        r |= SafeCast.toUint((x >> r) > 0xffff) << 4;
        // If upper 8 bits of 16-bit half set, add 8 to result
        r |= SafeCast.toUint((x >> r) > 0xff) << 3;
        // If upper 4 bits of 8-bit half set, add 4 to result
        r |= SafeCast.toUint((x >> r) > 0xf) << 2;

        // Shifts value right by the current result and use it as an index into this lookup table:
        //
        // | x (4 bits) |  index  | table[index] = MSB position |
        // |------------|---------|-----------------------------|
        // |    0000    |    0    |        table[0] = 0         |
        // |    0001    |    1    |        table[1] = 0         |
        // |    0010    |    2    |        table[2] = 1         |
        // |    0011    |    3    |        table[3] = 1         |
        // |    0100    |    4    |        table[4] = 2         |
        // |    0101    |    5    |        table[5] = 2         |
        // |    0110    |    6    |        table[6] = 2         |
        // |    0111    |    7    |        table[7] = 2         |
        // |    1000    |    8    |        table[8] = 3         |
        // |    1001    |    9    |        table[9] = 3         |
        // |    1010    |   10    |        table[10] = 3        |
        // |    1011    |   11    |        table[11] = 3        |
        // |    1100    |   12    |        table[12] = 3        |
        // |    1101    |   13    |        table[13] = 3        |
        // |    1110    |   14    |        table[14] = 3        |
        // |    1111    |   15    |        table[15] = 3        |
        //
        // The lookup table is represented as a 32-byte value with the MSB positions for 0-15 in the first 16 bytes (most significant half).
        assembly ("memory-safe") {
            r := or(r, byte(shr(r, x), 0x0000010102020202030303030303030300000000000000000000000000000000))
        }
    }

    /**
     * @dev Return the log in base 2, following the selected rounding direction, of a positive value.
     * Returns 0 if given 0.
     */
    function log2(uint256 value, Rounding rounding) internal pure returns (uint256) {
        unchecked {
            uint256 result = log2(value);
            return result + SafeCast.toUint(unsignedRoundsUp(rounding) && 1 << result < value);
        }
    }

    /**
     * @dev Return the log in base 10 of a positive value rounded towards zero.
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
            return result + SafeCast.toUint(unsignedRoundsUp(rounding) && 10 ** result < value);
        }
    }

    /**
     * @dev Return the log in base 256 of a positive value rounded towards zero.
     * Returns 0 if given 0.
     *
     * Adding one to the result gives the number of pairs of hex symbols needed to represent `value` as a hex string.
     */
    function log256(uint256 x) internal pure returns (uint256 r) {
        // If value has upper 128 bits set, log2 result is at least 128
        r = SafeCast.toUint(x > 0xffffffffffffffffffffffffffffffff) << 7;
        // If upper 64 bits of 128-bit half set, add 64 to result
        r |= SafeCast.toUint((x >> r) > 0xffffffffffffffff) << 6;
        // If upper 32 bits of 64-bit half set, add 32 to result
        r |= SafeCast.toUint((x >> r) > 0xffffffff) << 5;
        // If upper 16 bits of 32-bit half set, add 16 to result
        r |= SafeCast.toUint((x >> r) > 0xffff) << 4;
        // Add 1 if upper 8 bits of 16-bit half set, and divide accumulated result by 8
        return (r >> 3) | SafeCast.toUint((x >> r) > 0xff);
    }

    /**
     * @dev Return the log in base 256, following the selected rounding direction, of a positive value.
     * Returns 0 if given 0.
     */
    function log256(uint256 value, Rounding rounding) internal pure returns (uint256) {
        unchecked {
            uint256 result = log256(value);
            return result + SafeCast.toUint(unsignedRoundsUp(rounding) && 1 << (result << 3) < value);
        }
    }

    /**
     * @dev Returns whether a provided rounding mode is considered rounding up for unsigned integers.
     */
    function unsignedRoundsUp(Rounding rounding) internal pure returns (bool) {
        return uint8(rounding) % 2 == 1;
    }

    /**
     * @dev Counts the number of leading zero bits in a uint256.
     */
    function clz(uint256 x) internal pure returns (uint256) {
        return ternary(x == 0, 256, 255 - log2(x));
    }
}

// File: Pyromancy.sol


pragma solidity 0.8.35;
/*
  ____
 |  _ \ _   _ _ __ ___  _ __ ___   __ _ _ __   ___ _   _
 | |_) | | | | '__/ _ \| '_ ` _ \ / _` | '_ \ / __| | | |
 |  __/| |_| | | | (_) | | | | | | (_| | | | | (__| |_| |
 |_|    \__, |_|  \___/|_| |_| |_|\__,_|_| |_|\___|\__, |
        |___/                                      |___/

 Pyromancy v1.04 — a no-loss BTC price-prediction pool.

 Immutable, ownerless, no admin levers. Pyromancers deposit EP (Elemental
 Particles); the pool stakes it to earn FBX, and depositors earn $EMBER in
 return. Principal is always withdrawable — a pure EP.unstakeEP bookkeeping move on
 the immutable EP token, independent of the volatile EMBER/FBX game above, so no one
 can lose their deposit. The sole trust assumption is EP's own solvency, and EP is
 itself immutable, ownerless and verifiable on-chain — not a governance risk.

 EMBER emission: the global rate starts at 1 EMBER/EP/second and decays
 geometrically, halving every two years (→ a negligible 1e-6/sec floor), loosely
 ECHOING the shape of EP's own tapering FBX yield (both decay over time) — but this
 is FRAMING, NOT AN ENFORCED INVARIANT (audit 010-01, reviewed). emberRate() is a
 PURE function of wall-clock (block.timestamp - START) and reads NO FBX state, while
 EP's FBX yield to this pool is FBXLockedSupply/DENOM scaled by this pool's SHARE of
 total staked EP (ElementalParticles.dailyFBXEmissionPerEP, L1034-1040). The two
 decays are UNRELATED, so if other parties stake EP heavily, EMBER supply can exceed
 the FBX backing it — EMBER does NOT "track" FBX in any binding sense, and per-EMBER
 value FLOATS. This is NOT a solvency hole: solvency rests SOLELY on the redemption
 curve's bound, fbxOut = amount*(2*supply-amount)*pool/supply^2 <= pool for every
 amount<=supply (proven algebraically + 200k+ randomized trials; equality only at
 amount==supply). More EMBER simply means a LOWER per-EMBER FBX value, never an
 over-draw. The binding invariant is the curve's <=pool bound, not emission-to-yield
 coupling. The
 schedule is global, so every depositor earns at the SAME prevailing rate at any
 instant. Crucially, a position's pending EMBER is valued at the rate CURRENT when
 it settles — pendingEmber = deposited * emberRate(now) * secondsSinceLastSettle —
 NOT the integral of the rate over the span. This makes emission "use it or lose
 it": claiming (or any deposit/withdraw) regularly locks in today's higher rate,
 while a position left dormant across halvings has its whole elapsed span re-valued
 at the lower current rate and forfeits the difference (never minted). It rewards
 active play AND protects holders from a long-forgotten wallet resurfacing with an
 outsized claim on the FBX pool — a dormant position's claim shrinks over time
 instead of growing to the emission asymptote. Earnings accrue as a CLAIMABLE
 balance, realized by claim() (also settled on deposit/withdraw). Unclaimed
 earnings sit off the ERC20 balance — spending EMBER moves only real tokens — but
 are still counted in the redemption denominator (the base term, at the current
 rate; the small at-claim FireBot blessing is excluded — see fullyDilutedSupply),
 so base earnings can't be timed to over-extract FBX. NOTE pending can DECREASE if a wallet
 idles for many years (the decaying rate eventually outpaces elapsed time) — the
 inherent flip side of use-it-or-lose-it, by design.

 EMBER redemption: a marginal EMBER redeems for 2x its naive pro-rata share of the
 FBX pool, so value climbs twice as fast as the pool grows; each redemption pulls
 FBX out and slips down a curve, pushing value back down. 5% of each redemption is
 recycled into freshly minted+staked EP that the pool keeps for good — a one-way
 deepening of the yield base that backs every holder's EMBER. FireBot NFT holders
 earn a slice of EXTRA EMBER on every emission claim (a "blessing", see _earn). It is
 always backed, never free money: the bonus is minted EMBER priced against fully-
 diluted supply, so it draws no FBX AT MINT — but, like all EMBER, it IS redeemable
 for FBX through the curve. "Draws no FBX" means no FBX leaves on the mint itself; the
 minted EMBER's eventual redemption is a BOUNDED pro-rata dilution of existing
 holders' backing (a holder reward funded by a small <25% dilution), NOT a separate
 unbacked claim layered on top of the pool. Dilution-not-drain, bounded and
 self-limiting by design.

 The forecast: pyromancers call BTC Rise or Fall over a chosen window. The EMBER
 offered is ESCROWED on cast (not burned — it stays in totalSupply, so casting
 can't deflate redemption value). On finalize: a correct call pays 2x the offering,
 a wrong one nothing, an exact tie refunds. Payouts draw from the escrow pot FIRST
 and mint only the shortfall, so a Rise+Fall hedge over one window is supply-neutral
 and never a risk-free mint. CAVEAT (see the SHORTFALL MINT note on _payFromPot): a
 WINNING call finalized after the pot has decayed or been drained by prior winners
 DOES net-mint the uncovered slice (bounded: <= 2*amount*claimFactor, correct calls
 only) — a bounded dilution of passive holders, never an FBX draw. "Supply-neutral"
 describes the hedge and the prompt-finalize-against-a-funded-pot case, not every
 path. The pot decays 1/365 of its balance per day — the sink
 that retires losing offerings. finalizeForecast applies the payout immediately, so
 finalize within 7 days of the resolve deadline for full value; later finalization
 erodes the payout 1%/day to zero by day 107 (the forgone slice is never minted).

 Anti-stale-price design: Chainlink only prints on deviation/heartbeat, so its
 latest price lags the live market. To deny a searcher a known entry, NEITHER
 endpoint is known at cast:
   - baseline = price at the first round STRICTLY AFTER the cast block.
   - resolve  = price at the first round at/after baseline.updatedAt + duration.
 The cast is blind: a pure directional call with no visible entry price.

 Resolving: a future timestamp maps to no fixed round id, so finalize takes each
 candidate round id plus its immediate predecessor and verifies in O(1) that the
 candidate is canonical (its timestamp is on the correct side of the target, its
 predecessor's on the other). Chainlink proxy round ids pack (phaseId << 64 |
 aggregatorRoundId) and reset the low counter to 1 each migration, so a phase's
 first round's predecessor is the last round of the PREVIOUS phase, not roundId-1;
 finalize handles both. It also pins the phase itself (_requireCanonicalPhase): a
 round is canonical only if no LATER phase had already started when it printed. The
 elegant part is the anchor — latestRoundData() reveals the highest live phase, so
 the contract always KNOWS whether a successor phase exists. If none does, the round
 is trivially canonical; if one does, the finalizer hands over that successor's
 genesis round and the contract verifies it. An old aggregator that keeps printing
 into a newer phase (a temporal overlap at a migration) therefore can't substitute a
 stale price — the check is fully closed, with no trusted assumption about how the
 successor numbered its rounds. The UI binary-searches for all the ids.
*/





/// @notice Minimal interface to the EP staking token. `mintEP(x)` mints x EP by
///         burning 300*x FBX from the caller (so this contract must approve FBX
///         to EP); `stakeEP`/`unstakeEP` move principal in/out of the EP
///         staking pool; `claimRewards` pulls this contract's 90% share of
///         accrued FBX (the EP contract skims 10% to its team). Note stakeEP
///         and unstakeEP each call claimRewards internally, so deposit and
///         withdraw also realize this contract's pending FBX as a side effect.
///
///         REWARD-CAP NOTE (reviewed — bounded, NOT a value leak): EP credits at most
///         ~30 days of FBX per claim, and its emission is a fraction (1/1336) of the
///         FBX it CURRENTLY holds — a perpetual geometric decay, like this contract's
///         own escrow pot. So FBX the pool doesn't claim in time is not destroyed and
///         goes nowhere: FBX is fixed-supply and EP is immutable/ownerless with
///         claimRewards as its ONLY FBX outflow, so the uncaptured amount stays in EP's
///         pool, keeps backing emission, and is recaptured pro-rata later. Missing a
///         >30-day window merely forgoes capturing it at the higher (less-decayed) rate;
///         the sole real cost is the slice any OTHER EP stakers capture meanwhile (≈0
///         when this pool dominates the stake). Pyromancy harvests on EVERY deposit/
///         withdraw/redeem (stakeEP/unstakeEP claim internally; redeemEmber explicitly);
///         cast/finalize do not, but a dust redeemEmber is a permissionless poke, so a
///         dedicated harvest() is unnecessary. Bottom line: bounded, self-correcting,
///         never a principal risk.
interface IEP is IERC20 {
    function claimRewards() external returns (uint256);
    function mintEP(uint256 amountEP) external;
    function stakeEP(uint256 amountEP) external;
    function unstakeEP(uint256 amountEP) external;
}

/// @notice Minimal interface to Chainlink's BTC/USD aggregator proxy.
interface AggregatorV3Interface {
    function latestRoundData() external view returns (uint80 roundId, int256 answer, uint256 startedAt, uint256 updatedAt, uint80 answeredInRound);
    function getRoundData(uint80 _roundId) external view returns (uint80 roundId, int256 answer, uint256 startedAt, uint256 updatedAt, uint80 answeredInRound);
}

/// @notice Minimal interface to the FireBot NFT collection (balance only).
interface IFireBots {
    function balanceOf(address owner) external view returns (uint256);
}

/// @title Pyromancy — an immutable, ownerless, no-loss BTC price-prediction pool
///        whose earned EMBER token redeems for FBX on a volatile 2x curve. Principal
///        is always recoverable, and every EMBER claim on FBX is fully backed by
///        design — the pool can be drained by no one and governed by no one.
contract Pyromancy is ERC20 {
    using SafeERC20 for IERC20;
    using SafeERC20 for IEP;

    /// @dev Hardcoded Polygon mainnet addresses — baked into the bytecode, not
    ///      settable, so there is no admin lever to ever repoint the pool.
    IERC20 public constant FBX = IERC20(0xD125443F38A69d776177c2B9c041f462936F8218);
    IEP    public constant EP  = IEP(0x60Ed6aCEF3a96F8CDaF0c0D207BbAfA66e751af2);

    /// @dev Chainlink BTC/USD price feed on Polygon.
    ///      https://data.chain.link/feeds/polygon/mainnet/btc-usd
    AggregatorV3Interface public constant BTC_USD = AggregatorV3Interface(0xc907E116054Ad103354f2D350FD2514433D57F6f);

    /// @dev FireBot NFT collection on Polygon — holders earn an EMBER emission
    ///      blessing (see _earn).
    IFireBots public constant FIREBOTS = IFireBots(0xE9eeE7294dc7c3bb64FD57A514E755022a333295);

    /// @dev 1 EP minted by EP.mintEP() costs 300 FBX (burned).
    uint256 public constant FBX_PER_EP = 300;
    /// @dev Share of each redemption recycled into newly minted+staked EP (%).
    uint256 public constant RECYCLE_PCT = 5;

    /// @dev EMBER emission blessing for FireBot holders: on every emission claim a
    ///      holder mints a bonus slice of EMBER on top of what they earned (see
    ///      _earn). Saturating curve in the number of FireBots held:
    ///          blessingBps = BLESSING_MAX_BPS * bots / (bots + BLESSING_K)
    ///      First FireBot ≈ 0.1%, approaching but never reaching 25%. The bonus is
    ///      ordinary emission — it enters totalSupply and is priced against
    ///      fullyDilutedSupply on redemption, so it draws no FBX AT MINT. Like all
    ///      EMBER it remains REDEEMABLE for FBX through the curve; "no FBX directly"
    ///      means the mint itself moves no FBX, not that the bonus is non-redeemable.
    ///      Its redemption is a bounded pro-rata dilution of holders' backing, never
    ///      an extra unbacked claim on FBX: it is always backed, just shared a
    ///      little more toward holders.
    ///
    ///      "DILUTION-NOT-DRAIN" IS PRECISE EVEN AT THE 2x CURVE (reviewed, intended):
    ///      because a marginal EMBER redeems for 2x its naive pro-rata share (see
    ///      redeemEmber) AND the blessing is omitted from fullyDilutedSupply() until
    ///      minted, a holder who claims a blessing and redeems it promptly monetizes the
    ///      free mint at up to ~2x pro-rata real FBX — sourced from other holders' backing
    ///      (simulated ~+11% FBX vs an unblessed claimer at 300 NFTs / ~13.7% blessing).
    ///      This is STILL dilution-not-drain and STILL bounded, not a contradiction:
    ///      (a) every EMBER, blessed or not, redeems on the SAME 2x curve, so the "2x"
    ///      is the redemption mechanic, not an extra blessing-only multiplier;
    ///      (b) the whole supply (blessing included) still redeems to AT MOST the whole
    ///      pool, never more — the 2x is front-loaded marginal value the curve takes back
    ///      as redemption grows (path-independent, no split-to-gain);
    ///      (c) the edge over other holders is exactly the disclosed redeemer-favorable
    ///      front-runner dynamic of omitting the not-yet-minted bonus from the denominator
    ///      (see fullyDilutedSupply), hard-capped < 25% of the claimer's own settled
    ///      emission. It is the intended FireBot reward (including the accepted
    ///      flash-borrow path below), monetized at the curve's 2x point but never an
    ///      unbacked draw. A global blessing accumulator in the denominator would remove
    ///      even this front-run edge if ever desired (fullyDilutedSupply notes the same).
    ///
    ///      It is a holder reward, by design: a FireBot holder earns ~blessingBps
    ///      more EMBER per unit of their own emission than a non-holder, funded by a
    ///      small pro-rata dilution of supply. The rate is read LIVE at settlement and
    ///      applied to the emission realized then, so a holder's current FireBot
    ///      standing blesses whatever they claim — holding one pays off whenever you
    ///      claim; you needn't have held it the whole span. Reading the rate live at
    ///      claim is a deliberate simplicity choice with no downside: because the bonus
    ///      only dilutes — never draws FBX — and is hard-capped below 25%, there is no
    ///      solvency edge to be gained by timing FireBot ownership, just a bounded share
    ///      of emission. The cap and the dilutes-not-draws design keep it self-limiting
    ///      (it tracks the decaying emission curve down to ~zero), accruing whether or
    ///      not you ever redeem.
    ///
    ///      TIMING (reviewed, accepted): because the rate is read live, FireBot
    ///      ownership is intentionally timing-acquirable — a holder (or even someone who
    ///      flash-borrows FireBots) can settle a large accrued span at up to the cap.
    ///      This is accepted by design, not a flaw: the bonus is bounded (< 25% per
    ///      settlement, so it can never exceed ~25% of an account's lifetime emission as
    ///      supply inflation), it only DILUTES EMBER (never draws FBX, no unbacked
    ///      claim), and the reverse design — snapshotting or time-weighting ownership —
    ///      was deliberately rejected: it adds complexity and merely flips the gaming
    ///      surface (acquire-then-stake-then-sell) rather than removing it.
    uint256 public constant BLESSING_MAX_BPS = 2_500; // asymptote: 25%
    uint256 public constant BLESSING_K = 249;         // shape: bot #1 ≈ 0.1%
    uint256 private constant BPS = 10_000;

    /// @dev Chainlink proxy round ids pack (phaseId << 64) | aggregatorRoundId.
    ///      The low 64 bits are sequential WITHIN a phase but reset to 1 at each
    ///      aggregator migration, so round-to-round continuity must be
    ///      reconstructed per phase (see _requirePredecessor).
    uint256 private constant PHASE_OFFSET = 64;

    /// @dev Gas floor used to distinguish a genuine "round does not exist" revert
    ///      from an induced out-of-gas in _tryUpdatedAt. A starved sub-call (the
    ///      63/64 rule) could otherwise forge a missing round and bypass the
    ///      last-in-phase / canonical-phase proofs; requiring this much gas to
    ///      remain forces a real OOG to bubble up instead of reading as absence.
    ///      This absolute floor is provably sufficient, not a tuned heuristic:
    ///      an induced child OOG leaves the parent only ≈ C_real/63 gas (C_real =
    ///      getRoundData's true cost), so the guard can be slipped only if C_real
    ///      exceeds 63 * 100k ≈ 6.3M gas, whereas a real Chainlink getRoundData
    ///      STATICCALL costs ~8k–50k — a ~125x margin. See the full derivation in
    ///      the catch block of _tryUpdatedAt. Fails CLOSED if ever exceeded.
    uint256 private constant _ROUND_PROBE_GAS = 100_000;

    /// @dev Bounds on a forecast's duration, measured from the baseline round. The
    ///      ~60s floor makes the outcome turn on real elapsed market movement rather
    ///      than the next mechanical catch-up tick (the BTC/USD feed prints ~every
    ///      33s, and consecutive catch-up prints move in a locked direction). It does
    ///      not erase every edge — a residual directional read is inherent forecasting
    ///      alpha — but the blind baseline (first round AFTER the cast) denies entry
    ///      at a known-stale price. The max keeps the resolving round easily searchable.
    uint64 public constant MIN_DURATION = 1 minutes;
    uint64 public constant MAX_DURATION = 365 days;

    /// @dev Payout schedule, measured from a forecast's resolve deadline. A winning
    ///      or draw payout is paid in FULL for CLAIM_GRACE, then loses 1%/day,
    ///      reaching zero PENALTY_RAMP after the grace ends (full through day 7,
    ///      nothing from day 107). Because finalize pays immediately, this collapses
    ///      what would otherwise be a free option to mint a win's EMBER at a chosen
    ///      moment: finalize promptly or the payout erodes (the forgone slice is never
    ///      minted). Not a hard deadline — a late winner still gets paid, just less.
    uint64 public constant CLAIM_GRACE = 7 days;
    uint64 public constant PENALTY_RAMP = 100 days; // 1%/day from grace-end to zero

    // ----- EMBER emission decay -----
    // The GLOBAL emission rate decays geometrically from 1/sec toward a floor,
    // halving the above-floor part every two years:
    //     rate(t) = FLOOR + (1 - FLOOR) * 2^(-(t - START)/HALF_LIFE)   EMBER/EP/sec
    // FLOOR is a negligible 1e-6, so effectively 1.0 at deploy, 0.5 at 2yr, … → ~0.
    // The geometric taper merely ECHOES the shape of EP's own decaying FBX yield; it
    // does NOT track it as an enforced invariant (audit 010-01) — emberRate() reads no
    // FBX state (it is pure in block.timestamp - START), so EMBER supply is NOT pinned
    // to FBX backing and per-EMBER value floats. Solvency is enforced ONLY by the
    // redemption curve's fbxOut<=pool bound (see redeemEmber), never by this coupling.
    // The taper still bounds a CONTINUOUSLY-SETTLING position's lifetime emission per
    // EP regardless: it is bounded above by
    // ≈ HALF_LIFE/ln2 ≈ 91M from the decaying part, plus a negligible floor;
    // a dormant one earns strictly less, so realized emission only ever comes in
    // bounded (≈ HALF_LIFE/ln2 ≈ 91M from the decaying part, plus a negligible floor);
    // a dormant one earns strictly less, so realized emission only ever comes in
    // under that ceiling — never above it.
    //
    // Accounting is O(1) and the rate is "spot": a position's pending EMBER is its
    // principal times the CURRENT rate times the seconds since its last settlement,
    //     pending = deposited * emberRate(now) * (now - lastEarnTime) / WAD
    // NOT the time-integral of the rate over that span. Because the rate only falls,
    // re-valuing a whole elapsed span at today's lower rate makes emission "use it or
    // lose it": settle often to lock in the prevailing rate; leave a position idle
    // across halvings and it forfeits the decayed difference (never minted). The
    // global unclaimed total stays O(1) — rate(now) is common to every holder, so
    //     unclaimedEmber = emberRate(now) * (now * totalDeposited - totalEarnTimeDebt) / WAD
    // with totalEarnTimeDebt = Σ deposited_i * lastEarnTime_i. Both factors are
    // non-negative (lastEarnTime_i <= now always), so nothing underflows — there is
    // no monotonic-index obligation as there was under the old integral accrual.

    /// @dev Fixed-point unit for the decay math.
    uint256 private constant WAD = 1e18;
    /// @dev Emission half-life: the above-floor rate halves every HALF_LIFE.
    uint256 public constant HALF_LIFE = 730 days;
    /// @dev Rate floor the emission decays toward, in WAD. 1e-6 (1e12) — a negligible
    ///      one-millionth of the launch rate, economically zero — so the rate never
    ///      reaches exactly zero. The decaying part carries the remaining
    ///      (WAD - FLOOR_WAD); see emberRate.
    uint256 public constant FLOOR_WAD = 1e12;
    /// @dev Per-second survival factor Q = 2^(-1/HALF_LIFE), in WAD. Q^n is the
    ///      above-floor rate's decay (a WAD fraction) after n seconds, with
    ///      Q^HALF_LIFE ≈ 1/2 (exact to ~2.6e6 wei after rpow flooring). emberRate
    ///      reads it directly; spot-rate accrual needs no further decay constants.
    uint256 private constant Q_WAD = 999999989010223606;

    /// @dev Deploy timestamp — t=0 of the emission schedule. Immutable, so the
    ///      decay curve is fixed at construction and can never be repointed.
    uint256 public immutable START;

    // ----- Earned-EMBER accrual (claimable, spot-rate) -----
    // A depositor's accrued-but-unclaimed EMBER is valued at the CURRENT rate:
    //   pending = deposited[user] * emberRate(now) * (now - lastEarnTime[user]) / WAD
    // _earn() mints it and snaps lastEarnTime to now. ERC20 balanceOf/totalSupply are
    // STANDARD here (real minted tokens only) — accrual lives off-balance until
    // claimed, so spending EMBER never silently realizes a stream. For redemption
    // pricing, fullyDilutedSupply() adds the global unclaimed term back
    //   ( emberRate(now) * (now * totalDeposited - totalEarnTimeDebt) / WAD,
    //     totalEarnTimeDebt = Σ deposited_i * lastEarnTime_i )
    // so the curve prices against fully-diluted *base* emission and unclaimed base
    // earnings can't be timed to over-extract FBX. The FireBot blessing minted on
    // top at claim (see _earn) is NOT in this denominator: it is per-account, read
    // live from FireBot holdings, so there is no exact O(1) global term — and it is
    // small and rivalrous (hard-capped < 25% asymptote, ~+13.7% even at 300 NFTs, few
    // wallets can reach it). Its omission is a bounded transfer to later claimants — the
    // same redeemer-favorable front-runner dynamic disclosed on redeemEmber — not an
    // unbacked drain. In practice it just surfaces as minor inflation when blessed
    // holders claim.

    /// @dev EP principal each pyromancer has deposited (and that is staked).
    mapping(address => uint256) public deposited;
    /// @dev Timestamp of a pyromancer's last settlement. Earnings since then are
    ///      deposited * emberRate(now) * (now - lastEarnTime) / WAD — the elapsed
    ///      span valued at the CURRENT (spot) rate, so settling late forfeits the
    ///      decayed difference (see the emission-decay note above).
    mapping(address => uint256) public lastEarnTime;
    /// @dev Sum of all deposited EP (the global EMBER earn rate is this scaled by
    ///      the current emission rate; at deploy, one EMBER per unit per second).
    uint256 public totalDeposited;
    /// @dev Σ deposited_i * lastEarnTime_i — the offset that makes the global
    ///      unclaimed total computable in O(1) (see unclaimedEmber).
    uint256 public totalEarnTimeDebt;
    /// @dev Lifetime BASE EMBER minted by staking emission (the `earned` term of
    ///      every _earn mint) — the realized base emission to date. (Under the spot
    ///      rate, claimed EMBER was minted at the rates prevailing when each holder
    ///      settled, while unclaimedEmber() values the still-unrealized tail at the
    ///      current rate, so the two are a live snapshot rather than a clean sum.) The
    ///      FireBot blessing bonus minted alongside it is tracked separately in
    ///      totalBlessed, and winning-forecast shortfall mints are separate again,
    ///      so this is NOT the same as embersCreated().
    uint256 public totalEmberEarned;

    /// @dev Forecast status. Pending until finalized, then terminal.
    enum Status { Pending, Right, Wrong, Draw }

    /// @dev A single BTC Rise/Fall forecast over a time window. Both prices are
    ///      resolved at finalize from future rounds, so nothing price-related is
    ///      stored at cast — only when, for how long, and the EMBER offered.
    struct Forecast {
        address pyromancer;   // who cast the forecast
        uint64  castTime;     // block timestamp the omen was cast
        bool    forecastRise; // true = Rise, false = Fall
        Status  status;
        uint64  duration;     // window length, measured from the baseline round
        uint256 amount;       // EMBER offered (escrowed) for this forecast
    }

    Forecast[] public forecasts;
    mapping(address => uint256[]) public forecastsOf;

    /// @dev Lifetime EMBER offered into forecasts (escrowed on cast, not burned) —
    ///      the total pyromancers have ever committed to forecasting. Compare with
    ///      `totalForecastWon`: in edge-free ~50/50 forecasting the two grow
    ///      together, so a persistent gap (won running above spent) is the tell that
    ///      pyromancers collectively have a predictive edge.
    uint256 public totalForecastSpent;
    /// @dev Lifetime EMBER actually PAID OUT by finalizing forecasts: 2x on a
    ///      correct call and the refunded offering on a draw (both after any
    ///      claim-time penalty), nothing on a wrong one. Sourced from the escrow pot
    ///      first and only minting the shortfall, so this is "won", not "minted".
    ///      Draw refunds ARE counted so the (won − spent) edge signal is unbiased.
    uint256 public totalForecastWon;

    // ----- Escrow pot decay -----
    /// @dev Offerings cast into forecasts are escrowed in THIS contract and stay
    ///      part of totalSupply, so casting can never transiently deflate the
    ///      redemption denominator. The escrow pot decays at 1/365 of its CURRENT
    ///      balance per day: each interaction burns potBalance * elapsed /
    ///      DECAY_PERIOD (capped at the balance). Because it is applied on the
    ///      shrinking current balance, decay is geometric rather than strictly linear,
    ///      and the realized speed depends on interaction frequency (~63% of an idle
    ///      pot per year under daily touches; a single touch after ≥365 idle days
    ///      clears it). It is the slow sink that retires losing offerings; since a
    ///      winner is paid from the pot before any new mint, decaying EMBER is never
    ///      re-minted.
    uint256 public constant DECAY_PERIOD = 365 days;
    /// @dev Timestamp through which the escrow pot has been decayed; advanced to
    ///      now on every interaction by _applyDecay.
    uint256 public lastDecayTime;
    /// @dev Lifetime EMBER burned by escrow-pot decay (a component of embersBurnt).
    uint256 public totalDecayBurned;

    /// @dev Lifetime gross EMBER ever passed into redeemEmber (the `amount`
    ///      redeemers submitted). Redemption now burns the full `amount`, so this
    ///      is exactly the EMBER burned out of supply by redemptions.
    uint256 public totalEmberRedeemed;
    /// @dev Lifetime EMBER minted as the FireBot blessing bonus on emission claims
    ///      (see _earn) — extra supply handed to holders, not a slice kept on
    ///      redemption. A component of emission, not of redeem burn.
    uint256 public totalBlessed;
    /// @dev Lifetime gross FBX paid out of the pool by redemptions (the full
    ///      fbxOut, before the 5% recycle split). The portion handed to redeemers
    ///      is this minus what was recycled into freshly staked EP.
    uint256 public totalFbxRedeemed;
    /// @dev Lifetime NET FBX actually handed to redeemers (Σ of each redemption's
    ///      95% after the recycle split). The recycled portion staked into fresh EP
    ///      is totalFbxRedeemed − totalFbxToUsers.
    uint256 public totalFbxToUsers;

    // ----- Per-user lifetime stats -----
    // Per-account mirrors of the global lifetime counters, so a UI can read a
    // single account's history with one call (no event indexer required). Each is
    // incremented at the same site as its global counterpart; see userStats().

    /// @dev Lifetime EMBER `user` has earned from EP-staking emission — the sum of
    ///      every _earn mint (equivalently, all EmberClaimed for the account).
    ///      pendingEmber(user) is the still-unclaimed tail valued at the current rate.
    mapping(address => uint256) public lifetimeEarned;
    /// @dev Lifetime EMBER `user` has offered into forecasts (escrowed on cast).
    ///      Per-account mirror of totalForecastSpent.
    mapping(address => uint256) public forecastSpent;
    /// @dev Lifetime EMBER `user` has been PAID OUT by finalizing its forecasts
    ///      (2x a correct call or a refunded draw, after any claim-time penalty).
    ///      Per-account mirror of totalForecastWon; includes draw refunds, so net
    ///      forecasting P&L is forecastWon[user] − forecastSpent[user].
    mapping(address => uint256) public forecastWon;
    /// @dev Lifetime gross EMBER `user` has passed into redeemEmber (the `amount`
    ///      submitted, burned in full). Mirror of totalEmberRedeemed.
    mapping(address => uint256) public emberRedeemedBy;
    /// @dev Lifetime EMBER `user` has minted as the FireBot blessing bonus on
    ///      emission claims (see _earn). Mirror of totalBlessed.
    mapping(address => uint256) public blessedBy;
    /// @dev Lifetime FBX `user` has actually received from redemptions (the 95%
    ///      paid out, net of the 5% recycle split).
    mapping(address => uint256) public fbxRedeemedBy;

    // --- reentrancy guard ---
    uint256 private constant _NOT_ENTERED = 1;
    uint256 private constant _ENTERED = 2;
    uint256 private _status = _NOT_ENTERED;

    event Deposited(address indexed user, uint256 amountEP, address indexed funder);
    event Withdrawn(address indexed user, uint256 amountEP);
    event EmberClaimed(address indexed user, uint256 amount);
    /// @dev Bonus EMBER minted to a FireBot holder on top of an emission claim.
    event EmberBlessed(address indexed user, uint256 bonus);
    event EmberRedeemed(address indexed user, uint256 emberIn, uint256 fbxOut, uint256 fbxToUser);
    event ForecastCast(address indexed pyromancer, uint256 indexed forecastId, uint64 castTime, uint64 duration, uint256 amount, bool forecastRise);
    /// @dev The settling rounds and their prices are reconstructable off-chain
    ///      (deterministic from castTime+duration, prices live on Chainlink), so
    ///      only the on-chain results — the outcome and EMBER paid — are logged.
    event ForecastFinalized(
        uint256 indexed forecastId,
        address indexed pyromancer,
        Status outcome,
        uint256 emberPaid
    );

    modifier nonReentrant() {
        require(_status != _ENTERED, "reentrant");
        _status = _ENTERED;
        _;
        _status = _NOT_ENTERED;
    }

    /// @notice Names the token Ember (EMBER) and grants the EP contract an
    ///         allowance to burn the pool's FBX when minting recycled EP.
    /// @dev    CONCENTRATED-TRUST NOTE (audit 003-01, reviewed — safe, not a defect):
    ///         this is an unbounded (type(uint256).max) FBX approval to EP and is the
    ///         single most concentrated dependency-trust point in the contract. It is
    ///         NOT covered by `nonReentrant` (it is a one-time state grant, not a call),
    ///         so its safety rests entirely on EP being the immutable, ownerless
    ///         contract at the hardcoded `EP` address (see L150). Tracing the REAL EP
    ///         source (ElementalParticles.sol, bundled): the only consumers of an
    ///         allowance over this pool's FBX are EP.mintEP (FBX.burnFrom(msg.sender,..))
    ///         and EP.claimRewards (FBX.safeTransfer from EP's OWN balance) — EP never
    ///         draws transferFrom/burnFrom against address(Pyromancy) unless Pyromancy is
    ///         itself msg.sender. So this allowance can only ever be spent by THIS pool's
    ///         own redeemEmber->EP.mintEP recycle, burning exactly 300*epToMint FBX (the
    ///         FBX_PER_EP cost), never more than `toRecycle` set aside that call. With the
    ///         deployed immutable EP it is therefore unexploitable. (Were EP ever
    ///         mutable — it is not — a max approval would be a full FBX-drain lever; the
    ///         lazy-approve-exact-then-reset alternative is unnecessary here and is the
    ///         only hardening that would change this, at two extra SSTOREs per recycle.)
    constructor() ERC20("Ember", "EMBER") {
        START = block.timestamp;
        lastDecayTime = block.timestamp;
        FBX.forceApprove(address(EP), type(uint256).max);
    }

    // ----- Emission rate (decaying) -----

    /// @notice Live emission rate as a WAD fraction of the original 1 EMBER per EP
    ///         per second: 1e18 at deploy, ~5e17 after two years, … → FLOOR_WAD (~0).
    ///         This is the spot rate ALL pending/claimed EMBER is valued at (see
    ///         pendingEmber / _earn); off-chain tickers also multiply a holder's
    ///         deposited EP by this/1e18 to stream the balance smoothly between polls.
    function emberRate() public view returns (uint256) {
        return FLOOR_WAD + Math.mulDiv(WAD - FLOOR_WAD, rpow(Q_WAD, block.timestamp - START), WAD);
    }

    /// @dev WAD fixed-point exponentiation x^n by squaring, used as the decay's
    ///      2^(-n/HALF_LIFE) = Q_WAD^n in emberRate. With x = Q_WAD < WAD every
    ///      partial product stays ≤ WAD, so it cannot overflow, and mulDiv floors
    ///      (favoring the pool). Spot-rate accrual never differences two rpow values,
    ///      so its tiny flooring wobble can't underflow an earnings computation.
    function rpow(uint256 x, uint256 n) internal pure returns (uint256 z) {
        z = WAD;
        while (n != 0) {
            if (n & 1 == 1) z = Math.mulDiv(z, x, WAD);
            n >>= 1;
            if (n != 0) x = Math.mulDiv(x, x, WAD);
        }
    }

    // ----- Earned-EMBER accrual (claimable, spot-rate) -----
    // balanceOf / totalSupply are inherited STANDARD ERC20 (real minted tokens):
    // accrual is off-balance until claim() settles it, so spending EMBER never
    // silently realizes a stream — keeping wallet balance-change previews clean.

    /// @dev Settle a pyromancer's accrued EMBER: mint the elapsed span valued at the
    ///      CURRENT rate and advance lastEarnTime to now. Called by claim() and by
    ///      deposit/withdraw (which must settle before changing `deposited`).
    function _earn(address account) internal {
        uint256 nowTs = block.timestamp;
        uint256 last = lastEarnTime[account];
        uint256 dep = deposited[account];
        if (dep > 0 && nowTs > last) {
            uint256 span = dep * (nowTs - last);
            uint256 earned = Math.mulDiv(span, emberRate(), WAD);
            // lastEarnTime moves forward by (nowTs - last), so this account's term in
            // totalEarnTimeDebt (dep * lastEarnTime) rises by exactly `span`.
            totalEarnTimeDebt += span;
            totalEmberEarned += earned;
            lifetimeEarned[account] += earned;

            // FireBot blessing: holders mint a bonus slice of EMBER on top of the
            // emission they earned (saturating curve, first FireBot ≈ 0.1%, < 25%).
            // The rate is read live now and applied to the emission realized in this
            // settlement, so a holder's current FireBot standing blesses what they
            // claim. The bonus is ordinary emission — it joins totalSupply and is
            // priced against fullyDilutedSupply on redemption, so it dilutes the pool
            // rather than drawing FBX, and can never be an unbacked claim on FBX.

            // CEI: advance lastEarnTime (close this span) BEFORE the only external
            // touch in _earn — _blessingBps -> FIREBOTS.balanceOf. That read is a
            // `view` STATICCALL, so the EVM already forbids it from re-entering and
            // mutating state; settling first is belt-and-suspenders — it makes any
            // reentrant _earn a no-op (nowTs == last), so even a future non-static
            // read could never double-mint this span. claim() is also nonReentrant.
            lastEarnTime[account] = nowTs;

            uint256 bonus = earned * _blessingBps(account) / BPS;
            if (bonus > 0) {
                totalBlessed += bonus;
                blessedBy[account] += bonus;
            }

            _mint(account, earned + bonus);
            emit EmberClaimed(account, earned);
            if (bonus > 0) emit EmberBlessed(account, bonus);
        } else {
            // No emission realized (no principal, or already settled this block);
            // just snap the checkpoint forward.
            lastEarnTime[account] = nowTs;
        }
    }

    /// @dev FireBot blessing rate (bps) for `account`: BLESSING_MAX_BPS * bots /
    ///      (bots + BLESSING_K), strictly below 25%. The FIREBOTS read is wrapped
    ///      so a misbehaving NFT contract can never brick an emission settlement
    ///      (and thus a deposit/withdraw) — it just yields a 0 blessing.
    ///      ADVERSARIAL-NFT NOTE (audit 003-05 + 008-01, reviewed — bounded by the
    ///      FORMULA, not by FireBots honesty): all three vectors are closed. (a)
    ///      balanceOf reverts -> caught -> 0. (b) ANY `bots`, however large, is handled
    ///      WITHOUT overflow: Math.mulDiv(2500, bots, bots + 249) uses a 512-bit
    ///      intermediate, so the 2500*bots product can never overflow uint256. (A plain
    ///      `2500 * bots` would Panic(0x11) for bots > ~4.6e73 — and that Panic occurs
    ///      in the try's SUCCESS block, which `catch` does NOT cover, so it would have
    ///      bricked settlement rather than degrading to 0; mulDiv removes that path.
    ///      `catch` still covers (a), an actual revert in the external call.) (c) the
    ///      value 2500*bots/(bots+249) is strictly < 2500 for all bots>=1, so
    ///      bonus = earned*bps/10000 < earned/4 no matter what the NFT returns. The
    ///      <25% cap is a property of the curve itself.
    function _blessingBps(address account) internal view returns (uint256) {
        try FIREBOTS.balanceOf(account) returns (uint256 bots) {
            if (bots == 0) return 0;
            // mulDiv (512-bit intermediate) so 2500*bots can never overflow uint256
            // for ANY bots — see ADVERSARIAL-NFT NOTE (b) above. Equivalent to
            // 2500*bots/(bots+249) for every realistic balance; floors identically.
            return Math.mulDiv(BLESSING_MAX_BPS, bots, bots + BLESSING_K);
        } catch {
            return 0;
        }
    }

    /// @notice FireBot blessing rate (bps, < 2500) `account` currently earns on
    ///         emission claims. 0 if they hold no FireBots.
    function blessingBpsOf(address account) external view returns (uint256) {
        return _blessingBps(account);
    }

    /// @notice The FireBot bonus EMBER `account` would mint if it claimed now, on
    ///         top of pendingEmber(account), at their CURRENT FireBot standing — the
    ///         rate applies to the whole pending span (see _earn).
    function pendingBlessing(address account) external view returns (uint256) {
        return pendingEmber(account) * _blessingBps(account) / BPS;
    }

    /// @notice Claim accrued EMBER into your transferable ERC20 balance. Required
    ///         before spending earnings — redeem/cast/transfer act on real balance
    ///         only. Also settled automatically on any deposit/withdraw.
    /// @dev    nonReentrant: this is the only state-mutating _earn entry point, so the
    ///         shared guard here closes every _earn path against reentry (the
    ///         _blessingBps -> FIREBOTS read is already a view STATICCALL, but this
    ///         hardens the path regardless of the NFT contract's behavior).
    /// @dev    NO _applyDecay HERE (audit 005-01, reviewed — intentional, not a gap):
    ///         claim() is the one mutating economic entry point that does NOT call
    ///         _applyDecay, and this is deliberate, not an oversight. claim() only runs
    ///         _earn(msg.sender), whose emission price is deposited[account] * span *
    ///         emberRate() — and emberRate() is a pure function of block.timestamp and
    ///         constants (see emberRate/rpow). It reads NONE of totalSupply(),
    ///         fullyDilutedSupply(), or the escrow pot (ERC20.balanceOf(this)). So a stale
    ///         (un-decayed, larger) pot cannot skew any denominator a claim prices against
    ///         — there is no denominator here to skew. And pot decay is monotonic and
    ///         path-independent (potBalance*elapsed/DECAY_PERIOD capped at the balance, see
    ///         _pendingDecay), so deferring it across a claim changes nothing a LATER
    ///         interaction computes: every pricing/payout entry point (deposit, withdraw,
    ///         castForecast, finalizeForecast, redeemEmber) calls _applyDecay itself before
    ///         it reads the pot. Adding _applyDecay() here would be a pure (benign) gas cost
    ///         with no economic effect, so it is omitted.
    /// @return realized EMBER minted to the caller — base emission (EmberClaimed) PLUS
    ///         any FireBot blessing (EmberBlessed); reconcile against both events.
    function claim() external nonReentrant returns (uint256 realized) {
        uint256 before = balanceOf(msg.sender);
        _earn(msg.sender);
        realized = balanceOf(msg.sender) - before;
    }

    /// @notice EMBER accrued but not yet claimed for `account`, valued at the CURRENT
    ///         rate. NOTE: because the rate decays, this can DECREASE if a position is
    ///         left unsettled for a very long time — settle to lock it in.
    /// @dev    NON-MONOTONIC BY DESIGN (audit 007-04, reviewed — intended, bounded, not a
    ///         bug). pendingEmber values the WHOLE elapsed span at the single current spot
    ///         rate (deposited*span*emberRate(now)/WAD), NOT the integral of the rate over
    ///         the span — this is the "use it or lose it" property described in the header
    ///         (L20-39). Because span grows linearly while emberRate() decays geometrically
    ///         (Q_WAD^elapsed), the product peaks then falls. Simulated for a 1-EP position
    ///         (python, exact rpow/mulDiv arithmetic): pending peaks at ~33.47M EMBER/EP
    ///         around day 1053 (~2.885 yr), then declines — ~27.9M at yr 5, ~616k at yr 20,
    ///         ~1.6k at yr 50. It never underflows or goes negative (mulDiv floors at 0).
    ///         Settling (claim/deposit/withdraw) at any time MINTS the then-current value
    ///         and resets the span, so an active holder locks in the higher early rate; only
    ///         a position left dormant PAST the peak forfeits unrealized value (never minted,
    ///         no holder is charged for it). Intended anti-dormancy economics, surfaced here
    ///         and in the header; the UX mitigation is a "claim by ~day 1053" hint off-chain.
    function pendingEmber(address account) public view returns (uint256) {
        uint256 last = lastEarnTime[account];
        if (block.timestamp <= last) return 0;
        return Math.mulDiv(deposited[account] * (block.timestamp - last), emberRate(), WAD);
    }

    /// @notice Global accrued-but-unclaimed EMBER across all depositors, valued at the
    ///         CURRENT rate (rate(now) is common to all, so this stays O(1)).
    function unclaimedEmber() public view returns (uint256) {
        uint256 weighted = block.timestamp * totalDeposited - totalEarnTimeDebt;
        return Math.mulDiv(weighted, emberRate(), WAD);
    }

    /// @notice Fully-diluted EMBER supply: circulating (claimed) plus all accrued-
    ///         but-unclaimed BASE earnings (the latter valued at the current spot
    ///         rate). This is the denominator redemptions price against, so unclaimed
    ///         base earnings can't be timed to over-extract FBX. NOTE: it deliberately
    ///         excludes the FireBot blessing minted on top at claim (_earn) — that
    ///         term is per-account (read live from FireBot holdings, no exact O(1)
    ///         global form) and small/rivalrous: hard-capped < 25% (asymptote, never
    ///         reached), ~+13.7% even at 300 NFTs (2500*300/(300+249)), and reachable by
    ///         few wallets. Its later claim is bounded extra inflation borne by holders —
    ///         the same redeemer-favorable front-runner dynamic disclosed on redeemEmber:
    ///         a redeemer just before a large blessed claim prices against a denominator
    ///         omitting the about-to-be-minted bonus, extracting marginally more FBX. A
    ///         global blessing accumulator in the denominator would make it exact if ever
    ///         desired; the omission is not an unbacked drain.
    /// @dev    DENOMINATOR IS DOMINATED EARLY BY DECAYING PHANTOM EMISSION (audit 010-02,
    ///         reviewed — conservative-by-design, NOT a bug). Early in life unclaimedEmber()
    ///         dominates this sum: it values the WHOLE elapsed span of every position at the
    ///         current spot rate (≈1 EMBER/EP/sec at launch). A LARGE fraction of that term
    ///         corresponds to emission that, under use-it-or-lose-it (see pendingEmber /
    ///         header L20-39), will NEVER actually mint — dormant/slow positions re-value
    ///         DOWN as emberRate() decays, so the unclaimed tail shrinks over time. Redeemers
    ///         are therefore priced against a denominator inflated by phantom future supply,
    ///         and an EMBER's realized FBX value can swing SHARPLY (and move substantially
    ///         over time even with NO redemptions, purely as emberRate() decays the unclaimed
    ///         term). This is SAFE for the pool: a larger denominator only UNDER-pays redeemers
    ///         (curve stays <= pool, never over-extracts) — it is conservative by design, just
    ///         far less stable than a naive reading of "fully-diluted pricing" implies. UI/docs
    ///         should surface that per-EMBER value floats with the decaying unclaimed terms.
    function fullyDilutedSupply() public view returns (uint256) {
        return totalSupply() + unclaimedEmber();
    }

    // ----- Escrow pot decay -----

    /// @dev EMBER that would be burned from the escrow pot if decay were applied
    ///      now: potBalance * elapsed / DECAY_PERIOD (1/365 of the balance per day),
    ///      capped at the balance once elapsed reaches a full period.
    function _pendingDecay() internal view returns (uint256) {
        uint256 elapsed = block.timestamp - lastDecayTime;
        if (elapsed == 0) return 0;
        uint256 pot = ERC20.balanceOf(address(this));
        if (pot == 0) return 0;
        uint256 d = Math.mulDiv(pot, elapsed, DECAY_PERIOD);
        return d > pot ? pot : d;
    }

    /// @notice EMBER the next interaction will burn from the escrow pot as decay.
    function pendingDecay() external view returns (uint256) {
        return _pendingDecay();
    }

    /// @dev Burn the elapsed share of the escrow pot. Called at the top of every
    ///      economic interaction THAT PRICES OR PAYS FROM THE POT — deposit, withdraw,
    ///      castForecast, finalizeForecast, redeemEmber — so the pot (and thus
    ///      totalSupply) reflects decay before any pricing or payout. claim() is the
    ///      sole mutating entry point that does NOT call it, and intentionally so: its
    ///      _earn pricing never reads the pot/totalSupply, and decay is monotonic and
    ///      path-independent, so deferring it across a claim is economically inert (see
    ///      the NO _applyDecay HERE note on claim(), audit 005-01). No external calls —
    ///      reentrancy-inert.
    function _applyDecay() internal {
        uint256 d = _pendingDecay();
        lastDecayTime = block.timestamp;
        if (d > 0) {
            _burn(address(this), d);
            totalDecayBurned += d;
        }
    }

    /// @dev Pay `value` EMBER to `to`, drawing from the escrowed pot FIRST and
    ///      minting only the shortfall. This is what makes a Rise+Fall hedge
    ///      supply-neutral and keeps decaying escrow from ever being re-minted: so
    ///      long as the pot covers the payout, nothing new is created.
    /// @dev POT == raw EMBER balance (reviewed — donations are inert-or-benign, never an
    ///      attack). The "pot" is literally ERC20.balanceOf(address(this)); it is NOT a
    ///      separate accumulator. So a plain EMBER.transfer(thisContract, X) by anyone
    ///      adds X to the pot WITHOUT incrementing totalForecastSpent. Such a donation is
    ///      then decayed like any escrow (_applyDecay burns the whole self-balance share)
    ///      and can cover a later winner here before any shortfall mint. Consequences,
    ///      all benign: (a) the donor simply loses X (no claim on it — there is no
    ///      withdraw-from-pot path); (b) holders BENEFIT, because pot-funded payouts mint
    ///      less fresh EMBER, so donations reduce dilution rather than cause it; (c) the
    ///      ONLY inaccuracy is telemetry: a donation lets totalForecastWon be paid from
    ///      EMBER that was never in totalForecastSpent, so the advertised
    ///      (won − spent) "edge" signal (see totalForecastSpent) can read slightly high.
    ///      That signal is a heuristic, not a safety invariant; an exact reading would
    ///      require tracking the pot in an explicit accumulator (potBalance incremented
    ///      only by castForecast, decremented by payouts+decay) and pricing/paying from
    ///      it. That is a behavior change for a non-defect and is deliberately NOT done:
    ///      raw-balance accounting is simpler, donations can never extract value, and the
    ///      redemption curve already prices against the contract's self-balance (it is in
    ///      totalSupply), so a donation is correctly backed there too.
    /// @dev USER-LOSS RISK ON ACCIDENTAL TRANSFER (audit 007-01, reviewed — accepted, no
    ///      _update override). The notes above describe why a donation is SYSTEM-benign
    ///      (holders benefit, no value is extractable). They do NOT mean it is harmless to
    ///      the SENDER: a user who accidentally EMBER.transfer()s tokens to this contract
    ///      forfeits them permanently — there is no withdraw-from-pot path, the tokens are
    ///      decayed by _applyDecay (1/365 of the self-balance per day) and/or paid out to
    ///      other winners, and the contract is immutable with NO rescue/sweep. The same
    ///      one-way forfeiture applies to FBX (becomes redemption backing for everyone) and
    ///      EP (swept into the permanent staked buffer, see redeemEmber's stakeEP). The
    ///      suggested mitigation — override ERC20._update to revert when to==address(this)
    ///      — is intentionally NOT applied because this contract LEGITIMATELY holds and
    ///      moves its own EMBER as the escrow pot: castForecast escrows EMBER into
    ///      address(this), _payFromPot does _transfer(address(this), to, ...), and decay
    ///      _burn(address(this), ...)s it. A blanket to==self revert would have to special-
    ///      case every internal routing path (or migrate the pot to an explicit accumulator
    ///      — the behavior change rejected just above), adding surface to the core escrow
    ///      logic for a pure end-user-footgun that the standard ERC20 shares. The accepted
    ///      mitigation is OFF-CHAIN: the UI must never expose the bare contract address as a
    ///      transfer target and must warn against manual transfers to it. Documented here so
    ///      the "benign" framing is never mistaken for "no user can lose funds this way."
    /// @dev COMMUNAL POT, NO PER-FORECAST SEGREGATION (audit 010-03, reviewed — intended,
    ///      safe). The "pot" is one shared ERC20.balanceOf(address(this)) holding EVERY
    ///      pending forecast's offering plus any donations, all decaying together; there is
    ///      NO per-forecast escrow accounting. So a caster has NO reserved claim on their OWN
    ///      offering: _payFromPot draws a winner's payout from this pooled balance with no
    ///      link to which forecast funded it, and an early winner can be paid out of LATER
    ///      still-pending casters' escrow — those later winners are then satisfied by fresh
    ///      shortfall mint (the branch below). This NEVER causes protocol fund loss (payouts
    ///      are mintable EMBER; FBX is bounded by the redemption curve) and the shortfall-mint
    ///      bound (<= 2*amount*claimFactor, correct calls only) still holds. "Supply-neutral"
    ///      is EXACT only for the prompt-finalize-against-a-funded-pot case; the realized win
    ///      path may involve dilution-via-shortfall-mint rather than return of one's own
    ///      escrowed tokens. Segregating per forecast was rejected: it adds accounting surface
    ///      for a non-defect (the communal pot can never extract value, only redistribute the
    ///      decay sink among winners). UI/docs should surface that offerings join a shared
    ///      decaying pot and are not individually reserved.
    /// @dev SHORTFALL MINT (reviewed — bounded, intended; NOT a free mint / NOT
    ///      supply-neutral in the worst case). The supply-neutral framing above is
    ///      exact ONLY under prompt finalize against a well-funded pot. Two realities
    ///      relax it, and both are accepted by design:
    ///        (1) DECAY can shrink the pot below the offering it escrowed (_applyDecay
    ///            burns potBalance/365 per day), so when a winning forecast finalizes
    ///            the pot may no longer cover even the 1x offering, let alone the 2x.
    ///            The uncovered part is freshly minted here. So a correct call
    ///            finalized while the pot is well-funded mints nothing, but a correct
    ///            call after the pot has decayed CAN net-mint above the original
    ///            offering. This is bounded: the mint is at most payout = 2*amount and
    ///            is further scaled down by _claimFactor (−1%/day after the 7-day
    ///            grace, zero by day 107), so the realized mint never exceeds
    ///            2*amount*claimFactor <= 2*amount, and only ever on a CORRECT forecast
    ///            (Right doubles; Wrong mints nothing; Draw refunds 1x). It is the
    ///            decay-sink design working as intended: decay removes idle escrow from
    ///            supply, and a later legitimate win re-introduces a bounded slice.
    ///        (2) PERSISTENT FORECASTER EDGE. Once cumulative wins drain the pot, every
    ///            further correct-forecast payout mints fresh EMBER (this branch),
    ///            which dilutes passive EMBER holders against the FBX backing rather
    ///            than drawing FBX directly — the same redeemer-favorable dilution as
    ///            the blessing, never an unbacked FBX drain. NB "draws no FBX": the
    ///            minted EMBER IS itself redeemable for FBX via the curve; the point is
    ///            the MINT moves no FBX (it only enlarges the redemption denominator),
    ///            so the cost is bounded pro-rata dilution of existing backing, not a
    ///            second unbacked FBX claim. If the forecasting
    ///            population has a durable directional edge, this is a real (bounded,
    ///            pot-first, dilution-not-drain) economic transfer from passive holders
    ///            to skilled forecasters. That edge is inherent forecasting alpha, not a
    ///            code defect; the (forecastWon − forecastSpent) telemetry surfaces it.
    function _payFromPot(address to, uint256 value) internal {
        uint256 pot = ERC20.balanceOf(address(this));
        if (pot >= value) {
            _transfer(address(this), to, value);
        } else {
            if (pot > 0) _transfer(address(this), to, pot);
            _mint(to, value - pot);
        }
    }

    /// @dev Fraction (WAD) of a winning/draw payout still claimable now, given the
    ///      forecast's resolve `deadline`: full for CLAIM_GRACE, then −1%/day
    ///      linearly to zero PENALTY_RAMP after the grace ends.
    function _claimFactor(uint256 deadline) internal view returns (uint256) {
        uint256 graceEnd = deadline + CLAIM_GRACE;
        if (block.timestamp <= graceEnd) return WAD;
        uint256 past = block.timestamp - graceEnd;
        if (past >= PENALTY_RAMP) return 0;
        return WAD - Math.mulDiv(WAD, past, PENALTY_RAMP);
    }

    // ----- Deposit / withdraw (no-loss principal) -----

    /// @notice Deposit `amountEP` of EP into the pool for yourself. Requires prior
    ///         EP approval. The EP is staked to earn FBX, and the deposit begins
    ///         earning EMBER immediately.
    function deposit(uint256 amountEP) external nonReentrant {
        _deposit(msg.sender, amountEP);
    }

    /// @notice Deposit `amountEP` of EP on behalf of `beneficiary` — a gift. The
    ///         EP is pulled from YOU (your approval), but credited to the
    ///         beneficiary: they own the principal, earn the EMBER it streams, and
    ///         can withdraw it at any time. Handy for handing a new pyromancer a
    ///         little EP to try their hand at forecasting.
    /// @dev    FORCED SETTLEMENT (reviewed, accepted — benign to the victim and the
    ///         caller; a bounded, already-disclosed dilution to other holders): because
    ///         this routes through _deposit -> _earn(beneficiary), anyone can settle a
    ///         victim's pending EMBER by gifting even 1 wei (depositFor(victim, 1)). The
    ///         victim is never harmed and the caller extracts nothing; the only
    ///         third-party effect is to pull the victim's blessing mint forward in time,
    ///         which is the same bounded inflation a blessed holder's own claim causes:
    ///           (1) The emission rate is MONOTONICALLY NON-INCREASING — emberRate()
    ///               = FLOOR_WAD + (WAD-FLOOR_WAD)*Q_WAD^elapsed with Q_WAD < WAD, so
    ///               it only decays toward the floor. Settling NOW locks the BASE span at
    ///               a rate >= any future rate, so a forced claim can only equal or beat
    ///               the base the victim would realize by settling later — see
    ///               pendingEmber's own "can DECREASE if left unsettled" note. Beneficial
    ///               /neutral to the victim, never a loss to them.
    ///           (2) The minted EMBER (base AND any FireBot blessing) goes to the
    ///               BENEFICIARY (victim), not the caller — _earn mints to `account`. The
    ///               attacker gains nothing; there is no value-EXTRACTION vector.
    ///           (3) The injected wei joins the victim's withdrawable principal
    ///               (deposited[beneficiary] += amountEP) and is keyed to the
    ///               beneficiary, who can withdraw it. No principal is stranded.
    ///         FORCED-BLESSING EXTERNALITY (the part a base-only reading misses): if the
    ///         victim holds FireBots, _earn also mints bonus = earned*_blessingBps/BPS
    ///         (see _earn). The blessing is NOT in unclaimedEmber()/fullyDilutedSupply()
    ///         until minted, so force-settling it moves that bonus into totalSupply() and
    ///         enlarges the redemption denominator NOW rather than whenever the victim
    ///         would have next settled — a slight, redeemer-favorable dilution of OTHER
    ///         holders' backing. This is NOT a new attack surface: (a) it dilutes by
    ///         exactly the blessing the victim's own next claim would have minted anyway —
    ///         only the timing changes; (b) it is the SAME bounded blessing inflation
    ///         already disclosed on _earn and fullyDilutedSupply (hard-capped < 25% of the
    ///         settled span, the whole supply still redeems to at most the whole pool); and
    ///         (c) the forcer pays the gift, gains no EMBER and no FBX. So gating depositFor
    ///         to a consenting beneficiary (which would break its legitimate gift purpose)
    ///         is deliberately NOT done: the only cost is a bounded, pre-existing dilution
    ///         being realized a little earlier, never an unbacked drain and never a caller
    ///         profit.
    function depositFor(address beneficiary, uint256 amountEP) external nonReentrant {
        require(beneficiary != address(0), "zero beneficiary");
        // Crediting the pool itself would strand the principal (withdraw is keyed to
        // msg.sender, and the contract never withdraws for itself) AND make
        // _earn(address(this)) mint emission straight into the escrow pot on every
        // settlement — an unstoppable dilution source counted in fullyDilutedSupply.
        // Reject it; gifting to any real address is unaffected.
        require(beneficiary != address(this), "self beneficiary");
        _deposit(beneficiary, amountEP);
    }

    /// @dev Pull EP from msg.sender and credit `beneficiary`'s principal, starting
    ///      (or extending) their EMBER earning. Shared by deposit/depositFor.
    function _deposit(address beneficiary, uint256 amountEP) internal {
        require(amountEP > 0, "amount=0");
        _applyDecay();
        EP.safeTransferFrom(msg.sender, address(this), amountEP);
        _earn(beneficiary); // settle the existing position; sets lastEarnTime = now
        deposited[beneficiary] += amountEP;
        totalDeposited += amountEP;
        totalEarnTimeDebt += amountEP * block.timestamp; // new principal enters at last = now
        // Stake the whole unstaked EP balance so nothing sits idle.
        // DONATED-EP NOTE (audit 003-03, reviewed — benign/beneficial, intended):
        // this stakes the contract's ENTIRE unstaked EP, not just `amountEP`, so EP
        // transferred directly to this pool (a donation) is swept into
        // EP.userInfos[Pyromancy].stakedEP WITHOUT being credited to any
        // deposited[user]. That is harmless and good: donated EP becomes a permanent,
        // un-withdrawable buffer (like recycled EP) deepening the FBX-yield base; the
        // donor forfeits it (no path withdraws EP that was never credited to
        // `deposited`). It cannot strand user principal because Pyromancy's stakedEP is
        // always >= totalDeposited (donations/recycle only ADD to it), so every
        // withdraw->unstakeEP(amountEP) still passes EP's stakedEP>=amountEP check. No
        // griefing: amount here is always > 0 (amountEP>0 above), so stakeEP's
        // "amount > 0" require never trips.
        EP.stakeEP(EP.balanceOf(address(this)));
        emit Deposited(beneficiary, amountEP, msg.sender);
    }

    /// @notice Withdraw `amountEP` of EP principal at any time. Earned EMBER is
    ///         realized and kept; only the principal leaves. No-loss: deposits
    ///         are always fully recoverable.
    /// @dev    Principal recovery routes through EP.unstakeEP, which (a) calls
    ///         claimRewards internally — an FBX transfer BOUNDED by EP's 30-day reward
    ///         cap (see IEP) — and then (b) returns the staked EP. So "no-loss" is
    ///         precisely "no-loss given EP solvency": EP must be able to pay its capped
    ///         accrued reward AND hand back the staked EP. It is not literally
    ///         reward-independent (the internal claimRewards could revert if EP were
    ///         FBX-insolvent), but the cap bounds that exposure so it cannot balloon, and
    ///         EP is immutable and ownerless like this pool, so its solvency is
    ///         on-chain-verifiable rather than a governance risk. This is the single
    ///         trust assumption; the EMBER/FBX layer above is, by design, a volatile
    ///         game — never principal.
    ///
    ///         LIVENESS-COUPLING NOTE (audit 003-02, reviewed — withdraw is NOT
    ///         brick-able through EP economics): the internal claimRewards' FBX.safeTransfer
    ///         is bounded by EP's own claimableRewards, which caps each claim at
    ///         (<=30 days)*(dailyFBXEmission = EP.FBXbalance/1336) of EP's CURRENT FBX
    ///         balance — so the transfer can never exceed what EP holds and cannot revert
    ///         for insolvency — and unstakeEP's internal _transfer of staked principal
    ///         always succeeds. So this fail-closed external coupling cannot strand
    ///         principal via EP economics; it is stronger than the hedged "no-loss given
    ///         EP solvency" above. (Chainlink is NOT touched by deposit/withdraw/redeem;
    ///         its only liveness coupling is forecast finalization, whose fail-closed-
    ///         no-refund behavior is documented and accepted — see _requireCanonicalPhase
    ///         Liveness and the header's offering-decay note.)
    function withdraw(uint256 amountEP) external nonReentrant {
        require(amountEP > 0 && deposited[msg.sender] >= amountEP, "bad amount");
        _applyDecay();
        _earn(msg.sender); // settle the existing position; sets lastEarnTime = now
        deposited[msg.sender] -= amountEP;
        totalDeposited -= amountEP;
        totalEarnTimeDebt -= amountEP * block.timestamp; // principal leaves at last = now
        EP.unstakeEP(amountEP);
        EP.safeTransfer(msg.sender, amountEP);
        emit Withdrawn(msg.sender, amountEP);
    }

    // ----- EMBER redemption (volatile curve) -----

    /// @notice Redeem `amount` EMBER for FBX along a slippage curve. A marginal EMBER
    ///         is worth 2x its naive pro-rata share of the FBX pool, but that rate
    ///         decays as the redemption grows, since each EMBER redeemed depletes the
    ///         supply backing the rest:
    ///             fbxOut = amount * (2*supply - amount) * pool / supply^2
    ///         This closed form is the integral of the 2x marginal pro-rata rate
    ///         (2*(supply - x)/supply^2 * pool) over x in [0, amount] AT A FIXED
    ///         (supply, pool) — i.e. the limit of a continuum of INFINITESIMAL marginal
    ///         redemptions, each priced at the frozen state. CAUTION (audit 009-01): do
    ///         NOT read this as "any finite partition of `amount`, re-evaluating this same
    ///         closed form per chunk at the frozen full (supply, pool), sums back to the
    ///         single-shot fbxOut" — that is FALSE. fbxOut(a) is strictly CONCAVE in a
    ///         (the -a^2 term already integrates the redemption's own self-impact), so
    ///         re-pricing finite chunks against the un-shrunk supply over-counts: e.g.
    ///         supply=pool=1e24, amount=supply/2 single-shots to 750000 FBX, but 1000
    ///         equal chunks each re-priced at the frozen state sum to ~999750 FBX (+33%).
    ///         Only the infinitesimal limit (or chunks that re-read the live, shrinking
    ///         supply between fills — see below) recovers the single-shot total. It is
    ///         NOT a cross-transaction conservation guarantee — each redeem burns
    ///         supply and drains the pool (payout + 5% recycle), so splitting across
    ///         blocks is not bit-identical to one shot; the state the second chunk
    ///         prices against has already moved. What IS guaranteed across any sequence
    ///         is the safety bound: cumulative FBX out can never exceed the pool (proved
    ///         algebraically and confirmed numerically — single redeem <= pool for
    ///         amount<=supply, and 200k+ chunked-redemption trials with pool/supply
    ///         updated between chunks never exceeded the starting pool). So there is no
    ///         split-to-GAIN edge — a splitter can never out-extract a one-shot redeemer
    ///         past the pool — even though the totals are not bit-for-bit equal.
    ///         Redeeming half the supply gets 3/4 of the pool; the whole supply gets
    ///         the whole pool (never more, exactly equal at amount==supply). 5% of the FBX out is recycled into freshly
    ///         minted+staked EP; the remaining 95% goes to the redeemer. The full
    ///         `amount` is burned (the FireBot blessing now accrues on emission
    ///         claims, not here — see _earn).
    ///
    ///         FRONT-RUNNER DYNAMIC (reviewed, intended): because a marginal EMBER pays
    ///         >pro-rata, an earlier redeemer extracts value from later and not-yet-
    ///         claimed holders — a deliberate "bank-run" / conviction-and-timing game —
    ///         and since claimRewards() is swept first, the first redeemer after a large
    ///         FBX tick captures 2x of it. This is BOUNDED (the whole supply still
    ///         redeems to exactly the pool, never more) and path-independent (no
    ///         split-to-gain); minFbxOut protects the caller's own fill, not the holder
    ///         base. It is the intended volatile redemption, not a flaw — EMBER is a game
    ///         token, not a fixed pro-rata claim.
    /// @param amount     EMBER to redeem (burned in full; FBX is paid on it).
    /// @param minFbxOut  minimum FBX the redeemer is willing to net (slippage
    ///                   guard against a redemption landing just ahead of theirs
    ///                   and pushing the value down); pass 0 to disable. NOTE: even
    ///                   with minFbxOut == 0 the redeem still reverts if it would pay
    ///                   ZERO FBX (require(fbxOut > 0), audit 007-02) — a 0-payout
    ///                   redemption can never silently burn EMBER for nothing.
    function redeemEmber(uint256 amount, uint256 minFbxOut) external nonReentrant returns (uint256 fbxOut) {
        require(amount > 0, "amount=0");

        // Apply escrow-pot decay, then sweep accrued FBX into the pool so the redeem
        // value reflects everything to date. The caller's EMBER is NOT realized here
        // (claim() does that) — redeem spends real balance only, for a clean trace.
        _applyDecay();
        EP.claimRewards();

        uint256 totalFBX = FBX.balanceOf(address(this));
        // Price against FULLY-DILUTED supply: circulating + the escrowed forecast pot
        // (the contract's own balance) + all accrued-but-unclaimed emission. Casting
        // only relocates EMBER into the pot (never burns it) and unclaimed emission
        // is counted regardless of when it's claimed, so neither a forecast nor a
        // deferred claim can transiently deflate this denominator to over-extract.
        uint256 supply = fullyDilutedSupply();
        require(supply > 0, "no supply");
        // `amount` is part of `supply` (it is burned below from a balance that is
        // itself counted in totalSupply), so this never blocks a real redeem; it
        // pins the curve to its valid domain and keeps (2*supply - amount) > 0.
        require(amount <= supply, "amount>supply");

        // Slippage curve: fbxOut = amount * (2*supply - amount) * totalFBX / supply^2.
        // The path-independent integral of the 2x marginal pro-rata rate, computed
        // as two flooring mulDivs — overflow-safe (512-bit intermediates) and
        // rounded down (favoring the pool). Bounded by totalFBX for amount <= supply.
        fbxOut = Math.mulDiv(Math.mulDiv(amount, 2 * supply - amount, supply), totalFBX, supply);
        if (fbxOut > totalFBX) fbxOut = totalFBX; // safety belt (unreachable for amount <= supply)

        // NO-PAYOUT GUARD (audit 007-02, fixed): a redemption that would pay ZERO FBX
        // must revert instead of burning the caller's EMBER for nothing. fbxOut is 0
        // whenever the pool holds no claimable FBX (totalFBX == 0 — realistic windows:
        // before any FBX has accrued, right after a deposit reset EP.lastClaim so the
        // in-redeem EP.claimRewards() yielded ~0, or after prior redeemers drained the
        // pool to ~0), or when `amount` is so small the curve floors to 0. The slippage
        // guard below is opt-in (minFbxOut defaults to 0 and require(0>=0) passes), so it
        // does NOT cover this case; this unconditional guard does. It never blocks a
        // genuine redeem (any positive payout passes) — it only stops the incineration
        // path where the user would receive nothing and lose their full EMBER.
        require(fbxOut > 0, "no FBX to redeem");

        totalFbxRedeemed += fbxOut;

        // RECYCLE SPLIT ROUNDING (audit 004-01, not-real / intended, sub-wei):
        // toRecycle floors (fbxOut*5/100), so toUser = fbxOut - toRecycle keeps the
        // fractional remainder and thus rounds UP. The drift is the fractional part
        // of fbxOut*5/100, i.e. strictly < 1 FBX wei per redemption, and it does not
        // compound within a call (single subtraction off the already-floored fbxOut).
        // It nudges sub-wei value to the redeemer instead of the permanent recycled-EP
        // buffer; economically zero. Deliberately not ceiled — exactness here is not
        // worth the gas, and toUser is the user-facing leg so flooring toRecycle (not
        // toUser) is the natural, conservative direction for the split.
        uint256 toRecycle = fbxOut * RECYCLE_PCT / 100;
        uint256 toUser = fbxOut - toRecycle;
        // Slippage guard: revert unless the redeemer nets at least minFbxOut, so
        // a redemption landing just ahead of theirs can't force a worse price
        // than they accepted. Passing 0 disables THIS guard — but the unconditional
        // require(fbxOut > 0) above still fires first, so a zero-payout redeem can
        // never burn EMBER for nothing regardless of minFbxOut (audit 007-02).
        require(toUser >= minFbxOut, "slippage");

        // Burn the full redeemed amount; FBX was priced on the same `amount`. The
        // FireBot blessing no longer lives here — it accrues on emission claims
        // (see _earn) — so redemption is a clean full burn.
        _burn(msg.sender, amount);

        totalEmberRedeemed += amount;
        emberRedeemedBy[msg.sender] += amount;
        fbxRedeemedBy[msg.sender] += toUser;
        totalFbxToUsers += toUser;

        // Recycle: mint EP from the FBX (300 FBX per EP) and stake it. This EP is
        // owned by the pool itself, not credited to any depositor, so its principal
        // stays staked for good — a one-way deepening of the yield base whose FBX
        // rewards back every holder's EMBER. Dust below one EP's worth of FBX simply
        // stays in the pool.
        //
        // RECYCLE THRESHOLD (audit 004-02, not-real / benign): epToMint = toRecycle/300
        // is >= 1 only once toRecycle >= 300, i.e. floor(fbxOut*5/100) >= 300, i.e.
        // fbxOut >= 6000 FBX wei (6e-15 FBX). Below that exact 6000-wei threshold the
        // 5% slice is NOT minted into EP and simply stays as raw FBX inside the
        // redemption pool (totalFBX). That direction is holder-favorable — the FBX
        // remains as backing for everyone's EMBER rather than being moved to the
        // permanent staked buffer — and the threshold is economically negligible. No
        // value escapes the system; this is a precision detail, not a leak.
        uint256 epToMint = toRecycle / FBX_PER_EP;
        if (epToMint > 0) {
            EP.mintEP(epToMint);
            // Stakes the whole unstaked EP balance (freshly minted + any donated EP);
            // see the DONATED-EP NOTE in _deposit (audit 003-03) — sweeping stray EP
            // into the permanent staked buffer is benign and cannot strand principal.
            // `epToMint > 0` here so stakeEP's "amount > 0" require always holds.
            EP.stakeEP(EP.balanceOf(address(this)));
        }

        if (toUser > 0) {
            FBX.safeTransfer(msg.sender, toUser);
        }
        emit EmberRedeemed(msg.sender, amount, fbxOut, toUser);
    }

    /// @notice Quote a redemption against the currently-held FBX.
    /// @dev    CALLER-CONSERVATIVE UNDER-QUOTE (reviewed, intended — never an over-quote):
    ///         this view deliberately OMITS the EP.claimRewards() sweep that
    ///         redeemEmber() runs first (Pyromancy redeem: _applyDecay() then
    ///         EP.claimRewards() BEFORE reading totalFBX). A view cannot invoke the
    ///         non-view claimRewards(), so the quote prices against the un-swept
    ///         FBX.balanceOf only. Because fbxOut is strictly MONOTONE INCREASING in
    ///         totalFBX (fbxOut = inner * totalFBX / supply, inner independent of
    ///         totalFBX) and the sweep can only ADD FBX, the realized payout is always
    ///         >= this quote. The gap is exactly the redeemer's freshly-swept EP FBX
    ///         reward (EP.claimableRewards(address(this)).userRewards), which an
    ///         indexer wanting a tighter estimate can add off-chain; it is never an
    ///         over-estimate, so the quote is safe to gate UI slippage against.
    /// @return fbxOut gross FBX the EMBER is worth; toUser the 95% paid out.
    function quoteRedeem(uint256 amount) external view returns (uint256 fbxOut, uint256 toUser) {
        // Mirror redeemEmber: fully-diluted supply, less the escrow-pot decay it
        // applies first (which lowers supply), for an accurate quote.
        uint256 supply = fullyDilutedSupply() - _pendingDecay();
        if (supply == 0 || amount > supply) return (0, 0);
        uint256 totalFBX = FBX.balanceOf(address(this));
        fbxOut = Math.mulDiv(Math.mulDiv(amount, 2 * supply - amount, supply), totalFBX, supply);
        if (fbxOut > totalFBX) fbxOut = totalFBX;
        toUser = fbxOut - fbxOut * RECYCLE_PCT / 100;
    }

    // ----- Forecasting -----

    /// @notice Current Chainlink BTC/USD round id.
    function currentRoundId() public view returns (uint80 roundId) {
        (roundId, , , , ) = BTC_USD.latestRoundData();
    }

    /// @notice Offer `amount` EMBER on a Rise/Fall forecast over `duration`
    ///         seconds. The offering is ESCROWED in the contract on cast (it stays
    ///         in totalSupply, so casting can't deflate the redemption value).
    ///         Neither the baseline nor the resolving price exists yet (see header)
    ///         — the cast is blind. Read it right and finalize pays 2x the offering
    ///         back (from the escrow pot first; no FireBot bonus here — that lives
    ///         on emission claims). Finalize within 7 days of resolution for full value.
    ///         (In the rare migration edge where a forecast's canonical rounds can never
    ///         be assembled, finalize fails closed and the offering decays with no refund
    ///         — a bounded, accepted liveness tradeoff; see finalizeForecast.)
    /// @return forecastId the id of the newly recorded forecast.
    function castForecast(uint256 amount, bool forecastRise, uint64 duration)
        external
        nonReentrant
        returns (uint256 forecastId)
    {
        require(amount > 0, "amount=0");
        require(duration >= MIN_DURATION && duration <= MAX_DURATION, "bad duration");

        // Escrow the offering into the pot (a transfer, not a burn — it stays in
        // supply). Spends the caller's real EMBER; claim() first to use earnings.
        _applyDecay();
        _transfer(msg.sender, address(this), amount);
        totalForecastSpent += amount;
        forecastSpent[msg.sender] += amount;

        uint64 castTime = uint64(block.timestamp);
        forecasts.push(Forecast({
            pyromancer: msg.sender,
            castTime: castTime,
            forecastRise: forecastRise,
            status: Status.Pending,
            duration: duration,
            amount: amount
        }));
        forecastId = forecasts.length - 1;
        forecastsOf[msg.sender].push(forecastId);

        emit ForecastCast(msg.sender, forecastId, castTime, duration, amount, forecastRise);
    }

    /// @notice Finalize a forecast by supplying the two Chainlink rounds that
    ///         decide it: the baseline (first round strictly after the cast) and
    ///         the resolver (first round at/after baseline + duration). Both are
    ///         verified canonical, so the outcome is deterministic regardless of
    ///         who calls — finalize is permissionless.
    ///           - Right: 2x the offering paid to the pyromancer (pot first).
    ///           - Wrong: nothing (the offering stays in the pot and decays).
    ///           - Draw (exact tie): the offering refunded (pot first).
    ///         Right/Draw payouts are paid at finalize, full for 7 days after the
    ///         resolve deadline, then eroding 1%/day to zero by day 107 (see CLAIM_GRACE).
    ///
    ///         SELF-FINALIZE FOR FULL VALUE (reviewed, accepted — no holder harmed): the
    ///         erosion burden falls ENTIRELY on the winner, and no other party is
    ///         incentivized to finalize on their behalf (passive holders mildly BENEFIT
    ///         from a winner's erosion — less is minted/paid, so their backing dilutes
    ///         less). A winner must therefore SELF-FINALIZE within the 7-day grace to
    ///         guarantee full value. This is intended anti-free-option discipline, not a
    ///         safety gap: the forgone slice is simply NEVER MINTED (payout scales by
    ///         _claimFactor before _payFromPot), so late finalization can never harm any
    ///         other holder — at worst the winner under-claims their own payout.
    ///         STAKE-NOT-JUST-WINNINGS (audit 007-03, reviewed — accepted, intended): be
    ///         precise that _claimFactor scales the WHOLE payout (basePayout = 2*amount for
    ///         a win, = amount for a draw), not merely the winnings slice above the
    ///         offering. The offering was already ESCROWED (spent) at cast and is part of
    ///         the decaying pot, so a CORRECT forecaster who finalizes at/after day 107
    ///         (_claimFactor == 0) receives NOTHING and does not recover their original
    ///         offering either — they end strictly worse than break-even on their own
    ///         stake. This is deliberate: a non-zero floor (e.g. refunding 1x regardless of
    ///         timing) would restore exactly the free-option the decay ramp exists to deny
    ///         (cast, ignore, and reclaim your stake whenever convenient) and would also
    ///         require distinguishing a never-finalized win from a loser — the same
    ///         ambiguity that rules out a refund hatch in the LIVENESS note below. The
    ///         accepted mitigation is UX: surface deadline + CLAIM_GRACE (the full-value
    ///         cutoff) and deadline + CLAIM_GRACE + PENALTY_RAMP (the zero cutoff, ~day
    ///         107) to the UI so a winner is told exactly when to self-finalize.
    ///
    ///         LIVENESS (reviewed, accepted — fails closed): if a forecast's canonical
    ///         rounds can never be assembled, finalize REVERTS rather than pay a price it
    ///         can't prove, and the escrowed offering then decays in the pot (no refund).
    ///         This is the deliberate counterpart to refusing a stale price (see
    ///         _requireCanonicalPhase). A refund hatch is intentionally omitted: it could
    ///         not tell a genuinely-unresolvable forecast from a loser declining to settle,
    ///         so it would drain the decay sink that funds winners.
    ///
    ///         There are TWO disjoint mechanisms that can leave a forecast stuck, and BOTH
    ///         are accepted here:
    ///           (A) UNREADABLE ROUND. A required predecessor or successor-genesis round
    ///               reverts on getRoundData. This effectively never fires: a Chainlink
    ///               feed is a proxy over per-phase aggregators that are separate,
    ///               already-deployed IMMUTABLE contracts, so a migration ADDS a phase but
    ///               never deletes old ones — every historical round stays readable
    ///               indefinitely. The only truly unreadable rounds are the feed's genesis
    ///               (phase 1, round 1 — irrelevant for a years-old feed) or an id that
    ///               never existed (caller error, not a stuck forecast — the real ids exist
    ///               and the UI finds them).
    ///           (B) BACKWARD TEMPORAL OVERLAP at a migration, ALL ROUNDS READABLE (audit
    ///               006-01, reviewed — reproduced, accepted as fail-closed). When a
    ///               forecast's canonical baseline/resolver is the FIRST round R of a new
    ///               phase P, _requirePredecessor's cross-phase branch (L1318-1319) demands
    ///               a prevRoundId that is in phase P-1 AND the LAST readable round of P-1
    ///               (its in-phase successor unreadable) AND on the earlier side of ts.
    ///               Chainlink does NOT guarantee phases are temporally disjoint: the old
    ///               P-1 aggregator can keep printing rounds whose timestamps straddle P's
    ///               genesis. Concretely P-1 prints L(t=100), L+1(t=130) and P prints
    ///               R(t=120) with a cast at t=110: R's true temporal predecessor is L, but
    ///               L is not last-in-P-1 (L+1 is readable), and L+1 is on the LATER side of
    ///               ts (130 > 110) — so no id is simultaneously last-in-P-1 and <= ts, and
    ///               the branch is unsatisfiable. Supplying L+1 as the baseline instead is
    ///               correctly rejected by _requireCanonicalPhase ("superseded phase":
    ///               P's genesis R at t=120 precedes L+1 at t=130). No round is unreadable;
    ///               the forecast is simply unprovable and reverts forever. This is a real
    ///               permanent-liveness edge for that ONE forecast, NOT a fund-safety bug
    ///               (no other holder is harmed, nothing is mis-paid). It is accepted, not
    ///               fixed: closing it would require swapping the structural "last-in-phase
    ///               by id" predecessor proof for a pure time-adjacency proof, a behavior
    ///               change that adds new trust surface to the very check that pins
    ///               canonicity — not worth it over the fail-closed floor. The cross-phase
    ///               branch is intentionally STRICTER than temporally necessary here, by
    ///               design, to keep the canonicity proof structural.
    ///
    ///         Neither case can be designed away on-chain (one cannot prove a future oracle
    ///         won't behave pathologically), so failing closed is the sound floor; finalize
    ///         is permissionless so anyone settles the moment the rounds exist, and any loss
    ///         is bounded to the offering (which a losing forecast forfeits to decay anyway).
    ///
    ///         ROUND-ID TOOLING IS FUNDS-CRITICAL (audit 007-05, reviewed — accepted, no
    ///         on-chain helper). The six round-id args are deliberately NOT computed
    ///         on-chain: an on-chain search over Chainlink history would be unbounded gas
    ///         and the proof is intentionally STRUCTURAL (verify-in-O(1), not search-in-O(n)).
    ///         The consequence the auditor flags is real and accepted: a winner who cannot
    ///         reproduce the off-chain binary search (e.g. the reference UI is gone) cannot
    ///         finalize, and combined with the day-107 decay ramp (audit 007-03) loses the
    ///         offering. Because a winner's funds depend on this search being reproducible,
    ///         the tooling is treated as funds-critical infrastructure: the binary-search
    ///         algorithm (find the first round with updatedAt > castTime, and the first with
    ///         updatedAt >= deadline, plus each one's predecessor and — only for a superseded
    ///         phase — the next phase's genesis) is fully specified by the canonicity proofs
    ///         in _baselineRound/_resolveRound/_requirePredecessor/_requireCanonicalPhase
    ///         below, so anyone can re-derive the ids from public Chainlink data without the
    ///         original UI. The search tool MUST be open-sourced and the algorithm documented
    ///         in-repo, and user docs MUST state that claiming a win requires running it.
    /// @param startRoundId       first BTC/USD round id with updatedAt > castTime.
    /// @param startPrevRoundId   the round immediately preceding startRoundId:
    ///                           startRoundId - 1 within a phase, or the last
    ///                           round of the previous phase when startRoundId is
    ///                           a phase's first round.
    /// @param resolveRoundId     first BTC/USD round id with updatedAt >= deadline.
    /// @param resolvePrevRoundId the round immediately preceding resolveRoundId
    ///                           (same phase-boundary rule as startPrevRoundId).
    /// @param startNextGenesis   genesis round id of the phase AFTER startRoundId's
    ///                           phase — required only when startRoundId sits in a
    ///                           superseded (non-latest) phase, to prove it was not
    ///                           already overlapped; pass 0 in the common case where
    ///                           startRoundId is in the latest phase (then ignored).
    /// @param resolveNextGenesis the same, for resolveRoundId; pass 0 when it is in
    ///                           the latest phase.
    function finalizeForecast(
        uint256 forecastId,
        uint80 startRoundId,
        uint80 startPrevRoundId,
        uint80 resolveRoundId,
        uint80 resolvePrevRoundId,
        uint80 startNextGenesis,
        uint80 resolveNextGenesis
    ) external nonReentrant {
        require(forecastId < forecasts.length, "bad id");
        Forecast storage f = forecasts[forecastId];
        require(f.status == Status.Pending, "already finalized");

        _applyDecay();

        // Resolve the outcome and base payout from the two canonical rounds. Scoped
        // so the prices/timestamps free the stack before the payout + emit (keeps
        // the function under the 16-slot limit without via-IR).
        Status outcome;
        uint256 basePayout;
        uint256 deadline;
        {
            // Baseline: the first round strictly after the cast block.
            (int256 startPrice, uint256 startUpdatedAt) = _baselineRound(f.castTime, startRoundId, startPrevRoundId, startNextGenesis);
            // Resolver: the first round at/after the deadline (baseline + duration).
            deadline = startUpdatedAt + f.duration;
            int256 resolvePrice = _resolveRound(deadline, resolveRoundId, resolvePrevRoundId, resolveNextGenesis);

            if (resolvePrice == startPrice) {
                // Draw — refund the offering.
                outcome = Status.Draw;
                basePayout = f.amount;
            } else if ((resolvePrice > startPrice) == f.forecastRise) {
                // Right — 2x the offering. The 2x is intentionally FireBot-neutral: a
                // holder-bonus on a hedgeable binary call (cast Rise AND Fall on the
                // same window) would be a risk-free EMBER printer, so the FireBot edge
                // lives on emission claims instead (see _earn / blessing).
                outcome = Status.Right;
                basePayout = f.amount * 2;
            } else {
                // Wrong — nothing; the offering stays in the pot and decays.
                outcome = Status.Wrong;
                basePayout = 0;
            }
        }

        f.status = outcome;

        // Claim-time decay: full for 7 days past the deadline, then −1%/day to zero
        // by day 107. Paid from the escrow pot first, minting only the shortfall —
        // so as long as offerings cover the payout, a win mints nothing. If the pot
        // has decayed below the payout (or the forecasting population has drained it
        // with a persistent edge), the uncovered slice is minted, diluting passive
        // holders by a bounded amount (<= 2*amount, only on a correct call). See the
        // SHORTFALL MINT note on _payFromPot — bounded and intended, not a free mint.
        uint256 payout;
        if (basePayout > 0) {
            payout = Math.mulDiv(basePayout, _claimFactor(deadline), WAD);
            if (payout > 0) {
                _payFromPot(f.pyromancer, payout);
                totalForecastWon += payout;
                forecastWon[f.pyromancer] += payout;
            }
        }

        emit ForecastFinalized(forecastId, f.pyromancer, outcome, payout);
    }

    /// @dev Verify `roundId` is the first round published STRICTLY AFTER `ts`
    ///      (round.updatedAt > ts, predecessor.updatedAt <= ts) and return its
    ///      price and timestamp. The strict inequality means a Chainlink update
    ///      landing in the very block of the cast cannot serve as the baseline.
    ///      RETURNED-ID NOTE (audit 003-04, reviewed — safe vs the real feed): the
    ///      staleness check uses the RETURNED `rId` (ans >= rId) while the canonicity
    ///      proofs (_requirePredecessor / _requireCanonicalPhase) derive the phase from
    ///      the REQUESTED `roundId` argument; the code does not assert rId == roundId.
    ///      This is safe and not a latent hole HERE because BTC_USD is the hardcoded,
    ///      immutable Chainlink proxy (L154): a conforming proxy returns the requested
    ///      id from getRoundData or reverts, so rId == roundId always holds against it
    ///      and the two checks key off the same round. The implicit assumption would
    ///      only matter if the feed address could ever point at a non-conforming
    ///      aggregator returning a different id — impossible by immutability — so an
    ///      explicit require(rId == roundId) is omitted as dead code against this feed.
    function _baselineRound(uint256 ts, uint80 roundId, uint80 prevRoundId, uint80 nextGenesis) internal view returns (int256 price, uint256 updatedAt) {
        uint80 rId;
        uint80 ans;
        (rId, price, , updatedAt, ans) = BTC_USD.getRoundData(roundId);
        require(ans >= rId && price > 0 && updatedAt > 0, "invalid round");
        require(updatedAt > ts, "round not after cast");
        _requirePredecessor(roundId, prevRoundId, ts, true);  // predecessor.updatedAt <= ts
        _requireCanonicalPhase(roundId, updatedAt, nextGenesis); // not superseded by a later, overlapping phase
    }

    /// @dev Verify `roundId` is the first round published at/after `ts`
    ///      (round.updatedAt >= ts, predecessor.updatedAt < ts) and return its
    ///      price.
    ///      RETURNED-ID NOTE (audit 003-04): same as _baselineRound — rId == roundId
    ///      holds against the immutable, conforming BTC_USD proxy, so deriving the phase
    ///      from the requested `roundId` while staleness-checking the returned `rId` is
    ///      safe and the explicit require(rId == roundId) is dead code here.
    function _resolveRound(uint256 ts, uint80 roundId, uint80 prevRoundId, uint80 nextGenesis) internal view returns (int256 price) {
        uint80 rId;
        uint256 updatedAt;
        uint80 ans;
        (rId, price, , updatedAt, ans) = BTC_USD.getRoundData(roundId);
        require(ans >= rId && price > 0 && updatedAt > 0, "invalid round");
        require(updatedAt >= ts, "round before deadline");
        _requirePredecessor(roundId, prevRoundId, ts, false);  // predecessor.updatedAt < ts
        _requireCanonicalPhase(roundId, updatedAt, nextGenesis); // not superseded by a later, overlapping phase
    }

    /// @dev Enforce that `prevRoundId` is the round immediately preceding
    ///      `roundId` in time, and that it sits on the earlier side of `ts` —
    ///      together this proves `roundId` is THE FIRST qualifying round.
    ///      `orEqual` selects `<= ts` (baseline) vs `< ts` (resolver).
    ///
    ///      Chainlink proxy round ids are sequential only within a phase, so:
    ///        - if `roundId` has a readable same-phase predecessor (roundId - 1
    ///          exists), it is mid-phase and the only valid predecessor is
    ///          exactly `roundId - 1`;
    ///        - otherwise `roundId` is its phase's first round, so the
    ///          predecessor lives in the previous phase: we require it to be in
    ///          the immediately preceding phase AND the last round there (its own
    ///          successor must be unreadable). This closes the phase boundary as a
    ///          way to substitute a later, non-canonical round.
    ///      Whether `roundId` is a phase's first round is detected FUNCTIONALLY
    ///      (probe roundId - 1), not by assuming a phase starts at low64 == 1 — a
    ///      re-confirmed aggregator can resume its counter above 1 (see body).
    ///      A genesis baseline (phase 1, first round) has no predecessor phase
    ///      and is therefore unresolvable — irrelevant for a long-lived feed.
    ///
    ///      This proof is intra-phase: it pins `roundId` as the first qualifying
    ///      round of ITS phase. _requireCanonicalPhase then pins the phase itself, so
    ///      together they pin the GLOBALLY first qualifying round even when phases
    ///      overlap in time.
    function _requirePredecessor(uint80 roundId, uint80 prevRoundId, uint256 ts, bool orEqual) internal view {
        // A round is its phase's FIRST round iff it has no readable same-phase
        // predecessor. Detect that FUNCTIONALLY (probe roundId - 1) rather than
        // assuming a phase's first aggregatorRoundId is always 1: a re-confirmed
        // aggregator can resume its counter at a higher value, which the old
        // low64==1 test mis-classified as mid-phase and then reverted on the
        // (nonexistent) roundId - 1, leaving such a forecast permanently
        // unfinalizable. Probing is reliable because _tryUpdatedAt now rejects an
        // induced OOG. (Reading roundId - 1 is safe only when the low counter > 1;
        // when it is 1, roundId - 1 would cross into the phase bits, so short-
        // circuit and take the cross-phase branch directly.)
        if (uint64(roundId) > 1 && _tryUpdatedAt(roundId - 1) != 0) {
            // Mid-phase: the low counter is sequential, so the only valid
            // predecessor is roundId - 1.
            require(prevRoundId == roundId - 1, "bad predecessor");
        } else {
            // roundId is a phase's first round: the predecessor must be the last
            // round of the immediately preceding phase (no round exists between).
            // KNOWN FAIL-CLOSED EDGE (audit 006-01, accepted — see finalizeForecast's
            // LIVENESS note, case B): this "last-in-phase by id" proof is STRICTER than
            // strict temporal adjacency. If the old aggregator keeps printing P-1 rounds
            // whose timestamps straddle P's genesis (a backward temporal overlap), the
            // true temporal predecessor of roundId may NOT be last-in-P-1, making this
            // branch unsatisfiable and that single forecast permanently unfinalizable
            // (its offering decays in the pot, no refund). This is intended: it keeps the
            // canonicity proof structural and never mis-pays. NOT switched to a pure
            // time-adjacency proof, which would add trust surface to this check.
            require(uint16(prevRoundId >> PHASE_OFFSET) + 1 == uint16(roundId >> PHASE_OFFSET), "bad prev phase");
            require(_tryUpdatedAt(prevRoundId + 1) == 0, "prev not last in phase");
        }

        (, , , uint256 prevUpdatedAt, ) = BTC_USD.getRoundData(prevRoundId);
        require(prevUpdatedAt != 0, "prev unreadable");
        if (orEqual) {
            require(prevUpdatedAt <= ts, "not first round");
        } else {
            require(prevUpdatedAt < ts, "not earliest round");
        }
    }

    /// @dev Pin the PHASE of a canonical round. _requirePredecessor proves `roundId`
    ///      is first-qualifying WITHIN its phase; that is the globally-first round only
    ///      if no LATER phase had already started when `roundId` printed. Chainlink
    ///      does not guarantee phases are temporally disjoint — at an aggregator
    ///      migration the old aggregator can keep printing past the new phase's start
    ///      (a temporal overlap), and in that window the old phase still exposes its own
    ///      "first round after ts" with a stale price. This is the last door, and it
    ///      closes cleanly.
    ///
    ///      The insight (and why an earlier revision listed this as a residual): you
    ///      cannot *prove a phase's absence* from the proxy, but you can *anchor on a
    ///      phase's presence*. latestRoundData() returns the proxy's CURRENT — i.e.
    ///      highest-registered — phase, and phaseId advances by exactly one per
    ///      migration. So the contract always knows whether a successor exists:
    ///        - currentPhase == roundPhase  →  roundPhase IS the latest phase; no later
    ///          phase can overlap it, so the round is canonical. Done — and since
    ///          baseline/resolver are usually recent, this is both the common case and
    ///          the cheapest path (no probing at all).
    ///        - currentPhase  > roundPhase  →  a later phase provably EXISTS, so the
    ///          canonical round may belong to it. The finalizer must reveal the genesis
    ///          of the immediate successor (roundPhase+1), which the contract verifies
    ///          on-chain: right phase, genuinely the FIRST round (its in-phase
    ///          predecessor is unreadable), and itself readable. That round's updatedAt
    ///          is the true successor start; if it precedes `roundId`, a later phase was
    ///          already live when `roundId` printed → reject as stale.
    ///
    ///      The revealed genesis is unforgeable: a LATER successor round (handed over to
    ///      fake a convenient start time) has a readable predecessor and fails the
    ///      "first round" check; a non-existent id fails the readable check. So the
    ///      finalizer is pinned to the successor's TRUE genesis — whatever low-counter
    ///      value the aggregator resumed at. This is the improvement over guessing
    ///      (phase+1)<<64|1: a re-confirmed aggregator that resumes its counter above 1
    ///      used to leave that guessed id unreadable, reading as "no successor". Now the
    ///      contract never guesses the id — the finalizer supplies it and the contract
    ///      checks it — so {resumed counter + temporal overlap + price divergence} is
    ///      fully covered, not merely bounded.
    ///
    ///      Why the IMMEDIATE successor (roundPhase+1) suffices: Chainlink registers
    ///      phases in time order, so the immediate successor starts EARLIEST among all
    ///      later phases. If it had not started when `roundId` printed, none had; if it
    ///      had, we reject here. Walking further phases can't change the verdict. `>=`
    ///      (not `>`) keeps an honest lower-phase round valid on an exact same-second
    ///      tie, so finalization can never get stuck on a boundary.
    ///
    ///      Liveness: this fails CLOSED. If a real successor genesis can't be produced
    ///      (e.g. a registered phase with no readable rounds — which Chainlink does not
    ///      produce in practice), finalize reverts rather than paying a stale outcome. A
    ///      genuine genesis baseline (phase 1) has no predecessor phase and is
    ///      unresolvable anyway — irrelevant for a long-lived feed.
    /// @param nextGenesis genesis round id of phase roundPhase+1; ignored (pass 0) in
    ///        the common case where `roundId` is already in the latest phase.
    function _requireCanonicalPhase(uint80 roundId, uint256 roundUpdatedAt, uint80 nextGenesis) internal view {
        uint16 roundPhase = uint16(roundId >> PHASE_OFFSET);
        (uint80 latest, , , , ) = BTC_USD.latestRoundData();
        // No later phase exists ⇒ nothing can supersede this round (and no probing).
        if (uint16(latest >> PHASE_OFFSET) == roundPhase) return;

        // A later phase provably exists: verify the finalizer-revealed successor genesis.
        // PHASE ARITHMETIC SAFETY (reviewed): `roundPhase + 1` is uint16 but CANNOT wrap.
        //   (a) Reachability: this line runs only after the early return at L1116 (latest
        //       phase == roundPhase) was NOT taken, i.e. a strictly-later phase exists.
        //       That requires roundPhase <= latestPhase - 1 <= 65534, so roundPhase+1 is
        //       at most 65535 and never exceeds uint16. The 65535 boundary is unreachable
        //       here regardless of feed history.
        //   (b) Fail-closed even hypothetically: this is Solidity 0.8.x with default
        //       CHECKED arithmetic and no `unchecked` block, so an overflow would REVERT
        //       (Panic 0x11), not silently wrap to 0 and forge a phase match. Either way
        //       a non-canonical price can never slip through.
        require(uint16(nextGenesis >> PHASE_OFFSET) == roundPhase + 1, "bad next phase");
        // Genuinely the successor's FIRST round: its in-phase predecessor is unreadable.
        require(uint64(nextGenesis) == 1 || _tryUpdatedAt(nextGenesis - 1) == 0, "next not genesis");
        uint256 nextStart = _tryUpdatedAt(nextGenesis);
        require(nextStart != 0, "next unreadable");
        // If the successor was already live when this round printed, this round is stale.
        require(nextStart >= roundUpdatedAt, "superseded phase");
    }

    /// @dev `getRoundData(roundId).updatedAt`, or 0 if the round is unreadable
    ///      (reverts) — lets the predecessor check prove a round is the last one
    ///      in its phase by showing its in-phase successor does not exist.
    function _tryUpdatedAt(uint80 roundId) internal view returns (uint256 updatedAt) {
        try BTC_USD.getRoundData(roundId) returns (uint80, int256, uint256, uint256 u, uint80) {
            updatedAt = u;
        } catch {
            // Treat the revert as "round does not exist" — but only if it was a
            // genuine revert, not an induced out-of-gas. The 63/64 rule lets a
            // caller starve this sub-call; without this guard a forged OOG could
            // fake a missing round (faking "last in phase" or "phase not yet
            // superseded") and substitute a non-canonical price. Requiring ample
            // gas to remain forces a real OOG to bubble up instead.
            //
            // WHY THE ABSOLUTE 100k CONSTANT IS SUFFICIENT, NOT A HEURISTIC (proof,
            // not a promised test — this repo ships no Solidity test harness):
            //   To make this STATICCALL OOG, the attacker must FORWARD it less gas
            //   than getRoundData actually consumes (C_real). The 63/64 rule forwards
            //   F = floor(63/64 * G) where G is gas-at-call, and on a child OOG the
            //   child burns all of F, so the parent RETAINS G - F ≈ G/64. For the OOG
            //   to occur at all, F < C_real, i.e. G < (64/63)*C_real, hence the parent
            //   retains at most ≈ C_real/63 when this catch runs. So gasleft() here can
            //   exceed 100k (and slip past the guard) ONLY if C_real > 63 * 100k ≈
            //   6.3M gas. A real Chainlink getRoundData STATICCALL (a handful of SLOADs
            //   + access check on an immutable per-phase aggregator) costs ~8k–50k gas
            //   — a ~125x margin below the 6.3M break-even. The starvation needed to
            //   OOG the child necessarily starves the parent below 100k, so this guard
            //   converts every induced OOG into a bubbled revert. The standing
            //   assumption is therefore explicit and enormous: getRoundData must cost
            //   far below 6.3M gas (txGas/64 minus this floor); it costs three orders of
            //   magnitude less. The guard fails CLOSED if that assumption is ever
            //   violated (it reverts), never open.
            require(gasleft() > _ROUND_PROBE_GAS, "round probe oog");
            updatedAt = 0;
        }
    }

    // ----- Views -----

    function forecastsLength() external view returns (uint256) {
        return forecasts.length;
    }

    function forecastCountOf(address pyromancer) external view returns (uint256) {
        return forecastsOf[pyromancer].length;
    }

    /// @notice Convenience getter returning a pyromancer's full forecast-id list.
    /// @dev    UNBOUNDED — OFF-CHAIN READ ONLY (reviewed, NOT a DoS): forecasts[] and
    ///         forecastsOf[] grow one entry per cast and are never pruned, so for a very
    ///         large account this eth_call can exceed the node's gas/return-size limit.
    ///         This is purely a read-path concern: NO on-chain state-changing function
    ///         iterates either array (deposit/withdraw/redeem/cast/finalize index by id,
    ///         never loop), so there is no deposit/withdraw/redeem/finalize DoS. Indexers
    ///         that need to scale should PAGINATE via the auto-generated element getters
    ///         forecastsOf(pyromancer, i) / forecasts(i), bounded by forecastCountOf() /
    ///         forecastsLength(), rather than this convenience all-at-once view.
    function getForecastsOf(address pyromancer) external view returns (uint256[] memory) {
        return forecastsOf[pyromancer];
    }

    /// @notice All lifetime stats for `user` in a single call.
    /// @return earned        EMBER earned from EP-staking emission (claimed-to-date).
    /// @return pendingEarn   EMBER accrued from emission but not yet claimed, valued
    ///                       at the current rate (settle to realize it).
    /// @return spent         EMBER offered into forecasts (escrowed on cast).
    /// @return won           EMBER paid out by finalizing forecasts (incl. draw
    ///                       refunds); net forecasting P&L is `won - spent`.
    /// @return emberRedeemed gross EMBER passed into redeemEmber.
    /// @return blessed       EMBER minted as the FireBot blessing bonus on claims.
    /// @return fbxRedeemed   FBX actually received from redemptions (net of recycle).
    function userStats(address user)
        external
        view
        returns (
            uint256 earned,
            uint256 pendingEarn,
            uint256 spent,
            uint256 won,
            uint256 emberRedeemed,
            uint256 blessed,
            uint256 fbxRedeemed
        )
    {
        earned = lifetimeEarned[user];
        pendingEarn = pendingEmber(user);
        spent = forecastSpent[user];
        won = forecastWon[user];
        emberRedeemed = emberRedeemedBy[user];
        blessed = blessedBy[user];
        fbxRedeemed = fbxRedeemedBy[user];
    }

    /// @notice Protocol-wide lifetime totals, mirroring userStats() field-for-field.
    /// @return earned        EMBER minted by staking emission (realized).
    /// @return pendingEarn   EMBER accrued from emission but not yet claimed across
    ///                       all depositors, valued at the current rate.
    /// @return spent         EMBER offered into forecasts.
    /// @return won           EMBER paid out by finalizing forecasts (incl. draws).
    /// @return emberRedeemed gross EMBER passed into redeemEmber.
    /// @return blessed       EMBER minted as the FireBot blessing bonus on claims.
    /// @return fbxRedeemed   NET FBX handed to redeemers (after recycle).
    function globalStats()
        external
        view
        returns (
            uint256 earned,
            uint256 pendingEarn,
            uint256 spent,
            uint256 won,
            uint256 emberRedeemed,
            uint256 blessed,
            uint256 fbxRedeemed
        )
    {
        earned = totalEmberEarned;
        pendingEarn = unclaimedEmber();
        spent = totalForecastSpent;
        won = totalForecastWon;
        emberRedeemed = totalEmberRedeemed;
        blessed = totalBlessed;
        fbxRedeemed = totalFbxToUsers;
    }

    /// @notice Necessary (not sufficient) gate for finalization: true only once
    ///         enough time has passed that a resolving round can exist. The exact
    ///         baseline/resolver round ids are then located off-chain. False here
    ///         means the forecast is definitely not yet resolvable.
    ///
    ///         Anchored at castTime + duration, which is the EARLIEST the real
    ///         deadline could be: finalize measures duration from the baseline
    ///         round (the first round strictly after the cast), whose updatedAt is
    ///         > castTime, so the true deadline is always >= castTime + duration.
    ///         Using the lower bound keeps this a sound necessary gate (it can
    ///         never report a resolvable forecast as not-yet-resolvable); it
    ///         cannot use the baseline's own timestamp without the off-chain round
    ///         id this gate exists to precede.
    function maybeResolvable(uint256 forecastId) external view returns (bool) {
        if (forecastId >= forecasts.length) return false;
        Forecast storage f = forecasts[forecastId];
        if (f.status != Status.Pending) return false;
        (, , , uint256 updatedAt, ) = BTC_USD.latestRoundData();
        return updatedAt >= uint256(f.castTime) + f.duration;
    }

    /// @notice Total FBX currently held by the pool (excludes EP-side FBX
    ///         not yet claimed via redeem/claimRewards).
    function pooledFBX() external view returns (uint256) {
        return FBX.balanceOf(address(this));
    }

    /// @notice Lifetime EMBER ever burned out of supply: escrow-pot decay plus all
    ///         redeemed EMBER (redemption burns the full `amount`). Forecasts no
    ///         longer burn at cast (they escrow), so they contribute here only via
    ///         the pot's decay; the FireBot blessing is a mint (see _earn), not a
    ///         burn, so it does not appear here.
    function embersBurnt() public view returns (uint256) {
        return totalDecayBurned + totalEmberRedeemed;
    }

    /// @notice Lifetime EMBER ever created: base emission + FireBot blessing bonus +
    ///         winning-forecast shortfall mints. Computed by construction as
    ///         totalSupply + embersBurnt (everything created is either still in supply
    ///         or since burned), so no separate mint counter is needed. NOTE this is a
    ///         definitional identity, not an independent invariant — it always balances
    ///         and so cannot, by itself, detect a mint/burn accounting drift. The real
    ///         conservation check (Σ balanceOf == totalSupply, plus the spot-rate
    ///         unclaimed identity) belongs in the external test suite, where it is an
    ///         independent assertion rather than this tautology.
    function embersCreated() external view returns (uint256) {
        return totalSupply() + embersBurnt();
    }
}