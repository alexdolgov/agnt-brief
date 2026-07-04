// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "./interfaces/IERC314.sol";
import "./interfaces/IBIFKN314FactoryV2.sol";
import "./interfaces/IBIFKN314Wrapper.sol";
import "./interfaces/IBIFKN314WrapperFactoryV2.sol";

/**
 * @title B&B Router
 * @dev ASCII Art for the B&B Router
 *
 *  ______     ___       ______       ______       ____     __    __   ________    _____   ______
 * (_   _ \   / _ \     (_   _ \     (   __ \     / __ \    ) )  ( (  (___  ___)  / ___/  (   __ \
 *  ) (_) ) ( (_) )      ) (_) )     ) (__) )   / /  \ \  ( (    ) )     ) )    ( (__     ) (__) )
 *  \   _/   \/  /       \   _/     (    __/   ( ()  () )  ) )  ( (     ( (      ) __)   (    __/
 *  /  _ \   / _/\       /  _ \      ) \ \  _  ( ()  () ) ( (    ) )     ) )    ( (       ) \ \  _
 *  ) (_) ) ( (_)_\__   _) (_) )    ( ( \ \_))  \ \__/ /   ) \__/ (     ( (      \ \___  ( ( \ \_))
 * (______/   \_______) (______/     )_) \__/    \____/    \______/     /__\      \____\  )_) \__/
 *               \_\
 *  _________     ____      _____   ________    _____    _____   ________      ______       ____     __    __   ________    _____    _____
 * (_   _____)   (    )    / ____\ (___  ___)  / ___/   / ____\ (___  ___)    (   __ \     / __ \    ) )  ( (  (___  ___)  / ___/   / ____\
 *  ) (___      / /\ \   ( (___       ) )    ( (__    ( (___       ) )        ) (__) )   / /  \ \  ( (    ) )     ) )    ( (__    ( (___
 * (   ___)    ( (__) )   \___ \     ( (      ) __)    \___ \     ( (        (    __/   ( ()  () )  ) )  ( (     ( (      ) __)    \___ \
 *  ) (         )    (        ) )     ) )    ( (           ) )     ) )        ) \ \  _  ( ()  () ) ( (    ) )     ) )    ( (           ) )
 * (   )       /  /\  \   ___/ /     ( (      \ \___   ___/ /     ( (        ( ( \ \_))  \ \__/ /   ) \__/ (     ( (      \ \___   ___/ /
 *  \_/       /__(  )__\ /____/      /__\      \____\ /____/      /__\        )_) \__/    \____/    \______/     /__\      \____\ /____/
 *    ____        __      _      ________   __    __    _____      _____    _____         ____        __      _    _____   ________
 *   / __ \      /  \    / )    (___  ___) (  \  /  )  / ___/     (  __ \  (_   _)       (    )      /  \    / )  / ___/  (___  ___)
 *  / /  \ \    / /\ \  / /         ) )     \ (__) /  ( (__        ) )_) )   | |         / /\ \     / /\ \  / /  ( (__        ) )
 * ( ()  () )   ) ) ) ) ) )        ( (       ) __ (    ) __)      (  ___/    | |        ( (__) )    ) ) ) ) ) )   ) __)      ( (
 * ( ()  () )  ( ( ( ( ( (          ) )     ( (  ) )  ( (          ) )       | |   __    )    (    ( ( ( ( ( (   ( (          ) )
 *  \ \__/ /   / /  \ \/ /         ( (       ) )( (    \ \___     ( (      __| |___) )  /  /\  \   / /  \ \/ /    \ \___     ( (
 *   \____/   (_/    \__/          /__\     /_/  \_\    \____\    /__\     \________/  /__(  )__\ (_/    \__/      \____\    /__\
 *
 */

/**
 * @dev Router contract for the BIFKN314 protocol that handles swapping and liquidity operations
 * between ERC314 tokens and AVAX. Implements various swap functions and helper methods to
 * facilitate trading in the BIFKN314 ecosystem.
 */

contract BIFKN314RouterV2 is Ownable(msg.sender), ReentrancyGuard {
    using SafeERC20 for IERC20;

    /**
     * @dev Constants representing the function selectors for legacy swap functions.
     *
     * LEGACY_NATIVE_TO_TOKEN_SELECTOR:
     *   - Selector for the `swapNativeToToken(uint256,uint256)` function.
     *   - This function is used to swap native currency (e.g., AVAX) to a token.
     *
     * LEGACY_TOKEN_TO_NATIVE_SELECTOR:
     *   - Selector for the `swapTokenToNative(uint256,uint256,uint256)` function.
     *   - This function is used to swap a token to native currency (e.g., AVAX).
     *
     * LEGACY_UNWRAP_SELECTOR:
     *  - Selector for the `unwrap(uint256)` function.
     * - This function is used to unwrap a token to ERC20.
     *
     * LEGACY_WRAP_SELECTOR:
     * - Selector for the `wrap(uint256)` function.
     * - This function is used to wrap a token to ERC314.
     *
     * These selectors are derived using the `keccak256` hash of the function signatures.
     */
    bytes4 private constant LEGACY_NATIVE_TO_TOKEN_SELECTOR =
        bytes4(keccak256(bytes("swapNativeToToken(uint256,uint256)")));

    bytes4 private constant LEGACY_TOKEN_TO_NATIVE_SELECTOR =
        bytes4(keccak256(bytes("swapTokenToNative(uint256,uint256,uint256)")));

    bytes4 private constant LEGACY_UNWRAP_SELECTOR =
        bytes4(keccak256(bytes("unwrap(uint256)")));

    bytes4 private constant LEGACY_WRAP_SELECTOR =
        bytes4(keccak256(bytes("wrap(uint256)")));

    /**
     * @notice Reference to the BIFKN314 factory contract
     */
    IBIFKN314FactoryV2 public immutable factory;

    /**
     * @notice Reference to the wrapper factory contract that handles ERC20 to ERC314 wrapping
     */
    IBIFKN314WrapperFactoryV2 public immutable wrapperFactory;

    /**
     * @notice The address of the Wrapped AVAX (WAVAX) token
     */
    address public immutable WAVAX;

    /**
     * @notice Mapping to track legacy erc314 tokens
     */
    mapping(address => bool) public legacyERC314Tokens;

    /**
     * @notice Mapping to track legacy ERC314 wrappers
     */
    mapping(address => bool) public legacyWrappers;

    /**
     * @dev A private mapping that acts as a cache to associate a token address
     * with its corresponding ERC314 address. This is used to optimize lookups
     * and reduce redundant computations.
     *
     * @notice these could be the same address if it's a native ERC314
     *
     * Mapping:
     * - Key: The address of the token.
     * - Value: The associated ERC314 address for the token.
     */
    mapping(address => address) public tokenToERC314Cache;

    /**
     * @dev A nested mapping that tracks whether an address has given maximum approval
     *      to another address. The outer mapping key represents the owner address, and
     *      the inner mapping key represents the spender address. The boolean value
     *      indicates whether the spender has maximum approval from the owner.
     * @notice This mapping is public, so it includes an automatically generated getter
     *         function to check the approval status between two addresses.
     */
    mapping(address => mapping(address => bool)) public _maxApprovals;

    /**
     * @dev Error thrown when an invalid wrapper factory address is provided
     */
    error InvalidWrapperFactory();

    /**
     * @dev Error thrown when an invalid factory address is provided
     */
    error InvalidFactory();

    /**
     * @dev Error thrown when a transaction is submitted after its deadline
     */
    error TransactionExpired();

    /**
     * @dev Error thrown when an invalid token is provided
     * @param token The address of the invalid token
     */
    error InvalidToken(address token);

    /**
     * @dev Error thrown when an AVAX transfer fails
     */
    error AVAXTransferFailed();

    /**
     * @dev Error thrown when an insufficient amount is provided
     */
    error InsufficientAmount();

    /**
     * @dev Error thrown when there is insufficient liquidity for an operation
     */
    error InsufficientLiquidity();

    /**
     * @dev Error thrown when a path has an invalid length
     */
    error InvalidPathLength();

    /**
     * @dev Error thrown when input cannot be AVAX for a specific operation
     */
    error InputCannotBeAVAX();

    /**
     * @dev Error thrown when output cannot be AVAX for a specific operation
     */
    error OutputCannotBeAVAX();

    /**
     * @dev Error thrown when a path must end with AVAX but doesn't
     */
    error PathMustEndWithAVAX();

    /**
     * @dev Error thrown when a token cannot be AVAX for a specific operation
     */
    error TokenCannotBeAVAX();

    /**
     * @dev Error thrown when no AVAX is sent with a transaction that requires it
     */
    error NoAVAXSent();

    /**
     * @dev Error thrown when there is insufficient token amount for an operation
     */
    error InsufficientTokenAmount();

    /**
     * @dev Error thrown when there is insufficient AVAX amount for an operation
     */
    error InsufficientAVAXAmount();

    /**
     * @dev Error thrown when input amount exceeds maximum allowed
     * @param required The required amount
     * @param max The maximum allowed amount
     */
    error ExcessiveInputAmount(uint256 required, uint256 max);

    /**
     * @dev Error thrown when output amount is less than expected
     * @param expected The expected minimum amount
     * @param actual The actual amount received
     */
    error InsufficientOutputAmount(uint256 expected, uint256 actual);

    /**
     * @dev Error thrown when a path is invalid
     */
    error InvalidPath();

    /**
     * @dev Error thrown when input must be AVAX but isn't
     */
    error InputMustBeAVAX();

    /**
     * @dev Error thrown when approval of a token fails
     */
    error TokenApprovalFailed(address token, address spender, uint256 amount);

    /**
     * @dev Error thrown when a token is not provided for an operation
     */
    error NoTokensProvided();

    /**
     * @dev Error thrown when a wrapper is not provided for an operation
     */
    error NoWrappersProvided();

    /**
     * @dev Error thrown when a swap fails
     */
    error SwapFailed(
        address tokenAddress,
        address spender,
        uint256 amountIn,
        uint256 amountOutMin
    );

    /**
     * @dev Error thrown when a swap fails due to insufficient output amount
     */
    error OutputDeliveryFailed(
        address tokenAddress,
        address spender,
        uint256 amount,
        address to
    );

    /**
     * @dev Error thrown when a wrap operation fails
     */
    error WrapFailed(address token, address wrapper, uint256 amount);

    /**
     * @dev Error thrown when an unwrap operation fails
     */
    error UnwrapFailed(address token, address wrapper, uint256 amount);

    /**
     * @notice Emitted when the cached ERC-314 implementation for a token is invalidated.
     * @dev Indicates that any previously stored mapping from the token to an ERC-314 contract
     *      should no longer be trusted and consumers should refresh their lookup.
     * @param token The token address whose cache entry was invalidated.
     */
    event TokenCacheInvalidated(address indexed token);

    /**
     * @notice Emitted when the cached ERC-314 implementation for a token is updated.
     * @dev Signals that the mapping from the token to its corresponding ERC-314 contract
     *      has been set or replaced. Consumers may use this event to update local caches
     *      and react to changes in token-to-ERC314 associations.
     * @param token The token address whose cache entry was updated.
     * @param erc314 The address of the new ERC-314 implementation associated with the token.
     */
    event TokenCacheUpdated(address indexed token, address indexed erc314);

    /**
     * @dev Constructor initializes the router with factory and wrapper factory addresses
     * @param _wavax Address of the WAVAX token
     * @param _wrapperFactory Address of the wrapper factory contract
     * @param _factory Address of the BIFKN314 factory contract
     */
    constructor(address _wavax, address _wrapperFactory, address _factory) {
        // Validate the provided addresses
        if (_wavax == address(0)) {
            revert InvalidToken(_wavax);
        }
        if (_wrapperFactory == address(0)) {
            revert InvalidWrapperFactory();
        }
        if (_factory == address(0)) {
            revert InvalidFactory();
        }
        wrapperFactory = IBIFKN314WrapperFactoryV2(_wrapperFactory);
        factory = IBIFKN314FactoryV2(_factory);
        WAVAX = _wavax;
    }

    /**
     * @dev Fallback function to receive AVAX
     */
    receive() external payable {}

    /**
     * @dev Modifier to ensure a transaction is executed before the deadline
     * @param deadline The timestamp by which the transaction must be executed
     */
    modifier ensure(uint deadline) {
        if (block.timestamp > deadline) {
            revert TransactionExpired();
        }
        _;
    }

    // **Helper Functions**

    /**
     * @dev Sets the legacy status for multiple tokens at once
     * @param tokens Array of token addresses to mark as legacy
     * @param isLegacy Boolean value indicating whether the tokens use legacy API
     */
    function setLegacyTokens(
        address[] calldata tokens,
        bool isLegacy
    ) external onlyOwner {
        if (tokens.length == 0) {
            revert NoTokensProvided();
        }

        for (uint i = 0; i < tokens.length; i++) {
            legacyERC314Tokens[tokens[i]] = isLegacy;
        }
    }

    /**
     * @dev Sets the legacy status for multiple wrappers at once
     * @param wrappers Array of wrapper addresses to mark as legacy
     * @param isLegacy Boolean value indicating whether the wrappers use legacy API
     */
    function setLegacyWrappers(
        address[] calldata wrappers,
        bool isLegacy
    ) external onlyOwner {
        if (wrappers.length == 0) {
            revert NoWrappersProvided();
        }

        for (uint i = 0; i < wrappers.length; i++) {
            legacyWrappers[wrappers[i]] = isLegacy;
        }
    }

    /**
     * @notice Retrieves the pair address (also the same as the token address itself for ERC314) for a given token pair.
     * @dev In the BIFKN314 protocol, one of the tokens must be WAVAX.
     *      If neither token is WAVAX, the function returns the zero address.
     * @param tokenA The address of the first token in the pair.
     * @param tokenB The address of the second token in the pair.
     * @return The address of the ERC314 token associated with the non-WAVAX token,
     *         or the zero address if neither token is WAVAX.
     */
    function getPair(
        address tokenA,
        address tokenB
    ) external view returns (address) {
        // In UniswapV2, this would check both token order combinations
        // In BIFKN314, we can assume one token must be WAVAX
        if (tokenA != WAVAX && tokenB != WAVAX) {
            return address(0); // Neither token is WAVAX
        }
        // Determine which token is the non-WAVAX token
        address token = tokenA == WAVAX ? tokenB : tokenA;

        return _getERC314Token(token); // Return the ERC314 token address
    }

    /**
     * @notice Retrieves the reserves of AVAX and the specified token from the corresponding ERC314 token contract.
     * @dev This function calls the `getReserves` method on the ERC314 token contract associated with the given token.
     * @param token The address of the token for which reserves are being queried.
     * @return avaxReserve The amount of AVAX held in reserve.
     * @return tokenReserve The amount of the specified token held in reserve.
     */
    function getReserves(
        address token
    ) external view returns (uint256 avaxReserve, uint256 tokenReserve) {
        address erc314Token = _getERC314Token(token);
        IERC314 tokenContract = IERC314(payable(erc314Token));
        (avaxReserve, tokenReserve) = tokenContract.getReserves();
    }

    /**
     * @notice Returns all tokens in the ecosystem
     * @dev This function returns a list of all tokens that can be traded through the router,
     *      including both native ERC314 tokens and the original ERC20 tokens that have wrapped versions
     * @return tokens Array containing all token addresses
     */
    function getAllTokens() external view returns (address[] memory tokens) {
        // Step 1: Get all native ERC314 tokens from the factory
        address[] memory erc314Tokens = factory.getAllTokens();
        uint256 erc314TokenCount = erc314Tokens.length;

        // Step 2: Create a dynamic array to collect all tokens
        // We'll use a two-pass approach to avoid dynamic arrays
        uint256 totalTokenCount = erc314TokenCount;

        // First count how many additional ERC20 tokens we need to include
        for (uint256 i = 0; i < erc314TokenCount; i++) {
            address token = erc314Tokens[i];
            IBIFKN314Wrapper wrapper = wrapperFactory.bifkn314ToWrapper(
                IERC20(token)
            );

            // If this ERC314 token has a wrapper (meaning it's a wrapped ERC20),
            // we need to include its original ERC20 token too
            if (address(wrapper) != address(0)) {
                totalTokenCount++;
            }
        }

        // Add 1 for the WAVAX token
        totalTokenCount++;

        // Step 3: Allocate the final array with correct size
        tokens = new address[](totalTokenCount);

        // Step 4: Fill in all native ERC314 tokens first
        for (uint256 i = 0; i < erc314TokenCount; i++) {
            tokens[i] = erc314Tokens[i];
        }

        // Step 5: Add all original ERC20 tokens that are wrapped
        uint256 currentIndex = erc314TokenCount;
        for (uint256 i = 0; i < erc314TokenCount; i++) {
            address token = erc314Tokens[i];
            IBIFKN314Wrapper wrapper = wrapperFactory.bifkn314ToWrapper(
                IERC20(token)
            );

            if (address(wrapper) != address(0)) {
                // Get the original ERC20 token for this wrapped token
                address originalToken = address(wrapper.originalToken());
                tokens[currentIndex] = originalToken;
                currentIndex++;
            }
        }

        // Add WAVAX to the list of tokens at the end
        tokens[tokens.length - 1] = WAVAX;

        return tokens;
    }

    /**
     * @dev Calculates the input amount required for a given output amount
     * @param token The token address
     * @param amountOut The desired output amount
     * @param reserveIn The reserve of the input token
     * @param reserveOut The reserve of the output token
     * @return amountIn The required input amount
     */
    function getAmountIn(
        address token,
        uint256 amountOut,
        uint256 reserveIn,
        uint256 reserveOut
    ) public view returns (uint256 amountIn) {
        address erc314Token = _getERC314Token(token);
        IERC314 tokenContract = IERC314(payable(erc314Token));
        amountIn = tokenContract.getAmountIn(amountOut, reserveIn, reserveOut);
    }

    /**
     * @dev Calculates the output amount for a given input amount
     * @param token The token address
     * @param amountIn The input amount
     * @param reserveIn The reserve of the input token
     * @param reserveOut The reserve of the output token
     * @return amountOut The expected output amount
     */
    function getAmountOut(
        address token,
        uint256 amountIn,
        uint256 reserveIn,
        uint256 reserveOut
    ) public view returns (uint256 amountOut) {
        address erc314Token = _getERC314Token(token);
        IERC314 tokenContract = IERC314(payable(erc314Token));
        (amountOut, , ) = tokenContract.getAmountOut(
            amountIn,
            reserveIn,
            reserveOut
        );
    }

    /**
     * @dev Calculates the input amounts required for a given output amount along a path,
     * using the optimized path for calculation.
     * @param amountOut The desired output amount
     * @param path The array of token addresses representing the swap path
     * @return amounts Array of input/output amounts for each step in the path
     */
    function getAmountsIn(
        uint256 amountOut,
        address[] memory path
    ) public view returns (uint256[] memory amounts) {
        if (path.length < 2) {
            revert InvalidPathLength();
        }

        // Optimize the path first
        address[] memory optimizedPath = optimizePath(path);
        uint256 optPathLength = optimizedPath.length;
        amounts = new uint[](optPathLength);
        amounts[optPathLength - 1] = amountOut;

        // Work backwards through the path
        for (uint i = optPathLength - 1; i > 0; ) {
            address fromToken = optimizedPath[i - 1];
            address toToken = optimizedPath[i];

            // Get ERC314 version of the target token (the one with the pool)
            address targetERC314;
            uint256 adjustedOutput;

            if (toToken == WAVAX) {
                // Token -> AVAX case
                targetERC314 = _getERC314Token(fromToken);
                IERC314 tokenContract = IERC314(payable(targetERC314));

                // No need to adjust AVAX output (already in 18 decimals)
                adjustedOutput = amounts[i];

                // Get reserves (token reserves first for Token -> AVAX)
                (uint256 reserveNative, uint256 reserveToken) = tokenContract
                    .getReserves();

                // Calculate input in ERC314 decimals
                uint256 amountIn = tokenContract.getAmountIn(
                    adjustedOutput,
                    reserveToken,
                    reserveNative
                );

                // Convert input amount from ERC314 to original token decimals
                amounts[i - 1] = _adjustDecimals(
                    fromToken, // original token
                    targetERC314, // ERC314 version
                    amountIn,
                    false // converting FROM ERC314
                );
            } else {
                // AVAX -> Token case
                targetERC314 = _getERC314Token(toToken);
                IERC314 tokenContract = IERC314(payable(targetERC314));

                // Convert desired output to ERC314 decimals
                adjustedOutput = _adjustDecimals(
                    toToken, // original token
                    targetERC314, // ERC314 version
                    amounts[i],
                    true // converting TO ERC314
                );

                // Get reserves (AVAX is always first for ERC314 tokens)
                (uint256 reserveNative, uint256 reserveToken) = tokenContract
                    .getReserves();

                // Calculate required AVAX input (will be in 18 decimals)
                amounts[i - 1] = tokenContract.getAmountIn(
                    adjustedOutput,
                    reserveNative,
                    reserveToken
                );
            }

            unchecked {
                --i;
            }
        }

        return amounts;
    }

    /**
     * @dev Calculates the output amounts for a given input amount along a path,
     * using the optimized path for calculation.
     * @param amountIn The input amount
     * @param path The array of token addresses representing the swap path
     * @return amounts Array of input/output amounts for each step in the path
     */
    function getAmountsOut(
        uint256 amountIn,
        address[] memory path
    ) public view returns (uint256[] memory amounts) {
        if (path.length < 2) revert InvalidPathLength();

        // Optimize the path first
        address[] memory optimizedPath = optimizePath(path);
        amounts = new uint[](optimizedPath.length);
        amounts[0] = amountIn;

        for (uint i = 0; i < optimizedPath.length - 1; ) {
            address fromToken = optimizedPath[i];
            address toToken = optimizedPath[i + 1];

            // Get ERC314 version of the target token (the one with the pool)
            address targetERC314;
            uint256 adjustedInput;

            if (fromToken == WAVAX) {
                // AVAX -> Token case
                targetERC314 = _getERC314Token(toToken);
                IERC314 tokenContract = IERC314(payable(targetERC314));

                // No need to adjust AVAX input (already in 18 decimals)
                adjustedInput = amounts[i];

                // Get reserves (AVAX is always first for ERC314 tokens)
                (uint256 reserveNative, uint256 reserveToken) = tokenContract
                    .getReserves();

                // Calculate output in ERC314 decimals
                (uint256 amountOut, , ) = tokenContract.getAmountOut(
                    adjustedInput,
                    reserveNative,
                    reserveToken
                );

                // Convert output amount from ERC314 to desired token decimals
                amounts[i + 1] = _adjustDecimals(
                    toToken, // original token
                    targetERC314, // ERC314 version
                    amountOut,
                    false // converting FROM ERC314
                );
            } else {
                // Token -> AVAX case
                targetERC314 = _getERC314Token(fromToken);

                // Convert input amount from token to ERC314 decimals
                adjustedInput = _adjustDecimals(
                    fromToken, // original token
                    targetERC314, // ERC314 version
                    amounts[i],
                    true // converting TO ERC314
                );

                IERC314 tokenContract = IERC314(payable(targetERC314));

                // Get reserves
                (uint256 reserveNative, uint256 reserveToken) = tokenContract
                    .getReserves();

                // Calculate output (using token reserves first since input is token)
                (uint256 amountOut, , ) = tokenContract.getAmountOut(
                    adjustedInput,
                    reserveToken,
                    reserveNative
                );

                // No need to convert AVAX output (already in 18 decimals)
                amounts[i + 1] = amountOut;
            }

            unchecked {
                ++i;
            }
        }

        return amounts;
    }

    /**
     * @dev Provides a quote given some amount of an asset and pair reserves
     * @param amountA The amount of asset A
     * @param reserveA The reserve of asset A
     * @param reserveB The reserve of asset B
     * @return amountB The equivalent amount of asset B
     */
    function quote(
        uint256 amountA,
        uint256 reserveA,
        uint256 reserveB
    ) external pure returns (uint256 amountB) {
        if (amountA == 0) {
            revert InsufficientAmount();
        }
        if (reserveA == 0 || reserveB == 0) {
            revert InsufficientLiquidity();
        }
        unchecked {
            amountB = (amountA * reserveB) / reserveA;
        }
    }

    /**
     * @dev Optimizes a path for the ERC314 ecosystem, where all tokens are paired only with AVAX.
     * Prioritizes most common path patterns for gas efficiency.
     * @param path The original path provided by the user
     * @return optimizedPath The most efficient path for execution
     */
    function optimizePath(
        address[] memory path
    ) public view returns (address[] memory) {
        if (path.length < 2) revert InvalidPathLength();
        if (path[0] == path[path.length - 1]) revert InvalidPath();

        // Direct return for most common cases
        address firstToken = path[0];
        address lastToken = path[path.length - 1];

        if (firstToken == WAVAX || lastToken == WAVAX) {
            address[] memory shortPath = new address[](2);
            shortPath[0] = firstToken;
            shortPath[1] = lastToken;
            return shortPath;
        }

        // Token-to-token via WAVAX
        address[] memory optimizedPath = new address[](3);
        optimizedPath[0] = firstToken;
        optimizedPath[1] = WAVAX;
        optimizedPath[2] = lastToken;
        return optimizedPath;
    }

    // **Liquidity Functions**

    /**
     * @dev Adds liquidity to an ERC314 token's AMM with AVAX.
     * @param token The token address to add liquidity for
     * @param amountTokenDesired The amount of token desired to add as liquidity
     * @param amountTokenMin The minimum amount of token to add as liquidity
     * @param amountAVAXMin The minimum amount of AVAX to add as liquidity
     * @param to The address that will receive the liquidity tokens
     * @param deadline The timestamp after which the transaction will revert
     * @return amountToken The actual amount of token used
     * @return amountAVAX The actual amount of AVAX used
     * @return liquidity The amount of liquidity tokens minted
     */
    function addLiquidityAVAX(
        address token,
        uint256 amountTokenDesired,
        uint256 amountTokenMin,
        uint256 amountAVAXMin,
        address to,
        uint256 deadline
    )
        external
        payable
        nonReentrant
        ensure(deadline)
        returns (uint256 amountToken, uint256 amountAVAX, uint256 liquidity)
    {
        if (token == WAVAX) {
            revert TokenCannotBeAVAX();
        }
        if (msg.value == 0) {
            revert NoAVAXSent();
        }

        // Handle token transfer and wrapping
        (uint256 wrappedAmount, address erc314Token) = _handleInputToken(
            token,
            amountTokenDesired
        );

        // Adjust token amount to match ERC314 decimals
        uint256 adjustedAmountTokenDesired = _adjustDecimals(
            token,
            erc314Token,
            wrappedAmount,
            true
        );

        uint256 adjustedAmountTokenMin = _adjustDecimals(
            token,
            erc314Token,
            amountTokenMin,
            true
        );

        // Validate that the desired token amount is sufficient
        if (wrappedAmount < adjustedAmountTokenMin) {
            revert InsufficientTokenAmount();
        }

        // Call addLiquidity on the ERC314 token
        IERC314 tokenContract = IERC314(payable(erc314Token));
        liquidity = tokenContract.addLiquidity{value: msg.value}(
            adjustedAmountTokenDesired,
            to,
            deadline
        );

        // Calculate the actual amount of tokens used
        uint256 erc314TokenBalanceAfter = IERC20(erc314Token).balanceOf(
            address(this)
        );
        uint256 erc314TokensUsed = wrappedAmount -
            (
                erc314TokenBalanceAfter > wrappedAmount
                    ? 0
                    : erc314TokenBalanceAfter
            );

        // Convert the used token amount back to the original token decimals
        amountToken = _adjustDecimals(
            token,
            erc314Token,
            erc314TokensUsed,
            false
        );

        // Calculate the actual amount of AVAX used
        uint256 avaxUsed = msg.value - address(this).balance;
        amountAVAX = avaxUsed;

        // Validate that the AVAX used meets the minimum requirement
        if (avaxUsed < amountAVAXMin) {
            revert InsufficientAVAXAmount();
        }

        // Verify that the adjusted token amount meets the minimum requirement
        if (erc314TokensUsed < adjustedAmountTokenMin) {
            revert InsufficientTokenAmount();
        }

        // Return any excess tokens to the user
        uint256 excessTokenBalance = wrappedAmount - erc314TokensUsed;
        if (excessTokenBalance > 0) {
            // If the excess token is not the ERC314 token, unwrap it back to the original token
            if (token != erc314Token) {
                // Unwrap unused ERC314 tokens back to original ERC20 tokens
                uint256 unwrappedAmount = _safeUnwrap(
                    erc314Token,
                    excessTokenBalance
                );
                IERC20(token).safeTransfer(msg.sender, unwrappedAmount);
            } else {
                // Return ERC314 tokens directly
                IERC20(erc314Token).safeTransfer(
                    msg.sender,
                    excessTokenBalance
                );
            }
        }

        // Return excess AVAX
        if (msg.value > avaxUsed) {
            _safeTransferAVAX(msg.sender, msg.value - avaxUsed);
        }

        return (amountToken, amountAVAX, liquidity);
    }

    /**
     * @dev Removes liquidity from a token-AVAX pair.
     * @param token The token address to remove liquidity from
     * @param liquidity The amount of liquidity tokens to burn
     * @param amountTokenMin The minimum amount of token to receive
     * @param amountAVAXMin The minimum amount of AVAX to receive
     * @param to The address that will receive the tokens
     * @param deadline The timestamp after which the transaction will revert
     * @return amountToken The amount of token received
     * @return amountAVAX The amount of AVAX received
     */
    function removeLiquidityAVAX(
        address token,
        uint256 liquidity,
        uint256 amountTokenMin,
        uint256 amountAVAXMin,
        address to,
        uint256 deadline
    )
        external
        nonReentrant
        ensure(deadline)
        returns (uint256 amountToken, uint256 amountAVAX)
    {
        address erc314Token = _cacheERC314Token(token);
        IERC314 tokenContract = IERC314(payable(erc314Token));

        (, , , , address lpAddress, ) = factory.tokenInfoByTokenAddress(
            erc314Token
        );

        // Transfer the LP tokens from user to router
        IERC20(lpAddress).safeTransferFrom(
            msg.sender,
            address(this),
            liquidity
        );

        // Approve LP tokens for removal
        _safeApprove(lpAddress, address(tokenContract), liquidity);

        // If the original token was an ERC20 (not ERC314), we need to:
        // 1. Remove liquidity to the router first
        // 2. Unwrap the ERC314 token to the original ERC20
        // 3. Send the ERC20 to the recipient
        if (token != erc314Token) {
            // Calculate the adjusted minimum amount to account for decimal differences
            uint256 adjustedAmountTokenMin = _adjustDecimals(
                token,
                erc314Token,
                amountTokenMin,
                true
            );

            // Remove liquidity with the router as recipient
            uint256 erc314AmountReceived;
            (amountAVAX, erc314AmountReceived) = tokenContract.removeLiquidity(
                liquidity,
                address(this),
                deadline
            );

            // Verify the adjusted ERC314 token amount meets the minimum
            if (erc314AmountReceived < adjustedAmountTokenMin) {
                revert InsufficientTokenAmount();
            }
            // Verify the AVAX amount meets the minimum
            if (amountAVAX < amountAVAXMin) {
                revert InsufficientAVAXAmount();
            }

            // Unwrap the ERC314 tokens to the original ERC20 tokens
            uint256 unwrappedAmount = _safeUnwrap(
                erc314Token,
                erc314AmountReceived
            );

            // Convert the token amount back to the original token decimals for return value
            amountToken = unwrappedAmount;

            // Send the original token and AVAX to the recipient
            IERC20(token).safeTransfer(to, unwrappedAmount);
            _safeTransferAVAX(to, amountAVAX);
        } else {
            // For native ERC314 tokens, we can simply pass the recipient directly
            (amountAVAX, amountToken) = tokenContract.removeLiquidity(
                liquidity,
                to,
                deadline
            );

            // Verify minimum amounts
            if (amountToken < amountTokenMin) {
                revert InsufficientTokenAmount();
            }
            if (amountAVAX < amountAVAXMin) {
                revert InsufficientAVAXAmount();
            }
        }

        return (amountToken, amountAVAX);
    }

    // **Swap Functions**

    /**
     * @dev Swaps an exact amount of input tokens for as many output tokens as possible.
     * @param amountIn The amount of input tokens to send
     * @param amountOutMin The minimum amount of output tokens to receive
     * @param path The path to follow for the swap
     * @param to The recipient address
     * @param deadline The timestamp after which the transaction will revert
     * @return amounts The amounts for each step in the path
     */
    function swapExactTokensForTokens(
        uint256 amountIn,
        uint256 amountOutMin,
        address[] calldata path,
        address to,
        uint256 deadline
    )
        external
        nonReentrant
        ensure(deadline)
        returns (uint256[] memory amounts)
    {
        return
            _swapExactTokensForTokens(
                amountIn,
                amountOutMin,
                path,
                to,
                deadline,
                false
            );
    }

    /**
     * @dev Internal function to swap an exact amount of input tokens for as many output tokens as possible.
     * @param amountIn The amount of input tokens to send
     * @param amountOutMin The minimum amount of output tokens to receive
     * @param path The path to follow for the swap
     * @param to The recipient address
     * @param deadline The timestamp after which the transaction will revert
     * @param skipValidation Whether to skip validation checks (for internal use only)
     * @return amounts The amounts for each step in the path
     */
    function _swapExactTokensForTokens(
        uint256 amountIn,
        uint256 amountOutMin,
        address[] calldata path,
        address to,
        uint256 deadline,
        bool skipValidation
    ) internal returns (uint256[] memory amounts) {
        // Validations
        _validateSwapPath(path, false, false, skipValidation);
        // Create direct 3-token path with AVAX in the middle
        uint256 pathLength = path.length;
        address inputToken = path[0];
        address outputToken = path[pathLength - 1];

        // Create amounts array for return values
        amounts = new uint256[](3);

        // Get ERC314 versions of both tokens once
        address inputERC314Token = _cacheERC314Token(inputToken);
        address outputERC314Token = _cacheERC314Token(outputToken);

        // Handle input token transfer and wrapping
        (uint256 wrappedAmount, ) = _handleInputToken(
            inputToken,
            amountIn,
            inputERC314Token
        );
        amounts[0] = amountIn; // Store original input amount (pre-wrapping)

        // First swap: inputToken -> AVAX
        uint256 avaxReceived = _swapTokenToAVAX(
            inputERC314Token,
            wrappedAmount,
            0, // No min amount for intermediate step
            deadline
        );
        amounts[1] = avaxReceived;

        // Calculate minimum output amount with proper decimal adjustment
        uint256 adjustedMinOutput = _adjustDecimals(
            outputToken,
            outputERC314Token,
            amountOutMin,
            true // Converting to ERC314
        );

        // Second swap: AVAX -> outputToken
        uint256 finalOutput = _swapAVAXToToken(
            outputERC314Token,
            avaxReceived,
            adjustedMinOutput, // Use adjusted minimum
            deadline
        );
        amounts[2] = finalOutput;

        // Deliver output token
        _deliverOutput(
            outputToken,
            outputERC314Token,
            finalOutput,
            to,
            amounts,
            2
        );

        return amounts;
    }

    /**
     * @notice Swaps tokens to achieve an estimated output amount, ensuring the input amount does not exceed the specified maximum.
     * @dev This function calculates the required input amount for the desired output and reverts if the input exceeds `amountInMax`.
     *      It then performs the token swap using the exact input amount.
     * @dev More reliable than swapTokensForExactTokens when dealing with wrapped tokens
     * @param amountOutDesired The desired output amount of tokens.
     * @param amountOutMin The desired minimum amount of output tokens.
     * @param amountInMax The maximum allowable input amount of tokens.
     * @param path An array of token addresses representing the swap path.
     * @param to The address to receive the output tokens.
     * @param deadline The timestamp by which the transaction must be completed.
     * @return amounts An array of token amounts involved in the swap, including the input and output amounts.
     * @custom:throws ExcessiveInputAmount Thrown if the calculated input amount exceeds `amountInMax`.
     * @custom:throws InvalidPathLength Thrown if the path length is less than 2.
     * @custom:throws InputCannotBeAVAX Thrown if the first address in the path is not WAVAX.
     * @custom:throws OutputCannotBeAVAX Thrown if the last address in the path is WAVAX.
     */
    function swapTokensForEstimatedTokens(
        uint256 amountOutDesired,
        uint256 amountOutMin,
        uint256 amountInMax,
        address[] calldata path,
        address to,
        uint256 deadline
    )
        external
        nonReentrant
        ensure(deadline)
        returns (uint256[] memory amounts)
    {
        // Validations
        _validateSwapPath(path, false, false, false);

        // Calculate required input for target output
        amounts = getAmountsIn(amountOutDesired, path);
        uint256 estimatedInputAmount = amounts[0];

        if (estimatedInputAmount > amountInMax) {
            revert ExcessiveInputAmount(estimatedInputAmount, amountInMax);
        }

        // Execute with exact input instead
        return
            _swapExactTokensForTokens(
                estimatedInputAmount,
                amountOutMin, // Use the desired output as minimum
                path,
                to,
                deadline,
                true // Skip validation for internal call
            );
    }

    /**
     * @notice Swaps tokens to achieve an estimated AVAX output amount, ensuring the input amount doesn't exceed the maximum.
     * @dev This function calculates the required input amount for the desired AVAX output and reverts if it exceeds `amountInMax`.
     *      It then performs the token swap using the exact input amount.
     * @dev More reliable than swapTokensForExactAVAX when dealing with wrapped tokens
     * @param amountOutDesired The desired output amount of AVAX.
     * @param amountOutMin The desired minimum amount of AVAX to receive
     * @param amountInMax The maximum allowable input amount of tokens
     * @param path An array of token addresses representing the swap path (must end with WAVAX)
     * @param to The address to receive the AVAX
     * @param deadline The timestamp by which the transaction must be completed
     * @return amounts An array of token amounts involved in the swap, including the input and output amounts
     * @custom:throws ExcessiveInputAmount Thrown if the calculated input amount exceeds `amountInMax`
     * @custom:throws PathMustEndWithAVAX Thrown if the path doesn't end with WAVAX
     * @custom:throws InvalidPath Thrown if the path is invalid (not a direct token-to-AVAX swap)
     */
    function swapTokensForEstimatedAVAX(
        uint256 amountOutDesired,
        uint256 amountOutMin,
        uint256 amountInMax,
        address[] calldata path,
        address to,
        uint256 deadline
    )
        external
        nonReentrant
        ensure(deadline)
        returns (uint256[] memory amounts)
    {
        // Validations
        _validateSwapPath(path, false, true, false);

        // Calculate required input for target output
        amounts = getAmountsIn(amountOutDesired, path);

        uint256 estimatedInputAmount = amounts[0];

        if (estimatedInputAmount > amountInMax) {
            revert ExcessiveInputAmount(estimatedInputAmount, amountInMax);
        }

        // Execute with exact input instead
        return
            _swapExactTokensForAVAX(
                estimatedInputAmount,
                amountOutMin, // Use the desired output as minimum
                path,
                to,
                deadline,
                true // Skip validation for internal call
            );
    }

    /**
     * @notice Swaps AVAX for an estimated amount of tokens, ensuring the output amount is met.
     * @dev This function performs validations on the input parameters and calculates the required
     *      input amount to achieve the desired output amount. If the estimated input amount exceeds
     *      the maximum allowed input, the transaction reverts.
     * @dev More reliable than swapAvaxForExactTokens when dealing with wrapped tokens
     * @param amountOutDesired The desired output amount of tokens.
     * @param amountOutMin The desired minimum amount of tokens to receive.
     * @param amountInMax The maximum amount of AVAX the user is willing to spend.
     * @param path An array of token addresses representing the swap path. The first address must be WAVAX,
     *             and the last address must not be WAVAX.
     * @param to The address to receive the output tokens.
     * @param deadline The timestamp by which the transaction must be completed.
     * @return amounts An array of token amounts involved in the swap, including the input and output amounts.
     * @custom:throws ExcessiveInputAmount Thrown if the calculated input amount exceeds `amountInMax`.
     * @custom:throws NoAVAXSent Thrown if no AVAX was sent with the transaction.
     * @custom:throws InvalidPathLength Thrown if the path length is less than 2.
     * @custom:throws InputMustBeAVAX Thrown if the first address in the path is not WAVAX.
     * @custom:throws OutputCannotBeAVAX Thrown if the last address in the path is WAVAX.
     */
    function swapAVAXForEstimatedTokens(
        uint256 amountOutDesired,
        uint256 amountOutMin,
        uint256 amountInMax,
        address[] calldata path,
        address to,
        uint256 deadline
    )
        external
        payable
        nonReentrant
        ensure(deadline)
        returns (uint256[] memory amounts)
    {
        // Validations
        if (msg.value == 0) {
            revert NoAVAXSent();
        }
        _validateSwapPath(path, true, false, false);

        // Calculate required input for target output
        amounts = getAmountsIn(amountOutDesired, path);
        uint256 estimatedInputAmount = amounts[0];

        if (estimatedInputAmount > amountInMax) {
            revert ExcessiveInputAmount(estimatedInputAmount, amountInMax);
        }

        // Also check against msg.value
        if (estimatedInputAmount > msg.value) {
            revert ExcessiveInputAmount(estimatedInputAmount, msg.value);
        }

        // Execute with exact input instead
        amounts = _swapExactAVAXForTokens(
            estimatedInputAmount,
            amountOutMin, // Use the desired output as minimum
            path,
            to,
            deadline,
            true
        );

        // Return excess AVAX
        if (msg.value > estimatedInputAmount) {
            _safeTransferAVAX(msg.sender, msg.value - estimatedInputAmount);
        }

        return amounts;
    }

    /**
     * @dev Swaps an exact amount of AVAX for as many tokens as possible.
     * @param amountOutMin The minimum amount of output tokens to receive
     * @param path The path to follow for the swap (must start with WAVAX)
     * @param to The recipient address
     * @param deadline The timestamp after which the transaction will revert
     * @return amounts The amounts for each step in the path
     */
    function swapExactAVAXForTokens(
        uint256 amountOutMin,
        address[] calldata path,
        address to,
        uint256 deadline
    )
        external
        payable
        nonReentrant
        ensure(deadline)
        returns (uint256[] memory amounts)
    {
        if (msg.value == 0) {
            revert NoAVAXSent();
        }
        return
            _swapExactAVAXForTokens(
                msg.value,
                amountOutMin,
                path,
                to,
                deadline,
                false
            );
    }

    /**
     * @dev Internal function to swap an exact amount of AVAX for as many tokens as possible.
     * @param amountOutMin The minimum amount of output tokens to receive
     * @param path The path to follow for the swap (must start with WAVAX)
     * @param to The recipient address
     * @param deadline The timestamp after which the transaction will revert
     * @param skipValidation Whether to skip validation checks (for internal use only)
     * @return amounts The amounts for each step in the path
     */
    function _swapExactAVAXForTokens(
        uint256 avaxToUse,
        uint256 amountOutMin,
        address[] calldata path,
        address to,
        uint256 deadline,
        bool skipValidation
    ) internal returns (uint256[] memory amounts) {
        // Validations
        _validateSwapPath(path, true, false, skipValidation);

        uint256 pathLength = path.length;

        // Get the output token and resolve to ERC314 version
        address outputToken = path[pathLength - 1];
        address outputERC314Token = _cacheERC314Token(outputToken);

        // Create amounts array for return values
        amounts = new uint256[](2);
        amounts[0] = avaxToUse;

        // Execute the swap directly
        uint256 amountOut = _swapAVAXToToken(
            outputERC314Token,
            avaxToUse,
            amountOutMin,
            deadline
        );
        amounts[1] = amountOut;

        // Handle output token delivery
        _deliverOutput(
            outputToken,
            outputERC314Token,
            amountOut,
            to,
            amounts,
            1
        );

        return amounts;
    }

    /**
     * @dev Swaps an exact amount of tokens for as much AVAX as possible.
     * @param amountIn The amount of input tokens to send
     * @param amountOutMin The minimum amount of AVAX to receive
     * @param path The path to follow for the swap (must end with WAVAX)
     * @param to The recipient address
     * @param deadline The timestamp after which the transaction will revert
     * @return amounts The amounts for each step in the path
     */
    function swapExactTokensForAVAX(
        uint256 amountIn,
        uint256 amountOutMin,
        address[] calldata path,
        address to,
        uint256 deadline
    )
        external
        nonReentrant
        ensure(deadline)
        returns (uint256[] memory amounts)
    {
        return
            _swapExactTokensForAVAX(
                amountIn,
                amountOutMin,
                path,
                to,
                deadline,
                false
            );
    }

    /**
     * @notice Invalidate the cached ERC-314 metadata for a specific token.
     * @dev Deletes the storage entry in tokenToERC314Cache for `token`, forcing subsequent calls that rely on
     *      the cache to recompute or re-fetch the value. This function is restricted by the `onlyOwner` modifier,
     *      and emits a TokenCacheInvalidated(token) event after clearing the cache.
     *      Clearing the cache may increase gas usage on the next operations that require the cached data.
     * @param token The token address whose cached ERC-314 information should be removed.
     */
    function invalidateTokenCache(address token) external onlyOwner {
        delete tokenToERC314Cache[token];
        emit TokenCacheInvalidated(token);
    }

    /**
     * @notice Override the cached ERC-314 implementation address for a specific token.
     * @dev Callable only by the contract owner (onlyOwner). Validates inputs and updates the
     *      internal tokenToERC314Cache mapping. Reverts if either `token` or `erc314` is the
     *      zero address. Emits TokenCacheUpdated(token, erc314) on success.
     * @param token The token address whose ERC-314 implementation cache will be overridden.
     * @param erc314 The new ERC-314 implementation address to associate with `token`.
     * @custom:reverts InvalidToken(token) Thrown when `token` or `erc314` is the zero address.
     * @custom:emits TokenCacheUpdated Emitted after the cache entry for `token` is updated.
     */
    function overrideTokenCache(
        address token,
        address erc314
    ) external onlyOwner {
        if (token == address(0) || erc314 == address(0))
            revert InvalidToken(token);

        address resolved = _resolveERC314Token(token); // view lookup, no cache touch
        if (resolved != erc314) revert InvalidToken(erc314);

        tokenToERC314Cache[token] = erc314;
        emit TokenCacheUpdated(token, erc314);
    }

    /**
     * @dev Internal function to swap an exact amount of tokens for as much AVAX as possible.
     * @param amountIn The amount of input tokens to send
     * @param amountOutMin The minimum amount of AVAX to receive
     * @param path The path to follow for the swap (must end with WAVAX)
     * @param to The recipient address
     * @param deadline The timestamp after which the transaction will revert
     * @param skipValidation Whether to skip validation checks (for internal use only)
     * @return amounts The amounts for each step in the path
     */
    function _swapExactTokensForAVAX(
        uint256 amountIn,
        uint256 amountOutMin,
        address[] calldata path,
        address to,
        uint256 deadline,
        bool skipValidation
    ) internal returns (uint256[] memory amounts) {
        // Validations
        _validateSwapPath(path, false, true, skipValidation);

        // Create direct path in-line
        address inputToken = path[0];

        // Create amounts array for return values
        amounts = new uint256[](2);
        amounts[0] = amountIn;

        // Get input token's ERC314 version
        // Handle input token transfer and wrapping
        (uint256 wrappedAmount, address erc314Token) = _handleInputToken(
            inputToken,
            amountIn
        );

        // Execute the swap directly
        amounts[1] = _swapTokenToAVAX(
            erc314Token,
            wrappedAmount,
            amountOutMin,
            deadline
        );

        // Transfer AVAX to recipient
        _safeTransferAVAX(to, amounts[1]);

        return amounts;
    }

    // ** Internal Helper Functions **/

    /**
     * @dev Handles input token transfer, wrapping if needed, and resolves the ERC314 token
     * Overloaded version that accepts a pre-computed ERC314 token address to avoid redundant resolution
     * @param inputToken The token address provided by user (ERC20 or ERC314)
     * @param amountIn The amount of tokens to handle
     * @param precomputedERC314Token The pre-computed ERC314 token address (to avoid redundant calls)
     * @return wrappedAmount The amount after any wrapping operations
     * @return erc314Token The resolved ERC314 token address for AMM operations
     */
    function _handleInputToken(
        address inputToken,
        uint256 amountIn,
        address precomputedERC314Token
    ) internal returns (uint256 wrappedAmount, address erc314Token) {
        // Use pre-computed token address if provided, otherwise resolve
        erc314Token = precomputedERC314Token != address(0)
            ? precomputedERC314Token
            : _cacheERC314Token(inputToken);

        // Transfer token from user to router
        IERC20(inputToken).safeTransferFrom(
            msg.sender,
            address(this),
            amountIn
        );

        // If the input token is already the ERC314 token, no wrapping needed
        if (inputToken == erc314Token) {
            return (amountIn, erc314Token);
        }

        // Otherwise, wrap the token to its ERC314 version
        wrappedAmount = _safeWrap(inputToken, amountIn);

        return (wrappedAmount, erc314Token);
    }

    /**
     * @dev Handles input token transfer, wrapping if needed, and resolves the ERC314 token
     * @param inputToken The token address provided by user (ERC20 or ERC314)
     * @param amountIn The amount of tokens to handle
     * @return wrappedAmount The amount after any wrapping operations
     * @return erc314Token The resolved ERC314 token address for AMM operations
     * @notice This is an overloaded version for backward compatibility that calls the
     * three-parameter version with a zero address for precomputedERC314Token
     */
    function _handleInputToken(
        address inputToken,
        uint256 amountIn
    ) internal returns (uint256 wrappedAmount, address erc314Token) {
        return _handleInputToken(inputToken, amountIn, address(0));
    }

    /**
     * @dev Executes a token to AVAX swap
     * @param tokenAddress The token address to swap from
     * @param amountIn The amount of tokens to swap
     * @param minOut The minimum amount of AVAX to receive
     * @param deadline The timestamp after which the transaction will revert
     * @return amountOut The amount of AVAX received
     */
    function _swapTokenToAVAX(
        address tokenAddress,
        uint256 amountIn,
        uint256 minOut,
        uint256 deadline
    ) internal returns (uint256 amountOut) {
        // Check if token is legacy
        if (legacyERC314Tokens[tokenAddress]) {
            // Get AVAX balance before swap
            uint256 avaxBefore = address(this).balance;

            // Legacy implementation - use low-level call without return decoding
            (bool success, ) = tokenAddress.call(
                abi.encodeWithSelector(
                    LEGACY_TOKEN_TO_NATIVE_SELECTOR,
                    amountIn,
                    minOut,
                    deadline
                )
            );

            if (!success) {
                revert SwapFailed(tokenAddress, msg.sender, amountIn, minOut);
            }

            // Calculate received amount based on balance change
            uint256 avaxAfter = address(this).balance;
            amountOut = avaxAfter - avaxBefore;
        } else {
            IERC314 tokenContract = IERC314(payable(tokenAddress));
            // Modern implementation - use direct interface call with return values
            amountOut = tokenContract.swapTokenToNative(
                amountIn,
                minOut,
                deadline
            )[1]; // Return AVAX amount
        }

        return amountOut;
    }

    /**
     * @dev Executes an AVAX to token swap
     * @param tokenAddress The token address to swap to
     * @param amountIn The amount of AVAX to swap
     * @param minOut The minimum amount of tokens to receive
     * @param deadline The timestamp after which the transaction will revert
     * @return amountOut The amount of tokens received
     */
    function _swapAVAXToToken(
        address tokenAddress,
        uint256 amountIn,
        uint256 minOut,
        uint256 deadline
    ) internal returns (uint256 amountOut) {
        // Check if token is legacy
        if (legacyERC314Tokens[tokenAddress]) {
            // Get token balance before swap
            uint256 tokenBefore = IERC20(tokenAddress).balanceOf(address(this));

            // Legacy implementation - use low-level call without return decoding
            (bool success, ) = tokenAddress.call{value: amountIn}(
                abi.encodeWithSelector(
                    LEGACY_NATIVE_TO_TOKEN_SELECTOR,
                    minOut,
                    deadline
                )
            );

            if (!success) {
                revert SwapFailed(tokenAddress, msg.sender, amountIn, minOut);
            }

            // Calculate received amount based on balance change
            uint256 tokenAfter = IERC20(tokenAddress).balanceOf(address(this));
            amountOut = tokenAfter - tokenBefore;
        } else {
            IERC314 tokenContract = IERC314(payable(tokenAddress));
            // Modern implementation - use direct interface call with return values
            amountOut = tokenContract.swapNativeToToken{value: amountIn}(
                minOut,
                deadline
            )[1];
        }

        return amountOut;
    }

    /**
     * @dev Delivers the correct output token to the recipient
     * @param outputToken The user-requested output token
     * @param internalOutputToken The internal ERC314 token
     * @param amount The amount to deliver
     * @param to The recipient address
     * @param amounts Array to update with final amounts
     * @param amountIndex The index in the amounts array to update
     */
    function _deliverOutput(
        address outputToken,
        address internalOutputToken,
        uint256 amount,
        address to,
        uint256[] memory amounts,
        uint256 amountIndex
    ) internal {
        // Direct AVAX transfer
        if (outputToken == WAVAX) {
            _safeTransferAVAX(to, amount);
            return;
        }

        // Direct ERC314 token transfer
        if (outputToken == internalOutputToken) {
            IERC20(internalOutputToken).safeTransfer(to, amount);
            return;
        }

        // Otherwise, unwrap the ERC314 token to its original ERC20 equivalent
        uint256 unwrappedAmount = _safeUnwrap(internalOutputToken, amount);
        IERC20(outputToken).safeTransfer(to, unwrappedAmount);

        amounts[amountIndex] = unwrappedAmount;
    }

    /**
     * @dev Helper function to safely wrap tokens with support for legacy wrappers
     * @param erc20Token The ERC20 token being wrapped
     * @param amount The amount to wrap
     * @return wrappedAmount The amount of tokens after wrapping
     */
    function _safeWrap(
        address erc20Token,
        uint256 amount
    ) internal returns (uint256 wrappedAmount) {
        // Otherwise, wrap the ERC20 token to its ERC314 version
        IBIFKN314Wrapper wrapper = wrapperFactory.erc20ToWrapper(
            IERC20(erc20Token)
        );

        // Approve the wrapper to spend the input tokens
        _safeApprove(erc20Token, address(wrapper), amount);
        // Check if wrapper is legacy
        if (legacyWrappers[address(wrapper)]) {
            // Get wrapped token balance before wrap
            address wrappedToken = address(wrapper.wrappedToken());
            uint256 wrappedBefore = IERC20(wrappedToken).balanceOf(
                address(this)
            );

            // Legacy implementation - use low-level call without return decoding
            (bool success, ) = address(wrapper).call(
                abi.encodeWithSelector(LEGACY_WRAP_SELECTOR, amount)
            );

            if (!success) {
                revert WrapFailed(erc20Token, address(wrapper), amount);
            }

            // Calculate wrapped amount based on balance change
            uint256 wrappedAfter = IERC20(wrappedToken).balanceOf(
                address(this)
            );
            return wrappedAfter - wrappedBefore;
        } else {
            // Modern implementation - use direct interface call with return value
            return wrapper.wrap(amount);
        }
    }

    /**
     * @dev Helper function to safely unwrap tokens with support for legacy wrappers
     * @param erc314Token The ERC314 token being unwrapped
     * @param amount The amount to unwrap
     * @return unwrappedAmount The amount of tokens after unwrapping
     */
    function _safeUnwrap(
        address erc314Token,
        uint256 amount
    ) internal returns (uint256 unwrappedAmount) {
        // Unwrap and transfer ERC20 token
        IBIFKN314Wrapper wrapper = wrapperFactory.bifkn314ToWrapper(
            IERC20(erc314Token)
        );
        // Approve the wrapper to spend the internal output token
        _safeApprove(erc314Token, address(wrapper), amount);
        // Check if wrapper is legacy
        if (legacyWrappers[address(wrapper)]) {
            // Get original token balance before unwrap
            address originalToken = address(wrapper.originalToken());
            uint256 tokenBefore = IERC20(originalToken).balanceOf(
                address(this)
            );

            // Legacy implementation - use low-level call without return decoding
            (bool success, ) = address(wrapper).call(
                abi.encodeWithSelector(LEGACY_UNWRAP_SELECTOR, amount)
            );

            if (!success) {
                revert UnwrapFailed(erc314Token, address(wrapper), amount);
            }

            // Calculate unwrapped amount based on balance change
            uint256 tokenAfter = IERC20(originalToken).balanceOf(address(this));
            return tokenAfter - tokenBefore;
        } else {
            // Modern implementation - use direct interface call with return value
            return wrapper.unwrap(amount);
        }
    }

    /**
     * @dev Adjusts the amount of tokens based on the difference in decimals between the original token
     *      and its ERC314 equivalent. This is necessary to ensure accurate conversions between tokens
     *      with differing decimal places.
     *
     * @param originalToken The address of the original token (ERC20 or ERC314).
     * @param erc314Token The address of the ERC314 version of the token.
     * @param amount The amount of tokens to be adjusted.
     * @param toERC314 A boolean indicating the conversion direction:
     *                 - `true` if converting to ERC314.
     *                 - `false` if converting from ERC314.
     *
     * @return The adjusted token amount after accounting for decimal differences.
     *
     * @notice If the original token and ERC314 token are the same, or if the original token is WAVAX,
     *         no adjustment is performed, and the input amount is returned as-is.
     *
     * @notice The function retrieves the appropriate wrapper contract based on the conversion direction
     *         and uses it to determine the decimal places of the original and wrapped tokens.
     *
     * @notice If the decimals of the two tokens differ, the function scales the amount accordingly:
     *         - If the original token has more decimals, the amount is divided by the difference.
     *         - If the ERC314 token has more decimals, the amount is multiplied by the difference.
     */
    function _adjustDecimals(
        address originalToken, // The original token (ERC20 or ERC314)
        address erc314Token, // The ERC314 version of the token
        uint256 amount,
        bool toERC314 // true if converting to ERC314, false if converting from ERC314
    ) internal view returns (uint256) {
        // If tokens are the same or it's WAVAX, no conversion needed
        if (originalToken == erc314Token || originalToken == WAVAX) {
            return amount;
        }

        // Get decimals directly from tokens using ERC20Metadata interface
        uint8 fromDecimals;
        uint8 toDecimals;

        if (toERC314) {
            // Converting from original token to ERC314
            fromDecimals = IERC20Metadata(originalToken).decimals();
            toDecimals = IERC20Metadata(erc314Token).decimals();
        } else {
            // Converting from ERC314 to original token
            fromDecimals = IERC20Metadata(erc314Token).decimals();
            toDecimals = IERC20Metadata(originalToken).decimals();
        }

        // Skip calculation if decimals match
        if (fromDecimals == toDecimals) return amount;

        unchecked {
            if (fromDecimals > toDecimals) {
                return amount / (10 ** (fromDecimals - toDecimals));
            } else {
                return amount * (10 ** (toDecimals - fromDecimals));
            }
        }
    }

    /**
     * @dev Validates a swap path based on the swap type
     * @param path The array of token addresses representing the swap path
     * @param outputIsAVAX If true, checks that path ends with WAVAX; if false, checks it doesn't end with WAVAX
     * @param inputIsAVAX If true, checks that path starts with WAVAX; if false, checks it doesn't start with WAVAX
     * @param skipValidation If true, skips the validation (used by internal functions)
     */
    function _validateSwapPath(
        address[] calldata path,
        bool inputIsAVAX,
        bool outputIsAVAX,
        bool skipValidation
    ) internal view {
        if (skipValidation) {
            return;
        }

        uint256 pathLength = path.length;

        // Check path length first (common to all swap types)
        if (pathLength < 2) {
            revert InvalidPathLength();
        }

        address wavax = WAVAX;

        bool firstIsWavax = path[0] == wavax;
        bool lastIsWavax = path[pathLength - 1] == wavax;

        if (inputIsAVAX && !firstIsWavax) revert InputMustBeAVAX();
        if (!inputIsAVAX && firstIsWavax) revert InputCannotBeAVAX();
        if (outputIsAVAX && !lastIsWavax) revert PathMustEndWithAVAX();
        if (!outputIsAVAX && lastIsWavax) revert OutputCannotBeAVAX();
    }

    /**
     * @dev Maps a token to its ERC314 version (read-only version)
     * @param token The input token address (ERC20, ERC314, or AVAX)
     * @return The ERC314 token address (or AVAX if input is AVAX)
     */
    function _getERC314Token(address token) internal view returns (address) {
        // Fast path for WAVAX
        if (token == WAVAX) {
            return WAVAX;
        }

        // Check cache first
        address cachedToken = tokenToERC314Cache[token];
        if (cachedToken != address(0)) {
            return cachedToken;
        }

        // Cache miss - resolve token without caching
        return _resolveERC314Token(token);
    }

    /**
     * @dev Resolves token to ERC314 without caching (for view functions)
     */
    function _resolveERC314Token(
        address token
    ) internal view returns (address) {
        // Try factory lookup first - fastest for native ERC314 tokens
        (, , , address tokenAddress, , ) = factory.tokenInfoByTokenAddress(
            token
        );
        if (tokenAddress == token) {
            return token; // Native ERC314 token
        }

        // Try wrapper lookup for ERC20 tokens
        IBIFKN314Wrapper wrapper = wrapperFactory.erc20ToWrapper(IERC20(token));
        if (address(wrapper) != address(0)) {
            return address(wrapper.wrappedToken());
        }

        revert InvalidToken(token);
    }

    /**
     * @dev Resolves and caches a token's ERC314 equivalent (state-changing version)
     * @param token The token to resolve and cache
     * @return The resolved ERC314 token address
     */
    function _cacheERC314Token(address token) internal returns (address) {
        // Fast path for WAVAX
        if (token == WAVAX) {
            return WAVAX;
        }

        // If already cached, return from cache
        address cachedToken = tokenToERC314Cache[token];
        if (cachedToken != address(0)) {
            return cachedToken;
        }

        // Resolve without updating state
        address erc314Token = _resolveERC314Token(token);

        // Update cache
        tokenToERC314Cache[token] = erc314Token;

        return erc314Token;
    }

    /**
     * @dev Safely transfers AVAX to the specified address.
     * Uses a low-level call to send the specified `value` of AVAX to the `to` address.
     * Reverts with `AVAXTransferFailed` if the transfer is unsuccessful.
     *
     * @param to The address to which the AVAX will be transferred.
     * @param value The amount of AVAX to transfer.
     */
    function _safeTransferAVAX(address to, uint256 value) internal {
        (bool success, ) = to.call{value: value}(new bytes(0));
        if (!success) {
            revert AVAXTransferFailed();
        }
    }

    /**
     * @dev Safely approves a spender to spend a specified amount of tokens on behalf of the contract.
     *      This function ensures that the approval call to the token contract is successful and
     *      returns the expected result.
     *
     * @param token The address of the ERC20 token contract.
     * @param spender The address of the spender to be approved.
     * @param amount The amount of tokens to approve for the spender.
     *
     * @notice This function uses a low-level call to invoke the `approve` function on the token contract.
     *         If the call fails or does not return the expected result, the transaction is reverted.
     *
     * @dev Reverts with "Approval failed" if the approval operation is unsuccessful.
     */
    function _safeApprove(
        address token,
        address spender,
        uint256 amount
    ) internal {
        if (amount == 0) return;

        // Skip if already max approved
        if (_maxApprovals[token][spender]) return;

        // Set max approval
        bool success = IERC20(token).approve(spender, type(uint256).max);

        // Record successful approval
        if (success) {
            _maxApprovals[token][spender] = true;
        } else {
            // Fallback to regular approval if max fails
            IERC20(token).approve(spender, 0); // Reset approval first for tokens like USDT
            success = IERC20(token).approve(spender, amount);
            if (!success) revert TokenApprovalFailed(token, spender, amount);
        }
    }
}
