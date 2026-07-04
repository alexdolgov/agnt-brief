// SPDX-License-Identifier: Unlicense
pragma solidity 0.8.24;

//solhint-disable func-name-mixedcase

/// @title IPairFactory Interface
/// @notice Interface for the PairFactory contract that manages trading pairs
interface IPairFactory {
    /// @notice Error thrown when trying to create a pair with the same token
    error PairFactorySameAddress();
    /// @notice Error thrown when using zero address as token
    error PairFactoryZeroAddress();
    /// @notice Error thrown when pair already exists
    error PairFactoryPairAlreadyExists();
    /// @notice Error thrown when trying to set voter that's already set
    error PairFactoryVoterAlreadySetted();
    /// @notice Error thrown when trying to set zero address as voter
    error PairFactoryVoterZeroAddress();

    /// @notice Emitted when a new pair is created
    /// @param token0 The first token of the pair (sorted by address)
    /// @param token1 The second token of the pair (sorted by address)
    /// @param pair The address of the created pair
    event PairFactoryPairCreated(address indexed token0, address indexed token1, address pair);
    /// @notice Emitted when the default fee is updated
    /// @param fee The new fee value
    event UpdateFee(uint256 fee);
    /// @notice Emitted when the treasury fee percentage is updated
    /// @param feePercentage The new fee percentage
    event UpdateFeeTreasuryPercentage(uint256 feePercentage);
    /// @notice Emitted when the treasury address is updated
    /// @param treasury The new treasury address
    event UpdateTreasury(address treasury);
    /// @notice Emitted when a custom fee is updated for a token pair
    /// @param tokenIn The input token
    /// @param tokenOut The output token
    /// @param fee The new custom fee
    event UpdateCustomFee(address indexed tokenIn, address indexed tokenOut, uint256 fee);
    /// @notice Emitted when the voter address is updated
    /// @param voter The new voter address
    event UpdateVoter(address indexed voter);
    /// @notice Emitted when the pair fees factory address is updated
    /// @param pairFeesFactory The new pair fees factory address
    event UpdatePairFeesFactory(address indexed pairFeesFactory);
    /// @notice Emitted when a gauge is created for a pair
    /// @param pair The pair address
    /// @param gauge The created gauge address
    /// @param tokenA The first token of the pair
    /// @param tokenB The second token of the pair
    event CreateGauge(address indexed pair, address indexed gauge, address tokenA, address tokenB);
    /// @notice Emitted when gauge creation fails
    /// @param pair The pair address for which gauge creation failed
    event CreateGaugeFailed(address indexed pair);

    /// @notice Default sell fee for GT3 token (5%)
    function GT3_DEFAULT_FEE_SELL() external view returns (uint256);
    /// @notice Default buy fee for GT3 token (0.1%)
    function GT3_DEFAULT_FEE_BUY() external view returns (uint256);

    /// @notice The address of the PairFeesFactory contract
    function pairFeesFactory() external view returns (address);
    /// @notice The address of the Voter contract
    function voter() external view returns (address);
    /// @notice The default fee for pairs
    function fee() external view returns (uint256);
    /// @notice Array containing all created pairs
    function allPairs(uint256) external view returns (address);
    /// @notice Returns the total number of pairs created
    function allPairsLength() external view returns (uint256);
    /// @notice Custom fees mapping for specific token pairs
    function customFee(address tokenIn, address tokenOut) external view returns (uint256);

    /// @notice Creates a new pair for two tokens
    /// @dev Tokens are sorted by address and a new pair is created if it doesn't exist
    /// @param tokenA The first token of the pair
    /// @param tokenB The second token of the pair
    /// @return pair The address of the created pair
    function createPair(address tokenA, address tokenB) external returns (address pair);

    /// @notice Sets the initial voter address
    /// @dev Can only be called once when voter is not set
    /// @param voter The voter address to set
    function setVoter(address voter) external;

    /// @notice Updates the voter address
    /// @dev Can only be called by owner
    /// @param voter The new voter address
    function updateVoter(address voter) external;

    /// @notice Checks if an address is a valid pair
    /// @param pair The address to check
    /// @return True if the address is a valid pair
    function isPair(address pair) external view returns (bool);

    /// @notice Gets the pair address for two tokens
    /// @param tokenA The first token
    /// @param tokenB The second token
    /// @return The pair address, or zero address if it doesn't exist
    function getPair(address tokenA, address tokenB) external view returns (address);

    /// @notice Gets the treasury address
    /// @return The current treasury address
    function treasury() external view returns (address);

    /// @notice Gets the treasury fee percentage
    /// @return The current treasury fee percentage
    function feeTreasuryPercentage() external view returns (uint256);

    /// @notice Gets the fee for a specific token pair and direction
    /// @param token0 First token address
    /// @param token1 Second token address
    /// @param tokenIn Input token address (use address(0) for default)
    /// @param tokenOut Output token address (use address(0) for default)
    /// @return The fee value for the specified pair and direction
    function getFee(address token0, address token1, address tokenIn, address tokenOut)
        external
        view
        returns (uint256);

    /// @notice Updates the default fee
    /// @param newFee The new fee value
    function updateFee(uint256 newFee) external;

    /// @notice Updates the treasury fee percentage
    /// @param newFeePercentage The new treasury fee percentage
    function updateFeeTreasuryPercentage(uint256 newFeePercentage) external;

    /// @notice Updates the treasury address
    /// @param newTreasury The new treasury address
    function updateTreasury(address newTreasury) external;

    /// @notice Updates custom fee for a specific token pair direction
    /// @param tokenIn Input token address
    /// @param tokenOut Output token address
    /// @param fee The new custom fee value
    function updateCustomFee(address tokenIn, address tokenOut, uint256 fee) external;

    /// @notice Updates the fees factory address
    /// @param feesFactory The new fees factory address
    function updateFeesFactory(address feesFactory) external;
}
