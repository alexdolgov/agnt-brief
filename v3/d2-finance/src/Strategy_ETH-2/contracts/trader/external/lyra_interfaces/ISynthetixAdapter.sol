//SPDX-License-Identifier: ISC
pragma solidity ^0.8.13;

import "./IAddressResolver.sol";
import "./ISynthetix.sol";
import "./IExchanger.sol";
import "./IExchangeRates.sol";
import "./IDelegateApprovals.sol";

// For full documentation refer to @lyrafinance/protocol/contracts/SynthetixAdapter.sol";
interface ISynthetixAdapter {
    struct ExchangeParams {
        // snx oracle exchange rate for base
        uint256 spotPrice;
        // snx quote asset identifier key
        bytes32 quoteKey;
        // snx base asset identifier key
        bytes32 baseKey;
        // snx spot exchange rate from quote to base
        uint256 quoteBaseFeeRate;
        // snx spot exchange rate from base to quote
        uint256 baseQuoteFeeRate;
    }

    /// @dev Pause the whole system. Note; this will not pause settling previously expired options.
    function isMarketPaused(address market) external view returns (bool);

    function isGlobalPaused() external view returns (bool);

    function addressResolver() external view returns (address);

    function synthetix() external view returns (address);

    function exchanger() external view returns (address);

    function exchangeRates() external view returns (address);

    function delegateApprovals() external view returns (address);

    // Variables related to calculating premium/fees
    function quoteKey(address market) external view returns (bytes32);

    function baseKey(address market) external view returns (bytes32);

    function rewardAddress(address market) external view returns (bytes32);

    function trackingCode(address market) external view returns (bytes32);

    function updateSynthetixAddresses() external;

    /////////////
    // Getters //
    /////////////

    function rateAndCarry(address /*optionMarket*/ ) external view returns (int256 rateAndCarry);

    function getSpotPriceForMarket(address _contractAddress) external view returns (uint256 spotPrice);

    function getSpotPrice(bytes32 to) external view returns (uint256);

    function getExchangeParams(address optionMarket) external view returns (ExchangeParams memory exchangeParams);

    function requireNotGlobalPaused(address optionMarket) external view;

    /////////////////////////////////////////
    // Exchanging QuoteAsset for BaseAsset //
    /////////////////////////////////////////

    function exchangeFromExactQuote(address optionMarket, uint256 amountQuote)
        external
        returns (uint256 baseReceived);

    function exchangeToExactBase(ExchangeParams memory exchangeParams, address optionMarket, uint256 amountBase)
        external
        returns (uint256 quoteSpent, uint256 baseReceived);

    function exchangeToExactBaseWithLimit(
        ExchangeParams memory exchangeParams,
        address optionMarket,
        uint256 amountBase,
        uint256 quoteLimit
    ) external returns (uint256 quoteSpent, uint256 baseReceived);

    function estimateExchangeToExactBase(ExchangeParams memory exchangeParams, uint256 amountBase)
        external
        pure
        returns (uint256 quoteNeeded);

    /////////////////////////////////////////
    // Exchanging BaseAsset for QuoteAsset //
    /////////////////////////////////////////

    function exchangeFromExactBase(address optionMarket, uint256 amountBase) external returns (uint256 quoteReceived);

    function exchangeToExactQuote(ExchangeParams memory exchangeParams, address optionMarket, uint256 amountQuote)
        external
        returns (uint256 baseSpent, uint256 quoteReceived);

    function exchangeToExactQuoteWithLimit(
        ExchangeParams memory exchangeParams,
        address optionMarket,
        uint256 amountQuote,
        uint256 baseLimit
    ) external returns (uint256 baseSpent, uint256 quoteReceived);

    function estimateExchangeToExactQuote(ExchangeParams memory exchangeParams, uint256 amountQuote)
        external
        pure
        returns (uint256 baseNeeded);

    ////////////
    // Events //
    ////////////

    /**
     * @dev Emitted when the address resolver is set.
     */
    event AddressResolverSet(IAddressResolver addressResolver);
    /**
     * @dev Emitted when synthetix contracts are updated.
     */
    event SynthetixAddressesUpdated(
        ISynthetix synthetix, IExchanger exchanger, IExchangeRates exchangeRates, IDelegateApprovals delegateApprovals
    );
    /**
     * @dev Emitted when values for a given option market are set.
     */
    event GlobalsSetForContract(
        address indexed market, bytes32 quoteKey, bytes32 baseKey, address rewardAddress, bytes32 trackingCode
    );
    /**
     * @dev Emitted when GlobalPause.
     */
    event GlobalPausedSet(bool isPaused);
    /**
     * @dev Emitted when single market paused.
     */
    event MarketPausedSet(address indexed contractAddress, bool isPaused);
    /**
     * @dev Emitted when an exchange for base to quote occurs.
     * Which base and quote were swapped can be determined by the given marketAddress.
     */
    event BaseSwappedForQuote(
        address indexed marketAddress, address indexed exchanger, uint256 baseSwapped, uint256 quoteReceived
    );
    /**
     * @dev Emitted when an exchange for quote to base occurs.
     * Which base and quote were swapped can be determined by the given marketAddress.
     */
    event QuoteSwappedForBase(
        address indexed marketAddress, address indexed exchanger, uint256 quoteSwapped, uint256 baseReceived
    );

    ////////////
    // Errors //
    ////////////
    // Admin
    error InvalidRewardAddress(address thrower, address rewardAddress);

    // Market Paused
    error AllMarketsPaused(address thrower, address marketAddress);
    error MarketIsPaused(address thrower, address marketAddress);

    // Exchanging
    error ReceivedZeroFromExchange(
        address thrower, bytes32 fromKey, bytes32 toKey, uint256 amountSwapped, uint256 amountReceived
    );
    error QuoteBaseExchangeExceedsLimit(
        address thrower,
        uint256 amountBaseRequested,
        uint256 quoteToSpend,
        uint256 quoteLimit,
        uint256 spotPrice,
        bytes32 quoteKey,
        bytes32 baseKey
    );
    error BaseQuoteExchangeExceedsLimit(
        address thrower,
        uint256 amountQuoteRequested,
        uint256 baseToSpend,
        uint256 baseLimit,
        uint256 spotPrice,
        bytes32 baseKey,
        bytes32 quoteKey
    );
    error RateIsInvalid(address thrower, uint256 spotPrice, bool invalid);
}
