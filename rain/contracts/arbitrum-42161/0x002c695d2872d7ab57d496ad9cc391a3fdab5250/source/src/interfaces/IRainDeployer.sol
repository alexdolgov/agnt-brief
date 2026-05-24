// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

/**
 * @title IRainDeployer
 * @notice Interface for the RainDeployer contract.
 */
interface IRainDeployer {
    /* ========================== STRUCTS ======================================= */

    /**
     * @notice Struct to define parameters for creating a RainPool.
     * @param isPublic Indicates whether the pool is public or private.
     * @param resolverIsAI Indicates whether the owner is the pool resolver or not.
     * @param poolOwner The address of the pool owner.
     * @param referrer The address of the pool referrer.
     * @param startTime The timestamp when the pool starts.
     * @param endTime The timestamp when the pool ends.
     * @param numberOfOptions The total number of options available in the pool.
     * @param oracleEndTime The timestamp when oracle results should be finalized.
     * @param ipfsUri The IPFS URI containing metadata for the pool.
     * @param initialLiquidity The amount of initial liquidity added to the pool.
     * @param liquidityPercentages An array representing the percentage allocation of liquidity to each option.
     * @param poolResolver Address of the pool resolver
     */
    struct Params {
        bool isPublic;
        bool resolverIsAI;
        address poolOwner;
        address referrer;
        uint256 startTime;
        uint256 endTime;
        uint256 numberOfOptions;
        uint256 oracleEndTime;
        string ipfsUri;
        uint256 initialLiquidity;
        uint256[] liquidityPercentages;
        address poolResolver;
        address baseToken;
    }

    /**
     * @notice Stores configuration and routing data for a supported token.
     * @dev Used to determine swap routes, pool type, and allowance status for a token.
     */
    struct TokenData {
        /// @notice The Uniswap pool version used for this token.
        TokenPool tokenPool;
        /// @notice Indicates whether the token is currently allowed by the protocol.
        bool isAllowed;
        /// @notice The address of the router contract used for swaps.
        address routerAddress;
        /// @notice The address of the router helper contract, if applicable.
        address routerHelper;
        /// @notice The Uniswap swap path from USDT to the token.
        bytes pathUSDTToToken;
        /// @notice The Uniswap swap path from the token to USDT.
        bytes pathTokenToUSDT;
        /// @notice The Uniswap swap path from the token to WETH.
        bytes pathTokenWETH;
    }

    /* ================================= ENUMS ================================= */

    /**
     * @notice Supported Uniswap pool versions.
     * @param V2 Uniswap V2 pool.
     * @param V3 Uniswap V3 pool.
     * @param V4 Uniswap V4 pool.
     */
    enum TokenPool {
        V2,
        V3,
        V4
    }

    /* =============================  EVENTS ==================================== */

    /**
     * @notice Emitted when a new pool is created.
     * @param poolAddress The address of the newly created pool.
     * @param poolCreator The address of the pool creator.
     * @param uri The IPFS URI containing pool metadata.
     */
    event PoolCreated(address indexed poolAddress, address indexed poolCreator, string uri);

    /**
     * @notice Emitted when a token is set for a pool.
     * @param poolAddress The address of the pool for which the token is set.
     * @param tokenAddress The address of the token assigned to the pool.
     * @param tokenDecimals The number of decimals used by the token.
     * @param tokenName The name of the token.
     * @param tokenSymbol The symbol of the token.
     */
    event PoolTokenSet(
        address indexed poolAddress,
        address indexed tokenAddress,
        uint256 tokenDecimals,
        string tokenName,
        string tokenSymbol
    );

    /**
     * @notice Emitted when a new token is added to the list of allowed tokens.
     * @param tokenAddress The address of the newly allowed token.
     * @param tokenDecimals The number of decimals used by the token.
     * @param tokenName The name of the token.
     * @param tokenSymbol The symbol of the token.
     */
    event NewTokenAllowed(address indexed tokenAddress, uint256 tokenDecimals, string tokenName, string tokenSymbol);

    /**
     * @notice Emitted when an existing token is removed from the list of allowed tokens.
     * @param tokenAddress The address of the disallowed token.
     * @param tokenDecimals The number of decimals used by the token.
     * @param tokenName The name of the token.
     * @param tokenSymbol The symbol of the token.
     */
    event ExistingTokenDisallowed(
        address indexed tokenAddress,
        uint256 tokenDecimals,
        string tokenName,
        string tokenSymbol
    );

    /* ============================= ERRORS ================================= */

    /**
     * @dev Thrown when an action is attempted by an address that is not a created pool.
     */
    error OnlyCreatedPool();

    /**
     * @dev Thrown when the address is not valid.
     */
    error InvalidAddress();

    /**
     * @dev Thrown when a user passes an invalid value.
     */
    error InvalidValue();

    /**
     * @dev Thrown when there's a mismatch between the amount the user has passed and the
       balance of the the new `RainPool`.
     */
    error BalanceMismatch();

    /**
     * @dev Thrown when a user passes an invalid initial liquidity.
     */
    error InvalidInitialLiquidity();

    /**
     * @dev Thrown when there is a length mismatch between array or number of options.
     */
    error LengthMismatch();

    /**
     * @dev Thrown when there is a array length of function selectors array is 0.
     */
    error InvalidBytes();

    /**
     * @dev Thrown when a user tries to create a pool with an invalid token.
     */
    error TokenNotAllowed();

    /**
     * @dev Thrown when the pool liquidity for the external provided pool is insufficient to perform a swap.
     */
    error InsufficientPoolLiquidity();

    /**
     * @dev Thrown when path is not valid for swapping.
     */
    error InvalidPath();

    /* ============================= FUNCTIONS ================================= */

    /**
     * @notice Returns the address of the Oracle Factory used for creating oracle contracts.
     * @dev This address is set during deployment and used for resolving results.
     * @return The address of the Oracle Factory contract.
     */
    function oracleFactoryAddress() external view returns (address);

    /**
     * @notice Returns the address of the base token used in the pools.
     * @dev The base token is the primary currency used for transactions within the platform.
     * @return The address of the base token contract.
     */
    function baseToken() external view returns (address);

    /**
     * @notice Returns the platform's designated address for receiving fees.
     * @dev All platform fees are transferred to this address.
     * @return The address where platform fees are collected.
     */
    function platformAddress() external view returns (address);

    /**
     * @notice Returns the address for the backend pool result resolver AI.
     * @return The address of the resolver AI.
     */
    function resolverAI() external view returns (address);

    /**
     * @notice Returns the total number of pools created.
     * @dev This value is incremented each time a new pool is deployed.
     * @return The total count of deployed pools.
     */
    function totalPools() external view returns (uint256);

    /**
     * @notice Returns the liquidity fee percentage.
     * @dev The liquidity fee is applied to the total pool funds.
     * @return The liquidity fee percentage.
     */
    function liquidityFee() external view returns (uint256);

    /**
     * @notice Returns the platform fee percentage.
     * @dev This fee is deducted from the total pool funds as a platform charge.
     * @return The platform fee percentage.
     */
    function platformFee() external view returns (uint256);

    /**
     * @notice Returns the fixed fee charged for oracle services.
     * @dev This fee is applied for using an external oracle to resolve pool outcomes.
     * @return The fixed oracle service fee.
     */
    function oracleFixedFee() external view returns (uint256);

    /**
     * @notice Returns the fee percentage allocated to pool creators.
     * @dev Pool creators receive a percentage of the total pool funds as their share.
     * @return The creator fee percentage.
     */
    function creatorFee() external view returns (uint256);

    /**
     * @notice Returns the fee percentage allocated to pool closer.
     * @dev Pool closer receive a percentage of the total pool funds as their share.
     * @return The closer fee percentage.
     */
    function closingFee() external view returns (uint256);

    /**
     * @notice Returns the fee percentage allocated to result resolvers.
     * @dev This fee compensates external resolvers who determine the pool outcome.
     * @return The result resolver fee percentage.
     */
    function resultResolverFee() external view returns (uint256);

    /**
     * @notice Returns the address of the `disputeResolverAI`.
     * @dev This is the address for the dispute resolver AI.
     * @return The address of the Dispute Resolver.
     */
    function disputeResolverAI() external view returns (address);

    /**
     * @notice Returns the current pool index for a given user.
     * @dev Each user has a unique pool index that tracks their pool creations.
     * @param user The address of the user.
     * @return The current pool index associated with the user.
     */
    function currentIndex(address user) external view returns (uint256);

    /**
     * @notice Returns the address of a specific pool created by a user.
     * @dev This function allows retrieval of pools based on user address and index.
     * @param user The address of the pool creator.
     * @param index The index of the pool for the user.
     * @return The address of the user's pool at the specified index.
     */
    function userPools(address user, uint256 index) external view returns (address);

    /**
     * @notice Returns the address of a pool based on its global index.
     * @dev Pools are assigned unique global indices when deployed.
     * @param index The global index of the pool.
     * @return The address of the pool at the specified index.
     */
    function allPools(uint256 index) external view returns (address);

    /**
     * @notice Checks if a given address corresponds to a deployed pool.
     * @dev This function verifies if a pool was created using the deployer contract.
     * @param pool The address of the pool to check.
     * @return True if the pool exists, false otherwise.
     */
    function createdPools(address pool) external view returns (bool);

    /**
     * @notice Returns the address of the rain token.
     * @return The address of the rain token.
     */
    function rainToken() external view returns (address);

    /**
     * @notice Returns the address of the rain pool diamond factory.
     * @return The address of the rain pool diamond factory.
     */
    function diamondFactory() external view returns (address);

    /**
     * @notice Returns all function selectors provided by a specific facet.
     * @dev The `facet` parameter corresponds to the facet contract’s address
     *      registered within the diamond storage.
     * @param facet The facet address to query.
     * @param index The facet address to query.
     * @return The `facetSelectors`. The array of 4-byte function selectors implemented by that facet.
     */
    function facetFunctionSelectors(address facet, uint256 index) external view returns (bytes4);

    /**
     * @notice Returns the address of the DiamondCut facet.
     * @dev This facet handles adding, replacing, or removing functions within the diamond.
     * @return The address of the DiamondCut facet.
     */
    function diamondCutFacet() external view returns (address);

    /**
     * @notice Returns the address of the DiamondLoupe facet.
     * @dev This facet provides introspection functions for inspecting diamond facets and selectors.
     * @return The address of the DiamondLoupe facet.
     */
    function diamondLoupeFacet() external view returns (address);

    /**
     * @notice Returns the address of the DiamondTrading facet.
     * @dev This facet contains the logic related to trading or marketplace operations.
     * @return The address of the DiamondTrading facet.
     */
    function diamondTradingFacet() external view returns (address);

    /**
     * @notice Returns the address of the DiamondResolution facet.
     * @dev This facet manages dispute resolutions or settlement logic.
     * @return The address of the DiamondResolution facet.
     */
    function diamondResolutionFacet() external view returns (address);

    /**
     * @notice Returns the address of the DiamondDispute facet.
     * @dev This facet contains the logic for initiating and handling disputes.
     * @return The address of the DiamondDispute facet.
     */
    function diamondDisputeFacet() external view returns (address);

    /**
     * @notice Returns the address of the DiamondClaim facet.
     * @dev This facet manages claim logic, such as withdrawals, settlements, or reward claims.
     * @return The address of the DiamondClaim facet.
     */
    function diamondClaimFacet() external view returns (address);

    /**
     * @notice Returns the address of the DiamondCancelOrder facet.
     * @dev This facet provides functionality for canceling or invalidating active orders.
     * @return The address of the DiamondCancelOrder facet.
     */
    function diamondCancelOrderFacet() external view returns (address);

    /**
     * @notice Returns the address of the DiamondInfo facet.
     * @dev This facet provides informational and metadata retrieval functions.
     * @return The address of the DiamondInfo facet.
     */
    function diamondInfoFacet() external view returns (address);

    /**
     * @notice Returns the address of the DiamondGetter facet.
     * @dev This facet exposes read-only getter functions for on-chain data inspection.
     * @return The address of the DiamondGetter facet.
     */
    function diamondGetterFacet() external view returns (address);

    /**
     * @notice Returns the address of the Diamond Oracle Fee Facet.
     * @dev This facet is responsible for handling oracle-related fee logic within the Diamond architecture.
     * @return The address of the oracle fee facet.
     */
    function diamondOracleFeeFacet() external view returns (address);

    /**
     * @notice Returns configuration and routing data for a given token.
     * @dev Flattens and returns the stored TokenData struct associated with the token address.
     * @param tokenAddress The address of the token being queried.
     * @return The Uniswap pool version used for this token.
     * @return The indicator of whether the token is currently allowed by the protocol.
     * @return The address of the router contract used for swaps.
     * @return The address of the router helper contract, if applicable.
     * @return The Uniswap swap path from USDT to the token.
     * @return The Uniswap swap path from the token to USDT.
     * @return The Uniswap swap path from the token to WETH.
     */
    function tokenData(
        address tokenAddress
    ) external view returns (TokenPool, bool, address, address, bytes calldata, bytes calldata, bytes calldata);

    /**
     * @notice Initializes the Rain Deployer contract with required parameters.
     * @dev This function sets the core addresses and fee structures for the contract.
     * It should only be called once during contract deployment.
     * @param _rainFactory The address of the RainFactory contract.
     * @param _oracleFactoryAddress The address of the Oracle Factory contract.
     * @param _baseToken The address of the base token used for transactions.
     * @param _platformAddress The address where platform fees are collected.
     * @param _resolverAI The address of the pool result resolver AI.
     * @param _rainToken The address of the Rain Token.
     * @param _diamondFactory The address of the diamond factory.
     * @param _baseTokenDecimals The number of decimals of the base token.
     * @param _liquidityFee The percentage fee allocated for liquidity providers.
     * @param _platformFee The percentage fee collected by the platform.
     * @param _oracleFixedFee The fixed fee for using an oracle service.
     * @param _creatorFee The percentage fee allocated to pool creators.
     * @param _resultResolverFee The percentage fee paid to result resolvers.
     * @param _closingFee The percentage fee paid to the pool closers.
     */
    function initialize(
        address _rainFactory,
        address _oracleFactoryAddress,
        address _baseToken,
        address _platformAddress,
        address _resolverAI,
        address _rainToken,
        address _diamondFactory,
        uint256 _baseTokenDecimals,
        uint256 _liquidityFee,
        uint256 _platformFee,
        uint256 _oracleFixedFee,
        uint256 _creatorFee,
        uint256 _resultResolverFee,
        uint256 _closingFee
    ) external;

    /**
     * @notice Creates a new RainPool contract instance with the given parameters.
     * @dev Deploys a new RainPool contract and transfers the necessary base tokens
     * for initial liquidity and oracle fees if applicable.
     * @param params A struct containing all required parameters for pool creation.
     * @return The address of the newly created RainPool contract.
     */
    function createPool(IRainDeployer.Params memory params) external returns (address);

    /**
     * @notice Creates an external oracle for resolving a pool's outcome.
     * @dev This function deploys a new oracle via the oracle factory contract.
     * @param numberOfOracles The number of oracle nodes to be created.
     * @param oracleReward The total reward distributed among the oracle nodes.
     * @param fixedFee A fixed fee for oracle creation.
     * @param creator The address of the pool creator.
     * @param endTime The timestamp when the oracle's result should be finalized.
     * @param totalNumberOfOptions The number of possible outcomes the oracle will validate.
     * @param questionUri A reference URI (e.g., IPFS) containing the event details.
     * @return The address of the newly created oracle.
     */
    function createOracle(
        uint256 numberOfOracles,
        uint256 oracleReward,
        uint256 fixedFee,
        address creator,
        uint256 endTime,
        uint256 totalNumberOfOptions,
        string memory questionUri
    ) external returns (address);

    /* =========================== SETTERS ====================================== */

    /**
     * @notice Updates the address of the RainToken.
     * @dev Can only be called by the contract owner.
     * @param newRainToken The new RainToken address.
     */
    function setRainToken(address newRainToken) external;

    /**
     * @notice Updates the address of the resolver AI EOA.
     * @dev Can only be called by the contract owner.
     * @param newResolverAI The new resolver AI EOA address.
     */
    function setResolverAI(address newResolverAI) external;

    /**
     * @notice Updates the address of the Oracle Factory contract.
     * @dev Can only be called by the contract owner.
     * @param newOracleFactoryAddress The new oracle factory address.
     */
    function setOracleFactoryAddress(address newOracleFactoryAddress) external;

    /**
     * @notice Updates the base token and its decimal precision.
     * @dev Can only be called by the contract owner.
     * @param newBaseToken The address of the new base token.
     */
    function setBaseToken(address newBaseToken) external;

    /**
     * @notice Updates the fixed fee required for oracle creation.
     * @dev Can only be called by the contract owner.
     * @param newOracleFixedFee The new oracle fixed fee.
     */
    function setOracleFixedFee(uint256 newOracleFixedFee) external;

    /**
     * @notice Updates the fee allocated to pool creators.
     * @dev Can only be called by the contract owner.
     * @param newCreatorFee The new creator fee.
     */
    function setCreatorFee(uint256 newCreatorFee) external;

    /**
     * @notice Updates the fee allocated to pool closers.
     * @dev Can only be called by the contract owner.
     * @param newClosingFee The new closing fee.
     */

    function setClosingFee(uint256 newClosingFee) external;

    /**
     * @notice Updates the fee allocated to the result resolver.
     * @dev Can only be called by the contract owner.
     * @param newResultResolverFee The new result resolver fee.
     */
    function setResultResolverFee(uint256 newResultResolverFee) external;

    /**
     * @notice Updates the platform's treasury address.
     * @dev Can only be called by the contract owner.
     * @param newPlatformAddress The new platform address.
     */
    function setPlatformAddress(address newPlatformAddress) external;

    /**
     * @notice Updates the liquidity fee percentage.
     * @dev Can only be called by the contract owner.
     * @param newLiquidityFee The new liquidity fee percentage.
     */
    function setLiquidityFee(uint256 newLiquidityFee) external;

    /**
     * @notice Updates the platform fee percentage.
     * @dev Can only be called by the contract owner.
     * @param newPlatformFee The new platform fee percentage.
     */
    function setPlatformFee(uint256 newPlatformFee) external;

    /**
     * @notice Updates the address of the Dispute Resolver AI.
     * @dev Can only be called by the contract owner.
     * @param newDisputeResolverAI The new RainFactory address.
     */
    function setDisputeResolverAI(address newDisputeResolverAI) external;

    /**
     * @notice Updates the DiamondCut facet address and its function selectors.
     * @dev Only callable by the contract owner.
     * @param newDiamondCutFacet The new facet contract address.
     * @param newFacetFunctionSelectors The function selectors belonging to the facet.
     */
    function setNewDiamondCutFacet(address newDiamondCutFacet, bytes4[] calldata newFacetFunctionSelectors) external;

    /**
     * @notice Updates the DiamondLoupe facet address and its function selectors.
     * @dev Only callable by the contract owner.
     * @param newDiamondLoupeFacet The new facet contract address.
     * @param newFacetFunctionSelectors The function selectors belonging to the facet.
     */
    function setNewDiamondLoupeFacet(
        address newDiamondLoupeFacet,
        bytes4[] calldata newFacetFunctionSelectors
    ) external;

    /**
     * @notice Updates the DiamondTrading facet address and its function selectors.
     * @dev Only callable by the contract owner.
     * @param newDiamondTradingFacet The new facet contract address.
     * @param newFacetFunctionSelectors The function selectors belonging to the facet.
     */
    function setNewDiamondTradingFacet(
        address newDiamondTradingFacet,
        bytes4[] calldata newFacetFunctionSelectors
    ) external;

    /**
     * @notice Updates the DiamondResolution facet address and its function selectors.
     * @dev Only callable by the contract owner.
     * @param newDiamondResolutionFacet The new facet contract address.
     * @param newFacetFunctionSelectors The function selectors belonging to the facet.
     */
    function setNewDiamondResolutionFacet(
        address newDiamondResolutionFacet,
        bytes4[] calldata newFacetFunctionSelectors
    ) external;

    /**
     * @notice Updates the DiamondDispute facet address and its function selectors.
     * @dev Only callable by the contract owner.
     * @param newDiamondDisputeFacet The new facet contract address.
     * @param newFacetFunctionSelectors The function selectors belonging to the facet.
     */
    function setNewDiamondDisputeFacet(
        address newDiamondDisputeFacet,
        bytes4[] calldata newFacetFunctionSelectors
    ) external;

    /**
     * @notice Updates the DiamondClaim facet address and its function selectors.
     * @dev Only callable by the contract owner.
     * @param newDiamondClaimFacet The new facet contract address.
     * @param newFacetFunctionSelectors The function selectors belonging to the facet.
     */
    function setNewDiamondClaimFacet(
        address newDiamondClaimFacet,
        bytes4[] calldata newFacetFunctionSelectors
    ) external;

    /**
     * @notice Updates the DiamondCancelOrder facet address and its function selectors.
     * @dev Only callable by the contract owner.
     * @param newDiamondCancelOrderFacet The new facet contract address.
     * @param newFacetFunctionSelectors The function selectors belonging to the facet.
     */
    function setNewDiamondCancelOrderFacet(
        address newDiamondCancelOrderFacet,
        bytes4[] calldata newFacetFunctionSelectors
    ) external;

    /**
     * @notice Updates the DiamondInfo facet address and its function selectors.
     * @dev Only callable by the contract owner.
     * @param newDiamondInfoFacet The new facet contract address.
     * @param newFacetFunctionSelectors The function selectors belonging to the facet.
     */
    function setNewDiamondInfoFacet(address newDiamondInfoFacet, bytes4[] calldata newFacetFunctionSelectors) external;

    /**
     * @notice Updates the DiamondGetter facet address and its function selectors.
     * @dev Only callable by the contract owner.
     * @param newDiamondGetterFacet The new facet contract address.
     * @param newFacetFunctionSelectors The function selectors belonging to the facet.
     */
    function setNewDiamondGetterFacet(
        address newDiamondGetterFacet,
        bytes4[] calldata newFacetFunctionSelectors
    ) external;

    /**
     * @notice Updates the `DiamondOracleFee` facet address and its function selectors.
     * @dev Only callable by the contract owner.
     * @param newDiamondOracleFeeFacet The new facet contract address.
     * @param newFacetFunctionSelectors The function selectors belonging to the facet.
     */
    function setNewOracleFeeFacet(
        address newDiamondOracleFeeFacet,
        bytes4[] calldata newFacetFunctionSelectors
    ) external;

    /**
     * @notice Allows a new token to be used by the protocol.
     * @dev Stores routing and pool configuration for the token and marks it as allowed.
     *      Access to this function is typically restricted (e.g., owner or governance).
     * @param newTokenAddress The address of the token to be allowed.
     * @param tokenData_ The configuration data associated with the token, including
     *        pool type, router addresses, and swap paths.
     */
    function allowNewToken(address newTokenAddress, IRainDeployer.TokenData calldata tokenData_) external;

    /**
     * @notice Removes a token previously allowed by the protocol.
     * @dev Only the owner has the authority to call this function.
     */
    function disallowExistingToken(address tokenAddress) external;

}
