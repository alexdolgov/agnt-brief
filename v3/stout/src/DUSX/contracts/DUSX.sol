// SPDX-License-Identifier: MIT
/*
________    ____ ___  _____________  ___ 
\______ \  |    |   \/   _____/\   \/  / 
 |    |  \ |    |   /\_____  \  \     /  
 |    `   \|    |  / /        \ /     \  
/_______  /|______/ /_______  //___/\  \ 
        \/                  \/       \_/ 
*/

pragma solidity >=0.8.24 <0.9.0;

import {Context} from "./abstract/Context.sol";
import {Ownable} from "./abstract/Ownable.sol";
import {IBaseContracts} from "./interface/IBaseContracts.sol";
import {IERC20Errors} from "./interface/IERC20Errors.sol";
import {IERC20Token} from "./interface/IERC20Token.sol";
import {IStableOwner} from "./interface/IStableOwner.sol";

/**
 * @title DUSX Token
 * @dev Controlled-supply ERC20 token for protocol operations
 * @notice Core protocol token with supply management features
 */
contract DUSX is Context, Ownable, IERC20Token, IERC20Errors {
    /*//////////////////////////////////////////////////////////////
                            STORAGE
    //////////////////////////////////////////////////////////////*/
    /// @notice Token name
    string private _name;
    /// @notice Token symbol
    string private _symbol;
    /// @notice Number of decimals for token precision
    /// @dev Immutable for gas optimization
    uint8 private immutable _decimals;
    /// @notice Maximum token supply cap
    /// @dev Zero means unlimited supply
    uint256 private immutable _maxSupply;
    /// @notice Current total supply of tokens
    uint256 private _totalSupply;
    /// @notice Mapping of account balances
    /// @dev account => balance
    mapping(address => uint256) private _balances;
    /// @notice Mapping of account allowances
    /// @dev owner => spender => amount
    mapping(address => mapping(address spender => uint256)) private _allowances;
    /*//////////////////////////////////////////////////////////////
                            ERRORS
    //////////////////////////////////////////////////////////////*/
    /// @notice Error thrown when attempting to exceed maximum supply
    error MaxSupplyReached();
    /// @notice Error thrown when a zero address is provided
    error ZeroAddress();

    /*//////////////////////////////////////////////////////////////
                            CONSTRUCTOR
    //////////////////////////////////////////////////////////////*/
    /**
     * @notice Initializes token with metadata and ownership
     * @param name_ Name of the token
     * @param symbol_ Symbol of the token
     * @param decimals_ Number of decimals for token precision
     * @param maxSupply_ Maximum token supply (0 for unlimited)
     * @param baseContracts_ BaseContracts instance for protocol integration
     */
    constructor(
        string memory name_,
        string memory symbol_,
        uint8 decimals_,
        uint256 maxSupply_,
        IBaseContracts baseContracts_
    ) {
        _name = name_;
        _symbol = symbol_;
        _decimals = decimals_;
        _maxSupply = maxSupply_;
        IStableOwner stableOwner_ = baseContracts_.stableOwner();
        _ensureNonzeroAddress(address(stableOwner_));
        transferOwnership(address(stableOwner_));
    }

    /*//////////////////////////////////////////////////////////////
                        EXTERNAL FUNCTIONS
    //////////////////////////////////////////////////////////////*/
    /**
     * @notice Creates new tokens
     * @param to Address to receive the minted tokens
     * @param value Amount of tokens to mint
     */
    function mint(address to, uint256 value) external override onlyOwner {
        if (_maxSupply != 0) {
            if (totalSupply() + value > _maxSupply) {
                revert MaxSupplyReached();
            }
        }
        _mint(to, value);
    }

    /**
     * @notice Destroys existing tokens
     * @param from Address to burn tokens from
     * @param value Amount of tokens to burn
     */
    function burn(address from, uint256 value) external override onlyOwner {
        _burn(from, value);
    }

    /**
     * @notice Transfers tokens to a specified address
     * @param to Address to transfer to
     * @param value Amount to transfer
     * @return success Always true (reverts on failure)
     */
    function transfer(address to, uint256 value) external returns (bool) {
        address owner = _msgSender();
        _transfer(owner, to, value);
        return true;
    }

    /**
     * @notice Approves address to spend tokens
     * @param spender Address authorized to spend
     * @param value Amount authorized to spend
     * @return success Always true (reverts on failure)
     */
    function approve(address spender, uint256 value) external returns (bool) {
        address owner = _msgSender();
        _approve(owner, spender, value);
        return true;
    }

    /**
     * @notice Transfer tokens from one address to another
     * @param from Address to transfer from
     * @param to Address to transfer to
     * @param value Amount to transfer
     * @return success Always true (reverts on failure)
     *
     * Requirements:
     * · Valid sender and recipient addresses
     * · Sufficient allowance
     * · Sufficient balance
     *
     * Effects:
     * · Decreases allowance
     * · Updates balances
     * · Emits Transfer event
     */
    function transferFrom(
        address from,
        address to,
        uint256 value
    ) external returns (bool) {
        address spender = _msgSender();
        _spendAllowance(from, spender, value);
        _transfer(from, to, value);
        return true;
    }

    /*//////////////////////////////////////////////////////////////
                            VIEW FUNCTIONS
    //////////////////////////////////////////////////////////////*/
    /// @notice Returns the name of the token
    function name() external view returns (string memory) {
        return _name;
    }

    /// @notice Returns the symbol of the token
    function symbol() external view returns (string memory) {
        return _symbol;
    }

    /// @notice Returns the number of decimals for token precision
    function decimals() external view returns (uint8) {
        return _decimals;
    }

    /// @notice Returns the maximum supply cap of the token
    function maxSupply() external view returns (uint256) {
        return _maxSupply;
    }

    /// @notice Returns the balance of a specific account
    function balanceOf(address account) external view returns (uint256) {
        return _balances[account];
    }

    /// @notice Returns the current total supply of tokens
    function totalSupply() public view returns (uint256) {
        return _totalSupply;
    }

    /// @notice Returns the amount of tokens approved for a spender
    function allowance(
        address owner,
        address spender
    ) public view returns (uint256) {
        return _allowances[owner][spender];
    }

    /*//////////////////////////////////////////////////////////////
                        PRIVATE FUNCTIONS
    //////////////////////////////////////////////////////////////*/
    /**
     * @dev Performs token transfer between accounts
     * @param from Source address
     * @param to Destination address
     * @param value Amount to transfer
     *
     * Requirements:
     * · Valid addresses
     * · Sufficient balance
     */
    function _transfer(address from, address to, uint256 value) private {
        if (from == address(0)) revert ERC20InvalidSender(address(0));
        if (to == address(0)) revert ERC20InvalidReceiver(address(0));
        _update(from, to, value);
    }

    /**
     * @dev Updates balances for transfer operations
     * @param from Source address
     * @param to Destination address
     * @param value Amount to transfer
     *
     * Requirements:
     * · Valid addresses
     * · Sufficient balance
     *
     * Effects:
     * · Updates balances
     * · Updates total supply for mint/burn
     * · Emits Transfer event
     */
    function _update(address from, address to, uint256 value) private {
        if (from == address(0)) {
            _totalSupply += value;
        } else {
            uint256 fromBalance = _balances[from];
            if (fromBalance < value) {
                revert ERC20InsufficientBalance(from, fromBalance, value);
            }
            unchecked {
                _balances[from] = fromBalance - value;
            }
        }
        if (to == address(0)) {
            unchecked {
                _totalSupply -= value;
            }
        } else {
            unchecked {
                _balances[to] += value;
            }
        }
        emit Transfer(from, to, value);
    }

    /**
     * @dev Creates new tokens
     * @param account Recipient address
     * @param value Amount to mint
     *
     * Requirements:
     * · Valid recipient address
     */
    function _mint(address account, uint256 value) private {
        if (account == address(0)) revert ERC20InvalidReceiver(address(0));
        _update(address(0), account, value);
    }

    /**
     * @dev Destroys existing tokens
     * @param account Address to burn from
     * @param value Amount to burn
     *
     * Requirements:
     * · Valid source address
     * · Sufficient balance
     */
    function _burn(address account, uint256 value) private {
        if (account == address(0)) revert ERC20InvalidSender(address(0));
        _update(account, address(0), value);
    }

    /**
     * @dev Sets spending allowance
     * @param owner Token owner
     * @param spender Authorized spender
     * @param value Authorized amount
     */
    function _approve(address owner, address spender, uint256 value) private {
        _approve(owner, spender, value, true);
    }

    /**
     * @dev Sets spending allowance with event control
     * @param owner Token owner
     * @param spender Authorized spender
     * @param value Authorized amount
     * @param emitEvent Whether to emit Approval event
     *
     * Requirements:
     * · Valid addresses
     *
     * Effects:
     * · Updates allowance
     * · Optionally emits Approval event
     */
    function _approve(
        address owner,
        address spender,
        uint256 value,
        bool emitEvent
    ) private {
        if (owner == address(0)) revert ERC20InvalidApprover(address(0));
        if (spender == address(0)) revert ERC20InvalidSpender(address(0));
        _allowances[owner][spender] = value;
        if (emitEvent) {
            emit Approval(owner, spender, value);
        }
    }

    /**
     * @dev Deducts from spender's allowance
     * @param owner Token owner
     * @param spender Authorized spender
     * @param value Amount to deduct
     *
     * Requirements:
     * · Sufficient allowance
     *
     * Effects:
     * · Decreases allowance
     */
    function _spendAllowance(
        address owner,
        address spender,
        uint256 value
    ) private {
        uint256 currentAllowance = allowance(owner, spender);
        if (currentAllowance != type(uint256).max) {
            if (currentAllowance < value) {
                revert ERC20InsufficientAllowance(
                    spender,
                    currentAllowance,
                    value
                );
            }
            unchecked {
                _approve(owner, spender, currentAllowance - value, false);
            }
        }
    }

    // Validates that an address is not zero
    function _ensureNonzeroAddress(address addr) private pure {
        if (addr == address(0)) {
            revert ZeroAddress();
        }
    }
}
