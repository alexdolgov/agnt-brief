pragma solidity ^0.8.28;

import {SuperstateTokenCore} from "src/SuperstateTokenCore.sol";
import {AccountingPausable} from "src/AccountingPausable.sol";
import {Allowlistable} from "src/Allowlistable.sol";
import {Permittable} from "src/Permittable.sol";
import {Bridgeable} from "src/Bridgeable.sol";
import {SafeERC20} from "openzeppelin-contracts/contracts/token/ERC20/utils/SafeERC20.sol";
import {IERC20} from "openzeppelin-contracts/contracts/token/ERC20/IERC20.sol";
import {SuperstateTokenCore} from "src/SuperstateTokenCore.sol";
import {IEquityTokenV1} from "src/interfaces/IEquityTokenV1.sol";
import {ERC20Upgradeable} from "openzeppelin-contracts-upgradeable/contracts/token/ERC20/ERC20Upgradeable.sol";
import {IERC20Upgradeable} from "openzeppelin-contracts-upgradeable/contracts/token/ERC20/IERC20Upgradeable.sol";

contract EquityToken is IEquityTokenV1, SuperstateTokenCore,
AccountingPausable, Allowlistable, Permittable, Bridgeable {
    using SafeERC20 for IERC20;

    // Constants defined for EquityToken
    string public constant VERSION = "6";
    uint8 private constant DECIMALS = 6;
    uint256 public constant FEE_DENOMINATOR = 10_000;
    uint256 public constant SUPERSTATE_TOKEN_PRECISION = 10 ** DECIMALS;

    // To be set at constructor, typically 7 * 10 ** DECIMALS
    uint256 public immutable MINIMUM_ACCEPTABLE_PRICE;

    constructor() {
        MINIMUM_ACCEPTABLE_PRICE = 7 * (10 ** uint256(DECIMALS));
        _disableInitializers();
    }

    /**
     * @notice Initialize the contract
     * @param _name The token name
     * @param _symbol The token symbol
     * @param _allowlist The allowlist contract address
     * @param _isPublicInstrument Whether this is a public instrument (true) or private instrument (false)
     * @dev All extension contracts are initialized here
     */
    function initialize(
        string calldata _name, 
        string calldata _symbol, 
        address _allowlist,
        bool _isPublicInstrument
    ) public initializer {
        __ERC20_init(_name, _symbol);
        __Pausable_init(); // doesnt really do anything, for consistency
        __Ownable2Step_init(); // initializes Owner to msg.sender
        __AccountingPausable_init(); // doesnt really do anything, for consistency
        __Allowlistable_init(_allowlist, _isPublicInstrument); // sets allowlist and instrument type
        __Permittable_init(); // doesnt really do anything, for consistency
        __Bridgeable_init(); // initializes support for chain_id "0" which represents book-entry
    }

    /**
     * @notice Sets a new allowlist contract address
     * @dev Only callable by authorized users (owner)
     * @dev _setAllowlist rejects zero address
     * @param _allowlist The address of the new allowlist contract
     */
    function setAllowlist(address _allowlist) external {
        _requireAuth();
        _setAllowlist(_allowlist);
    }

    /**
     * @notice Sets whether this token is a public instrument or a private instrument
     * @dev Only callable by authorized users (owner)
     * @param _isPublicInstrument True if public instrument, false if private
     */
    function setIsPublicInstrument(bool _isPublicInstrument) external {
        _requireAuth();
        _setIsPublicInstrument(_isPublicInstrument);
    }

    /**
     * @notice Checks if an address is allowed to interact with the token
     * @dev Calls the appropriate allowlist method based on isPublicInstrument flag
     * @param addr The address to check
     * @return bool True if the address is allowed, false otherwise
     */
    function isAllowed(address addr) public view returns (bool) {
        if (isPublicInstrument()) {
            return isAddressAllowedForPublicInstrument(addr);
        } else {
            // For private instruments, we need the symbol/public instrument identifier
            // We use the token symbol as the public instrument identifier
            return isAddressAllowedForPrivateInstrument(addr, symbol());
        }
    }

    /**
     * @notice Moves `amount` tokens from the caller's account to `dst`
     * @param dst Address to transfer tokens to
     * @param amount Amount of token to transfer
     * @return bool Whether the operation was successful
     */
    function transfer(address dst, uint256 amount)
    public
    override(ERC20Upgradeable, IERC20Upgradeable)
    returns (bool)
    {
        _requireNotPaused();
        _requireAllowed(msg.sender);

        if (dst == address(this)) {
            // Note that _burn performs _requireNotAccountingPaused()
            _burn(msg.sender, amount);
            emit Bridge(
                msg.sender,  // caller
                msg.sender,  // src (per the Bridge event definition)
                amount,
                address(0),
                string(new bytes(0)),
                0
            );
        } else {
            _requireAllowed(dst);
            _transfer(msg.sender, dst, amount);
        }

        return true;
    }

    /**
     * @notice Moves `amount` tokens from `src` to `dst` using the
     * allowance of the caller
     * @param src Address to transfer tokens from
     * @param dst Address to transfer tokens to
     * @param amount Amount of token to transfer
     * @return bool Whether the operation was successful
     */
    function transferFrom(address src, address dst, uint256 amount)
    public
    override(ERC20Upgradeable, IERC20Upgradeable)
    returns (bool)
    {
        _requireNotPaused();
        _requireAllowed(src);

        // First check if destination is the token contract
        if (dst == address(this)) {

            _spendAllowance(src, msg.sender, amount);
            // Burn tokens from src instead of msg.sender
            // Note that _burn performs _requireNotAccountingPaused()
            _burn(src, amount);

            
            // Emit the bridge event manually to ensure correct parameters
            emit Bridge(
                msg.sender,  // caller
                src,  // src (per the Bridge event definition)
                amount,
                address(0),
                string(new bytes(0)),
                0
            );
        } else {
            _requireAllowed(dst);
            _spendAllowance(src, msg.sender, amount);
            _transfer(src, dst, amount);
        }

        return true;
    }



    /**
     * @notice Mints new tokens to a specified address
     * @dev Only callable by authorized users (owner)
     * @dev Requires accounting not to be paused
     * @param dst The address that will receive the minted tokens
     * @param amount The amount of tokens to mint
     */
    function mint(address dst, uint256 amount) external {
        _requireAuth();
        _requireNotAccountingPaused();
        _mint({dst: dst, amount: amount});
    }

    /**
     * @notice Mint new tokens to many recipients
     * @dev Only callable by the admin
     * @param dsts Recipients of the minted tokens
     * @param amounts Amounts of tokens to mint
     */
    function bulkMint(address[] calldata dsts, uint256[] calldata amounts) external {
        _requireAuth();
        _requireNotAccountingPaused();
        if (dsts.length != amounts.length || dsts.length == 0) revert InvalidArgumentLengths();

        uint256 length = dsts.length;

        for (uint256 i = 0; i < length; ++i) {
            _mint({dst: dsts[i], amount: amounts[i]});
        }
    }

    /**
     * @notice Burn tokens from a given source address
     * @dev Only callable by the admin
     * @param src Source address from which tokens will be burned
     * @param amount Amount of tokens to burn
     * @notice This method is similar to bridgeToBookEntry(), but is only callable by the admin
     */
    function adminBurn(address src, uint256 amount) external {
        _requireAuth();

        _burn(src, amount);
        emit AdminBurn({burner: msg.sender, src: src, amount: amount});
    }

    function decimals() public pure override returns (uint8) {
        return DECIMALS;
    }

    function _version() internal pure override returns (string memory) {
        return VERSION;
    }

    function _name() internal view override returns (string memory) {
        return super.name();
    }

    function _approve(address owner, address spender, uint256 value) internal override (Permittable, ERC20Upgradeable) {
        super._approve(owner, spender, value);
    }

    //checks for accounting paused, performs for bridge and adminBurn
    //unable to emit Burn event as it does not have meaning in Superstate Token as standalone event
    function _burn(address from, uint256 amount) internal override(Bridgeable, ERC20Upgradeable) {
        _requireNotAccountingPaused();
        super._burn(from, amount);
    }

    //Performs checking for Allowlist and emits event after success
    function _mint(address dst, uint256 amount) internal override(ERC20Upgradeable) {
        _requireAllowed(dst);
        super._mint(dst, amount);
        emit Mint(msg.sender, dst, amount);
    }

    function _requireAuth() internal view override(AccountingPausable, Bridgeable) {
        if (msg.sender != owner()) revert Unauthorized();
    }

    function _requireNotAccountingPaused() internal view override(Bridgeable) {
        if (isAccountingPaused()) revert AccountingIsPaused();
        
    }

    function _requireAllowed(address addr) internal view override(Bridgeable) {
        if (!isAllowed(addr)) revert Unauthorized();
    }

    /**
     * @notice Invokes the {Pausable-_pause} internal function
     * @dev Can only be called by the admin
     */
    function pause() external override {
        _checkOwner();
        _requireNotPaused();
        _pause();
    }
    /**
     * @notice Invokes the {Pausable-_unpause} internal function
     * @dev Can only be called by the admin
     */
    function unpause() external override {
        _checkOwner();
        _requirePaused();
        _unpause();
    }

    function renounceOwnership() public virtual override {
        _checkOwner();
        revert RenounceOwnershipDisabled();
    }
}