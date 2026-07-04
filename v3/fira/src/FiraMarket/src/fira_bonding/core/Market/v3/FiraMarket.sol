// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.30;

import "../../../../interfaces/IPMarketFactoryV3.sol";
import "../../../../interfaces/IPMarketSwapCallback.sol";
import "../../../../interfaces/IPMarketV3.sol";

import "../../../erc20/FiraERC20.sol";

import {StringLib} from "../../../libraries/StringLib.sol";
import {TokenHelper} from "../../../libraries/TokenHelper.sol";
import "../OracleLib.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

/**
 * @title FiraMarket
 * @notice AMM market for trading between Bond Tokens (BT) and Fira Wrapped tokens (FW)
 * @dev Implements a time-decaying pricing curve based on implied interest rates.
 *      LP tokens represent proportional ownership of the BT and FW reserves.
 *
 *      Invariants to maintain:
 *      - Internal balances totalBt & totalFw not interfered by people transferring tokens in directly
 *      - address(0) & address(this) should never have any rewards & activeBalance accounting done
 *        (guaranteed by address(0) & address(this) check in each updateForTwo function)
 */
contract FiraMarket is FiraERC20, TokenHelper, IPMarketV3 {
    using PMath for uint256;
    using PMath for int256;
    using MarketMathCore for MarketState;
    using SafeERC20 for IERC20;
    using BCIndexLib for IBCToken;
    using OracleLib for OracleLib.Observation[65535];
    using StringLib for string;
    using StringLib for StringLib.slice;

    /**
     * @notice Packed storage struct for market state variables
     * @dev Optimized for gas efficiency by packing into minimal slots
     * @param totalBt Total Bond Token reserves in the market
     * @param totalFw Total Fira Wrapped token reserves in the market
     * @param lastLnImpliedRate Last recorded natural log of implied interest rate
     * @param observationIndex Current index in the TWAP observation array
     * @param observationCardinality Current number of populated observations
     * @param observationCardinalityNext Target observation cardinality after next expansion
     */
    struct MarketStorage {
        int128 totalBt;
        int128 totalFw;
        uint96 lastLnImpliedRate;
        uint16 observationIndex;
        uint16 observationCardinality;
        uint16 observationCardinalityNext;
    }

    string private constant LP_NAME_PREF = "Fira Market LP ";
    string private constant LP_SYMBOL_PREF = "FIRA-LPT-";
    string private constant BT_NAME_PREF = "BT ";
    string private constant BT_SYMBOL_PREF = "BT-";

    /// @notice The Bond Token traded in this market
    IBondToken internal immutable BT;

    /// @notice The Fira Wrapped token traded in this market
    IFiraWrappedStandardized internal immutable FW;

    /// @notice The Coupon Token corresponding to the BT
    IBCToken internal immutable CT;

    /// @notice The FiraMarketFactory that deployed this market
    address public immutable factory;

    /// @notice Unix timestamp when the BT expires and trading stops
    uint256 public immutable expiry;

    /// @notice Scaling parameter for the pricing curve (affects rate sensitivity)
    int256 internal immutable scalarRoot;

    /// @notice Initial anchor point for the pricing curve
    int256 internal immutable initialAnchor;

    /// @notice Natural log of the fee rate root (determines swap fees)
    uint80 internal immutable lnFeeRateRoot;

    /// @notice Packed market state storage
    MarketStorage public _storage;

    /// @notice TWAP oracle observations for implied rate tracking
    OracleLib.Observation[65535] public observations;

    modifier notExpired() {
        if (isExpired()) revert Errors.MarketExpired();
        _;
    }

    /**
     * @notice Constructs a new FiraMarket for trading BT/FW pairs
     * @param _BT Address of the Bond Token to trade
     * @param _scalarRoot Scaling parameter for the pricing curve
     * @param _initialAnchor Initial anchor for pricing curve (determines initial implied rate)
     * @param _lnFeeRateRoot Natural log of fee rate root (determines trading fees)
     */
    constructor(address _BT, int256 _scalarRoot, int256 _initialAnchor, uint80 _lnFeeRateRoot)
        FiraERC20(_getLPName(_BT), _getLPSymbol(_BT), 18)
    {
        BT = IBondToken(_BT);
        FW = IFiraWrappedStandardized(BT.FW());
        CT = IBCToken(BT.CT());

        (_storage.observationCardinality, _storage.observationCardinalityNext) =
            observations.initialize(uint32(block.timestamp));

        if (_scalarRoot <= 0) revert Errors.MarketScalarRootBelowZero(_scalarRoot);

        scalarRoot = _scalarRoot;
        initialAnchor = _initialAnchor;
        lnFeeRateRoot = _lnFeeRateRoot;
        expiry = IBondToken(_BT).expiry();
        factory = msg.sender;
    }

    /**
     * @notice Generates the LP token name from the BT name
     * @param _BT Address of the Bond Token
     * @return The formatted LP token name
     */
    function _getLPName(address _BT) internal view returns (string memory) {
        return LP_NAME_PREF.toSlice().concat(IBondToken(_BT).name().stripPrefixSlice(BT_NAME_PREF));
    }

    /**
     * @notice Generates the LP token symbol from the BT symbol
     * @param _BT Address of the Bond Token
     * @return The formatted LP token symbol
     */
    function _getLPSymbol(address _BT) internal view returns (string memory) {
        return LP_SYMBOL_PREF.toSlice().concat(IBondToken(_BT).symbol().stripPrefixSlice(BT_SYMBOL_PREF));
    }

    /**
     * @notice FiraMarket allows users to provide in BT & FW in exchange for LPs, which
     * will grant LP holders more exchange fee over time
     * @dev will mint as much LP as possible such that the corresponding FW and BT used do
     * not exceed `netFWDesired` and `netBtDesired`, respectively
     * @dev BT and FW should be transferred to this contract prior to calling
     * @dev will revert if BT is expired
     * @param receiver Address to receive the minted LP tokens
     * @param netFwDesired Maximum amount of FW the user is willing to provide
     * @param netBtDesired Maximum amount of BT the user is willing to provide
     * @return netLpOut Amount of LP tokens minted to the receiver
     * @return netFwUsed Amount of FW tokens actually used from the user
     * @return netBtUsed Amount of BT tokens actually used from the user
     */
    function mint(address receiver, uint256 netFwDesired, uint256 netBtDesired)
        external
        nonReentrant
        notExpired
        returns (uint256 netLpOut, uint256 netFwUsed, uint256 netBtUsed)
    {
        MarketState memory market = readState(msg.sender);
        BCIndex index = CT.newIndex();

        uint256 lpToReserve;

        (lpToReserve, netLpOut, netFwUsed, netBtUsed) = market.addLiquidity(netFwDesired, netBtDesired, block.timestamp);

        // initializing the market
        if (lpToReserve != 0) {
            market.setInitialLnImpliedRate(index, initialAnchor, block.timestamp);
            _mint(address(1), lpToReserve);
        }

        _mint(receiver, netLpOut);

        _writeState(market);

        if (_selfBalance(FW) < market.totalFw.Uint()) {
            revert Errors.MarketInsufficientFwReceived(_selfBalance(FW), market.totalFw.Uint());
        }
        if (_selfBalance(BT) < market.totalBt.Uint()) {
            revert Errors.MarketInsufficientBtReceived(_selfBalance(BT), market.totalBt.Uint());
        }

        emit Mint(receiver, netLpOut, netFwUsed, netBtUsed);
    }

    /**
     * @notice LP Holders can burn their LP to receive back FW & BT proportionally
     * to their share of the market
     * @param receiverFw Address to receive the FW output
     * @param receiverBt Address to receive the BT output
     * @param netLpToBurn Amount of LP tokens to burn
     * @return netFwOut Amount of FW tokens sent to receiverFw
     * @return netBtOut Amount of BT tokens sent to receiverBt
     */
    function burn(address receiverFw, address receiverBt, uint256 netLpToBurn)
        external
        nonReentrant
        returns (uint256 netFwOut, uint256 netBtOut)
    {
        MarketState memory market = readState(msg.sender);

        _burn(address(this), netLpToBurn);

        (netFwOut, netBtOut) = market.removeLiquidity(netLpToBurn);

        if (receiverFw != address(this)) IERC20(FW).safeTransfer(receiverFw, netFwOut);
        if (receiverBt != address(this)) IERC20(BT).safeTransfer(receiverBt, netBtOut);

        _writeState(market);

        emit Burn(receiverFw, receiverBt, netLpToBurn, netFwOut, netBtOut);
    }

    /**
     * @notice Fira Market allows swaps between BT & FW it is holding. This function
     * aims to swap an exact amount of BT to FW.
     * @dev steps working of this contract
     *    - The outcome amount of FW will be precomputed by MarketMathLib
     *    - Release the calculated amount of FW to receiver
     *    - Callback to msg.sender if data.length > 0
     *    - Ensure exactBTIn amount of BT has been transferred to this address
     * @dev will revert if BT is expired
     * @param receiver Address to receive the FW output
     * @param exactBtIn Exact amount of BT the user wants to swap in
     * @param data bytes data to be sent in the callback (if any)
     * @return netFwOut Amount of FW tokens sent to receiver
     * @return netFWFee Amount of FW tokens charged as fee
     */
    function swapExactBtForFw(address receiver, uint256 exactBtIn, bytes calldata data)
        external
        nonReentrant
        notExpired
        returns (uint256 netFwOut, uint256 netFWFee)
    {
        MarketState memory market = readState(msg.sender);

        uint256 netFwToReserve;
        (netFwOut, netFWFee, netFwToReserve) = market.swapExactBtForFw(CT.newIndex(), exactBtIn, block.timestamp);

        if (receiver != address(this)) IERC20(FW).safeTransfer(receiver, netFwOut);
        IERC20(FW).safeTransfer(market.treasury, netFwToReserve);

        _writeState(market);

        if (data.length > 0) {
            IPMarketSwapCallback(msg.sender).swapCallback(exactBtIn.neg(), netFwOut.Int(), data);
        }

        if (_selfBalance(BT) < market.totalBt.Uint()) {
            revert Errors.MarketInsufficientBtReceived(_selfBalance(BT), market.totalBt.Uint());
        }

        emit Swap(msg.sender, receiver, exactBtIn.neg(), netFwOut.Int(), netFWFee, netFwToReserve);
    }

    /**
     * @notice Fira Market allows swaps between BT & FW it is holding. This function
     * aims to swap FW for an exact amount of BT.
     * @dev steps working of this function
     *    - The exact outcome amount of BT will be transferred to receiver
     *    - Callback to msg.sender if data.length > 0
     *    - Ensure the calculated required amount of FW is transferred to this address
     * @dev will revert if BT is expired
     * @param receiver Address to receive the BT output
     * @param exactBtOut Exact amount of BT the user wants to receive
     * @param data bytes data to be sent in the callback (if any)
     * @return netFwIn Amount of FW tokens sent in by the user
     * @return netFwFee Amount of FW tokens charged as fee
     */
    function swapFwForExactBt(address receiver, uint256 exactBtOut, bytes calldata data)
        external
        nonReentrant
        notExpired
        returns (uint256 netFwIn, uint256 netFwFee)
    {
        MarketState memory market = readState(msg.sender);

        uint256 netFwToReserve;
        (netFwIn, netFwFee, netFwToReserve) = market.swapFwForExactBt(CT.newIndex(), exactBtOut, block.timestamp);

        if (receiver != address(this)) IERC20(BT).safeTransfer(receiver, exactBtOut);
        IERC20(FW).safeTransfer(market.treasury, netFwToReserve);

        _writeState(market);

        if (data.length > 0) {
            IPMarketSwapCallback(msg.sender).swapCallback(exactBtOut.Int(), netFwIn.neg(), data);
        }

        // have received enough FW
        if (_selfBalance(FW) < market.totalFw.Uint()) {
            revert Errors.MarketInsufficientFwReceived(_selfBalance(FW), market.totalFw.Uint());
        }

        emit Swap(msg.sender, receiver, exactBtOut.Int(), netFwIn.neg(), netFwFee, netFwToReserve);
    }

    /**
     * @notice Sends excess BT and FW balances (above reserves) to the treasury
     * @dev Used to recover tokens accidentally sent directly to the market contract
     */
    function skim() external nonReentrant {
        MarketState memory market = readState(msg.sender);
        uint256 excessBt = _selfBalance(BT) - market.totalBt.Uint();
        uint256 excessFw = _selfBalance(FW) - market.totalFw.Uint();
        if (excessBt != 0) IERC20(BT).safeTransfer(market.treasury, excessBt);
        if (excessFw != 0) IERC20(FW).safeTransfer(market.treasury, excessFw);
    }

    /**
     * @notice redeems the user's reward
     * @param user address of the user to redeem rewards for
     * @return amount of reward token redeemed, in the same order as `getRewardTokens()`
     */
    function redeemRewards(address user) external nonReentrant returns (uint256[] memory) {
        // Return empty array:
        uint256[] memory arr = new uint256[](0);
        return arr;
    }

    /// @notice returns the list of reward tokens
    function getRewardTokens() external view returns (address[] memory) {
        // Return empty array:
        address[] memory arr = new address[](0);
        return arr;
    }

    /* ///////////////////////////////////////////////////////////////
                                ORACLE
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Returns TWAP observations for the implied rate oracle
     * @param secondsAgos Array of time offsets from current timestamp to query
     * @return lnImpliedRateCumulative Cumulative ln(impliedRate) values at each requested time
     */
    function observe(uint32[] memory secondsAgos) external view returns (uint216[] memory lnImpliedRateCumulative) {
        return observations.observe(
            uint32(block.timestamp),
            secondsAgos,
            _storage.lastLnImpliedRate,
            _storage.observationIndex,
            _storage.observationCardinality
        );
    }

    /**
     * @notice Increases the maximum number of TWAP observations that can be stored
     * @dev Call this to enable longer TWAP windows for the oracle
     * @param cardinalityNext The desired new observation cardinality
     */
    function increaseObservationsCardinalityNext(uint16 cardinalityNext) external nonReentrant {
        uint16 cardinalityNextOld = _storage.observationCardinalityNext;
        uint16 cardinalityNextNew = observations.grow(cardinalityNextOld, cardinalityNext);
        if (cardinalityNextOld != cardinalityNextNew) {
            _storage.observationCardinalityNext = cardinalityNextNew;
            emit IncreaseObservationCardinalityNext(cardinalityNextOld, cardinalityNextNew);
        }
    }

    /* ///////////////////////////////////////////////////////////////
                                READ/WRITE STATES
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Reads the market state from storage into memory for gas-efficient manipulation
     * @dev Loads all market parameters including router-specific fee overrides
     * @param router Address of the router (used to check for fee overrides)
     * @return market The complete market state in memory
     */
    function readState(address router) public view returns (MarketState memory market) {
        market.totalBt = _storage.totalBt;
        market.totalFw = _storage.totalFw;
        market.totalLp = totalSupply().Int();

        uint80 overriddenFee;

        (market.treasury, overriddenFee, market.reserveFeePercent) =
            IPMarketFactoryV3(factory).getMarketConfig(address(this), router);

        market.lnFeeRateRoot = overriddenFee == 0 ? lnFeeRateRoot : overriddenFee;
        market.scalarRoot = scalarRoot;
        market.expiry = expiry;

        market.lastLnImpliedRate = _storage.lastLnImpliedRate;
    }

    /**
     * @notice Writes the market state from memory back to storage
     * @dev Also updates the TWAP oracle with the new implied rate
     * @param market The market state to persist
     */
    function _writeState(MarketState memory market) internal {
        uint96 lastLnImpliedRate96 = market.lastLnImpliedRate.Uint96();
        int128 totalBt128 = market.totalBt.Int128();
        int128 totalFw128 = market.totalFw.Int128();

        (uint16 observationIndex, uint16 observationCardinality) = observations.write(
            _storage.observationIndex,
            uint32(block.timestamp),
            _storage.lastLnImpliedRate,
            _storage.observationCardinality,
            _storage.observationCardinalityNext
        );

        _storage.totalBt = totalBt128;
        _storage.totalFw = totalFw128;
        _storage.lastLnImpliedRate = lastLnImpliedRate96;
        _storage.observationIndex = observationIndex;
        _storage.observationCardinality = observationCardinality;

        emit UpdateImpliedRate(block.timestamp, market.lastLnImpliedRate);
    }

    /**
     * @notice Returns the base fee rate root before any router-specific overrides
     * @return The immutable lnFeeRateRoot set at market creation
     */
    function getNonOverrideLnFeeRateRoot() external view returns (uint80) {
        return lnFeeRateRoot;
    }

    /* ///////////////////////////////////////////////////////////////
                            TRIVIAL FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Returns the addresses of the tokens traded in this market
     * @return _FW The Fira Wrapped token address
     * @return _BT The Bond Token address
     * @return _CT The Coupon Token address
     */
    function readTokens() external view returns (IFiraWrappedStandardized _FW, IBondToken _BT, IBCToken _CT) {
        _FW = FW;
        _BT = BT;
        _CT = CT;
    }

    /**
     * @notice Checks if the market's Bond Token has expired
     * @return True if the current timestamp is past expiry, false otherwise
     */
    function isExpired() public view returns (bool) {
        return MiniHelpers.isCurrentlyExpired(expiry);
    }

    /* ///////////////////////////////////////////////////////////////
                    Hooks
    //////////////////////////////////////////////////////////////*/
    function _beforeTokenTransfer(address from, address to, uint256 amount) internal override(FiraERC20) {
        // Do nothing
    }

    function _afterTokenTransfer(address from, address to, uint256 amount) internal override(FiraERC20) {
        // Do nothing
    }
}
