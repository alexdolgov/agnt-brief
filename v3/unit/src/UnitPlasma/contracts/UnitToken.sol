// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";

/**
 * @title IUnitToken
 * @notice Interface for Unit protocol HyperEVM tokens
 */
interface IUnitToken {
    function complianceAuthority() external view returns (address);
    function isBlacklisted(address account) external view returns (bool);
    function addToBlacklist(address account) external;
    function removeFromBlacklist(address account) external;
    function transferComplianceAuthority(address newAuthority) external;
}

/**
 * @title UnitToken
 * @notice Abstract base contract for all Unit protocol HyperEVM tokens
 * @dev Implements common functionality for compliance 
 */
abstract contract UnitToken is IUnitToken, UUPSUpgradeable, OwnableUpgradeable, ERC20Upgradeable {
    /// @notice The address of the HyperCore deployer
    address public constant HYPERCORE_DEPLOYER = 0xF036a5261406a394bd63Eb4dF49C464634a66155;

    /// @notice Storage slot for contract-specific data
    bytes32 private constant UNIT_STORAGE_SLOT = keccak256("unit.token.storage");

    /// @custom:storage-location erc7201:unit.token.storage
    struct UnitStorage {
        address complianceAuthority;
        mapping(address => bool) isBlacklisted;
    }

    // Events
    event AddedToBlacklist(address indexed account);
    event RemovedFromBlacklist(address indexed account);
    event ComplianceAuthorityTransferred(address indexed previousAuthority, address indexed newAuthority);

    // Abstract functions that must be implemented by derived contracts
    function tokenName() internal pure virtual returns (string memory);
    function tokenSymbol() internal pure virtual returns (string memory);
    function tokenSupply() internal pure virtual returns (uint256);
    function tokenDecimals() internal pure virtual returns (uint8);
    function systemAddress() internal pure virtual returns (address);

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    /**
     * @notice Initializes the token contract
     * @dev Called once during deployment
     */
    function initialize() public initializer {
        __Ownable_init(msg.sender);
        __UUPSUpgradeable_init();
        __ERC20_init(tokenName(), tokenSymbol());

        _mint(systemAddress(), tokenSupply() * 10 ** tokenDecimals());
        
        _getUnitStorage().complianceAuthority = msg.sender;
    }

    /**
     * @notice Returns the number of decimals for the token
     */
    function decimals() public pure override returns (uint8) {
        return tokenDecimals();
    }

    /**
     * @notice Modifier to restrict access to compliance authority
     */
    modifier onlyComplianceAuthority() {
        require(
            msg.sender == _getUnitStorage().complianceAuthority, 
            string(abi.encodePacked(tokenSymbol(), ": caller is not compliance authority"))
        );
        _;
    }

    /**
     * @notice Adds an address to the blacklist
     * @param account The address to blacklist
     */
    function addToBlacklist(address account) external onlyComplianceAuthority {
        UnitStorage storage $ = _getUnitStorage();
        $.isBlacklisted[account] = true;
        emit AddedToBlacklist(account);
    }

    /**
     * @notice Removes an address from the blacklist
     * @param account The address to remove from blacklist
     */
    function removeFromBlacklist(address account) external onlyComplianceAuthority {
        UnitStorage storage $ = _getUnitStorage();
        $.isBlacklisted[account] = false;
        emit RemovedFromBlacklist(account);
    }

    /**
     * @notice Transfers compliance authority to a new address
     * @param newAuthority The address of the new compliance authority
     */
    function transferComplianceAuthority(address newAuthority) external onlyOwner {
        require(
            newAuthority != address(0), 
            string(abi.encodePacked(tokenSymbol(), ": new compliance authority cannot be zero"))
        );
        
        UnitStorage storage $ = _getUnitStorage();
        address previousAuthority = $.complianceAuthority;
        $.complianceAuthority = newAuthority;
        emit ComplianceAuthorityTransferred(previousAuthority, newAuthority);
    }

    /**
     * @notice Returns the current compliance authority address
     */
    function complianceAuthority() public view returns (address) {
        return _getUnitStorage().complianceAuthority;
    }

    /**
     * @notice Checks if an address is blacklisted
     * @param account The address to check
     */
    function isBlacklisted(address account) public view returns (bool) {
        return _getUnitStorage().isBlacklisted[account];
    }

    /**
     * @notice Authorizes contract upgrades
     * @dev Only owner can authorize upgrades
     */
    function _authorizeUpgrade(address) internal override onlyOwner {}

    /**
     * @notice Hook that is called before any token transfer
     * @dev Prevents blacklisted addresses from transferring tokens
     */
    function _update(address from, address to, uint256 value) internal override {
        UnitStorage storage $ = _getUnitStorage();
        require(
            !$.isBlacklisted[from], 
            string(abi.encodePacked(tokenSymbol(), ": sender blacklisted"))
        );
        super._update(from, to, value);
    }

    /**
     * @notice Gets the storage slot for this contract
     * @dev Uses a standardized slot for all Unit tokens
     */
    function _getUnitStorage() private pure returns (UnitStorage storage $) {
        bytes32 slot = UNIT_STORAGE_SLOT;
        assembly {
            $.slot := slot
        }
    }
}