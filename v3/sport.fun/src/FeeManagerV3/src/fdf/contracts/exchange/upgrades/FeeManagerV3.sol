// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.30;

import {IFeeManagerV3} from "src/fdf/contracts/interfaces/upgrades/IFeeManagerV3.sol";
import {AccessControlUpgradeable} from "@openzeppelin-upgradeable/access/AccessControlUpgradeable.sol";
import {Initializable} from "@openzeppelin-upgradeable/proxy/utils/Initializable.sol";
import {UUPSUpgradeable} from "@openzeppelin-upgradeable/proxy/utils/UUPSUpgradeable.sol";

/**
 * @title FeeManagerV3
 * @notice Manages dynamic fees for the FDF exchange based on price movements
 * @dev V3 adds split buy/sell fees and emits event on fee tier clearing
 */
contract FeeManagerV3 is Initializable, AccessControlUpgradeable, UUPSUpgradeable, IFeeManagerV3 {

    // Roles
    bytes32 public constant GOVERNOR_ROLE = keccak256("GOVERNOR_ROLE");
    bytes32 public constant FEE_MANAGER_ROLE = keccak256("FEE_MANAGER_ROLE");
    bytes32 public constant CALCULATE_FEE_ROLE = keccak256("CALCULATE_FEE_ROLE");

    // All fee tiers: [0] = normal (5%), [1-4] = escalated (7%, 15%, 20%, 25%)
    FeeTier[5] public feeTiers;
    
    // Global EMA calculation parameters
    uint256 public emaPeriod;
    uint256 public emaAlpha;
    uint256 public alphaDenominator;

    // Global flash sale parameters
    uint256 public flashSaleThreshold;
    uint256 public flashSaleFee;
    uint256 public flashSaleCooldown;

    // Precision constants
    uint256 public constant BASIS_POINTS = 100_000; // 100,000 for 5 decimal precision (100000 = 100%)

    // Price tracking
    mapping(uint256 => uint256) private lastEMAPrice; // Last EMA price for each player token ID
    mapping(uint256 => uint256) private lastEMAUpdateTime; // Last time EMA was updated for each token ID
    
    // Fee tier activation tracking
    mapping(uint256 => uint256) private activeFeeTier; // Currently active tier (0 = normal, 1-4 = escalated) for each token ID
    mapping(uint256 => uint256) private feeTierActivationTime; // When current tier was activated for each token ID
    
    // Flash sale tracking
    mapping(uint256 => mapping(address => uint256)) private flashSaleCooldownEnd; // Per-address flash sale cooldown end times

    // V2 addition: version tracking
    uint256 public upgradeVersion;

    // V3 addition: separate buy fee
    uint256 public buyFee;

    // V3 addition: swap buy fee (absolute value in basis points, independent of buyFee)
    uint256 public swapBuyFee;

    // Storage gap for future upgrades (reduced by 3 for upgradeVersion, buyFee, and swapBuyFee)
    uint256[47] private __gap;
    
    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    /**
     * @notice Initializes the FeeManager contract with default settings
     * @param _governorAddress Governor address that will receive GOVERNOR_ROLE and FEE_MANAGER_ROLE.
     */
    function initialize(address _governorAddress) external initializer {
        if (_governorAddress == address(0)) revert ZeroAddress();

        __AccessControl_init();
        __UUPSUpgradeable_init();

        _setRoleAdmin(GOVERNOR_ROLE, GOVERNOR_ROLE);
        _setRoleAdmin(FEE_MANAGER_ROLE, GOVERNOR_ROLE);
        _setRoleAdmin(CALCULATE_FEE_ROLE, GOVERNOR_ROLE);

        _grantRole(GOVERNOR_ROLE, _governorAddress);
        _grantRole(FEE_MANAGER_ROLE, _governorAddress);
        _grantRole(CALCULATE_FEE_ROLE, _governorAddress);
        
        // Initialize default fee tiers (using 100k precision)
        feeTiers[0] = FeeTier({threshold: 0, fee: 5000, cooldown: 0});   // Normal tier: 5% fee (5000/100000), 0 cooldown
        feeTiers[1] = FeeTier({threshold: 10000, fee: 7000, cooldown: 300});   // >=10% drop: 7% fee, 5 min
        feeTiers[2] = FeeTier({threshold: 20000, fee: 10000, cooldown: 1500}); // >=20% drop: 10% fee, 25 min
        feeTiers[3] = FeeTier({threshold: 30000, fee: 15000, cooldown: 3600}); // >=30% drop: 15% fee, 1 hour
        feeTiers[4] = FeeTier({threshold: 40000, fee: 20000, cooldown: 14400}); // >=40% drop: 20% fee, 4 hours

        // Initialize flash sale parameters (using 100k precision)
        flashSaleThreshold = 2000; // 2% (2000/100000 = 0.02)
        flashSaleFee = 20000; // 20% fee (20000/100000 = 0.2)
        flashSaleCooldown = 300; // 5 minutes cooldown in seconds

        // Initialize EMA parameters
        emaPeriod = 180; // 3 minutes in seconds
        emaAlpha = 1105; // Alpha = 2/(N+1) * 100000, where N=180, so alpha ≈ 0.01105
        alphaDenominator = 100_000;
    }

    /**
     * @notice Initializes the V3 upgrade
     * @dev This function should be called after upgrading to V3
     */
    function initializeV3() external onlyRole(GOVERNOR_ROLE) {
        require(upgradeVersion == 2, "Already initialized");
        upgradeVersion = 3;
        
        // Initialize buy fee to same as normal fee
        buyFee = feeTiers[0].fee;
        
        // Initialize swap buy fee to same as buy fee by default
        swapBuyFee = feeTiers[0].fee;
    }

    /**
     * @notice Update a fee tier
     * @param index The index of the fee tier to update.
     * @param newTier The new fee tier.
     */
    function updateFeeTier(uint256 index, FeeTier memory newTier) external onlyRole(FEE_MANAGER_ROLE) {
        if(index >= feeTiers.length) revert InvalidIndex();
        _checkFeeTierParams(newTier.threshold, newTier.fee, newTier.cooldown);
        _validateFeeTierOrder(index, newTier);
        feeTiers[index] = newTier;

        emit FeeTierUpdated(index, newTier);
    }
    
    /**
     * @notice Set all fee tiers at once.
     * @param _newTiers The new fee tiers.
     */
    function setFeeTiers(FeeTier[5] memory _newTiers) external onlyRole(FEE_MANAGER_ROLE) {
        // Validate individual tier parameters
        for(uint256 i = 0; i < feeTiers.length; i++) {
            _checkFeeTierParams(_newTiers[i].threshold, _newTiers[i].fee, _newTiers[i].cooldown);
        }
        
        // Validate ordering across all tiers
        for(uint256 i = 1; i < feeTiers.length; i++) {
            if (_newTiers[i].threshold < _newTiers[i-1].threshold) {
                revert InvalidThreshold(); // Thresholds must be in ascending order
            }
            if (_newTiers[i].fee < _newTiers[i-1].fee) {
                revert InvalidFee(); // Fees must be in ascending order
            }
        }
        
        // Assign each tier individually.
        for(uint256 i = 0; i < feeTiers.length;) {
            feeTiers[i] = _newTiers[i];
            
            unchecked { i++; }
        }

        emit FeeTiersUpdated(_newTiers);
    }

    function _checkFeeTierParams(uint256 _threshold, uint256 _fee, uint256 _cooldown) internal pure {
        if(_threshold > 40000) revert InvalidThreshold(); // Max 40% drop (40000/100000)
        if(_fee > 25000) revert InvalidFee(); // Max 25% fee (25000/100000)
        if(_cooldown > 14400) revert InvalidCooldown(); // Max 4 hours
    }

    /**
     * @notice Validates that updating a fee tier maintains proper ordering
     * @param index The index of the fee tier being updated
     * @param newTier The new fee tier configuration
     */
    function _validateFeeTierOrder(uint256 index, FeeTier memory newTier) internal view {
        // Check threshold ordering: each tier should have threshold > previous tier (strict ordering for index > 0)
        if (index > 0) {
            if (newTier.threshold <= feeTiers[index - 1].threshold) {
                revert InvalidThreshold(); // New threshold must be higher than previous tier
            }
        }
        
        if (index < feeTiers.length - 1) {
            if (newTier.threshold >= feeTiers[index + 1].threshold) {
                revert InvalidThreshold(); // New threshold must be lower than next tier
            }
        }
        
        // Check fee ordering: each tier should have fee > previous tier (strict ordering for index > 0)
        if (index > 0) {
            if (newTier.fee <= feeTiers[index - 1].fee) {
                revert InvalidFee(); // New fee must be higher than previous tier
            }
        }
        
        if (index < feeTiers.length - 1) {
            if (newTier.fee >= feeTiers[index + 1].fee) {
                revert InvalidFee(); // New fee must be lower than next tier
            }
        }
    }

    /**
     * @notice Update flash sale parameters
     * @param _newThreshold New threshold in 100k precision (e.g., 2000 = 2%)
     * @param _newFee New fee in 100k precision (e.g., 25000 = 25%)
     * @param _newCooldown New cooldown period in seconds
     */
    function setFlashSaleParams(uint256 _newThreshold, uint256 _newFee, uint256 _newCooldown) external onlyRole(FEE_MANAGER_ROLE) {
        if(_newThreshold > 20000) revert InvalidThreshold(); // Max 20% (20000/100000)
        if(_newFee > 25000) revert InvalidFee(); // Max 25% fee (25000/100000)
        if(_newCooldown > 300) revert InvalidCooldown(); // Max 5 minutes
        flashSaleThreshold = _newThreshold;
        flashSaleFee = _newFee;
        flashSaleCooldown = _newCooldown;

        emit FlashSaleParamsUpdated(_newThreshold, _newFee, _newCooldown);
    }
    
    /**
     * @notice Update EMA calculation parameters
     * @param _newPeriod New EMA period in seconds
     * @param _newAlpha New alpha value (scaled by alphaDenominator)
     * @param _newDenominator New denominator for alpha scaling
     */
    function setEMAParams(uint256 _newPeriod, uint256 _newAlpha, uint256 _newDenominator) external onlyRole(FEE_MANAGER_ROLE) {
        if(_newDenominator <= 0) revert InvalidDenominator();
        if(_newAlpha > _newDenominator) revert InvalidAlpha();
        
        emaPeriod = _newPeriod;
        emaAlpha = _newAlpha;
        alphaDenominator = _newDenominator;

        emit EMAParamsUpdated(_newPeriod, _newAlpha, _newDenominator);
    }

    // Core fee calculation functions
    
    /**
     * @notice Calculates the sell fee for a token and updates state
     * @dev This function updates the EMA price and activates fee tiers/cooldowns
     * @param _playerId The ID of the player token
     * @param _currentPrice The current price of the token
     * @param _tokenReserve The amount of tokens in the pool
     * @param _sellAmount The amount of tokens being sold
     * @param _seller The address of the seller
     * @return feeRate The fee rate to apply in basis points
     * @return feeType The type of fee applied (0=NORMAL, 1=FLASH_SALE, 2=FEE_TIER)
     */
    function calculateSellFee(uint256 _playerId, uint256 _currentPrice, uint256 _tokenReserve, uint256 _sellAmount, address _seller) external onlyRole(CALCULATE_FEE_ROLE) returns (uint256 feeRate, uint8 feeType) {
        // Clear expired fee tiers
        _clearExpiredFeeTier(_playerId);
        
        // Save the current EMA before updating it
        uint256 previousEMA = lastEMAPrice[_playerId];
        
        // Update EMA price first
        _updateEMAPrice(_playerId, _currentPrice);
        
        // Check flash sale conditions first (takes priority over EMA-based fees)
        if (block.timestamp < flashSaleCooldownEnd[_playerId][_seller] || 
            _isFlashSale(_tokenReserve, _sellAmount)) {
            
            // If triggering a new flash sale, activate the cooldown
            if (block.timestamp >= flashSaleCooldownEnd[_playerId][_seller]) {
                _activateFlashSaleFee(_playerId, _seller);
            }
            
            return (flashSaleFee, 1); // FLASH_SALE = 1
        }
        
        // Calculate EMA-based fee tier (may move UP immediately, moves DOWN only after cooldown)
        uint256 emaBasedFee;
        
        if (previousEMA == 0 || _currentPrice >= previousEMA) {
            // Price is stable/rising - keep current tier (don't move down until cooldown expires)
            uint256 currentTier = activeFeeTier[_playerId];
            emaBasedFee = feeTiers[currentTier].fee;
        } else {
            // Price is dropping - check if we should move UP to a higher tier
            // Calculate price drop using 100k precision
            uint256 priceDrop = ((previousEMA - _currentPrice) * BASIS_POINTS) / previousEMA;
            uint256 applicableTierIndex = findApplicableTier(priceDrop);
            
            // Only activate if this is a higher tier than current (moving UP)
            if (applicableTierIndex > activeFeeTier[_playerId]) {
                _activateFeeTier(_playerId, applicableTierIndex);
            }
            
            // Use the current active tier fee
            emaBasedFee = feeTiers[activeFeeTier[_playerId]].fee;
        }
        
        // Determine fee type for EMA-based fee
        if (activeFeeTier[_playerId] == 0) {
            return (emaBasedFee, 0); // NORMAL = 0
        } else {
            return (emaBasedFee, 2); // FEE_TIER = 2
        }
    }

    /**
     * @notice Calculates the sell fee for a token without modifying state (view-only)
     * @dev This returns the fee rate and type for price quotes without state changes
     * @param _playerId The ID of the player token
     * @param _currentPrice The current price of the token
     * @param _tokenReserve The amount of tokens in the pool
     * @param _sellAmount The amount of tokens being sold
     * @param _seller The address of the seller
     * @return feeRate The fee rate to apply in basis points
     * @return feeType The type of fee applied (0=NORMAL, 1=FLASH_SALE, 2=FEE_TIER)
     */
    function calculateSellFeeSimulated(uint256 _playerId, uint256 _currentPrice, uint256 _tokenReserve, uint256 _sellAmount, address _seller) external view returns (uint256 feeRate, uint8 feeType) {
        
        // Check flash sale conditions first (takes priority)
        if (block.timestamp < flashSaleCooldownEnd[_playerId][_seller] || 
            _isFlashSale(_tokenReserve, _sellAmount)) {
            return (flashSaleFee, 1); // FLASH_SALE = 1
        }
        
        // Simulate clearing expired fee tiers without modifying state
        uint256 simulatedActiveTier = _simulateExpiredFeeTierClear(_playerId);
        
        // Get the current EMA for comparison (no need to simulate EMA update since we don't use the result)
        uint256 previousEMA = lastEMAPrice[_playerId];
        
        // Calculate EMA-based fee tier (may move UP immediately, moves DOWN only after cooldown)
        uint256 emaBasedFee;
        
        if (previousEMA == 0 || _currentPrice >= previousEMA) {
            // Price is stable/rising - keep current tier (don't move down until cooldown expires)
            emaBasedFee = feeTiers[simulatedActiveTier].fee;
        } else {
            // Price is dropping - check if we should move UP to a higher tier
            // Calculate price drop using 100k precision
            uint256 priceDrop = ((previousEMA - _currentPrice) * BASIS_POINTS) / previousEMA;
            uint256 applicableTierIndex = findApplicableTier(priceDrop);
            
            // Only activate if this is a higher tier than current (moving UP)
            if (applicableTierIndex > simulatedActiveTier) {
                simulatedActiveTier = applicableTierIndex;
            }
            
            // Use the simulated active tier fee
            emaBasedFee = feeTiers[simulatedActiveTier].fee;
        }
        
        // Determine fee type for EMA-based fee
        if (simulatedActiveTier == 0) {
            return (emaBasedFee, 0); // NORMAL = 0
        } else {
            return (emaBasedFee, 2); // FEE_TIER = 2
        }
    }

    /**
     * @notice Simulates clearing expired fee tiers without modifying state
     * @param _playerId The ID of the player token
     * @return The tier that would be active after clearing expired tiers
     */
    function _simulateExpiredFeeTierClear(uint256 _playerId) internal view returns (uint256) {
        uint256 currentActiveTier = activeFeeTier[_playerId];
        
        if (currentActiveTier == 0) {
            return 0; // No active tier to clear
        }
        
        uint256 activationTime = feeTierActivationTime[_playerId];
        
        // Check if minimum duration has passed
        if (block.timestamp >= activationTime + feeTiers[currentActiveTier].cooldown) {
            return 0; // Tier would be cleared
        }
        
        return currentActiveTier; // Tier would remain active
    }

    /**
     * @notice Calculates the buy fee for a token and updates EMA (backward compatible)
     * @dev V3: Returns the separate buyFee instead of feeTiers[0].fee
     * @param _playerId The ID of the player token
     * @param _currentPrice The current price of the token
     * @return fee The fee rate to apply in basis points
     */
    function getBuyFeeAndUpdateEMA(uint256 _playerId, uint256 _currentPrice) external onlyRole(CALCULATE_FEE_ROLE) returns (uint256) {
        return getBuyFeeAndUpdateEMA(_playerId, _currentPrice, false);
    }

    /**
     * @notice Calculates the buy fee for a token and updates EMA
     * @dev V3: Returns the separate buyFee instead of feeTiers[0].fee
     * @param _playerId The ID of the player token
     * @param _currentPrice The current price of the token
     * @param _isSwapFee Whether this is for a swap operation (uses swapBuyFee)
     * @return fee The fee rate to apply in basis points
     */
    function getBuyFeeAndUpdateEMA(uint256 _playerId, uint256 _currentPrice, bool _isSwapFee) public onlyRole(CALCULATE_FEE_ROLE) returns (uint256) {
        // Update EMA price to track buy activity
        _updateEMAPrice(_playerId, _currentPrice);
        
        // V3: Return appropriate buy fee based on operation type
        return _isSwapFee ? swapBuyFee : buyFee;
    }

    /**
     * @notice Calculates the buy fee for a token without updating EMA (view-only, backward compatible)
     * @dev V3: Returns the separate buyFee
     * @return fee The fee rate to apply in basis points
     * @return feeType The fee type (always 0 for buy fees)
     */
    function getBuyFeeSimulated() external view returns (uint256, uint8) {
        return (buyFee, 0);
    }

    /**
     * @notice Calculates the buy fee for a token without updating EMA (view-only)
     * @dev V3: Returns the separate buyFee
     * @param _isSwapFee Whether this is for a swap operation (uses swapBuyFee)
     * @return fee The fee rate to apply in basis points
     * @return feeType The fee type (always 0 for buy fees)
     */
    function getBuyFeeSimulated(bool _isSwapFee) public view returns (uint256, uint8) {
        // V3: Return appropriate buy fee based on operation type
        return (_isSwapFee ? swapBuyFee : buyFee, 0);
    }

    /**
     * @notice Finds the highest applicable fee tier based on price drop
     * @param _priceDrop The price drop in basis points
     * @return The index of the applicable fee tier
     */
    function findApplicableTier(uint256 _priceDrop) internal view returns (uint256) {
        if (_priceDrop >= feeTiers[4].threshold) return 4;
        if (_priceDrop >= feeTiers[3].threshold) return 3;
        if (_priceDrop >= feeTiers[2].threshold) return 2;
        if (_priceDrop >= feeTiers[1].threshold) return 1;
        return 0;
    }
    
    /**
     * @notice Clears expired fee tiers for a token
     * @dev V3: Emits FeeTierCleared event when clearing
     * @param _playerId The ID of the player token
     */
    function _clearExpiredFeeTier(uint256 _playerId) internal {
        if (activeFeeTier[_playerId] == 0) {
            return; // No active tier to clear
        }
        
        uint256 activationTime = feeTierActivationTime[_playerId];
        uint256 currentTier = activeFeeTier[_playerId];
        
        // Check if minimum duration has passed
        if (block.timestamp >= activationTime + feeTiers[currentTier].cooldown) {
            // Clear the expired tier
            activeFeeTier[_playerId] = 0;
            feeTierActivationTime[_playerId] = 0;
            
            // V3: Emit event when clearing fee tier
            emit FeeTierCleared(_playerId, currentTier);
        }
    }
    
    /**
     * @notice Updates the Exponential Moving Average price for a token
     * @param _playerId The ID of the player token
     * @param _currentPrice The current price of the token
     */
    function _updateEMAPrice(uint256 _playerId, uint256 _currentPrice) internal {
        uint256 previousEMA = lastEMAPrice[_playerId];
        uint256 lastEMAUpdate = lastEMAUpdateTime[_playerId];
        
        // If this is the first update, set EMA to current price
        if (previousEMA == 0 || lastEMAUpdate == 0) {
            lastEMAPrice[_playerId] = _currentPrice;
            lastEMAUpdateTime[_playerId] = block.timestamp;
            emit PriceUpdated(_playerId, _currentPrice, _currentPrice);
            return;
        }

        // Calculate new EMA: EMA = previousEMA + ((currentPrice - previousEMA) * emaAlpha) / alphaDenominator
        // Handle both price increases and decreases safely
        uint256 priceDiff;
        if (_currentPrice > previousEMA) {
            priceDiff = _currentPrice - previousEMA;
        } else {
            priceDiff = previousEMA - _currentPrice;
        }
        
        uint256 adjustment = (priceDiff * emaAlpha) / alphaDenominator;
        uint256 newEMA;
        
        if (_currentPrice > previousEMA) {
            newEMA = previousEMA + adjustment;
        } else {
            newEMA = previousEMA - adjustment;
        }
        
        lastEMAPrice[_playerId] = newEMA;
        lastEMAUpdateTime[_playerId] = block.timestamp;
        
        emit PriceUpdated(_playerId, _currentPrice, newEMA);
    }
    
    /**
     * @notice Activates a fee tier for a token
     * @param _playerId The ID of the player token
     * @param _tierIndex The index of the fee tier to activate
     */
    function _activateFeeTier(uint256 _playerId, uint256 _tierIndex) internal {
        if(_playerId == 0) revert PlayerIdCannotBeZero();
        if(_tierIndex > 4) revert InvalidTierIndex();

        feeTierActivationTime[_playerId] = block.timestamp;
        activeFeeTier[_playerId] = _tierIndex;
        
        emit DynamicFeeActivated(_playerId, feeTiers[_tierIndex].fee, feeTiers[_tierIndex].cooldown);
    }

    /**
     * @notice Activates the default fee tier for a token
     * @param _playerId The ID of the player token
     */
    function activateDefaultFeeTier(uint256 _playerId) external onlyRole(FEE_MANAGER_ROLE) {
        if(_playerId == 0) revert PlayerIdCannotBeZero();

        feeTierActivationTime[_playerId] = block.timestamp;
        activeFeeTier[_playerId] = 0;

        emit DefaultFeeActivated(_playerId, feeTiers[0].fee, feeTiers[0].cooldown);
    }

    /**
     * @notice Activates the flash sale fee for a token for a specific seller
     * @param _playerId The ID of the player token
     * @param _seller The address of the seller
     */
    function _activateFlashSaleFee(uint256 _playerId, address _seller) internal {
        flashSaleCooldownEnd[_playerId][_seller] = block.timestamp + flashSaleCooldown;
        
        emit FlashSaleFeeActivated(_playerId, flashSaleFee, flashSaleCooldownEnd[_playerId][_seller]);
    }
    
    /**
     * @notice Checks if a sale should be considered a flash sale for a specific seller
     * @param _tokenReserve The amount of tokens in the pool
     * @param _sellAmount The amount of tokens being sold
     */
    function _isFlashSale(uint256 _tokenReserve, uint256 _sellAmount) internal view returns (bool) {
        // High precision calculation using 100k precision
        // (_sellAmount * 100000) / _tokenReserve gives percentage in 100k units
        return (_sellAmount * BASIS_POINTS) / _tokenReserve >= flashSaleThreshold;
    }
    
    /**
     * @notice Gets the current EMA price for a token
     * @param _playerId The ID of the player token
     * @return The current EMA price
     */
    function getEMAPrice(uint256 _playerId) external view returns (uint256) {
        return lastEMAPrice[_playerId];
    }
    
    /**
     * @notice Gets info about the currently active fee tier for a token
     * @param _playerId The ID of the player token
     * @return fee The current fee in basis points
     * @return remainingTime The remaining time until the tier expires (0 for normal tier)
     */
    function getActiveFeeInfo(uint256 _playerId, address _seller) external view returns (uint256 fee, uint256 remainingTime) {
        // Flash sale takes priority for the caller
        if (block.timestamp < flashSaleCooldownEnd[_playerId][_seller]) {
            return (flashSaleFee, flashSaleCooldownEnd[_playerId][_seller] - block.timestamp);
        }
        
        uint256 currentTier = activeFeeTier[_playerId];
        
        // If in normal tier (tier 0), no remaining time
        if (currentTier == 0) {
            return (feeTiers[0].fee, 0);
        }
        
        // Check if escalated tier has expired
        uint256 activationTime = feeTierActivationTime[_playerId];
        uint256 expiryTime = activationTime + feeTiers[currentTier].cooldown;
        
        if (block.timestamp < expiryTime) {
            return (feeTiers[currentTier].fee, expiryTime - block.timestamp);
        } else {
            // Tier expired, return normal tier
            return (feeTiers[0].fee, 0);
        }
    }
    
    /**
     * @notice Calculates the current price of a token
     * @dev This is used to update the EMA but doesn't affect the actual trade pricing
     * @param _currencyReserve The currency reserve for the token
     * @param _tokenReserve The token reserve
     * @return The current price
     */
    function calculateCurrentPrice(uint256 _currencyReserve, uint256 _tokenReserve) external pure returns (uint256) {
        if (_tokenReserve == 0) return 0;
        return (_currencyReserve * 1e18) / _tokenReserve; // Normalize to 18 decimals for consistent price tracking
    }

    /**
     * @notice Sets the normal fee (tier 0)
     * @param _newFee The new normal fee in 100k precision (e.g., 5000 = 5%)
     */
    function setNormalFee(uint256 _newFee) external onlyRole(FEE_MANAGER_ROLE) {
        if(_newFee > 5000) revert("Normal sell fee must be <= 5%");
        feeTiers[0].fee = _newFee;

        emit NormalFeeUpdated(_newFee);
    }
    
    /**
     * @notice Sets the buy fee
     * @dev V3: New function to set separate buy fee
     * @param _newFee The new buy fee in 100k precision (e.g., 5000 = 5%)
     */
    function setBuyFee(uint256 _newFee) external onlyRole(FEE_MANAGER_ROLE) {
        if(_newFee > 5000) revert("Buy fee must be <= 5%");
        buyFee = _newFee;

        emit BuyFeeUpdated(_newFee);
    }

    /**
     * @notice Sets the swap buy fee
     * @dev V3: Sets the fee applied to swap operations
     * @param _newFee The new swap buy fee in 100k precision (e.g., 5000 = 5%)
     */
    function setSwapBuyFee(uint256 _newFee) external onlyRole(FEE_MANAGER_ROLE) {
        if(_newFee > 5000) revert("Swap buy fee must be <= 5%");
        swapBuyFee = _newFee;

        emit SwapBuyFeeUpdated(_newFee);
    }

    /**
     * @notice Gets the normal fee (tier 0)
     * @return The normal fee in basis points
     */
    function getNormalFee() external view returns (uint256) {
        return feeTiers[0].fee;
    }

    /**
     * @notice Gets the buy fee
     * @dev V3: New function to get separate buy fee
     * @return The buy fee in basis points
     */
    function getBuyFee() external view returns (uint256) {
        return buyFee;
    }

    /**
     * @notice Gets the swap buy fee
     * @dev V3: Returns the fee applied to swaps
     * @return The swap buy fee in basis points
     */
    function getSwapBuyFee() external view returns (uint256) {
        return swapBuyFee;
    }

    /**
     * @notice Gets the last update time for a token
     * @param _playerId The ID of the player token
     * @return The last update time
     */
    function getLastEMAUpdateTime(uint256 _playerId) external view returns (uint256) {
        return lastEMAUpdateTime[_playerId];
    }

    /**
     * @notice Gets the flash sale cooldown end for a specific address and token
     * @param _playerId The ID of the player token
     * @param _seller The address of the seller
     * @return The flash sale cooldown end for the specific seller
     */
    function getFlashSaleCooldownEnd(uint256 _playerId, address _seller) external view returns (uint256) {
        if(flashSaleCooldownEnd[_playerId][_seller] == 0) return 0;
        if(block.timestamp > flashSaleCooldownEnd[_playerId][_seller]) return 0;
        return flashSaleCooldownEnd[_playerId][_seller] - block.timestamp;
    }

    /**
     * @notice Resets EMA and clears fee tiers for one or more players
     * @dev Only callable by FEE_MANAGER_ROLE. Useful for resetting market conditions after major events
     * @param _playerIds Array of player token IDs to reset
     */
    function resetEMAToSpotPrice(uint256[] calldata _playerIds) external onlyRole(FEE_MANAGER_ROLE) {
        if(_playerIds.length == 0) revert("Empty arrays");

        for(uint256 i = 0; i < _playerIds.length; i++) {
            uint256 playerId = _playerIds[i];
            
            if(playerId == 0) revert PlayerIdCannotBeZero();
            
            // Reset EMA to 0 (will be set to next trade price)
            lastEMAPrice[playerId] = 0;
            lastEMAUpdateTime[playerId] = 0;
            
            // Clear active fee tier (reset to normal tier)
            activeFeeTier[playerId] = 0;
            feeTierActivationTime[playerId] = 0;
        }
    }

    /**
     * @notice Clears flash sale cooldowns for specific players and addresses
     * @dev Only callable by FEE_MANAGER_ROLE. Useful for clearing cooldowns after resets
     * @param _playerIds Array of player token IDs
     * @param _addresses Array of addresses to clear cooldowns for
     */
    function clearFlashSaleCooldowns(uint256[] calldata _playerIds, address[] calldata _addresses) external onlyRole(FEE_MANAGER_ROLE) {
        if(_playerIds.length == 0) revert("Empty arrays");
        if(_addresses.length == 0) revert("Empty arrays");

        for(uint256 i = 0; i < _playerIds.length; i++) {
            uint256 playerId = _playerIds[i];
            if(playerId == 0) revert PlayerIdCannotBeZero();
            
            for(uint256 j = 0; j < _addresses.length; j++) {
                flashSaleCooldownEnd[playerId][_addresses[j]] = 0;
            }
        }
    }

    // =============================================================================
    // ROLE MANAGEMENT FUNCTIONS
    // =============================================================================

    /**
     * @notice Grant fee manager role to an address
     * @param _account Address to grant the role to
     */
    function grantFeeManagerRole(address _account) external onlyRole(GOVERNOR_ROLE) {
        _grantRole(FEE_MANAGER_ROLE, _account);

        emit FeeManagerRoleGranted(_account);
    }

    /**
     * @notice Revoke fee manager role from an address
     * @param _account Address to revoke the role from
     */
    function revokeFeeManagerRole(address _account) external onlyRole(GOVERNOR_ROLE) {
        _revokeRole(FEE_MANAGER_ROLE, _account);

        emit FeeManagerRoleRevoked(_account);
    }

    /**
     * @notice Grant CALCULATE_FEE_ROLE to an address.
     * @param _account Address to grant the role to
     */
    function grantCalculateFeeRole(address _account) external onlyRole(GOVERNOR_ROLE) {
        if (_account == address(0)) revert ZeroAddress();

        _grantRole(CALCULATE_FEE_ROLE, _account);

        emit CalculateFeeRoleGranted(_account);
    }

    /**
     * @notice Revoke CALCULATE_FEE_ROLE from an address.
     * @param _account Address to revoke the role from
     */
    function revokeCalculateFeeRole(address _account) external onlyRole(GOVERNOR_ROLE) {
        if (_account == address(0)) revert ZeroAddress();
        
        _revokeRole(CALCULATE_FEE_ROLE, _account);

        emit CalculateFeeRoleRevoked(_account);
    }

    /**
     * @dev See {IERC165-supportsInterface}.
     */
    function supportsInterface(bytes4 interfaceId) public view virtual override(AccessControlUpgradeable) returns (bool) {
        return interfaceId == type(IFeeManagerV3).interfaceId || super.supportsInterface(interfaceId);
    }

    /**
     * @notice Required by the UUPSUpgradeable module
     * @dev Only allows admins to upgrade the implementation
     */
    function _authorizeUpgrade(address newImplementation) internal override onlyRole(GOVERNOR_ROLE) {}
}
