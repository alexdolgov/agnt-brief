pragma solidity 0.8.20;

/**
 * @title RateLimiter
 * @author Tensorplex Labs
 * @notice RateLimiter is a library used by BridgeWrapper to create limits for token burning & minting. 
 *         For security we implement a maxCapacity. It should not be possible to mint or burn more than the maxCapacity in one transaction.
 *         When we mint or burn X amount, the X amount is deducted from the tokensAvailable pool.
 *         Each instance of RateLimiter will have its own limit, meaning minting and burning will have individual limits.
 *         If a user tries to mint or burn in excess of tokensAvailable, the call will be reverted. 
 *         The tokensAvailable will replenish by the value of refillRate every minute.
 *         Rather than refill on the minute every minute, calling BridgeWrapper's RecieveFromChain / SendToChain will trigger a batch refill.
 */
library RateLimiter {
    // @dev contains the relevant data for rate limiting 
    struct RateLimit {
        uint256 lastRefillTime; // timestamp of last limit refill 
        uint256 tokensAvailable; // Number of tokens left that can be burned / minted
        uint256 maxCapacity; // The max number of tokens that can be burned / minted
        uint256 refillRate; // Number of tokens to be replenished per minute. 
    }
    
    // @notice: initializes the ratelimiter. 
    function initialize(RateLimit storage rateLimit, uint256 maxCapacity, uint256 refillRate) internal {
        rateLimit.maxCapacity = maxCapacity;
        rateLimit.refillRate = refillRate;
        rateLimit.tokensAvailable = maxCapacity; // Start with max capacity
        rateLimit.lastRefillTime = block.timestamp;
    }

    /**
     * @notice replenishes the tokensAvailable according to the time elapsed.
     * @param rateLimit contains relevant rate limiting state variables
     */
    function refill(RateLimit storage rateLimit) internal {
        uint256 timeElapsed = block.timestamp - rateLimit.lastRefillTime;
        if (timeElapsed >= 60 seconds) {
            uint256 periodsElapsed = timeElapsed / 60 seconds;
            uint256 tokensToAdd = periodsElapsed * rateLimit.refillRate;
            rateLimit.tokensAvailable += tokensToAdd;
            if (rateLimit.tokensAvailable > rateLimit.maxCapacity) {
                // Update the amount of tokens that can be minted based on current period
                // considering the elapsed time
                rateLimit.tokensAvailable = rateLimit.maxCapacity;
            }
            // Update last refill time for future transactions
            rateLimit.lastRefillTime += periodsElapsed * 60 seconds;
        }
    }

    /**
     * @notice Consume verifies that there is sufficient availableTokens for the input amount
     * @dev returns true when amount in is less than tokensAvailable and false otherwise.  
     * @param rateLimit contains relevant limiting data.
     * @param amount is the amount of tokens that is attempting to be burned / minted
     */
    function consume(RateLimit storage rateLimit, uint256 amount) internal returns (bool) {
        refill(rateLimit); // Refill before checking
        if (rateLimit.tokensAvailable >= amount) {
            rateLimit.tokensAvailable -= amount;
            return true;
        }
        return false;
    }
    /**
     * 
     * @notice getAvailableTokens returns the current available tokens for minting / burning.
     * @param rateLimit contains relevant limiting data.
     */
    function getAvailableTokens(RateLimit storage rateLimit) internal view returns (uint256) {
        uint256 timeElapsed = block.timestamp - rateLimit.lastRefillTime;
        if (timeElapsed > 60 seconds) {
            uint256 periodsElapsed = timeElapsed / 60 seconds;
            uint256 tokensToAdd = periodsElapsed * rateLimit.refillRate;
            uint256 availableTokens = rateLimit.tokensAvailable + tokensToAdd;
            if (availableTokens > rateLimit.maxCapacity) {
                availableTokens = rateLimit.maxCapacity;
            }
            return availableTokens;
        }
        return rateLimit.tokensAvailable;
    }
}
