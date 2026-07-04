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

 Pyromancy v1.02 — a no-loss BTC price-prediction pool.

 Immutable, ownerless, no admin levers. Pyromancers deposit EP (Elemental
 Particles); the pool stakes it to earn FBX, and depositors earn $EMBER in
 return. Principal is always withdrawable — no one loses their deposit.

 EMBER emission: starts at 1 EMBER/EP/second and decays geometrically, halving
 every two years (→ a negligible 1e-6/sec floor), tracking EP's own tapering FBX
 yield so emission can't outrun the FBX backing it. The schedule is global, so a
 late depositor earns at the prevailing lower rate. Earnings accrue as a CLAIMABLE
 balance, realized by claim() (also settled on deposit/withdraw). Unclaimed
 earnings sit off the ERC20 balance — spending EMBER moves only real tokens — but
 are still counted in the redemption denominator, so they can't be timed to
 over-extract FBX.

 EMBER redemption: a marginal EMBER redeems for 2x its naive pro-rata share of the
 FBX pool, so value climbs twice as fast as the pool grows; each redemption pulls
 FBX out and slips down a curve, pushing value back down. 5% of each redemption is
 recycled into freshly minted+staked EP that the pool keeps for good — a one-way
 deepening of the yield base that backs every holder's EMBER. FireBot NFT holders
 earn a slice of EXTRA EMBER on every emission claim (a "blessing", see _earn). It is
 always backed, never free money: the bonus is minted EMBER priced against fully-
 diluted supply, so it draws no FBX directly — a holder reward funded by a small
 (<25%) pro-rata dilution, bounded and self-limiting by design.

 The forecast: pyromancers call BTC Rise or Fall over a chosen window. The EMBER
 offered is ESCROWED on cast (not burned — it stays in totalSupply, so casting
 can't deflate redemption value). On finalize: a correct call pays 2x the offering,
 a wrong one nothing, an exact tie refunds. Payouts draw from the escrow pot FIRST
 and mint only the shortfall, so a Rise+Fall hedge over one window is supply-neutral
 and never a risk-free mint. The pot decays 1/365 of its balance per day — the sink
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
 finalize handles both. It also pins the phase itself (_requireCanonicalPhase), so
 an old aggregator that keeps printing into a newer phase (a temporal overlap at a
 migration) can't substitute a stale price. The UI binary-searches for the ids.
*/





/// @notice Minimal interface to the EP staking token. `mintEP(x)` mints x EP by
///         burning 300*x FBX from the caller (so this contract must approve FBX
///         to EP); `stakeEP`/`unstakeEP` move principal in/out of the EP
///         staking pool; `claimRewards` pulls this contract's 90% share of
///         accrued FBX (the EP contract skims 10% to its team). Note stakeEP
///         and unstakeEP each call claimRewards internally, so deposit and
///         withdraw also realize this contract's pending FBX as a side effect.
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

/// @title Pyromancy — a no-loss BTC price-prediction pool with an earned,
///        volatile-redemption EMBER token.
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
    ///      fullyDilutedSupply on redemption, so it draws no FBX directly and can
    ///      never be an unbacked claim on FBX: it is always backed, just shared a
    ///      little more toward holders.
    ///
    ///      It is a holder reward, by design: a FireBot holder earns ~blessingBps
    ///      more EMBER per unit of their own emission than a non-holder, funded by a
    ///      small pro-rata dilution of supply. The rate is read at settlement time and
    ///      applied to the emission accrued since the holder's last settlement, so
    ///      acquiring a FireBot also blesses already-pending emission — holding one
    ///      pays off whenever you claim; you needn't have held it the whole span. The
    ///      <25% cap and the dilutes-not-draws design keep it bounded and self-
    ///      limiting (it tracks the decaying emission curve down to ~zero), and it
    ///      rewards long-horizon stakers most, accruing whether or not you ever redeem.
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
    // The emission rate decays geometrically from 1/sec toward a floor, halving the
    // above-floor part every two years:
    //     rate(t) = FLOOR + (1 - FLOOR) * 2^(-(t - START)/HALF_LIFE)   EMBER/EP/sec
    // FLOOR is a negligible 1e-6, so effectively 1.0 at deploy, 0.5 at 2yr, … → ~0.
    // This tracks EP's tapering FBX yield, so EMBER can't inflate the way a flat
    // 1/sec would. Lifetime emission per EP is bounded (≈ HALF_LIFE/ln2 ≈ 91M from
    // the decaying part; the floor adds ~0.03% over a millennium).
    //
    // Accounting stays O(1) and exact (Σ balanceOf == totalSupply) via a single
    // GLOBAL emission index E(t) = ∫ rate (the "effective seconds" streamed per unit
    // EP since deploy); each holder snapshots E rather than a timestamp, so a late
    // depositor earns at the prevailing rate. The linear FLOOR term keeps E
    // monotonic (never steps backwards, which would underflow earnings) — its
    // ~1e12/sec growth dominates the few-wei rounding wobble in the decaying part.

    /// @dev Fixed-point unit for the decay math.
    uint256 private constant WAD = 1e18;
    /// @dev Emission half-life: the above-floor rate halves every HALF_LIFE.
    uint256 public constant HALF_LIFE = 730 days;
    /// @dev Rate floor the emission decays toward, in WAD. 1e-6 (1e12) — a negligible
    ///      one-millionth of the launch rate, economically zero — whose job is to keep
    ///      the emission index monotonic: the linear floor term dominates any rpow
    ///      rounding wobble (see emissionIndex). The decaying bonus carries the
    ///      remaining (WAD - FLOOR_WAD).
    uint256 public constant FLOOR_WAD = 1e12;
    /// @dev Per-second survival factor Q = 2^(-1/HALF_LIFE), in WAD. Q^n is the bonus
    ///      decay (a WAD fraction) after n seconds, with Q^HALF_LIFE ≈ 1/2 (exact to
    ///      ~2.6e6 wei after rpow flooring). DELTA = WAD - Q is the per-second decay;
    ///      WAD/DELTA is the bonus integral's asymptote (≈ 90,993,662 effective seconds).
    uint256 private constant Q_WAD = 999999989010223606;
    uint256 private constant DELTA = WAD - Q_WAD; // 10,989,776,394

    /// @dev Deploy timestamp — t=0 of the emission schedule. Immutable, so the
    ///      decay curve is fixed at construction and can never be repointed.
    uint256 public immutable START;

    // ----- Earned-EMBER accrual (claimable) -----
    // Let E = emissionIndex(now), the global "effective seconds" streamed per EP
    // since deploy (the integral of the decaying rate — see emissionIndex). A
    // depositor's accrued-but-unclaimed EMBER is deposited[user] * (E - lastIndex[user]);
    // claim() mints it and snaps lastIndex to E. ERC20 balanceOf/totalSupply are
    // STANDARD here (real minted tokens only) — accrual lives off-balance until
    // claimed, so spending EMBER never silently realizes a stream. For redemption
    // pricing, fullyDilutedSupply() adds the global unclaimed term back
    //   ( totalDeposited * E - totalEarnedDebt,  totalEarnedDebt = Σ deposited_i * lastIndex_i )
    // so the curve still prices against fully-diluted supply and unclaimed earnings
    // can't be timed to over-extract FBX.

    /// @dev EP principal each pyromancer has deposited (and that is staked).
    mapping(address => uint256) public deposited;
    /// @dev Snapshot of the global emission index at a pyromancer's last
    ///      realization. Earnings since then are deposited * (E(now) - lastIndex).
    ///      (Under the old flat rate this was simply a timestamp; the index is
    ///      its decaying-rate generalization — the integral of rate over time.)
    mapping(address => uint256) public lastIndex;
    /// @dev Sum of all deposited EP (the global EMBER earn rate is this scaled by
    ///      the current emission rate; at deploy, one EMBER per unit per second).
    uint256 public totalDeposited;
    /// @dev Σ deposited_i * lastIndex_i — the offset that makes the global earned
    ///      total computable in O(1).
    uint256 public totalEarnedDebt;
    /// @dev Lifetime BASE EMBER minted by staking emission (the `earned` term of
    ///      every _earn mint) — the realized half of all emission. Add
    ///      unclaimedEmber() for the total base ever generated from staking. The
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
    ///      every _earn mint (equivalently, all EmberClaimed for the account). Add
    ///      pendingEmber(user) for the still-unclaimed tail.
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
    constructor() ERC20("Ember", "EMBER") {
        START = block.timestamp;
        lastDecayTime = block.timestamp;
        FBX.forceApprove(address(EP), type(uint256).max);
    }

    // ----- Emission index (decaying rate) -----

    /// @notice Cumulative emission index at time `ts`: the "effective seconds" of
    ///         EMBER streamed per unit of deposited EP from deploy to `ts`. With
    ///         n = ts - START and the decaying-bonus integral g(n) = (WAD - Q^n)/DELTA:
    ///             E(ts) = [ FLOOR_WAD * n  +  (WAD - FLOOR_WAD) * g(n) ] / WAD
    ///         i.e. a (negligible) FLOOR baseline plus the decaying (1 - FLOOR)
    ///         bonus. Earnings over a span are simply deposited * (E(now) -
    ///         E(last)). Returns 0 for ts at/before deploy.
    function emissionIndex(uint256 ts) public view returns (uint256) {
        if (ts <= START) return 0;
        uint256 n = ts - START;
        uint256 bonus = Math.mulDiv(WAD - FLOOR_WAD, WAD - rpow(Q_WAD, n), DELTA);
        return (FLOOR_WAD * n + bonus) / WAD;
    }

    /// @notice The emission index right now (convenience for off-chain readers).
    function emissionIndexNow() public view returns (uint256) {
        return emissionIndex(block.timestamp);
    }

    /// @notice Live emission rate as a WAD fraction of the original 1 EMBER per EP
    ///         per second: 1e18 at deploy, ~5e17 after two years, … → FLOOR_WAD (~0).
    ///         Off-chain tickers multiply a holder's deposited EP by this/1e18 to
    ///         stream the balance smoothly between polls.
    function emberRate() external view returns (uint256) {
        return FLOOR_WAD + Math.mulDiv(WAD - FLOOR_WAD, rpow(Q_WAD, block.timestamp - START), WAD);
    }

    /// @dev WAD fixed-point exponentiation x^n by squaring, used as the decay's
    ///      2^(-n/HALF_LIFE) = Q_WAD^n. With x = Q_WAD < WAD every partial product
    ///      stays ≤ WAD, so it cannot overflow, and mulDiv floors (favoring the
    ///      pool). At the index's integer resolution E is monotonic in n — the linear
    ///      FLOOR term (~1e12/sec) dwarfs the few-wei rounding of the squarings — so
    ///      E(now) ≥ E(last) always holds and earnings can never underflow.
    function rpow(uint256 x, uint256 n) internal pure returns (uint256 z) {
        z = WAD;
        while (n != 0) {
            if (n & 1 == 1) z = Math.mulDiv(z, x, WAD);
            n >>= 1;
            if (n != 0) x = Math.mulDiv(x, x, WAD);
        }
    }

    // ----- Earned-EMBER accrual (claimable) -----
    // balanceOf / totalSupply are inherited STANDARD ERC20 (real minted tokens):
    // accrual is off-balance until claim() settles it, so spending EMBER never
    // silently realizes a stream — keeping wallet balance-change previews clean.

    /// @dev Settle a pyromancer's accrued EMBER: mint what was earned since their
    ///      last snapshot and advance lastIndex to E(now). Called by claim() and by
    ///      deposit/withdraw (which must settle before changing `deposited`).
    ///      Returns the current emission index so deposit/withdraw can reuse it.
    function _earn(address account) internal returns (uint256 idxNow) {
        idxNow = emissionIndexNow();
        uint256 last = lastIndex[account];
        if (idxNow == last) return idxNow;
        uint256 dep = deposited[account];
        if (dep > 0) {
            uint256 earned = dep * (idxNow - last);
            // lastIndex moves forward by (idxNow - last), so this account's term
            // in totalEarnedDebt (dep * lastIndex) rises by exactly `earned`.
            totalEarnedDebt += earned;
            totalEmberEarned += earned;
            lifetimeEarned[account] += earned;

            // FireBot blessing: holders mint a bonus slice of EMBER on top of the
            // emission they earned (saturating curve, first FireBot ≈ 0.1%, < 25%).
            // The rate is read now and applied to everything accrued since the last
            // settlement, so a holder's current FireBot standing blesses their whole
            // pending span — by design, holding a FireBot rewards you whenever you
            // claim. The bonus is ordinary emission — it joins totalSupply and is
            // priced against fullyDilutedSupply on redemption, so it dilutes the pool
            // rather than drawing FBX, and can never be an unbacked claim on FBX.
            uint256 bonus = earned * _blessingBps(account) / BPS;
            if (bonus > 0) {
                totalBlessed += bonus;
                blessedBy[account] += bonus;
            }

            _mint(account, earned + bonus);
            emit EmberClaimed(account, earned);
            if (bonus > 0) emit EmberBlessed(account, bonus);
        }
        lastIndex[account] = idxNow;
    }

    /// @dev FireBot blessing rate (bps) for `account`: BLESSING_MAX_BPS * bots /
    ///      (bots + BLESSING_K), strictly below 25%. The FIREBOTS read is wrapped
    ///      so a misbehaving NFT contract can never brick an emission settlement
    ///      (and thus a deposit/withdraw) — it just yields a 0 blessing.
    function _blessingBps(address account) internal view returns (uint256) {
        try FIREBOTS.balanceOf(account) returns (uint256 bots) {
            if (bots == 0) return 0;
            return BLESSING_MAX_BPS * bots / (bots + BLESSING_K);
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
    function claim() external returns (uint256 realized) {
        uint256 before = balanceOf(msg.sender);
        _earn(msg.sender);
        realized = balanceOf(msg.sender) - before;
    }

    /// @notice EMBER accrued but not yet claimed for `account`.
    function pendingEmber(address account) public view returns (uint256) {
        return deposited[account] * (emissionIndexNow() - lastIndex[account]);
    }

    /// @notice Global accrued-but-unclaimed EMBER across all depositors.
    function unclaimedEmber() public view returns (uint256) {
        return totalDeposited * emissionIndexNow() - totalEarnedDebt;
    }

    /// @notice Fully-diluted EMBER supply: circulating (claimed) plus all accrued-
    ///         but-unclaimed earnings. This is the denominator redemptions price
    ///         against, so unclaimed earnings can never be timed to over-extract FBX
    ///         (it matches what the old streaming totalSupply() reported).
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
    ///      economic interaction so the pot (and thus totalSupply) reflects decay
    ///      before any pricing or payout. No external calls — reentrancy-inert.
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
    function depositFor(address beneficiary, uint256 amountEP) external nonReentrant {
        require(beneficiary != address(0), "zero beneficiary");
        _deposit(beneficiary, amountEP);
    }

    /// @dev Pull EP from msg.sender and credit `beneficiary`'s principal, starting
    ///      (or extending) their EMBER earning. Shared by deposit/depositFor.
    function _deposit(address beneficiary, uint256 amountEP) internal {
        require(amountEP > 0, "amount=0");
        _applyDecay();
        EP.safeTransferFrom(msg.sender, address(this), amountEP);
        uint256 idx = _earn(beneficiary); // settle the existing position; sets lastIndex = E(now)
        deposited[beneficiary] += amountEP;
        totalDeposited += amountEP;
        totalEarnedDebt += amountEP * idx; // new principal enters at last = E(now)
        // Stake the whole unstaked EP balance so nothing sits idle.
        EP.stakeEP(EP.balanceOf(address(this)));
        emit Deposited(beneficiary, amountEP, msg.sender);
    }

    /// @notice Withdraw `amountEP` of EP principal at any time. Earned EMBER is
    ///         realized and kept; only the principal leaves. No-loss: deposits
    ///         are always fully recoverable.
    function withdraw(uint256 amountEP) external nonReentrant {
        require(amountEP > 0 && deposited[msg.sender] >= amountEP, "bad amount");
        _applyDecay();
        uint256 idx = _earn(msg.sender); // settle the existing position; sets lastIndex = E(now)
        deposited[msg.sender] -= amountEP;
        totalDeposited -= amountEP;
        totalEarnedDebt -= amountEP * idx; // principal leaves at last = E(now)
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
    ///         This is the path-independent integral of the 2x marginal rate, so
    ///         splitting a redemption yields the same total — no split-to-gain edge.
    ///         Redeeming half the supply gets 3/4 of the pool; the whole supply gets
    ///         the whole pool (never more). 5% of the FBX out is recycled into freshly
    ///         minted+staked EP; the remaining 95% goes to the redeemer. The full
    ///         `amount` is burned (the FireBot blessing now accrues on emission
    ///         claims, not here — see _earn).
    /// @param amount     EMBER to redeem (burned in full; FBX is paid on it).
    /// @param minFbxOut  minimum FBX the redeemer is willing to net (slippage
    ///                   guard against a redemption landing just ahead of theirs
    ///                   and pushing the value down); pass 0 to disable.
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

        totalFbxRedeemed += fbxOut;

        uint256 toRecycle = fbxOut * RECYCLE_PCT / 100;
        uint256 toUser = fbxOut - toRecycle;
        // Slippage guard: revert unless the redeemer nets at least minFbxOut, so
        // a redemption landing just ahead of theirs can't force a worse price
        // than they accepted. Passing 0 disables it (a 0-value redeem then just
        // burns EMBER for nothing — the caller's choice).
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
        uint256 epToMint = toRecycle / FBX_PER_EP;
        if (epToMint > 0) {
            EP.mintEP(epToMint);
            EP.stakeEP(EP.balanceOf(address(this)));
        }

        if (toUser > 0) {
            FBX.safeTransfer(msg.sender, toUser);
        }
        emit EmberRedeemed(msg.sender, amount, fbxOut, toUser);
    }

    /// @notice Quote a redemption against the currently-held FBX. The realized
    ///         value will be slightly higher, since redeemEmber() also sweeps
    ///         freshly accrued FBX in first.
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
    /// @param startRoundId       first BTC/USD round id with updatedAt > castTime.
    /// @param startPrevRoundId   the round immediately preceding startRoundId:
    ///                           startRoundId - 1 within a phase, or the last
    ///                           round of the previous phase when startRoundId is
    ///                           a phase's first round.
    /// @param resolveRoundId     first BTC/USD round id with updatedAt >= deadline.
    /// @param resolvePrevRoundId the round immediately preceding resolveRoundId
    ///                           (same phase-boundary rule as startPrevRoundId).
    function finalizeForecast(
        uint256 forecastId,
        uint80 startRoundId,
        uint80 startPrevRoundId,
        uint80 resolveRoundId,
        uint80 resolvePrevRoundId
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
            (int256 startPrice, uint256 startUpdatedAt) = _baselineRound(f.castTime, startRoundId, startPrevRoundId);
            // Resolver: the first round at/after the deadline (baseline + duration).
            deadline = startUpdatedAt + f.duration;
            int256 resolvePrice = _resolveRound(deadline, resolveRoundId, resolvePrevRoundId);

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
        // so as long as offerings are sitting in the pot, a win mints nothing.
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
    function _baselineRound(uint256 ts, uint80 roundId, uint80 prevRoundId) internal view returns (int256 price, uint256 updatedAt) {
        uint80 rId;
        uint80 ans;
        (rId, price, , updatedAt, ans) = BTC_USD.getRoundData(roundId);
        require(ans >= rId && price > 0 && updatedAt > 0, "invalid round");
        require(updatedAt > ts, "round not after cast");
        _requirePredecessor(roundId, prevRoundId, ts, true); // predecessor.updatedAt <= ts
        _requireCanonicalPhase(roundId, updatedAt);           // not superseded by a later, overlapping phase
    }

    /// @dev Verify `roundId` is the first round published at/after `ts`
    ///      (round.updatedAt >= ts, predecessor.updatedAt < ts) and return its
    ///      price.
    function _resolveRound(uint256 ts, uint80 roundId, uint80 prevRoundId) internal view returns (int256 price) {
        uint80 rId;
        uint256 updatedAt;
        uint80 ans;
        (rId, price, , updatedAt, ans) = BTC_USD.getRoundData(roundId);
        require(ans >= rId && price > 0 && updatedAt > 0, "invalid round");
        require(updatedAt >= ts, "round before deadline");
        _requirePredecessor(roundId, prevRoundId, ts, false); // predecessor.updatedAt < ts
        _requireCanonicalPhase(roundId, updatedAt);           // not superseded by a later, overlapping phase
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

    /// @dev Reject a round whose phase had already been superseded when the round
    ///      was published. _requirePredecessor proves `roundId` is first-qualifying
    ///      WITHIN its phase; that is the globally-first round only if no LATER phase
    ///      was already live. Chainlink does not guarantee phases are temporally
    ///      disjoint — at an aggregator migration the old aggregator can keep printing
    ///      past the new phase's start (a temporal overlap), and in that window the
    ///      old phase still exposes its own "first round after ts" with a stale price.
    ///
    ///      The next phase's first round id is deterministic ((phase+1) << 64 | 1), so
    ///      we read it directly: if it exists and was published BEFORE this round,
    ///      then a later phase was already active and the canonical round belongs to
    ///      it, not here — reject. The opposite substitution (using a NEWER phase
    ///      while the old one is still canonical) is already blocked by
    ///      _requirePredecessor: a new phase's first round must have the old phase's
    ///      LAST round as predecessor (successor unreadable) sitting on the earlier
    ///      side of ts, which fails while the old phase is still printing at/after ts.
    ///
    ///      Why only the IMMEDIATE successor (phase+1), not every later phase:
    ///      Chainlink registers phases in time order, so phase k's first round is
    ///      published no later than phase k+1's. The immediate successor therefore
    ///      starts EARLIEST among all later phases — if it had not yet started when
    ///      `roundId` printed (nextStart >= roundUpdatedAt), no later phase had
    ///      either, so checking phase+1 alone is sufficient; walking further phases
    ///      can never change the verdict. `>=` (not `>`) keeps an honest lower-phase
    ///      round valid on an exact same-second tie, so finalization can never stick.
    ///
    ///      KNOWN LIMITATION (accepted): this reads the successor at (phase+1)<<64|1,
    ///      i.e. it assumes the successor numbers its rounds from 1. As
    ///      _requirePredecessor notes, a re-confirmed aggregator can resume its
    ///      counter ABOVE 1, leaving (phase+1)<<64|1 unreadable; the probe then reads
    ///      "no successor" and a stale overlapping round from this phase could pass.
    ///      Closing this autonomously is not possible — a resumed counter leaves the
    ///      contract no id to probe and a finalizer no obligation to reveal it. The
    ///      residual exploit needs all of {resumed counter, temporal overlap at that
    ///      exact migration, a favorable price divergence} and is bounded to a single
    ///      forecast's payout, so it is accepted rather than guarded with a verified
    ///      caller-supplied successor round.
    function _requireCanonicalPhase(uint80 roundId, uint256 roundUpdatedAt) internal view {
        uint256 nextPhase = uint256(uint16(roundId >> PHASE_OFFSET)) + 1;
        uint80 nextPhaseFirst = uint80((nextPhase << PHASE_OFFSET) | 1);
        uint256 nextStart = _tryUpdatedAt(nextPhaseFirst);
        require(nextStart == 0 || nextStart >= roundUpdatedAt, "superseded phase");
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

    function getForecastsOf(address pyromancer) external view returns (uint256[] memory) {
        return forecastsOf[pyromancer];
    }

    /// @notice All lifetime stats for `user` in a single call.
    /// @return earned        EMBER earned from EP-staking emission (claimed-to-date).
    /// @return pendingEarn   EMBER accrued from emission but not yet claimed; add to
    ///                       `earned` for the true lifetime generated from staking.
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
    /// @return pendingEarn   EMBER accrued from emission but not yet claimed, across
    ///                       all depositors; add to `earned` for total generated.
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
    ///         and so cannot, by itself, detect a future mint/burn accounting drift.
    function embersCreated() external view returns (uint256) {
        return totalSupply() + embersBurnt();
    }
}