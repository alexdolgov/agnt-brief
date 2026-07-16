// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {IERC20Metadata} from "openzeppelin-contracts/contracts/interfaces/IERC20Metadata.sol";
import {IERC20} from "openzeppelin-contracts/contracts/interfaces/IERC20.sol";
import {IERC4626} from "openzeppelin-contracts/contracts/interfaces/IERC4626.sol";
import {AccessControl} from "openzeppelin-contracts/contracts/access/AccessControl.sol";
import {ERC20} from "openzeppelin-contracts/contracts/token/ERC20/ERC20.sol";
import {ERC4626} from "openzeppelin-contracts/contracts/token/ERC20/extensions/ERC4626.sol";
import {Math} from "openzeppelin-contracts/contracts/utils/math/Math.sol";

interface IStablecoin {
    function mint(address, uint256) external;
    function burnFrom(address, uint256) external;
}

/**
 * @title RollingBond
 * @notice ERC4626 vault implementing rolling bond mechanics with lock-up redemption
 * @dev Users deposit assets to receive shares that continuously accrue yield at a variable rate.
 *      Redemption requires a lock-up period during which yield continues to accrue.
 *      After lock-up, users have a 7-day window to redeem (no yield during window).
 *      Users can also redeem instantly by paying an early redemption fee.
 */
contract RollingBond is AccessControl, ERC4626 {
    uint256 public constant RAY = 1e27;
    uint256 public constant REDEMPTION_WINDOW = 7 days;
    
    bytes32 public constant MANAGER = keccak256(abi.encode("rollingbond.manager"));
    
    // Events
    event CapUpdated(uint256 oldCap, uint256 newCap);
    event RateUpdated(uint256 oldRate, uint256 newRate, uint256 timestamp);
    event EarlyRedemptionFeeUpdated(uint256 oldFee, uint256 newFee);
    event RedemptionRequested(address indexed user, uint256 shares, uint256 requestTime, uint256 unlockTime);
    event RedemptionCancelled(address indexed user, uint256 shares);
    event RedemptionCompleted(address indexed user, address indexed receiver, uint256 shares, uint256 assets);
    event EarlyRedemption(address indexed user, address indexed receiver, uint256 shares, uint256 assets, uint256 fee);
    
    // Configuration
    uint256 public cap;
    uint256 public lockupPeriod; // in seconds
    uint256 public currentRate; // per second rate in RAY format
    uint256 public earlyRedemptionFee; // in RAY format (e.g., 0.05e27 = 5%)
    
    // State tracking
    uint256 public lastUpdateTimestamp;
    uint256 public cumulativeRateFactor; // cumulative compound factor
    
    // Redemption request tracking
    struct RedemptionRequest {
        uint256 shares;
        uint256 requestTime;
        uint256 yieldFactorAtRequest; // yield factor when request was made
    }
    
    mapping(address => RedemptionRequest) public redemptionRequests;
    
    constructor(
        address admin,
        string memory name,
        string memory symbol,
        IERC20Metadata asset,
        uint256 _lockupPeriod,
        uint256 initialRate,
        uint256 initialEarlyRedemptionFee
    ) ERC20(name, symbol) ERC4626(asset) {
        _grantRole(DEFAULT_ADMIN_ROLE, admin);
        
        lockupPeriod = _lockupPeriod;
        currentRate = initialRate;
        earlyRedemptionFee = initialEarlyRedemptionFee;
        
        lastUpdateTimestamp = block.timestamp;
        cumulativeRateFactor = RAY;
        cap = 0;
    }
    
    // ============================================
    // ADMIN FUNCTIONS
    // ============================================
    
    /**
     * @notice Sets the notional cap for total assets
     * @param newCap The new cap value
     */
    function setCap(uint256 newCap) external onlyRole(MANAGER) {
        emit CapUpdated(cap, newCap);
        cap = newCap;
    }
    
    /**
     * @notice Updates the yield rate
     * @param newRate The new rate per second in RAY format
     */
    function setRate(uint256 newRate) external onlyRole(MANAGER) {
        _updateCumulativeFactor();
        emit RateUpdated(currentRate, newRate, block.timestamp);
        currentRate = newRate;
    }
    
    /**
     * @notice Updates the early redemption fee
     * @param newFee The new fee in RAY format (e.g., 0.05e27 = 5%)
     */
    function setEarlyRedemptionFee(uint256 newFee) external onlyRole(MANAGER) {
        require(newFee <= RAY, "Fee cannot exceed 100%");
        emit EarlyRedemptionFeeUpdated(earlyRedemptionFee, newFee);
        earlyRedemptionFee = newFee;
    }
    
    /**
     * @notice Recovers accidentally sent tokens
     * @param token The token to recover
     * @param receiver The address to send recovered tokens to
     */
    function recover(address token, address receiver) external onlyRole(MANAGER) {
        require(token != asset(), "Cannot recover asset token");
        IERC20 tokenContract = IERC20(token);
        tokenContract.transfer(receiver, tokenContract.balanceOf(address(this)));
    }
    
    // ============================================
    // DEPOSIT FUNCTIONS
    // ============================================
    
    /**
     * @dev Internal deposit function - updates state and mints shares
     */
    function _deposit(
        address caller,
        address receiver,
        uint256 assets,
        uint256 shares
    ) internal override {
        _updateCumulativeFactor();
        
        // Check cap
        require(
            totalAssets() + assets <= cap || cap == 0,
            "Deposit would exceed cap"
        );
        
        IStablecoin(asset()).burnFrom(caller, assets);
        _mint(receiver, shares);
        
        emit Deposit(caller, receiver, assets, shares);
    }
    
    // ============================================
    // REDEMPTION REQUEST FUNCTIONS
    // ============================================
    
    /**
     * @notice Request a redemption with lock-up period
     * @param shares The amount of shares to redeem
     */
    function requestRedemption(uint256 shares) external {
        require(shares > 0, "Cannot request zero shares");
        require(balanceOf(msg.sender) >= shares, "Insufficient balance");
        require(redemptionRequests[msg.sender].shares == 0, "Existing request pending");
        
        _updateCumulativeFactor();
        
        uint256 unlockTime = block.timestamp + lockupPeriod;
        
        redemptionRequests[msg.sender] = RedemptionRequest({
            shares: shares,
            requestTime: block.timestamp,
            yieldFactorAtRequest: cumulativeRateFactor
        });
        
        emit RedemptionRequested(msg.sender, shares, block.timestamp, unlockTime);
    }
    
    /**
     * @notice Cancel a pending redemption request
     */
    function cancelRedemption() external {
        RedemptionRequest memory request = redemptionRequests[msg.sender];
        require(request.shares > 0, "No pending request");
        
        uint256 shares = request.shares;
        delete redemptionRequests[msg.sender];
        
        emit RedemptionCancelled(msg.sender, shares);
    }
    
    /**
     * @notice Complete a redemption after lock-up period
     * @param receiver The address to receive the assets
     * @return assets The amount of assets received
     */
    function completeRedemption(address receiver) external returns (uint256 assets) {
        RedemptionRequest memory request = redemptionRequests[msg.sender];
        require(request.shares > 0, "No pending request");
        
        uint256 unlockTime = request.requestTime + lockupPeriod;
        require(block.timestamp >= unlockTime, "Lock-up period not finished");
        
        uint256 windowEnd = unlockTime + REDEMPTION_WINDOW;
        require(block.timestamp <= windowEnd, "Redemption window expired");
        
        _updateCumulativeFactor();
        
        // Calculate assets including yield earned during lock-up (but not during window)
        assets = _calculateRedemptionAssets(request);
        
        delete redemptionRequests[msg.sender];
        
        _burn(msg.sender, request.shares);
        IStablecoin(asset()).mint(receiver, assets);
        
        emit RedemptionCompleted(msg.sender, receiver, request.shares, assets);
    }
    
    /**
     * @notice Redeem immediately by paying early redemption fee
     * @param shares The amount of shares to redeem
     * @param receiver The address to receive the assets
     * @return assets The amount of assets received (after fee)
     */
    function redeemEarly(uint256 shares, address receiver) external returns (uint256 assets) {
        require(shares > 0, "Cannot redeem zero shares");
        require(balanceOf(msg.sender) >= shares, "Insufficient balance");
        require(redemptionRequests[msg.sender].shares == 0, "Cancel pending request first");
        
        _updateCumulativeFactor();
        
        // Calculate assets based on current value
        uint256 assetsBeforeFee = convertToAssets(shares);
        uint256 feeAmount = (assetsBeforeFee * earlyRedemptionFee) / RAY;
        assets = assetsBeforeFee - feeAmount;
        
        _burn(msg.sender, shares);
        IStablecoin(asset()).mint(receiver, assets);
        
        emit EarlyRedemption(msg.sender, receiver, shares, assets, feeAmount);
    }
    
    // ============================================
    // VIEW FUNCTIONS
    // ============================================
    
    /**
     * @notice Get redemption request details for a user
     * @param user The user address
     * @return shares The shares requested
     * @return requestTime When the request was made
     * @return unlockTime When the lock-up ends
     * @return windowEnd When the redemption window closes
     * @return canRedeem Whether redemption is currently possible
     */
    function getRedemptionRequest(address user) external view returns (
        uint256 shares,
        uint256 requestTime,
        uint256 unlockTime,
        uint256 windowEnd,
        bool canRedeem
    ) {
        RedemptionRequest memory request = redemptionRequests[user];
        shares = request.shares;
        requestTime = request.requestTime;
        unlockTime = requestTime + lockupPeriod;
        windowEnd = unlockTime + REDEMPTION_WINDOW;
        canRedeem = request.shares > 0 && 
                    block.timestamp >= unlockTime && 
                    block.timestamp <= windowEnd;
    }
    
    /**
     * @notice Preview assets that would be received from completing a redemption
     * @param user The user address
     * @return assets The amount of assets that would be received
     */
    function previewCompleteRedemption(address user) external view returns (uint256 assets) {
        RedemptionRequest memory request = redemptionRequests[user];
        require(request.shares > 0, "No pending request");
        
        // Calculate yield factor for the lock-up period only
        uint256 yieldFactor = _compoundFactor(currentRate, lockupPeriod);
        
        // Apply yield to get factor at unlock
        uint256 factorAtUnlock = (request.yieldFactorAtRequest * yieldFactor) / RAY;
        
        // Convert shares to assets using factor at unlock time
        return (request.shares * factorAtUnlock) / RAY;
    }
    
    /**
     * @notice Preview assets for early redemption (after fee)
     * @param shares The amount of shares to redeem
     * @return assets The amount of assets after fee
     * @return fee The fee amount
     */
    function previewRedeemEarly(uint256 shares) external view returns (uint256 assets, uint256 fee) {
        uint256 assetsBeforeFee = convertToAssets(shares);
        fee = (assetsBeforeFee * earlyRedemptionFee) / RAY;
        assets = assetsBeforeFee - fee;
    }
    
    /**
     * @notice Calculate current APY based on the rate
     * @return apy The annual percentage yield in RAY format
     */
    function apy() external view returns (uint256) {
        uint256 secondsInYear = 365 days;
        return _compoundFactor(currentRate, secondsInYear);
    }
    
    /**
     * @notice Get the current cumulative rate factor
     * @return factor The current cumulative factor
     */
    function getCurrentCumulativeFactor() external view returns (uint256) {
        return _getCurrentCumulativeFactor();
    }
    
    // ============================================
    // ERC4626 OVERRIDES
    // ============================================
    
    /**
     * @dev Disable standard withdraw - use redemption request system instead
     */
    function withdraw(uint256, address, address) public pure override returns (uint256) {
        revert("Use redemption request system");
    }
    
    /**
     * @dev Disable standard redeem - use redemption request system instead
     */
    function redeem(uint256, address, address) public pure override returns (uint256) {
        revert("Use redemption request system");
    }
    
    /**
     * @dev Disable mint function
     */
    function mint(uint256, address) public pure override returns (uint256) {
        revert("Use deposit function");
    }
    
    /**
     * @dev Convert assets to shares (1:1 since shares represent principal)
     */
    function _convertToShares(
        uint256 assets,
        Math.Rounding rounding
    ) internal view override returns (uint256) {
        return assets;
    }
    
    /**
     * @dev Convert shares to assets including accrued yield
     */
    function _convertToAssets(
        uint256 shares,
        Math.Rounding rounding
    ) internal view override returns (uint256) {
        uint256 currentFactor = _getCurrentCumulativeFactor();
        return (shares * currentFactor) / RAY;
    }
    
    /**
     * @notice Total assets in the vault
     */
    function totalAssets() public view override returns (uint256) {
        return _convertToAssets(totalSupply(), Math.Rounding.Floor);
    }
    
    /**
     * @notice Maximum deposit allowed
     */
    function maxDeposit(address) public view override returns (uint256) {
        if (cap == 0) {
            return type(uint256).max;
        }
        uint256 currentAssets = totalAssets();
        if (currentAssets >= cap) {
            return 0;
        }
        return cap - currentAssets;
    }
    
    /**
     * @notice Maximum withdraw is 0 (must use redemption system)
     */
    function maxWithdraw(address) public pure override returns (uint256) {
        return 0;
    }
    
    /**
     * @notice Maximum redeem is 0 (must use redemption system)
     */
    function maxRedeem(address) public pure override returns (uint256) {
        return 0;
    }
    
    // ============================================
    // INTERNAL FUNCTIONS
    // ============================================
    
    /**
     * @dev Update the cumulative rate factor
     */
    function _updateCumulativeFactor() internal {
        if (block.timestamp == lastUpdateTimestamp) {
            return;
        }
        
        uint256 timeElapsed = block.timestamp - lastUpdateTimestamp;
        uint256 growthFactor = _compoundFactor(currentRate, timeElapsed);
        
        cumulativeRateFactor = (cumulativeRateFactor * growthFactor) / RAY;
        lastUpdateTimestamp = block.timestamp;
    }
    
    /**
     * @dev Get current cumulative factor without updating state
     */
    function _getCurrentCumulativeFactor() internal view returns (uint256) {
        if (block.timestamp == lastUpdateTimestamp) {
            return cumulativeRateFactor;
        }
        
        uint256 timeElapsed = block.timestamp - lastUpdateTimestamp;
        uint256 growthFactor = _compoundFactor(currentRate, timeElapsed);
        
        return (cumulativeRateFactor * growthFactor) / RAY;
    }
    
    /**
     * @dev Calculate redemption assets including yield during lock-up
     */
    function _calculateRedemptionAssets(RedemptionRequest memory request) internal view returns (uint256) {
        // Yield accrues during lock-up period, but stops when redemption window opens
        
        // Calculate yield factor for the lock-up period only
        uint256 yieldFactor = _compoundFactor(currentRate, lockupPeriod);
        
        // Apply yield to get factor at unlock
        uint256 factorAtUnlock = (request.yieldFactorAtRequest * yieldFactor) / RAY;
        
        // Convert shares to assets using factor at unlock time
        return (request.shares * factorAtUnlock) / RAY;
    }
    
    /**
     * @dev Calculate compound factor using Taylor series approximation
     * @param rate The rate per second in RAY format
     * @param timeDelta The time period in seconds
     * @return The compound factor in RAY format
     */
    function _compoundFactor(
        uint256 rate,
        uint256 timeDelta
    ) internal pure returns (uint256) {
        // e^(rate * time) approximation using Taylor series
        // 1 + rt + (rt)^2/2! + (rt)^3/3!
        
        if (timeDelta == 0 || rate == 0) {
            return RAY;
        }
        
        uint256 rt = rate * timeDelta;
        
        uint256 term1 = RAY;
        uint256 term2 = rt;
        
        if (timeDelta == 1) {
            return term1 + term2;
        }
        
        uint256 term3 = ((timeDelta - 1) * timeDelta * ((rate * rate) / RAY)) / 2;
        
        if (timeDelta == 2) {
            return term1 + term2 + term3;
        }
        
        uint256 term4 = (timeDelta * (timeDelta - 1) * (timeDelta - 2) * ((rate * rate) / RAY) * rate) / RAY / 6;
        
        return term1 + term2 + term3 + term4;
    }
}
