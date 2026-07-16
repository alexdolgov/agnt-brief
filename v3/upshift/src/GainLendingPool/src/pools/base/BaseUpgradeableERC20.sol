// SPDX-License-Identifier: BUSL-1.1
pragma solidity >= 0.8.26;

import "../../../lib/open-zeppelin/token/ERC20/IERC20.sol";
import "../../../lib/open-zeppelin/proxy/utils/Initializable.sol";
import "../../core/BaseReentrancyGuard.sol";

/**
 * @title Tokenizes a liability per EIP-20.
 * @dev The liability is upgradeable per EIP-1967. Reentrancy checks in place.
 */
abstract contract BaseUpgradeableERC20 is IERC20, Initializable, BaseReentrancyGuard {
    /// @notice The decimal places of the token.
    uint8 public decimals;

    /// @notice The token symbol.
    string public symbol;

    /// @notice The descriptive name of the token.
    string public name;

    /// @dev The total circulating supply of the token
    uint256 internal _totalSupply;

    /// @dev The maximum circulating supply of the token, if any. Set to zero if there is no max limit.
    uint256 internal _maxSupply;

    /// @dev The balance of each holder
    mapping(address => uint256) internal _balances;

    /// @dev The allowance of each spender, which is set by each owner
    mapping(address => mapping(address => uint256)) internal _allowances;

    mapping(address => bool) public isBlacklisted;

    /**
     * @notice This event is triggered when the maximum limit for minting tokens is updated.
     * @param prevValue The previous limit
     * @param newValue The new limit
     */
    event OnMaxSupplyChanged(uint256 prevValue, uint256 newValue);

    // --------------------------------------------------------------------------
    // Modifiers
    // --------------------------------------------------------------------------

    // --------------------------------------------------------------------------
    // ERC-20 interface implementation
    // --------------------------------------------------------------------------
    /**
     * @notice Transfers a given amount tokens to the address specified.
     * @param to The address to transfer to.
     * @param value The amount to be transferred.
     * @return Returns true in case of success.
     */
    function transfer(address to, uint256 value) external override nonReentrant returns (bool) {
        return _executeErc20Transfer(msg.sender, to, value);
    }

    /**
     * @notice Transfer tokens from one address to another.
     * @dev Note that while this function emits an Approval event, this is not required as per the specification,
     * and other compliant implementations may not emit the event.
     * @param from address The address which you want to send tokens from
     * @param to address The address which you want to transfer to
     * @param value uint256 the amount of tokens to be transferred
     * @return Returns true in case of success.
     */
    function transferFrom(address from, address to, uint256 value) external override nonReentrant returns (bool) {
        uint256 currentAllowance = _allowances[from][msg.sender];
        require(currentAllowance >= value, "Amount exceeds allowance");

        require (_executeErc20Transfer(from, to, value), "Failed to execute transferFrom");

        _approveSpender(from, msg.sender, currentAllowance - value);

        return true;
    }

    /**
     * @notice Approve the passed address to spend the specified amount of tokens on behalf of msg.sender.
     * @dev Beware that changing an allowance with this method brings the risk that someone may use both the old
     * and the new allowance by unfortunate transaction ordering.
     * One possible solution to mitigate this race condition is to first reduce the spender's allowance to 0
     * and set the desired value afterwards: https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729
     * @param spender The address which will spend the funds.
     * @param value The amount of tokens to be spent.
     * @return Returns true in case of success.
     */
    function approve(address spender, uint256 value) external override nonReentrant returns (bool) {
        _approveSpender(msg.sender, spender, value);
        return true;
    }

    /**
     * @notice Gets the current version of the token.
     * @return uint8 The current version of the contract.
     */
    function getInitializedVersion() external view returns (uint8) {
        return _getInitializedVersion();
    }

    /**
     * @notice Gets the total circulating supply of tokens
     * @return uint256 The total circulating supply of tokens
     */
    function totalSupply() external view override returns (uint256) {
        return _totalSupply;
    }

    /**
     * @notice Gets the balance of the address specified.
     * @param addr The address to query the balance of.
     * @return uint256 An uint256 representing the amount owned by the passed address.
     */
    function balanceOf(address addr) external view override returns (uint256) {
        return _balances[addr];
    }

    /**
     * @notice Function to check the amount of tokens that an owner allowed to a spender.
     * @param ownerAddr address The address which owns the funds.
     * @param spenderAddr address The address which will spend the funds.
     * @return uint256 A uint256 specifying the amount of tokens still available for the spender.
     */
    function allowance(address ownerAddr, address spenderAddr) external view override returns (uint256) {
        return _allowances[ownerAddr][spenderAddr];
    }

    /**
     * @notice Gets the maximum token supply.
     * @return uint256 The maximum token supply.
     */
    function maxSupply() external view returns (uint256) {
        return _maxSupply;
    }

    // --------------------------------------------------------------------------
    // Implementation functions
    // --------------------------------------------------------------------------
    function _executeErc20Transfer(address from, address to, uint256 value) internal virtual returns (bool) {
        // Checks
        require(to != address(0), "non-zero address required");
        require(from != address(0), "non-zero sender required");
        require(value > 0, "Amount cannot be zero");
        require(_balances[from] >= value, "Amount exceeds sender balance");

        // State changes
        _balances[from] = _balances[from] - value;
        _balances[to] = _balances[to] + value;

        // Emit the event per ERC-20
        emit Transfer(from, to, value);

        return true;
    }

    function _approveSpender(address ownerAddr, address spender, uint256 value) internal virtual {
        require(spender != address(0), "non-zero spender required");
        require(ownerAddr != address(0), "non-zero owner required");

        // State changes
        _allowances[ownerAddr][spender] = value;

        // Emit the event
        emit Approval(ownerAddr, spender, value);
    }

    function _spendAllowance (address ownerAddr, address spenderAddr, uint256 amount) internal virtual {
        uint256 currentAllowance = _allowances[ownerAddr][spenderAddr];
        if (currentAllowance != type(uint256).max) {
            require(currentAllowance >= amount, "ERC20: insufficient allowance");
            _approveSpender(ownerAddr, spenderAddr, currentAllowance - amount);
        }
    }

    function _mintErc20(address addr, uint256 amount) internal virtual {
        require(amount > 0, "Invalid amount");
        require(_canMint(amount), "Max supply limit reached");

        _totalSupply += amount;
        _balances[addr] += amount;

        emit Transfer(address(0), addr, amount);
    }

    function _burnErc20(address addr, uint256 amount) internal virtual {
        require(amount > 0, "Invalid amount");
        require(_balances[addr] >= amount, "Burn amount exceeds balance");

        _balances[addr] -= amount;
        _totalSupply -= amount;

        emit Transfer(addr, address(0), amount);
    }

    function _setMaxSupply(uint256 newValue) internal virtual {
        require(newValue > 0 && newValue > _totalSupply, "Invalid max supply");

        uint256 prevValue = _maxSupply;
        _maxSupply = newValue;

        emit OnMaxSupplyChanged(prevValue, newValue);
    }

    // Indicates if we can issue/mint the number of tokens specified.
    function _canMint(uint256 amount) internal view virtual returns (bool) {        
        return _maxSupply - _totalSupply >= amount;
    }
}
