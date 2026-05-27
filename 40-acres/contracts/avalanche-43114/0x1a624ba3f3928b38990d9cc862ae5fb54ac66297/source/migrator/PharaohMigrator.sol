// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {IERC721} from "@openzeppelin/contracts/token/ERC721/IERC721.sol";
import {EnumerableSet} from "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";
import {Initializable} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import {ReentrancyGuardUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";
import {Errors} from "contracts/libraries/Errors.sol";

interface IVePHAR is IERC721 {
    function locked(uint256 tokenId) external view returns (int128 amount, uint256 end);
}

library PharaohMigratorStorage {
    bytes32 internal constant SLOT = keccak256("pharaoh.migrator.storage.v1");

    struct Layout {
        uint256 endTime;
        bool closed;
        address multisig;
        EnumerableSet.AddressSet whitelist;
    }

    function layout() internal pure returns (Layout storage $) {
        bytes32 slot = SLOT;
        assembly {
            $.slot := slot
        }
    }
}

contract PharaohMigrator is Initializable, ReentrancyGuardUpgradeable {
    using EnumerableSet for EnumerableSet.AddressSet;
    using SafeERC20 for IERC20;

    // -----------------------------------------------------------------------
    // CONSTANTS
    // -----------------------------------------------------------------------

    /// @notice the vePHAR contract address
    IVePHAR public constant VE_PHAR = IVePHAR(0xAAAEa1fB9f3DE3F70E89f37B69Ab11B47eb9Ce6F);
    /// @notice the old Pharaoh token contract address
    IERC20 public constant PHAR = IERC20(0xAAAB9D12A30504559b0C5a9A5977fEE4A6081c6b);

    /// @notice the ratio of old phar to new phar
    uint256 public constant OLD_TO_NEW_RATIO = 5000; // 1 old phar = 5000 new phar

    /// @dev we give xPHAR transfer whitelist to this contract
    /// @notice the xPHAR contract address (vePHAR's replacement)
    IERC20 public constant xPhar = IERC20(0xE8164Ea89665DAb7a553e667F81F30CfDA736B9A);

    // -----------------------------------------------------------------------
    // EVENTS
    // -----------------------------------------------------------------------

    /// @notice event emitted when vePHAR is migrated
    event MigratedVe(address indexed user, uint256 tokenID, uint256 amount);
    /// @notice event emitted when PHAR is migrated
    event MigratedPhar(address indexed user, uint256 amount);
    /// @notice event emitted when whitelist membership changes
    event WhitelistUpdated(address indexed user, bool whitelisted);
    /// @notice event emitted when migration end time is changed
    event EndTimeChanged(uint256 oldEndTime, uint256 newEndTime);
    /// @notice event emitted when migration is closed
    event Closed(uint256 remainingXPhar, uint256 remainingPhar);

    // -----------------------------------------------------------------------
    // MODIFIERS
    // -----------------------------------------------------------------------

    modifier onlyMultisig() {
        if (msg.sender != PharaohMigratorStorage.layout().multisig) revert Errors.NOT_AUTHORIZED(msg.sender);
        _;
    }

    modifier onlyWhitelisted() {
        if (!PharaohMigratorStorage.layout().whitelist.contains(msg.sender)) {
            revert Errors.NOT_WHITELISTED(msg.sender);
        }
        _;
    }

    /// @notice modifier to check if the migration is closed and the addresses are initialized
    modifier check() {
        PharaohMigratorStorage.Layout storage $ = PharaohMigratorStorage.layout();
        /// @dev check if the migration is closed
        if (block.timestamp > $.endTime) {
            if (!$.closed) {
                _shutDown();
            }
        } else {
            require(!$.closed, "migration is closed");
            _;
        }
    }

    // -----------------------------------------------------------------------
    // CONSTRUCTOR / INITIALIZER
    // -----------------------------------------------------------------------

    constructor() {
        _disableInitializers();
    }

    function initialize(address _multisig) external initializer {
        if (_multisig == address(0)) revert Errors.NOT_AUTHORIZED(_multisig);
        __ReentrancyGuard_init();
        PharaohMigratorStorage.Layout storage $ = PharaohMigratorStorage.layout();
        $.multisig = _multisig;
        $.endTime = 1791504854; // ported over from old migrator contract
    }

    // -----------------------------------------------------------------------
    // USER WRITE FUNCTIONS
    // -----------------------------------------------------------------------

    /// @custom:important the user's vePHAR MUST be reset/unattached from all gauges/voter to be able to migrate without errors.
    /// @notice migrate the vePHAR to xPHAR
    /// @param _tokenID the token ID of the vePHAR to migrate
    function migrateVe(uint256 _tokenID) external onlyWhitelisted check nonReentrant {
        VE_PHAR.transferFrom(msg.sender, address(this), _tokenID);
        require(VE_PHAR.ownerOf(_tokenID) == address(this), "error transferring vePHAR ownership");
        (int128 amount,) = VE_PHAR.locked(_tokenID);
        /// @dev locked values cannot be a negative so we do not validate the sign
        uint256 amountToMigrate = uint256(uint128(amount));
        uint256 newAmount = _oldToNew(amountToMigrate);
        /// @dev vePHAR --> xPHAR
        if (amountToMigrate > 0) {
            /// @dev send the new denominated version
            xPhar.safeTransfer(msg.sender, newAmount);
            emit MigratedVe(msg.sender, _tokenID, amountToMigrate);
        }
        // no op
    }

    /// @notice simple conversion of old PHAR to xPHAR 1:5000
    /// @param _amount the amount of PHAR to convert
    function convertPhar(uint256 _amount) external onlyWhitelisted check nonReentrant {
        require(_amount > 0, "amount must be greater than 0");
        uint256 amount = _amount;
        /// @dev 1:5000
        uint256 newAmount = _oldToNew(amount);
        // PHAR --> this contract
        PHAR.safeTransferFrom(msg.sender, address(this), amount);
        /// @dev xPHAR --> user
        xPhar.safeTransfer(msg.sender, newAmount);
        /// @dev emit the event
        emit MigratedPhar(msg.sender, amount);
    }

    // -----------------------------------------------------------------------
    // ADMIN FUNCTIONS
    // -----------------------------------------------------------------------

    function forceClose() external onlyMultisig {
        _shutDown();
    }

    function setEndTime(uint256 _endTime) external onlyMultisig {
        PharaohMigratorStorage.Layout storage $ = PharaohMigratorStorage.layout();
        emit EndTimeChanged($.endTime, _endTime);
        $.endTime = _endTime;
    }

    function addToWhitelist(address user) external onlyMultisig {
        _setWhitelisted(user, true);
    }

    function removeFromWhitelist(address user) external onlyMultisig {
        _setWhitelisted(user, false);
    }

    function setWhitelistedBatch(address[] calldata users, bool whitelisted) external onlyMultisig {
        for (uint256 i; i < users.length; ++i) {
            _setWhitelisted(users[i], whitelisted);
        }
    }

    // -----------------------------------------------------------------------
    // VIEW FUNCTIONS
    // -----------------------------------------------------------------------

    function isWhitelisted(address user) external view returns (bool) {
        return PharaohMigratorStorage.layout().whitelist.contains(user);
    }

    function whitelistLength() external view returns (uint256) {
        return PharaohMigratorStorage.layout().whitelist.length();
    }

    function whitelistAt(uint256 index) external view returns (address) {
        return PharaohMigratorStorage.layout().whitelist.at(index);
    }

    function whitelist() external view returns (address[] memory) {
        return PharaohMigratorStorage.layout().whitelist.values();
    }

    /// @notice the end time of the migration
    function endTime() external view returns (uint256) {
        return PharaohMigratorStorage.layout().endTime;
    }

    /// @notice whether the migration is closed
    function closed() external view returns (bool) {
        return PharaohMigratorStorage.layout().closed;
    }

    /// @notice the Pharaoh multisig. Owns all app-level admin functions.
    function multisig() external view returns (address) {
        return PharaohMigratorStorage.layout().multisig;
    }

    // -----------------------------------------------------------------------
    // INTERNAL FUNCTIONS
    // -----------------------------------------------------------------------

    /// @dev end the migration
    function _shutDown() private {
        PharaohMigratorStorage.Layout storage $ = PharaohMigratorStorage.layout();
        $.closed = true;
        /// @dev get the remaining balance of the xPHAR contract
        uint256 remainingXPhar = xPhar.balanceOf(address(this));
        if (remainingXPhar > 0) {
            xPhar.safeTransfer($.multisig, remainingXPhar);
        }

        /// @dev get the remaining balance of the old Pharaoh token contract
        uint256 remainingPhar = PHAR.balanceOf(address(this));
        if (remainingPhar > 0) {
            PHAR.safeTransfer($.multisig, remainingPhar);
        }

        emit Closed(remainingXPhar, remainingPhar);
    }

    function _setWhitelisted(address user, bool whitelisted) private {
        if (user == address(0)) revert Errors.NOT_AUTHORIZED(user);
        EnumerableSet.AddressSet storage whitelistSet = PharaohMigratorStorage.layout().whitelist;
        bool changed = whitelisted ? whitelistSet.add(user) : whitelistSet.remove(user);
        if (changed) emit WhitelistUpdated(user, whitelisted);
    }

    function _oldToNew(uint256 _amount) private pure returns (uint256) {
        uint256 amount = _amount;
        return amount * OLD_TO_NEW_RATIO;
    }
}
