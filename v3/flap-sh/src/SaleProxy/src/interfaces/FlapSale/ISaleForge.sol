// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

/// @title ISaleForge Interface
/// @notice Interface for the SaleForge contract that manages FlapSales similar to Pinksale
/// @dev FlapSale is a presale platform where creators can launch token sales with bonding curves
/// The SaleForge manages all FlapSales and their funds, with each sale identified by token address
/// After finalization, tokens are created and liquidity is deployed to Flap Bonding Curve
///
/// How FlapSale works:
/// 1. The creator raises funds in a FlapSale
/// 2. Half of the raised funds are allocated to the dev, and the other half will be used for
///    launching a token on Flap's bonding curve Protocol
/// 3. When launching token on Flap's bonding curve Protocol, there are two cases:
///    (1) If the funds are not enough to send the token to DEX, it will stay on the bonding curve
///    (2) If the funds are enough to send the token to DEX, we will directly send the token to DEX
///        and then if there are remaining funds, we will swap the remaining funds on DEX to buy the token
/// 4. The bought token (both on bonding curve and DEX) will be distributed to FlapSale participants.
///    However, we need to enforce a constraint:
///    - No matter the token is still on the bonding curve or already migrated to DEX, we need to enforce
///      that the resulting price is exactly the same as the participant's price during FlapSale (i.e total raised / total tokens distributed)
///    - To make it possible, we did a hack:
///      (1) There is a minimum amount of funds to be raised to make sure the price when landing on
///          either bonding curve or DEX is not lower than the participant's price during FlapSale
///      (2) For most cases, if we don't burn any tokens, the price on either bonding curve or DEX
///          will be higher than the participant's price during FlapSale. We will burn some tokens
///          to make sure the price is the same as the participant's price during FlapSale
interface ISaleForgeTypes {
    //
    // Types and Structs
    //

    /// @dev FlapSale states representing the lifecycle of a presale
    /// @notice Invalid: dummy state for non-existing presales
    /// @notice Upcoming: before startTime
    /// @notice Active: between startTime and endTime, participation accepted
    /// @notice Finishing: reached hard cap, ready to finalize within 24 hours
    /// @notice Finalized: sale completed, token created and liquidity deployed to Flap Bonding Curve
    /// @notice Failed: sale failed (didn't reach soft cap by endTime or not finalized within 24h)
    /// @notice Canceled: sale canceled by creator before start
    enum SaleState {
        Invalid, // 0: a dummy state for non-existing presales
        Upcoming, // 1: before startTime
        Active, // 2: between startTime and endTime
        Finishing, // 3: reached hard cap, ready to finalize
        Finalized, // 4: sale finalized, token created and liquidity deployed
        Failed, // 5: sale failed (didn't reach soft cap or not finalized within 24h)
        Canceled // 6: sale canceled by creator before start

    }

    /// @dev Parameters for creating a FlapSale
    /// @notice All parameters except enableWhitelist and meta are immutable after creation
    /// @dev Token address can be predicted using salt before token contract creation
    struct SaleParams {
        bytes32 salt; // Salt for CREATE2 token address - IMMUTABLE
        uint256 startTime; // Sale start time - IMMUTABLE
        uint256 endTime; // Sale end time - IMMUTABLE
        uint256 minBuy; // Minimum buy amount per participant - IMMUTABLE
        uint256 maxBuy; // Maximum buy amount per participant - IMMUTABLE
        uint256 dexId; // Target DEX ID for liquidity migration - IMMUTABLE
        uint256 raiseAmt; // Amount of quote token to raise - IMMUTABLE
        uint16 taxRate; // Tax rate in basis points (e.g., 500 = 5%) - IMMUTABLE
        bool enableWhitelist; // Whitelist enabled - MUTABLE (with restrictions)
        string meta; // IPFS CID for sale metadata - MUTABLE (before sale starts)
        string name; // Token name - IMMUTABLE
        string symbol; // Token symbol - IMMUTABLE
        address beneficiary; // Beneficiary address for dev funds - IMMUTABLE
        // V5 tax-specific parameters (only used when taxRate > 0) - IMMUTABLE
        uint64 taxDuration; // Tax duration in seconds (max: 100 years)
        uint64 antiFarmerDuration; // Anti-farmer duration in seconds (max: 1 year)
        uint16 mktBps; // Market allocation basis points (to creator/beneficiary)
        uint16 deflationBps; // Deflation basis points (burned)
        uint16 dividendBps; // Dividend basis points (to dividend contract)
        uint16 lpBps; // Liquidity provision basis points (LP to dead address)
        uint256 minimumShareBalance; // Minimum balance for dividend eligibility (required when dividendBps > 0)
    }

    /// @title Sale Info Struct
    /// @dev mainly used in external view functions to return complete sale info
    struct SaleInfo {
        uint256 startTime; // Sale start time
        uint256 endTime; // Sale end time
        uint256 minBuy; // Minimum buy amount per participant
        uint256 maxBuy; // Maximum buy amount per participant
        uint256 dexId; // Target DEX ID for liquidity migration
        uint256 raiseAmt; // Amount of quote token to raise
        string name; // Token name
        string symbol; // Token symbol
        address creator; // Creator/owner of the sale
        address beneficiary; // Beneficiary address for dev funds
        address quoteToken; // Quote token address
        address saleProxy; // SaleProxy contract address for convenient interaction
        bool enableWhitelist; // Whitelist enabled - can be toggled with restrictions
        SaleState state; // Current sale state (dynamically calculated)
        uint256 totalRaised; // Total amount raised so far in quote token
        bytes32 salt; // Salt for CREATE2 token address
        string meta; // IPFS CID for sale metadata
        SimulationResult economics; // Actual economic breakdown after finalization
        // V5 tax-specific fields (returned from immutable info)
        uint16 taxRate; // Tax rate in basis points
        uint64 taxDuration; // Tax duration in seconds
        uint64 antiFarmerDuration; // Anti-farmer duration in seconds
        uint16 mktBps; // Market allocation basis points
        uint16 deflationBps; // Deflation basis points
        uint16 dividendBps; // Dividend basis points
        uint16 lpBps; // Liquidity provision basis points
        uint256 minimumShareBalance; // Minimum balance for dividend eligibility
        uint64 finalizeDeadline; // Deadline for finalizing after reaching hard cap (zero if not in Finishing state)
    }

    /// @dev Immutable information about a FlapSale
    /// Our contract is a storage monster, so we use SSTORE2 to store immutable data in another contract.
    /// special: https://docs.monad.xyz/developer-essentials/opcode-pricing#cold-access-cost
    /// Monad raises the cold access cost to 4x of the original Ethereum, resulting a lot of gas cost in reading storage
    /// We have to use SSTORE2 to optimize gas cost on reads
    /// @notice Contains all immutable parameters set at sale creation
    struct SaleImmutableInfo {
        bytes32 salt; // Salt for CREATE2 token address
        uint256 startTime; // Sale start time
        uint256 endTime; // Sale end time
        uint256 minBuy; // Minimum buy amount per participant
        uint256 maxBuy; // Maximum buy amount per participant
        uint256 dexId; // Target DEX ID for liquidity migration
        uint256 raiseAmt; // Amount of quote token to raise
        uint16 taxRate; // Tax rate in basis points (e.g., 500 = 5%)
        string name; // Token name
        string symbol; // Token symbol
        address quoteToken; // Quote token address
        address creator; // Creator/owner of the sale
        address beneficiary; // Beneficiary address for dev funds
        address saleProxy; // SaleProxy contract address for convenient interaction
        SimulationResult economics; // Actual economic breakdown after finalization
        // V5 tax-specific fields (immutable)
        uint64 taxDuration; // Tax duration in seconds
        uint64 antiFarmerDuration; // Anti-farmer duration in seconds
        uint16 mktBps; // Market allocation basis points
        uint16 deflationBps; // Deflation basis points
        uint16 dividendBps; // Dividend basis points
        uint16 lpBps; // Liquidity provision basis points
        uint256 minimumShareBalance; // Minimum balance for dividend eligibility
    }

    /// @notice Used to track participation amounts, claims, and refunds per address
    /// @dev Participant information for tracking individual participation
    /// CRTICAL: this should never be more than 1 slot due to the usage of EnumerableMapUpgradeable.AddressToUintMap
    struct ParticipantInfo {
        uint128 participation; // Total amount participated by this address
        bool claimed; // Whether tokens have been claimed (manual or distributed)
        bool refunded; // Whether refund has been processed for failed sales
    }

    /// @dev Parameters for simulating FlapSale token economics
    /// @notice Input parameters for economic simulation calculations
    struct SimulationParams {
        uint256 taxRate; // Tax rate for the token (in basis points, e.g., 500 = 5%)
        uint256 raiseAmt; // Amount of quote token to raise in the FlapSale
        address quoteToken; // Quote token address (must be zero address for now)
        uint8 dexId; // Target DEX ID (must be 0 for now)
    }

    /// @dev Results of FlapSale token economics simulation
    /// @notice Output parameters showing economic breakdown and token distribution
    struct SimulationResult {
        uint256 priceInWad; // Resulting price of the token in wad format (18 decimals)
        uint256 raiseAmt; // Amount of total quote token raised in the FlapSale
        uint256 bondingCurveAmt; // Amount of quote token allocated to spend on the bonding curve
        uint256 dexAmt; // Amount of quote token allocated to spend on DEX (if any)
        uint256 devAmt; // Amount of quote token allocated to the dev
        uint256 feeAmt; // Amount of quote token allocated to the fee receiver
        uint256 tokens; // Amount of tokens to distribute to FlapSale participants
        uint256 burns; // Amount of tokens to burn
        bool onBondingCurve; // Whether the token will remain on the bonding curve (true) or be migrated to DEX (false)
    }

    //
    // Events
    //

    /// @notice Emitted when a new FlapSale is created
    event FlapSaleSaleCreated(address token, address creator, address saleProxy, SaleParams params);

    /// @notice Emitted when someone participates in a sale
    event FlapSaleParticipation(address token, address participant, uint256 amount);

    /// @notice Emitted when whitelist is updated
    event FlapSaleWhitelistUpdated(address token, address[] addresses, bool added);

    /// @notice Emitted when whitelist is enabled/disabled
    event FlapSaleWhitelistToggled(address token, bool enabled);

    /// @notice Emitted when sale metadata is updated
    event FlapSaleMetadataUpdated(address token, string newMeta);

    /// @notice Emitted when a sale is canceled
    event FlapSaleSaleCanceled(address token, address creator);

    /// @notice Emitted when a sale is finalized
    event FlapSaleSaleFinalized(address token, address creator, uint256 totalRaised);

    /// @notice Emitted when a sale fails
    event FlapSaleSaleFailed(address token, string reason);

    /// @notice Emitted when tokens are distributed to a participant
    event FlapSaleTokensDistributed(address token, address participant, uint256 amount);

    /// @notice Emitted when a participant claims their tokens
    event FlapSaleTokensClaimed(address token, address participant, uint256 amount);

    /// @notice Emitted when a participant is refunded
    event FlapSaleRefund(address token, address participant, uint256 amount);

    //
    // Errors
    //
    /// @notice Thrown when FlapSale economics simulation results in invalid parameters (e.g., negative burn amount)
    error InvalidFlapSaleEconomics();

    /// @notice Thrown when attempting to operate on a non-existent sale
    error SaleNotFound();

    /// @notice Thrown when attempting to create a sale for a token that already has an existing sale
    error SaleAlreadyExists();

    /// @notice Thrown when attempting an operation that is not valid for the current sale state
    error InvalidState();

    /// @notice Thrown when a non-creator attempts to perform creator-only operations
    error NotCreator();

    /// @notice Thrown when a non-whitelisted address attempts to participate in a whitelisted sale
    error NotWhitelisted();

    /// @notice Thrown when participation amount is outside the allowed range (minBuy/maxBuy)
    error InvalidAmount();

    /// @notice Not from SaleProxy contract
    error OnlyProxy();

    /// @notice Thrown when attempting to call a function only allowed from the Portal contract
    error OnlyPortal();

    /// @notice Thrown when attempting to finalize a sale after the finalization deadline has passed
    error DeadlinePassed();

    /// @notice Thrown when tax distribution percentages don't add up to 100%
    error InvalidTaxDistribution();

    /// @notice Thrown when tax duration exceeds maximum allowed
    error TaxDurationTooLong();

    /// @notice Thrown when tax duration is less than minimum allowed
    error TaxDurationTooShort();

    /// @notice Thrown when anti-farmer duration exceeds maximum allowed
    error AntiFarmerDurationTooLong();

    /// @notice Thrown when anti-farmer duration is less than minimum allowed
    error AntiFarmerDurationTooShort();

    /// @notice Thrown when minimum share balance is too low for dividend eligibility
    error MinimumShareBalanceTooLow();

    /// @notice Thrown when attempting to create a sale without whitelist or disable whitelist when enforcement is enabled
    error WhitelistEnforcementViolation();
}

interface ISaleForge is ISaleForgeTypes {
    //
    // Creator Functions
    //

    /// @notice Create a new FlapSale
    /// @param params Sale parameters including token details, timing, and caps
    /// @return token Predicted token address (using CREATE2 with salt)
    /// @return saleProxy SaleProxy contract address for convenient interaction
    /// @dev Requires payment of creation fee in ETH/native token
    /// @dev Token address can be predicted before actual token creation using salt
    /// @dev Creates a SaleProxy for easier interaction with the specific sale
    function createSale(SaleParams calldata params) external payable returns (address token, address saleProxy);

    /// @notice Cancel a sale before it starts
    /// @param token Token address identifying the sale
    /// @dev Only creator can call this function
    /// @dev Can only be called when sale is in Upcoming state
    /// @dev No refunds to the creator
    function cancelSale(address token) external;

    /// @notice Finalize a sale after it reaches the hard cap
    /// @param token Token address identifying the sale
    /// @dev Only creator can call this function
    /// @dev Can only be called when sale is in Finishing state
    /// @dev Must be called within 24 hours of reaching hard cap, or sale becomes Failed
    /// @dev Creates token contract and deploys liquidity to Flap Bonding Curve
    function finalizeSale(address token) external;

    /// @notice Update sale metadata before sale starts
    /// @param token Token address identifying the sale
    /// @param newMeta New IPFS CID for sale metadata
    /// @dev Only creator can call this function
    /// @dev Can only be called before sale starts (Upcoming state)
    function updateMetadata(address token, string calldata newMeta) external;

    /// @notice Enable or disable whitelist with state-dependent restrictions
    /// @param token Token address identifying the sale
    /// @param enabled Whether to enable the whitelist
    /// @dev Only the creator can call this function
    /// @dev Before sale starts: can toggle freely between enabled/disabled
    /// @dev After sale starts: can only disable (cannot re-enable once disabled)
    function toggleWhitelist(address token, bool enabled) external;

    /// @notice Add multiple addresses to whitelist
    /// @param token Token address identifying the sale
    /// @param addresses Array of addresses to add to whitelist
    /// @dev Only creator can call this function
    /// @dev All whitelisted addresses are stored on-chain
    /// @dev Can add multiple addresses in a single transaction for gas efficiency
    function addToWhitelist(address token, address[] calldata addresses) external;

    /// @notice Remove multiple addresses from whitelist
    /// @param token Token address identifying the sale
    /// @param addresses Array of addresses to remove from whitelist
    /// @dev Only creator can call this function
    /// @dev Can remove multiple addresses in a single transaction for gas efficiency
    function removeFromWhitelist(address token, address[] calldata addresses) external;

    //
    // Participation Functions
    //

    /// @notice Participate in a sale with ETH/native token
    /// @param token Token address identifying the sale
    /// @dev Must be called during Active state
    /// @dev If whitelist is enabled, only whitelisted addresses can participate
    /// @dev Participation amount must be between minBuy and maxBuy limits
    /// @dev Total participation cannot exceed hard cap
    function participate(address token) external payable;

    /// @notice Participate through SaleProxy (internal use by proxy contracts)
    /// @param token Token address identifying the sale
    /// @param participant Actual participant address to record the participation
    /// @dev Only callable by the corresponding SaleProxy contract
    /// @dev Used when users send ETH directly to SaleProxy's fallback function
    /// @dev Ensures proper attribution of participation from proxy
    function participateThroughProxy(address token, address participant) external payable;

    /// @notice Claim purchased tokens after sale finalization
    /// @param token Token address identifying the sale
    /// @dev Can only be called after sale is Finalized
    /// @dev Transfers tokens directly to participant
    /// @dev Marks participant as claimed to prevent double-claiming
    function claimTokens(address token) external;

    /// @notice Get refund after sale failure
    /// @param token Token address identifying the sale
    /// @dev Can only be called after sale is Failed
    /// @dev Returns contributed ETH/native token to participant
    /// @dev Marks participant as refunded to prevent double-refunding
    function getRefund(address token) external;

    //
    // Distribution Functions
    //

    /// @notice Distribute tokens to participants in batches (can be called by anyone)
    /// @param token Token address identifying the sale
    /// @param limit Maximum number of participants to process in this call
    /// @return remaining Number of participants remaining to be processed
    /// @dev Can only be called after sale is Finalized
    /// @dev Processes participants in order, skipping those who already claimed manually
    /// @dev Uses limit parameter to prevent gas limit issues with large participant lists
    /// @dev Can be called multiple times until all participants receive tokens
    /// @dev Anyone can call this function to help with token distribution
    /// @dev Tracks last processed participant index to continue from where it left off in subsequent calls
    /// @dev noops for the case that remaining is zero
    function distributeTokens(address token, uint256 limit) external returns (uint256 remaining);

    /// @notice Finalize a sale and distribute tokens to participants in a single transaction
    /// @param token Token address identifying the sale
    /// @param limit Maximum number of participants to process in this transaction
    /// @return remaining Number of participants remaining to be processed
    /// @dev Only creator can call this function
    /// @dev Can only be called when sale is in Finishing state
    /// @dev Must be called within 24 hours of reaching hard cap, or sale becomes Failed
    /// @dev Creates token contract, deploys liquidity to Flap Bonding Curve, and distributes tokens
    /// @dev Uses limit parameter to prevent gas limit issues with large participant lists
    function finalizeSaleAndDistribute(address token, uint256 limit) external returns (uint256 remaining);

    //
    // View Functions
    //

    /// @notice Check if an address is whitelisted for a specific sale
    /// @param token Token address identifying the sale
    /// @param user Address to check whitelist status
    /// @return isWhitelisted Whether the address is whitelisted
    /// @dev Returns false if whitelist is disabled for the sale
    function isWhitelisted(address token, address user) external view returns (bool isWhitelisted);

    /// @notice Get whitelisted addresses with pagination support
    /// @param token Token address identifying the sale
    /// @param offset Starting index for pagination (0-based)
    /// @param limit Maximum number of addresses to return
    /// @return addresses Array of whitelisted addresses in the requested range
    /// @return totalCount Total number of whitelisted addresses
    /// @dev Use pagination to handle large whitelist efficiently
    /// @dev All whitelisted addresses are stored on-chain for transparency
    function getWhitelist(address token, uint256 offset, uint256 limit)
        external
        view
        returns (address[] memory addresses, uint256 totalCount);

    /// @notice Get detailed information about a specific participant
    /// @param token Token address identifying the sale
    /// @param participant Participant address to query
    /// @return info Complete participant information including participation, claim, and refund status
    function getParticipantInfo(address token, address participant)
        external
        view
        returns (ParticipantInfo memory info);

    /// @notice Get total number of unique participants to a sale
    /// @param token Token address identifying the sale
    /// @return count Number of unique addresses that have participated
    function getParticipantCount(address token) external view returns (uint256 count);

    /// @notice Get participants and their participation amounts with pagination
    /// @param token Token address identifying the sale
    /// @param offset Starting index for pagination (0-based)
    /// @param limit Maximum number of participants to return
    /// @return participants Array of participant addresses in the requested range
    /// @return participations Array of participation amounts corresponding to each participant
    /// @return totalCount Total number of unique participants
    /// @dev Use pagination to handle large participant lists efficiently
    /// @dev Participant order is maintained consistently for pagination
    function getParticipants(address token, uint256 offset, uint256 limit)
        external
        view
        returns (address[] memory participants, uint256[] memory participations, uint256 totalCount);

    /// @notice Get token distribution progress for a finalized sale
    /// @param token Token address identifying the sale
    /// @return distributed Number of participants who have already received tokens
    /// @return total Total number of participants in the sale
    /// @dev Reverts if the sale has not been finalized yet
    function getTokenDistributionProgress(address token) external view returns (uint256 distributed, uint256 total);

    /// @notice Simulate FlapSale token economics based on given parameters
    /// @param params Simulation parameters including tax rate, raise amount, quote token, and DEX ID
    /// @return result Economic simulation results including price, allocations, and token amounts
    function simulateEconomics(SimulationParams calldata params)
        external
        view
        returns (SimulationResult memory result);

    /// @notice Get comprehensive information about a specific sale
    /// @param token Token address identifying the sale
    /// @return saleInfo Complete sale information including parameters, state, and statistics
    /// @dev Returns all creation parameters, current state, raised amount, and derived data
    function getSaleInfo(address token) external view returns (SaleInfo memory saleInfo);
}
