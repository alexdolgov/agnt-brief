// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.22;

import {IMetaVaultWrapper} from "./interfaces/IMetaVaultWrapper.sol";
import {IERC7540} from "./interfaces/I7540.sol";
import {IAmphor} from "./interfaces/IAmphor.sol";
import {AccessManagedUpgradeable} from "@openzeppelin/contracts-upgradeable/access/manager/AccessManagedUpgradeable.sol";
import {ReentrancyGuardUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";
import {Initializable} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import {OwnableUpgradeable} from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import {ERC4626Upgradeable} from "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC4626Upgradeable.sol";
import {IERC4626} from "@openzeppelin/contracts/interfaces/IERC4626.sol";
import {IERC20Metadata, IERC20} from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import {ERC20PausableUpgradeable} from "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC20PausableUpgradeable.sol";
import {ERC20Upgradeable} from "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
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
    using Math for uint256;

    /* ---------------------------------------------------------- */
    /*                            WRAPPER STATE                    */
    /* ---------------------------------------------------------- */

    /// @custom:storage-location erc7201:metavault.storage.Common
    struct WrapperState {
        uint256 totalVirtualSupply;
        uint256 totalVirtualInfraVaultSupply;
        address infraVault;
        address underlying;
        mapping(address controller => mapping(address operator => bool)) isOperator;
    }

    // keccak256(abi.encode(uint256(keccak256("spectra.storage.Wrapper")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 private constant SpectraWrapperStorageLocation =
        0x9f2ce3581e00a5f2a3e8507d8fe8424f0f0b6e6b01ed8c453b67ed8f268a8a00;

    function _getWrapperStorage() private pure returns (WrapperState storage $) {
        assembly {
            $.slot := SpectraWrapperStorageLocation
        }
    }

    /* ---------------------------------------------------------- */
    /*                            INFRA VAULT STATE               */
    /* ---------------------------------------------------------- */

    struct EpochData {
        mapping(address => uint256) depositRequestBalance;
        mapping(address => uint256) redeemRequestBalance;
    }

    /// @custom:storage-location erc7201:metavault.storage.Amphor
    struct AmphorState {
        uint256 epochId;
        mapping(uint256 => EpochData) epochs;
        mapping(address => uint256) lastDepositRequestId;
        mapping(address => uint256) lastRedeemRequestId;
    }

    // keccak256(abi.encode(uint256(keccak256("metavault.storage.Amphor")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 private constant AmphorStorageLocation =
        0x001ae2f54bddf076415b2cf5703ed08fd8787093486498094c64c02e67ad6f00;

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
    /// @param _underlying      Underlying ERC20; if zero, the function will try infraVault_.asset()
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
        if (_infraVault == address(0) || _underlying == address(0)) {
            revert IERC7540.ZeroAddress();
        }
        W.infraVault = _infraVault;
        W.underlying = _underlying;

        // approve infra-vault to pull underlying from wrapper
        IERC20(_underlying).approve(_infraVault, 0);
        IERC20(_underlying).approve(_infraVault, type(uint256).max);

        // --- set amphor-specific state ---
        AmphorState storage A = _getAmphorStorage();
        A.epochId = 1;

        emit MetaVaultWrapperInitialized(_initialOwner, _infraVault, address(this));
    }

    // -------------------------------------- Getter Functions --------------------------------------

    function getInfraVault() public view returns (address) {
        return _getWrapperStorage().infraVault;
    }

    function isOperator(
        address controller,
        address operator
    ) external view override returns (bool status) {
        WrapperState storage W = _getWrapperStorage();
        return W.isOperator[controller][operator];
    }

    function totalVaultShares() public view override returns (uint256) {
        WrapperState storage W = _getWrapperStorage();
        return IERC20(W.infraVault).balanceOf(address(this));
    }

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

    function convertToShares(
        uint256 assets,
        uint256 requestID
    ) external view returns (uint256 shares) {
        return _previewWrap(_amphorConvertToShares(assets, requestID));
    }

    function convertToShares(
        uint256 assets
    ) public view override(ERC4626Upgradeable, IERC4626) returns (uint256 shares) {
        uint256 epochId = IAmphor(getInfraVault()).epochId();
        return _previewWrap(IAmphor(getInfraVault()).convertToShares(assets, epochId - 1));
    }

    function convertToAssets(
        uint256 shares
    ) public view override(ERC4626Upgradeable, IERC4626) returns (uint256 assets) {
        uint256 infraVaultShares = _previewUnwrap(shares);
        uint256 epochId = IAmphor(getInfraVault()).epochId();
        return _amphorConvertToAssets(infraVaultShares, epochId - 1);
    }

    function convertToAssets(
        uint256 shares,
        uint256 requestID
    ) external view returns (uint256 assets) {
        uint256 infraVaultShares = _previewUnwrap(shares);
        return _amphorConvertToAssets(infraVaultShares, requestID);
    }

    function maxDeposit(
        address receiver
    ) public view override(ERC4626Upgradeable, IERC4626) returns (uint256 maxAssets) {
        if (paused()) {
            return 0;
        }

        uint256 userEpoch = _getAmphorStorage().lastDepositRequestId[receiver];
        return _getAmphorStorage().epochs[userEpoch].depositRequestBalance[receiver];
    }

    function maxRedeem(
        address owner
    ) public view override(ERC4626Upgradeable, IERC4626) returns (uint256 maxShares) {
        if (paused()) {
            return 0;
        }
        uint256 userEpoch = _getAmphorStorage().lastRedeemRequestId[owner];
        return _getAmphorStorage().epochs[userEpoch].redeemRequestBalance[owner];
    }

    function pendingDepositRequest(
        uint256 requestId,
        address controller
    ) external view override returns (uint256 assets) {
        uint256 currentEpochId = IAmphor(getInfraVault()).epochId();
        return _getAmphorStorage().epochs[currentEpochId].depositRequestBalance[controller];
    }

    function claimableDepositRequest(
        uint256 requestId,
        address controller
    ) external view override returns (uint256 assets) {
        AmphorState storage A = _getAmphorStorage();

        // Use Amphor's current epoch directly (no reliance on our internal A.epochId)
        uint256 currentEpochId = IAmphor(getInfraVault()).epochId();

        uint256 claimEpoch = A.lastDepositRequestId[controller];
        if (claimEpoch == 0 || claimEpoch == currentEpochId) {
            return 0; // nothing claimable yet
        }

        return A.epochs[claimEpoch].depositRequestBalance[controller];
    }

    function pendingRedeemRequest(
        uint256 requestId,
        address controller
    ) external view override returns (uint256 shares) {
        uint256 currentEpochId = IAmphor(getInfraVault()).epochId();
        return _getAmphorStorage().epochs[currentEpochId].redeemRequestBalance[controller];
    }

    function claimableRedeemRequest(
        uint256 requestID,
        address controller
    ) external view override returns (uint256 shares) {
        return _amphorPreviewClaimRedeem(controller);
    }

    function previewDeposit(
        uint256 assets
    ) public view override(ERC4626Upgradeable, IERC4626) returns (uint256 shares) {
        revert("NotImplemented()");
    }

    function previewRedeem(
        uint256 shares
    ) public view override(ERC4626Upgradeable, IERC4626) returns (uint256 assets) {
        revert("NotImplemented()");
    }

    function previewWithdraw(
        uint256 assets
    ) public view override(ERC4626Upgradeable, IERC4626) returns (uint256 shares) {
        revert("NotImplemented()");
    }

    function previewMint(
        uint256 shares
    ) public view override(ERC4626Upgradeable, IERC4626) returns (uint256 assets) {
        revert("NotImplemented()");
    }

    /* -------------------------------------- External Functions -------------------------------------- */

    function setOperator(address operator, bool approved) external override returns (bool) {
        WrapperState storage W = _getWrapperStorage();
        W.isOperator[msg.sender][operator] = approved;
        emit OperatorSet(msg.sender, operator, approved);
        return true;
    }

    /// @notice Request deposit on the underlying infra-vault, tracked controller in wrapper state.
    function requestDeposit(
        uint256 assets,
        address controller,
        address owner
    ) external nonReentrant whenNotPaused returns (uint256 requestId) {
        WrapperState storage W = _getWrapperStorage();
        AmphorState storage A = _getAmphorStorage();

        if (assets == 0) {
            revert IERC7540.ZeroAssets();
        }
        if (owner == address(0) || controller == address(0)) {
            revert IERC7540.ZeroAddress();
        }
        if (
            !(controller == msg.sender || _getWrapperStorage().isOperator[controller][msg.sender])
        ) {
            revert IERC7540.ERC7540InvalidOperator();
        }

        _updateEpochID();
        //If there is something to claim.
        if (_amphorPreviewClaimDeposit(controller) > 0) {
            _claimPendingDeposit(controller, controller);
        }

        IERC20(W.underlying).transferFrom(owner, address(this), assets);

        IAmphor(W.infraVault).requestDeposit(assets, address(this), address(this), "");

        // update the amphor state
        A.lastDepositRequestId[controller] = A.epochId;
        A.epochs[A.epochId].depositRequestBalance[controller] += assets;

        emit DepositRequest(controller, owner, 0, msg.sender, assets);

        return 0;
    }

    function decreaseDepositRequest(uint256 assets) external nonReentrant whenNotPaused {
        // Make sure our local epoch tracking is up to date
        _updateEpochID();

        AmphorState storage A = _getAmphorStorage();
        WrapperState storage W = _getWrapperStorage();
        uint256 eid = A.epochId;

        uint256 pending = A.epochs[eid].depositRequestBalance[msg.sender];
        if (pending == 0) return;

        if (assets == 0) {
            revert ZeroDecreaseAmount();
        }

        if (assets > pending) {
            revert DecreaseAmountExceedsPending(pending, assets);
        }

        A.epochs[eid].depositRequestBalance[msg.sender] = pending - assets;

        IAmphor(W.infraVault).decreaseDepositRequest(assets);

        // Refund the receiver from the wrapper
        IERC20(W.underlying).transfer(msg.sender, assets);

        emit DecreaseDepositRequest(
            eid,
            msg.sender,
            pending,
            A.epochs[eid].depositRequestBalance[msg.sender]
        );
    }

    function deposit(
        uint256 assets,
        address receiver,
        address controller
    ) external override nonReentrant whenNotPaused returns (uint256 shares) {
        AmphorState storage A = _getAmphorStorage();
        WrapperState storage W = _getWrapperStorage();

        if (assets == 0) {
            revert IERC7540.ZeroAssets();
        }
        if (receiver == address(0) || controller == address(0)) {
            revert IERC7540.ZeroAddress();
        }
        if (assets > maxDeposit(receiver)) {
            revert IERC7540.ERC7540ExceededMaxDeposit(receiver, assets, maxDeposit(receiver));
        }
        if (
            !(controller == msg.sender || _getWrapperStorage().isOperator[controller][msg.sender])
        ) {
            revert IERC7540.ERC7540InvalidOperator();
        }

        _updateEpochID();
        uint256 assetsClaimable;
        (shares, assetsClaimable) = _claimPendingDeposit(controller, receiver);

        emit Deposit(controller, receiver, assetsClaimable, shares);
    }

    function requestRedeem(
        uint256 shares,
        address controller,
        address owner
    ) external nonReentrant whenNotPaused returns (uint256 requestId) {
        if (shares == 0) {
            revert IERC7540.ZeroShares();
        }
        if (owner == address(0) || controller == address(0)) {
            revert IERC7540.ZeroAddress();
        }
        if (
            !(controller == msg.sender || _getWrapperStorage().isOperator[controller][msg.sender])
        ) {
            revert IERC7540.ERC7540InvalidOperator();
        }

        _updateEpochID();
        if (_amphorPreviewClaimRedeem(controller) > 0) {
            _claimPendingRedeem(controller, controller);
        }

        // request the redeem from the infra vault
        address infraVault = getInfraVault();
        // burn the shares from the owner
        uint256 infraVaultShares = _previewUnwrap(shares);

        _burn(owner, shares);

        IAmphor(infraVault).requestRedeem(infraVaultShares, address(this), address(this), "");

        // update the last redeem request id for the controller
        uint256 currentEpochId = _getAmphorStorage().epochId;
        if (_getAmphorStorage().lastRedeemRequestId[controller] != currentEpochId) {
            _getAmphorStorage().lastRedeemRequestId[controller] = currentEpochId;
        }

        // increment pending shares for controller
        EpochData storage E = _getAmphorStorage().epochs[currentEpochId];
        E.redeemRequestBalance[controller] += shares;

        emit RedeemRequest(controller, owner, requestId, msg.sender, shares);
    }

    function decreaseRedeemRequest(uint256 shares) external nonReentrant whenNotPaused {
        _updateEpochID();

        AmphorState storage A = _getAmphorStorage();
        WrapperState storage W = _getWrapperStorage();
        uint256 eid = A.epochId;

        uint256 pending = A.epochs[eid].redeemRequestBalance[msg.sender];
        if (pending == 0) return;

        if (shares == 0) {
            revert ZeroDecreaseAmount();
        }

        if (shares > pending) {
            revert DecreaseAmountExceedsPending(pending, shares);
        }

        A.epochs[eid].redeemRequestBalance[msg.sender] = pending - shares;

        IAmphor(W.infraVault).decreaseRedeemRequest(shares);

        // Refund the shares to the user by minting them back
        _mint(msg.sender, shares);

        emit DecreaseRedeemRequest(
            eid,
            msg.sender,
            pending,
            A.epochs[eid].redeemRequestBalance[msg.sender]
        );
    }

    function redeem(
        uint256 shares,
        address receiver,
        address controller
    ) public override(ERC4626Upgradeable, IERC4626) nonReentrant whenNotPaused returns (uint256) {
        if (shares == 0) {
            revert IERC7540.ZeroShares();
        }
        if (receiver == address(0) || controller == address(0)) {
            revert IERC7540.ZeroAddress();
        }
        if (
            !(controller == msg.sender || _getWrapperStorage().isOperator[controller][msg.sender])
        ) {
            revert IERC7540.ERC7540InvalidOperator();
        }

        if (shares > maxRedeem(controller)) {
            revert IERC7540.ERC7540ExceededMaxRedeem(controller, shares, maxRedeem(controller));
        }

        _updateEpochID();
        (uint256 claimableShares, uint256 assets) = _claimPendingRedeem(controller, controller);

        // `emit 7540 Redeem` event
        emit IERC4626.Withdraw(address(this), receiver, controller, assets, claimableShares);

        return assets;
    }

    function mint(
        uint256,
        /*shares*/
        address,
        /*receiver*/
        address /*controller*/
    ) external override nonReentrant whenNotPaused returns (uint256 assets) {
        revert("NotImplemented()");
    }

    function migrate(address /*newVault*/) external override nonReentrant onlyOwner {}

    /// @notice External function to update the epoch ID.
    function updateEpochID() external {
        _updateEpochID();
    }

    /* -------------------------------------------------------------------------- */
    /*                                Internal Functions                          */
    /* -------------------------------------------------------------------------- */

    function _isCurrentEpoch(uint256 requestId) internal view returns (bool) {
        return requestId == IAmphor(getInfraVault()).epochId();
    }

    function _updateEpochID() internal {
        WrapperState storage W = _getWrapperStorage();
        AmphorState storage A = _getAmphorStorage();
        uint256 currentAmphorEpoch = IAmphor(W.infraVault).epochId();
        if (A.epochId != currentAmphorEpoch) {
            A.epochId = currentAmphorEpoch;
        }
    }

    /* ---------------------------------------------------------- */
    /*                          AMPHOR STATE                      */
    /* ---------------------------------------------------------- */

    /// @notice Preview how many infra-vault assets the controller can claim now (from its last request epoch).
    /// @return assetsClaimable Pending assets recorded for that epoch
    function _amphorPreviewClaimDeposit(
        address controller
    ) internal view returns (uint256 assetsClaimable) {
        AmphorState storage A = _getAmphorStorage();
        uint256 currentEpochId = A.epochId;

        uint256 claimEpoch = A.lastDepositRequestId[controller];
        if (claimEpoch == 0 || claimEpoch == currentEpochId) {
            // Nothing claimable if never requested or request is for current epoch
            return 0;
        }

        assetsClaimable = A.epochs[claimEpoch].depositRequestBalance[controller];
        return assetsClaimable;
    }

    /// @notice Preview how many infra-vault shares the controller can claim now (from its last redeem request epoch).
    /// @return sharesClaimable Pending shares recorded for that epoch
    function _amphorPreviewClaimRedeem(
        address controller
    ) internal view returns (uint256 sharesClaimable) {
        AmphorState storage A = _getAmphorStorage();
        uint256 currentEpochId = IAmphor(getInfraVault()).epochId();

        uint256 claimEpoch = A.lastRedeemRequestId[controller];
        if (claimEpoch == 0 || claimEpoch == currentEpochId) {
            // Nothing claimable if never requested or request is for current epoch
            return 0;
        }

        sharesClaimable = A.epochs[claimEpoch].redeemRequestBalance[controller];
        return sharesClaimable;
    }

    /// @notice applies the rate between wrapper shares and the IBT shares.
    function _previewWrap(uint256 vaultShares) internal view virtual returns (uint256) {
        return
            vaultShares.mulDiv(
                _getWrapperStorage().totalVirtualSupply + 1,
                _getWrapperStorage().totalVirtualInfraVaultSupply + 1
            );
    }

    function _previewUnwrap(uint256 wrapperShares) internal view returns (uint256) {
        return
            (wrapperShares * (1 + _getWrapperStorage().totalVirtualInfraVaultSupply)) /
            (1 + _getWrapperStorage().totalVirtualSupply);
    }

    /// @notice Convert `assets` to Amphor shares.
    /// @dev Floor rounding: shares = assets * (totSupply+1) / (totAssets+1)
    function _amphorConvertToShares(
        uint256 assets,
        uint256 epoch
    ) internal view returns (uint256 shares) {
        return IAmphor(getInfraVault()).convertToShares(assets, epoch);
    }

    function _amphorConvertToAssets(
        uint256 shares,
        uint256 epoch
    ) private view returns (uint256 assets) {
        return IAmphor(getInfraVault()).convertToAssets(shares, epoch);
    }

    /**
     * @dev _claimPenidngDeposit is used to claim the pending deposit.
     * @param controller The address of the user that requested the deposit.
     * @param receiver The address of the user that requested the deposit.
     * @return shares The amount of shares requested by the user.
     * @return assetsClaimable The amount of assets claimable by the user.
     */
    function _claimPendingDeposit(
        address controller,
        address receiver
    ) internal returns (uint256 shares, uint256 assetsClaimable) {
        AmphorState storage A = _getAmphorStorage();

        _claimPendingAmphorDeposit();

        if (A.lastDepositRequestId[controller] == A.epochId) {
            revert IAmphor.NoClaimAvailable(controller);
        }

        assetsClaimable = _amphorPreviewClaimDeposit(controller);
        uint256 lastUserEpoch = A.lastDepositRequestId[controller];
        uint256 infraShares = _amphorConvertToShares(assetsClaimable, lastUserEpoch);

        //decrement the claimable deposit request balance
        A.epochs[A.lastDepositRequestId[controller]].depositRequestBalance[controller] = 0;
        A.lastDepositRequestId[controller] = A.epochId;

        shares = _previewWrap(infraShares);
        _mint(receiver, shares);
    }

    function _claimPendingAmphorDeposit() internal {
        WrapperState storage W = _getWrapperStorage();
        uint256 claimableDeposit = IAmphor(W.infraVault).previewClaimDeposit(address(this));
        if (claimableDeposit > 0) {
            uint256 shares = IAmphor(W.infraVault).claimDeposit(address(this));
            W.totalVirtualInfraVaultSupply += shares;
            W.totalVirtualSupply += shares;

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
        _claimPendingAmphorRedeem();

        uint256 currentEpochId = A.lastRedeemRequestId[controller];

        if (currentEpochId == A.epochId) {
            revert IAmphor.NoClaimAvailable(controller);
        }

        claimableShares = _amphorPreviewClaimRedeem(controller);
        EpochData storage E = A.epochs[currentEpochId];
        E.redeemRequestBalance[controller] -= claimableShares;

        assets = _amphorConvertToAssets(_previewUnwrap(claimableShares), currentEpochId);

        A.lastRedeemRequestId[controller] = currentEpochId;

        IERC20(asset()).transfer(receiver, assets);
    }

    function _claimPendingAmphorRedeem() internal {
        WrapperState storage W = _getWrapperStorage();
        uint256 claimableRedeem = IAmphor(W.infraVault).claimableRedeemRequest(address(this));
        if (claimableRedeem > 0) {
            uint256 assets = IAmphor(W.infraVault).claimRedeem(address(this));
            W.totalVirtualInfraVaultSupply -= claimableRedeem;
            W.totalVirtualSupply -= claimableRedeem;

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
}
