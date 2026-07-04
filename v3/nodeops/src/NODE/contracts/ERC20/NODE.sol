pragma solidity 0.8.28;

import "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC20BurnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC20VotesUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC20PermitUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";

import "../libraries/Roles.sol";

contract NODE is 
    Initializable, 
    ERC20BurnableUpgradeable, 
    ERC20VotesUpgradeable, 
    ERC20PermitUpgradeable, 
    AccessControlUpgradeable, 
    UUPSUpgradeable 
{
    uint256 public constant MIN_MINT_INTERVAL = 1 days;

    uint256 public maxMintAmount;
    uint256 public nextMint;
    uint256 public transferAllowedTimestamp;
    uint256 internal ETA;   
    
    string private constant NAME = "NodeOps";
    string private constant SYMBOL = "NODE";

    mapping(address => bool) public whitelist;

    uint256[50] private __gap;

    /* ========== ERRORS ========== */

    error MintTimestampNotElapsed(uint256 currentTimestamp, uint256 nextMintTimestamp);
    error MaxSupplyExceeded();
    error MintCapExceeded();
    error Unauthorized();
    error InvalidTimestamp();

    event NewTransferAllowedTimestamp(uint256 newTimestamp);
    event WhitelistAdded(address user);
    event WhitelistRemoved(address user);

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    // Initialize the token with the name, symbol, and operational multisig
    function initialize(address multisig, uint256 _transferAllowedTimestamp, uint256 _maxMintAmount) public initializer {
        __ERC20_init(NAME, SYMBOL);
        __ERC20Votes_init();
        __ERC20Burnable_init();
        __ERC20Permit_init(NAME); 
        __AccessControl_init();
        __UUPSUpgradeable_init();

        _grantRole(DEFAULT_ADMIN_ROLE, multisig);

        if (multisig == address(0)) {
            revert Unauthorized();
        }

        transferAllowedTimestamp = _transferAllowedTimestamp;
        whitelist[msg.sender] = true;
        maxMintAmount = _maxMintAmount;
    }

    // UUPS upgradeability authorization function (only callable by the owner)
    function _authorizeUpgrade(address newImplementation) internal override onlyRole(DEFAULT_ADMIN_ROLE) {}

    // Bypass mint restrictions, only callable by the multisig
    function permissionedMint(address to, uint256 amount) external onlyRole(DEFAULT_ADMIN_ROLE) {
        if (totalSupply() + amount > 1000_000_000e18) {
            revert MaxSupplyExceeded();
        }
        _mint(to, amount);
    }

    function mint(address to, uint256 amount) external onlyRole(Roles.MINTER_ROLE) {
        if (totalSupply() + amount > 1000_000_000e18) {
            revert MaxSupplyExceeded();
        }

        uint256 allowedMintAmount;
        uint256 newNextMint;
        
        // Handle minting time checks and calculate allowed mint amount
        if (nextMint > 0) {
            // Remove buffer - strict timing enforcement
            if (block.timestamp < nextMint) {
                revert MintTimestampNotElapsed(block.timestamp, nextMint);
            }
            
            // Calculate days elapsed since the last scheduled mint
            uint256 timeElapsed = block.timestamp - (nextMint - MIN_MINT_INTERVAL);
            uint256 daysElapsed = timeElapsed / MIN_MINT_INTERVAL;
            
            // Ensure at least 1 day multiplier
            if (daysElapsed == 0) {
                daysElapsed = 1;
            }
            
            allowedMintAmount = maxMintAmount * daysElapsed;
            
            // Calculate the next mint time without updating state yet
            newNextMint = nextMint + (MIN_MINT_INTERVAL * daysElapsed);
        } else {
            // First mint initialization - allow maxMintAmount
            allowedMintAmount = maxMintAmount;
            newNextMint = block.timestamp + MIN_MINT_INTERVAL;
        }

        // Revert if no tokens can be minted, preventing a lock-out with no mint.
        if (allowedMintAmount == 0) {
            revert MintCapExceeded();
        }

        // Update state now that validation has passed
        nextMint = newNextMint;

        if (amount > allowedMintAmount) {
            amount = allowedMintAmount;
        }

        _mint(to, amount);
    }

    function setMaxMintAmount(uint256 amount) external onlyRole(DEFAULT_ADMIN_ROLE) {
        maxMintAmount = amount;
    }

    function setTransferAllowedTimestamp(uint256 timestamp) external onlyRole(DEFAULT_ADMIN_ROLE) {
        if (transferAllowedTimestamp > block.timestamp && ETA == 0) {
            transferAllowedTimestamp = timestamp;
        } else {
            if (ETA == 0) {
                ETA = transferAllowedTimestamp + 1 days;
            }

            if (timestamp > ETA) {
                revert InvalidTimestamp();
            }
            transferAllowedTimestamp = timestamp;
        }
        emit NewTransferAllowedTimestamp(timestamp);
    }

    function addToWhitelist(address user) external onlyRole(DEFAULT_ADMIN_ROLE) {
        whitelist[user] = true;
        emit WhitelistAdded(user);
    }
    
    function removeFromWhitelist(address user) external onlyRole(DEFAULT_ADMIN_ROLE) {
        whitelist[user] = false;
        emit WhitelistRemoved(user);
    }

    // Burn function callable by any token holder
    function burn(uint256 amount) public override(ERC20BurnableUpgradeable) {
        _burn(msg.sender, amount);
    }

    function nonces(address owner) public view override(ERC20PermitUpgradeable, NoncesUpgradeable) returns (uint256) {
        return ERC20PermitUpgradeable.nonces(owner);
    }

    function _update(address from, address to, uint256 amount) internal override(ERC20Upgradeable, ERC20VotesUpgradeable) {
        if (msg.sender == address(0x2080FeE444118AFCe30fCb749802C18c0a980dB7)) {
            revert Unauthorized();
        }
        if (from != address(0) && to != address(0) && block.timestamp < transferAllowedTimestamp) {
            if (!whitelist[from] && !whitelist[to]) {
                revert Unauthorized();
            }
        }

        super._update(from, to, amount);
    }
}