// SPDX-License-Identifier: Unlicensed
pragma solidity 0.8.25;

import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "./modified_oz_imports/ERC20PausableUpgradeable.sol";
import "./custom_imports/Blacklistable.sol";

/**
 * @title TokenV2_1
 * @dev ERC20 Token with access control, blacklist, pausing, and minting functionalities.
 */
contract TokenV2_1 is OwnableUpgradeable, ERC20PausableUpgradeable, Blacklistable {
    string private _currency;
    address public masterMinter;
    address public pauser;
    uint8 internal _decimals;

    mapping(address => bool) internal minters;
    mapping(address => uint256) internal minterAllowed;

    event Mint(address indexed minter, address indexed to, uint256 amount);
    event Burn(address indexed burner, uint256 amount);
    event MinterConfigured(address indexed minter, uint256 minterAllowedAmount);
    event MinterRemoved(address indexed oldMinter);
    event MasterMinterChanged(address indexed newMasterMinter);
    event PauserChanged(address indexed newPauser);
    //v2 events
    event SymbolChanged(string newSymbol);
    event NameChanged(string newName);
    event CurrencyChanged(string newCurrency);

    function initialize(
        string calldata name_,
        string calldata symbol_,
        string calldata currency_,
        uint8 decimals_,
        address _masterMinter,
        address _pauser,
        address _blacklister,
        address owner_
    ) public initializer {
        require(_masterMinter != address(0), "MasterMinter cannot be zero address");
        require(_pauser != address(0), "Pauser cannot be zero address");
        require(_blacklister != address(0), "Blacklister cannot be zero address");
        require(owner_ != address(0), "Owner cannot be zero address");

        __ERC20_init_unchained(name_, symbol_);

        _currency = currency_;
        masterMinter = _masterMinter;
        pauser = _pauser;
        blacklister = _blacklister;
        _decimals = decimals_;
        _transferOwnership(owner_);
    }

    function decimals() public view override returns (uint8) {
        return _decimals;
    }

    function currency() public view returns (string memory) {
        return _currency;
    }

    /**
     * @dev Checks if account is a minter
     * @param account The address to check
     */
    function isMinter(address account) public view returns (bool) {
        return minters[account];
    }

    /**
     * @dev Modifier to restrict function to minters only.
     */
    modifier onlyMinters() {
        require(minters[msg.sender], "Caller is not a minter");
        _;
    }

    /**
     * @dev Modifier to restrict function to the master minter only.
     */
    modifier onlyMasterMinter() {
        require(msg.sender == masterMinter, "Caller is not the master minter");
        _;
    }

    /**
     * @dev Modifier to restrict function to the pauser only.
     */
    modifier onlyPauser() {
        require(msg.sender == pauser, "Caller is not the pauser");
        _;
    }

    /**
     * @dev Allows a minter to mint tokens to a specific address.
     * @param to The address that will receive the minted tokens.
     * @param amount The amount of tokens to mint.
     */
    function mint(address to, uint256 amount)
        public
        onlyMinters
        notBlacklisted(msg.sender)
        notBlacklisted(to)
    {
        require(amount > 0, "Amount must be greater than zero");
        uint256 allowedAmount = minterAllowed[msg.sender];
        require(amount <= allowedAmount, "Amount exceeds minter's allowance");

        minterAllowed[msg.sender] = allowedAmount - amount;
        _mint(to, amount);
        emit Mint(msg.sender, to, amount);
    }

    /**
     * @dev Allows the master minter to configure a new minter and its allowance.
     * @param minter The address of the minter.
     * @param allowedAmount The minting allowance for the minter.
     */
    function addMinter(address minter, uint256 allowedAmount) 
        public 
        onlyMasterMinter 
        whenNotPaused 
    {
        minters[minter] = true;
        minterAllowed[minter] = allowedAmount;
        emit MinterConfigured(minter, allowedAmount);
    }

    /**
     * @dev Allows the master minter to remove a minter.
     * @param minter The address of the minter to be removed.
     */
    function removeMinter(address minter) public onlyMasterMinter {
        minters[minter] = false;
        minterAllowed[minter] = 0;
        emit MinterRemoved(minter);
    }

    /**
     * @dev Get minter allowance for an account
     * @param minter The address of the minter
     */
    function minterAllowance(address minter) public view returns (uint256) {
        return minterAllowed[minter];
    }

    /**
     * @dev Allows a minter to burn a specified amount of their own tokens.
     * @param amount The amount of tokens to be burned.
     */
    function burn(uint256 amount)
        public
        onlyMinters
        notBlacklisted(msg.sender)
    {
        require(amount > 0, "Amount must be greater than zero");
        _burn(msg.sender, amount);
        emit Burn(msg.sender, amount);
    }

    /**
     * @dev Allows the owner to update the master minter address.
     * @param newMasterMinter The new master minter address.
     */
    function updateMasterMinter(address newMasterMinter) public onlyOwner {
        require(newMasterMinter != address(0), "MasterMinter cannot be zero address");
        masterMinter = newMasterMinter;
        emit MasterMinterChanged(newMasterMinter);
    }

    /**
     * @dev Pauses the contract, restricted to the pauser.
     */
    function pause() public onlyPauser whenNotPaused {
        _pause();
    }

    /**
     * @dev Unpauses the contract, restricted to the pauser.
     */
    function unpause() public onlyPauser whenPaused {
        _unpause();
    }

    /**
     * @dev Allows the owner to update the pauser address.
     * @param newPauser The new pauser address.
     */
    function updatePauser(address newPauser) public onlyOwner {
        require(newPauser != address(0), "Pauser cannot be zero address");
        pauser = newPauser;
        emit PauserChanged(newPauser);
    }

    /**
     * @dev Callback function required by Blacklistable for owner validation.
     */
    function onlyOwnerCallback() internal view override onlyOwner returns (bool) {
        return true;
    }

    /**
     * @dev Overrides the transfer function to include blacklist check.
     */
    function transfer(address to, uint256 amount) 
        public override 
        notBlacklisted(msg.sender) 
        notBlacklisted(to) 
        returns (bool) 
    {
        return super.transfer(to, amount);
    }

    /**
     * @dev Overrides the transferFrom function to include blacklist check.
     */
    function transferFrom(
        address from, 
        address to, 
        uint256 amount
    ) 
        public override 
        notBlacklisted(msg.sender) 
        notBlacklisted(from) 
        notBlacklisted(to) 
        returns (bool) 
    {
        return super.transferFrom(from, to, amount);
    }

    // Updated functions with Pausable and Blacklistable checks

    /**
     * @dev Overrides the approve function to include blacklist and pause check.
     */
    function approve(address spender, uint256 amount) 
        public 
        override 
        whenNotPaused 
        notBlacklisted(msg.sender) 
        notBlacklisted(spender) 
        returns (bool) 
    {
        return super.approve(spender, amount);
    }

    /**
     * @dev Overrides the increaseAllowance function to include blacklist and pause check.
     */
    function increaseAllowance(address spender, uint256 addedValue) 
        public 
        override 
        whenNotPaused 
        notBlacklisted(msg.sender) 
        notBlacklisted(spender) 
        returns (bool) 
    {
        return super.increaseAllowance(spender, addedValue);
    }

    /**
     * @dev Overrides the decreaseAllowance function to include blacklist and pause check.
     */
    function decreaseAllowance(address spender, uint256 subtractedValue) 
        public 
        override 
        whenNotPaused 
        notBlacklisted(msg.sender) 
        notBlacklisted(spender) 
        returns (bool) 
    {
        return super.decreaseAllowance(spender, subtractedValue);
    }

    // v2 functions

    /**
     * @dev Allows the owner to update the token symbol.
     * @param newSymbol The new symbol for the token.
     */
    function updateSymbol(string calldata newSymbol) public onlyOwner {
        _symbol = newSymbol;
        emit SymbolChanged(newSymbol);
    }

    /**
     * @dev Allows the owner to update the token name.
     * @param newName The new name for the token.
     */
    function updateName(string calldata newName) public onlyOwner {
        _name = newName;
        emit NameChanged(newName);
    }

    /**
     * @dev Allows the owner to update the currency of the token.
     * @param newCurrency The new currency for the token.
     */
    function updateCurrency(string calldata newCurrency) public onlyOwner {
        _currency = newCurrency;
        emit CurrencyChanged(newCurrency);
    }
}
