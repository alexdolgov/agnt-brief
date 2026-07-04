// SPDX-License-Identifier: BUSL-1.1

/// @author Rubicon.eth
/// @notice AMMs will be rekt

pragma solidity =0.7.6;
pragma experimental ABIEncoderV2;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/SafeERC20.sol";
import "@openzeppelin/contracts/math/SafeMath.sol";
import "../interfaces/IRubiconMarket.sol";
import "../interfaces/ISwapRouter.sol";

contract MarketAid {
    /// *** Libraries ***
    using SafeMath for uint256;
    using SafeMath for uint16;
    using SafeERC20 for IERC20;

    /// *** Storage Variables ***

    /// @notice admin
    address public admin;

    /// @notice The Rubicon Market strategists direct all activity towards. There is only one market, RubiconMarket.sol, in the Rubicon Protocol
    address public RubiconMarketAddress;

    /// @notice The initialization status of BathPair
    bool public initialized;

    /// @dev The id of the last StrategistTrade made by any strategist on this contract
    /// @dev This value is globally unique, and increments with every trade
    uint256 internal last_stratTrade_id;

    // can keep?
    /// @notice The total amount of successful offer fills that all strategists have made for a given asset
    mapping(address => uint256) public totalFillsPerAsset;

    /// @notice Unique id => StrategistTrade created in marketMaking call
    mapping(uint256 => StrategistTrade) public strategistTrades;

    /// @notice Map a strategist to their outstanding order IDs
    mapping(address => mapping(address => mapping(address => uint256[])))
        public outOffersByStrategist;

    /// @notice A mapping of approved strategists to access Pools liquidity
    mapping(address => bool) public approvedStrategists;

    bool locked;

    /// *** Structs ***

    struct order {
        uint256 pay_amt;
        IERC20 pay_gem;
        uint256 buy_amt;
        IERC20 buy_gem;
    }

    struct StrategistTrade {
        uint256 askId;
        uint256 askPayAmt;
        address askAsset;
        uint256 bidId;
        uint256 bidPayAmt;
        address bidAsset;
        address strategist;
        uint256 timestamp;
    }

    /// *** Events ***

    /// @notice Log a new market-making trade placed by a strategist, resulting in a StrategitTrade
    event LogStrategistTrade(
        uint256 strategistTradeID,
        bytes32 askId,
        bytes32 bidId,
        address askAsset,
        address bidAsset,
        uint256 timestamp,
        address strategist
    );

    /// @notice Logs the cancellation of a StrategistTrade
    event LogScrubbedStratTrade(
        uint256 strategistIDScrubbed,
        uint256 assetFill,
        address bathAssetAddress,
        uint256 quoteFill,
        address quoteAddress
    );

    /// @notice Log when a strategist claims their market-making rewards (effectively a rebate for good performance)
    event LogStrategistRewardClaim(
        address strategist,
        address asset,
        uint256 amountOfReward,
        uint256 timestamp
    );

    /// @notice Log when a strategist places a bathMarketMaking order
    event LogBatchMarketMakingTrades(address strategist, uint256[] trades);

    /// @notice Log when a strategist requotes an offer
    event LogRequote(
        address strategist,
        uint256 scrubbedOfferID,
        uint256 newOfferID
    );

    /// @notice Log when a strategist bath requotes offers
    event LogBatchRequoteOffers(address strategist, uint256[] scrubbedOfferIDs);

    /// *** External Functions ***

    /// @notice Constructor-like initialization function
    /// @dev Proxy-safe initialization of storage
    function initialize(address market) external beGoneReentrantScum {
        require(!initialized);
        address _admin = msg.sender; //Assume the initializer is BathHouse

        admin = _admin;

        RubiconMarketAddress = market;

        initialized = true;
    }

    /// *** Modifiers ***

    modifier onlyAdmin() {
        require(msg.sender == admin);
        _;
    }

    modifier onlyApprovedStrategist(address targetStrategist) {
        // Admin approves strategists directly on this proxy-wrapped contract
        require(
            isApprovedStrategist(targetStrategist) == true,
            "you are not an approved strategist - bathPair"
        );
        _;
    }

    /// @notice A function to check whether or not an address is an approved strategist
    function isApprovedStrategist(address wouldBeStrategist)
        public
        view
        returns (bool)
    {
        if (approvedStrategists[wouldBeStrategist] == true) {
            return true;
        } else {
            return false;
        }
    }

    /// @dev beGoneReentrantScum
    modifier beGoneReentrantScum() {
        require(!locked);
        locked = true;
        _;
        locked = false;
    }

    // ** Admin **

    /// @notice Admin-only function to approve a new permissioned strategist
    function approveStrategist(address strategist) external onlyAdmin {
        approvedStrategists[strategist] = true;
    }

    /// @notice Admin-only function to remove a permissioned strategist
    function removeStrategist(address strategist) external onlyAdmin {
        approvedStrategists[strategist] = false;
    }

    // *** Internal Functions ***

    /// @notice Internal function to provide the next unique StrategistTrade ID
    function _next_id() internal returns (uint256) {
        last_stratTrade_id++;
        return last_stratTrade_id;
    }

    /// @notice This function results in the removal of the Strategist Trade (bid and/or ask on Rubicon Market) from the books and it being deleted from the contract
    /// @dev The local array of strategist IDs that exists for any given strategist [query via getOutstandingStrategistTrades()] acts as an acitve RAM for outstanding strategist trades
    /// @dev Cancels outstanding orders and manages the ledger of outstandingAmount() on bathTokens as Strategist Trades are cancelled/scrubbed or expired
    function handleStratOrderAtID(uint256 id) internal {
        StrategistTrade memory info = strategistTrades[id];
        address _asset = info.askAsset;
        address _quote = info.bidAsset;

        order memory offer1 = getOfferInfo(info.askId); //ask
        order memory offer2 = getOfferInfo(info.bidId); //bid
        uint256 askDelta = info.askPayAmt.sub(offer1.pay_amt);
        uint256 bidDelta = info.bidPayAmt.sub(offer2.pay_amt);

        // NO ACCOUNTING BUT DO CANCEL THE ORDERS
        // if real
        if (info.askId != 0) {
            // if delta > 0 - delta is fill => handle any amount of fill here
            if (askDelta > 0) {
                // logFill(askDelta, info.strategist, info.askAsset);
                // IBathToken(bathAssetAddress).removeFilledTradeAmount(askDelta);
                // not a full fill
                if (askDelta != info.askPayAmt) {
                    IRubiconMarket(RubiconMarketAddress).cancel(info.askId);
                }
            }
            // otherwise didn't fill so cancel
            else {
                IRubiconMarket(RubiconMarketAddress).cancel(info.askId);
            }
        }

        // if real
        if (info.bidId != 0) {
            // if delta > 0 - delta is fill => handle any amount of fill here
            if (bidDelta > 0) {
                // logFill(bidDelta, info.strategist, info.bidAsset);
                // IBathToken(bathQuoteAddress).removeFilledTradeAmount(bidDelta);
                // not a full fill
                if (bidDelta != info.bidPayAmt) {
                    IRubiconMarket(RubiconMarketAddress).cancel(info.bidId);
                }
            }
            // otherwise didn't fill so cancel
            else {
                IRubiconMarket(RubiconMarketAddress).cancel(info.bidId);
            }
        }

        // Delete the order from outOffersByStrategist
        uint256 target = getIndexFromElement(
            id,
            outOffersByStrategist[_asset][_quote][info.strategist]
        );
        uint256[] storage current = outOffersByStrategist[_asset][_quote][
            info.strategist
        ];
        current[target] = current[current.length - 1];
        current.pop(); // Assign the last value to the value we want to delete and pop, best way to do this in solc AFAIK

        emit LogScrubbedStratTrade(id, askDelta, _asset, bidDelta, _quote);
    }

    /// @notice Get information about a Rubicon Market offer and return it as an order
    function getOfferInfo(uint256 id) internal view returns (order memory) {
        (
            uint256 ask_amt,
            IERC20 ask_gem,
            uint256 bid_amt,
            IERC20 bid_gem
        ) = IRubiconMarket(RubiconMarketAddress).getOffer(id);
        order memory offerInfo = order(ask_amt, ask_gem, bid_amt, bid_gem);
        return offerInfo;
    }

    /// @notice A function that returns the index of uid from array
    /// @dev uid must be in array for the purposes of this contract to enforce outstanding trades per strategist are tracked correctly
    function getIndexFromElement(uint256 uid, uint256[] storage array)
        internal
        view
        returns (uint256 _index)
    {
        bool assigned = false;
        for (uint256 index = 0; index < array.length; index++) {
            if (uid == array[index]) {
                _index = index;
                assigned = true;
                return _index;
            }
        }
        require(assigned, "Didnt Find that element in live list, cannot scrub");
    }

    // function for infinite approvals of Rubicon Market
    function approveAssetOnMarket(address toApprove)
        private
        beGoneReentrantScum
    {
        require(
            initialized &&
                RubiconMarketAddress != address(this) &&
                RubiconMarketAddress != address(0),
            "Market Aid not initialized"
        );
        // Approve exchange
        IERC20(toApprove).safeApprove(RubiconMarketAddress, 2**256 - 1);
    }

    // *** External Functions - Only Approved Strategists ***

    /// @notice Key entry point for strategists to use Bath Token (LP) funds to place market-making trades on the Rubicon Order Book
    function placeMarketMakingTrades(
        address[2] memory tokenPair, // ASSET, Then Quote
        uint256 askNumerator, // Quote / Asset
        uint256 askDenominator, // Asset / Quote
        uint256 bidNumerator, // size in ASSET
        uint256 bidDenominator // size in QUOTES
    ) public onlyApprovedStrategist(msg.sender) returns (uint256 id) {
        // Require at least one order is non-zero
        require(
            (askNumerator > 0 && askDenominator > 0) ||
                (bidNumerator > 0 && bidDenominator > 0),
            "one order must be non-zero"
        );

        // *** Low-Level Self Trade Protection ***
        selfTradeProtection(
            askNumerator,
            askDenominator,
            bidNumerator,
            bidDenominator
        );

        address _underlyingAsset = tokenPair[0];
        address _underlyingQuote = tokenPair[1];
        address _RubiconMarketAddress = RubiconMarketAddress;

        // Calculate new bid and/or ask
        order memory ask = order(
            askNumerator,
            IERC20(_underlyingAsset),
            askDenominator,
            IERC20(_underlyingQuote)
        );
        order memory bid = order(
            bidNumerator,
            IERC20(_underlyingQuote),
            bidDenominator,
            IERC20(_underlyingAsset)
        );

        require(
            IERC20(ask.pay_gem).balanceOf(address(this)) > ask.pay_amt &&
                IERC20(bid.pay_gem).balanceOf(address(this)) > bid.pay_amt,
            "Not enough ERC20s to market make this call"
        );

        address input = address(ask.pay_gem);
        if (
            IERC20(input).allowance(address(this), _RubiconMarketAddress) == 0
        ) {
            approveAssetOnMarket(input);
        }
        address _input = address(bid.pay_gem);
        if (
            IERC20(_input).allowance(address(this), _RubiconMarketAddress) == 0
        ) {
            approveAssetOnMarket(_input);
        }

        // // Place new bid and/or ask
        uint256 newAskID = IRubiconMarket(_RubiconMarketAddress).offer(
            ask.pay_amt,
            ask.pay_gem,
            ask.buy_amt,
            ask.buy_gem,
            0,
            true
        );

        uint256 newBidID = IRubiconMarket(_RubiconMarketAddress).offer(
            bid.pay_amt,
            bid.pay_gem,
            bid.buy_amt,
            bid.buy_gem,
            0,
            true
        );

        // Strategist trade is recorded so they can get paid and the trade is logged for time
        StrategistTrade memory outgoing = StrategistTrade(
            newAskID,
            ask.pay_amt,
            _underlyingAsset,
            newBidID,
            bid.pay_amt,
            _underlyingQuote,
            msg.sender,
            block.timestamp
        );

        // Give each trade a unique id for easy handling by strategists
        id = _next_id();
        strategistTrades[id] = outgoing;
        // Allow strategists to easily call a list of their outstanding offers
        outOffersByStrategist[_underlyingAsset][_underlyingQuote][msg.sender]
            .push(id);

        emit LogStrategistTrade(
            id,
            bytes32(outgoing.askId),
            bytes32(outgoing.bidId),
            outgoing.askAsset,
            outgoing.bidAsset,
            block.timestamp,
            outgoing.strategist
        );
    }

    /// @notice A function to batch together many placeMarketMakingTrades() in a single transaction
    function batchMarketMakingTrades(
        address[2] memory tokenPair, // ASSET, Then Quote
        uint256[] memory askNumerators, // Quote / Asset
        uint256[] memory askDenominators, // Asset / Quote
        uint256[] memory bidNumerators, // size in ASSET
        uint256[] memory bidDenominators // size in QUOTES
    ) public onlyApprovedStrategist(msg.sender) {
        /// Note: probably a redundant onlyApprovedStrategistCall?
        require(
            askNumerators.length == askDenominators.length &&
                askDenominators.length == bidNumerators.length &&
                bidNumerators.length == bidDenominators.length,
            "not all order lengths match"
        );

        uint256 quantity = askNumerators.length;

        uint256[] memory trades = new uint256[](quantity);

        for (uint256 index = 0; index < quantity; index++) {
            uint256 id = placeMarketMakingTrades(
                tokenPair,
                askNumerators[index],
                askDenominators[index],
                bidNumerators[index],
                bidDenominators[index]
            );
            trades[index] = id;
        }
        emit LogBatchMarketMakingTrades(msg.sender, (trades));
    }

    /// @notice A function to requote an outstanding order and replace it with a new Strategist Trade
    /// @dev Note that this function will create a new unique id for the requote'd ID due to the low-level functionality
    function requote(
        uint256 id,
        address[2] memory tokenPair, // ASSET, Then Quote
        uint256 askNumerator, // Quote / Asset
        uint256 askDenominator, // Asset / Quote
        uint256 bidNumerator, // size in ASSET
        uint256 bidDenominator // size in QUOTES
    ) public onlyApprovedStrategist(msg.sender) {
        // 1. Scrub strat trade
        scrubStrategistTrade(id);

        // 2. Place another
        uint256 newOfferID = placeMarketMakingTrades(
            tokenPair,
            askNumerator,
            askDenominator,
            bidNumerator,
            bidDenominator
        );

        emit LogRequote(msg.sender, id, (newOfferID));
    }

    // Take a single order pair, BID and ASK
    function selfTradeProtection(
        uint256 askNum,
        uint256 askDen,
        uint256 bidNum,
        uint256 bidDen
    ) internal pure {
        require(
            askDen * bidDen > bidNum * askNum,
            "The trades must not match with self"
        );
    }

    /// @notice A function to batch together many requote() calls in a single transaction
    /// @dev Ids and input are indexed through to execute requotes
    function batchRequoteOffers(
        uint256[] memory ids,
        address[2] memory tokenPair, // ASSET, Then Quote
        uint256[] memory askNumerators, // Quote / Asset
        uint256[] memory askDenominators, // Asset / Quote
        uint256[] memory bidNumerators, // size in ASSET
        uint256[] memory bidDenominators // size in QUOTES
    ) external onlyApprovedStrategist(msg.sender) {
        require(
            askNumerators.length == askDenominators.length &&
                askDenominators.length == bidNumerators.length &&
                bidNumerators.length == bidDenominators.length &&
                ids.length == askNumerators.length,
            "not all input lengths match"
        );

        // Scrub the orders
        scrubStrategistTrades(ids);

        // Then Batch market make
        batchMarketMakingTrades(
            tokenPair,
            askNumerators,
            askDenominators,
            bidNumerators,
            bidDenominators
        );

        emit LogBatchRequoteOffers(msg.sender, ids);
    }

    /// @notice Cancel an outstanding strategist offers and return funds to LPs while logging fills
    function scrubStrategistTrade(uint256 id)
        public
        onlyApprovedStrategist(msg.sender)
    {
        require(
            msg.sender == strategistTrades[id].strategist,
            "you are not the strategist that made this order"
        );
        handleStratOrderAtID(id);
    }

    /// @notice Batch scrub outstanding strategist trades and return funds to LPs
    function scrubStrategistTrades(uint256[] memory ids)
        public
        onlyApprovedStrategist(msg.sender)
    {
        for (uint256 index = 0; index < ids.length; index++) {
            uint256 _id = ids[index];
            scrubStrategistTrade(_id);
        }
    }

    /// @dev a single use function for storage migration between versions. There was an old bug in which case StratIDs could be scrubbed that have already been scrubbed.
    /// @dev This results in ~under accounting~ on the Bath Token and makes the Strat IDs un-scrubbable in normal operations, hence this one-time function to allow the strategist to modify outOffersByStrategist
    function flushDeprecatedStratOrders(
        address asset,
        address quote,
        address strategist,
        uint256[] memory ids
    ) external onlyApprovedStrategist(msg.sender) {
        // Remove these orders from the strategist RAM
        for (uint256 index = 0; index < ids.length; index++) {
            uint256 id = ids[index];
            // Delete the order from outOffersByStrategist
            uint256 target = getIndexFromElement(
                id,
                outOffersByStrategist[asset][quote][strategist]
            );
            uint256[] storage current = outOffersByStrategist[asset][quote][
                strategist
            ];
            current[target] = current[current.length - 1];
            current.pop();
        }
    }

    function adminRebalanceFunds(
        address assetToSell,
        uint256 amountToSell,
        address assetToTarget
    ) external onlyAdmin returns (uint256 fill_amt) {
        // Market order in one direction to rebalance for market-making
        return
            IRubiconMarket(RubiconMarketAddress).sellAllAmount(
                IERC20(assetToSell),
                amountToSell,
                IERC20(assetToTarget),
                0
            );
    }

    function adminMaxApproveTarget(address target, address token)
        external
        onlyAdmin
    {
        // Market order in one direction to rebalance for market-making
        IERC20(token).approve(target, uint256(-1));
    }

    // Market order in one direction to rebalance for market-making
    function strategistRebalanceFunds(
        address assetToSell,
        uint256 amountToSell,
        address assetToTarget,
        uint24 poolFee //** new variable */
    ) external onlyApprovedStrategist(msg.sender) returns (uint256 fill_amt) {
        // *** ability to target AMM for rebalancing the book ***
        ISwapRouter swapRouter = ISwapRouter(
            address(0xE592427A0AEce92De3Edee1F18E0157C05861564)
        );
        if (
            IERC20(assetToSell).allowance(address(this), address(swapRouter)) <=
            amountToSell
        ) {
            IERC20(assetToSell).approve(address(swapRouter), amountToSell);
        }
        ISwapRouter.ExactInputSingleParams memory params = ISwapRouter
            .ExactInputSingleParams({
                tokenIn: assetToSell,
                tokenOut: assetToTarget,
                fee: poolFee,
                recipient: address(this), //keep funds here
                deadline: block.timestamp,
                amountIn: amountToSell,
                amountOutMinimum: 0,
                sqrtPriceLimitX96: 0
            });

        // The call to `exactInputSingle` executes the swap.
        uint256 amountOut = swapRouter.exactInputSingle(params);

        // ERC20(forThis).transfer(to, amountOut);
        return amountOut;
    }

    /// *** View Functions ***

    /// @notice The goal of this function is to enable a means to retrieve all outstanding orders a strategist has live in the books
    /// @dev This is helpful to manage orders as well as track all strategist orders (like their RAM of StratTrade IDs) and place any would-be constraints on strategists
    function getOutstandingStrategistTrades(
        address asset,
        address quote,
        address strategist
    ) public view returns (uint256[] memory) {
        // Could make onlyApprovedStrategist for stealth mode optionally 😎
        return outOffersByStrategist[asset][quote][strategist];
    }

    /// @notice returns the total amount of ERC20s (quote and asset) that the strategist has
    ///             in SUM on this contract AND the market place.
    function getStrategistTotalLiquidity(
        address asset,
        address quote,
        address strategist
    )
        public
        view
        returns (
            uint256 quoteWeiAmount,
            uint256 assetWeiAmount,
            bool status
        )
    {
        require(
            initialized && RubiconMarketAddress != address(0),
            "not initialized!"
        );
        uint256 quoteLocalBalance = IERC20(quote).balanceOf(address(this));
        uint256 assetLocalBalance = IERC20(asset).balanceOf(address(this));

        uint256[] memory stratBook = getOutstandingStrategistTrades(
            asset,
            quote,
            strategist
        );

        uint256 quoteOnChainBalance = 0;
        uint256 assetOnChainBalance = 0;
        if (stratBook.length > 0) {
            for (uint256 index = 0; index < stratBook.length; index++) {
                StrategistTrade memory info = strategistTrades[
                    stratBook[index]
                ];

                // Get ERC20 balances of this strategist on the books
                (uint256 quoteOnChainOrderValue, , , ) = IRubiconMarket(
                    RubiconMarketAddress
                ).getOffer(info.bidId);
                (
                    uint256 assetOnChainOrderValue, // Stack too deep so only sanity check on quote below
                    ,
                    ,

                ) = IRubiconMarket(RubiconMarketAddress).getOffer(info.askId);

                quoteOnChainBalance += quoteOnChainOrderValue;
                assetOnChainBalance += assetOnChainOrderValue;
            }
        }

        if (quoteOnChainBalance > 0 || assetOnChainBalance > 0) {
            status = true;
        }

        quoteWeiAmount = quoteLocalBalance + quoteOnChainBalance;
        assetWeiAmount = assetLocalBalance + assetOnChainBalance;
    }
}
