// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IERC20Metadata} from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import {Context} from "@openzeppelin/contracts/utils/Context.sol";
import {IERC20Errors} from "@openzeppelin/contracts/interfaces/draft-IERC6093.sol";

/**
 * @title xBIFKN314LP
 * @dev Implementation of the liquidity provider (LP) token for the BIFKN314 AMM pool.
 * This contract fully implements the IERC20 standard without inheritance conflicts.
 */
contract xBIFKN314LP is Context, IERC20, IERC20Metadata, IERC20Errors {
    // Token metadata
    string private _name;
    string private _symbol;
    uint8 public constant decimals = 18;

    // Total supply of the token
    uint256 private _totalSupply;

    // Balances and allowances
    mapping(address => uint256) private _balances;
    mapping(address => mapping(address => uint256)) private _allowances;

    // Immutable owner address (the AMM contract)
    address public immutable ammAddress;

    // Errors
    error Unauthorized(address sender);

    /**
     * @dev Modifier that allows only the owner (AMM) to call the function.
     */
    modifier onlyOwner() {
        if (msg.sender != ammAddress) revert Unauthorized(msg.sender);
        _;
    }

    /**
     * @dev Constructor to initialize the LP token.
     * @param tokenName Name of the token.
     * @param tokenSymbol Symbol of the token.
     */
    constructor(string memory tokenName, string memory tokenSymbol) {
        _name = tokenName;
        _symbol = tokenSymbol;
        ammAddress = msg.sender;
    }

    /**
     * @dev Returns the name of the token.
     */
    function name() public view override returns (string memory) {
        return _name;
    }

    /**
     * @dev Returns the symbol of the token.
     */
    function symbol() public view override returns (string memory) {
        return _symbol;
    }

    /**
     * @dev Returns the total supply of the token.
     */
    function totalSupply() public view override returns (uint256) {
        return _totalSupply;
    }

    /**
     * @dev Returns the balance of a specific account.
     * @param account The account whose balance will be queried.
     * @return The balance of the account.
     */
    function balanceOf(address account) public view override returns (uint256) {
        return _balances[account];
    }

    /**
     * @dev Returns the allowance of `spender` for `owner`.
     * @param owner The account that owns the tokens.
     * @param spender The account allowed to spend the tokens.
     * @return The remaining allowance for the spender.
     */
    function allowance(
        address owner,
        address spender
    ) public view override returns (uint256) {
        return _allowances[owner][spender];
    }

    /**
     * @dev Approves `spender` to transfer up to `amount` on behalf of `msg.sender`.
     * @param spender The account that is allowed to spend the tokens.
     * @param value The maximum amount the spender can transfer.
     * @return True if the approval was successful.
     */
    function approve(
        address spender,
        uint256 value
    ) external override returns (bool) {
        _approve(_msgSender(), spender, value);
        return true;
    }

    /**
     * @dev Transfers `amount` tokens from the caller to `recipient`.
     * @param to The recipient of the tokens.
     * @param value The number of tokens to transfer.
     * @return True if the transfer was successful.
     */
    function transfer(
        address to,
        uint256 value
    ) external override returns (bool) {
        _transfer(_msgSender(), to, value);
        return true;
    }

    /**
     * @dev Transfers `amount` tokens from `sender` to `recipient` using the allowance mechanism.
     * The allowance is reduced by `amount`.
     * @param from The account sending the tokens.
     * @param to The recipient of the tokens.
     * @param value The number of tokens to transfer.
     * @return True if the transfer was successful.
     */
    function transferFrom(
        address from,
        address to,
        uint256 value
    ) external override returns (bool) {
        _spendAllowance(from, _msgSender(), value);
        _transfer(from, to, value);
        return true;
    }

    /**
     * @dev Mints `amount` tokens to `account`.
     * Can only be called by the AMM contract.
     * @param account The account to receive the minted tokens.
     * @param amount The number of tokens to mint.
     */
    function mint(address account, uint256 amount) external onlyOwner {
        _mint(account, amount);
    }

    /**
     * @dev Burns a specific amount of tokens from the caller's balance.
     * @param value The amount of tokens to be burned.
     */
    function burn(uint256 value) public virtual {
        _burn(_msgSender(), value);
    }

    /**
     * @dev Burns a specific amount of tokens from the specified account.
     *
     * Requirements:
     * - The caller must have an allowance for `account`'s tokens of at least `value`.
     *
     * Emits a {Transfer} event with `from` set to `account`.
     */
    function burnFrom(address account, uint256 value) public virtual {
        _spendAllowance(account, _msgSender(), value);
        _burn(account, value);
    }

    /**
     * @dev Transfers `amount` tokens from `sender` to `recipient`.
     * @param sender The account sending the tokens.
     * @param recipient The account receiving the tokens.
     * @param amount The number of tokens to transfer.
     */
    function _transfer(
        address sender,
        address recipient,
        uint256 amount
    ) internal {
        if (sender == address(0)) revert ERC20InvalidSender(address(0));
        if (recipient == address(0)) revert ERC20InvalidReceiver(address(0));
        if (_balances[sender] < amount)
            revert ERC20InsufficientBalance(sender, amount, _balances[sender]);

        _balances[sender] -= amount;
        _balances[recipient] += amount;
        emit Transfer(sender, recipient, amount);
    }

    /**
     * @dev Mints `amount` tokens and assigns them to `account`.
     * @param account The account receiving the tokens.
     * @param amount The number of tokens to mint.
     */
    function _mint(address account, uint256 amount) internal {
        if (account == address(0)) revert ERC20InvalidReceiver(address(0));

        _totalSupply += amount;
        _balances[account] += amount;
        emit Transfer(address(0), account, amount);
    }

    /**
     * @dev Burns `amount` tokens from `account`.
     * @param account The account whose tokens are being burned.
     * @param amount The number of tokens to burn.
     */
    function _burn(address account, uint256 amount) internal {
        if (account == address(0)) revert ERC20InvalidSender(address(0));
        if (_balances[account] < amount)
            revert ERC20InsufficientBalance(
                account,
                amount,
                _balances[account]
            );

        _balances[account] -= amount;
        _totalSupply -= amount;
        emit Transfer(account, address(0), amount);
    }

    /**
     * @dev Updates `owner` s allowance for `spender` based on spent `amount`.
     * Does not update the allowance value in case of infinite allowance.
     * Revert if not enough allowance is available.
     * Does not emit an {Approval} event.
     */
    function _spendAllowance(
        address owner,
        address spender,
        uint256 amount
    ) internal {
        uint256 currentAllowance = _allowances[owner][spender];
        if (currentAllowance != type(uint256).max) {
            if (currentAllowance < amount)
                revert ERC20InsufficientAllowance(
                    spender,
                    amount,
                    currentAllowance
                );

            unchecked {
                _approve(owner, spender, currentAllowance - amount);
            }
        }
    }

    /**
     * @dev Sets `amount` as the allowance of `spender` for `owner`.
     * @param owner The account owning the tokens.
     * @param spender The account being allowed to spend the tokens.
     * @param amount The number of tokens allowed to be spent.
     */
    function _approve(address owner, address spender, uint256 amount) internal {
        if (owner == address(0)) revert ERC20InvalidApprover(address(0));
        if (spender == address(0)) revert ERC20InvalidSpender(address(0));

        _allowances[owner][spender] = amount;
        emit Approval(owner, spender, amount);
    }
}
