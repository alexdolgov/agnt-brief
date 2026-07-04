// SPDX-License-Identifier: MIT

pragma solidity >=0.8.24 <0.9.0;

import {Ownable} from "../abstract/Ownable.sol";
import {IBaseContracts} from "../interface/IBaseContracts.sol";
import {IERC20Token} from "../interface/IERC20Token.sol";

/**
 * @title StableOwner
 * @dev Manages stable token supply through controlled minting and burning operations
 * @notice Provides:
 * · Stable token supply management
 * · Authorized minting operations
 * · Controlled burning operations
 */
contract StableOwner is Ownable {
    /*//////////////////////////////////////////////////////////////
                            STORAGE
    //////////////////////////////////////////////////////////////*/
    /// @notice The managed stable token contract
    /// @dev Must implement IERC20Token interface with mint/burn capabilities
    IERC20Token public stable;
    /// @notice Base contracts registry
    IBaseContracts public immutable baseContracts;
    /// @notice Mapping of authorized minters/burners
    mapping(address => bool) public authorizedAddresses;
    /// @notice Flag to track if initialization has been done
    bool public initialized;
    /*//////////////////////////////////////////////////////////////
                            EVENTS
    //////////////////////////////////////////////////////////////*/
    /// @notice Emitted when stable token contract is updated
    /// @param stable New stable token contract address
    event StableSet(IERC20Token indexed stable);
    /// @notice Emitted when new tokens are minted
    /// @param account Recipient of minted tokens
    /// @param amount Amount of tokens minted
    event TokensMinted(address indexed account, uint256 amount);
    /// @notice Emitted when tokens are burned
    /// @param account Account tokens were burned from
    /// @param amount Amount of tokens burned
    event TokensBurned(address indexed account, uint256 amount);
    /// @notice Emitted when an address is authorized
    event AddressAuthorized(address indexed addr);
    /*//////////////////////////////////////////////////////////////
                            CUSTOM ERRORS
    //////////////////////////////////////////////////////////////*/
    /// @notice Thrown when a zero address is provided
    error ZeroAddress();
    /// @notice Thrown when caller is not authorized
    error NotAuthorized();
    /// @notice Thrown when contract is already initialized
    error AlreadyInitialized();
    /*//////////////////////////////////////////////////////////////
                            MODIFIERS
    //////////////////////////////////////////////////////////////*/
    modifier onlyAuthorized() {
        if (!authorizedAddresses[msg.sender]) {
            revert NotAuthorized();
        }
        _;
    }

    /*//////////////////////////////////////////////////////////////
                            CONSTRUCTOR
    //////////////////////////////////////////////////////////////*/
    /**
     * @notice Initializes the StableOwner contract
     * @param baseContracts_ Base contracts registry address
     */
    constructor(IBaseContracts baseContracts_) {
        _ensureNonzeroAddress(address(baseContracts_));
        baseContracts = baseContracts_;
    }

    /*//////////////////////////////////////////////////////////////
                        CONFIGURATION FUNCTIONS
    //////////////////////////////////////////////////////////////*/
    /**
     * @notice Updates the stable token contract address and sets authorized addresses
     * @dev Only callable by owner once
     *
     * Requirements:
     * · Caller must be owner
     * · Can only be called once
     *
     * Effects:
     * · Sets stable token
     * · Authorizes PSM and provider addresses
     * · Sets initialization flag
     */
    function initialize() external onlyOwner {
        if (initialized) {
            revert AlreadyInitialized();
        }
        // Set stable token
        stable = baseContracts.dusx();
        _ensureNonzeroAddress(address(stable));
        // Set authorized addresses
        address psmTether = address(baseContracts.psmTether());
        address psmCircle = address(baseContracts.psmCircle());
        address dusxProvider = address(baseContracts.dusxProvider());
        _ensureNonzeroAddress(psmTether);
        _ensureNonzeroAddress(psmCircle);
        _ensureNonzeroAddress(dusxProvider);
        authorizedAddresses[psmTether] = true;
        authorizedAddresses[psmCircle] = true;
        authorizedAddresses[dusxProvider] = true;
        emit AddressAuthorized(psmTether);
        emit AddressAuthorized(psmCircle);
        emit AddressAuthorized(dusxProvider);
        emit StableSet(stable);
        initialized = true;
    }

    /*//////////////////////////////////////////////////////////////
                        SUPPLY MANAGEMENT
    //////////////////////////////////////////////////////////////*/
    /**
     * @notice Creates new stable tokens
     * @param account Address to receive minted tokens
     * @param amount Number of tokens to mint
     * @dev Only callable by authorized addresses
     *
     * Requirements:
     * · Caller must be authorized
     * · account must not be zero address
     * · amount must be > 0
     * · Stable token contract must be set
     *
     * Effects:
     * · Increases total token supply
     * · Increases recipient balance
     * · Emits TokensMinted event
     */
    function mint(address account, uint256 amount) external onlyAuthorized {
        _ensureNonzeroAddress(account);
        stable.mint(account, amount);
        emit TokensMinted(account, amount);
    }

    /**
     * @notice Destroys existing stable tokens
     * @param account Address to burn tokens from
     * @param amount Number of tokens to burn
     * @dev Only callable by authorized addresses
     *
     * Requirements:
     * · Caller must be authorized
     * · account must not be zero address
     * · amount must be > 0
     * · account must have sufficient balance
     * · Stable token contract must be set
     *
     * Effects:
     * · Decreases total token supply
     * · Decreases account balance
     * · Emits TokensBurned event
     */
    function burn(address account, uint256 amount) external onlyAuthorized {
        _ensureNonzeroAddress(account);
        stable.burn(account, amount);
        emit TokensBurned(account, amount);
    }

    // Validates that an address is not zero
    function _ensureNonzeroAddress(address addr) private pure {
        if (addr == address(0)) {
            revert ZeroAddress();
        }
    }
}
