// SPDX-License-Identifier: MIT

pragma solidity 0.8.30;

import "./ERC1404/IERC1404.sol";
import "./ERC1404/IERC1404Validators.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/AccessControl.sol";
import "@openzeppelin/contracts/security/Pausable.sol";

/**
 * @title Galaxy CLO 2025-1 LLC
 * @notice Extended ERC20 contract with additional functionality:
 * 1. Access Control
 * 2. Contract pausability
 * 3. Whitelisting
 * 4. Token timelocking
 * 5. Token minting
 * 6. Token burning
 * 7. Token revoking
 * 8. Transfer restrictions
 * @dev Inherits from OpenZeppelin contracts: ERC20, AccessControl, Pausable.
 * @dev Implements ERC1404 for transfer restrictions
 */
contract GalaxyToken1 is ERC20, AccessControl, Pausable, IERC1404, IERC1404Validators {
    
    // Tracks whether an address is whitelisted
    // data field can track any external field (like a hash of personal details)
    struct WhiteListItem {
        bool status;
        string data;
    }
    
    // Tracks the amount and release time of locked tokens for an address
    struct LockupItem {
        uint256 amount;
        uint256 releaseTime;
    }

    // Token Details
    string constant TOKEN_NAME = "Galaxy Arch CLO Token-https://app.box.com/s/d9dsmhsja5cla0d5zrtdaugn4j2a2ws3";
    string constant TOKEN_SYMBOL = "GACLO-1";

   
    /// @dev Determines whether minting was allowed at construction
    bool public immutable MINT_ALLOWED;

     /// @dev Determines whether burning was allowed at construction
    bool public immutable BURN_ALLOWED;

    /// @dev The only address where tokens can be burned from
    address public burnAddress;

    // Role identifiers for AccessControl
    // bytes32 public constant DEFAULT_ADMIN_ROLE = 0x00; // inherited from AccessControl
    bytes32 public constant MINTER_ROLE = keccak256("MINTER_ROLE");
    bytes32 public constant BURNER_ROLE = keccak256("BURNER_ROLE");
    bytes32 public constant REVOKER_ROLE = keccak256("REVOKER_ROLE");
    bytes32 public constant PAUSER_ROLE = keccak256("PAUSER_ROLE");
    bytes32 public constant WHITELISTER_ROLE = keccak256("WHITELISTER_ROLE");
    bytes32 public constant TIMELOCKER_ROLE = keccak256("TIMELOCKER_ROLE");

    /// @dev Whitelisting info per address
    mapping (address => WhiteListItem) public whitelists;

    /// @dev Timelocking info per address
    mapping (address => LockupItem) public lockups;

    // tracks the external contract where restriction logic is defined
    IERC1404Success private _transferRestrictions;

    /// Minting was not allowed at construction
    error MintingNotAllowed();
    /// Burning was not allowed at construction
    error BurningNotAllowed();
    /// Burn address is not set
    error BurnAddressNotSet();
    /// Address zero is not allowed for this operation
    error AddressZeroNotAllowed();
    /// Release time must be in the future
    error ReleaseTimeMustBeInFuture();
    /// Amount must be greater than zero
    error AmountMustBeGreaterThanZero();
    /// Transfer restrictions contract must be set
    error TransferRestrictionsContractMustBeSet();
    /// Not enough unlocked tokens to revoke
    error InsufficientUnlockedBalance();

    /// @dev Modifier to make a function callable only when a transfer is not restricted
    modifier notRestricted(address from, address to, uint256 value) {
        IERC1404Success _transferRestrictions_ = _transferRestrictions;
        if (address(_transferRestrictions_) == address(0)) revert TransferRestrictionsContractMustBeSet();
        uint8 restrictionCode = _transferRestrictions_.detectTransferRestriction(from, to, value);
        require(restrictionCode == _transferRestrictions_.getSuccessCode(),
            _transferRestrictions_.messageForTransferRestriction(restrictionCode));
        _;
    }

    /// @dev Modifier to make a function callable only when a transferFrom is not restricted
    modifier notRestrictedTransferFrom(address spender, address from, address to, uint256 value) {
        IERC1404Success _transferRestrictions_ = _transferRestrictions;
        if (address(_transferRestrictions_) == address(0)) revert TransferRestrictionsContractMustBeSet();
        uint8 restrictionCode = _transferRestrictions_.detectTransferFromRestriction(spender, from, to, value);
        require(restrictionCode == _transferRestrictions_.getSuccessCode(),
            _transferRestrictions_.messageForTransferRestriction(restrictionCode));
        _;
    }

    /// @dev Event for logging timelocking of tokens for an address
    event AccountLock(address address_, uint256 amount, uint256 releaseTime);

    /// @dev Event for logging the release of locked tokens for an address
    event AccountRelease(address address_, uint256 amountReleased);

    /// @dev Event for logging the updating of the transfer restrictions contract
    event RestrictionsUpdated(address newRestrictionsAddress, address updatedBy);

    /// @dev Event for logging the revoking of tokens from an address
    event Revoke(address indexed revoker, address indexed from, uint256 amount);

    /// @dev Event for logging the updating of a whitelist entry
    event WhitelistUpdate(address address_, bool status, string data);

    /// @dev Event for logging the updating of the burn address
    event burnAddressUpdated(address newBurnAddress, address updatedBy);

    /**
     * @dev The constructor sets up the basic properties of the token such as its name and symbol. It also assigns the
     * entire initial supply to the owner specified in the parameters. The owner is also set as the administrator with
     * all roles. The mint and burn allowance are set as per the parameters.
     * @param owner The address that will receive the initial supply of tokens, and be granted the default admin role
     * @param isMintAllowed Permission flag for token minting
     * @param isBurnAllowed Permission flag for token burning
     * @param initialSupply The amount of tokens to mint
     */
    constructor(address owner, bool isMintAllowed, bool isBurnAllowed, uint256 initialSupply)
        ERC20(TOKEN_NAME, TOKEN_SYMBOL)
    {
        MINT_ALLOWED = isMintAllowed;
        BURN_ALLOWED = isBurnAllowed;
        _mint(owner, initialSupply);
        _grantRole(DEFAULT_ADMIN_ROLE, owner); // set up the owner as the default admin of all roles
        grantRole(DEFAULT_ADMIN_ROLE, owner); // grant the owner all roles
    }

    /**
     * @dev Overrides the default AccessControl implementation to add whitelisting and granting of all roles to owners
     * of DEFAULT_ADMIN_ROLE
     */
    function grantRole(bytes32 role, address account) public virtual override onlyRole(getRoleAdmin(role)) {
        if (role == DEFAULT_ADMIN_ROLE) {
            _grantRole(MINTER_ROLE, account);
            _grantRole(BURNER_ROLE, account);
            _grantRole(REVOKER_ROLE, account);
            _grantRole(PAUSER_ROLE, account);
            _grantRole(WHITELISTER_ROLE, account);
            _grantRole(TIMELOCKER_ROLE, account);
            setWhitelist(account, true, "default admin");
        }
            _grantRole(role, account);
    }

    /**
     * @dev Overrides the default AccessControl implementation to add unwhitelisting and revoking of all roles to
     * owners of DEFAULT_ADMIN_ROLE
     */
    function revokeRole(bytes32 role, address account) public virtual override onlyRole(getRoleAdmin(role)) {
        if (role == DEFAULT_ADMIN_ROLE) {
            _revokeRole(MINTER_ROLE, account);
            _revokeRole(BURNER_ROLE, account);
            _revokeRole(REVOKER_ROLE, account);
            _revokeRole(PAUSER_ROLE, account);
            _revokeRole(WHITELISTER_ROLE, account);
            _revokeRole(TIMELOCKER_ROLE, account);
            setWhitelist(account, false, "default admin revoked");
        }
            _revokeRole(role, account);
    }

    /**
     * @notice Mints tokens to a specified address, only callable by a minter
     * @param to The address to mint tokens to
     * @param amount The amount of tokens to mint
     */
    function mint(address to, uint256 amount) external onlyRole(MINTER_ROLE) {
        if(!MINT_ALLOWED) revert MintingNotAllowed();
        _mint(to, amount);
    }

    /**
     * @notice Sets the burn address, which is the only address that tokens can be burnt from. Only callable by an admin
     * @param newBurnAddress The new burn address
     */
    function setBurnAddress(address newBurnAddress) external onlyRole(DEFAULT_ADMIN_ROLE) {
        burnAddress = newBurnAddress;
        emit burnAddressUpdated(newBurnAddress, msg.sender);
    }

    /**
     * @notice Burns tokens from the burn address. Only callable by a burner
     * @param amount The amount of tokens to burn
     */
    function burn(uint256 amount) external onlyRole(BURNER_ROLE) {
        if (!BURN_ALLOWED) revert BurningNotAllowed();
        _burn(burnAddress, amount);
    }

    /**
     * @notice Revokes tokens from an address and transfers them to the burn address. Only callable by a revoker
     * @param from The address to revoke tokens from
     * @param amount The amount of tokens to revoke
     */
    function revoke(address from, uint256 amount) external onlyRole(REVOKER_ROLE) {
        if (!checkTimelock(from, amount)) revert InsufficientUnlockedBalance();
        ERC20._transfer(from, burnAddress, amount);
        emit Revoke(msg.sender, from, amount);
    }
    
    /**
     * @notice Pauses all token transfers. Only callable by a pauser
     */
    function pause() external onlyRole(PAUSER_ROLE) {
        _pause();
    }

    /**
     * @notice Unpauses all token transfers. Only callable by a pauser
     */
    function unpause() external onlyRole(PAUSER_ROLE) {
        _unpause();
    }

    /**
     * @notice Set the whitelist status of an address. Only callable by a whitelister
     * @param address_ The address to set the whitelist status for
     * @param status The status to set the whitelist to
     * @param data A string with data about the whitelisted address
     */
    function setWhitelist(address address_, bool status, string memory data) public onlyRole(WHITELISTER_ROLE) {
        if (address_ == address(0)) revert AddressZeroNotAllowed();
        whitelists[address_] = WhiteListItem(status, data);
        emit WhitelistUpdate(address_, status, data);
    }

    /**
     * @notice Get the whitelist status of an address
     * @param address_ The address to check the whitelist status for
     * @return True if the address is whitelisted, false if not
     */
    function getWhitelistStatus(address address_) external view returns(bool){
        return whitelists[address_].status;
    }

    /**
     * @notice Get the whitelist data of an address
     * @param address_ The address to check the whitelist data for
     * @return The whitelist data string for the address
     */
    function getWhitelistData(address address_) external view returns(string memory){
        return whitelists[address_].data;
    }

    /**
     * @notice Determine if sender and receiver are both whitelisted
     * @param from The address sending tokens
     * @param to The address receiving tokens
     * @return True if both addresses are whitelisted, false if not
     */
    function checkWhitelists(address from, address to) external view returns (bool) {
        return whitelists[from].status && whitelists[to].status;
    }

    /**
     * @notice Determine if spender, sender and receiver are all whitelisted
     * @param spender The address performing the transfer
     * @param from The address sending tokens
     * @param to The address receiving tokens
     * @return True if all addresses are whitelisted, false if not
     */
    function checkWhitelists(address spender, address from, address to) external view returns (bool) {
        return whitelists[from].status && whitelists[to].status && whitelists[spender].status;
    }

    /**
     * @notice Lock tokens for a given address until a given time in the future. Only callable by a timelocker
     * @param address_ The address to lock tokens for
     * @param amount The amount of tokens to lock. If this is greater than the balance, the entire balance will be
     * locked
     * @param releaseTime The time in the future when the tokens will be released, in seconds since the epoch
     */
    function lock(address address_, uint256 amount, uint256 releaseTime) public onlyRole(TIMELOCKER_ROLE) {
        if (releaseTime <= block.timestamp) revert ReleaseTimeMustBeInFuture();
        if (address_ == address(0)) revert AddressZeroNotAllowed();
        if (amount == 0) revert AmountMustBeGreaterThanZero();

        // if the amount is greater than the balance, lock the entire balance
        uint256 balance = ERC20.balanceOf(address_);
        amount = amount <=  balance ? amount : balance;
        
        lockups[address_] = LockupItem(amount, releaseTime);
        emit AccountLock(address_, amount, releaseTime);
    }

    /**
     * @notice Release tokens for a given address. Only callable by a timelocker
     * @param address_ The address to release tokens for
     * @param amountToRelease The amount of tokens to release. If this is greater than the locked amount, the entire
     * locked amount will be released
     */
    function release(address address_, uint256 amountToRelease) external onlyRole(TIMELOCKER_ROLE) {
        if (address_ == address(0)) revert AddressZeroNotAllowed();

        uint256 lockedAmount = lockups[address_].amount;

        // nothing to release
        if(lockedAmount == 0 || amountToRelease == 0) {
            emit AccountRelease(address_, 0);
            return;
        }
        
        uint256 newLockedAmount;
        // if the amount to release is greater than the locked amount, release the entire locked amount
        unchecked { // lockedAmount - amountToRelease only in case lockedAmount > amountToRelease
            newLockedAmount = lockedAmount <= amountToRelease ? 0 : lockedAmount - amountToRelease;
        }

        // Update the lockup details (in case all was released, amount will be 0 and hence no lockup)
        lockups[address_].amount = newLockedAmount;

        unchecked { // newLockedAmount is either 0 or less than lockedAmount
          emit AccountRelease(address_, lockedAmount - newLockedAmount);   
        }
    }

    /**
     * @notice Determine if a user has sufficient unlocked tokens to transfer the requested amount
     * @dev This function is used by the transfer and transferFrom functions to determine if the transfer should be
     * allowed. It does not check if the user has sufficient tokens to transfer, only if they have sufficient unlocked
     * tokens. If the user does not have sufficient unlocked tokens, this function will return true but the transfer
     * will fail due to low balance.
     * @param address_ The address to check the timelock for
     * @param amount The amount to check if can be transferred
     * @return True if the user has sufficient unlocked tokens to transfer the requested amount, false if not
     */
    function checkTimelock(address address_, uint256 amount) public view returns (bool) {
        // get the address' token balance
        uint256 balance = balanceOf(address_);

        // if the user does not have enough tokens to send regardless of lock return true here
        // the failure will still fail but this should make it explicit that the transfer failure is not
        // due to locked tokens but because of too low token balance
        if (balance < amount) return true;

        // copy lockup data into memory
        LockupItem memory lockupItem = lockups[address_];

        // return true if the lock is expired
        if (block.timestamp > lockupItem.releaseTime) return true;

        // get the user's token balance that is not locked
        uint256 nonLockedAmount = balance - lockupItem.amount;

        // return true if the user has enough unlocked tokens to send the requested amount, false if not
        return amount <= nonLockedAmount;
    }
    
    /**
     * @notice Retrieve the timelock info for a given address
     * @param address_ The address to retrieve the lockup info for
     * @return The release time and amount of tokens locked
     */
    function getLockUpInfo(address address_) external view returns(uint256, uint256) {
        // copy lockup data into memory
        LockupItem memory lockupItem = lockups[address_];

        return (lockupItem.releaseTime, lockupItem.amount);
    }

    /**
     * @notice Update the transfer restriction contract. Only callable by an admin
     * @param newRestrictionsAddress The new transfer restriction contract address
     */
    function updateTransferRestrictions(address newRestrictionsAddress) external onlyRole(DEFAULT_ADMIN_ROLE) {
        _transferRestrictions = IERC1404Success(newRestrictionsAddress);
        emit RestrictionsUpdated(newRestrictionsAddress, msg.sender);
    }

    /**
     * @notice Return the address of the transfer restrictions contract
     * @return The address of the transfer restrictions contract
     */
    function getRestrictionsAddress() external view returns (address) {
        return address(_transferRestrictions);
    }

    /**
     * @notice Returns the transfer restriction code for a transfer with the given parameters.
     * If the function returns SUCCESS_CODE (0) then it should be allowed, otherwise it should be blocked.
     * @param from The address sending tokens
     * @param to The address receiving tokens
     * @param amount The amount of tokens to transfer
     * @return The restriction code, where 0 means success
     */
    function detectTransferRestriction(address from, address to, uint256 amount) external view returns (uint8) {
        // call detectTransferRestriction on the current transferRestrictions contract
        return _transferRestrictions.detectTransferRestriction(from, to, amount);
    }

    /**
     * @notice Returns the transfer restriction code for a transferFrom with the given parameters.
     * If the function returns SUCCESS_CODE (0) then it should be allowed.
     * @param spender The address initiating the transfer
     * @param from The address sending tokens
     * @param to The address receiving tokens
     * @param amount The amount of tokens to transfer
     * @return The restriction code, where 0 means success
     */
    function detectTransferFromRestriction(address spender, address from, address to, uint256 amount)
        external
        view
        returns (uint8)
    {
        // call detectTransferFromRestriction on the current transferRestrictions contract
        return _transferRestrictions.detectTransferFromRestriction(spender, from, to, amount);
    }

    /**
     * @notice Provides a human readable string for a transfer restriction code
     * @param restrictionCode The restriction code
     * @return The corresponding human readable string
     */
    function messageForTransferRestriction(uint8 restrictionCode) external view returns (string memory) {
        // call messageForTransferRestriction on the current transferRestrictions contract
        return _transferRestrictions.messageForTransferRestriction(restrictionCode);
    }

    /**
     * @notice Overrides the parent class token transfer function to enforce transfer restrictions. See {ERC20-transfer}
     * @param to The address to transfer tokens to
     * @param value The amount of tokens to transfer
     * @return success A boolean indicating whether the operation was successful
     */
    function transfer(address to, uint256 value)
        override public
        notRestricted(msg.sender, to, value)
        returns (bool success)
    {
        success = ERC20.transfer(to, value);
    }

    /**
     * @notice Overrides the parent class token transferFrom function to enforce transfer restrictions.
     * See {ERC20-transferFrom}
     * @param from The address to transfer tokens from
     * @param to The address to transfer tokens to
     * @param value The amount of tokens to transfer
     * @return success A boolean indicating whether the operation was successful
     */
    function transferFrom(address from, address to, uint256 value)
        override public
        notRestrictedTransferFrom(msg.sender, from, to, value)
        returns (bool success)
    {
        success = ERC20.transferFrom(from, to, value);
    }

    /**
     * @notice Indicates whether all transfers are paused. See {Pausable-paused}
     * @return True if transfers are paused, false otherwise
     */
    function paused() public view override(Pausable, IERC1404Validators) returns (bool) {
        return Pausable.paused();
    }

    /**
     * @notice Returns the number of decimals used for the token. See {ERC20-decimals}
     * @return The number of decimals used for the token
     */
    function decimals() public pure override(ERC20) returns (uint8) {
        return 6;
    }
}