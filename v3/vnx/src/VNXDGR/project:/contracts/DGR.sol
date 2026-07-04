// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;
import "@openzeppelin/contracts/utils/math/SafeMath.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC20PausableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC20PermitUpgradeable.sol";
import "./irbac.sol";
import "./ITransferProvider.sol";

contract VNXDGR is Initializable, OwnableUpgradeable, ERC20PausableUpgradeable, ERC20PermitUpgradeable {
    uint8 public assetProtectionRole;
    mapping(address => bool) internal frozen;
    string public currency;
    
    // Supply control
    uint8 public supplyControllerRole;

    //  Role manager and transfer control
    ITransferProvider private transferProvider;
    IRBAC private rbacManager;
    address private feeRecipient;

    //  Fee data
    //  actual feeRate to be applied to the transaction value is calculated as feeRate / (10 ** feeDecimals)
    //  ex: a fee rate of 200 = (200 / 10 ** 6 ) = 0.02% of an oz of gold
    uint8 public constant feeDecimals = 6;
    uint256 private feeRate;

    /**
     * @dev Modifier to make a function callable only by an account that belongs to the Admin role.
     */
    modifier onlyAdmin() {
      require(isAdmin(), "Only Admin role");
      _;
    }

    /**
     * @dev Returns true if the caller is the admin role
     */
    function isAdmin() public view returns (bool) {
      return rbacManager.hasRole(msg.sender, 0);
    }

    /**
     * EVENTS
     */

    event TransferProviderChanged(address indexed oldProvider, address indexed newProvider);

    // Asset protection events
    event AddressFrozen(address indexed addr);
    event AddressUnfrozen(address indexed addr);
    event AssetProtectionRoleSet (
        uint8 indexed oldAssetProtectionRole,
        uint8 indexed newAssetProtectionRole
    );

    // Supply control events
    event SupplyIncreased(address indexed to, uint256 value);
    event SupplyDecreased(address indexed from, uint256 value);
    event SupplyControllerSet(
        uint8 indexed oldSupplyController,
        uint8 indexed newSupplyController
    );

    // Fee events
    event FeeCollected(address indexed from, address indexed to, uint256 value);
    event FeeRateSet(
        uint256 indexed oldFeeRate,
        uint256 indexed newFeeRate
    );
    event FeeRecipientSet(
        address indexed oldFeeRecipient,
        address indexed newFeeRecipient
    );

    /**
     * FUNCTIONALITY
     */

    /**
    * @dev Transfer the tokens to a specified address from msg.sender
    * @param _to The address to transfer to.
    * @param _value The amount to be transferred.
    */
    function transfer(address _to, uint256 _value) public whenNotPaused override returns (bool) {
        require(_to != msg.sender, "Useless");
        require(!frozen[_to] && !frozen[msg.sender], "Frozen");
        require(_value > 0, "VAL>0!");

        uint256 _cleanvalue = _transferFee(_msgSender(), _value);
        return super.transfer(_to, _cleanvalue);
    }

     /**
     * @dev Transfer the tokens from one address to another
     * @param _from address The address that you want to send the tokens from
     * @param _to address The address that you want to transfer to
     * @param _value uint256 the amount of tokens to be transferred
     */
    function transferFrom(address _from, address _to, uint256 _value) public whenNotPaused override returns (bool) {
        require(_to != _from, "Useless");
        require(!frozen[_to] && !frozen[_from] && !frozen[msg.sender], "Frozen");
        require(_value > 0, "VAL>0!");

        uint256 _cleanvalue = _transferFee(_from, _value);
        return super.transferFrom(_from, _to, _cleanvalue);
    }

    /**
     * @dev Approve the address _spender to spend the specified amount of tokens on behalf of msg.sender.
     * Beware that changing an allowance with this method brings the risk that someone may use both the old
     * and the new allowance by unfortunate transaction ordering. One possible solution to mitigate this
     * race condition is to first reduce the spender's allowance to 0 and set the desired value afterwards:
     * https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729
     * @param _spender The address that will be allowed to spend the tokens.
     * @param _value The amount of tokens to be spent.
     */
    function approve(address _spender, uint256 _value) public whenNotPaused override returns (bool) {
        require(!frozen[_spender] && !frozen[_msgSender()], "Frozen");
        return super.approve(_spender, _value);
    }

    /**
     * @dev The admin can transfer out any ERC20 tokens accidentally sent to this contract address
     * @param _token the address of the ERC20 token that needs to be transferred.
     * @param _to The address to transfer the tokens to.
     * @param _amount The amount of tokens to be transferred.
     */
    function transferAnyERC20Token(address _token, address _to, uint _amount) external onlyAdmin returns (bool success) {
        require(_token!=address(0), "_token=0!");

        return ERC20Upgradeable(_token).transfer(_to, _amount);
    }

    // Asset Protection functionality

    /**
     * @dev Sets a new asset protection role id.
     * @param _newAssetProtectionRole The new role id that is allowed to freeze/unfreeze addresses and seize their tokens.
     */
    function setAssetProtectionRole(uint8 _newAssetProtectionRole) external onlyAdmin {
        require(assetProtectionRole!=_newAssetProtectionRole, "Same AP!");

        emit AssetProtectionRoleSet(assetProtectionRole, _newAssetProtectionRole);
        assetProtectionRole = _newAssetProtectionRole;
    }

    /**
     * @dev Modifier to make a function callable only by an account that belongs to the Asset protection role.
     */
    modifier onlyAssetProtectionRole() {
        require(rbacManager.hasRole(_msgSender(), assetProtectionRole), "Only AP!");
        _;
    }

    /**
     * @dev Freezes address balance from being transferred.
     * @param _addr The new address to freeze.
     */
    function freeze(address _addr) external onlyAssetProtectionRole {
        require(!frozen[_addr], "Frozen");
		
        frozen[_addr] = true;
        emit AddressFrozen(_addr);
    }

    /**
     * @dev Unfreezes address balance allowing transfers.
     * @param _addr The new address to unfreeze.
     */
    function unfreeze(address _addr) external onlyAssetProtectionRole {
        require(frozen[_addr], "Unfrozen");
		
        frozen[_addr] = false;
        emit AddressUnfrozen(_addr);
    }

     /**
     * @dev Reclaim the DGRs from a specific frozen user address and send them to the wallet of the sender (asset protection and supply control address).
     * @param _addr The frozen address to reclaim the tokens from.
     */
    function reclaimTokensFromFrozenAddress(address _addr) external onlyAssetProtectionRole onlySupplyControllerRole {
        require(frozen[_addr], "!Frozen");
        super._transfer(_addr, _msgSender(), balanceOf(_addr));
    }

    /**
    * @dev Checks whether the address is currently frozen.
    * @param _addr The address to check.
    * @return A bool representing whether the given address is frozen.
    */
    function isFrozen(address _addr) external view returns (bool) {
        return frozen[_addr];
    }

    // Supply Control functionality

    /**
     * @dev Sets a new supply controller role id.
     * @param _newSupplyControllerRole The new role id that is allowed to burn/mint tokens to control supply.
     */
    function setSupplyControllerRole(uint8 _newSupplyControllerRole) external onlyAdmin {
		require(supplyControllerRole!=_newSupplyControllerRole, "Same SC!");
		
        emit SupplyControllerSet(supplyControllerRole, _newSupplyControllerRole);
        supplyControllerRole = _newSupplyControllerRole;
    }

    /**
     * @dev Modifier to make a function callable only by an account that belongs to the Supply controller role.
     */
    modifier onlySupplyControllerRole() {
        require(rbacManager.hasRole(_msgSender(), supplyControllerRole), "Only SC!");
        _;
    }

    /**
     * @dev Increases the total supply by minting the specified number of tokens to the specified wallet address
     * @param _wallet The address of tokens owner.
     * @param _value The number of tokens to add.
     * @return success A boolean that indicates if the operation was successful.
     */
    function increaseSupply(address _wallet, uint256 _value) external onlySupplyControllerRole returns (bool success) {
        require(_value > 0, "VAL>0!");

        emit SupplyIncreased(_wallet, _value);
        _mint(_wallet, _value);

        return true;
    }

    /**
     * @dev Destroys `_value` tokens from `_wallet`, deducting from the caller's allowance.
     * The caller must have allowance for ``_wallet``'s tokens of at least `_value`.
     * @param _wallet The address of tokens owner. 
     * @param _value The number of tokens to destroy.
     * @return success A boolean that indicates if the operation was successful.
     */
    function decreaseSupply(address _wallet, uint256 _value) external onlySupplyControllerRole returns (bool success) {
        require(_wallet != address(0), "WALLET=0!");
        require(_value > 0, "VAL>0!");
	
        if (_wallet != _msgSender()) {
          uint256 currentAllowance = allowance(_wallet, _msgSender());
          require(currentAllowance >= _value, "ERC20: burn > allowance");
          _approve(_wallet, _msgSender(), currentAllowance - _value);
        }
        _burn(_wallet, _value);

        emit SupplyDecreased(_wallet, _value);
        return true;
    }

    //  Transfer control functionality
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
     * @dev Initializes the contract by the proxy
     * @param _initTransferProvider The address of the transfers control contract.
     * @param _rbac The address of the role-based access control contract.
     * @param _supplyControllerRole The role id that is allowed to burn/mint tokens to control supply.
     * @param _assetProtectionRole The role id that is allowed to freeze/unfreeze addresses and seize their tokens.
     * @param _owner The owner of the contract (usually an instance of vnxManager).
     * @param _name The name of the token.
     * @param _symbol The short name of the token.
     * @param _currency token backed currency ex. gold.     
   */
   function initialize(address _initTransferProvider, 
                       address _rbac, 
                       uint8 _supplyControllerRole, 
                       uint8 _assetProtectionRole, 
                       address _owner, 
                       string memory _name, 
                       string memory _symbol, 
                       string memory _currency) public initializer
    {
        require(_initTransferProvider != address(0), "Init=0!");
        require(_rbac != address(0), "RBAC=0!");

        transferProvider = ITransferProvider(_initTransferProvider);
        rbacManager = IRBAC(_rbac);
        assetProtectionRole = _assetProtectionRole;
        supplyControllerRole = _supplyControllerRole;
        currency = _currency;
        __Ownable_init();
        __ERC20_init(_name, _symbol);
        __ERC20Pausable_init();
        __ERC20Permit_init(_name);
        transferOwnership(_owner);
    }

    function _beforeTokenTransfer(address from, address to, uint256 amount) internal override(ERC20Upgradeable, ERC20PausableUpgradeable)
    {
        require(transferProvider.approveTransfer(from, to, amount, _msgSender()), "Declined by TP!");
        super._beforeTokenTransfer(from, to, amount);
    }

    //  Fee calculation functionality
	
    /**
     * @dev Sets a new fee recipient address.
     * @param _newFeeRecipient The address to accumulate transfer fees for transfers.
     */
    function setFeeRecipient(address _newFeeRecipient) external onlyAdmin {
        require(_newFeeRecipient != address(0), "Fee recpient=0!");
        address _oldFeeRecipient = feeRecipient;
        feeRecipient = _newFeeRecipient;
        emit FeeRecipientSet(_oldFeeRecipient, feeRecipient);
    }

    /**
     * @dev Sets a new fee rate.
     * @param _newFeeRate The new fee rate to be applied to the calculation of transfer fees for transfers.
     */
    function setFeeRate(uint256 _newFeeRate) external onlyAdmin {
        require(_newFeeRate <= 10**uint256(feeDecimals), "Fee rate>100%");
        uint256 _oldFeeRate = feeRate;
        feeRate = _newFeeRate;
        emit FeeRateSet(_oldFeeRate, feeRate);
    }

    /**
    * @dev Calculates the fee for a given value
    * @param _value The amount to get the fee for.
    */
    function getFeeFor(uint256 _value) public view returns (uint256) {
        if (feeRate == 0) {
            return 0;
        }
        return _value * feeRate / (10**uint256(feeDecimals));
    }

    /**
    * @dev Transfers fee for given value and payee
    * @param _from  The payer of the fee
    * @param _value The amount to get the fee for.
    */
    function _transferFee(address _from, uint256 _value) internal returns (uint256 _remainder)
    {
        uint256 _fee = getFeeFor(_value);
        if (_fee > 0 && feeRecipient != address(0)) {
            _remainder = _value - _fee;
            super._transfer(_from, feeRecipient, _fee);
			
            emit FeeCollected(_from, feeRecipient, _fee);
        } else { // no fee deduction
            _remainder = _value;
        }
    }

    /**
    * @dev Pauses all transfer operations on token
    */
    function pause() external onlyAssetProtectionRole
    {
      _pause();
    }

    /**
    * @dev Unpauses all transfer operations on token
    */
    function unpause() external onlyAssetProtectionRole
    {
      _unpause();
    }

    /**
    * @dev Helper method for debug purposes
    */
    function getChainId() external view returns (uint256) {
        return block.chainid;
    }
}
