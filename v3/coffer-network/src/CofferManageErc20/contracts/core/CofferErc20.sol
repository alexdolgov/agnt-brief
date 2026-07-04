// SPDX-License-Identifier: MIT

pragma solidity =0.8.28;

import "./interfaces/ICofferErc20.sol";
import "./Ownerable.sol";
import "./Pausable.sol";
import "./Freezable.sol";

contract CofferErc20 is ICofferErc20, Ownerable, Pausable, Freezable {
    // ERC20 Info
    string public name = "Coffer Erc20";
    string public symbol = "CoErc20";
    uint8 public decimals = 18;

    // ERC20 Data
    mapping(address => uint256) internal balances;
    uint256 internal totalSupply_;
    mapping(address => mapping(address => uint256)) internal _allowed;

    constructor(
        string memory _name,
        string memory _symbol,
        uint8 _decimals,
        address _owner,
        address _pauser,
        address _freezer
    ) Ownerable(_owner) Pausable(_pauser) Freezable(_freezer) {
        name = _name;
        symbol = _symbol;
        decimals = _decimals;

        totalSupply_ = 0;
    }

    // View Functions

    /**
     * @dev Total number of tokens in existence
     */
    function totalSupply() external view returns (uint256) {
        return totalSupply_;
    }

    /**
     * @dev Gets the balance of the specified address.
     * @param _owner The address to query the the balance of.
     * @return An uint256 representing the amount owned by the passed address.
     */
    function balanceOf(address _owner) external view returns (uint256) {
        return balances[_owner];
    }

    /**
     * @dev Function to check the amount of tokens that an owner allowed to a spender.
     * @param _owner address The address which owns the funds.
     * @param _spender address The address which will spend the funds.
     * @return A uint256 specifying the amount of tokens still available for the spender.
     */
    function allowance(address _owner, address _spender) external view returns (uint256) {
        return _allowed[_owner][_spender];
    }

    // Erc20 Functions

    /**
     * @dev Transfer token for a specified address
     * @param _to The address to transfer to.
     * @param _value The amount to be transferred.
     */
    function transfer(address _to, uint256 _value) external whenNotPaused returns (bool) {
        require(_to != address(0), ErrorZeroAddress());
        require(!frozen[_to], ErrorAddressFrozen(_to));
        require(!frozen[msg.sender], ErrorAddressFrozen(msg.sender));
        require(_value <= balances[msg.sender], ErrorInsufficientBalance(msg.sender, balances[msg.sender], _value));

        balances[msg.sender] = balances[msg.sender] - _value;
        balances[_to] = balances[_to] + _value;
        emit Transfer(msg.sender, _to, _value);
        return true;
    }

    /**
     * @dev Transfer tokens from one address to another
     * @param _from address The address which you want to send tokens from
     * @param _to address The address which you want to transfer to
     * @param _value uint256 the amount of tokens to be transferred
     */
    function transferFrom(address _from, address _to, uint256 _value) external whenNotPaused returns (bool) {
        require(_to != address(0), ErrorZeroAddress());

        require(!frozen[_to], ErrorAddressFrozen(_to));
        require(!frozen[_from], ErrorAddressFrozen(_from));
        require(!frozen[msg.sender], ErrorAddressFrozen(msg.sender));

        require(_value <= balances[_from], ErrorInsufficientBalance(_from, balances[_from], _value));
        require(
            _value <= _allowed[_from][msg.sender],
            ErrorInsufficientAllowance(_from, msg.sender, _allowed[_from][msg.sender], _value)
        );

        balances[_from] = balances[_from] - _value;
        balances[_to] = balances[_to] + _value;
        _allowed[_from][msg.sender] = _allowed[_from][msg.sender] - _value;
        emit Transfer(_from, _to, _value);
        return true;
    }

    /**
     * @dev Approve the passed address to spend the specified amount of tokens on behalf of msg.sender.
     * Beware that changing an allowance with this method brings the risk that someone may use both the old
     * and the new allowance by unfortunate transaction ordering. One possible solution to mitigate this
     * race condition is to first reduce the spender's allowance to 0 and set the desired value afterwards:
     * https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729
     * @param _spender The address which will spend the funds.
     * @param _value The amount of tokens to be spent.
     */
    function approve(address _spender, uint256 _value) external whenNotPaused returns (bool) {
        _approve(msg.sender, _spender, _value);
        return true;
    }

    /**
     * @dev Approve an address to spend another addresses' tokens.
     * @param _owner The address that owns the tokens.
     * @param _spender The address that will spend the tokens.
     * @param _value The number of tokens that can be spent.
     */
    function _approve(address _owner, address _spender, uint256 _value) internal {
        require(!frozen[_spender], ErrorAddressFrozen(_spender));
        require(!frozen[_owner], ErrorAddressFrozen(_owner));

        require(_spender != address(0), ErrorZeroAddress());
        require(_owner != address(0), ErrorZeroAddress());

        _allowed[_owner][_spender] = _value;
        emit Approval(_owner, _spender, _value);
    }

    /**
     * @dev Increase the amount of tokens that an owner allowed to a spender.
     * approve should be called when _allowed[msg.sender][spender] == 0. To increment
     * allowed value is better to use this function to avoid 2 calls (and wait until
     * the first transaction is mined)
     * Emits an Approval event.
     * @param _spender The address which will spend the funds.
     * @param _value The amount of tokens to increase the allowance by.
     */
    function increaseAllowance(address _spender, uint256 _value) external whenNotPaused returns (bool) {
        require(_value > 0, ErrorZeroValue());
        _approve(msg.sender, _spender, _allowed[msg.sender][_spender] + _value);
        return true;
    }

    /**
     * @dev Decrease the amount of tokens that an owner allowed to a spender.
     * approve should be called when _allowed[msg.sender][spender] == 0. To decrement
     * allowed value is better to use this function to avoid 2 calls (and wait until
     * the first transaction is mined)
     * Emits an Approval event.
     * @param _spender The address which will spend the funds.
     * @param _value The amount of tokens to decrease the allowance by.
     */
    function decreaseAllowance(address _spender, uint256 _value) external whenNotPaused returns (bool) {
        require(_value > 0, ErrorZeroValue());
        _approve(msg.sender, _spender, _allowed[msg.sender][_spender] - _value);
        return true;
    }
}
