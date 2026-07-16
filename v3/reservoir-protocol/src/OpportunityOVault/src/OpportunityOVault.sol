// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {OFT} from "lib/LayerZero-v2/packages/layerzero-v2/evm/oapp/contracts/oft/OFT.sol";
import {Origin} from "lib/LayerZero-v2/packages/layerzero-v2/evm/oapp/contracts/oapp/OApp.sol";
import {MessagingFee} from "lib/LayerZero-v2/packages/layerzero-v2/evm/oapp/contracts/oft/OFTCore.sol";
import {OptionsBuilder} from "lib/LayerZero-v2/packages/layerzero-v2/evm/oapp/contracts/oapp/libs/OptionsBuilder.sol";
import {IERC20} from "@openzeppelin/contracts/interfaces/IERC20.sol";
import {IERC20Metadata} from "@openzeppelin/contracts/interfaces/IERC20Metadata.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {AccessControl} from "@openzeppelin/contracts/access/AccessControl.sol";
import {ReentrancyGuard} from "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import {IERC4626} from "@openzeppelin/contracts/interfaces/IERC4626.sol";

/// @title OpportunityOVault - ERC4626 vault with LayerZero bridging and cross-chain state sync
contract OpportunityOVault is OFT, IERC4626, AccessControl, ReentrancyGuard {
    using SafeERC20 for IERC20;
    using OptionsBuilder for bytes;

    // Message types for LayerZero communication
    uint16 public constant MSG_TYPE_OFT_TRANSFER = 1;
    uint16 public constant MSG_TYPE_STATE_SYNC = 2;
    
    // State update operations
    enum StateUpdateType {
        UPDATE_RATE,
        UPDATE_REDEMPTION_PERIOD,
        UPDATE_INSTANT_FEE,
        BATCH_UPDATE
    }
    
    // Batch update structure
    struct BatchStateUpdate {
        bool updateRate;
        uint256 newRate;
        bool updateRedemptionPeriod;
        uint256 newRedemptionPeriod;
        bool updateInstantFee;
        uint256 newInstantFee;
    }

    // Custom errors
    error InvalidAdmin();
    error InvalidAsset();
    error InvalidEndpoint();
    error ZeroAmount();
    error ZeroShares();
    error ZeroReceiver();
    error InsufficientBalance();
    error InsufficientAllowance();
    error RateTooHigh();
    error RateExceedsMax();
    error InvalidPeriod();
    error FeeTooHigh();
    error InvalidReceiver();
    error NoActiveRequest();
    error TimeDeltaTooLarge();
    error OnlySourceChain();
    error OnlyDestinationChain();
    error BroadcastFailed();
    error UnknownMessageType();
    error AlreadyConfigured();
    error NotConfigured();
    error NoPeersConfigured();

    // Constants
    bytes32 public constant ADMIN_ROLE = keccak256("ADMIN_ROLE");
    uint256 public constant RAY = 1e27;
    uint256 public constant DEFAULT_INSTANT_FEE = 500; // 5%
    uint256 public constant MAX_ANNUAL_RATE = 0.50e27; // 50% APY maximum

    address public immutable ASSET;
    uint8 private immutable _assetDecimals;
    uint256 private immutable _decimalOffset;
    
    // Chain role configuration
    bool public immutable IS_SOURCE_CHAIN;
    
    struct RedemptionRequest {
        uint256 shares;
        uint256 unlockTime;
    }
    mapping(address => RedemptionRequest) public redemptionRequests;
    
    uint256 public redemptionPeriod;
    uint256 public instantRedemptionFeeBps;
    uint256 public currentRate;
    
    uint256 public lastUpdateTimestamp;
    uint256 public cumulativeRateFactor;
    uint256 public totalAssetsDeposited;
    
    // Cross-chain state sync tracking
    mapping(uint32 => bool) public configuredPeers;
    uint32[] public peerEndpoints;
    mapping(uint32 => uint256) public lastSyncTimestamp;
    uint256 public lastBroadcastNonce;
    
    
    event RateUpdated(uint256 oldRate, uint256 newRate, uint256 timestamp);
    event RedemptionPeriodUpdated(uint256 oldPeriod, uint256 newPeriod);
    event InstantFeeUpdated(uint256 oldFee, uint256 newFee);
    event RedemptionRequested(address indexed user, uint256 shares, uint256 unlockTime);
    event RedemptionCancelled(address indexed user, uint256 shares);
    event AdminWithdraw(address indexed token, uint256 amount, address indexed receiver);
    event StateBroadcast(uint256 indexed nonce, StateUpdateType updateType, bytes data, uint32[] destinations);
    event StateReceived(uint32 indexed sourceEid, StateUpdateType updateType, bytes data);
    event StateSyncFailed(uint32 indexed dstEid, uint256 nonce, bytes reason);
    
    /// @notice Receive function to accept ETH for LayerZero fees
    receive() external payable {}
    
    /// @notice Constructor
    constructor(
        string memory _name,
        string memory _symbol,
        address _lzEndpoint,
        address _delegate,
        address _admin,
        address _asset,
        uint256 _initialRate,
        bool _isSourceChain
    ) 
        OFT(_name, _symbol, _lzEndpoint, _delegate)
    {
        if (_asset == address(0)) revert InvalidAsset();
        if (_lzEndpoint == address(0)) revert InvalidEndpoint();
        
        // Grant DEFAULT_ADMIN_ROLE to deployer (_delegate)
        // Grant ADMIN_ROLE to specified admin address
        _grantRole(DEFAULT_ADMIN_ROLE, _delegate);
        if (_admin != address(0)) {
            _grantRole(ADMIN_ROLE, _admin);
        }
        
        ASSET = _asset;
        IS_SOURCE_CHAIN = _isSourceChain;
        
        // Get asset decimals and calculate offset for share decimal normalization
        _assetDecimals = IERC20Metadata(_asset).decimals();
        // Shares always have 18 decimals (from OFT/ERC20)
        // Offset converts asset amounts to 18-decimal shares
        _decimalOffset = 10 ** (18 - _assetDecimals);
        
        redemptionPeriod = 5 minutes; // Default to 5 minutes
        instantRedemptionFeeBps = DEFAULT_INSTANT_FEE;
        currentRate = _initialRate;
        
        lastUpdateTimestamp = block.timestamp;
        cumulativeRateFactor = RAY;
    }
    
    /// @notice Set annual yield rate (source chain only, automatically broadcasts)
    function setRate(uint256 newRate) external payable onlyRole(ADMIN_ROLE) {
        if (newRate > RAY) revert RateTooHigh();
        if (newRate > MAX_ANNUAL_RATE) revert RateExceedsMax();
        _updateRateFactor();
        emit RateUpdated(currentRate, newRate, block.timestamp);
        currentRate = newRate;
        
        // Automatic broadcast if source chain
        if (IS_SOURCE_CHAIN && peerEndpoints.length > 0) {
            _broadcastStateUpdate(
                StateUpdateType.UPDATE_RATE,
                abi.encode(newRate)
            );
        }
    }
    
    /// @notice Set redemption period (source chain only, automatically broadcasts)
    function setRedemptionPeriod(uint256 newPeriod) external payable onlyRole(ADMIN_ROLE) {
        emit RedemptionPeriodUpdated(redemptionPeriod, newPeriod);
        redemptionPeriod = newPeriod;
        
        // Automatic broadcast if source chain
        if (IS_SOURCE_CHAIN && peerEndpoints.length > 0) {
            _broadcastStateUpdate(
                StateUpdateType.UPDATE_REDEMPTION_PERIOD,
                abi.encode(newPeriod)
            );
        }
    }
    
    /// @notice Set instant redemption fee (source chain only, automatically broadcasts)
    function setInstantRedemptionFee(uint256 newFeeBps) external payable onlyRole(ADMIN_ROLE) {
        if (newFeeBps > 10000) revert FeeTooHigh();
        emit InstantFeeUpdated(instantRedemptionFeeBps, newFeeBps);
        instantRedemptionFeeBps = newFeeBps;
        
        // Automatic broadcast if source chain
        if (IS_SOURCE_CHAIN && peerEndpoints.length > 0) {
            _broadcastStateUpdate(
                StateUpdateType.UPDATE_INSTANT_FEE,
                abi.encode(newFeeBps)
            );
        }
    }
    
    /// @notice Returns the address of the underlying asset
    function asset() public view virtual override returns (address) {
        return ASSET;
    }
    
    /// @notice Maximum deposit amount (no limit)
    function maxDeposit(address receiver) public view virtual override returns (uint256) {
        receiver;
        return type(uint256).max;
    }
    
    /// @notice Preview shares received for depositing assets
    /// @dev Converts assets to 18-decimal shares
    function previewDeposit(uint256 assets) public view virtual override returns (uint256 shares) {
        return assets * _decimalOffset;
    }
    
    /// @notice Deposit assets and receive vault shares
    function deposit(uint256 assets, address receiver) 
        public 
        virtual 
        override 
        nonReentrant 
        returns (uint256 shares) 
    {
        if (assets == 0) revert ZeroAmount();
        if (receiver == address(0)) revert ZeroReceiver();
        
        _updateRateFactor();
        shares = previewDeposit(assets);
        IERC20(ASSET).safeTransferFrom(msg.sender, address(this), assets);
        _mint(receiver, shares);
        totalAssetsDeposited += assets;
        
        emit Deposit(msg.sender, receiver, assets, shares);
    }
    
    /// @notice Maximum shares that can be minted (no limit)
    function maxMint(address receiver) public view virtual override returns (uint256) {
        receiver;
        return type(uint256).max;
    }
    
    /// @notice Preview assets required to mint exact shares
    /// @dev Converts 18-decimal shares to asset decimals
    function previewMint(uint256 shares) public view virtual override returns (uint256 assets) {
        return shares / _decimalOffset;
    }
    
    /// @notice Mint exact amount of shares by depositing assets
    function mint(uint256 shares, address receiver) 
        public 
        virtual 
        override 
        nonReentrant 
        returns (uint256 assets) 
    {
        if (shares == 0) revert ZeroShares();
        if (receiver == address(0)) revert ZeroReceiver();
        
        _updateRateFactor();
        assets = previewMint(shares);
        IERC20(ASSET).safeTransferFrom(msg.sender, address(this), assets);
        _mint(receiver, shares);
        totalAssetsDeposited += assets;
        
        emit Deposit(msg.sender, receiver, assets, shares);
    }
    
    /// @notice Maximum assets that can be withdrawn by owner
    function maxWithdraw(address owner) public view virtual override returns (uint256 maxAssets) {
        uint256 ownerShares = balanceOf(owner);
        return convertToAssets(ownerShares);
    }
    
    /// @notice Preview shares required to withdraw exact assets
    /// @dev Converts asset amount to 18-decimal shares accounting for yield and fees
    function previewWithdraw(uint256 assets) public view virtual override returns (uint256 shares) {
        uint256 currentFactor = _getCurrentRateFactor();
        uint256 feeMultiplier = 10000 - instantRedemptionFeeBps;
        // Convert assets to 18 decimals first, then calculate shares with yield and fee
        uint256 assetsIn18Decimals = assets * _decimalOffset;
        shares = (assetsIn18Decimals * RAY * 10000) / (currentFactor * feeMultiplier);
    }
    
    /// @notice Withdraw exact amount of assets by burning shares
    function withdraw(uint256 assets, address receiver, address owner) 
        public 
        virtual 
        override 
        nonReentrant 
        returns (uint256 shares) 
    {
        if (assets == 0) revert ZeroAmount();
        if (receiver == address(0)) revert ZeroReceiver();
        
        _updateRateFactor();
        shares = previewWithdraw(assets);
        if (msg.sender != owner) {
            uint256 currentAllowance = allowance(owner, msg.sender);
            if (currentAllowance < shares) revert InsufficientAllowance();
            if (currentAllowance != type(uint256).max) {
                _approve(owner, msg.sender, currentAllowance - shares);
            }
        }
        if (balanceOf(owner) < shares) revert InsufficientBalance();
        _burn(owner, shares);
        // Update totalAssetsDeposited: convert shares back to asset decimals
        totalAssetsDeposited -= shares / _decimalOffset;
        IERC20(ASSET).safeTransfer(receiver, assets);
        
        emit Withdraw(msg.sender, receiver, owner, assets, shares);
    }
    
    /// @notice Maximum shares that can be redeemed by owner
    function maxRedeem(address owner) public view virtual override returns (uint256 maxShares) {
        return balanceOf(owner);
    }
    
    /// @notice Preview assets received for redeeming shares
    /// @dev Applies yield factor, subtracts fee, then converts to asset decimals
    function previewRedeem(uint256 shares) public view virtual override returns (uint256 assets) {
        uint256 currentFactor = _getCurrentRateFactor();
        // Calculate assets in 18 decimals with yield
        uint256 assetsIn18DecimalsBeforeFee = (shares * currentFactor) / RAY;
        uint256 fee = (assetsIn18DecimalsBeforeFee * instantRedemptionFeeBps) / 10000;
        uint256 assetsIn18Decimals = assetsIn18DecimalsBeforeFee - fee;
        // Convert to asset decimals
        assets = assetsIn18Decimals / _decimalOffset;
    }
    
    /// @notice Redeem shares for assets
    function redeem(uint256 shares, address receiver, address owner) 
        public 
        virtual 
        override 
        nonReentrant 
        returns (uint256 assets) 
    {
        if (shares == 0) revert ZeroShares();
        if (receiver == address(0)) revert ZeroReceiver();
        
        _updateRateFactor();
        
        // Check allowance if caller is not owner
        if (msg.sender != owner) {
            uint256 currentAllowance = allowance(owner, msg.sender);
            if (currentAllowance < shares) revert InsufficientAllowance();
            if (currentAllowance != type(uint256).max) {
                _approve(owner, msg.sender, currentAllowance - shares);
            }
        }
        
        if (balanceOf(owner) < shares) revert InsufficientBalance();
        RedemptionRequest storage request = redemptionRequests[owner];
        uint256 coveredShares = 0;
        if (block.timestamp >= request.unlockTime && request.shares > 0) {
            coveredShares = shares > request.shares ? request.shares : shares;
            request.shares -= coveredShares;
        }
        
        uint256 currentFactor = _getCurrentRateFactor();
        // Calculate total assets in 18 decimals
        uint256 totalAssetsIn18Decimals = (shares * currentFactor) / RAY;
        
        if (coveredShares < shares) {
            // Uncovered shares incur instant redemption fee
            uint256 uncoveredShares = shares - coveredShares;
            uint256 uncoveredValueIn18Decimals = (uncoveredShares * currentFactor) / RAY;
            uint256 fee = (uncoveredValueIn18Decimals * instantRedemptionFeeBps) / 10000;
            uint256 assetsIn18Decimals = totalAssetsIn18Decimals - fee;
            assets = assetsIn18Decimals / _decimalOffset;
        } else {
            // All shares covered by redemption request - no fee
            assets = totalAssetsIn18Decimals / _decimalOffset;
        }
        
        _burn(owner, shares);
        // Update totalAssetsDeposited: convert shares back to asset decimals
        totalAssetsDeposited -= shares / _decimalOffset;
        IERC20(ASSET).safeTransfer(receiver, assets);
        
        emit Withdraw(msg.sender, receiver, owner, assets, shares);
    }
    
    /// @notice Request redemption for shares (fee-free after waiting period)
    function requestRedemption(uint256 shares) external nonReentrant {
        if (shares == 0) revert ZeroShares();
        if (balanceOf(msg.sender) < shares) revert InsufficientBalance();
        
        redemptionRequests[msg.sender] = RedemptionRequest({
            shares: shares,
            unlockTime: block.timestamp + redemptionPeriod
        });
        
        emit RedemptionRequested(msg.sender, shares, block.timestamp + redemptionPeriod);
    }
    
    /// @notice Cancel redemption request
    function cancelRedemption() external {
        RedemptionRequest memory request = redemptionRequests[msg.sender];
        if (request.shares == 0) revert NoActiveRequest();
        
        delete redemptionRequests[msg.sender];
        
        emit RedemptionCancelled(msg.sender, request.shares);
    }
    
    /// @notice Admin emergency withdraw function
    function adminWithdraw(
        address token,
        uint256 amount,
        address receiver
    ) external onlyRole(ADMIN_ROLE) {
        if (receiver == address(0)) revert InvalidReceiver();
        if (amount == 0) revert ZeroAmount();
        
        IERC20(token).safeTransfer(receiver, amount);
        
        emit AdminWithdraw(token, amount, receiver);
    }
    
    /// @notice Get total assets in vault
    /// @dev Converts total supply (18 decimals) to asset decimals with yield
    function totalAssets() public view override returns (uint256) {
        // Total supply is in 18 decimals, apply yield factor
        uint256 assetsIn18Decimals = (totalSupply() * _getCurrentRateFactor()) / RAY;
        // Convert to asset decimals
        return assetsIn18Decimals / _decimalOffset;
    }
    
    /// @notice Convert shares to assets (with yield)
    /// @dev Applies rate factor then converts from 18-decimal shares to asset decimals
    function convertToAssets(uint256 shares) public view override returns (uint256) {
        // Apply yield factor to shares (in 18 decimals)
        uint256 assetsIn18Decimals = (shares * _getCurrentRateFactor()) / RAY;
        // Convert to asset decimals
        return assetsIn18Decimals / _decimalOffset;
    }
    
    /// @notice Convert assets to shares (1:1 principal)
    /// @dev Converts asset decimals to 18-decimal shares
    function convertToShares(uint256 assets) public view override returns (uint256) {
        return assets * _decimalOffset;
    }
    
    /// @notice Get current APY
    function apy() external view returns (uint256) {
        return _compoundFactor(currentRate, 365 days);
    }
    
    function _updateRateFactor() internal {
        if (block.timestamp == lastUpdateTimestamp) return;
        
        uint256 timeElapsed = block.timestamp - lastUpdateTimestamp;
        uint256 growthFactor = _compoundFactor(currentRate, timeElapsed);
        
        cumulativeRateFactor = (cumulativeRateFactor * growthFactor) / RAY;
        lastUpdateTimestamp = block.timestamp;
    }
    
    function _getCurrentRateFactor() internal view returns (uint256) {
        if (block.timestamp == lastUpdateTimestamp) {
            return cumulativeRateFactor;
        }
        
        uint256 timeElapsed = block.timestamp - lastUpdateTimestamp;
        uint256 growthFactor = _compoundFactor(currentRate, timeElapsed);
        
        return (cumulativeRateFactor * growthFactor) / RAY;
    }
    
    /// @notice Calculate compound interest factor using Taylor series
    function _compoundFactor(uint256 rate, uint256 timeDelta) 
        internal 
        pure 
        returns (uint256) 
    {
        if (timeDelta == 0 || rate == 0) return RAY;
        if (timeDelta > 100 * 365 days) revert TimeDeltaTooLarge();
        uint256 ratePerSecond = rate / 365 days;
        uint256 x = ratePerSecond * timeDelta;
        uint256 term1 = x;
        uint256 term2 = (x / 2) * x / RAY;
        uint256 term3 = (x / 6) * x / RAY * x / RAY;
        return RAY + term1 + term2 + term3;
    }
    
    // ============================================
    // Cross-Chain State Synchronization Functions
    // ============================================
    
    /// @notice Batch update multiple state parameters atomically
    function batchUpdateState(BatchStateUpdate calldata updates) 
        external 
        payable
        onlyRole(ADMIN_ROLE) 
    {
        if (!IS_SOURCE_CHAIN) revert OnlySourceChain();
        
        // Apply updates locally
        if (updates.updateRate) {
            if (updates.newRate > RAY) revert RateTooHigh();
            if (updates.newRate > MAX_ANNUAL_RATE) revert RateExceedsMax();
            _updateRateFactor();
            emit RateUpdated(currentRate, updates.newRate, block.timestamp);
            currentRate = updates.newRate;
        }
        
        if (updates.updateRedemptionPeriod) {
            emit RedemptionPeriodUpdated(redemptionPeriod, updates.newRedemptionPeriod);
            redemptionPeriod = updates.newRedemptionPeriod;
        }
        
        if (updates.updateInstantFee) {
            if (updates.newInstantFee > 10000) revert FeeTooHigh();
            emit InstantFeeUpdated(instantRedemptionFeeBps, updates.newInstantFee);
            instantRedemptionFeeBps = updates.newInstantFee;
        }
        
        // Broadcast batch update
        if (peerEndpoints.length > 0) {
            _broadcastStateUpdate(
                StateUpdateType.BATCH_UPDATE,
                abi.encode(updates)
            );
        }
    }
    
    /// @notice Add a peer endpoint for state synchronization
    function addPeerEndpoint(uint32 eid) external onlyRole(ADMIN_ROLE) {
        if (configuredPeers[eid]) revert AlreadyConfigured();
        configuredPeers[eid] = true;
        peerEndpoints.push(eid);
    }
    
    /// @notice Remove a peer endpoint
    function removePeerEndpoint(uint32 eid) external onlyRole(ADMIN_ROLE) {
        if (!configuredPeers[eid]) revert NotConfigured();
        configuredPeers[eid] = false;
        
        // Remove from array
        for (uint256 i = 0; i < peerEndpoints.length; i++) {
            if (peerEndpoints[i] == eid) {
                peerEndpoints[i] = peerEndpoints[peerEndpoints.length - 1];
                peerEndpoints.pop();
                break;
            }
        }
    }
    
    /// @notice Get all configured peer endpoints
    function getPeerEndpoints() external view returns (uint32[] memory) {
        return peerEndpoints;
    }
    
    /// @notice Quote the cost of broadcasting a state update
    function quoteStateBroadcast(
        StateUpdateType updateType,
        bytes calldata data
    ) external view returns (uint256 totalNativeFee) {
        bytes memory message = abi.encode(
            MSG_TYPE_STATE_SYNC,
            lastBroadcastNonce + 1,
            updateType,
            data
        );
        
        bytes memory options = _getStateSyncOptions();
        
        for (uint256 i = 0; i < peerEndpoints.length; i++) {
            MessagingFee memory fee = _quote(peerEndpoints[i], message, options, false);
            totalNativeFee += fee.nativeFee;
        }
    }
    
    /// @notice Override _lzReceive to handle both OFT transfers and state sync
    function _lzReceive(
        Origin calldata _origin,
        bytes32 _guid,
        bytes calldata _message,
        address _executor,
        bytes calldata _extraData
    ) internal virtual override {
        // Decode message type from first 32 bytes
        uint16 msgType = abi.decode(_message[:32], (uint16));
        
        if (msgType == MSG_TYPE_OFT_TRANSFER) {
            // Call parent OFT implementation for token transfers
            super._lzReceive(_origin, _guid, _message, _executor, _extraData);
        } else if (msgType == MSG_TYPE_STATE_SYNC) {
            _handleStateSync(_origin, _message);
        } else {
            revert UnknownMessageType();
        }
    }
    
    /// @notice Broadcast state update to all peer chains (internal)
    function _broadcastStateUpdate(
        StateUpdateType updateType,
        bytes memory data
    ) internal {
        if (!IS_SOURCE_CHAIN) revert OnlySourceChain();
        if (peerEndpoints.length == 0) revert NoPeersConfigured();
        
        lastBroadcastNonce++;
        
        // Encode message with type identifier
        bytes memory message = abi.encode(
            MSG_TYPE_STATE_SYNC,
            lastBroadcastNonce,
            updateType,
            data
        );
        
        bytes memory options = _getStateSyncOptions();
        
        // Send to all peer chains (all-or-nothing)
        // Note: msg.value provides the native fee for LayerZero
        uint32[] memory destinations = new uint32[](peerEndpoints.length);
        uint256 totalFeesUsed = 0;
        
        for (uint256 i = 0; i < peerEndpoints.length; i++) {
            uint32 dstEid = peerEndpoints[i];
            destinations[i] = dstEid;
            
            // Get fee quote
            MessagingFee memory fee = _quote(dstEid, message, options, false);
            
            // Calculate remaining balance for this send
            uint256 remainingValue = msg.value - totalFeesUsed;
            
            // Send message with remaining value (LayerZero will use what it needs and refund excess)
            _lzSend(
                dstEid, 
                message, 
                options, 
                MessagingFee(remainingValue, 0),  // Use remaining value, not quoted fee
                payable(msg.sender)
            );
            
            // Track approximate fee used (actual may be slightly different)
            totalFeesUsed += fee.nativeFee;
            lastSyncTimestamp[dstEid] = block.timestamp;
        }
        
        emit StateBroadcast(lastBroadcastNonce, updateType, data, destinations);
    }
    
    /// @notice Handle incoming state synchronization message
    function _handleStateSync(
        Origin calldata _origin,
        bytes calldata _message
    ) internal {
        // Only accept state updates on non-source chains
        if (IS_SOURCE_CHAIN) revert OnlyDestinationChain();
        
        // Decode message
        (
            , // msgType already decoded
            uint256 nonce,
            StateUpdateType updateType,
            bytes memory data
        ) = abi.decode(_message, (uint16, uint256, StateUpdateType, bytes));
        
        // Apply state update
        if (updateType == StateUpdateType.UPDATE_RATE) {
            uint256 newRate = abi.decode(data, (uint256));
            _updateRateFactor();
            emit RateUpdated(currentRate, newRate, block.timestamp);
            currentRate = newRate;
            
        } else if (updateType == StateUpdateType.UPDATE_REDEMPTION_PERIOD) {
            uint256 newPeriod = abi.decode(data, (uint256));
            emit RedemptionPeriodUpdated(redemptionPeriod, newPeriod);
            redemptionPeriod = newPeriod;
            
        } else if (updateType == StateUpdateType.UPDATE_INSTANT_FEE) {
            uint256 newFeeBps = abi.decode(data, (uint256));
            emit InstantFeeUpdated(instantRedemptionFeeBps, newFeeBps);
            instantRedemptionFeeBps = newFeeBps;
            
        } else if (updateType == StateUpdateType.BATCH_UPDATE) {
            BatchStateUpdate memory updates = abi.decode(data, (BatchStateUpdate));
            
            if (updates.updateRate) {
                _updateRateFactor();
                emit RateUpdated(currentRate, updates.newRate, block.timestamp);
                currentRate = updates.newRate;
            }
            if (updates.updateRedemptionPeriod) {
                emit RedemptionPeriodUpdated(redemptionPeriod, updates.newRedemptionPeriod);
                redemptionPeriod = updates.newRedemptionPeriod;
            }
            if (updates.updateInstantFee) {
                emit InstantFeeUpdated(instantRedemptionFeeBps, updates.newInstantFee);
                instantRedemptionFeeBps = updates.newInstantFee;
            }
        }
        
        emit StateReceived(_origin.srcEid, updateType, data);
    }
    
    /// @notice Get default LayerZero options for state sync messages
    function _getStateSyncOptions() internal pure returns (bytes memory) {
        // Configure gas for destination execution (increased to 400k for reliable delivery)
        return OptionsBuilder.newOptions().addExecutorLzReceiveOption(400000, 0);
    }
}
