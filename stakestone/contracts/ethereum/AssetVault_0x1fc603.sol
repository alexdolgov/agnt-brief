// ============================================================
// FILE: lib/openzeppelin-contracts/contracts/access/AccessControl.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (access/AccessControl.sol)

pragma solidity ^0.8.20;

import {IAccessControl} from "./IAccessControl.sol";
import {Context} from "../utils/Context.sol";
import {ERC165} from "../utils/introspection/ERC165.sol";

/**
 * @dev Contract module that allows children to implement role-based access
 * control mechanisms. This is a lightweight version that doesn't allow enumerating role
 * members except through off-chain means by accessing the contract event logs. Some
 * applications may benefit from on-chain enumerability, for those cases see
 * {AccessControlEnumerable}.
 *
 * Roles are referred to by their `bytes32` identifier. These should be exposed
 * in the external API and be unique. The best way to achieve this is by
 * using `public constant` hash digests:
 *
 * ```solidity
 * bytes32 public constant MY_ROLE = keccak256("MY_ROLE");
 * ```
 *
 * Roles can be used to represent a set of permissions. To restrict access to a
 * function call, use {hasRole}:
 *
 * ```solidity
 * function foo() public {
 *     require(hasRole(MY_ROLE, msg.sender));
 *     ...
 * }
 * ```
 *
 * Roles can be granted and revoked dynamically via the {grantRole} and
 * {revokeRole} functions. Each role has an associated admin role, and only
 * accounts that have a role's admin role can call {grantRole} and {revokeRole}.
 *
 * By default, the admin role for all roles is `DEFAULT_ADMIN_ROLE`, which means
 * that only accounts with this role will be able to grant or revoke other
 * roles. More complex role relationships can be created by using
 * {_setRoleAdmin}.
 *
 * WARNING: The `DEFAULT_ADMIN_ROLE` is also its own admin: it has permission to
 * grant and revoke this role. Extra precautions should be taken to secure
 * accounts that have been granted it. We recommend using {AccessControlDefaultAdminRules}
 * to enforce additional security measures for this role.
 */
abstract contract AccessControl is Context, IAccessControl, ERC165 {
    struct RoleData {
        mapping(address account => bool) hasRole;
        bytes32 adminRole;
    }

    mapping(bytes32 role => RoleData) private _roles;

    bytes32 public constant DEFAULT_ADMIN_ROLE = 0x00;

    /**
     * @dev Modifier that checks that an account has a specific role. Reverts
     * with an {AccessControlUnauthorizedAccount} error including the required role.
     */
    modifier onlyRole(bytes32 role) {
        _checkRole(role);
        _;
    }

    /**
     * @dev See {IERC165-supportsInterface}.
     */
    function supportsInterface(bytes4 interfaceId) public view virtual override returns (bool) {
        return interfaceId == type(IAccessControl).interfaceId || super.supportsInterface(interfaceId);
    }

    /**
     * @dev Returns `true` if `account` has been granted `role`.
     */
    function hasRole(bytes32 role, address account) public view virtual returns (bool) {
        return _roles[role].hasRole[account];
    }

    /**
     * @dev Reverts with an {AccessControlUnauthorizedAccount} error if `_msgSender()`
     * is missing `role`. Overriding this function changes the behavior of the {onlyRole} modifier.
     */
    function _checkRole(bytes32 role) internal view virtual {
        _checkRole(role, _msgSender());
    }

    /**
     * @dev Reverts with an {AccessControlUnauthorizedAccount} error if `account`
     * is missing `role`.
     */
    function _checkRole(bytes32 role, address account) internal view virtual {
        if (!hasRole(role, account)) {
            revert AccessControlUnauthorizedAccount(account, role);
        }
    }

    /**
     * @dev Returns the admin role that controls `role`. See {grantRole} and
     * {revokeRole}.
     *
     * To change a role's admin, use {_setRoleAdmin}.
     */
    function getRoleAdmin(bytes32 role) public view virtual returns (bytes32) {
        return _roles[role].adminRole;
    }

    /**
     * @dev Grants `role` to `account`.
     *
     * If `account` had not been already granted `role`, emits a {RoleGranted}
     * event.
     *
     * Requirements:
     *
     * - the caller must have ``role``'s admin role.
     *
     * May emit a {RoleGranted} event.
     */
    function grantRole(bytes32 role, address account) public virtual onlyRole(getRoleAdmin(role)) {
        _grantRole(role, account);
    }

    /**
     * @dev Revokes `role` from `account`.
     *
     * If `account` had been granted `role`, emits a {RoleRevoked} event.
     *
     * Requirements:
     *
     * - the caller must have ``role``'s admin role.
     *
     * May emit a {RoleRevoked} event.
     */
    function revokeRole(bytes32 role, address account) public virtual onlyRole(getRoleAdmin(role)) {
        _revokeRole(role, account);
    }

    /**
     * @dev Revokes `role` from the calling account.
     *
     * Roles are often managed via {grantRole} and {revokeRole}: this function's
     * purpose is to provide a mechanism for accounts to lose their privileges
     * if they are compromised (such as when a trusted device is misplaced).
     *
     * If the calling account had been revoked `role`, emits a {RoleRevoked}
     * event.
     *
     * Requirements:
     *
     * - the caller must be `callerConfirmation`.
     *
     * May emit a {RoleRevoked} event.
     */
    function renounceRole(bytes32 role, address callerConfirmation) public virtual {
        if (callerConfirmation != _msgSender()) {
            revert AccessControlBadConfirmation();
        }

        _revokeRole(role, callerConfirmation);
    }

    /**
     * @dev Sets `adminRole` as ``role``'s admin role.
     *
     * Emits a {RoleAdminChanged} event.
     */
    function _setRoleAdmin(bytes32 role, bytes32 adminRole) internal virtual {
        bytes32 previousAdminRole = getRoleAdmin(role);
        _roles[role].adminRole = adminRole;
        emit RoleAdminChanged(role, previousAdminRole, adminRole);
    }

    /**
     * @dev Attempts to grant `role` to `account` and returns a boolean indicating if `role` was granted.
     *
     * Internal function without access restriction.
     *
     * May emit a {RoleGranted} event.
     */
    function _grantRole(bytes32 role, address account) internal virtual returns (bool) {
        if (!hasRole(role, account)) {
            _roles[role].hasRole[account] = true;
            emit RoleGranted(role, account, _msgSender());
            return true;
        } else {
            return false;
        }
    }

    /**
     * @dev Attempts to revoke `role` to `account` and returns a boolean indicating if `role` was revoked.
     *
     * Internal function without access restriction.
     *
     * May emit a {RoleRevoked} event.
     */
    function _revokeRole(bytes32 role, address account) internal virtual returns (bool) {
        if (hasRole(role, account)) {
            _roles[role].hasRole[account] = false;
            emit RoleRevoked(role, account, _msgSender());
            return true;
        } else {
            return false;
        }
    }
}

// ============================================================
// FILE: lib/openzeppelin-contracts/contracts/access/IAccessControl.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (access/IAccessControl.sol)

pragma solidity ^0.8.20;

/**
 * @dev External interface of AccessControl declared to support ERC165 detection.
 */
interface IAccessControl {
    /**
     * @dev The `account` is missing a role.
     */
    error AccessControlUnauthorizedAccount(address account, bytes32 neededRole);

    /**
     * @dev The caller of a function is not the expected one.
     *
     * NOTE: Don't confuse with {AccessControlUnauthorizedAccount}.
     */
    error AccessControlBadConfirmation();

    /**
     * @dev Emitted when `newAdminRole` is set as ``role``'s admin role, replacing `previousAdminRole`
     *
     * `DEFAULT_ADMIN_ROLE` is the starting admin for all roles, despite
     * {RoleAdminChanged} not being emitted signaling this.
     */
    event RoleAdminChanged(bytes32 indexed role, bytes32 indexed previousAdminRole, bytes32 indexed newAdminRole);

    /**
     * @dev Emitted when `account` is granted `role`.
     *
     * `sender` is the account that originated the contract call, an admin role
     * bearer except when using {AccessControl-_setupRole}.
     */
    event RoleGranted(bytes32 indexed role, address indexed account, address indexed sender);

    /**
     * @dev Emitted when `account` is revoked `role`.
     *
     * `sender` is the account that originated the contract call:
     *   - if using `revokeRole`, it is the admin role bearer
     *   - if using `renounceRole`, it is the role bearer (i.e. `account`)
     */
    event RoleRevoked(bytes32 indexed role, address indexed account, address indexed sender);

    /**
     * @dev Returns `true` if `account` has been granted `role`.
     */
    function hasRole(bytes32 role, address account) external view returns (bool);

    /**
     * @dev Returns the admin role that controls `role`. See {grantRole} and
     * {revokeRole}.
     *
     * To change a role's admin, use {AccessControl-_setRoleAdmin}.
     */
    function getRoleAdmin(bytes32 role) external view returns (bytes32);

    /**
     * @dev Grants `role` to `account`.
     *
     * If `account` had not been already granted `role`, emits a {RoleGranted}
     * event.
     *
     * Requirements:
     *
     * - the caller must have ``role``'s admin role.
     */
    function grantRole(bytes32 role, address account) external;

    /**
     * @dev Revokes `role` from `account`.
     *
     * If `account` had been granted `role`, emits a {RoleRevoked} event.
     *
     * Requirements:
     *
     * - the caller must have ``role``'s admin role.
     */
    function revokeRole(bytes32 role, address account) external;

    /**
     * @dev Revokes `role` from the calling account.
     *
     * Roles are often managed via {grantRole} and {revokeRole}: this function's
     * purpose is to provide a mechanism for accounts to lose their privileges
     * if they are compromised (such as when a trusted device is misplaced).
     *
     * If the calling account had been granted `role`, emits a {RoleRevoked}
     * event.
     *
     * Requirements:
     *
     * - the caller must be `callerConfirmation`.
     */
    function renounceRole(bytes32 role, address callerConfirmation) external;
}

// ============================================================
// FILE: lib/openzeppelin-contracts/contracts/interfaces/draft-IERC6093.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (interfaces/draft-IERC6093.sol)
pragma solidity ^0.8.20;

/**
 * @dev Standard ERC20 Errors
 * Interface of the https://eips.ethereum.org/EIPS/eip-6093[ERC-6093] custom errors for ERC20 tokens.
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
 * @dev Standard ERC721 Errors
 * Interface of the https://eips.ethereum.org/EIPS/eip-6093[ERC-6093] custom errors for ERC721 tokens.
 */
interface IERC721Errors {
    /**
     * @dev Indicates that an address can't be an owner. For example, `address(0)` is a forbidden owner in EIP-20.
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
 * @dev Standard ERC1155 Errors
 * Interface of the https://eips.ethereum.org/EIPS/eip-6093[ERC-6093] custom errors for ERC1155 tokens.
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

// ============================================================
// FILE: lib/openzeppelin-contracts/contracts/token/ERC20/ERC20.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (token/ERC20/ERC20.sol)

pragma solidity ^0.8.20;

import {IERC20} from "./IERC20.sol";
import {IERC20Metadata} from "./extensions/IERC20Metadata.sol";
import {Context} from "../../utils/Context.sol";
import {IERC20Errors} from "../../interfaces/draft-IERC6093.sol";

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
 * conventional and does not conflict with the expectations of ERC20
 * applications.
 *
 * Additionally, an {Approval} event is emitted on calls to {transferFrom}.
 * This allows applications to reconstruct the allowance for all accounts just
 * by listening to said events. Other implementations of the EIP may not emit
 * these events, as it isn't required by the specification.
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

    /**
     * @dev See {IERC20-totalSupply}.
     */
    function totalSupply() public view virtual returns (uint256) {
        return _totalSupply;
    }

    /**
     * @dev See {IERC20-balanceOf}.
     */
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

    /**
     * @dev See {IERC20-allowance}.
     */
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
     * Emits an {Approval} event indicating the updated allowance. This is not
     * required by the EIP. See the note at the beginning of {ERC20}.
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
     * @dev Sets `value` as the allowance of `spender` over the `owner` s tokens.
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
     * `_spendAllowance` during the `transferFrom` operation set the flag to false. This saves gas by not emitting any
     * `Approval` event during `transferFrom` operations.
     *
     * Anyone who wishes to continue emitting `Approval` events on the`transferFrom` operation can force the flag to
     * true using the following override:
     * ```
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
     * @dev Updates `owner` s allowance for `spender` based on spent `value`.
     *
     * Does not update the allowance value in case of infinite allowance.
     * Revert if not enough allowance is available.
     *
     * Does not emit an {Approval} event.
     */
    function _spendAllowance(address owner, address spender, uint256 value) internal virtual {
        uint256 currentAllowance = allowance(owner, spender);
        if (currentAllowance != type(uint256).max) {
            if (currentAllowance < value) {
                revert ERC20InsufficientAllowance(spender, currentAllowance, value);
            }
            unchecked {
                _approve(owner, spender, currentAllowance - value, false);
            }
        }
    }
}

// ============================================================
// FILE: lib/openzeppelin-contracts/contracts/token/ERC20/extensions/IERC20Metadata.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (token/ERC20/extensions/IERC20Metadata.sol)

pragma solidity ^0.8.20;

import {IERC20} from "../IERC20.sol";

/**
 * @dev Interface for the optional metadata functions from the ERC20 standard.
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
// FILE: lib/openzeppelin-contracts/contracts/token/ERC20/IERC20.sol
// ============================================================

// SPDX-License-Identifier: MIT
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

// ============================================================
// FILE: lib/openzeppelin-contracts/contracts/utils/Context.sol
// ============================================================

// SPDX-License-Identifier: MIT
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

// ============================================================
// FILE: lib/openzeppelin-contracts/contracts/utils/introspection/ERC165.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (utils/introspection/ERC165.sol)

pragma solidity ^0.8.20;

import {IERC165} from "./IERC165.sol";

/**
 * @dev Implementation of the {IERC165} interface.
 *
 * Contracts that want to implement ERC165 should inherit from this contract and override {supportsInterface} to check
 * for the additional interface id that will be supported. For example:
 *
 * ```solidity
 * function supportsInterface(bytes4 interfaceId) public view virtual override returns (bool) {
 *     return interfaceId == type(MyInterface).interfaceId || super.supportsInterface(interfaceId);
 * }
 * ```
 */
abstract contract ERC165 is IERC165 {
    /**
     * @dev See {IERC165-supportsInterface}.
     */
    function supportsInterface(bytes4 interfaceId) public view virtual returns (bool) {
        return interfaceId == type(IERC165).interfaceId;
    }
}

// ============================================================
// FILE: lib/openzeppelin-contracts/contracts/utils/introspection/IERC165.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (utils/introspection/IERC165.sol)

pragma solidity ^0.8.20;

/**
 * @dev Interface of the ERC165 standard, as defined in the
 * https://eips.ethereum.org/EIPS/eip-165[EIP].
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
     * https://eips.ethereum.org/EIPS/eip-165#how-interfaces-are-identified[EIP section]
     * to learn more about how these ids are created.
     *
     * This function call must use less than 30 000 gas.
     */
    function supportsInterface(bytes4 interfaceId) external view returns (bool);
}

// ============================================================
// FILE: lib/openzeppelin-contracts/contracts/utils/ReentrancyGuard.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (utils/ReentrancyGuard.sol)

pragma solidity ^0.8.20;

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
    uint256 private constant NOT_ENTERED = 1;
    uint256 private constant ENTERED = 2;

    uint256 private _status;

    /**
     * @dev Unauthorized reentrant call.
     */
    error ReentrancyGuardReentrantCall();

    constructor() {
        _status = NOT_ENTERED;
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
        // On the first call to nonReentrant, _status will be NOT_ENTERED
        if (_status == ENTERED) {
            revert ReentrancyGuardReentrantCall();
        }

        // Any calls to nonReentrant after this point will fail
        _status = ENTERED;
    }

    function _nonReentrantAfter() private {
        // By storing the original value once again, a refund is triggered (see
        // https://eips.ethereum.org/EIPS/eip-2200)
        _status = NOT_ENTERED;
    }

    /**
     * @dev Returns true if the reentrancy guard is currently set to "entered", which indicates there is a
     * `nonReentrant` function in the call stack.
     */
    function _reentrancyGuardEntered() internal view returns (bool) {
        return _status == ENTERED;
    }
}

// ============================================================
// FILE: lib/v3-periphery/contracts/libraries/TransferHelper.sol
// ============================================================

// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity >=0.6.0;

import '@openzeppelin/contracts/token/ERC20/IERC20.sol';

library TransferHelper {
    /// @notice Transfers tokens from the targeted address to the given destination
    /// @notice Errors with 'STF' if transfer fails
    /// @param token The contract address of the token to be transferred
    /// @param from The originating address from which the tokens will be transferred
    /// @param to The destination address of the transfer
    /// @param value The amount to be transferred
    function safeTransferFrom(
        address token,
        address from,
        address to,
        uint256 value
    ) internal {
        (bool success, bytes memory data) =
            token.call(abi.encodeWithSelector(IERC20.transferFrom.selector, from, to, value));
        require(success && (data.length == 0 || abi.decode(data, (bool))), 'STF');
    }

    /// @notice Transfers tokens from msg.sender to a recipient
    /// @dev Errors with ST if transfer fails
    /// @param token The contract address of the token which will be transferred
    /// @param to The recipient of the transfer
    /// @param value The value of the transfer
    function safeTransfer(
        address token,
        address to,
        uint256 value
    ) internal {
        (bool success, bytes memory data) = token.call(abi.encodeWithSelector(IERC20.transfer.selector, to, value));
        require(success && (data.length == 0 || abi.decode(data, (bool))), 'ST');
    }

    /// @notice Approves the stipulated contract to spend the given allowance in the given token
    /// @dev Errors with 'SA' if transfer fails
    /// @param token The contract address of the token to be approved
    /// @param to The target of the approval
    /// @param value The amount of the given token the target will be allowed to spend
    function safeApprove(
        address token,
        address to,
        uint256 value
    ) internal {
        (bool success, bytes memory data) = token.call(abi.encodeWithSelector(IERC20.approve.selector, to, value));
        require(success && (data.length == 0 || abi.decode(data, (bool))), 'SA');
    }

    /// @notice Transfers ETH to the recipient address
    /// @dev Fails with `STE`
    /// @param to The destination of the transfer
    /// @param value The value to be transferred
    function safeTransferETH(address to, uint256 value) internal {
        (bool success, ) = to.call{value: value}(new bytes(0));
        require(success, 'STE');
    }
}

// ============================================================
// FILE: src/oracle/Oracle.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.26;

abstract contract Oracle {
    address public immutable token;

    string public name;

    constructor(address _token, string memory _name) {
        token = _token;
        name = _name;
    }

    function getPrice() external view virtual returns (uint256 price) {}
}

// ============================================================
// FILE: src/oracle/OracleConfigurator.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.26;

import {AccessControl} from "@openzeppelin/contracts/access/AccessControl.sol";

import {Oracle} from "./Oracle.sol";
import "../utils/Errors.sol";

contract OracleConfigurator is AccessControl {
    bytes32 public constant ORACLE_MANAGER_ROLE =
        keccak256("ORACLE_MANAGER_ROLE");

    mapping(address => address) public oracles;

    event OracleUpdated(address oldOracle, address newOracle);

    constructor() {
        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
    }

    function updateOracle(
        address _token,
        address _oracle
    ) external onlyRole(ORACLE_MANAGER_ROLE) {
        if (_token == address(0)) revert InvalidToken();
        if (_oracle == address(0)) revert InvalidOracle();

        emit OracleUpdated(oracles[_token], _oracle);

        oracles[_token] = _oracle;
    }

    function getPrice(address _token) external view returns (uint256 price) {
        address oracle = oracles[_token];

        if (_token == address(0) || oracle == address(0)) revert InvalidToken();

        price = Oracle(oracle).getPrice();
    }
}

// ============================================================
// FILE: src/token/Token.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.26;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {AccessControl} from "@openzeppelin/contracts/access/AccessControl.sol";

import "../utils/Errors.sol";

contract Token is ERC20, AccessControl {
    bytes32 public constant MINTER_ROLE = keccak256("MINTER_ROLE");
    bytes32 public constant BURNER_ROLE = keccak256("BURNER_ROLE");

    constructor(
        string memory _name,
        string memory _symbol
    ) ERC20(_name, _symbol) {
        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
    }

    function mint(address _to, uint256 _amount) external onlyRole(MINTER_ROLE) {
        _mint(_to, _amount);
    }

    function burn(
        address _from,
        uint256 _amount
    ) external onlyRole(BURNER_ROLE) {
        _burn(_from, _amount);
    }
}

// ============================================================
// FILE: src/utils/Errors.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.26;

error InvalidToken();

error TokenAlreadyAdd();

error InvalidOracle();

error NonEmptySupportedToken();

error InvalidDecimals();

error Paused();

error NotWhitelisted();

error NoFeeRecipient();

error InvalidFeeRate();

error InsufficientOutputAmount();

error ZeroAmount();

error ZeroAddress();

error InvalidArrayLength();

error ArrayIndexOutOfBounds();

error WrongRequester();

error InsufficientFunds();

error InvalidAmount();

error InvalidRequester();

error InvalidReceipt();

error NotZeroAddress();

error InValidCaller();

error WithdrawalJustUpdated();

// ============================================================
// FILE: src/vault/AssetVault.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.26;

import {AccessControl} from "@openzeppelin/contracts/access/AccessControl.sol";
import {ReentrancyGuard} from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {TransferHelper} from "@uniswap/v3-periphery/contracts/libraries/TransferHelper.sol";

import {OracleConfigurator} from "../oracle/OracleConfigurator.sol";
import {Token} from "../token/Token.sol";
import "../utils/Errors.sol";

contract AssetVault is AccessControl, ReentrancyGuard {
    bytes32 public constant SUPPORTED_TOKEN_OPERATION_ROLE =
        keccak256("SUPPORTED_TOKEN_OPERATION_ROLE");
    bytes32 public constant PAUSE_OPERATION_ROLE =
        keccak256("PAUSE_OPERATION_ROLE");
    bytes32 public constant WHITELIST_OPERATION_ROLE =
        keccak256("WHITELIST_OPERATION_ROLE");
    bytes32 public constant WITHDRAWAL_PROCESS_ROLE =
        keccak256("WITHDRAWAL_PROCESS_ROLE");
    bytes32 public constant ASSETS_MANAGEMENT_ROLE =
        keccak256("ASSETS_MANAGEMENT_ROLE");
    bytes32 public constant FEE_SETTER_ROLE = keccak256("FEE_SETTER_ROLE");
    bytes32 public constant MARKET_MAKER_ROLE = keccak256("MARKET_MAKER_ROLE");

    uint256 public constant D2 = 1e2;
    uint256 public constant D4 = 1e4;
    uint256 public constant D18 = 1e18;

    Token public immutable lpToken;
    OracleConfigurator public immutable oracleConfigurator;

    address[] public underlyingTokens;

    WithdrawalRequest[] public withdrawalRequests;

    mapping(address => bool) public isUnderlyingToken;
    mapping(address => uint8) public tokenDecimals;

    uint256 public depositFeeRate;
    uint256 public withdrawFeeRate;

    mapping(uint256 => uint256) public idToWithdrawalRequest;

    uint256 public withdrawalCounter;

    address public feeRecipient;

    mapping(address => bool) public depositPaused;
    mapping(address => bool) public withdrawPaused;

    mapping(address => bool) public whitelistMode;
    mapping(address => mapping(address => bool)) public depositWhitelist;

    struct WithdrawalRequest {
        address requester;
        address receiver;
        address requestToken;
        uint256 id;
        uint256 lpAmount;
        uint256 minReceiveAmount;
        uint256 timestamp;
    }
    event Deposit(
        address indexed account,
        address indexed token,
        uint256 tokenAmount,
        uint256 lpAmount
    );
    event Deposit(
        address indexed account,
        address[] tokens,
        uint256[] tokenAmounts,
        uint256 lpAmount
    );
    event WithdrawalRequested(
        address indexed requester,
        address indexed receiver,
        address indexed requestToken,
        uint256 id,
        uint256 lpAmount,
        uint256 minReceiveAmount
    );
    event WithdrawalCancelled(
        address indexed requester,
        address indexed requestToken,
        uint256 id,
        uint256 lpAmount
    );
    event WithdrawalProcessed(
        address indexed requester,
        address indexed receiver,
        address indexed requestToken,
        uint256 lpAmount,
        uint256 finalizedAmount
    );
    event WithdrawFromVault(
        address indexed curator,
        address indexed token,
        uint256 amount
    );
    event RepayToVault(
        address indexed curator,
        address indexed token,
        uint256 amount
    );
    event TokenAdded(address token);
    event TokenRemoved(address token);
    event SetDepositPause(address token, bool paused);
    event SetWithdrawPause(address token, bool paused);
    event SetWhitelistMode(address token, bool whitelistMode);
    event SetWhitelist(address token, address user, bool allowed);
    event SetWithdrawFeeRate(uint256 rate);
    event SetDepositFeeRate(uint256 rate);
    event SetFeeRecipient(address recipient);
    event FeeCharged(address recipient, uint256 amount);

    constructor(address _lpToken, address _oracleConfigurator) {
        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
        lpToken = Token(_lpToken);
        oracleConfigurator = OracleConfigurator(_oracleConfigurator);

        if (oracleConfigurator.oracles(address(lpToken)) == address(0))
            revert InvalidOracle();
    }

    function deposit(
        address _token,
        uint256 _amount,
        uint256 _minLpAmount
    ) external returns (uint256 mintAmount) {
        if (!isUnderlyingToken[_token]) revert InvalidToken();
        if (depositPaused[_token]) revert Paused();
        if (_amount == 0) revert ZeroAmount();
        if (whitelistMode[_token] && !depositWhitelist[_token][msg.sender])
            revert NotWhitelisted();

        TransferHelper.safeTransferFrom(
            _token,
            msg.sender,
            address(this),
            _amount
        );

        uint256 lpPrice = oracleConfigurator.getPrice(address(lpToken));
        uint256 underlyingPrice = oracleConfigurator.getPrice(_token);

        mintAmount =
            (_amount * 10 ** (18 - tokenDecimals[_token]) * underlyingPrice) /
            lpPrice;

        uint256 feeRate = depositFeeRate;
        address recipient = feeRecipient;
        if (feeRate > 0) {
            uint256 fee = (mintAmount * feeRate) / D4;
            lpToken.mint(recipient, fee);

            emit FeeCharged(recipient, fee);
            mintAmount = mintAmount - fee;
        }

        if (mintAmount < _minLpAmount) revert InsufficientOutputAmount();

        lpToken.mint(msg.sender, mintAmount);

        emit Deposit(msg.sender, _token, _amount, mintAmount);
    }

    function depositMultiple(
        address[] memory _tokens,
        uint256[] memory _amounts,
        uint256 _minLpAmount
    ) external returns (uint256 totalMintAmount) {
        uint256 length = _tokens.length;
        if (length == 0 || _amounts.length != length)
            revert InvalidArrayLength();

        uint256 lpPrice = oracleConfigurator.getPrice(address(lpToken));

        uint256 i;
        for (i; i < length; i++) {
            address token = _tokens[i];
            if (!isUnderlyingToken[token]) revert InvalidToken();
            if (depositPaused[token]) revert Paused();
            if (whitelistMode[token] && !depositWhitelist[token][msg.sender])
                revert NotWhitelisted();

            uint256 amount = _amounts[i];
            if (amount == 0) revert ZeroAmount();

            TransferHelper.safeTransferFrom(
                token,
                msg.sender,
                address(this),
                amount
            );

            uint256 underlyingPrice = oracleConfigurator.getPrice(token);

            uint256 mintAmount = (amount *
                10 ** (18 - tokenDecimals[token]) *
                underlyingPrice) / lpPrice;
            totalMintAmount += mintAmount;
        }

        uint256 feeRate = depositFeeRate;
        address recipient = feeRecipient;
        if (feeRate > 0) {
            uint256 fee = (totalMintAmount * feeRate) / D4;
            lpToken.mint(recipient, fee);

            emit FeeCharged(recipient, fee);
            totalMintAmount = totalMintAmount - fee;
        }

        if (totalMintAmount < _minLpAmount) revert InsufficientOutputAmount();

        lpToken.mint(msg.sender, totalMintAmount);

        emit Deposit(msg.sender, _tokens, _amounts, totalMintAmount);
    }

    function requestWithdraw(
        address _requestToken,
        address _receiver,
        uint256 _lpAmount,
        uint256 _minReceiveAmount
    ) external onlyRole(MARKET_MAKER_ROLE) returns (uint256 id) {
        if (_receiver == address(0)) revert ZeroAddress();
        if (_lpAmount == 0) revert ZeroAmount();
        if (!isUnderlyingToken[_requestToken]) revert InvalidToken();
        if (withdrawPaused[_requestToken]) revert Paused();

        TransferHelper.safeTransferFrom(
            address(lpToken),
            msg.sender,
            address(this),
            _lpAmount
        );

        withdrawalRequests.push(
            WithdrawalRequest({
                requester: msg.sender,
                receiver: _receiver,
                requestToken: _requestToken,
                id: withdrawalCounter,
                lpAmount: _lpAmount,
                minReceiveAmount: _minReceiveAmount,
                timestamp: block.timestamp
            })
        );
        id = withdrawalCounter;
        withdrawalCounter = withdrawalCounter + 1;
        idToWithdrawalRequest[id] = withdrawalRequests.length - 1;

        emit WithdrawalRequested(
            msg.sender,
            _receiver,
            _requestToken,
            id,
            _lpAmount,
            _minReceiveAmount
        );
    }

    function cancelWithdrawal(uint256 _id) external {
        uint256 index = idToWithdrawalRequest[_id];
        uint256 length = withdrawalRequests.length;
        if (index >= length || _id >= withdrawalCounter)
            revert ArrayIndexOutOfBounds();

        WithdrawalRequest memory withdrawalRequest = withdrawalRequests[index];
        address requester = withdrawalRequest.requester;
        if (msg.sender != requester) revert WrongRequester();

        idToWithdrawalRequest[_id] = type(uint256).max;
        idToWithdrawalRequest[withdrawalRequests[length - 1].id] = index;
        withdrawalRequests[index] = withdrawalRequests[length - 1];
        withdrawalRequests.pop();

        uint256 lpAmount = withdrawalRequest.lpAmount;

        TransferHelper.safeTransfer(address(lpToken), requester, lpAmount);

        emit WithdrawalCancelled(
            requester,
            withdrawalRequest.requestToken,
            _id,
            lpAmount
        );
    }

    function processWithdrawal(
        uint256 _id
    )
        external
        nonReentrant
        onlyRole(WITHDRAWAL_PROCESS_ROLE)
        returns (
            address requestToken,
            uint256 finalizedAmount,
            uint256 lpAmount
        )
    {
        uint256 index = idToWithdrawalRequest[_id];
        uint256 length = withdrawalRequests.length;
        if (index >= length || _id >= withdrawalCounter)
            revert ArrayIndexOutOfBounds();

        WithdrawalRequest memory withdrawalRequest = withdrawalRequests[index];
        if (_id != withdrawalRequest.id) revert InvalidReceipt();

        uint256 lpPrice = oracleConfigurator.getPrice(address(lpToken));

        (requestToken, finalizedAmount, lpAmount) = _finalizeWithdraw(
            withdrawalRequest,
            lpPrice,
            withdrawFeeRate,
            feeRecipient
        );

        idToWithdrawalRequest[withdrawalRequests[length - 1].id] = index;
        idToWithdrawalRequest[_id] = type(uint256).max;

        withdrawalRequests[index] = withdrawalRequests[length - 1];
        withdrawalRequests.pop();
    }

    function processAllWithdrawal()
        external
        nonReentrant
        onlyRole(WITHDRAWAL_PROCESS_ROLE)
    {
        uint256 length = withdrawalRequests.length;
        if (length == 0) revert InvalidArrayLength();

        uint256 lpPrice = oracleConfigurator.getPrice(address(lpToken));

        uint256 i;
        for (i; i < length; i++) {
            WithdrawalRequest memory withdrawalRequest = withdrawalRequests[i];

            _finalizeWithdraw(
                withdrawalRequest,
                lpPrice,
                withdrawFeeRate,
                feeRecipient
            );

            idToWithdrawalRequest[withdrawalRequest.id] = type(uint256).max;
        }

        delete withdrawalRequests;
    }

    function _finalizeWithdraw(
        WithdrawalRequest memory _withdrawalRequest,
        uint256 _lpPrice,
        uint256 _withdrawFeeRate,
        address _feeRecipient
    )
        internal
        returns (
            address requestToken,
            uint256 finalizedAmount,
            uint256 lpAmount
        )
    {
        uint256 minReceiveAmount = _withdrawalRequest.minReceiveAmount;
        requestToken = _withdrawalRequest.requestToken;

        lpAmount = _withdrawalRequest.lpAmount;

        uint256 fee;
        if (_withdrawFeeRate > 0) {
            fee = (lpAmount * _withdrawFeeRate) / D4;
            lpAmount = lpAmount - fee;
        }

        uint256 underlyingPrice = oracleConfigurator.getPrice(requestToken);

        finalizedAmount =
            (lpAmount * _lpPrice) /
            underlyingPrice /
            (10 ** (18 - tokenDecimals[requestToken]));

        address requester = _withdrawalRequest.requester;
        if (finalizedAmount >= minReceiveAmount) {
            address receiver = _withdrawalRequest.receiver;

            if (fee > 0) {
                TransferHelper.safeTransfer(
                    address(lpToken),
                    _feeRecipient,
                    fee
                );

                emit FeeCharged(_feeRecipient, fee);
            }

            lpToken.burn(address(this), lpAmount);

            TransferHelper.safeTransfer(
                address(requestToken),
                receiver,
                finalizedAmount
            );
            emit WithdrawalProcessed(
                requester,
                receiver,
                requestToken,
                lpAmount,
                finalizedAmount
            );
        } else {
            finalizedAmount = 0;

            TransferHelper.safeTransfer(
                address(lpToken),
                requester,
                _withdrawalRequest.lpAmount
            );
            emit WithdrawalCancelled(
                requester,
                requestToken,
                _withdrawalRequest.id,
                lpAmount
            );
        }
    }

    function withdrawFromVault(
        address[] memory _tokens,
        uint256[] memory _amounts
    ) external onlyRole(ASSETS_MANAGEMENT_ROLE) {
        uint256 length = _tokens.length;
        if (length == 0 || length != _amounts.length)
            revert InvalidArrayLength();

        uint256 i;
        for (i; i < length; i++) {
            address token = _tokens[i];
            uint256 amount = _amounts[i];
            TransferHelper.safeTransfer(token, msg.sender, amount);

            emit WithdrawFromVault(msg.sender, token, amount);
        }
    }

    function repayToVault(
        address[] memory _tokens,
        uint256[] memory _amounts
    ) external onlyRole(ASSETS_MANAGEMENT_ROLE) {
        uint256 length = _tokens.length;
        if (length == 0 || length != _amounts.length)
            revert InvalidArrayLength();

        uint256 i;
        for (i; i < length; i++) {
            address token = _tokens[i];
            uint256 amount = _amounts[i];
            TransferHelper.safeTransferFrom(
                token,
                msg.sender,
                address(this),
                amount
            );

            emit RepayToVault(msg.sender, token, amount);
        }
    }

    function addUnderlyingToken(
        address _token
    ) external onlyRole(SUPPORTED_TOKEN_OPERATION_ROLE) {
        if (_token == address(0) || _token == address(lpToken))
            revert InvalidToken();
        if (isUnderlyingToken[_token]) revert TokenAlreadyAdd();
        if (oracleConfigurator.oracles(_token) == address(0))
            revert InvalidOracle();

        uint8 decimals = ERC20(_token).decimals();
        if (decimals > 18) revert InvalidDecimals();

        isUnderlyingToken[_token] = true;
        tokenDecimals[_token] = decimals;
        underlyingTokens.push(_token);

        emit TokenAdded(_token);
    }

    function removeUnderlyingToken(
        address _token
    ) external onlyRole(SUPPORTED_TOKEN_OPERATION_ROLE) {
        if (!isUnderlyingToken[_token]) revert InvalidToken();
        if (ERC20(_token).balanceOf(address(this)) != 0)
            revert NonEmptySupportedToken();

        address[] memory tokens = underlyingTokens;

        uint256 length = tokens.length;
        uint256 i;
        for (i; i < length; i++) {
            if (tokens[i] == _token) {
                underlyingTokens[i] = underlyingTokens[length - 1];
                underlyingTokens.pop();
                break;
            }
        }
        isUnderlyingToken[_token] = false;
        delete tokenDecimals[_token];

        emit TokenRemoved(_token);
    }

    function setDepositPause(
        address _token,
        bool _pause
    ) external onlyRole(PAUSE_OPERATION_ROLE) {
        depositPaused[_token] = _pause;
        emit SetDepositPause(_token, _pause);
    }

    function setWithdrawPause(
        address _token,
        bool _pause
    ) external onlyRole(PAUSE_OPERATION_ROLE) {
        withdrawPaused[_token] = _pause;
        emit SetWithdrawPause(_token, _pause);
    }

    function setWhitelistMode(
        address _token,
        bool _applyWhitelist
    ) external onlyRole(WHITELIST_OPERATION_ROLE) {
        whitelistMode[_token] = _applyWhitelist;
        emit SetWhitelistMode(_token, _applyWhitelist);
    }

    function setWhitelistAddress(
        address _token,
        address _minter,
        bool _allowed
    ) external onlyRole(WHITELIST_OPERATION_ROLE) {
        depositWhitelist[_token][_minter] = _allowed;
        emit SetWhitelist(_token, _minter, _allowed);
    }

    function setWithdrawFeeRate(
        uint256 _rate
    ) external onlyRole(FEE_SETTER_ROLE) {
        if (_rate > 0 && feeRecipient == address(0)) revert NoFeeRecipient();
        if (_rate > D2) revert InvalidFeeRate();
        withdrawFeeRate = _rate;
        emit SetWithdrawFeeRate(_rate);
    }

    function setDepositFeeRate(
        uint256 _rate
    ) external onlyRole(FEE_SETTER_ROLE) {
        if (_rate > 0 && feeRecipient == address(0)) revert NoFeeRecipient();
        if (_rate > D2) revert InvalidFeeRate();
        depositFeeRate = _rate;
        emit SetDepositFeeRate(_rate);
    }

    function setFeeRecipient(
        address _address
    ) external onlyRole(FEE_SETTER_ROLE) {
        if (_address == address(0)) {
            depositFeeRate = 0;
            withdrawFeeRate = 0;

            emit SetDepositFeeRate(0);
            emit SetWithdrawFeeRate(0);
        }
        feeRecipient = _address;
        emit SetFeeRecipient(_address);
    }

    function getUnderlyings()
        external
        view
        returns (address[] memory underlyings)
    {
        return underlyingTokens;
    }

    function getRequestsLength() external view returns (uint256 length) {
        length = withdrawalRequests.length;
    }

    function getRequestWithdrawals()
        external
        view
        returns (WithdrawalRequest[] memory allWithdrawalRequests)
    {
        return withdrawalRequests;
    }
}
