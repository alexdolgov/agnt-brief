// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.22;

import {IMetaVaultWrapper} from "./interfaces/IMetaVaultWrapper.sol";
import {IERC7540, IERC7540Deposit, IERC7540Operator, IERC7540Redeem} from "./interfaces/I7540.sol";
import {IAmphor} from "./interfaces/IAmphor.sol";
import {IERC7575} from "./interfaces/IERC7575.sol";
import {AccessManagedUpgradeable} from "@openzeppelin/contracts-upgradeable/access/manager/AccessManagedUpgradeable.sol";
import {ReentrancyGuardUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";
import {Initializable} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import {OwnableUpgradeable} from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import {ERC4626Upgradeable} from "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC4626Upgradeable.sol";
import {IERC4626} from "@openzeppelin/contracts/interfaces/IERC4626.sol";
import {IERC20Metadata, IERC20} from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import {ERC20PausableUpgradeable} from "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC20PausableUpgradeable.sol";
import {ERC20Upgradeable} from "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {IERC165} from "@openzeppelin/contracts/utils/introspection/IERC165.sol";

/**
 * @title MetaVaultWrapper
 * @notice A wrapper contract for interacting with an underlying vault (e.g., Amphor).
 * This contract implements the IERC7540 and IMetaVaultWrapper interfaces.
 * It provides functionalities for deposit and redeem requests, as well as
 * conversion between shares and assets, while managing specific infrastrucure vault state.
 */

contract MetaVaultWrapper is
    Initializable,
    IMetaVaultWrapper,
    OwnableUpgradeable,
    ERC4626Upgradeable,
    ERC20PausableUpgradeable,
    ReentrancyGuardUpgradeable
{
    using SafeERC20 for IERC20;
    using Math for uint256;

    /* ---------------------------------------------------------- */
    /*                            WRAPPER STATE                    */
    /* ---------------------------------------------------------- */

    /// @custom:storage-location erc7201:metavault.storage.Common
    // Struct to hold wrapper state variables independent of the infra vault
    struct WrapperState {
        // Address of the underlying infrastructure vault
        address infraVault;
        // Address of the underlying asset token
        address underlying;
        // Mapping to track operator permissions for controllers
        mapping(address controller => mapping(address operator => bool)) isOperator;
        // Mapping to track blacklisted users
        mapping(address user => bool) blacklisted;
    }

    // keccak256(abi.encode(uint256(keccak256("spectra.storage.Wrapper")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 private constant SpectraWrapperStorageLocation =
        0x9f2ce3581e00a5f2a3e8507d8fe8424f0f0b6e6b01ed8c453b67ed8f268a8a00;

    // Function to get wrapper storage reference
    function _getWrapperStorage() private pure returns (WrapperState storage $) {
        assembly {
            $.slot := SpectraWrapperStorageLocation
        }
    }

    /// @dev Reverts if the user is blacklisted.
    function _requireNotBlacklisted(address user) internal view {
        if (_getWrapperStorage().blacklisted[user]) {
            revert Blacklisted(user);
        }
    }

    modifier notBlacklisted(address user) {
        _requireNotBlacklisted(user);
        _;
    }

    /* ---------------------------------------------------------- */
    /*                            INFRA VAULT STATE               */
    /* ---------------------------------------------------------- */

    // Struct to hold epoch-specific data
    struct EpochData {
        // Mapping of deposit request balances per user
        mapping(address => uint256) depositRequestBalance;
        // Mapping of redeem request balances per user
        mapping(address => uint256) redeemRequestBalance;
    }

    /// @custom:storage-location erc7201:metavault.storage.Amphor
    // Struct to hold Amphor-specific state
    struct AmphorState {
        // Current epoch ID
        uint256 epochId;
        // Mapping of epoch data
        mapping(uint256 => EpochData) epochs;
        // Last deposit request epoch per user
        mapping(address => uint256) lastDepositRequestId;
        // Last redeem request epoch per user
        mapping(address => uint256) lastRedeemRequestId;
    }

    // keccak256(abi.encode(uint256(keccak256("metavault.storage.Amphor")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 private constant AmphorStorageLocation =
        0x001ae2f54bddf076415b2cf5703ed08fd8787093486498094c64c02e67ad6f00;

    // pointer to Amphor-specific state used in this wrapper. Upon migration to another infra vault, this
    // storage pointer can be deprecated and a new one can be created.
    function _getAmphorStorage() private pure returns (AmphorState storage $) {
        assembly {
            $.slot := AmphorStorageLocation
        }
    }

    constructor() {
        _disableInitializers();
    }

    /// @notice Initializer for the MetaVaultWrapper
    /// @param _initialOwner    Owner of the MetaVaultWrapper
    /// @param _infraVault      Address of the current infrastructure vault (e.g. Amphor)
    /// @param _underlying      Underlying ERC20
    function initialize(
        address _initialOwner,
        address _infraVault,
        address _underlying,
        string memory name,
        string memory symbol
    ) external initializer {
        __Ownable_init(_initialOwner);
        __ReentrancyGuard_init();
        __ERC4626_init(IERC20(_underlying));
        __ERC20_init(name, symbol);
        __ERC20Pausable_init();

        WrapperState storage W = _getWrapperStorage();
        // Validate addresses are not zero
        if (_infraVault == address(0) || _underlying == address(0)) {
            revert IERC7540.ZeroAddress();
        }
        // Validate underlying matches infra vault asset
        if (_underlying != IERC7540(_infraVault).asset()) {
            revert InvalidUnderlying();
        }

        // Set infrastructure vault address
        W.infraVault = _infraVault;
        // Set underlying asset address
        W.underlying = _underlying;

        // approve infra-vault to pull underlying from wrapper
        IERC20(_underlying).approve(_infraVault, 0);
        IERC20(_underlying).approve(_infraVault, type(uint256).max);

        // --- set amphor-specific state ---
        AmphorState storage A = _getAmphorStorage();
        // Initialize epoch ID to 1 (epoch 0 doesn't exist)
        A.epochId = 1;

        emit MetaVaultWrapperInitialized(_initialOwner, _infraVault, address(this));
    }

    // -------------------------------------- Getter Functions --------------------------------------

    // Function to get infrastructure vault address
    function getInfraVault() public view returns (address) {
        return _getWrapperStorage().infraVault;
    }

    // Function to check if operator is approved for controller
    function isOperator(
        address controller,
        address operator
    ) external view override returns (bool status) {
        WrapperState storage W = _getWrapperStorage();
        return W.isOperator[controller][operator];
    }

    // Function to get total vault shares held by wrapper
    function totalVaultShares() public view override returns (uint256) {
        WrapperState storage W = _getWrapperStorage();
        return IERC20(W.infraVault).balanceOf(address(this));
    }

    // Function to get current epoch ID from infra vault
    function epochId() external view returns (uint256) {
        return IAmphor(getInfraVault()).epochId();
    }

    function lastUserDepositRequestEpoch(address user) external view returns (uint256) {
        AmphorState storage A = _getAmphorStorage();
        return A.lastDepositRequestId[user];
    }

    function lastUserRedeemRequestEpoch(address user) external view returns (uint256) {
        AmphorState storage A = _getAmphorStorage();
        return A.lastRedeemRequestId[user];
    }

    // Function to convert assets to shares for specific epoch ID
    function convertToShares(
        uint256 assets,
        uint256 requestID
    ) external view returns (uint256 shares) {
        // Convert assets to infra vault shares then wrap
        return _previewWrap(_amphorConvertToShares(assets, requestID));
    }

    // Function to convert assets to shares using current epoch
    function convertToShares(
        uint256 assets
    ) public view override(ERC4626Upgradeable, IERC4626) returns (uint256 shares) {
        // Get current epoch ID from infra vault
        uint256 epochId = IAmphor(getInfraVault()).epochId();
        // Convert using previous epoch (epochId - 1)
        return _previewWrap(_amphorConvertToShares(assets, epochId - 1));
    }

    function convertToAssets(
        uint256 shares
    ) public view override(ERC4626Upgradeable, IERC4626) returns (uint256 assets) {
        // Convert wrapper shares to infra vault shares
        uint256 infraVaultShares = _previewUnwrap(shares);
        // Get current epoch ID from infra vault
        uint256 epochId = IAmphor(getInfraVault()).epochId();
        // Convert infra vault shares to assets using previous epoch
        return _amphorConvertToAssets(infraVaultShares, epochId - 1);
    }

    // Function to convert shares to assets for specific epoch ID
    function convertToAssets(
        uint256 shares,
        uint256 requestID
    ) external view returns (uint256 assets) {
        // Convert wrapper shares to infra vault shares
        uint256 infraVaultShares = _previewUnwrap(shares);
        // Convert infra vault shares to assets for specific epoch
        return _amphorConvertToAssets(infraVaultShares, requestID);
    }

    // Function to get maximum deposit amount for receiver
    function maxDeposit(
        address receiver
    ) public view override(ERC4626Upgradeable, IERC4626) returns (uint256 maxAssets) {
        // Return 0 if contract is paused
        if (paused()) {
            return 0;
        }

        uint256 currentAmphorEpoch = IAmphor(_getWrapperStorage().infraVault).epochId();

        // Get user's last deposit request epoch
        uint256 userEpoch = _getAmphorStorage().lastDepositRequestId[receiver];
        if (userEpoch == currentAmphorEpoch) {
            return 0;
        }
        // Return claimable deposit balance for that epoch
        return _getAmphorStorage().epochs[userEpoch].depositRequestBalance[receiver];
    }

    // Function to get maximum redeem amount for owner
    function maxRedeem(
        address owner
    ) public view override(ERC4626Upgradeable, IERC4626) returns (uint256 maxShares) {
        // Return 0 if contract is paused
        if (paused()) {
            return 0;
        }

        uint256 currentAmphorEpoch = IAmphor(_getWrapperStorage().infraVault).epochId();

        // Get user's last redeem request epoch
        uint256 userEpoch = _getAmphorStorage().lastRedeemRequestId[owner];
        if (userEpoch == currentAmphorEpoch) {
            return 0;
        }
        // Return claimable redeem balance for that epoch
        return _getAmphorStorage().epochs[userEpoch].redeemRequestBalance[owner];
    }

    // Function to get pending deposit request assets amount
    // @param requestId The ID of the deposit request (not used in current implementation)
    // @param controller The address of the controller whose pending deposit is being queried
    function pendingDepositRequest(
        uint256 requestId,
        address controller
    ) external view override returns (uint256 assets) {
        // Get current epoch ID from infra vault
        uint256 currentEpochId = IAmphor(getInfraVault()).epochId();
        // Return requested deposit balance for current epoch
        return _getAmphorStorage().epochs[currentEpochId].depositRequestBalance[controller];
    }

    // Function to get claimable deposit request amount
    // @param requestId The ID of the deposit request (not used in current implementation)
    // @param controller The address of the controller whose claimable deposit is being queried
    function claimableDepositRequest(
        uint256 requestId,
        address controller
    ) external view override returns (uint256 assets) {
        // Use internal preview function for claimable deposit
        return _amphorPreviewClaimDeposit(controller);
    }

    // Function to get pending redeem request amount
    function pendingRedeemRequest(
        uint256 requestId,
        address controller
    ) external view override returns (uint256 shares) {
        // Get current epoch ID from infra vault
        uint256 currentEpochId = IAmphor(getInfraVault()).epochId();
        // Return redeem balance for current epoch
        return _getAmphorStorage().epochs[currentEpochId].redeemRequestBalance[controller];
    }

    // Function to get claimable redeem request amount
    function claimableRedeemRequest(
        uint256 requestID,
        address controller
    ) external view override returns (uint256 shares) {
        // Use internal preview function for claimable redeem
        return _amphorPreviewClaimRedeem(controller);
    }

    // Function to preview deposit (not implemented as specified by IERC7540 for async vaults)
    function previewDeposit(
        uint256 assets
    ) public view override(ERC4626Upgradeable, IERC4626) returns (uint256 shares) {
        revert("NotImplemented()");
    }

    // Function to preview redeem (not implemented as specified by IERC7540 for async vaults)
    function previewRedeem(
        uint256 shares
    ) public view override(ERC4626Upgradeable, IERC4626) returns (uint256 assets) {
        revert("NotImplemented()");
    }

    // Function to preview withdraw (not implemented as specified by IERC7540 for async vaults)
    function previewWithdraw(
        uint256 assets
    ) public view override(ERC4626Upgradeable, IERC4626) returns (uint256 shares) {
        revert("NotImplemented()");
    }

    // Function to preview mint (not implemented as specified by IERC7540 for async vaults)
    function previewMint(
        uint256 shares
    ) public view override(ERC4626Upgradeable, IERC4626) returns (uint256 assets) {
        revert("NotImplemented()");
    }

    /**
     * @notice The `totalAssets` function returns an estimate of the total assets of the wrapper using the last settled epoch rate
     */
    function totalAssets() public view override(ERC4626Upgradeable, IERC4626) returns (uint256) {
        return convertToAssets(totalSupply());
    }

    /* -------------------------------------- External Functions -------------------------------------- */

    // Function to set operator approval
    function setOperator(
        address operator,
        bool approved
    ) external override notBlacklisted(msg.sender) returns (bool) {
        WrapperState storage W = _getWrapperStorage();
        // Set operator approval for msg.sender
        W.isOperator[msg.sender][operator] = approved;
        emit OperatorSet(msg.sender, operator, approved);
        return true;
    }

    /* -------------------------------------- Blacklist Functions -------------------------------------- */

    /// @inheritdoc IMetaVaultWrapper
    function blacklist(address user) external onlyOwner {
        WrapperState storage W = _getWrapperStorage();
        W.blacklisted[user] = true;
        emit UserBlacklisted(user);
    }

    /// @inheritdoc IMetaVaultWrapper
    function unblacklist(address user) external onlyOwner {
        WrapperState storage W = _getWrapperStorage();
        W.blacklisted[user] = false;
        emit UserUnblacklisted(user);
    }

    /// @inheritdoc IMetaVaultWrapper
    function isBlacklisted(address user) external view returns (bool) {
        return _getWrapperStorage().blacklisted[user];
    }

    /// @notice Request deposit on the underlying infra-vault, tracked controller in wrapper "amphor" state.
    function requestDeposit(
        uint256 assets,
        address controller,
        address owner
    ) external nonReentrant whenNotPaused returns (uint256 requestId) {
        _requireNotBlacklisted(msg.sender);
        _requireNotBlacklisted(controller);
        _requireNotBlacklisted(owner);

        WrapperState storage W = _getWrapperStorage();
        AmphorState storage A = _getAmphorStorage();

        // Validate assets amount is not zero
        if (assets == 0) {
            revert IERC7540.ZeroAssets();
        }
        // Validate addresses are not zero
        if (owner == address(0) || controller == address(0)) {
            revert IERC7540.ZeroAddress();
        }
        // Validate caller is owner or approved operator
        if (!(owner == msg.sender || W.isOperator[owner][msg.sender])) {
            revert IERC7540.ERC7540InvalidOperator();
        }

        // Update internal epoch tracking before making request
        _updateEpochID();
        // Claim any pending deposits if available
        if (_amphorPreviewClaimDeposit(controller) > 0) {
            _claimPendingDeposit(controller, controller);
        }

        // Transfer assets from owner to wrapper
        IERC20(W.underlying).safeTransferFrom(owner, address(this), assets);

        // Request deposit on infra vault
        IAmphor(W.infraVault).requestDeposit(assets, address(this), address(this), "");

        // Update wrapper state for this request
        A.lastDepositRequestId[controller] = A.epochId;
        // Add assets to epoch deposit balance of the controller
        A.epochs[A.epochId].depositRequestBalance[controller] += assets;

        // Emit deposit request event
        emit DepositRequest(controller, owner, 0, msg.sender, assets);

        // Return request ID (always 0 for this implementation as it is not used)
        return 0;
    }

    // Function to decrease deposit request amount
    function decreaseDepositRequest(
        uint256 assets
    ) external nonReentrant whenNotPaused notBlacklisted(msg.sender) {
        // Update internal epoch tracking
        _updateEpochID();

        AmphorState storage A = _getAmphorStorage();
        WrapperState storage W = _getWrapperStorage();
        // Get current epoch ID
        uint256 eid = A.epochId;

        // Get pending deposit balance for caller
        uint256 pending = A.epochs[eid].depositRequestBalance[msg.sender];

        // Validate decrease amount is not zero
        if (assets == 0) {
            revert ZeroDecreaseAmount();
        }

        // Validate decrease amount doesn't exceed pending
        if (assets > pending) {
            revert DecreaseAmountExceedsPending(pending, assets);
        }

        // Update pending balance
        A.epochs[eid].depositRequestBalance[msg.sender] = pending - assets;

        // Decrease request on infra vault
        IAmphor(W.infraVault).decreaseDepositRequest(assets);

        // Refund assets to caller
        IERC20(W.underlying).safeTransfer(msg.sender, assets);

        // Emit decrease event
        emit DecreaseDepositRequest(
            eid,
            msg.sender,
            pending,
            A.epochs[eid].depositRequestBalance[msg.sender]
        );
    }
    /**
     * @notice The `assets` amount parameter is not used in this function because there is no reason for the user not to claim all claimable shares.
     */
    function deposit(
        uint256 assets,
        address receiver,
        address controller
    ) external override nonReentrant whenNotPaused returns (uint256 shares) {
        _requireNotBlacklisted(msg.sender);
        _requireNotBlacklisted(controller);
        _requireNotBlacklisted(receiver);

        AmphorState storage A = _getAmphorStorage();
        WrapperState storage W = _getWrapperStorage();

        // Validate addresses are not zero
        if (receiver == address(0) || controller == address(0)) {
            revert IERC7540.ZeroAddress();
        }

        // Validate caller is controller or approved operator
        if (!(controller == msg.sender || W.isOperator[controller][msg.sender])) {
            revert IERC7540.ERC7540InvalidOperator();
        }

        // Update internal epoch tracking
        _updateEpochID();

        // Claim pending deposit and get results
        uint256 assetsClaimable;
        (shares, assetsClaimable) = _claimPendingDeposit(controller, receiver);

        // Emit deposit event
        emit Deposit(controller, receiver, assetsClaimable, shares);
    }

    // Function to request redeem of shares
    function requestRedeem(
        uint256 shares,
        address controller,
        address owner
    ) external nonReentrant whenNotPaused returns (uint256 requestId) {
        _requireNotBlacklisted(msg.sender);
        _requireNotBlacklisted(controller);
        _requireNotBlacklisted(owner);

        WrapperState storage W = _getWrapperStorage();
        AmphorState storage A = _getAmphorStorage();

        // Validate shares amount is not zero
        if (shares == 0) {
            revert IERC7540.ZeroShares();
        }
        // Validate addresses are not zero
        if (owner == address(0) || controller == address(0)) {
            revert IERC7540.ZeroAddress();
        }
        // Validate caller is owner or approved operator
        if (!(owner == msg.sender || W.isOperator[owner][msg.sender])) {
            revert IERC7540.ERC7540InvalidOperator();
        }

        // Update internal epoch tracking
        _updateEpochID();
        // Claim any pending redeems if available
        if (_amphorPreviewClaimRedeem(controller) > 0) {
            _claimPendingRedeem(controller, controller);
        }

        // Get current epoch ID
        uint256 currentEpochId = A.epochId;

        // Get pending redeem balance for caller
        uint256 pending = A.epochs[currentEpochId].redeemRequestBalance[msg.sender];

        // request the redeem from the infra vault
        address infraVault = getInfraVault();
        // Convert wrapper shares to infra vault shares
        uint256 infraVaultShares = _previewUnwrap(pending + shares) - _previewUnwrap(pending);

        // Burn shares from owner
        _burn(owner, shares);

        // Request redeem on infra vault
        IAmphor(infraVault).requestRedeem(infraVaultShares, address(this), address(this), "");

        // Update last redeem request epoch if different
        if (A.lastRedeemRequestId[controller] != currentEpochId) {
            A.lastRedeemRequestId[controller] = currentEpochId;
        }

        // Get epoch data reference
        EpochData storage E = A.epochs[currentEpochId];
        // Add shares to user redeem balance
        E.redeemRequestBalance[controller] += shares;

        // Emit redeem request event
        emit RedeemRequest(controller, owner, requestId, msg.sender, shares);
    }

    // Function to decrease redeem request amount
    function decreaseRedeemRequest(
        uint256 shares
    ) external nonReentrant whenNotPaused notBlacklisted(msg.sender) {
        // Update internal epoch tracking
        _updateEpochID();

        AmphorState storage A = _getAmphorStorage();
        WrapperState storage W = _getWrapperStorage();
        // Get current epoch ID
        uint256 eid = A.epochId;

        // Get pending redeem balance for caller
        uint256 pending = A.epochs[eid].redeemRequestBalance[msg.sender];

        // Validate decrease amount is not zero
        if (shares == 0) {
            revert ZeroDecreaseAmount();
        }

        // Validate decrease amount doesn't exceed pending
        if (shares > pending) {
            revert DecreaseAmountExceedsPending(pending, shares);
        }

        // Update pending balance
        A.epochs[eid].redeemRequestBalance[msg.sender] = pending - shares;

        uint256 amphorSharesDelta = _previewUnwrap(pending) - _previewUnwrap(pending - shares);

        // Decrease request on infra vault
        IAmphor(W.infraVault).decreaseRedeemRequest(amphorSharesDelta);

        // Mint shares back to caller as refund
        _mint(msg.sender, shares);

        emit DecreaseRedeemRequest(
            eid,
            msg.sender,
            pending,
            A.epochs[eid].redeemRequestBalance[msg.sender]
        );
    }

    /// @notice The `shares` amount parameter is not used in this function because there is no reason for the user not to claim all claimable assets.
    function redeem(
        uint256 shares,
        address receiver,
        address controller
    ) public override(ERC4626Upgradeable, IERC4626) nonReentrant whenNotPaused returns (uint256) {
        _requireNotBlacklisted(msg.sender);
        _requireNotBlacklisted(controller);
        _requireNotBlacklisted(receiver);

        // Validate addresses are not zero
        if (receiver == address(0) || controller == address(0)) {
            revert IERC7540.ZeroAddress();
        }
        // Validate caller is controller or approved operator
        if (
            !(controller == msg.sender || _getWrapperStorage().isOperator[controller][msg.sender])
        ) {
            revert IERC7540.ERC7540InvalidOperator();
        }

        // Update internal epoch tracking
        _updateEpochID();

        // Claim pending redeem and get results
        (uint256 claimableShares, uint256 assets) = _claimPendingRedeem(controller, receiver);

        emit IERC4626.Withdraw(address(this), receiver, controller, assets, claimableShares);

        return assets;
    }

    // Function to mint shares (not implemented)
    function mint(
        uint256,
        /*shares*/
        address,
        /*receiver*/
        address /*controller*/
    )
        external
        override
        nonReentrant
        whenNotPaused
        notBlacklisted(msg.sender)
        returns (uint256 assets)
    {
        revert("NotImplemented()");
    }

    // Function to migrate to new vault (not implemented before actual migration and next vault logic)
    function migrate(address /*newVault*/) external override nonReentrant onlyOwner {}

    /// @notice External function to synchronise the epoch with amphor's epoch.
    function updateEpochID() external {
        _updateEpochID();
    }

    /* -------------------------------------------------------------------------- */
    /*                                Internal Functions                          */
    /* -------------------------------------------------------------------------- */

    // Function to check if request ID is current epoch
    function _isCurrentEpoch(uint256 requestId) internal view returns (bool) {
        // Compare with infra vault's current epoch
        return requestId == IAmphor(getInfraVault()).epochId();
    }

    // Function to update internal epoch ID to match infra vault
    function _updateEpochID() internal {
        WrapperState storage W = _getWrapperStorage();
        AmphorState storage A = _getAmphorStorage();
        // Get current epoch from infra vault
        uint256 currentAmphorEpoch = IAmphor(W.infraVault).epochId();
        // Update if different from stored epoch
        if (A.epochId != currentAmphorEpoch) {
            A.epochId = currentAmphorEpoch;
        }
    }

    /* ---------------------------------------------------------- */
    /*                          AMPHOR STATE                      */
    /* ---------------------------------------------------------- */

    /// @notice Preview how many assets the controller can claim now (from its last request epoch).
    /// @return assetsClaimable Pending assets recorded for that epoch
    function _amphorPreviewClaimDeposit(
        address controller
    ) internal view returns (uint256 assetsClaimable) {
        AmphorState storage A = _getAmphorStorage();
        // Get current epoch ID from infra vault
        uint256 currentEpochId = IAmphor(getInfraVault()).epochId();

        // Get user's last deposit request epoch
        uint256 claimEpoch = A.lastDepositRequestId[controller];
        // Return 0 if no request or current epoch request
        if (claimEpoch == 0 || claimEpoch == currentEpochId) {
            return 0;
        }

        // Get claimable assets from epoch data
        assetsClaimable = A.epochs[claimEpoch].depositRequestBalance[controller];
        return assetsClaimable;
    }

    /// @notice Preview how many shares the controller can claim now (from its last redeem request epoch).
    /// @return sharesClaimable Pending shares recorded for that epoch
    function _amphorPreviewClaimRedeem(
        address controller
    ) internal view returns (uint256 sharesClaimable) {
        AmphorState storage A = _getAmphorStorage();
        // Get current epoch ID from infra vault
        uint256 currentEpochId = IAmphor(getInfraVault()).epochId();

        // Get user's last redeem request epoch
        uint256 claimEpoch = A.lastRedeemRequestId[controller];
        if (claimEpoch == 0 || claimEpoch == currentEpochId) {
            // Nothing claimable if never requested or request is for current epoch
            return 0;
        }

        // Get claimable shares from epoch data
        sharesClaimable = A.epochs[claimEpoch].redeemRequestBalance[controller];
        return sharesClaimable;
    }

    /// @notice applies the rate between wrapper shares and the infra IBT shares.
    function _previewWrap(uint256 vaultShares) internal view virtual returns (uint256) {
        // An initial rate of 1:1, before migration this rate should be revised.
        return vaultShares;
    }

    // Function to preview unwrapping wrapper shares to infra vault shares
    function _previewUnwrap(uint256 wrapperShares) internal view returns (uint256) {
        return wrapperShares;
    }

    /// @notice Convert `assets` to Amphor shares.
    /// @dev Floor rounding: shares = assets * (totSupply+1) / (totAssets+1)
    function _amphorConvertToShares(
        uint256 assets,
        uint256 epoch
    ) internal view returns (uint256 shares) {
        // Use Amphor's conversion function for specific epoch
        return IAmphor(getInfraVault()).convertToShares(assets, epoch);
    }

    // Function to convert Amphor shares to assets for specific epoch
    function _amphorConvertToAssets(
        uint256 shares,
        uint256 epoch
    ) private view returns (uint256 assets) {
        // Use Amphor's conversion function for specific epoch
        return IAmphor(getInfraVault()).convertToAssets(shares, epoch);
    }

    /**
     * @dev _claimPenidngDeposit is used to claim the pending deposit.
     * @param controller The address of the user that requested the deposit.
     * @param receiver The address of the user that will receive the shares.
     * @return shares The amount of shares requested by the user.
     * @return assetsClaimable The amount of assets claimable by the user.
     */
    function _claimPendingDeposit(
        address controller,
        address receiver
    ) internal returns (uint256 shares, uint256 assetsClaimable) {
        AmphorState storage A = _getAmphorStorage();

        // Claim any pending deposits from Amphor
        _claimPendingAmphorDeposit();

        // Revert if trying to claim current epoch request
        if (A.lastDepositRequestId[controller] == A.epochId) {
            revert IAmphor.NoClaimAvailable(controller);
        }

        // Get claimable assets amount
        assetsClaimable = _amphorPreviewClaimDeposit(controller);
        // Get user's last epoch
        uint256 lastUserEpoch = A.lastDepositRequestId[controller];
        // Convert assets to infra vault shares
        uint256 infraShares = _amphorConvertToShares(assetsClaimable, lastUserEpoch);

        // Clear claimable balance
        A.epochs[A.lastDepositRequestId[controller]].depositRequestBalance[controller] = 0;
        // Update user's last deposit epoch
        A.lastDepositRequestId[controller] = A.epochId;

        // Convert infra shares to wrapper shares
        shares = _previewWrap(infraShares);
        // Mint wrapper shares to receiver
        _mint(receiver, shares);
    }

    // Function to claim pending deposits from Amphor once per epoch
    function _claimPendingAmphorDeposit() internal {
        WrapperState storage W = _getWrapperStorage();
        // Preview claimable deposit amount
        uint256 claimableDeposit = IAmphor(W.infraVault).claimableDepositBalanceInAsset(
            address(this)
        );
        // Process claim if amount is greater than 0
        if (claimableDeposit > 0) {
            // Claim deposit from Amphor
            uint256 shares = IAmphor(W.infraVault).claimDeposit(address(this));

            // Emit claim event to track the claim wrapper shares to assets rate
            emit ClaimPendingDeposit(
                _getAmphorStorage().epochId,
                claimableDeposit,
                _previewWrap(shares)
            );
        }
    }

    /**
     * @notice Claim pending redeem requests from the infra vault
     */
    function _claimPendingRedeem(
        address controller,
        address receiver
    ) internal returns (uint256 claimableShares, uint256 assets) {
        AmphorState storage A = _getAmphorStorage();
        // Claim any pending redeems from Amphor
        _claimPendingAmphorRedeem();

        // Get user's redeem epoch
        uint256 currentEpochId = A.lastRedeemRequestId[controller];

        // Revert if trying to claim current epoch request
        if (currentEpochId == A.epochId) {
            revert IAmphor.NoClaimAvailable(controller);
        }

        // Get claimable shares amount
        claimableShares = _amphorPreviewClaimRedeem(controller);
        EpochData storage E = A.epochs[currentEpochId];
        E.redeemRequestBalance[controller] -= claimableShares;

        // Convert shares to assets
        assets = _amphorConvertToAssets(_previewUnwrap(claimableShares), currentEpochId);

        // Update user's last redeem epoch
        A.lastRedeemRequestId[controller] = A.epochId;

        // Transfer assets to receiver
        IERC20(asset()).safeTransfer(receiver, assets);
    }

    // Function to claim pending redeem requests from Amphor once per epoch
    function _claimPendingAmphorRedeem() internal {
        WrapperState storage W = _getWrapperStorage();
        // Get claimable redeem amount
        uint256 claimableRedeem = IAmphor(W.infraVault).claimableRedeemRequest(address(this));
        // Process claim if amount is greater than 0
        if (claimableRedeem > 0) {
            // Claim redeem from Amphor
            uint256 assets = IAmphor(W.infraVault).claimRedeem(address(this));

            // Emit claim event to track the claim wrapper shares to assets rate
            emit ClaimPendingRedeem(
                _getAmphorStorage().epochId,
                _previewWrap(claimableRedeem),
                assets
            );
        }
    }

    /* ---------------------------------------------------------- */
    /*                          ERC20 OVERRIDES                   */
    /* ---------------------------------------------------------- */

    function _update(
        address from,
        address to,
        uint256 value
    ) internal virtual override(ERC20Upgradeable, ERC20PausableUpgradeable) {
        WrapperState storage W = _getWrapperStorage();
        // Block transfers from blacklisted users (from == address(0) is mint)
        if (from != address(0) && W.blacklisted[from]) {
            revert Blacklisted(from);
        }
        // Block transfers to blacklisted users (to == address(0) is burn)
        if (to != address(0) && W.blacklisted[to]) {
            revert Blacklisted(to);
        }
        ERC20PausableUpgradeable._update(from, to, value);
    }

    function decimals()
        public
        view
        virtual
        override(IERC20Metadata, ERC20Upgradeable, ERC4626Upgradeable)
        returns (uint8)
    {
        return IERC20Metadata(asset()).decimals();
    }

    /* ---------------------------------------------------------- */
    /*                            EIP7575                         */
    /* ---------------------------------------------------------- */

    function share() external view returns (address) {
        return (address(this));
    }

    /* ---------------------------------------------------------- */
    /*                            EIP165                          */
    /* ---------------------------------------------------------- */

    function supportsInterface(bytes4 interfaceId) public view returns (bool) {
        return
            interfaceId == type(IERC165).interfaceId ||
            interfaceId == type(IERC7540).interfaceId ||
            interfaceId == type(IERC7575).interfaceId ||
            interfaceId == type(IERC7540Deposit).interfaceId ||
            interfaceId == type(IERC7540Redeem).interfaceId ||
            interfaceId == type(IERC7540Operator).interfaceId;
    }
}
