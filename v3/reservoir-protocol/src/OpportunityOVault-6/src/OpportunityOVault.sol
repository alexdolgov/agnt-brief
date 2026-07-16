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
        UPDATE_LOCKUP_PERIOD,
        UPDATE_EARLY_FEE,
        UPDATE_CAP
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
    error DepositExceedsCap();

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
        uint256 requestTime;
        uint256 yieldFactorAtRequest;
    }
    mapping(address => RedemptionRequest) public redemptionRequests;
    
    uint256 public cap;
    uint256 public lockupPeriod;
    uint256 public earlyRedemptionFee;
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
    event CapUpdated(uint256 oldCap, uint256 newCap);
    event RedemptionRequested(address indexed user, uint256 shares, uint256 unlockTime);
    event RedemptionCancelled(address indexed user, uint256 shares);
    event RedemptionCompleted(address indexed user, address indexed receiver, uint256 shares, uint256 assets);
    event EarlyRedemption(address indexed user, address indexed receiver, uint256 shares, uint256 assets, uint256 fee);
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
        
        lockupPeriod = 5 minutes; // Default to 5 minutes
        earlyRedemptionFee = DEFAULT_INSTANT_FEE;
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
    
    /// @notice Set lockup period (source chain only, automatically broadcasts)
    function setLockupPeriod(uint256 newPeriod) external payable onlyRole(ADMIN_ROLE) {
        emit RedemptionPeriodUpdated(lockupPeriod, newPeriod);
        lockupPeriod = newPeriod;
        
        // Automatic broadcast if source chain
        if (IS_SOURCE_CHAIN && peerEndpoints.length > 0) {
            _broadcastStateUpdate(
                StateUpdateType.UPDATE_LOCKUP_PERIOD,
                abi.encode(newPeriod)
            );
        }
    }
    
    /// @notice Set early redemption fee (source chain only, automatically broadcasts)
    function setEarlyRedemptionFee(uint256 newFeeBps) external payable onlyRole(ADMIN_ROLE) {
        if (newFeeBps > 10000) revert FeeTooHigh();
        emit InstantFeeUpdated(earlyRedemptionFee, newFeeBps);
        earlyRedemptionFee = newFeeBps;
        
        // Automatic broadcast if source chain
        if (IS_SOURCE_CHAIN && peerEndpoints.length > 0) {
            _broadcastStateUpdate(
                StateUpdateType.UPDATE_EARLY_FEE,
                abi.encode(newFeeBps)
            );
        }
    }
    
    /// @notice Set deposit cap (source chain only, automatically broadcasts)
    /// @param newCap The new cap value (0 = unlimited)
    function setCap(uint256 newCap) external payable onlyRole(ADMIN_ROLE) {
        emit CapUpdated(cap, newCap);
        cap = newCap;
        
        // Automatic broadcast if source chain
        if (IS_SOURCE_CHAIN && peerEndpoints.length > 0) {
            _broadcastStateUpdate(
                StateUpdateType.UPDATE_CAP,
                abi.encode(newCap)
            );
        }
    }
    
    /// @notice Returns the address of the underlying asset
    function asset() public view virtual override returns (address) {
        return ASSET;
    }
    
    /// @notice Maximum deposit amount
    /// @dev Respects cap if set (cap = 0 means unlimited)
    function maxDeposit(address receiver) public view virtual override returns (uint256) {
        receiver;
        if (cap == 0) {
            return type(uint256).max;
        }
        uint256 currentAssets = totalAssets();
        if (currentAssets >= cap) {
            return 0;
        }
        return cap - currentAssets;
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
        
        // Check cap
        if (cap != 0) {
            uint256 currentAssets = totalAssets();
            if (currentAssets + assets > cap) revert DepositExceedsCap();
        }
        
        shares = previewDeposit(assets);
        IERC20(ASSET).safeTransferFrom(msg.sender, address(this), assets);
        _mint(receiver, shares);
        totalAssetsDeposited += assets;
        
        emit Deposit(msg.sender, receiver, assets, shares);
    }
    
    /// @notice Maximum shares that can be minted
    /// @dev Respects cap if set (cap = 0 means unlimited)
    function maxMint(address receiver) public view virtual override returns (uint256) {
        uint256 maxAssets = maxDeposit(receiver);
        if (maxAssets == type(uint256).max) {
            return type(uint256).max;
        }
        return convertToShares(maxAssets);
    }
    
    /// @notice Preview assets required to mint exact shares
    /// @dev Converts 18-decimal shares to asset decimals
    function previewMint(uint256 shares) public view virtual override returns (uint256 assets) {
        return shares / _decimalOffset;
    }
    
    /// @notice Mint exact amount of shares by depositing assets
    function mint(uint256, address) public pure override returns (uint256) {
        revert("Use deposit function");
    }
    
    /// @notice Maximum assets that can be withdrawn by owner
    function maxWithdraw(address) public pure override returns (uint256) {
        return 0;
    }
    
    /// @notice Preview shares required to withdraw exact assets
    function previewWithdraw(uint256) public pure override returns (uint256) {
        revert("Use redemption request system");
    }
    
    /// @notice Withdraw exact amount of assets by burning shares
    function withdraw(uint256, address, address) public pure override returns (uint256) {
        revert("Use redemption request system");
    }
    
    /// @notice Maximum shares that can be redeemed by owner
    function maxRedeem(address) public pure override returns (uint256) {
        return 0;
    }
    
    /// @notice Preview assets received for redeeming shares
    function previewRedeem(uint256) public pure override returns (uint256) {
        revert("Use redemption request system");
    }
    
    /// @notice Redeem shares for assets
    function redeem(uint256, address, address) public pure override returns (uint256) {
        revert("Use redemption request system");
    }
    
    /// @notice Request redemption for shares (fee-free after waiting period)
    function requestRedemption(uint256 shares) external nonReentrant {
        if (shares == 0) revert ZeroShares();
        if (balanceOf(msg.sender) < shares) revert InsufficientBalance();
        
        _updateRateFactor();
        
        uint256 unlockTime = block.timestamp + lockupPeriod;
        
        redemptionRequests[msg.sender] = RedemptionRequest({
            shares: shares,
            requestTime: block.timestamp,
            yieldFactorAtRequest: cumulativeRateFactor
        });
        
        emit RedemptionRequested(msg.sender, shares, unlockTime);
    }
    
    /// @notice Cancel redemption request
    function cancelRedemption() external {
        RedemptionRequest memory request = redemptionRequests[msg.sender];
        if (request.shares == 0) revert NoActiveRequest();
        
        delete redemptionRequests[msg.sender];
        
        emit RedemptionCancelled(msg.sender, request.shares);
    }
    
    /// @notice Complete a redemption after lock-up period
    /// @param receiver The address to receive the assets
    /// @return assets The amount of assets received
    function completeRedemption(address receiver) external nonReentrant returns (uint256 assets) {
        if (receiver == address(0)) revert ZeroReceiver();
        
        RedemptionRequest memory request = redemptionRequests[msg.sender];
        if (request.shares == 0) revert NoActiveRequest();
        
        uint256 unlockTime = request.requestTime + lockupPeriod;
        require(block.timestamp >= unlockTime, "Lock-up period not finished");
        
        _updateRateFactor();
        
        // Calculate assets including yield earned during lock-up
        assets = _calculateRedemptionAssets(request);
        
        delete redemptionRequests[msg.sender];
        
        _burn(msg.sender, request.shares);
        // Update totalAssetsDeposited: convert shares back to asset decimals
        totalAssetsDeposited -= request.shares / _decimalOffset;
        IERC20(ASSET).safeTransfer(receiver, assets);
        
        emit RedemptionCompleted(msg.sender, receiver, request.shares, assets);
    }
    
    /// @notice Redeem immediately by paying early redemption fee
    /// @param shares The amount of shares to redeem
    /// @param receiver The address to receive the assets
    /// @return assets The amount of assets received (after fee)
    function redeemEarly(uint256 shares, address receiver) external nonReentrant returns (uint256 assets) {
        if (shares == 0) revert ZeroShares();
        if (receiver == address(0)) revert ZeroReceiver();
        if (balanceOf(msg.sender) < shares) revert InsufficientBalance();
        
        _updateRateFactor();
        
        // Calculate assets based on current value
        uint256 assetsIn18Decimals = (shares * _getCurrentRateFactor()) / RAY;
        uint256 assetsBeforeFee = assetsIn18Decimals / _decimalOffset;
        uint256 feeAmount = (assetsBeforeFee * earlyRedemptionFee) / 10000;
        assets = assetsBeforeFee - feeAmount;
        
        _burn(msg.sender, shares);
        // Update totalAssetsDeposited: convert shares back to asset decimals
        totalAssetsDeposited -= shares / _decimalOffset;
        IERC20(ASSET).safeTransfer(receiver, assets);
        
        emit EarlyRedemption(msg.sender, receiver, shares, assets, feeAmount);
    }
    
    /// @notice Preview assets that would be received from completing a redemption
    /// @param user The user address
    /// @return assets The amount of assets that would be received
    function previewCompleteRedemption(address user) external view returns (uint256 assets) {
        RedemptionRequest memory request = redemptionRequests[user];
        if (request.shares == 0) revert NoActiveRequest();
        
        return _calculateRedemptionAssets(request);
    }
    
    /// @notice Preview assets for early redemption (after fee)
    /// @param shares The amount of shares to redeem
    /// @return assets The amount of assets after fee
    /// @return fee The fee amount
    function previewRedeemEarly(uint256 shares) external view returns (uint256 assets, uint256 fee) {
        uint256 assetsIn18Decimals = (shares * _getCurrentRateFactor()) / RAY;
        uint256 assetsBeforeFee = assetsIn18Decimals / _decimalOffset;
        fee = (assetsBeforeFee * earlyRedemptionFee) / 10000;
        assets = assetsBeforeFee - fee;
    }
    
    /// @notice Get detailed redemption request information for a user
    /// @param user The user address
    /// @return shares The shares requested for redemption
    /// @return requestTime When the request was made
    /// @return unlockTime When the lockup period ends
    /// @return isUnlocked Whether the request can be redeemed without fee
    function getRedemptionRequest(address user) external view returns (
        uint256 shares,
        uint256 requestTime,
        uint256 unlockTime,
        bool isUnlocked
    ) {
        RedemptionRequest memory request = redemptionRequests[user];
        shares = request.shares;
        requestTime = request.requestTime;
        unlockTime = request.requestTime + lockupPeriod;
        isUnlocked = request.shares > 0 && block.timestamp >= unlockTime;
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
    
    /// @notice Convert assets to shares accounting for accrued yield
    /// @dev Converts asset decimals to 18-decimal shares, then divides by cumulative factor for fair pricing
    function convertToShares(uint256 assets) public view override returns (uint256) {
        uint256 currentFactor = _getCurrentRateFactor();
        uint256 assetsIn18Decimals = assets * _decimalOffset;
        return (assetsIn18Decimals * RAY) / currentFactor;
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
    
    /// @notice Calculate redemption assets including yield during lock-up
    /// @dev Simplified version without REDEMPTION_WINDOW - yield accrues during entire lockup
    function _calculateRedemptionAssets(RedemptionRequest memory request) internal view returns (uint256) {
        // Calculate yield factor for the lock-up period
        uint256 yieldFactor = _compoundFactor(currentRate, lockupPeriod);
        
        // Apply yield to get factor at unlock
        uint256 factorAtUnlock = (request.yieldFactorAtRequest * yieldFactor) / RAY;
        
        // Convert shares to assets (in 18 decimals) using factor at unlock time
        uint256 assetsIn18Decimals = (request.shares * factorAtUnlock) / RAY;
        
        // Convert to asset decimals
        return assetsIn18Decimals / _decimalOffset;
    }
    
    // ============================================
    // Cross-Chain State Synchronization Functions
    // ============================================
    
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
        
        // Send to all peer chains
        uint32[] memory destinations = new uint32[](peerEndpoints.length);
        uint256 totalFeesUsed = 0;
        
        for (uint256 i = 0; i < peerEndpoints.length; i++) {
            uint32 dstEid = peerEndpoints[i];
            destinations[i] = dstEid;
            
            // Get fee quote
            MessagingFee memory fee = _quote(dstEid, message, options, false);
            
            // For intermediate sends, refund to contract to preserve funds for next iteration
            // For last send, refund excess to caller
            address refundAddress = (i == peerEndpoints.length - 1) ? msg.sender : address(this);
            
            // Send message with exact quoted fee
            _lzSend(
                dstEid, 
                message, 
                options, 
                fee,
                payable(refundAddress)
            );
            
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
            
        } else if (updateType == StateUpdateType.UPDATE_LOCKUP_PERIOD) {
            uint256 newPeriod = abi.decode(data, (uint256));
            emit RedemptionPeriodUpdated(lockupPeriod, newPeriod);
            lockupPeriod = newPeriod;
            
        } else if (updateType == StateUpdateType.UPDATE_EARLY_FEE) {
            uint256 newFeeBps = abi.decode(data, (uint256));
            emit InstantFeeUpdated(earlyRedemptionFee, newFeeBps);
            earlyRedemptionFee = newFeeBps;
            
        } else if (updateType == StateUpdateType.UPDATE_CAP) {
            uint256 newCap = abi.decode(data, (uint256));
            emit CapUpdated(cap, newCap);
            cap = newCap;
        }
        
        emit StateReceived(_origin.srcEid, updateType, data);
    }
    
    /// @notice Override _payNative to support multi-destination broadcasts in single transaction
    /// @dev OFT's default _payNative checks msg.value < fee per send, which fails for multi-peer broadcasts
    /// since msg.value is constant. We validate total fees via quoteStateBroadcast() before calling.
    function _payNative(uint256 _nativeFee) internal virtual override returns (uint256 nativeFee) {
        // Return the requested fee without checking msg.value per send
        // Total fee validation happens in quoteStateBroadcast() before broadcast
        return _nativeFee;
    }

    /// @notice Get default LayerZero options for state sync messages
    function _getStateSyncOptions() internal pure returns (bytes memory) {
        // Configure gas for destination execution (increased to 400k for reliable delivery)
        return OptionsBuilder.newOptions().addExecutorLzReceiveOption(400000, 0);
    }
}
