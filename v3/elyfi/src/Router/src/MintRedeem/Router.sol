// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {Order, OrderType, MintRedeemMode, RequestStatus} from "src/MintRedeem/Structs.sol";
import {IMinter} from "src/interfaces/IMinter.sol";
import {IRedeemer} from "src/interfaces/IRedeemer.sol";
import {IAssetReserve} from "src/interfaces/IAssetReserve.sol";
import {SingleAdminAccessControl} from "src/utils/SingleAdminAccessControl.sol";
import {Pausable} from "@openzeppelin/contracts/utils/Pausable.sol";

/// @title Router
/// @notice Main entry point for minting ELUSD using various collateral assets
/// @dev Manages the routing of minting operations to appropriate minter contracts and handles asset reserve interactions
contract Router is SingleAdminAccessControl, Pausable {
    using SafeERC20 for IERC20;

    /*//////////////////////////////////////////////////////////////
                             ERRORS
    //////////////////////////////////////////////////////////////*/

    error ZeroInput();
    error AssetNotSupported();
    error Unauthorized();
    error InvalidRequestStatus();

    /*//////////////////////////////////////////////////////////////
                             EVENTS
    //////////////////////////////////////////////////////////////*/

    event MinterSet(address indexed asset, address minter);
    event RedeemerSet(address indexed asset, address redeemer);
    event AssetReserveSet(address indexed assetReserve);
    event MintWhitelistEnforcementSet(bool enabled);
    event RedeemWhitelistEnforcementSet(bool enabled);
    event MintWhitelisted(address indexed user, bool whitelisted);
    event RedeemWhitelisted(address indexed user, bool whitelisted);
    event RequestMint(uint256 indexed requestId, Order order);
    event ServeRequestMint(uint256 indexed requestId);
    event MintRequestCancelled(uint256 indexed requestId);
    event Mint(
        address indexed benefactor,
        address indexed beneficiary,
        address collateral_asset,
        uint256 collateral_amount,
        uint256 elusd_amount
    );
    event RequestRedemption(uint256 indexed requestId, Order order);
    event ServeRequestRedemption(uint256 indexed requestId);
    event RedemptionRequestCancelled(uint256 indexed requestId);
    event Redeem(
        address indexed benefactor,
        address indexed beneficiary,
        address collateral_asset,
        uint256 collateral_amount,
        uint256 elusd_amount
    );
    event OrderWaitingPeriodSet(uint24 orderWaitingPeriod);

    /*//////////////////////////////////////////////////////////////
                             STORAGE
    //////////////////////////////////////////////////////////////*/

    /// @notice Role for pausing the contract
    bytes32 public constant PAUSER_ROLE = keccak256("PAUSER_ROLE");

    /// @notice Role for managing the whitelist
    bytes32 public constant WHITELISTER_ROLE = keccak256("WHITELISTER_ROLE");

    /// @notice Role for managing the redemption keeper
    bytes32 public constant KEEPER_ROLE = keccak256("KEEPER_ROLE");

    /// @notice ELUSD
    IERC20 public immutable ELUSD;

    /// @notice Mapping of collateral asset addresses to their corresponding minter contracts
    mapping(address collateralAsset => IMinter minter) public minters;

    /// @notice Mapping of collateral asset addresses to their corresponding redeemer contracts
    mapping(address collateralAsset => IRedeemer redeemer) public redeemers;

    /// @notice Address of asset reserve
    address public assetReserve;

    /// @notice The order waiting period
    uint24 public orderWaitingPeriod;

    /// @notice Whether the mint whitelist enforcement is enabled
    bool public isMintWhitelistEnforced;

    /// @notice Whether the redeem whitelist enforcement is enabled
    bool public isRedeemWhitelistEnforced;

    /// @notice Mapping of user addresses to their mint whitelist status
    mapping(address user => bool) public isMintWhitelisted;

    /// @notice Mapping of user addresses to their redeem whitelist status
    mapping(address user => bool) public isRedeemWhitelisted;

    /// @notice The current mint request ID
    uint256 public mintRequestId;

    /// @notice Mapping of mint request IDs to mint requests
    mapping(uint256 requestId => Order) public mintRequests;

    /// @notice Mapping of mint request IDs to mint request statuses
    mapping(uint256 requestId => RequestStatus) public mintRequestStatus;

    /// @notice The current redemption request ID
    uint256 public redemptionRequestId;

    /// @notice Mapping of redemption request IDs to redemption requests
    /// @dev This is filled when liquid buffer cannot serve redemption, we use this to serve the redemption request
    mapping(uint256 requestId => Order) public redemptionRequests;

    /// @notice Mapping of redemption request IDs to redemption request statuses
    mapping(uint256 requestId => RequestStatus) public redemptionRequestStatus;

    /*//////////////////////////////////////////////////////////////
                             INITIALIZATION
    //////////////////////////////////////////////////////////////*/
    /// @notice Initializes the Router contract
    /// @param _elusd Address of the ELUSD token
    /// @param _admin Address of the admin
    /// @param _assetReserve Address of the asset reserve
    constructor(address _elusd, address _admin, address _assetReserve) {
        ELUSD = IERC20(_elusd);

        _grantRole(DEFAULT_ADMIN_ROLE, _admin);

        // Set asset reserve
        _setAssetReserve(_assetReserve);

        // Set whitelist
        // _setMintWhitelistEnforcement(true);
        // _setRedeemWhitelistEnforcement(true);

        // Set order waiting period
        _setOrderWaitingPeriod(7 days);
    }

    /*//////////////////////////////////////////////////////////////
                             ADMIN FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /// @notice Configures an asset
    /// @param _collateralAsset Address of the collateral asset
    /// @param _minter Address of the minter contract
    /// @param _redeemer Address of the redeemer contract
    function configureAsset(address _collateralAsset, address _minter, address _redeemer)
        external
        onlyRole(DEFAULT_ADMIN_ROLE)
    {
        if (_collateralAsset == address(ELUSD)) revert AssetNotSupported();
        _setMinter(_collateralAsset, _minter);
        _setRedeemer(_collateralAsset, _redeemer);
    }

    /// @notice Sets the asset reserve
    /// @param _assetReserve Address of the asset reserve
    function setAssetReserve(address _assetReserve) external onlyRole(DEFAULT_ADMIN_ROLE) {
        _setAssetReserve(_assetReserve);
    }

    /// @notice Sets the order waiting
    /// @param _orderWaitingPeriod Duration of the order waiting period
    function setOrderWaitingPeriod(uint24 _orderWaitingPeriod) external onlyRole(DEFAULT_ADMIN_ROLE) {
        _setOrderWaitingPeriod(_orderWaitingPeriod);
    }

    /// @notice Pauses the contract
    function pause() external onlyRole(PAUSER_ROLE) {
        _pause();
    }

    /// @notice Unpauses the contract
    function unpause() external onlyRole(PAUSER_ROLE) {
        _unpause();
    }

    /// @notice Sets the mint whitelist enforcement
    /// @param _enabled Boolean indicating whether the mint whitelist enforcement should be enabled
    function setMintWhitelistEnforcement(bool _enabled) external onlyRole(WHITELISTER_ROLE) {
        _setMintWhitelistEnforcement(_enabled);
    }

    /// @notice Sets the redeem whitelist enforcement
    /// @param _enabled Boolean indicating whether the redeem whitelist enforcement should be enabled
    function setRedeemWhitelistEnforcement(bool _enabled) external onlyRole(WHITELISTER_ROLE) {
        _setRedeemWhitelistEnforcement(_enabled);
    }

    /// @notice Sets a user's mint whitelist status
    /// @param _user Address of the user
    /// @param _whitelisted Boolean indicating whether the user should be whitelisted
    function setMintWhitelisted(address _user, bool _whitelisted) external onlyRole(WHITELISTER_ROLE) {
        _setMintWhitelisted(_user, _whitelisted);
    }

    /// @notice Sets a user's redeem whitelist status
    /// @param _user Address of the user
    /// @param _whitelisted Boolean indicating whether the user should be whitelisted
    function setRedeemWhitelisted(address _user, bool _whitelisted) external onlyRole(WHITELISTER_ROLE) {
        _setRedeemWhitelisted(_user, _whitelisted);
    }

    /*//////////////////////////////////////////////////////////////
                        REDEMPTION KEEPER FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /// @notice Serves a mint request
    /// @param _requestId ID of the mint request
    function serveMintRequest(uint256 _requestId) external onlyRole(KEEPER_ROLE) {
        if (mintRequestStatus[_requestId] != RequestStatus.PENDING) revert InvalidRequestStatus();
        Order memory order = mintRequests[_requestId];
        _mint(order);
        mintRequestStatus[_requestId] = RequestStatus.COMPLETED;
        emit ServeRequestMint(_requestId);
    }

    /// @notice Cancels a mint request
    /// @param _requestId ID of the mint request
    function cancelMintRequest(uint256 _requestId) external onlyRole(KEEPER_ROLE) {
        if (mintRequestStatus[_requestId] != RequestStatus.PENDING) revert InvalidRequestStatus();
        Order memory order = mintRequests[_requestId];
        mintRequestStatus[_requestId] = RequestStatus.CANCELLED;
        IERC20(order.collateralAsset).safeTransfer(order.benefactor, order.collateralAmount);
        emit MintRequestCancelled(_requestId);
    }

    /// @notice Serves a redemption request
    /// @param _requestId ID of the redemption request
    function serveRedemptionRequest(uint256 _requestId) external onlyRole(KEEPER_ROLE) {
        if (redemptionRequestStatus[_requestId] != RequestStatus.PENDING) revert InvalidRequestStatus();
        Order memory order = redemptionRequests[_requestId];

        address originalBenefactor = order.benefactor;
        // ELUSD have been transferred to the router, it becomes the benefactor
        order.benefactor = address(this);
        _redeem(order, originalBenefactor);
        redemptionRequestStatus[_requestId] = RequestStatus.COMPLETED;
        emit ServeRequestRedemption(_requestId);
    }

    /// @notice Cancels a redemption request
    /// @param _requestId ID of the redemption request
    function cancelRedemptionRequest(uint256 _requestId) external onlyRole(KEEPER_ROLE) {
        if (redemptionRequestStatus[_requestId] != RequestStatus.PENDING) revert InvalidRequestStatus();
        Order memory order = redemptionRequests[_requestId];
        ELUSD.safeTransfer(order.benefactor, order.elusdAmount);
        redemptionRequestStatus[_requestId] = RequestStatus.CANCELLED;
        emit RedemptionRequestCancelled(_requestId);
    }

    /*//////////////////////////////////////////////////////////////
                             ENTRYPOINT FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /// @notice Mints ELUSD using collateral
    /// @param _beneficiary Address that will receive the minted ELUSD
    /// @param _collateralAsset Address of the collateral asset
    /// @param _collateralAmount Amount of collateral to deposit
    /// @param _minElusdAmount Minimum amount of ELUSD to receive (slippage protection)
    /// @param _additionalData Additional data for the order, in case of future use for minters / redeemers
    function mint(
        address _beneficiary,
        address _collateralAsset,
        uint256 _collateralAmount,
        uint256 _minElusdAmount,
        bytes calldata _additionalData
    ) external whenNotPaused enforceMintWhitelist(msg.sender) {
        if (_collateralAsset == address(0) || _collateralAmount == 0 || _beneficiary == address(0)) revert ZeroInput();
        if (minters[_collateralAsset] == IMinter(address(0))) revert AssetNotSupported();

        // Transfer funds to the router
        IERC20(_collateralAsset).safeTransferFrom(msg.sender, address(this), _collateralAmount);

        // Create order
        Order memory order = Order({
            orderType: OrderType.MINT,
            expiry: block.timestamp + orderWaitingPeriod,
            benefactor: msg.sender,
            beneficiary: _beneficiary,
            collateralAsset: _collateralAsset,
            collateralAmount: _collateralAmount,
            elusdAmount: _minElusdAmount,
            additionalData: _additionalData
        });

        MintRedeemMode mintMode = getMintMode(order.collateralAsset, order.collateralAmount);
        mintMode == MintRedeemMode.INSTANT ? _mint(order) : _requestMint(order);
    }

    /// @notice Redeems ELUSD for collateral
    /// @param _beneficiary Address that will receive the redeemed collateral
    /// @param _collateralAsset Address of the collateral asset
    /// @param _elusdAmount Amount of ELUSD to redeem
    /// @param _minCollateralAmount Minimum amount of collateral to receive (slippage protection)
    /// @param _additionalData Additional data for the order, in case of future use for minters / redeemers
    // checked
    function redeem(
        address _beneficiary,
        address _collateralAsset,
        uint256 _elusdAmount,
        uint256 _minCollateralAmount,
        bytes calldata _additionalData
    ) external whenNotPaused enforceRedeemWhitelist(msg.sender) {
        if (_collateralAsset == address(0) || _elusdAmount == 0 || _beneficiary == address(0)) revert ZeroInput();
        if (redeemers[_collateralAsset] == IRedeemer(address(0))) revert AssetNotSupported();

        // Create order
        Order memory order = Order({
            orderType: OrderType.REDEEM,
            expiry: block.timestamp + orderWaitingPeriod,
            benefactor: msg.sender,
            beneficiary: _beneficiary,
            collateralAsset: _collateralAsset,
            collateralAmount: _minCollateralAmount,
            elusdAmount: _elusdAmount,
            additionalData: _additionalData
        });

        MintRedeemMode redemptionMode = getRedemptionMode(order.collateralAsset, order.elusdAmount);
        redemptionMode == MintRedeemMode.INSTANT ? _redeem(order, order.benefactor) : _requestRedemption(order);
    }

    /*//////////////////////////////////////////////////////////////
                             VIEW FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /// @notice Gets a quote for the amount of ELUSD that would be minted for a given amount of collateral
    /// @param _collateralAsset Address of the collateral asset
    /// @param _amount Amount of collateral to quote
    /// @return The amount of ELUSD that would be minted
    function quoteDeposit(address _collateralAsset, uint256 _amount) external view returns (uint256) {
        return minters[_collateralAsset].quoteDeposit(_collateralAsset, _amount);
    }

    /// @notice Gets the mint mode for a given collateral asset and amount
    /// @param _collateralAsset Address of the collateral asset
    /// @param _amount Amount of collateral to mint
    /// @return The mint mode, if INSTANT, the mint will be served immediately, if QUEUED, the mint will be queued and served later
    function getMintMode(address _collateralAsset, uint256 _amount) public view returns (MintRedeemMode) {
        return minters[_collateralAsset].getMintMode(_collateralAsset, _amount);
    }

    /// @notice Gets the redemption mode for a given collateral asset and ELUSD amount
    /// @param _collateralAsset Address of the collateral asset
    /// @param _elusdAmount Amount of ELUSD to redeem
    /// @return The redemption mode, if INSTANT, the redemption will be served immediately, if QUEUED, the redemption will be queued and served later
    function getRedemptionMode(address _collateralAsset, uint256 _elusdAmount) public view returns (MintRedeemMode) {
        return redeemers[_collateralAsset].getRedemptionMode(_collateralAsset, _elusdAmount);
    }

    /// @notice Gets a quote for the amount of collateral that would be redeemed for a given amount of ELUSD
    /// @param _collateralAsset Address of the collateral asset
    /// @param _elusdAmount Amount of ELUSD to redeem
    /// @return The amount of collateral that would be redeemed
    function quoteRedemption(address _collateralAsset, uint256 _elusdAmount) external view returns (uint256) {
        return redeemers[_collateralAsset].quoteRedeem(_collateralAsset, _elusdAmount);
    }

    /// @notice Gets the pending mint requests
    /// @return The pending mint requests
    /// @dev This is to be used offchain
    function getPendingMintRequests() external view returns (Order[] memory, uint256[] memory) {
        uint256 count = 0;
        Order[] memory pendingRequests = new Order[](mintRequestId);
        uint256[] memory pendingRequestIds = new uint256[](mintRequestId);

        for (uint256 i = 0; i < mintRequestId; i++) {
            if (mintRequestStatus[i] == RequestStatus.PENDING && mintRequests[i].expiry > block.timestamp) {
                pendingRequests[count] = mintRequests[i];
                pendingRequestIds[count] = i;
                count++;
            }
        }

        // Resize arrays to actual count using assembly
        assembly {
            mstore(pendingRequests, count)
            mstore(pendingRequestIds, count)
        }

        return (pendingRequests, pendingRequestIds);
    }

    /// @notice Gets the pending mint requests
    /// @param _startIndex The start index of the pending mint requests
    /// @param _endIndex The end index of the pending mint requests
    /// @return The pending mint requests
    /// @dev This is to be used offchain
    function getPendingMintRequests(uint256 _startIndex, uint256 _endIndex)
        external
        view
        returns (Order[] memory, uint256[] memory)
    {
        uint256 count = 0;
        uint256 length = _endIndex - _startIndex;
        Order[] memory pendingRequests = new Order[](length);
        uint256[] memory pendingRequestIds = new uint256[](length);

        for (uint256 i = _startIndex; i < _endIndex; i++) {
            if (mintRequestStatus[i] == RequestStatus.PENDING && mintRequests[i].expiry > block.timestamp) {
                pendingRequests[count] = mintRequests[i];
                pendingRequestIds[count] = i;
                count++;
            }
        }

        // Resize arrays to actual count using assembly
        assembly {
            mstore(pendingRequests, count)
            mstore(pendingRequestIds, count)
        }

        return (pendingRequests, pendingRequestIds);
    }

    /// @notice Gets the pending redemption requests
    /// @return The pending redemption requests
    /// @dev This is to be used offchain
    function getPendingRedemptionRequests() external view returns (Order[] memory, uint256[] memory) {
        uint256 count = 0;
        Order[] memory pendingRequests = new Order[](redemptionRequestId);
        uint256[] memory pendingRequestIds = new uint256[](redemptionRequestId);

        for (uint256 i = 0; i < redemptionRequestId; i++) {
            if (redemptionRequestStatus[i] == RequestStatus.PENDING && redemptionRequests[i].expiry > block.timestamp) {
                pendingRequests[count] = redemptionRequests[i];
                pendingRequestIds[count] = i;
                count++;
            }
        }

        // Resize arrays to actual count using assembly
        assembly {
            mstore(pendingRequests, count)
            mstore(pendingRequestIds, count)
        }

        return (pendingRequests, pendingRequestIds);
    }

    /// @notice Gets the pending redemption requests
    /// @param _startIndex The start index of the pending redemption requests
    /// @param _endIndex The end index of the pending redemption requests
    /// @return The pending redemption requests
    /// @dev This is to be used offchain
    function getPendingRedemptionRequests(uint256 _startIndex, uint256 _endIndex)
        external
        view
        returns (Order[] memory, uint256[] memory)
    {
        uint256 count = 0;
        uint256 length = _endIndex - _startIndex;
        Order[] memory pendingRequests = new Order[](length);
        uint256[] memory pendingRequestIds = new uint256[](length);

        for (uint256 i = _startIndex; i < _endIndex; i++) {
            if (redemptionRequestStatus[i] == RequestStatus.PENDING && redemptionRequests[i].expiry > block.timestamp) {
                pendingRequests[count] = redemptionRequests[i];
                pendingRequestIds[count] = i;
                count++;
            }
        }

        // Resize arrays to actual count using assembly
        assembly {
            mstore(pendingRequests, count)
            mstore(pendingRequestIds, count)
        }

        return (pendingRequests, pendingRequestIds);
    }

    /*//////////////////////////////////////////////////////////////
                             INTERNAL FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    modifier enforceMintWhitelist(address _user) {
        if (isMintWhitelistEnforced && !isMintWhitelisted[_user]) revert Unauthorized();
        _;
    }

    modifier enforceRedeemWhitelist(address _user) {
        if (isRedeemWhitelistEnforced && !isRedeemWhitelisted[_user]) revert Unauthorized();
        _;
    }

    /// @notice Internal function to set a minter for an asset
    /// @param _collateralAsset Address of the collateral asset
    /// @param _minter Address of the minter contract
    function _setMinter(address _collateralAsset, address _minter) internal {
        if (_minter == address(0)) revert ZeroInput();
        IMinter minter = IMinter(_minter);
        if (!minter.isAssetSupported(_collateralAsset)) revert AssetNotSupported();
        minters[_collateralAsset] = minter;
        emit MinterSet(_collateralAsset, _minter);
    }

    /// @notice Internal function to set a redeemer for an asset
    /// @param _collateralAsset Address of the collateral asset
    /// @param _redeemer Address of the redeemer contract
    function _setRedeemer(address _collateralAsset, address _redeemer) internal {
        if (_redeemer == address(0)) revert ZeroInput();
        IRedeemer redeemer = IRedeemer(_redeemer);
        if (!redeemer.isAssetSupported(_collateralAsset)) revert AssetNotSupported();
        redeemers[_collateralAsset] = redeemer;
        emit RedeemerSet(_collateralAsset, _redeemer);
    }

    /// @notice Internal function to set the asset reserve
    /// @param _assetReserve Address of the asset reserve
    function _setAssetReserve(address _assetReserve) internal {
        if (_assetReserve == address(0)) revert ZeroInput();
        assetReserve = _assetReserve;
        emit AssetReserveSet(_assetReserve);
    }

    /// @notice Internal function to set the mint whitelist enforcement
    /// @param _enabled Boolean indicating whether the whitelist enforcement should be enabled
    function _setMintWhitelistEnforcement(bool _enabled) internal {
        isMintWhitelistEnforced = _enabled;
        emit MintWhitelistEnforcementSet(_enabled);
    }

    /// @notice Internal function to set the redeem whitelist enforcement
    /// @param _enabled Boolean indicating whether the redeem whitelist enforcement should be enabled
    function _setRedeemWhitelistEnforcement(bool _enabled) internal {
        isRedeemWhitelistEnforced = _enabled;
        emit RedeemWhitelistEnforcementSet(_enabled);
    }

    /// @notice Internal function to set a user's mint whitelist status
    /// @param _user Address of the user
    /// @param _whitelisted Boolean indicating whether the user should be whitelisted
    function _setMintWhitelisted(address _user, bool _whitelisted) internal {
        isMintWhitelisted[_user] = _whitelisted;
        emit MintWhitelisted(_user, _whitelisted);
    }

    /// @notice Internal function to set a user's redeem whitelist status
    /// @param _user Address of the user
    /// @param _whitelisted Boolean indicating whether the user should be whitelisted
    function _setRedeemWhitelisted(address _user, bool _whitelisted) internal {
        isRedeemWhitelisted[_user] = _whitelisted;
        emit RedeemWhitelisted(_user, _whitelisted);
    }

    /// @notice Internal function to set the order waiting period
    /// @param _orderWaitingPeriod Duration of the order waiting period
    function _setOrderWaitingPeriod(uint24 _orderWaitingPeriod) internal {
        orderWaitingPeriod = _orderWaitingPeriod;
        emit OrderWaitingPeriodSet(_orderWaitingPeriod);
    }

    /// @notice Internal function to request a mint
    /// @param _order Order containing the mint details
    function _requestMint(Order memory _order) internal {
        mintRequests[mintRequestId] = _order;
        mintRequestStatus[mintRequestId] = RequestStatus.PENDING;
        emit RequestMint(mintRequestId, _order);

        mintRequestId++;
    }

    /// @notice Internal function to mint ELUSD
    /// @param _order Order containing the mint details
    function _mint(Order memory _order) internal {
        // Transfer funds to the asset reserve
        IERC20(_order.collateralAsset).safeTransfer(assetReserve, _order.collateralAmount);

        // Mint ELUSD
        uint256 amountMinted = minters[_order.collateralAsset].mint(_order);
        emit Mint(_order.benefactor, _order.beneficiary, _order.collateralAsset, _order.collateralAmount, amountMinted);
    }

    /// @notice Internal function to redeem ELUSD for collateral
    /// @param _order Order containing the redemption details
    function _redeem(Order memory _order, address _originalBenefactor) internal {
        uint256 collateralAmount = redeemers[_order.collateralAsset].redeem(_order);
        // send collateral to beneficiary
        IAssetReserve(assetReserve).processRedemption(_order.beneficiary, _order.collateralAsset, collateralAmount);

        emit Redeem(
            _originalBenefactor, _order.beneficiary, _order.collateralAsset, collateralAmount, _order.elusdAmount
        );
    }

    /// @notice Internal function to request a redemption
    /// @param _order Order containing the redemption details
    function _requestRedemption(Order memory _order) internal {
        ELUSD.safeTransferFrom(_order.benefactor, address(this), _order.elusdAmount);

        redemptionRequests[redemptionRequestId] = _order;
        redemptionRequestStatus[redemptionRequestId] = RequestStatus.PENDING;
        emit RequestRedemption(redemptionRequestId, _order);

        redemptionRequestId++;
    }
}
