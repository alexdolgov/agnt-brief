pragma solidity 0.6.10;

import "./SafeMath.sol";
import './ERC20.sol';
import './Ownable.sol';

/**
 * @title Bella
 * @dev Bella is an ownable, mintable, pausable and burnable ERC20 token
 */
contract Bella is ERC20, Ownable {
    using SafeMath for uint;

    string public constant name = "Bella";
    uint8 public constant decimals = 18;
    string public constant symbol = "BEL";
    uint public constant initalSupply = 1 * 10**8 * 10**uint(decimals); // 100 million
    
    bool public paused; // True when circulation is paused.

    mapping (address => bool) public freezed;
    mapping (address => bool) public minter;

    /**
     * @dev Throws if called by any account that is not a minter.
     */
    modifier onlyMinter() {
        require(minter[msg.sender], "Only minter can call");
        _;
    }

    /**
     * @dev Throws if called when the circulation is paused.
     */
    modifier whenNotPaused() {
        require(paused == false, "Cirlulation paused!");
        _;
    }

    /**
     * @dev The Bella constructor sets the original manager of the contract to the a
     * specified account, and send all the inital supply to it.
     * @param manager The address of the first manager of this contract.
     */
    constructor(address manager) public Ownable(manager) {
        _balances[manager] = initalSupply;
        _totalSupply = initalSupply;
    }

    /**
     * @dev Add an address to the minter list.
     * @param minterAddress The address to be added as a minter.
     */
    function addMinter(address minterAddress) public onlyOwner {
        minter[minterAddress] = true;
    }

    /**
     * @dev Remove an address from the minter list.
     * @param minterAddress The address to be removed from minters.
     */
    function removeMinter(address minterAddress) public onlyOwner {
        minter[minterAddress] = false;
    }

    /**
     * @dev Function to mint tokens by a minter
     * @param to The address that will receive the minted tokens.
     * @param value The amount of tokens to mint.
     * @return A boolean that indicates if the operation was successful.
     */
    function mint(address to, uint value) public onlyMinter returns (bool) {
        _mint(to, value);
        return true;
    }

    /**
     * @dev Function to pause all the circulation in the case of emergency.
     */
    function pause() public onlyOwner {
        paused = true;
    }

    /**
     * @dev Function to recover all the circulation from emergency.
     */
    function unpause() public onlyOwner {
        paused = false;
    }

    /**
     * @dev Function to freeze a specific user's circulation from emergency.
     * @param user The user to freeze
     */
    function freeze(address user) public onlyOwner {
        freezed[user] = true;
    }

    /**
     * @dev Function to recover a specific user's circulation from emergency.
     * @param user The user to recover
     */
    function unfreeze(address user) public onlyOwner {
        freezed[user] = false;
    }

    /**
     * @dev Burns a specific amount of tokens.
     * @param value The amount of token to be burned.
     */
    function burn(uint256 value) public {
        _burn(msg.sender, value);
    }

    /**
     * @dev Burns a specific amount of tokens from the target address and decrements allowance.
     * @param from address The account whose tokens will be burned.
     * @param value uint256 The amount of token to be burned.
     */
    function burnFrom(address from, uint256 value) public {
        _burnFrom(from, value);
    }

    function transfer(address to, uint256 value) public whenNotPaused override returns (bool) {
        require(!freezed[msg.sender] && !freezed[to], "target user is freezed");
        return super.transfer(to, value);
    }

    function transferFrom(address from, address to, uint256 value) public whenNotPaused override returns (bool) {
        require(!freezed[from] && !freezed[to], "target user is freezed");
        return super.transferFrom(from, to, value);
    }

    function approve(address spender, uint256 value) public whenNotPaused override returns (bool) {
        return super.approve(spender, value);
    }

    function increaseAllowance(address spender, uint addedValue) public whenNotPaused override returns (bool) {
        return super.increaseAllowance(spender, addedValue);
    }

    function decreaseAllowance(address spender, uint subtractedValue) public whenNotPaused override returns (bool) {
        return super.decreaseAllowance(spender, subtractedValue);
    }
}
