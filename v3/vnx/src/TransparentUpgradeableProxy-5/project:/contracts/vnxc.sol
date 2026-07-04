/**
 * VNXC Stablecoin Smart Contract
 * Author:    Wazen SHBAIR - wazen.shbair@vnx.io
 * Created:   30.10.2022
 * Updated:   05.07.2024
 * (c) Copyright by VNX S.A, Luxembourg.
 **/

/**
 * SPDX-License-Identifier: MIT
 */

pragma solidity ^0.8.0;
import { SafeMath } from "@openzeppelin/contracts/utils/math/SafeMath.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC20PausableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/IERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/draft-ERC20PermitUpgradeable.sol";
import "./irbac.sol";
import "./ITransferProvider.sol";


/**
 * @title VNXC - VNX Stablecoin smart contract
 * @dev ERC20 Token backed by fiat/crypto reserves
 */
contract VNXCToken is Initializable, OwnableUpgradeable, ERC20PausableUpgradeable, ERC20PermitUpgradeable {
    using SafeMath for uint256;

    string public currency;

    /**
     * @dev Role manager and transfer control
     */
    ITransferProvider private transferProvider;
    IRBAC private rbacManager;
    uint8 public assetProtectionRoleId;
    uint8 public minterRoleId;
    //uint8 public masterMinterRoleId;
    mapping(address => bool) internal frozenList;
    mapping(address => uint256) internal minterAllowed;
    event Mint(address indexed minter, address indexed to, uint256 amount);
    event Burn(address indexed burner, uint256 amount);
    event MinterConfigured(address indexed minter, uint256 minterAllowedAmount);
    event MinterRemoved(address indexed oldMinter);
    event AssetProtectionRoleSet (uint8 indexed oldAssetProtectionRole, uint8 indexed newAssetProtectionRole);
    event MinterRoleSet (uint8 indexed oldMinterRoleId, uint8 indexed newMinterRoleId);
    event TransferProviderChanged(address indexed oldProvider, address indexed newProvider);
    event AddressFrozen(address indexed _account);
    event AddressUnfrozen(address indexed _account);

    /**
     * @dev Modifier to make a function callable only by an account 
     * that belongs to the Admin role.
     */
    modifier onlyAdmin() {
        require(isAdmin(), "Only Admin role");
        _;
    }

    /**
     * @dev Throws if called by any account other than a minter
     */
    modifier onlyMinters() {
        require(isMinter(), "caller is not Minter");
        _;
    }

    /**
     * @dev throws if called by any account other than Asset Protector
     */
    modifier onlyAssetProtector() {
        require(isAssetProtector(), "caller is not Asset Protector");
        _;
    }

     /**
     * @dev Throws if argument account is blacklisted
     * @param _account The address to check
     */
    modifier notFrozen(address _account) {
        require(!frozenList[_account], "account is frozen");
        _;
    }

    /**
     * @dev Checks if account is frozen
     * @param _account The address to check
     */
    function isFrozen(address _account) external view returns (bool) {
        return frozenList[_account];
    }
    ////////////////////////////////////////////////////////////////////////////$

    /**
     * @dev Sets a new Minter role id.
     * @param _newMinterRoleId The new role id that is allowed to burn/mint 
     * tokens to control supply.
     */
    function setMinterRole(uint8 _newMinterRoleId) external onlyAdmin {
        require(_newMinterRoleId != minterRoleId, "Same minter role id!");
        emit MinterRoleSet(minterRoleId, _newMinterRoleId);
        minterRoleId = _newMinterRoleId;
    }

    /**
     * @dev Sets a new asset protection role id.
     * @param _newAssetProtectionRoleId The new role id that is allowed to 
     * freeze/unfreeze addresses and seize their tokens.
     */
    function setAssetProtectionRole(uint8 _newAssetProtectionRoleId) external onlyAdmin {
        require(assetProtectionRoleId != _newAssetProtectionRoleId, "Same Asset Protect Id!");
        emit AssetProtectionRoleSet(assetProtectionRoleId, _newAssetProtectionRoleId);
        assetProtectionRoleId = _newAssetProtectionRoleId;
    }

    /**
     * @dev Sets a new transfers control provider contract address.
     * @param _newProvider The address of the new transfers control contract.
     */
    function changeTransferProvider(address _newProvider) external onlyAdmin {
        require(address(transferProvider) != _newProvider, "Same provider!");
        require(_newProvider != address(0), "Provider=0!");
        emit TransferProviderChanged(address(transferProvider), _newProvider);
        transferProvider = ITransferProvider(_newProvider);
    }

    /**
     * @dev Returns true if the caller has the admin role
     */
    function isAdmin() public view returns (bool) {
        return rbacManager.hasRole(msg.sender, 0);
    }

    /**
     * @dev Returns true if the caller is the admin role
     */
    function isMinter() public view returns (bool) {
        return rbacManager.hasRole(msg.sender, minterRoleId);
    }

    /**
     * @dev Returns true if the caller has the Asset Protector role
     */
    function isAssetProtector() public view returns (bool) {
        return rbacManager.hasRole(msg.sender, assetProtectionRoleId);
    }

    /**
     * @dev Initialization function
     * @param _tokenName Token name
     * @param _tokenSymbol Token symbol 
     * @param _tokenCurrency Backed fiat currency  
     * @param _assetProtectionRoleId Asset protector role number 
     * @param _minterRoleId minter role number
     * @param _newOwner the owner of the smart contract 
     * @param _rbac the RBAC manger address 
     * @param _initTransferProvider Transfere provider address
     * @param _minterAllowance Owner minting allowance
     */
    function initialize( string memory _tokenName, string memory _tokenSymbol,
    string memory _tokenCurrency, uint8 _assetProtectionRoleId,
    uint8 _minterRoleId, address _newOwner, address _rbac,
    address _initTransferProvider, uint256 _minterAllowance ) public initializer {

        require(_initTransferProvider != address(0), "Init=0!");
        require(_newOwner != address(0), "newOwner=0!");
        require(_rbac != address(0), "rbacManager=0!");

        currency = _tokenCurrency;
        __ERC20_init(_tokenName, _tokenSymbol);
        __Ownable_init();
        __ERC20Pausable_init();
        __ERC20Permit_init(_tokenName);
        rbacManager = IRBAC(_rbac);
        assetProtectionRoleId = _assetProtectionRoleId;
        minterRoleId = _minterRoleId;
        transferProvider = ITransferProvider(_initTransferProvider);
        minterAllowed[_msgSender()] = _minterAllowance;
        transferOwnership(_newOwner);
    }

    /**
     * @dev A hook to be called before transfer/mint/burn tokens function call.
     * @param from  Payer's address
     * @param to    Payee's address
     * @param amount Transfer amount
     */
    function _beforeTokenTransfer( address from, address to, uint256 amount) 
                internal override(ERC20Upgradeable, ERC20PausableUpgradeable) {
        require(transferProvider.approveTransfer(from, to, amount, msg.sender), "Declined by TP!");
        super._beforeTokenTransfer(from, to, amount);
    }

    /**
     * @dev Function to mint tokens
     * @param _to The address that will receive the minted tokens.
     * @param _amount The amount of tokens to mint. Must be less than or equal
     * to the minterAllowance of the caller.
     * @return A boolean that indicates if the operation was successful.
     */
    function mint(address _to, uint256 _amount) external
        whenNotPaused
        onlyMinters
        notFrozen(msg.sender)
        notFrozen(_to)
        returns (bool)
    {
        require(_to != address(0), "mint to=0!");
        require(_amount > 0, "mint amount<0!");

        uint256 mintingAllowedAmount = minterAllowed[msg.sender];
        require(
            _amount <= mintingAllowedAmount,
            "mint_amount>minterAllowance!"
        );
        minterAllowed[msg.sender] = mintingAllowedAmount.sub(_amount);
        _mint(_to, _amount);
        emit Mint(msg.sender, _to, _amount);
        return true;
    }

    /**
     * @dev Get minter allowance for an account
     * @param minter The address of the minter
     */
    function minterAllowance(address minter) external view returns (uint256) {
        return minterAllowed[minter];
    }

    /**
     * @notice Transfer tokens by spending allowance 
     * @param from  Payer's address
     * @param to    Payee's address
     * @param value Transfer amount
     * @return True if successful
     */
    function transferFrom( address from, address to, uint256 value)
        public
        override
        whenNotPaused
        notFrozen(msg.sender)
        notFrozen(from)
        notFrozen(to)
        returns (bool)
    {
        return super.transferFrom(from, to, value);
    }

    /**
     * @notice Transfer the tokens to a specified address from msg.sender
     * @param to    The address to transfer to
     * @param value The amount to be transferred.
     * @return True if successful
     */
    function transfer(address to, uint256 value)
        public
        override
        whenNotPaused
        notFrozen(msg.sender)
        notFrozen(to)
        returns (bool)
    {
        return super.transfer(to, value);
    }

/**
     * @dev Function to add/update a new minter
     * @param minterAddress The address of the minter
     * @param minterAllowedAmount The minting amount allowed for the minter
     * @return True if the operation was successful.
     */
    function configureMinter(address minterAddress, uint256 minterAllowedAmount)
        external
        whenNotPaused
        onlyAdmin
        returns (bool)
    {
        minterAllowed[minterAddress] = minterAllowedAmount;
        emit MinterConfigured(minterAddress, minterAllowedAmount);
        return true;
    }

    /**
     * @dev Function to remove a minter
     * @param minterAddress The address of the minter to remove
     * @return True if the operation was successful.
     */
    function removeMinter(address minterAddress)
        external
        onlyAdmin
        returns (bool)
    {
        minterAllowed[minterAddress] = 0;
        emit MinterRemoved(minterAddress);
        return true;
    }

    /**
     * @dev allows a minter to burn some of its own tokens
     * Validates that caller is a minter and that sender is not frozen
     * amount is less than or equal to the minter's account balance
     * @param _amount uint256 the amount of tokens to be burned
     */
    function burn(address _from, uint256 _amount)
        external
        whenNotPaused
        onlyMinters
        notFrozen(msg.sender)
        notFrozen(_from)
    {
        require(_from != address(0), "burn from=0!");
        _burn(_from, _amount);
        emit Burn(_from, _amount);
    }

    /**
     * @notice Increase the allowance by a given increment
     * @param spender   Spender's address
     * @param increment Amount of increase in allowance
     * @return True if successful
     */
    function increaseAllowance(address spender, uint256 increment)
        public
        override
        whenNotPaused
        notFrozen(msg.sender)
        notFrozen(spender)
        returns (bool)
    {
        return super.increaseAllowance(spender, increment);
    }

    /**
     * @notice Decrease the allowance by a given decrement
     * @param spender   Spender's address
     * @param decrement Amount of decrease in allowance
     */
    function decreaseAllowance(address spender, uint256 decrement)
        public
        override
        whenNotPaused
        notFrozen(msg.sender)
        notFrozen(spender)
        returns (bool)

    {
        return super.decreaseAllowance(spender, decrement);
    }
     /**
     * @dev Freezes address balance from being transferred.
     * @param _addr The new address to freeze.
     */
    function freeze(address _addr) external onlyAssetProtector {
        require(!frozenList[_addr], "Frozen");
        frozenList[_addr] = true;
        emit AddressFrozen(_addr);
    }

    /**
     * @dev Unfreezes address balance allowing transfers.
     * @param _addr The new address to unfreeze.
     */
    function unFreeze(address _addr) external onlyAssetProtector {
        require(frozenList[_addr], "Unfrozen");
        frozenList[_addr] = false;
        emit AddressUnfrozen(_addr);
    }

     /**
     * @dev Reclaim the FRTs from a specific frozen user address and send them to the wallet of the sender (asset protection address).
     * @param _addr The frozen address to reclaim the tokens from.
     */
    function reclaimTokensFromFrozenAddress(address _addr) external onlyAssetProtector {
        require(frozenList[_addr], "!Frozen");
        super.transferFrom(_addr, _msgSender(), balanceOf(_addr));
    }

    /**
    * @dev Pauses all transfer operations on token
    */
    function pause() external onlyAssetProtector
    {
        _pause();
    }

    /**
    * @dev Unpauses all transfer operations on token
    */
    function unpause() external onlyAssetProtector
    {
        _unpause();
    }

    /**
     * @dev Approve the address _spender to spend the specified amount of tokens on behalf of msg.sender.
     * @param _spender The address that will be allowed to spend the tokens.
     * @param _value The amount of tokens to be spent.
     */
    function approve(address _spender, uint256 _value) public whenNotPaused override returns (bool) {
        require(!frozenList[_spender] && !frozenList[_msgSender()], "Frozen");
        return super.approve(_spender, _value);
    }

    /**
     * @dev Update the  currency
     * @param _newCurrencyName the new of new currency
     */
    function updateCurrencyName (string memory _newCurrencyName) public onlyAdmin
    {
        currency = _newCurrencyName;
    }
}
