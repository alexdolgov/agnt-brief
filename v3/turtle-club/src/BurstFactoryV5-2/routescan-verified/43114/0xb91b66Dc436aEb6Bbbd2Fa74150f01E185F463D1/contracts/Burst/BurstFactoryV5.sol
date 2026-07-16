// SPDX-License-Identifier: MIT
// Verified by Toinounet21
pragma solidity 0.8.20;

import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/utils/PausableUpgradeable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/proxy/Clones.sol";
import "./interfaces/IBurstDistributorV2.sol";
import "./interfaces/IRouter.sol";
import "./interfaces/IBurstToken.sol";
import "../interfaces/IBIFKN314FactoryV2.sol";
import "../ChefBifkn/IBIFKNChefV2.sol";
import "./libraries/DexTypes.sol";

/**
 * @title BurstFactoryV5
 * @dev This contract is responsible for creating and managing instances of Burst contracts.
 * It provides the necessary functions to deploy new Burst contracts and keep track of them.
 *
 * The contract uses multiple OpenZeppelin upgradeable modules:
 * - Initializable: To support the initialization pattern for upgradeable contracts.
 * - UUPSUpgradeable: To support the UUPS (Universal Upgradeable Proxy Standard) pattern.
 * - AccessControlUpgradeable: To manage role-based access control.
 * - ReentrancyGuardUpgradeable: To prevent reentrant calls.
 * - PausableUpgradeable: To allow pausing and unpausing of contract functions.
 *
 * The contract also uses SafeERC20 for safe interactions with ERC20 tokens.
 *
 * Key functionalities include:
 * - Creating new Burst tokens with or without an initial buy.
 * - Managing liquidity pools for Joe, Pharaoh, and Burst.
 * - Setting and managing various parameters like fees, allocations, and epochs.
 * - Handling the launch process of new tokens, including setting up liquidity and distributing rewards.
 *
 * The contract emits several events to track important actions such as token creation, curve creation, and token swaps.
 *
 * The contract also defines multiple custom errors for better error handling and readability.
 */

contract BurstFactoryV5 is
    Initializable,
    UUPSUpgradeable,
    AccessControlUpgradeable,
    ReentrancyGuardUpgradeable,
    PausableUpgradeable
{
    using SafeERC20 for IERC20;

    address public constant DEAD_ADDRESS =
        0x000000000000000000000000000000000000dEaD;

    bytes32 public constant MANAGER_ROLE = keccak256("MANAGER_ROLE");
    bytes32 public constant UPGRADER_ROLE = keccak256("UPGRADER_ROLE");

    uint256 public constant BASIS_POINTS = 10000; // Representing 100%
    uint256 public constant MAX_CREATOR_REWARDS = 1000; // 10%
    uint256 public constant MAX_LAUNCH_FEE = 500; // 5%

    struct Curve {
        uint256[] distribution;
        uint256[] binStepScaleFactor; // Precomputed scaling for each bin.
        uint256 percentOfLP; // 500 = 5%
        uint256 avaxAtLaunch;
        uint256 basePrice;
    }

    struct CurveV2 {
        uint8 curveStyle;
        uint256[] binStepScaleFactor;
        uint256 percentOfLP;
        uint256 avaxAtLaunch;
        uint256 basePrice;
    }

    struct CurveWithIndex {
        uint8 index;
        uint256[] distribution;
        CurveV2 curveData;
    }

    struct Token {
        address creator;
        uint8 curveIndex;
        uint256 currentIndex;
        uint256 currentValue;
        uint256 initialSupply;
        bool hasLaunched;
        uint256 launchTime;
        DexTypes.DexAllocation[] dexAllocations;
    }

    /**
     * @dev Instance of the IBIFKN314Factory interface.
     * This variable holds a reference to the BIFKN314 factory contract.
     */
    IBIFKN314FactoryV2 public bifknFactory;

    /**
     * @notice Public instance of the IBIFKNChefV2 interface.
     * @dev This variable holds the reference to the BIFKNChefV2 contract, which is used to interact with the chef functionalities.
     */
    IBIFKNChefV2 public bifknChef;

    // Addresses grouped together
    address public JOE_ROUTER;
    address public PHARAOH_ROUTER;
    address public feeTo;
    address public feeToSetter;

    // uint256 grouped together to minimize storage slots used
    uint256 public launchFee;
    uint256 public creatorRewards;
    uint256 public feeRate; // 50 = 0.5%
    uint256 public creatorFeeRate; // 50 = 0.5%
    uint256 public percentDistributedPerEpoch; // 50 = 0.5%
    uint256 public epochsToWithdraw; // number of epochs to withdraw
    uint256 public burstAllocation; // in basis points, e.g., 5000 for 50%
    uint256 public joeAllocation; // e.g., 2500 for 25%
    uint256 public pharaohAllocation; // e.g., 2500 for 25%

    // Other types and structures
    address[] public allTokens;

    mapping(uint8 => Curve) public curves;
    mapping(address => Token) public tokens;
    mapping(address => address) public tokenToNursery;

    /**
     * All new state variables must be added below this line.
     * =====================================================
     */

    /**
     * @dev The address to which launch fees will be sent.
     */
    address public launchFeeTo;
    address public PANGOLIN_ROUTER;
    uint256 public pangolinAllocation;
    address public distributorImplementation;
    uint8[] public allCurves;
    mapping(uint8 => CurveV2) public curvesV2;
    mapping(uint8 => uint256[]) public curveStyles;
    uint256 public minApexAllocation;
    uint256 public minBuyAmount;
    uint256 public maxBuyAmount;

    /**
     * @dev This private state variable reserves 50 slots for future state variables.
     */
    uint256[40] private __gap; // reserve 50 slots for future state variables

    event TokenCreated(
        address indexed token,
        address indexed creator,
        bool whitelistEnabled,
        uint256 curveIndex
    );

    event CurveCreated(uint indexed curveIndex);

    event BurstSwap(
        address indexed token,
        address indexed sender,
        uint256 amount0In,
        uint256 amount0Out,
        uint256 amount1In,
        uint256 amount1Out
    );

    event CurveCompleted(
        address indexed token0,
        address indexed dist,
        uint256 launchFee,
        uint256 creatorRewards
    );

    event LiquidityAdded(
        address indexed token,
        address indexed pair,
        uint256 amountToken,
        uint256 amountAVAX,
        uint256 amountLP
    );

    error TotalSupplyTooLow(uint256 totalSupply);
    error CurveDoesNotExist();
    error CurveStyleDoesNotExist(uint8 index);
    error CurveAlreadyInUse();
    error FractionTooLow();
    error FractionTooHigh();
    error InvalidBin();
    error InvalidTotalDistribution();
    error NotEnoughFunds();
    error TooMuchFunds();
    error InvalidAddress();
    error InvalidFeeRate();
    error FailedToSendNativeCurrency();
    error InvalidAmount();
    error TokenDoesNotExist();
    error SlippageLimit();
    error AlreadyLaunched();
    error CreatorRewardsTooHigh();
    error LaunchFeeTooHigh();
    error InvalidAllocations();
    error DivisionByZero();
    error InvalidApexAllocation();
    error RewardDexAlreadySet();
    error RewardDexNotSet();
    error UnauthorizedOnlyCreator();

    function reinitialize() public onlyRole(UPGRADER_ROLE) {
        minApexAllocation = 0;
        minBuyAmount = 0.01 ether;
        maxBuyAmount = 10 ether;
    }

    /**
     * @notice Creates a new burst token with the specified parameters.
     * @param tokenName The name of the token.
     * @param tokenSymbol The symbol of the token.
     * @param totalSupply_ The total supply of the token.
     * @param tradingFee The trading fee associated with the token.
     * @param maxWalletPercent_ The maximum wallet percentage for the token.
     * @param metadataURI The URI pointing to the token's metadata.
     * @param curveIndex_ The index of the bonding curve to be used.
     * @param salt The salt value to be used for the token creation.
     * @param dexAllocations The Dex allocations for the token.
     * @return burstAddress The address of the newly created burst token.
     */
    function burstToken(
        string memory tokenName,
        string memory tokenSymbol,
        uint256 totalSupply_,
        uint256 tradingFee,
        uint256 maxWalletPercent_,
        string memory metadataURI,
        uint8 curveIndex_,
        bytes32 salt,
        DexTypes.DexAllocation[] memory dexAllocations
    ) external whenNotPaused nonReentrant returns (address burstAddress) {
        burstAddress = _burstTokenInternal(
            tokenName,
            tokenSymbol,
            totalSupply_,
            tradingFee,
            maxWalletPercent_,
            metadataURI,
            curveIndex_,
            salt,
            dexAllocations
        );
    }

    /**
     * @notice Creates a new burst token with an initial buy.
     * @dev This function creates a new burst token and performs an initial buy operation.
     * It ensures that the provided funds are within the acceptable range and calculates
     * the token distribution based on the provided curve.
     *
     * @param tokenName The name of the new token.
     * @param tokenSymbol The symbol of the new token.
     * @param totalSupply_ The total supply of the new token.
     * @param tradingFee The trading fee for the new token.
     * @param maxWalletPercent_ The maximum wallet percentage for the new token.
     * @param metadataURI The metadata URI for the new token.
     * @param curveIndex_ The index of the curve to be used for token distribution.
     * @param salt The salt value to be used for the token creation.
     * @param dexAllocations The Dex allocations for the token.
     *
     * @return burstAddress The address of the newly created burst token.
     *
     * @notice Reverts if the provided funds are less than 0.01 ether or more than 10 ether.
     * @notice Reverts if there is a division by zero error during the token distribution calculation.
     *
     * Emits a {BurstSwap} event indicating the details of the swap operation.
     */
    function burstTokenWithInitialBuy(
        string memory tokenName,
        string memory tokenSymbol,
        uint256 totalSupply_,
        uint256 tradingFee,
        uint256 maxWalletPercent_,
        string memory metadataURI,
        uint8 curveIndex_,
        bytes32 salt,
        DexTypes.DexAllocation[] memory dexAllocations
    )
        external
        payable
        whenNotPaused
        nonReentrant
        returns (address burstAddress)
    {
        if (msg.value < minBuyAmount) revert NotEnoughFunds();
        if (msg.value > maxBuyAmount) revert TooMuchFunds();

        burstAddress = _burstTokenInternal(
            tokenName,
            tokenSymbol,
            totalSupply_,
            tradingFee,
            maxWalletPercent_,
            metadataURI,
            curveIndex_,
            salt,
            dexAllocations
        );

        Token storage t = tokens[burstAddress];
        uint256 _fee = (msg.value * (feeRate + creatorFeeRate)) / BASIS_POINTS;
        uint256 availableValue = msg.value - _fee;

        address sender = _msgSender();

        // Set the max wallet exempt for the creator
        // This is to allow the creator to receive the tokens without hitting the max wallet limit
        IBurstToken(burstAddress).setMaxWalletExempt(sender, true);

        (
            uint256 amount0Out,
            uint256 amount1Used,
            bool launchReady
        ) = _buyTokens(t, availableValue);

        // Set back to exempt false
        IBurstToken(burstAddress).setMaxWalletExempt(sender, false);
        IERC20(burstAddress).safeTransfer(sender, amount0Out);
        _transferNative(feeTo, _fee);

        emit BurstSwap(burstAddress, sender, 0, amount0Out, msg.value, 0);

        if (launchReady) {
            _transferNative(sender, availableValue - amount1Used);
            _launchToken(burstAddress);
        }
    }

    /**
     * @notice Allows users to buy tokens with AVAX.
     * @dev This function handles the purchase of tokens using AVAX, ensuring various checks and balances.
     *      It calculates the amount of tokens to be transferred based on precomputed prices and distribution curves.
     *      The function also handles fees and ensures the token is launched if the purchase completes the distribution.
     * @param token_ The address of the token being purchased.
     * @param minBin The minimum bin index to prevent slippage.
     * @custom:modifier nonReentrant Ensures the function cannot be reentered.
     * @custom:revert TokenDoesNotExist If the token does not exist.
     * @custom:revert AlreadyLaunched If the token has already been launched.
     * @custom:revert NotEnoughFunds If the sent value is less than 0.01 ether.
     * @custom:revert SlippageLimit If the current index is greater than the minimum bin index.
     * @custom:event BurstSwap Emitted when a token swap occurs.
     */
    function buy(address token_, uint8 minBin) external payable nonReentrant {
        Token storage t = tokens[token_];
        if (t.initialSupply == 0) revert TokenDoesNotExist();
        if (t.hasLaunched) revert AlreadyLaunched();
        if (msg.value < minBuyAmount) revert NotEnoughFunds();
        if (t.currentIndex > minBin) revert SlippageLimit();

        uint256 _fee = (msg.value * feeRate) / BASIS_POINTS;
        uint256 _creatorFee = (msg.value * creatorFeeRate) / BASIS_POINTS;
        uint256 availableValue = msg.value - _fee - _creatorFee;

        (
            uint256 amount0Out,
            uint256 amount1Used,
            bool launchReady
        ) = _buyTokens(t, availableValue);

        address sender = _msgSender();

        IERC20(token_).safeTransfer(sender, amount0Out);
        _transferNative(feeTo, _fee); // Transfer fee
        _transferNative(t.creator, _creatorFee); // Transfer creator fee

        emit BurstSwap(token_, sender, 0, amount0Out, msg.value, 0);

        if (launchReady) {
            _transferNative(sender, availableValue - amount1Used);
            _launchToken(token_);
        }
    }

    /**
     * @notice Sells a specified amount of token_ in exchange for AVAX.
     * @dev This function transfers the specified amount of token_ from the sender to the contract,
     *      calculates the corresponding amount of AVAX to be received based on precomputed prices,
     *      and transfers the AVAX to the sender after deducting fees.
     * @param token_ The ERC20 token to be sold.
     * @param amount0In The amount of token_ to be sold.
     * @param minBin The minimum bin index to ensure slippage control.
     * @custom:modifier nonReentrant Ensures that the function cannot be reentered.
     * @custom:revert TokenDoesNotExist If the token does not exist in the contract.
     * @custom:revert AlreadyLaunched If the token has already launched.
     * @custom:revert SlippageLimit If the current index is less than the minimum bin index.
     * @custom:revert InvalidAmount If the amount of token_ to be sold is zero.
     * @custom:event BurstSwap Emitted after a successful swap, providing details of the transaction.
     */
    function sell(
        IERC20 token_,
        uint256 amount0In,
        uint8 minBin
    ) external nonReentrant {
        Token storage t = tokens[address(token_)];
        address sender = _msgSender();
        if (t.initialSupply == 0) revert TokenDoesNotExist();
        if (t.hasLaunched) revert AlreadyLaunched();
        if (t.currentIndex < minBin) revert SlippageLimit();
        if (amount0In == 0) revert InvalidAmount();

        // Transfer original tokens from user to contract
        token_.safeTransferFrom(_msgSender(), address(this), amount0In);

        CurveV2 memory curve = curvesV2[t.curveIndex];
        uint256[] memory arr = curveStyles[curve.curveStyle];
        uint256[] memory binStepScaleFactor = curve.binStepScaleFactor; // scale factor for each bin step
        uint256 basePrice = curve.basePrice;
        uint256 amount1Out;
        uint256 amount0Used;
        uint256 i = t.currentIndex;
        while (amount0Used < amount0In) {
            if (binStepScaleFactor[i] == 0) revert DivisionByZero();
            uint256 amountPerAVAX = t.initialSupply / binStepScaleFactor[i];
            uint256 amountLeft = amount0In - amount0Used;
            uint256 amount0InBin = t.currentValue;
            uint256 amount0InBinMax = (arr[i] * t.initialSupply) / BASIS_POINTS;
            if (amount0InBin + amountLeft <= amount0InBinMax) {
                amount1Out += (amountLeft * basePrice) / amountPerAVAX;
                t.currentValue += amountLeft; // Update storage once
                break;
            } else {
                uint256 fillBin = amount0InBinMax - amount0InBin;
                amount0Used += fillBin;
                amount1Out += (fillBin * basePrice) / amountPerAVAX;
                i--;
                t.currentValue = 0; // Update storage once
            }
        }
        t.currentIndex = i;
        uint256 _fee = (amount1Out * feeRate) / BASIS_POINTS;
        uint256 _creatorFee = (amount1Out * creatorFeeRate) / BASIS_POINTS;
        _transferNative(feeTo, _fee); // Transfer fee
        _transferNative(t.creator, _creatorFee); // Transfer creator fee
        _transferNative(sender, amount1Out - _fee - _creatorFee); // Transfer remaining amount
        emit BurstSwap(address(token_), sender, amount0In, 0, 0, amount1Out);
    }

    /**
     * @notice Creates a new pricing curve at the specified index.
     * @dev Only callable by users with the MANAGER_ROLE.
     * @param curveIndex The index at which the curve will be stored.
     * @param curveStyleIndex The index of the style of the curve to be created.
     * @param basePriceInAVAX The base price in whole numbers (e.g., 1000 = 1 AVAX).
     * @param incrementFactor The percentage increment for each subsequent bin (20 = 20% increase).
     * @custom:reverts CurveAlreadyInUse If a curve already exists at the specified index.
     * @custom:reverts InvalidBin If any value in the lists array is zero.
     * @custom:reverts InvalidTotalDistribution If the total distribution does not equal 10,000 basis points.
     * @custom:reverts FractionTooLow If the calculated fraction is less than 1,000 basis points.
     * @custom:reverts FractionTooHigh If the calculated fraction is greater than 9,000 basis points.
     * @custom:emits CurveCreated Emitted when a new curve is successfully created.
     */
    function createCurve(
        uint8 curveIndex,
        uint8 curveStyleIndex,
        uint256 basePriceInAVAX, // 1000 = 1 AVAX
        uint256 incrementFactor // 20 = 20% increase step for each bin
    ) external onlyRole(MANAGER_ROLE) {
        if (curvesV2[curveIndex].percentOfLP > 0) revert CurveAlreadyInUse();
        if (curveStyles[curveStyleIndex].length == 0)
            revert CurveStyleDoesNotExist(curveStyleIndex);

        uint256 totalDistribution = 0;
        // Convert basePriceInAVAX to wei
        // This is because the input parameter is 1000 = 1 AVAX
        // This is to convert it to wei for calculations and more refined control
        // over the base price. This means that it can be reduced to fractions instead of whole numbers.
        // e.g. 1000 = 1 AVAX, 500 = 0.5 AVAX, 250 = 0.25 AVAX etc.
        uint256 basePrice = (basePriceInAVAX * 1 ether) / 1000;
        uint256 cumulativeValue = 0;

        uint256[] memory curveStyle = curveStyles[curveStyleIndex];
        uint256[] memory prices = new uint256[](curveStyle.length);
        // Calculate cumulative value and store precomputed prices
        for (uint256 i = 0; i < curveStyle.length; i++) {
            if (curveStyle[i] == 0) revert InvalidBin();
            totalDistribution += curveStyle[i];
            uint256 price = (basePrice * (100 + (i * incrementFactor))) / 100;
            prices[i] = (100 + (incrementFactor * i));
            cumulativeValue += curveStyle[i] * price;
        }

        // Ensure the total distribution equals 10,000 (in basis points)
        if (totalDistribution != BASIS_POINTS)
            revert InvalidTotalDistribution();

        // Calculate the price for the last non-zero bin
        uint256 lastNonZeroPrice = (basePrice *
            (((curveStyle.length - 1) * incrementFactor) + 100)) / 100;

        // Calculate the required market cap based on the last non-zero bin value and total tokens
        uint256 requiredMarketCap = totalDistribution * lastNonZeroPrice;
        uint256 fraction = (BASIS_POINTS * requiredMarketCap) /
            (requiredMarketCap + cumulativeValue);
        if (fraction < 1000) revert FractionTooLow();
        if (fraction > 9000) revert FractionTooHigh();
        curvesV2[curveIndex] = CurveV2(
            curveStyleIndex,
            prices,
            fraction,
            cumulativeValue / 100,
            basePrice
        );
        allCurves.push(curveIndex);
        emit CurveCreated(curveIndex);
    }

    /**
     * @notice Retrieves all the curves stored in the contract.
     * @return An array of Curve structs representing all the curves.
     */
    function getAllCurves() external view returns (CurveWithIndex[] memory) {
        uint256 length = allCurves.length;
        CurveWithIndex[] memory allCurvesDataWithIndices = new CurveWithIndex[](
            length
        );

        for (uint256 i = 0; i < length; i++) {
            uint8 index = allCurves[i];
            allCurvesDataWithIndices[i] = CurveWithIndex({
                index: index,
                distribution: curveStyles[curvesV2[index].curveStyle],
                curveData: curvesV2[index]
            });
        }

        return allCurvesDataWithIndices;
    }

    /**
     * @notice Retrieves the curve data for a given index.
     * @param index The index of the curve to retrieve.
     * @return distribution An array representing the distribution of the curve.
     * @return binStepScaleFactor An array representing the bin step scale factor of the curve.
     * @return percentOfLP The percentage of LP (Liquidity Provider) tokens.
     * @return avaxAtLaunch The amount of AVAX at the launch of the curve.
     * @return basePrice The base price of the curve.
     */
    function getCurve(
        uint8 index
    )
        public
        view
        returns (
            uint256[] memory distribution,
            uint256[] memory binStepScaleFactor,
            uint256 percentOfLP,
            uint256 avaxAtLaunch,
            uint256 basePrice
        )
    {
        CurveV2 memory curve = curvesV2[index];
        return (
            curveStyles[curve.curveStyle],
            curve.binStepScaleFactor,
            curve.percentOfLP,
            curve.avaxAtLaunch,
            curve.basePrice
        );
    }

    /**
     * @notice Retrieves the curve style at the specified index.
     * @param index The index of the curve style to retrieve.
     * @return An array of uint256 representing the curve style.
     */
    function getCurveStyle(uint8 index) public view returns (uint256[] memory) {
        return curveStyles[index];
    }

    /**
     * @notice View function to get details of each bin for a specific token.
     * @dev This function returns the number of tokens and corresponding AVAX value in each bin.
     * @param token_ The address of the token for which to get bin details.
     * @return binTokens An array representing each bin's remaining token count.
     * @return binAVAX An array representing each bin's accumulated AVAX value.
     */
    function getBinDetails(
        address token_
    )
        external
        view
        returns (uint256[] memory binTokens, uint256[] memory binAVAX)
    {
        Token memory t = tokens[token_];
        CurveV2 memory c = curvesV2[t.curveIndex];

        uint256[] memory curveStyle = curveStyles[c.curveStyle];
        uint256 length = curveStyle.length;
        binTokens = new uint256[](length);
        binAVAX = new uint256[](length);

        for (uint256 i = 0; i < length; i++) {
            // This is the scaled base price in AVAX according to the bin index and scale factor
            // It represents the price of the bin in AVAX that will be multiplied by the distribution
            // to get the full bin AVAX value
            uint256 scaledBasePriceInAvax = (c.basePrice *
                c.binStepScaleFactor[i]) / 100;
            uint256 fullBinAVAX = (curveStyle[i] * scaledBasePriceInAvax) / 100;
            uint256 fullBinTokens = (curveStyle[i] * t.initialSupply) /
                BASIS_POINTS;

            if (i < t.currentIndex) {
                // If the bin is fully purchased, tokens are 0 and AVAX is full
                binTokens[i] = 0;
                binAVAX[i] = fullBinAVAX;
            } else if (i == t.currentIndex) {
                // For the current bin, calculate remaining tokens and accumulated AVAX
                binTokens[i] = t.currentValue;
                if (binTokens[i] > 0) {
                    uint256 tokensSold = fullBinTokens - t.currentValue;
                    uint256 avaxPerToken = (fullBinAVAX * 1 ether) /
                        fullBinTokens;

                    binAVAX[i] =
                        (tokensSold * avaxPerToken + 1 ether - 1) /
                        1 ether;
                } else {
                    binAVAX[i] = 0;
                }
            } else {
                // For future bins, tokens are full, AVAX is 0
                binTokens[i] = fullBinTokens;
                binAVAX[i] = 0;
            }
        }
    }

    /**
     * @notice Returns the total number of tokens.
     * @dev This function provides the length of the allTokens array.
     * @return The length of the allTokens array.
     */
    function allTokensLength() external view returns (uint) {
        return allTokens.length;
    }

    /**
     * @dev Returns an array of all BIFKN314 Tokens.
     * @return An array of addresses representing all BIFKN314 Tokens.
     */
    function getAllTokens() public view returns (address[] memory) {
        return allTokens;
    }

    /**
     * @notice Retrieves detailed information about a specific token.
     * @param tokenAddress The address of the token to retrieve information for.
     * @return creator The address of the token creator.
     * @return curveIndex The index of the curve associated with the token.
     * @return currentIndex The current index of the token.
     * @return currentValue The current value of the token.
     * @return initialSupply The initial supply of the token.
     * @return hasLaunched A boolean indicating whether the token has been launched.
     * @return launchTime The timestamp of when the token was launched.
     * @return dexAllocations An array of DexAllocation structs representing the token's DEX allocations.
     */
    function getToken(
        address tokenAddress
    )
        public
        view
        returns (
            address creator,
            uint8 curveIndex,
            uint256 currentIndex,
            uint256 currentValue,
            uint256 initialSupply,
            bool hasLaunched,
            uint256 launchTime,
            DexTypes.DexAllocation[] memory dexAllocations
        )
    {
        Token storage token = tokens[tokenAddress];
        return (
            token.creator,
            token.curveIndex,
            token.currentIndex,
            token.currentValue,
            token.initialSupply,
            token.hasLaunched,
            token.launchTime,
            token.dexAllocations
        );
    }

    /**
     * @notice Sets the minimum and maximum buy amounts for the contract.
     * @dev This function can only be called by an account with the MANAGER_ROLE.
     * @param minBuyAmount_ The new minimum buy amount to be set.
     * @param maxBuyAmount_ The new maximum buy amount to be set.
     * @custom:reverts InvalidAmount If the minBuyAmount_ is greater than the maxBuyAmount_.
     * @custom:reverts InvalidAmount If the minBuyAmount_ is zero.
     * @custom:reverts InvalidAmount If the maxBuyAmount_ is zero.
     */
    function setMinMaxBuyAmounts(
        uint256 minBuyAmount_,
        uint256 maxBuyAmount_
    ) external onlyRole(MANAGER_ROLE) {
        if (minBuyAmount_ > maxBuyAmount_) revert InvalidAmount();
        if (minBuyAmount_ == 0 || maxBuyAmount_ == 0) revert InvalidAmount();
        minBuyAmount = minBuyAmount_;
        maxBuyAmount = maxBuyAmount_;
    }

    /**
     * @notice Sets the addresses for fee collection.
     * @dev This function can only be called by an account with the MANAGER_ROLE.
     * @param feeTo_ The address to which fees will be sent.
     * @param launchFeeTo_ The address to which launch fees will be sent.
     * @custom:reverts InvalidAddress if either feeTo_ or launchFeeTo_ is the zero address.
     */
    function setFeeTos(
        address feeTo_,
        address launchFeeTo_
    ) external onlyRole(MANAGER_ROLE) {
        if (feeTo_ == address(0) || launchFeeTo_ == address(0))
            revert InvalidAddress();
        feeTo = feeTo_;
        launchFeeTo = launchFeeTo_;
    }

    /**
     * @notice Sets the fee rates for the contract.
     * @dev This function can only be called by an account with the MANAGER_ROLE.
     *      The feeRate_ must not exceed 200 and the creatorFeeRate_ must not exceed 100.
     * @param feeRate_ The new fee rate to be set.
     * @param creatorFeeRate_ The new creator fee rate to be set.
     * @custom:reverts InvalidFeeRate if feeRate_ exceeds 200 or creatorFeeRate_ exceeds 100.
     */
    function setFeeRates(
        uint256 feeRate_,
        uint256 creatorFeeRate_
    ) external onlyRole(MANAGER_ROLE) {
        if (feeRate_ > 200) revert InvalidFeeRate();
        if (creatorFeeRate_ > 100) revert InvalidFeeRate();

        feeRate = feeRate_;
        creatorFeeRate = creatorFeeRate_;
    }

    /**
     * @notice Sets the launch fee and creator rewards.
     * @dev This function can only be called by an account with the MANAGER_ROLE.
     *      It reverts if the provided launch fee exceeds the maximum allowed launch fee,
     *      or if the provided creator rewards exceed the maximum allowed creator rewards.
     * @param launchFee_ The new launch fee to be set.
     * @param creatorRewards_ The new creator rewards to be set.
     * @custom:reverts LaunchFeeTooHigh if launchFee_ exceeds MAX_LAUNCH_FEE.
     * @custom:reverts CreatorRewardsTooHigh if creatorRewards_ exceeds MAX_CREATOR_REWARDS.
     */
    function setLaunchFeeAndCreatorRewards(
        uint256 launchFee_,
        uint256 creatorRewards_
    ) external onlyRole(MANAGER_ROLE) {
        if (launchFee_ > MAX_LAUNCH_FEE) revert LaunchFeeTooHigh();
        if (creatorRewards_ > MAX_CREATOR_REWARDS)
            revert CreatorRewardsTooHigh();
        launchFee = launchFee_;
        creatorRewards = creatorRewards_;
    }

    /**
     * @notice Sets the number of epochs required to withdraw.
     * @dev Only callable by users with the MANAGER_ROLE.
     * @param epochsToWithdraw_ The number of epochs required to withdraw.
     */
    function setEpochsToWithdraw(
        uint256 epochsToWithdraw_
    ) external onlyRole(MANAGER_ROLE) {
        epochsToWithdraw = epochsToWithdraw_;
    }

    /**
     * @notice Sets the address of the distributor implementation.
     * @dev This function can only be called by an account with the MANAGER_ROLE.
     * @param distributor The address of the new distributor implementation.
     */
    function setDistributorImplementation(
        address distributor
    ) public onlyRole(MANAGER_ROLE) {
        if (distributor == address(0)) revert InvalidAddress();
        distributorImplementation = distributor;
    }

    /**
     * @notice Sets the Burst Dex allocations for a given token.
     * @dev This function can only be called by an account with the MANAGER_ROLE.
     * @param token_ The address of the token for which to set the Dex allocations.
     * @param dexAllocations The Dex allocation details to be added for the token.
     */
    function setTokenDexAllocations(
        address token_,
        DexTypes.DexAllocation[] memory dexAllocations
    ) external onlyRole(MANAGER_ROLE) {
        Token storage t = tokens[token_];

        delete t.dexAllocations;
        _setTokenDEXAllocations(token_, dexAllocations);
    }

    /**
     * @dev Sets the metadata URI for the token.
     * @param token_ The address of the token for which to set the metadata URI.
     * @param newURI_ The new metadata URI to be set.
     * @custom:reverts UnauthorizedOnlyCreator Only creator can set metadata URI if the caller is not the creator of the token.
     */
    function setMetadataURI(address token_, string memory newURI_) public {
        Token storage t = tokens[token_];

        if (t.creator != _msgSender()) {
            revert UnauthorizedOnlyCreator();
        }

        IBurstToken(token_).setMetadataURI(newURI_);
    }

    /**
     * @notice Sets the maximum wallet percentage for a given token.
     * @dev This function can only be called by the creator of the token.
     * @param token_ The address of the token for which the maximum wallet percentage is being set.
     * @param maxWalletPercent_ The new maximum wallet percentage to be set for the token. Must be out of 10000
     * @custom:reverts UnauthorizedOnlyCreator if the caller is not the creator of the token.
     */
    function setMaxWalletPercent(
        address token_,
        uint256 maxWalletPercent_
    ) public {
        Token storage t = tokens[token_];

        if (t.creator != _msgSender()) {
            revert UnauthorizedOnlyCreator();
        }

        if (maxWalletPercent_ == 0) {
            IBurstToken(token_).setMaxWalletEnabled(false);
            IBurstToken(token_).setMaxWalletPercent(0);
        } else {
            // Make sure max wallet is enabled
            IBurstToken(token_).setMaxWalletPercent(maxWalletPercent_);
            IBurstToken(token_).setMaxWalletEnabled(true);
        }
    }

    /**
     * @notice Adds a new curve style to the curveStyles mapping at the specified index.
     * @dev This function can only be called by an account with the MANAGER_ROLE.
     * @param index The index at which to add the new curve style.
     * @param curveStyle An array representing the curve style to be added.
     */
    function addCurveStyle(
        uint8 index,
        uint256[] memory curveStyle
    ) public onlyRole(MANAGER_ROLE) {
        if (curveStyles[index].length > 0) revert CurveAlreadyInUse();
        uint256 totalDistribution = 0;

        for (uint256 i = 0; i < curveStyle.length; i++) {
            totalDistribution += curveStyle[i];
        }

        if (totalDistribution != BASIS_POINTS) {
            revert InvalidTotalDistribution();
        }

        curveStyles[index] = curveStyle;
    }

    /**
     * @notice Sets the minimum Apex allocation.
     * @dev This function can only be called by an account with the MANAGER_ROLE.
     * @param minApexAllocation_ The new minimum Apex allocation value. Must be less than or equal to 10000.
     * @custom:reverts InvalidApexAllocation if minApexAllocation_ is greater than 10000.
     */
    function setMinApexAllocation(
        uint256 minApexAllocation_
    ) external onlyRole(MANAGER_ROLE) {
        if (minApexAllocation_ > 10000) revert InvalidApexAllocation();
        minApexAllocation = minApexAllocation_;
    }

    /**
     * @dev Pauses the contract.
     * Can only be called by an account with the MANAGER_ROLE.
     */
    function pause() public onlyRole(MANAGER_ROLE) {
        _pause();
    }

    /**
     * @dev Unpauses the contract.
     * Can only be called by an account with the MANAGER_ROLE.
     */
    function unpause() public onlyRole(MANAGER_ROLE) {
        _unpause();
    }

    /**
     * @notice Launches a new token by setting up liquidity pools and distributing rewards.
     * @dev This function is called internally to handle the token launch process.
     * It performs the following steps:
     * 1. Checks if the token has already been launched.
     * 2. Retrieves the creator's address for the token.
     * 3. Creates a BurstDistributor contract for the token.
     * 4. Calculates the initial balance of the token and the amount of AVAX required for the launch.
     * 5. Verifies allocation percentages to ensure they are correct.
     * 6. Adds liquidity to Joe, Pharaoh, and Burst pools.
     * 7. Creates a BIFKNChefV2 pool for the Burst liquidity token.
     * 8. Sets reward tokens in the BurstDistributor contract.
     * 9. Completes the curve and transfers ownership to the creator.
     * 10. Marks the token as launched and stores the distributor address.
     * 11. Transfers the creator rewards and launch fee.
     * 12. Emits the CurveCompleted event.
     * @param token_ The address of the token to be launched.
     * @custom:reverts AlreadyLaunched If the token has already been launched.
     */
    function _launchToken(address token_) internal {
        Token storage t = tokens[token_];
        if (t.hasLaunched) revert AlreadyLaunched();

        address creator = t.creator;

        // Create BurstDistributor contract
        IBurstDistributorV2 dist = _createBurstDistributor(token_);
        address distributor = address(dist);

        // Calculate the amount of AVAX required for the launch
        // And the creator rewards and launch fee
        (
            uint256 avaxForLaunch,
            uint256 creatorRewards_,
            uint256 launchFee_
        ) = _calculateAvaxToLaunch(token_);

        (address rewardLP, uint256 rewardLPAmount) = _manageLiquidity(
            token_,
            avaxForLaunch,
            distributor,
            t.dexAllocations
        );

        // Create BIFKNChefV2 pool
        _createBIFKNChefPool(IBurstToken(token_).liquidityToken());

        dist.setRewardTokens(rewardLP, rewardLPAmount);

        _finalizeToken(token_, distributor, creator);

        t.hasLaunched = true;
        tokenToNursery[token_] = distributor;
        // Transfer the creator rewards and launch fee
        _transferNative(creator, creatorRewards_);
        _transferNative(launchFeeTo, launchFee_);
        emit CurveCompleted(token_, distributor, launchFee_, creatorRewards_);
    }

    /**
     * @dev Finalizes the setup of a token by completing its curve, setting exemptions,
     *      assigning the fee collector, enabling trading, and transferring ownership.
     * @param token_ The address of the token to finalize.
     * @param distributor The address to be exempted from max wallet restrictions.
     * @param creator The address to be set as the fee collector and new owner of the token.
     */
    function _finalizeToken(
        address token_,
        address distributor,
        address creator
    ) internal {
        // Complete the curve and transfer ownership
        IBurstToken(token_).completeTheCurve();
        IBurstToken(token_).setMaxWalletExempt(distributor, true);
        IBurstToken(token_).setFeeCollector(creator);
        IBurstToken(token_).setTradingEnabled();
        IBurstToken(token_).transferOwnership(creator);
    }

    /**
     * @dev Internal function to create a new Burst Distributor clone.
     * @param token_ The address of the token to be distributed by the new Burst Distributor.
     * @return The address of the newly created Burst Distributor contract.
     */
    function _createBurstDistributor(
        address token_
    ) internal returns (IBurstDistributorV2) {
        address clone = Clones.clone(address(distributorImplementation));
        IBurstDistributorV2(clone).initialize(
            token_,
            percentDistributedPerEpoch,
            address(this)
        );
        return IBurstDistributorV2(clone);
    }

    /**
     * @dev Calculates the amount of AVAX required to launch a token.
     * @param token_ The address of the token for which the AVAX amount is being calculated.
     * @return avaxForLaunch The amount of AVAX required to launch the token, after subtracting creator rewards and launch fee.
     * @return creatorRewards_ The amount of creator rewards to be distributed.
     * @return launchFee_ The amount of launch fee to be collected.
     */
    function _calculateAvaxToLaunch(
        address token_
    )
        internal
        view
        returns (
            uint256 avaxForLaunch,
            uint256 creatorRewards_,
            uint256 launchFee_
        )
    {
        uint256 avaxAtLaunch = curvesV2[tokens[token_].curveIndex].avaxAtLaunch;

        creatorRewards_ = _calculateCreatorRewards(avaxAtLaunch);
        launchFee_ = _calculateLaunchFee(avaxAtLaunch);
        uint256 totalFees = creatorRewards_ + launchFee_;

        if (avaxAtLaunch < totalFees) revert LaunchFeeTooHigh();

        return (avaxAtLaunch - totalFees, creatorRewards_, launchFee_);
    }

    /**
     * @dev Calculates the launch fee based on the provided AVAX amount.
     * @param avaxAtLaunch The total amount of AVAX available for the launch.
     * @return The calculated launch fee.
     */
    function _calculateLaunchFee(
        uint256 avaxAtLaunch
    ) internal view returns (uint256) {
        return (avaxAtLaunch * launchFee) / BASIS_POINTS;
    }

    /**
     * @dev Calculates the creator rewards based on the provided AVAX amount.
     * @param avaxAtLaunch The total amount of AVAX available for the launch.
     * @return The calculated creator rewards.
     */
    function _calculateCreatorRewards(
        uint256 avaxAtLaunch
    ) internal view returns (uint256) {
        return (avaxAtLaunch * creatorRewards) / BASIS_POINTS;
    }

    /**
     * @dev Calculates the amounts of AVAX and tokens based on the given allocation.
     * @param avaxForLaunch The total amount of AVAX available for the launch.
     * @param tokenForLaunch The total amount of tokens available for the launch.
     * @param allocation The allocation percentage in basis points (1 basis point = 0.01%).
     * @return avaxAmount The calculated amount of AVAX based on the allocation.
     * @return tokenAmount The calculated amount of tokens based on the allocation.
     */
    function _calculateTokenAmounts(
        uint256 avaxForLaunch,
        uint256 tokenForLaunch,
        uint256 allocation
    ) internal pure returns (uint256 avaxAmount, uint256 tokenAmount) {
        avaxAmount = (avaxForLaunch * allocation) / BASIS_POINTS;
        tokenAmount = (tokenForLaunch * allocation) / BASIS_POINTS;
    }

    /**
     * @dev Manages liquidity by distributing tokens and AVAX to different decentralized exchanges (DEXs) based on the provided allocations.
     *
     * @param token_ The address of the token to be used for liquidity.
     * @param avaxToLaunch The amount of AVAX to be used for the launch.
     * @param distributor The address to receive the reward liquidity pool (LP) tokens.
     * @param dexAllocation An array of DexTypes.DexAllocation structs specifying the allocation details for each DEX.
     *
     * @return rewardLP The address of the reward liquidity pool (LP) token.
     * @return rewardLPAmount The amount of reward liquidity pool (LP) tokens.
     *
     * The function performs the following steps:
     * 1. Calculates the initial balance of the token and the amount of AVAX to be used for the launch.
     * 2. Iterates through the dexAllocation array and processes each allocation.
     * 3. For each allocation, calculates the amount of AVAX and tokens to be used for liquidity.
     * 4. Adds liquidity to the specified DEX based on the allocation details.
     * 5. Sets the rewardLP and rewardLPAmount if the allocation is marked as a reward.
     * 6. Emits a LiquidityAdded event for each liquidity addition.
     */
    function _manageLiquidity(
        address token_,
        uint256 avaxToLaunch,
        address distributor,
        DexTypes.DexAllocation[] memory dexAllocation
    ) internal returns (address rewardLP, uint256 rewardLPAmount) {
        uint256 initialBalance = IERC20(token_).balanceOf(address(this));

        for (uint i = 0; i < dexAllocation.length; i++) {
            DexTypes.DexAllocation memory allocation = dexAllocation[i];
            if (allocation.allocation == 0) continue;

            (
                uint256 avaxForLaunch,
                uint256 tokenForLaunch
            ) = _calculateTokenAmounts(
                    avaxToLaunch,
                    initialBalance,
                    allocation.allocation
                );

            address toAddress = allocation.isReward
                ? distributor
                : DEAD_ADDRESS;

            address currentLP;
            uint256 currentLPAmount;

            if (allocation.dex == DexTypes.DEX.PHARAOH) {
                (currentLP, currentLPAmount) = _addLiquidityToPharaoh(
                    token_,
                    tokenForLaunch,
                    avaxForLaunch,
                    toAddress
                );
            } else if (allocation.dex == DexTypes.DEX.APEX) {
                currentLPAmount = IBurstToken(token_).addLiquidity{
                    value: avaxForLaunch
                }(
                    tokenForLaunch,
                    toAddress,
                    block.timestamp + 1 minutes // 1 minute from now
                );

                currentLP = IBurstToken(token_).liquidityToken();
            } else {
                (currentLP, currentLPAmount) = _addLiquidity(
                    token_,
                    tokenForLaunch,
                    avaxForLaunch,
                    toAddress,
                    allocation.dex == DexTypes.DEX.JOE
                        ? JOE_ROUTER
                        : PANGOLIN_ROUTER
                );
            }

            // Only set rewardLP and rewardLPAmount if allocation.isReward is true
            if (allocation.isReward) {
                rewardLP = currentLP;
                rewardLPAmount = currentLPAmount;
            }

            //log each liquidity added separately
            emit LiquidityAdded(
                token_,
                currentLP,
                tokenForLaunch,
                avaxForLaunch,
                currentLPAmount
            );
        }

        if (rewardLP == address(0) || rewardLPAmount == 0)
            revert RewardDexNotSet();
    }

    /**
     * @dev Internal function to add liquidity to the Joe liquidity pool.
     *
     * This function interacts with the Joe Router to add liquidity for a given token and AVAX.
     * If the liquidity pair does not exist, it creates a new pair.
     *
     * @param token The address of the token to add liquidity for.
     * @param amountToken The amount of the token to add as liquidity.
     * @param amountAVAX The amount of AVAX to add as liquidity.
     * @param toAddress The address to receive the liquidity tokens.
     * @param router_ The address of the Joe Router.
     * @return pairAddress The address of the liquidity pair.
     * @return amountLP The amount of LP tokens minted.
     */
    function _addLiquidity(
        address token,
        uint256 amountToken,
        uint256 amountAVAX,
        address toAddress,
        address router_
    ) internal returns (address pairAddress, uint256 amountLP) {
        IRouterAvax AvaxRouter = IRouterAvax(router_);
        address avaxFactory = AvaxRouter.factory();
        address wavax = AvaxRouter.WAVAX();
        pairAddress = IFactoryAvax(avaxFactory).getPair(token, wavax);
        if (pairAddress == address(0)) {
            pairAddress = IFactoryAvax(avaxFactory).createPair(token, wavax);
        }

        // Make sure the liquidity pools are exempt from max wallet
        IBurstToken(token).setMaxWalletExempt(pairAddress, true);

        (, , amountLP) = AvaxRouter.addLiquidityAVAX{value: amountAVAX}(
            token,
            amountToken,
            0, // slippage is unavoidable
            0, // slippage is unavoidable
            toAddress,
            block.timestamp + 1 minutes // 1 minute from now
        );
    }

    /**
     * @dev Internal function to add liquidity to the Pharaoh liquidity pool.
     *
     * This function interacts with the Pharaoh Router to add liquidity for a given token and AVAX.
     * If the liquidity pair does not exist, it creates a new pair.
     *
     * @param token The address of the token to add liquidity for.
     * @param amountToken The amount of the token to add as liquidity.
     * @param amountAVAX The amount of AVAX to add as liquidity.
     * @param toAddress The address to receive the liquidity tokens.
     *
     * @return pharaohPair The address of the liquidity pair.
     */
    function _addLiquidityToPharaoh(
        address token,
        uint256 amountToken,
        uint256 amountAVAX,
        address toAddress
    ) internal returns (address pharaohPair, uint256 amountPharaohLP) {
        IRouterPharaoh PharaohRouter = IRouterPharaoh(PHARAOH_ROUTER);
        address PharaohFactory = PharaohRouter.factory();
        address wavax = PharaohRouter.weth();
        pharaohPair = IFactoryPharaoh(PharaohFactory).getPair(
            token,
            wavax,
            false
        );
        if (pharaohPair == address(0)) {
            pharaohPair = IFactoryPharaoh(PharaohFactory).createPair(
                token,
                wavax,
                false
            );
        }

        IBurstToken(token).setMaxWalletExempt(pharaohPair, true);

        (, , amountPharaohLP) = PharaohRouter.addLiquidityETH{
            value: amountAVAX
        }(
            token,
            false, // stable
            amountToken,
            0, // slippage is unavoidable
            0, // slippage is unavoidable
            toAddress,
            block.timestamp + 1 minutes // 1 minute from now
        );
    }

    /**
     * @dev Internal function to create a new BIFKN Chef pool.
     * @param burstLP The address of the liquidity pool token to be staked.
     *
     * This function adds a new pool to the BIFKN Chef contract with the following parameters:
     * - Allocation points: 1000
     * - Stake token: The provided burstLP address
     * - Bonus multiplier: 1
     * - Start time: 1 day from the current block timestamp
     * - Rewarder: No rewarder (address(0))
     */
    function _createBIFKNChefPool(address burstLP) internal {
        if (address(bifknChef) == address(0)) return; // If the bifknChef is not set, return
        bifknChef.addNewPool(
            1000, // allocation points
            IERC20(burstLP), // stake token
            1, // bonus multiplier
            block.timestamp + 5 minutes, // Start in 5 minutes
            IBIFKNRewarder(address(0)) // No rewarder
        );
    }

    /**
     * @dev Internal function to create a new Burst token.
     * @param tokenName The name of the token.
     * @param tokenSymbol The symbol of the token.
     * @param totalSupply_ The total supply of the token.
     * @param tradingFee The trading fee for the token.
     * @param metadataURI The metadata URI for the token.
     * @param curveIndex_ The index of the curve to be used for the token.
     * @return burstAddress The address of the newly created Burst token.
     *
     * Requirements:
     * - The curve index must exist (percent >= 5000).
     * - The total supply must be at least 1 ether.
     *
     * Emits a {TokenCreated} event.
     */
    function _burstTokenInternal(
        string memory tokenName,
        string memory tokenSymbol,
        uint256 totalSupply_,
        uint256 tradingFee,
        uint256 maxWalletPercent_,
        string memory metadataURI,
        uint8 curveIndex_,
        bytes32 salt,
        DexTypes.DexAllocation[] memory dexAllocations
    ) internal returns (address burstAddress) {
        (uint256[] memory distribution, , uint256 percent, , ) = getCurve(
            curveIndex_
        );
        if (percent < 5000) revert CurveDoesNotExist();
        if (totalSupply_ < 1 ether) revert TotalSupplyTooLow(totalSupply_);

        address sender = _msgSender();

        // Deploy the new Burst token
        (burstAddress, ) = bifknFactory.deployBurst(
            tokenName,
            tokenSymbol,
            totalSupply_,
            address(this), // set the burst factory as the owner
            tradingFee,
            maxWalletPercent_, // set max wallet to 0
            metadataURI,
            salt // default salt to 0  (no salt)
        );

        IBurstToken(burstAddress).initializeBurstToken(address(this));
        IBurstToken(burstAddress).setMaxWalletExempt(address(this), true);
        if (address(bifknChef) != address(0))
            IBurstToken(burstAddress).setMaxWalletExempt(
                address(bifknChef),
                true
            );

        Token storage t = tokens[burstAddress];
        allTokens.push(burstAddress);
        uint256 supply = uint256((totalSupply_ * percent) / BASIS_POINTS);
        t.initialSupply = supply;
        t.currentValue = (supply * distribution[0]) / BASIS_POINTS;
        t.curveIndex = curveIndex_;
        t.creator = sender;
        t.launchTime = block.timestamp;

        // Set the DEX allocations
        _setTokenDEXAllocations(burstAddress, dexAllocations);

        IERC20(burstAddress).approve(JOE_ROUTER, type(uint256).max);
        IERC20(burstAddress).approve(PHARAOH_ROUTER, type(uint256).max);
        IERC20(burstAddress).approve(PANGOLIN_ROUTER, type(uint256).max);

        emit TokenCreated(burstAddress, sender, false, curveIndex_);
    }

    /**
     * @dev Internal function to set the DEX allocations for a token.
     * @param token_ The address of the token.
     * @param dexAllocations_ Array of DexAllocations representing the chosen DEXes and their percentages.
     */
    function _setTokenDEXAllocations(
        address token_,
        DexTypes.DexAllocation[] memory dexAllocations_
    ) internal {
        if (dexAllocations_.length == 0) revert InvalidAllocations();
        uint256 totalAllocation = 0;
        bool rewardDexSet = false;
        Token storage token = tokens[token_];

        for (uint256 i = 0; i < dexAllocations_.length; i++) {
            if (dexAllocations_[i].allocation > BASIS_POINTS)
                revert InvalidAllocations();

            // Ensure APEX has a minimum allocation if it's set
            if (dexAllocations_[i].dex == DexTypes.DEX.APEX) {
                if (
                    minApexAllocation > 0 &&
                    dexAllocations_[i].allocation < minApexAllocation
                ) revert InvalidApexAllocation();
            }

            // Ensure that the reward DEX is only set once
            if (dexAllocations_[i].isReward) {
                if (rewardDexSet) {
                    revert RewardDexAlreadySet();
                } else if (dexAllocations_[i].allocation == 0) {
                    revert InvalidAllocations();
                } else {
                    rewardDexSet = true;
                }
            }

            totalAllocation += dexAllocations_[i].allocation;
            token.dexAllocations.push(dexAllocations_[i]);
        }

        if (rewardDexSet == false) revert RewardDexNotSet();
        if (totalAllocation != BASIS_POINTS) revert InvalidAllocations();
    }

    /**
     * @dev Internal function to handle the purchase of tokens based on a bonding curve.
     * @param t The token storage object containing details about the token.
     * @param value The amount of value (e.g., AVAX) used to buy tokens.
     * @return amount0Out The amount of tokens purchased.
     * @return amount1Used The amount of value used in the purchase.
     * @return launchReady A boolean indicating if the token launch is ready.
     *
     * This function calculates the amount of tokens that can be purchased with the given value
     * based on the bonding curve parameters. It iterates through the curve's distribution and
     * bin step scale factors to determine the amount of tokens that can be bought at each step.
     * The function updates the token's current value and index as tokens are purchased.
     * If the purchase exhausts the available tokens in the current bin, it moves to the next bin.
     * The function returns the total amount of tokens purchased, the total value used, and a
     * boolean indicating if the token launch is ready (i.e., if the end of the curve is reached).
     */
    function _buyTokens(
        Token storage t,
        uint256 value
    )
        private
        returns (uint256 amount0Out, uint256 amount1Used, bool launchReady)
    {
        CurveV2 memory curve = curvesV2[t.curveIndex];
        uint256[] memory arr = curveStyles[curve.curveStyle];
        uint256[] memory binStepScaleFactor = curve.binStepScaleFactor;
        uint256 basePrice = curve.basePrice;
        uint256 i = t.currentIndex;

        while (amount1Used < value) {
            if (binStepScaleFactor[i] == 0) revert DivisionByZero();
            uint256 amountPerAVAX = t.initialSupply / binStepScaleFactor[i];
            uint256 valueLeft = value - amount1Used;
            uint256 amount0InBin = t.currentValue;

            if (amount0InBin > (valueLeft * amountPerAVAX) / basePrice) {
                uint256 usedValue = valueLeft;
                uint256 outputAmount = (amountPerAVAX * valueLeft) / basePrice;

                amount1Used += usedValue;
                amount0Out += outputAmount;
                t.currentValue = amount0InBin - outputAmount;
                break;
            } else {
                uint256 usedValue = (amount0InBin * basePrice) / amountPerAVAX;

                amount1Used += usedValue;
                amount0Out += amount0InBin;
                i++;
                if (i < arr.length) {
                    t.currentValue = (arr[i] * t.initialSupply) / BASIS_POINTS;
                } else {
                    break;
                }
            }
        }

        t.currentIndex = i;
        launchReady = (i >= arr.length);
        return (amount0Out, amount1Used, launchReady);
    }

    /**
     * @dev Internal function to transfer native currency to a specified address.
     * @param to The address to transfer the native currency to.
     * @param amount The amount of native currency to transfer.
     * @notice If the transfer fails, the transaction will revert.
     */
    function _transferNative(address to, uint256 amount) internal {
        if (amount == 0) return;
        if (to == address(0)) revert InvalidAddress();

        if (amount > address(this).balance) {
            amount = address(this).balance;
        }
        (bool success, ) = payable(to).call{value: amount}("");
        if (!success) revert FailedToSendNativeCurrency();
    }

    /**
     * @dev Required by UUPSUpgradeable to authorize upgrades.
     */
    function _authorizeUpgrade(
        address newImplementation
    ) internal override onlyRole(UPGRADER_ROLE) {}
}
