// ============================================================
// FILE: lib/dev-frax-bonds/src/contracts/FXB.sol
// ============================================================

// SPDX-License-Identifier: ISC
pragma solidity ^0.8.23;

// ====================================================================
// |     ______                   _______                             |
// |    / _____________ __  __   / ____(_____  ____ _____  ________   |
// |   / /_  / ___/ __ `| |/_/  / /_  / / __ \/ __ `/ __ \/ ___/ _ \  |
// |  / __/ / /  / /_/ _>  <   / __/ / / / / / /_/ / / / / /__/  __/  |
// | /_/   /_/   \__,_/_/|_|  /_/   /_/_/ /_/\__,_/_/ /_/\___/\___/   |
// |                                                                  |
// ====================================================================
// =============================== FXB ================================
// ====================================================================
// Frax Bond token (FXB) ERC20 contract. A FXB is sold at a discount and redeemed 1-to-1 for FRAX at a later date.
// Frax Finance: https://github.com/FraxFinance

import { IERC20, ERC20 } from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import { ERC20Permit } from "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";
import { FXBFactory } from "./FXBFactory.sol";

/// @title FXB
/// @notice  The FXB token can be redeemed for 1 FRAX at a later date. Created via factory.
/// @dev https://github.com/FraxFinance/frax-bonds
contract FXB is ERC20, ERC20Permit {
    // =============================================================================================
    // Storage
    // =============================================================================================

    /// @notice The Frax token contract
    IERC20 public immutable FRAX;

    /// @notice Timestamp of bond maturity
    uint256 public immutable MATURITY_TIMESTAMP;

    /// @notice Total amount of FXB minted
    uint256 public totalFxbMinted;

    /// @notice Total amount of FXB redeemed
    uint256 public totalFxbRedeemed;

    // =============================================================================================
    // Structs
    // =============================================================================================

    /// @notice Bond Information
    /// @param symbol The symbol of the bond
    /// @param name The name of the bond
    /// @param maturityTimestamp Timestamp the bond will mature
    struct BondInfo {
        string symbol;
        string name;
        uint256 maturityTimestamp;
    }

    // =============================================================================================
    // Constructor
    // =============================================================================================

    /// @notice Called by the factory
    /// @param _frax The address of the FRAX token
    /// @param _symbol The symbol of the bond
    /// @param _name The name of the bond
    /// @param _maturityTimestamp Timestamp the bond will mature and be redeemable
    constructor(
        address _frax,
        string memory _symbol,
        string memory _name,
        uint256 _maturityTimestamp
    ) ERC20(_symbol, _name) ERC20Permit(_symbol) {
        // Set the FRAX address
        FRAX = IERC20(_frax);

        // Set the maturity timestamp
        MATURITY_TIMESTAMP = _maturityTimestamp;
    }

    // =============================================================================================
    // View functions
    // =============================================================================================

    /// @notice Returns summary information about the bond
    /// @return BondInfo Summary of the bond
    function bondInfo() external view returns (BondInfo memory) {
        return BondInfo({ symbol: symbol(), name: name(), maturityTimestamp: MATURITY_TIMESTAMP });
    }

    /// @notice Returns a boolean representing whether a bond can be redeemed
    /// @return _isRedeemable If the bond is redeemable
    function isRedeemable() public view returns (bool _isRedeemable) {
        _isRedeemable = (block.timestamp >= MATURITY_TIMESTAMP);
    }

    // =============================================================================================
    // Public functions
    // =============================================================================================

    /// @notice Mints a specified amount of tokens to the account, requires caller to approve on the FRAX contract in an amount equal to the minted amount
    /// @dev Supports OZ 5.0 interfacing with named variable arguments
    /// @param account The account to receive minted tokens
    /// @param value The amount of the token to mint
    function mint(address account, uint256 value) external {
        // NOTE: Allow minting after expiry

        // Make sure minting an amount
        if (value == 0) revert ZeroAmount();

        // Effects: update mint tracking
        totalFxbMinted += value;

        // Effects: Give the FXB to the recipient
        _mint({ account: account, value: value });

        // Interactions: Take 1-to-1 FRAX from the user
        FRAX.transferFrom(msg.sender, address(this), value);
    }

    /// @notice Redeems FXB 1-to-1 for FRAX
    /// @dev Supports OZ 5.0 interfacing with named variable arguments
    /// @param to Recipient of redeemed FRAX
    /// @param value Amount to redeem
    function burn(address to, uint256 value) external {
        // Make sure the bond has matured
        if (!isRedeemable()) revert BondNotRedeemable();

        // Make sure you burning a nonzero amount
        if (value == 0) revert ZeroAmount();

        // Effects: Update redeem tracking
        totalFxbRedeemed += value;

        // Effects: Burn the FXB from the user
        _burn({ account: msg.sender, value: value });

        // Interactions: Give FRAX to the recipient
        FRAX.transfer(to, value);
    }

    // ==============================================================================
    // Errors
    // ==============================================================================

    /// @notice Thrown if the bond hasn't matured yet, or redeeming is paused
    error BondNotRedeemable();

    /// @notice Thrown if attempting to mint / burn zero tokens
    error ZeroAmount();
}

// ============================================================
// FILE: lib/dev-frax-bonds/src/contracts/FXBFactory.sol
// ============================================================

// SPDX-License-Identifier: ISC
pragma solidity ^0.8.23;

// ====================================================================
// |     ______                   _______                             |
// |    / _____________ __  __   / ____(_____  ____ _____  ________   |
// |   / /_  / ___/ __ `| |/_/  / /_  / / __ \/ __ `/ __ \/ ___/ _ \  |
// |  / __/ / /  / /_/ _>  <   / __/ / / / / / /_/ / / / / /__/  __/  |
// | /_/   /_/   \__,_/_/|_|  /_/   /_/_/ /_/\__,_/_/ /_/\___/\___/   |
// |                                                                  |
// ====================================================================
// ============================ FXBFactory ============================
// ====================================================================
// Factory contract for FXB tokens
// Frax Finance: https://github.com/FraxFinance

import { Strings } from "@openzeppelin/contracts/utils/Strings.sol";
import { Timelock2Step } from "frax-std/access-control/v2/Timelock2Step.sol";
import { BokkyPooBahsDateTimeLibrary as DateTimeLibrary } from "./utils/BokkyPooBahsDateTimeLibrary.sol";
import { FXB } from "./FXB.sol";

/// @title FXBFactory
/// @notice  Deploys FXB ERC20 contracts
/// @dev "FXB" and "bond" are interchangeable
/// @dev https://github.com/FraxFinance/frax-bonds
contract FXBFactory is Timelock2Step {
    using Strings for uint256;

    // =============================================================================================
    // Storage
    // =============================================================================================

    // Core
    /// @notice The Frax token contract
    address public immutable FRAX;

    /// @notice Array of bond addresses
    address[] public fxbs;

    /// @notice Whether a given address is a bond
    mapping(address _fxb => bool _isFxb) public isFxb;

    /// @notice Whether a given timestamp has a bond deployed
    mapping(uint256 _timestamp => bool _isFxb) public isTimestampFxb;

    // =============================================================================================
    // Constructor
    // =============================================================================================

    /// @notice Constructor
    /// @param _timelock The owner of this contract
    /// @param _frax The address of the FRAX token
    constructor(address _timelock, address _frax) Timelock2Step(_timelock) {
        FRAX = _frax;
    }

    //==============================================================================
    // Helper Functions
    //==============================================================================

    /// @notice This function returns the 3 letter name of a month, given its index
    /// @param _monthIndex The index of the month
    /// @return _monthName The name of the month
    function _monthNames(uint256 _monthIndex) internal pure returns (string memory _monthName) {
        if (_monthIndex == 1) return "JAN";
        if (_monthIndex == 2) return "FEB";
        if (_monthIndex == 3) return "MAR";
        if (_monthIndex == 4) return "APR";
        if (_monthIndex == 5) return "MAY";
        if (_monthIndex == 6) return "JUN";
        if (_monthIndex == 7) return "JUL";
        if (_monthIndex == 8) return "AUG";
        if (_monthIndex == 9) return "SEP";
        if (_monthIndex == 10) return "OCT";
        if (_monthIndex == 11) return "NOV";
        if (_monthIndex == 12) return "DEC";
        revert InvalidMonthNumber();
    }

    // =============================================================================================
    // View functions
    // =============================================================================================

    /// @notice Returns the total number of bonds addresses created
    /// @return _length uint256 Number of bonds addresses created
    function fxbsLength() public view returns (uint256 _length) {
        return fxbs.length;
    }

    /// @notice Generates the bond symbol in the format FXB_YYYYMMDD
    /// @param _maturityTimestamp Date the bond will mature
    /// @return _symbol The symbol of the bond
    function _generateSymbol(uint256 _maturityTimestamp) internal pure returns (string memory _symbol) {
        // Maturity date
        uint256 month = DateTimeLibrary.getMonth(_maturityTimestamp);
        uint256 day = DateTimeLibrary.getDay(_maturityTimestamp);
        uint256 year = DateTimeLibrary.getYear(_maturityTimestamp);

        // Generate the month part of the symbol
        string memory monthString;
        if (month > 9) {
            monthString = month.toString();
        } else {
            monthString = string.concat("0", month.toString());
        }

        // Generate the day part of the symbol
        string memory dayString;
        if (day > 9) {
            dayString = day.toString();
        } else {
            dayString = string.concat("0", day.toString());
        }

        // Assemble all the strings into one
        _symbol = string(abi.encodePacked("FXB", "_", year.toString(), monthString, dayString));
    }

    /// @notice Generates the bond name in the format FXB_ID_MMMDDYYYY
    /// @param _id The id of the bond
    /// @param _maturityTimestamp Date the bond will mature
    /// @return _name The name of the bond
    function _generateName(uint256 _id, uint256 _maturityTimestamp) internal pure returns (string memory _name) {
        // Maturity date
        uint256 month = DateTimeLibrary.getMonth(_maturityTimestamp);
        uint256 day = DateTimeLibrary.getDay(_maturityTimestamp);
        uint256 year = DateTimeLibrary.getYear(_maturityTimestamp);

        // Generate the day part of the name
        string memory dayString;
        if (day > 9) {
            dayString = day.toString();
        } else {
            dayString = string(abi.encodePacked("0", day.toString()));
        }

        // Assemble all the strings into one
        _name = string(
            abi.encodePacked("FXB", "_", _id.toString(), "_", _monthNames(month), dayString, year.toString())
        );
    }

    // =============================================================================================
    // Configurations / Privileged functions
    // =============================================================================================

    /// @notice Generates a new bond contract
    /// @param _maturityTimestamp Date the bond will mature and be redeemable
    /// @return fxb The address of the new bond
    /// @return id The id of the new bond
    function createFxbContract(uint256 _maturityTimestamp) external returns (address fxb, uint256 id) {
        _requireSenderIsTimelock();

        // Round the timestamp down to 00:00 UTC
        uint256 _coercedMaturityTimestamp = (_maturityTimestamp / 1 days) * 1 days;

        // Make sure the bond didn't expire
        if (_coercedMaturityTimestamp <= block.timestamp) {
            revert BondMaturityAlreadyExpired();
        }

        // Ensure bond maturity is unique
        if (isTimestampFxb[_coercedMaturityTimestamp]) {
            revert BondMaturityAlreadyExists();
        }

        // Set the bond id
        id = fxbsLength();

        // Get the new symbol and name
        string memory symbol = _generateSymbol({ _maturityTimestamp: _coercedMaturityTimestamp });
        string memory name = _generateName({ _id: id, _maturityTimestamp: _coercedMaturityTimestamp });

        // Create the new contract
        fxb = address(
            new FXB({ _symbol: symbol, _name: name, _maturityTimestamp: _coercedMaturityTimestamp, _frax: FRAX })
        );

        // Add the new bond address to the array and update the mapping
        fxbs.push(fxb);
        isFxb[fxb] = true;

        // Mark the maturity timestamp as having a bond associated with it
        isTimestampFxb[_coercedMaturityTimestamp] = true;

        emit BondCreated({
            fxb: fxb,
            id: id,
            symbol: symbol,
            name: name,
            maturityTimestamp: _coercedMaturityTimestamp
        });
    }

    // ==============================================================================
    // Events
    // ==============================================================================

    /// @notice Emitted when a new bond is created
    /// @param fxb Address of the bond
    /// @param id The ID of the bond
    /// @param symbol The bond's symbol
    /// @param name Name of the bond
    /// @param maturityTimestamp Date the bond will mature
    event BondCreated(address fxb, uint256 id, string symbol, string name, uint256 maturityTimestamp);

    // ==============================================================================
    // Errors
    // ==============================================================================

    /// @notice Thrown when an invalid month number is passed
    error InvalidMonthNumber();

    /// @notice Thrown when a bond with the same maturity already exists
    error BondMaturityAlreadyExists();

    /// @notice Thrown when attempting to create a bond with an expiration before the current time
    error BondMaturityAlreadyExpired();
}

// ============================================================
// FILE: lib/dev-frax-bonds/src/contracts/interfaces/IUniswapV2Callee.sol
// ============================================================

// SPDX-License-Identifier: ISC
pragma solidity ^0.8.23;

interface IUniswapV2Callee {
    function uniswapV2Call(address sender, uint256 amount0, uint256 amount1, bytes calldata data) external;
}

// ============================================================
// FILE: lib/dev-frax-bonds/src/contracts/SlippageAuction.sol
// ============================================================

// SPDX-License-Identifier: ISC
pragma solidity ^0.8.23;

// ====================================================================
// |     ______                   _______                             |
// |    / _____________ __  __   / ____(_____  ____ _____  ________   |
// |   / /_  / ___/ __ `| |/_/  / /_  / / __ \/ __ `/ __ \/ ___/ _ \  |
// |  / __/ / /  / /_/ _>  <   / __/ / / / / / /_/ / / / / /__/  __/  |
// | /_/   /_/   \__,_/_/|_|  /_/   /_/_/ /_/\__,_/_/ /_/\___/\___/   |
// |                                                                  |
// ====================================================================
// ========================= SlippageAuction ==========================
// ====================================================================
// Dutch-style Auction. Starts at a high price and gradually decreases until the entire lot
// of tokens is sold, or the time expires.
// Frax Finance: https://github.com/FraxFinance

import { ReentrancyGuard } from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import { IERC20, IERC20Metadata } from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { Timelock2Step } from "frax-std/access-control/v2/Timelock2Step.sol";
import { IUniswapV2Callee } from "./interfaces/IUniswapV2Callee.sol";

/// @title SlippageAuction
/// @notice Slippage auction to sell tokens over time. Created via factory.
/// @dev Both tokens must be 18 decimals.
/// @dev https://github.com/FraxFinance/frax-bonds
contract SlippageAuction is ReentrancyGuard, Timelock2Step {
    using SafeERC20 for IERC20;

    // ==============================================================================
    // Storage
    // ==============================================================================

    /// @notice The name of this auction
    string public name;

    /// @notice Slippage precision
    uint256 public constant PRECISION = 1e18;

    /// @notice Stored information about details
    Detail[] public details;

    /// @notice The token used for buying the tokenSell
    address public immutable TOKEN_BUY;

    /// @notice The token being auctioned off
    address public immutable TOKEN_SELL;

    /// @notice Alias for TOKEN_BUY
    /// @dev Maintains UniswapV2 interface
    address public immutable token0;

    /// @notice Alias for TOKEN_SELL
    /// @notice Maintains UniswapV2 interface
    address public immutable token1;

    // ==============================================================================
    // Structs
    // ==============================================================================

    /// @notice Detail information behind an auction
    /// @notice Auction information
    /// @param amountListed Amount of sellToken placed for auction
    /// @param amountLeft Amount of sellToken remaining to buy
    /// @param amountExcessBuy Amount of any additional TOKEN_BUY sent to contract during auction
    /// @param amountExcessSell Amount of any additional TOKEN_SELL sent to contract during auction
    /// @param tokenBuyReceived Amount of tokenBuy that came in from sales
    /// @param priceLast Price of the last sale, in tokenBuy amount per tokenSell (amount of tokenBuy to purchase 1e18 tokenSell)
    /// @param priceMin Minimum price of 1e18 tokenSell, in tokenBuy
    /// @param priceDecay Price decay, (wei per second), using PRECISION
    /// @param priceSlippage Slippage fraction. E.g (0.01 * PRECISION) = 1%
    /// @param lastBuyTime Time of the last sale
    /// @param expiry UNIX timestamp when the auction ends
    /// @param active If the auction is active
    struct Detail {
        uint128 amountListed;
        uint128 amountLeft;
        uint128 amountExcessBuy;
        uint128 amountExcessSell;
        uint128 tokenBuyReceived;
        uint128 priceLast;
        uint128 priceMin;
        uint64 priceDecay;
        uint64 priceSlippage;
        uint32 lastBuyTime;
        uint32 expiry;
        bool active;
    }

    // ==============================================================================
    // Constructor
    // ==============================================================================

    /// @param _timelock Address of the timelock/owner
    /// @param _tokenBuy Token used to purchase _tokenSell
    /// @param _tokenSell Token sold in the auction
    constructor(address _timelock, address _tokenBuy, address _tokenSell) Timelock2Step(_timelock) {
        name = string(abi.encodePacked("SlippageAuction: ", IERC20Metadata(_tokenSell).symbol()));
        TOKEN_BUY = _tokenBuy;
        TOKEN_SELL = _tokenSell;

        token0 = _tokenBuy;
        token1 = _tokenSell;
    }

    // ==============================================================================
    // Views
    // ==============================================================================

    /// @notice Returns the semantic version of this contract
    /// @return _major The major version
    /// @return _minor The minor version
    /// @return _patch The patch version
    function version() external pure returns (uint256 _major, uint256 _minor, uint256 _patch) {
        return (1, 0, 0);
    }

    /// @notice Calculates the pre-slippage price (with the user supplied auction _detail) from the time decay alone
    /// @param _detail The auction struct
    /// @return _price The price
    function getPreSlippagePrice(Detail memory _detail) public view returns (uint256 _price) {
        // Calculate Decay
        uint256 _decay = (_detail.priceDecay * (block.timestamp - _detail.lastBuyTime));

        // Calculate the sale price (in tokenBuy per tokenSell), factoring in the time decay
        if (_detail.priceLast < _decay) {
            return _price = _detail.priceMin;
        } else {
            _price = _detail.priceLast - _decay;
        }

        // Never go below the minimum price
        if (_price < _detail.priceMin) _price = _detail.priceMin;
    }

    /// @notice Calculates the pre-slippage price (with the current auction) from the time decay alone
    function getPreSlippagePrice() external view returns (uint256) {
        return getPreSlippagePrice(details[details.length - 1]);
    }

    /// @notice Calculates the amount of tokenSells out for a given tokenBuy amount
    /// @param amountIn Amount of tokenBuy in
    /// @param _revertOnOverAmountLeft Whether to revert if amountOut > amountLeft
    /// @return amountOut Amount of tokenSell out
    /// @return _slippagePerTokenSell The slippage component of the price change (in tokenBuy per tokenSell)
    /// @return _postPriceSlippage The post-slippage price from the time decay + slippage
    function getAmountOut(
        uint256 amountIn,
        bool _revertOnOverAmountLeft
    ) public view returns (uint256 amountOut, uint256 _slippagePerTokenSell, uint256 _postPriceSlippage) {
        // Get the auction number
        uint256 _auctionNumber = details.length - 1;

        // Get the auction info
        Detail memory _detail = details[_auctionNumber];

        // Revert if the auction is inactive or expired
        if (!_detail.active) revert AuctionNotActive();
        if (block.timestamp >= _detail.expiry) revert AuctionExpired();

        // Calculate the sale price (in tokenBuy per tokenSell), factoring in the time decay
        uint256 _preSlippagePrice = getPreSlippagePrice({ _detail: _detail });

        // Calculate the slippage component of the price (in tokenBuy per tokenSell)
        _slippagePerTokenSell = (_detail.priceSlippage * amountIn) / PRECISION;

        // Calculate the output amount of tokenSell
        amountOut = (amountIn * PRECISION) / (_preSlippagePrice + _slippagePerTokenSell);

        // Make sure you are not going over the amountLeft
        if (amountOut > _detail.amountLeft) {
            if (_revertOnOverAmountLeft) revert InsufficientTokenSellsAvailable();
            else amountOut = _detail.amountLeft;
        }

        // Set return value
        _postPriceSlippage = _preSlippagePrice + (2 * _slippagePerTokenSell); // Price impact is twice the slippage
    }

    /// @notice Calculates how much tokenBuy you would need to buy out the remaining tokenSell in the auction
    /// @return amountIn Amount of tokenBuy needed
    /// @return _slippagePerTokenSell The slippage component of the price change (in tokenBuy per tokenSell)
    /// @return _postPriceSlippage The post-slippage price from the time decay + slippage
    function getAmountInMax()
        external
        view
        returns (uint256 amountIn, uint256 _slippagePerTokenSell, uint256 _postPriceSlippage)
    {
        // Get the auction number
        uint256 _auctionNumber = details.length - 1;

        // Get the auction info
        Detail memory detail = details[_auctionNumber];

        // Call the internal function with amountLeft
        return _getAmountIn({ _detail: detail, amountOut: detail.amountLeft });
    }

    /// @notice Calculates how much tokenBuy you would need in order to obtain a given number of tokenSell
    /// @param amountOut The desired amount of tokenSell
    /// @return amountIn Amount of tokenBuy needed
    /// @return _slippagePerTokenSell The slippage component of the price change (in tokenBuy per tokenSell)
    /// @return _postPriceSlippage The post-slippage price from the time decay + slippage
    function getAmountIn(
        uint256 amountOut
    ) public view returns (uint256 amountIn, uint256 _slippagePerTokenSell, uint256 _postPriceSlippage) {
        // Get the auction number
        uint256 _auctionNumber = details.length - 1;

        // Get the auction info
        Detail memory detail = details[_auctionNumber];

        // Call the internal function with amountOut, set return values
        (amountIn, _slippagePerTokenSell, _postPriceSlippage) = _getAmountIn({ _detail: detail, amountOut: amountOut });
    }

    /// @notice Calculate how much tokenBuy you would need to obtain a given number of tokenSell
    /// @param _detail The auction struct
    /// @return amountIn Amount of tokenBuy needed
    /// @return _slippagePerTokenSell The slippage component of the price change (in tokenBuy per tokenSell)
    /// @return _postPriceSlippage The post-slippage price from the time decay + slippage
    function _getAmountIn(
        Detail memory _detail,
        uint256 amountOut
    ) internal view returns (uint256 amountIn, uint256 _slippagePerTokenSell, uint256 _postPriceSlippage) {
        // Do checks
        if (!_detail.active) revert AuctionNotActive();
        if (block.timestamp >= _detail.expiry) revert AuctionExpired();
        if (amountOut > _detail.amountLeft) revert InsufficientTokenSellsAvailable();

        // Calculate the sale price (in tokenBuy per tokenSell), factoring in the time decay
        uint256 _preSlippagePrice = getPreSlippagePrice({ _detail: _detail });

        // Math in a more readable format:
        // uint256 _numerator = (amountOut * _preSlippagePrice) / PRECISION;
        // uint256 _denominator = (PRECISION -
        //     ((amountOut * uint256(_detail.priceSlippage)) / PRECISION));
        // amountIn = (_numerator * PRECISION) / _denominator;

        // Set return params amountIn
        amountIn =
            (amountOut * _preSlippagePrice) /
            (PRECISION - (amountOut * uint256(_detail.priceSlippage)) / PRECISION);

        // Set return params, calculate the slippage component of the price (in tokenBuy per tokenSell)
        _slippagePerTokenSell = (_detail.priceSlippage * amountIn) / PRECISION;
        _postPriceSlippage = _preSlippagePrice + (2 * _slippagePerTokenSell); // Price impact is twice the slippage
    }

    /// @notice Calculates how much tokenBuy you would need in order to obtain a given number of tokenSell
    /// @dev Maintains compatibility with some router implementations
    /// @param amountOut The amount out of sell tokens
    /// @param tokenOut The sell token address
    /// @return amountIn The amount of tokenBuy needed
    function getAmountIn(uint256 amountOut, address tokenOut) public view returns (uint256 amountIn) {
        if (tokenOut != TOKEN_SELL) revert InvalidTokenOut();
        (amountIn, , ) = getAmountIn({ amountOut: amountOut });
    }

    /// @notice Calculates the amount of tokenSell out for a given tokenBuy amount
    /// @dev Used to maintain compatibility
    /// @param amountIn Amount of tokenBuy in
    /// @param tokenIn The token being swapped in
    /// @return amountOut Amount of tokenSells out
    function getAmountOut(uint256 amountIn, address tokenIn) public view returns (uint256 amountOut) {
        if (tokenIn != TOKEN_BUY) revert InvalidTokenIn();
        (amountOut, , ) = getAmountOut({ amountIn: amountIn, _revertOnOverAmountLeft: false });
    }

    /// @dev Uni v2 support without revert
    function skim(address) external pure {
        return;
    }

    /// @dev Uni v2 support without revert
    function sync() external pure {
        return;
    }

    function getAmountOut(uint256, uint256, uint256) external pure returns (uint256) {
        revert NotImplemented();
    }

    function getAmountIn(uint256, uint256, uint256) external pure returns (uint256) {
        revert NotImplemented();
    }

    function getReserves() external pure returns (uint112, uint112, uint32) {
        revert NotImplemented();
    }

    function price0CumulativeLast() external pure returns (uint256) {
        revert NotImplemented();
    }

    function price1CumulativeLast() external pure returns (uint256) {
        revert NotImplemented();
    }

    function kLast() external pure returns (uint256) {
        revert NotImplemented();
    }

    function factory() external pure returns (address) {
        revert NotImplemented();
    }

    function MINIMUM_LIQUIDITY() external pure returns (uint256) {
        revert NotImplemented();
    }

    function initialize(address, address) external pure {
        revert NotImplemented();
    }

    /// @notice Gets a struct instead of a tuple for details()
    /// @param _auctionNumber Detail ID
    /// @return The struct of the auction
    function getDetailStruct(uint256 _auctionNumber) external view returns (Detail memory) {
        return details[_auctionNumber];
    }

    /// @notice Returns the length of the details array
    /// @return _length The length of the details array
    function detailsLength() external view returns (uint256 _length) {
        _length = details.length;
    }

    /// @notice Returns the latest auction
    /// @dev Returns an empty struct if there are no auctions
    /// @return _latestAuction The latest auction struct
    function getLatestAuction() external view returns (Detail memory _latestAuction) {
        uint256 _length = details.length;
        if (_length == 0) return _latestAuction;
        _latestAuction = details[details.length - 1];
    }

    // ==============================================================================
    // Owner-only Functions
    // ==============================================================================

    /// @notice Parameters for starting an auction
    /// @dev Sender must have an allowance on tokenSell
    /// @param amountListed Amount of tokenSell being sold
    /// @param priceStart Starting price of 1e18 tokenSell, in tokenBuy
    /// @param priceMin Minimum price of 1e18 tokenSell, in tokenBuy
    /// @param priceDecay Price decay, (wei per second), using PRECISION
    /// @param priceSlippage Slippage fraction. E.g (0.01 * PRECISION) = 1%
    /// @param expiry UNIX timestamp when the auction ends
    struct StartAuctionParams {
        uint128 amountListed;
        uint128 priceStart;
        uint128 priceMin;
        uint64 priceDecay;
        uint64 priceSlippage;
        uint32 expiry;
    }

    /// @notice Starts a new auction
    /// @dev Requires an ERC20 allowance on the tokenSell prior to calling
    /// @param _params StartAuctionParams
    function startAuction(StartAuctionParams calldata _params) external nonReentrant returns (uint256 _auctionNumber) {
        _requireSenderIsTimelock();

        // Check expiry is not in the past
        if (_params.expiry < block.timestamp) revert Expired();

        // Ensure that enough amountListed are for sale to prevent round-down errors
        // see E2E test for 1e6 requirement.  At 1e8 requirement, there should be enough trades
        // to constitute an auction.
        if (_params.amountListed < 1e8) revert AmountListedTooLow();

        // Ensure that priceStart > priceMin
        if (_params.priceStart < _params.priceMin) revert PriceStartLessThanPriceMin();

        // Ensure slippage does not exceed max of 50%
        if (_params.priceSlippage >= PRECISION / 2) revert PriceSlippageTooHigh();

        // Prevent edge-case revert of amountOut within getAmountOut
        if (_params.priceMin == 0 && _params.priceSlippage == 0) revert PriceMinAndSlippageBothZero();

        // Pre-compute the auction number
        _auctionNumber = details.length;

        // Ensure that the previous auction, if any, has been stopped
        if (_auctionNumber > 0) {
            Detail memory _lastAuction = details[_auctionNumber - 1];
            if (_lastAuction.active) revert LastAuctionStillActive();
        }

        // Create the auction
        details.push(
            Detail({
                amountListed: _params.amountListed,
                amountLeft: _params.amountListed,
                amountExcessBuy: 0,
                amountExcessSell: 0,
                tokenBuyReceived: 0,
                priceLast: _params.priceStart,
                priceMin: _params.priceMin,
                priceDecay: _params.priceDecay,
                priceSlippage: _params.priceSlippage,
                lastBuyTime: uint32(block.timestamp),
                expiry: _params.expiry,
                active: true
            })
        );

        emit AuctionStarted({
            auctionNumber: _auctionNumber,
            amountListed: _params.amountListed,
            priceStart: _params.priceStart,
            priceMin: _params.priceMin,
            priceDecay: _params.priceDecay,
            priceSlippage: _params.priceSlippage,
            expiry: _params.expiry
        });

        // Clear out any tokens held by the auction so that bookkeeping is accurate
        _withdrawAnyAvailableTokens({ _excess: true });

        // Take the tokenSells from the sender
        IERC20(TOKEN_SELL).safeTransferFrom(msg.sender, address(this), _params.amountListed);
    }

    /// @notice Ends the auction
    /// @dev Only callable by the auction owner
    /// @return tokenBuyReceived Amount of tokenBuy obtained from the auction
    /// @return tokenSellRemaining Amount of unsold tokenSell left over
    function stopAuction() public nonReentrant returns (uint256 tokenBuyReceived, uint256 tokenSellRemaining) {
        _requireSenderIsTimelock();

        // Get the auction info and perform checks
        uint256 _auctionNumber = details.length - 1;
        Detail storage detail = details[_auctionNumber];
        if (!detail.active) revert AuctionNotActive();

        // Skim excess token to sender if additional has been received to keep bookkeeping accurate
        _withdrawIfTokenBalance({ _token: TOKEN_BUY, _priorBalance: detail.tokenBuyReceived, _excess: true });
        _withdrawIfTokenBalance({ _token: TOKEN_SELL, _priorBalance: detail.amountLeft, _excess: true });

        // Set Return params
        tokenBuyReceived = IERC20(TOKEN_BUY).balanceOf(address(this));
        tokenSellRemaining = IERC20(TOKEN_SELL).balanceOf(address(this));

        // Effects: Update state with final balances;
        detail.active = false;
        detail.tokenBuyReceived = uint128(tokenBuyReceived);
        detail.amountLeft = uint128(tokenSellRemaining);

        // Return any TOKEN_BUY and TOKEN_SELL from the auction to the timelock
        _withdrawAnyAvailableTokens({ _excess: false });

        emit AuctionStopped({
            auctionNumber: _auctionNumber,
            tokenBuyReceived: tokenBuyReceived,
            tokenSellRemaining: tokenSellRemaining
        });
    }

    // ==============================================================================
    // Public Functions
    // ==============================================================================

    /// @notice Swaps tokenBuys for tokenSells
    /// @dev This low-level function should be called from a contract which performs important safety checks
    /// @dev Token0 is always the TOKEN_BUY, token1 is always the TOKEN_SELL
    /// @dev Maintains uniV2 interface
    /// @param amount0Out The amount of tokenBuys to receive
    /// @param amount1Out The amount of tokenSells to receive
    /// @param to The recipient of the output tokens
    /// @param data Callback data
    function swap(uint256 amount0Out, uint256 amount1Out, address to, bytes memory data) public nonReentrant {
        if (amount0Out != 0) revert ExcessiveTokenBuyOut({ minOut: 0, actualOut: amount0Out });
        if (amount1Out == 0) revert InsufficientOutputAmount({ minOut: 1, actualOut: 0 });

        // Get the auction info (similar to get reserves in univ2)
        uint256 _auctionNumber = details.length - 1;
        Detail memory detail = details[_auctionNumber];

        // Transfer tokens
        IERC20(TOKEN_SELL).safeTransfer(to, amount1Out);

        // Callback if necessary for flash swap
        if (data.length > 0) {
            IUniswapV2Callee(to).uniswapV2Call({
                sender: msg.sender,
                amount0: amount0Out,
                amount1: amount1Out,
                data: data
            });
        }

        // Calculate the amount of tokenBuys in
        uint256 _tokenBuyBalance = IERC20(TOKEN_BUY).balanceOf(address(this));
        uint256 _tokenBuyIn = _tokenBuyBalance - detail.tokenBuyReceived;

        // Adheres to uniswap v2 interface, called here to prevent stack-too-deep error
        emit Swap({
            sender: msg.sender,
            amount0In: _tokenBuyIn,
            amount1In: 0,
            amount0Out: 0,
            amount1Out: amount1Out,
            to: to
        });

        // Call the internal function with amountOut
        (uint256 _minAmountIn, uint256 _slippagePerTokenSell, uint256 _postPriceSlippage) = _getAmountIn({
            _detail: detail,
            amountOut: amount1Out
        });

        // Check invariants
        if (_tokenBuyIn < _minAmountIn) revert InsufficientInputAmount({ minIn: _minAmountIn, actualIn: _tokenBuyIn });
        if (_minAmountIn == 0) revert InputAmountZero();

        // Mutate _auction, which has the previous state
        detail.amountLeft -= safeUint128(amount1Out);
        detail.tokenBuyReceived = safeUint128(_tokenBuyBalance);
        detail.priceLast = safeUint128(_postPriceSlippage);
        detail.lastBuyTime = uint32(block.timestamp);

        // Write back to state, similar to _update in univ2
        details[_auctionNumber] = detail;

        // Emit Buy event
        emit Buy({
            auctionNumber: _auctionNumber,
            tokenBuy: TOKEN_BUY,
            tokenSell: TOKEN_SELL,
            amountIn: safeUint128(_tokenBuyIn),
            amountOut: safeUint128(amount1Out),
            priceLast: detail.priceLast,
            slippagePerTokenSell: safeUint128(_slippagePerTokenSell)
        });
    }

    /// @notice Swaps an exact amount of input tokens for as many output tokens as possible
    /// @dev Must have an allowance on the TOKEN_BUY prior to invocation
    /// @dev Maintains uniV2 interface
    /// @param amountIn The amount of buy tokens to send.
    /// @param amountOutMin The minimum amount of sell tokens that must be received for the transaction not to revert
    /// @param to Recipient of the output tokens
    /// @param deadline Unix timestamp after which the transaction will revert
    /// @return _amounts The input token amount and output token amount
    function swapExactTokensForTokens(
        uint256 amountIn,
        uint256 amountOutMin,
        address[] memory path,
        address to,
        uint256 deadline
    ) external returns (uint256[] memory _amounts) {
        path; // compile warnings

        // Ensure deadline has not passed
        if (block.timestamp > deadline) revert Expired();

        // Calculate the amount of tokenSells out & check invariant
        (uint256 amountOut, , ) = getAmountOut({ amountIn: amountIn, _revertOnOverAmountLeft: true });
        if (amountOut < amountOutMin) {
            revert InsufficientOutputAmount({ minOut: amountOutMin, actualOut: amountOut });
        }
        // Interactions: Transfer tokenBuys to the contract
        IERC20(TOKEN_BUY).safeTransferFrom(msg.sender, address(this), amountIn);

        // Call the swap function
        swap({ amount0Out: 0, amount1Out: amountOut, to: to, data: new bytes(0) });

        // Set return values
        _amounts = new uint256[](2);
        _amounts[0] = amountIn;
        _amounts[1] = amountOut;
    }

    /// @notice Receives an exact amount of output tokens for as few input tokens as possible
    /// @dev Must have an allowance on the TOKEN_BUY prior to invocation
    /// @dev Maintains uniV2 interface
    /// @param amountOut The amount of sell tokens to receive
    /// @param amountInMax The maximum amount of buy tokens that can be required before the transaction reverts
    /// @param to Recipient of the output tokens
    /// @param deadline Unix timestamp after which the transaction will revert
    /// @return _amounts The input token amount and output token amount
    function swapTokensForExactTokens(
        uint256 amountOut,
        uint256 amountInMax,
        address[] calldata path,
        address to,
        uint256 deadline
    ) external returns (uint256[] memory _amounts) {
        path; // compile warning

        // Ensure deadline has not passed
        if (block.timestamp > deadline) revert Expired();

        // Calculate the amount of tokenBuys in & check invariant
        (uint256 amountIn, , ) = getAmountIn({ amountOut: amountOut });
        if (amountIn > amountInMax) revert ExcessiveInputAmount({ minIn: amountInMax, actualIn: amountIn });

        // Interactions: Transfer tokenBuys to the contract
        IERC20(TOKEN_BUY).safeTransferFrom(msg.sender, address(this), amountIn);

        // Call the swap function
        swap({ amount0Out: 0, amount1Out: amountOut, to: to, data: new bytes(0) });

        // Set return variable
        _amounts = new uint256[](2);
        _amounts[0] = amountIn;
        _amounts[1] = amountOut;
    }

    // ==============================================================================
    // Helpers
    // ==============================================================================

    /// @notice Withdraw available TOKEN_BUY and TOKEN_SELL on startAuction() and stopAuction()
    /// @param _excess Whether to bookkeep any excess tokens received outside of auction
    function _withdrawAnyAvailableTokens(bool _excess) private {
        _withdrawIfTokenBalance({ _token: TOKEN_BUY, _priorBalance: 0, _excess: _excess });
        _withdrawIfTokenBalance({ _token: TOKEN_SELL, _priorBalance: 0, _excess: _excess });
    }

    /// @notice Withdraw available TOKEN_BUY and TOKEN_SELL on startAuction() and stopAuction()
    /// @param _token Address of the token you want to withdraw
    /// @param _priorBalance Prior balance of the _token
    /// @param _excess Whether to bookkeep any excess tokens received outside of auction
    function _withdrawIfTokenBalance(address _token, uint256 _priorBalance, bool _excess) private {
        // Fetch the current balance of _token
        uint256 balance = IERC20(_token).balanceOf(address(this));

        // If the current balance is higher than the prior balance
        if (balance > _priorBalance) {
            uint256 amount = balance - _priorBalance;

            // Bookkeep any excess token received
            if (_excess) {
                Detail storage detail = details[details.length - 1];
                if (_token == TOKEN_BUY) {
                    detail.amountExcessBuy += safeUint128(amount);
                } else {
                    // token == TOKEN_SELL
                    detail.amountExcessSell += safeUint128(amount);
                }
            }

            IERC20(_token).safeTransfer(msg.sender, amount);
        }
    }

    /// @dev Overflow protection
    function safeUint128(uint256 number) internal pure returns (uint128 casted) {
        if (number > type(uint128).max) revert Overflow();
        casted = uint128(number);
    }

    // ==============================================================================
    // Errors
    // ==============================================================================

    /// @notice Emitted when a user attempts to start an auction selling too few tokens
    error AmountListedTooLow();

    /// @notice Emitted when a user attempts to end an auction that has been stopped
    error AuctionNotActive();

    /// @notice Emitted when a user attempts to interact with an auction that has expired
    error AuctionExpired();

    /// @notice Emitted when a user attempts to start a new auction before the previous one has been stopped (via ```stopAuction()```)
    error LastAuctionStillActive();

    /// @notice Emitted when a user attempts to swap a given amount of buy tokens that would result in an insufficient amount of sell tokens
    /// @param minOut Minimum out that the user expects
    /// @param actualOut Actual amount out that would occur
    error InsufficientOutputAmount(uint256 minOut, uint256 actualOut);

    /// @notice Emitted when a user attempts to swap an insufficient amount of buy tokens
    /// @param minIn Minimum in that the contract requires
    /// @param actualIn Actual amount in that has been deposited
    error InsufficientInputAmount(uint256 minIn, uint256 actualIn);

    /// @notice Emitted when a user attempts to swap an excessive amount of buy tokens for aa given amount of sell tokens
    /// @param minIn    Minimum in that the user expects
    /// @param actualIn Actual amount in that would occur
    error ExcessiveInputAmount(uint256 minIn, uint256 actualIn);

    /// @notice Emitted when a user attempts to buy more sell tokens than are left in the auction
    error InsufficientTokenSellsAvailable();

    /// @notice Emitted when attempting to swap where the calculated amountIn is 0
    error InputAmountZero();

    /// @notice Emitted when a user attempts to buy the tokenBuy using the swap() function
    error ExcessiveTokenBuyOut(uint256 minOut, uint256 actualOut);

    /// @notice Emitted when a user attempts to make a swap after the transaction deadline has passed
    error Expired();

    /// @notice Emitted when a user attempts to use an invalid buy token
    error InvalidTokenIn();

    /// @notice Emitted when a user attempts to use an invalid sell token
    error InvalidTokenOut();

    /// @notice Emitted when calling `startAuction()` when `StartAuctionParams.priceMin == 0 && StartAuctionParams.priceSlippage == 0`
    error PriceMinAndSlippageBothZero();

    /// @notice Emitted when attempting to call a uni-v2 pair function that is not supported by this contract
    error NotImplemented();

    /// @notice Emitted when downcasting a uint on type overflow
    error Overflow();

    /// @notice Emitted when a user attempts to start an auction with `_params.priceStart < _params.priceMin`
    error PriceStartLessThanPriceMin();

    /// @notice Emitted when attempting to call `startAuction()` where `priceSlippage >= PRECISION`
    error PriceSlippageTooHigh();

    // ==============================================================================
    // Events
    // ==============================================================================

    /// @dev Emitted when an auction is stopped
    /// @param auctionNumber The ID of the auction
    /// @param tokenBuyReceived Amount of tokenBuy obtained from the auction
    /// @param tokenSellRemaining Amount of unsold tokenSells left over
    event AuctionStopped(uint256 auctionNumber, uint256 tokenBuyReceived, uint256 tokenSellRemaining);

    /// @dev Emitted when a swap occurs and has more information than the ```Swap``` event
    /// @param auctionNumber The ID of the auction, and index in the details array
    /// @param tokenBuy The token used to buy the tokenSell being auctioned off
    /// @param tokenSell The token being auctioned off
    /// @param amountIn Amount of tokenBuy in
    /// @param amountOut Amount of tokenSell out
    /// @param priceLast The execution price of the buy
    /// @param slippagePerTokenSell How many tokenBuys (per tokenSell) were added as slippage
    event Buy(
        uint256 auctionNumber,
        address tokenBuy,
        address tokenSell,
        uint128 amountIn,
        uint128 amountOut,
        uint128 priceLast,
        uint128 slippagePerTokenSell
    );

    /// @notice Emitted when a swap occurs
    /// @param sender The address of the sender
    /// @param amount0In The amount of TOKEN_BUY in
    /// @param amount1In The amount of TOKEN_SELL in
    /// @param amount0Out The amount of TOKEN_BUY out
    /// @param amount1Out The amount of TOKEN_SELL out
    /// @param to The address of the recipient
    event Swap(
        address indexed sender,
        uint256 amount0In,
        uint256 amount1In,
        uint256 amount0Out,
        uint256 amount1Out,
        address indexed to
    );

    /// @dev Emitted when an auction is started
    /// @param auctionNumber The ID of the auction
    /// @param amountListed Amount of tokenSell being sold
    /// @param priceStart Starting price of the tokenSell, in tokenBuy
    /// @param priceMin Minimum price of the tokenSell, in tokenBuy
    /// @param priceDecay Price decay, per day, using PRECISION
    /// @param priceSlippage Slippage fraction. E.g (0.01 * PRECISION) = 1%
    /// @param expiry Expiration time of the auction
    event AuctionStarted(
        uint256 auctionNumber,
        uint128 amountListed,
        uint128 priceStart,
        uint128 priceMin,
        uint128 priceDecay,
        uint128 priceSlippage,
        uint32 expiry
    );
}

// ============================================================
// FILE: lib/dev-frax-bonds/src/contracts/SlippageAuctionFactory.sol
// ============================================================

// SPDX-License-Identifier: ISC
pragma solidity ^0.8.23;

// ====================================================================
// |     ______                   _______                             |
// |    / _____________ __  __   / ____(_____  ____ _____  ________   |
// |   / /_  / ___/ __ `| |/_/  / /_  / / __ \/ __ `/ __ \/ ___/ _ \  |
// |  / __/ / /  / /_/ _>  <   / __/ / / / / / /_/ / / / / /__/  __/  |
// | /_/   /_/   \__,_/_/|_|  /_/   /_/_/ /_/\__,_/_/ /_/\___/\___/   |
// |                                                                  |
// ====================================================================
// ====================== SlippageAuctionFactory ======================
// ====================================================================
// Factory contract for SlippageAuctions
// Frax Finance: https://github.com/FraxFinance

import { IERC20Metadata } from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import { SlippageAuction } from "./SlippageAuction.sol";

/// @title SlippageAuctionFactory
/// @notice Permission-less factory to create SlippageAuction.sol contracts.
/// @dev https://github.com/FraxFinance/frax-bonds
contract SlippageAuctionFactory {
    /// @notice The auctions addresses created by this factory
    address[] public auctions;

    /// @notice Mapping of auction addresses to whether or not the auction has been created
    mapping(address auction => bool exists) public isAuction;

    /// @notice Creates a new auction contract
    /// @dev Tokens must be 18 decimals
    /// @param _timelock Timelock role for auction
    /// @param _tokenBuy Token used to purchase `_tokenSell`
    /// @param _tokenSell Token sold in the auction
    /// @return auction The address of the new SlippageAuction that was created
    function createAuctionContract(
        address _timelock,
        address _tokenBuy,
        address _tokenSell
    ) external returns (address auction) {
        // Reject if both tokens are not 18 decimals
        if (IERC20Metadata(_tokenBuy).decimals() != 18) {
            revert TokenBuyMustBe18Decimals();
        }
        if (IERC20Metadata(_tokenSell).decimals() != 18) {
            revert TokenSellMustBe18Decimals();
        }

        // Deploy the auction
        auction = address(new SlippageAuction({ _timelock: _timelock, _tokenBuy: _tokenBuy, _tokenSell: _tokenSell }));

        // Add auction address to mapping
        isAuction[auction] = true;

        // Add to auctions array
        auctions.push(auction);

        emit AuctionCreated({ auction: auction, tokenBuy: _tokenBuy, tokenSell: _tokenSell });
    }

    /// @notice Returns a list of all auction addresses deployed
    /// @return memory address[] The list of auction addresses
    function getAuctions() external view returns (address[] memory) {
        return auctions;
    }

    /// @notice Get an auction address by index to save on-chain gas usage from returning the whole auctions array
    /// @dev Reverts if attempting to return an index greater than the auctions array length
    /// @param _index Index of auction address to request from the auctions array
    /// @return auction Address of the specified auction
    function getAuction(uint256 _index) external view returns (address auction) {
        // Revert if non-existent
        if (_index > auctions.length) revert AuctionDoesNotExist();

        // Fetch the auction address by its index
        auction = auctions[_index];
    }

    /// @notice Returns the number of auctions deployed
    /// @return uint256 length of the auctions array
    function auctionsLength() external view returns (uint256) {
        return auctions.length;
    }

    /// @notice Emitted when a new auction is created
    /// @param auction The address of the new auction contract
    /// @param tokenBuy Token to purchase `tokenSell`
    /// @param tokenSell Token sold in the auction
    event AuctionCreated(address indexed auction, address indexed tokenBuy, address indexed tokenSell);

    /// @notice Thrown when an auction with the same sender and tokens has already been created
    error AuctionAlreadyExists();

    /// @notice Thrown when attempting to call `getAuction()` with an index greater than auctions.length
    error AuctionDoesNotExist();

    /// @notice Thrown when the sell token is not 18 decimals
    error TokenSellMustBe18Decimals();

    /// @notice Thrown when the buy token is not 18 decimals
    error TokenBuyMustBe18Decimals();
}

// ============================================================
// FILE: lib/dev-frax-bonds/src/contracts/utils/BokkyPooBahsDateTimeLibrary.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.9.0;

// ----------------------------------------------------------------------------
// BokkyPooBah's DateTime Library v1.01
//
// A gas-efficient Solidity date and time library
//
// https://github.com/bokkypoobah/BokkyPooBahsDateTimeLibrary
//
// Tested date range 1970/01/01 to 2345/12/31
//
// Conventions:
// Unit      | Range         | Notes
// :-------- |:-------------:|:-----
// timestamp | >= 0          | Unix timestamp, number of seconds since 1970/01/01 00:00:00 UTC
// year      | 1970 ... 2345 |
// month     | 1 ... 12      |
// day       | 1 ... 31      |
// hour      | 0 ... 23      |
// minute    | 0 ... 59      |
// second    | 0 ... 59      |
// dayOfWeek | 1 ... 7       | 1 = Monday, ..., 7 = Sunday
//
//
// Enjoy. (c) BokkyPooBah / Bok Consulting Pty Ltd 2018-2019. The MIT Licence.
// ----------------------------------------------------------------------------

library BokkyPooBahsDateTimeLibrary {
    uint256 constant SECONDS_PER_DAY = 24 * 60 * 60;
    uint256 constant SECONDS_PER_HOUR = 60 * 60;
    uint256 constant SECONDS_PER_MINUTE = 60;
    int256 constant OFFSET19700101 = 2_440_588;

    uint256 constant DOW_MON = 1;
    uint256 constant DOW_TUE = 2;
    uint256 constant DOW_WED = 3;
    uint256 constant DOW_THU = 4;
    uint256 constant DOW_FRI = 5;
    uint256 constant DOW_SAT = 6;
    uint256 constant DOW_SUN = 7;

    // ------------------------------------------------------------------------
    // Calculate the number of days from 1970/01/01 to year/month/day using
    // the date conversion algorithm from
    //   http://aa.usno.navy.mil/faq/docs/JD_Formula.php
    // and subtracting the offset 2440588 so that 1970/01/01 is day 0
    //
    // days = day
    //      - 32075
    //      + 1461 * (year + 4800 + (month - 14) / 12) / 4
    //      + 367 * (month - 2 - (month - 14) / 12 * 12) / 12
    //      - 3 * ((year + 4900 + (month - 14) / 12) / 100) / 4
    //      - offset
    // ------------------------------------------------------------------------
    function _daysFromDate(uint256 year, uint256 month, uint256 day) internal pure returns (uint256 _days) {
        require(year >= 1970);
        int256 _year = int256(year);
        int256 _month = int256(month);
        int256 _day = int256(day);

        int256 __days = _day -
            32_075 +
            (1461 * (_year + 4800 + (_month - 14) / 12)) /
            4 +
            (367 * (_month - 2 - ((_month - 14) / 12) * 12)) /
            12 -
            (3 * ((_year + 4900 + (_month - 14) / 12) / 100)) /
            4 -
            OFFSET19700101;

        _days = uint256(__days);
    }

    // ------------------------------------------------------------------------
    // Calculate year/month/day from the number of days since 1970/01/01 using
    // the date conversion algorithm from
    //   http://aa.usno.navy.mil/faq/docs/JD_Formula.php
    // and adding the offset 2440588 so that 1970/01/01 is day 0
    //
    // int L = days + 68569 + offset
    // int N = 4 * L / 146097
    // L = L - (146097 * N + 3) / 4
    // year = 4000 * (L + 1) / 1461001
    // L = L - 1461 * year / 4 + 31
    // month = 80 * L / 2447
    // dd = L - 2447 * month / 80
    // L = month / 11
    // month = month + 2 - 12 * L
    // year = 100 * (N - 49) + year + L
    // ------------------------------------------------------------------------
    function _daysToDate(uint256 _days) internal pure returns (uint256 year, uint256 month, uint256 day) {
        int256 __days = int256(_days);

        int256 L = __days + 68_569 + OFFSET19700101;
        int256 N = (4 * L) / 146_097;
        L = L - (146_097 * N + 3) / 4;
        int256 _year = (4000 * (L + 1)) / 1_461_001;
        L = L - (1461 * _year) / 4 + 31;
        int256 _month = (80 * L) / 2447;
        int256 _day = L - (2447 * _month) / 80;
        L = _month / 11;
        _month = _month + 2 - 12 * L;
        _year = 100 * (N - 49) + _year + L;

        year = uint256(_year);
        month = uint256(_month);
        day = uint256(_day);
    }

    function timestampFromDate(uint256 year, uint256 month, uint256 day) internal pure returns (uint256 timestamp) {
        timestamp = _daysFromDate(year, month, day) * SECONDS_PER_DAY;
    }

    function timestampFromDateTime(
        uint256 year,
        uint256 month,
        uint256 day,
        uint256 hour,
        uint256 minute,
        uint256 second
    ) internal pure returns (uint256 timestamp) {
        timestamp =
            _daysFromDate(year, month, day) *
            SECONDS_PER_DAY +
            hour *
            SECONDS_PER_HOUR +
            minute *
            SECONDS_PER_MINUTE +
            second;
    }

    function timestampToDate(uint256 timestamp) internal pure returns (uint256 year, uint256 month, uint256 day) {
        (year, month, day) = _daysToDate(timestamp / SECONDS_PER_DAY);
    }

    function timestampToDateTime(
        uint256 timestamp
    ) internal pure returns (uint256 year, uint256 month, uint256 day, uint256 hour, uint256 minute, uint256 second) {
        (year, month, day) = _daysToDate(timestamp / SECONDS_PER_DAY);
        uint256 secs = timestamp % SECONDS_PER_DAY;
        hour = secs / SECONDS_PER_HOUR;
        secs = secs % SECONDS_PER_HOUR;
        minute = secs / SECONDS_PER_MINUTE;
        second = secs % SECONDS_PER_MINUTE;
    }

    function isValidDate(uint256 year, uint256 month, uint256 day) internal pure returns (bool valid) {
        if (year >= 1970 && month > 0 && month <= 12) {
            uint256 daysInMonth = _getDaysInMonth(year, month);
            if (day > 0 && day <= daysInMonth) {
                valid = true;
            }
        }
    }

    function isValidDateTime(
        uint256 year,
        uint256 month,
        uint256 day,
        uint256 hour,
        uint256 minute,
        uint256 second
    ) internal pure returns (bool valid) {
        if (isValidDate(year, month, day)) {
            if (hour < 24 && minute < 60 && second < 60) {
                valid = true;
            }
        }
    }

    function isLeapYear(uint256 timestamp) internal pure returns (bool leapYear) {
        (uint256 year, , ) = _daysToDate(timestamp / SECONDS_PER_DAY);
        leapYear = _isLeapYear(year);
    }

    function _isLeapYear(uint256 year) internal pure returns (bool leapYear) {
        leapYear = ((year % 4 == 0) && (year % 100 != 0)) || (year % 400 == 0);
    }

    function isWeekDay(uint256 timestamp) internal pure returns (bool weekDay) {
        weekDay = getDayOfWeek(timestamp) <= DOW_FRI;
    }

    function isWeekEnd(uint256 timestamp) internal pure returns (bool weekEnd) {
        weekEnd = getDayOfWeek(timestamp) >= DOW_SAT;
    }

    function getDaysInMonth(uint256 timestamp) internal pure returns (uint256 daysInMonth) {
        (uint256 year, uint256 month, ) = _daysToDate(timestamp / SECONDS_PER_DAY);
        daysInMonth = _getDaysInMonth(year, month);
    }

    function _getDaysInMonth(uint256 year, uint256 month) internal pure returns (uint256 daysInMonth) {
        if (month == 1 || month == 3 || month == 5 || month == 7 || month == 8 || month == 10 || month == 12) {
            daysInMonth = 31;
        } else if (month != 2) {
            daysInMonth = 30;
        } else {
            daysInMonth = _isLeapYear(year) ? 29 : 28;
        }
    }

    // 1 = Monday, 7 = Sunday

    function getDayOfWeek(uint256 timestamp) internal pure returns (uint256 dayOfWeek) {
        uint256 _days = timestamp / SECONDS_PER_DAY;
        dayOfWeek = ((_days + 3) % 7) + 1;
    }

    function getYear(uint256 timestamp) internal pure returns (uint256 year) {
        (year, , ) = _daysToDate(timestamp / SECONDS_PER_DAY);
    }

    function getMonth(uint256 timestamp) internal pure returns (uint256 month) {
        (, month, ) = _daysToDate(timestamp / SECONDS_PER_DAY);
    }

    function getDay(uint256 timestamp) internal pure returns (uint256 day) {
        (, , day) = _daysToDate(timestamp / SECONDS_PER_DAY);
    }

    function getHour(uint256 timestamp) internal pure returns (uint256 hour) {
        uint256 secs = timestamp % SECONDS_PER_DAY;
        hour = secs / SECONDS_PER_HOUR;
    }

    function getMinute(uint256 timestamp) internal pure returns (uint256 minute) {
        uint256 secs = timestamp % SECONDS_PER_HOUR;
        minute = secs / SECONDS_PER_MINUTE;
    }

    function getSecond(uint256 timestamp) internal pure returns (uint256 second) {
        second = timestamp % SECONDS_PER_MINUTE;
    }

    function addYears(uint256 timestamp, uint256 _years) internal pure returns (uint256 newTimestamp) {
        (uint256 year, uint256 month, uint256 day) = _daysToDate(timestamp / SECONDS_PER_DAY);
        year += _years;
        uint256 daysInMonth = _getDaysInMonth(year, month);
        if (day > daysInMonth) {
            day = daysInMonth;
        }
        newTimestamp = _daysFromDate(year, month, day) * SECONDS_PER_DAY + (timestamp % SECONDS_PER_DAY);
        require(newTimestamp >= timestamp);
    }

    function addMonths(uint256 timestamp, uint256 _months) internal pure returns (uint256 newTimestamp) {
        (uint256 year, uint256 month, uint256 day) = _daysToDate(timestamp / SECONDS_PER_DAY);
        month += _months;
        year += (month - 1) / 12;
        month = ((month - 1) % 12) + 1;
        uint256 daysInMonth = _getDaysInMonth(year, month);
        if (day > daysInMonth) {
            day = daysInMonth;
        }
        newTimestamp = _daysFromDate(year, month, day) * SECONDS_PER_DAY + (timestamp % SECONDS_PER_DAY);
        require(newTimestamp >= timestamp);
    }

    function addDays(uint256 timestamp, uint256 _days) internal pure returns (uint256 newTimestamp) {
        newTimestamp = timestamp + _days * SECONDS_PER_DAY;
        require(newTimestamp >= timestamp);
    }

    function addHours(uint256 timestamp, uint256 _hours) internal pure returns (uint256 newTimestamp) {
        newTimestamp = timestamp + _hours * SECONDS_PER_HOUR;
        require(newTimestamp >= timestamp);
    }

    function addMinutes(uint256 timestamp, uint256 _minutes) internal pure returns (uint256 newTimestamp) {
        newTimestamp = timestamp + _minutes * SECONDS_PER_MINUTE;
        require(newTimestamp >= timestamp);
    }

    function addSeconds(uint256 timestamp, uint256 _seconds) internal pure returns (uint256 newTimestamp) {
        newTimestamp = timestamp + _seconds;
        require(newTimestamp >= timestamp);
    }

    function subYears(uint256 timestamp, uint256 _years) internal pure returns (uint256 newTimestamp) {
        (uint256 year, uint256 month, uint256 day) = _daysToDate(timestamp / SECONDS_PER_DAY);
        year -= _years;
        uint256 daysInMonth = _getDaysInMonth(year, month);
        if (day > daysInMonth) {
            day = daysInMonth;
        }
        newTimestamp = _daysFromDate(year, month, day) * SECONDS_PER_DAY + (timestamp % SECONDS_PER_DAY);
        require(newTimestamp <= timestamp);
    }

    function subMonths(uint256 timestamp, uint256 _months) internal pure returns (uint256 newTimestamp) {
        (uint256 year, uint256 month, uint256 day) = _daysToDate(timestamp / SECONDS_PER_DAY);
        uint256 yearMonth = year * 12 + (month - 1) - _months;
        year = yearMonth / 12;
        month = (yearMonth % 12) + 1;
        uint256 daysInMonth = _getDaysInMonth(year, month);
        if (day > daysInMonth) {
            day = daysInMonth;
        }
        newTimestamp = _daysFromDate(year, month, day) * SECONDS_PER_DAY + (timestamp % SECONDS_PER_DAY);
        require(newTimestamp <= timestamp);
    }

    function subDays(uint256 timestamp, uint256 _days) internal pure returns (uint256 newTimestamp) {
        newTimestamp = timestamp - _days * SECONDS_PER_DAY;
        require(newTimestamp <= timestamp);
    }

    function subHours(uint256 timestamp, uint256 _hours) internal pure returns (uint256 newTimestamp) {
        newTimestamp = timestamp - _hours * SECONDS_PER_HOUR;
        require(newTimestamp <= timestamp);
    }

    function subMinutes(uint256 timestamp, uint256 _minutes) internal pure returns (uint256 newTimestamp) {
        newTimestamp = timestamp - _minutes * SECONDS_PER_MINUTE;
        require(newTimestamp <= timestamp);
    }

    function subSeconds(uint256 timestamp, uint256 _seconds) internal pure returns (uint256 newTimestamp) {
        newTimestamp = timestamp - _seconds;
        require(newTimestamp <= timestamp);
    }

    function diffYears(uint256 fromTimestamp, uint256 toTimestamp) internal pure returns (uint256 _years) {
        require(fromTimestamp <= toTimestamp);
        (uint256 fromYear, , ) = _daysToDate(fromTimestamp / SECONDS_PER_DAY);
        (uint256 toYear, , ) = _daysToDate(toTimestamp / SECONDS_PER_DAY);
        _years = toYear - fromYear;
    }

    function diffMonths(uint256 fromTimestamp, uint256 toTimestamp) internal pure returns (uint256 _months) {
        require(fromTimestamp <= toTimestamp);
        (uint256 fromYear, uint256 fromMonth, ) = _daysToDate(fromTimestamp / SECONDS_PER_DAY);
        (uint256 toYear, uint256 toMonth, ) = _daysToDate(toTimestamp / SECONDS_PER_DAY);
        _months = toYear * 12 + toMonth - fromYear * 12 - fromMonth;
    }

    function diffDays(uint256 fromTimestamp, uint256 toTimestamp) internal pure returns (uint256 _days) {
        require(fromTimestamp <= toTimestamp);
        _days = (toTimestamp - fromTimestamp) / SECONDS_PER_DAY;
    }

    function diffHours(uint256 fromTimestamp, uint256 toTimestamp) internal pure returns (uint256 _hours) {
        require(fromTimestamp <= toTimestamp);
        _hours = (toTimestamp - fromTimestamp) / SECONDS_PER_HOUR;
    }

    function diffMinutes(uint256 fromTimestamp, uint256 toTimestamp) internal pure returns (uint256 _minutes) {
        require(fromTimestamp <= toTimestamp);
        _minutes = (toTimestamp - fromTimestamp) / SECONDS_PER_MINUTE;
    }

    function diffSeconds(uint256 fromTimestamp, uint256 toTimestamp) internal pure returns (uint256 _seconds) {
        require(fromTimestamp <= toTimestamp);
        _seconds = toTimestamp - fromTimestamp;
    }
}

// ============================================================
// FILE: lib/frax-standard-solidity/lib/openzeppelin-contracts/contracts/interfaces/draft-IERC6093.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (interfaces/draft-IERC6093.sol)
pragma solidity ^0.8.20;

/**
 * @dev Standard ERC20 Errors
 * Interface of the https://eips.ethereum.org/EIPS/eip-6093[ERC-6093] custom errors for ERC20 tokens.
 */
interface IERC20Errors {
    /**
     * @dev Indicates an error related to the current `balance` of a `sender`. Used in transfers.
     * @param sender Address whose tokens are being transferred.
     * @param balance Current balance for the interacting account.
     * @param needed Minimum amount required to perform a transfer.
     */
    error ERC20InsufficientBalance(address sender, uint256 balance, uint256 needed);

    /**
     * @dev Indicates a failure with the token `sender`. Used in transfers.
     * @param sender Address whose tokens are being transferred.
     */
    error ERC20InvalidSender(address sender);

    /**
     * @dev Indicates a failure with the token `receiver`. Used in transfers.
     * @param receiver Address to which tokens are being transferred.
     */
    error ERC20InvalidReceiver(address receiver);

    /**
     * @dev Indicates a failure with the `spender`’s `allowance`. Used in transfers.
     * @param spender Address that may be allowed to operate on tokens without being their owner.
     * @param allowance Amount of tokens a `spender` is allowed to operate with.
     * @param needed Minimum amount required to perform a transfer.
     */
    error ERC20InsufficientAllowance(address spender, uint256 allowance, uint256 needed);

    /**
     * @dev Indicates a failure with the `approver` of a token to be approved. Used in approvals.
     * @param approver Address initiating an approval operation.
     */
    error ERC20InvalidApprover(address approver);

    /**
     * @dev Indicates a failure with the `spender` to be approved. Used in approvals.
     * @param spender Address that may be allowed to operate on tokens without being their owner.
     */
    error ERC20InvalidSpender(address spender);
}

/**
 * @dev Standard ERC721 Errors
 * Interface of the https://eips.ethereum.org/EIPS/eip-6093[ERC-6093] custom errors for ERC721 tokens.
 */
interface IERC721Errors {
    /**
     * @dev Indicates that an address can't be an owner. For example, `address(0)` is a forbidden owner in EIP-20.
     * Used in balance queries.
     * @param owner Address of the current owner of a token.
     */
    error ERC721InvalidOwner(address owner);

    /**
     * @dev Indicates a `tokenId` whose `owner` is the zero address.
     * @param tokenId Identifier number of a token.
     */
    error ERC721NonexistentToken(uint256 tokenId);

    /**
     * @dev Indicates an error related to the ownership over a particular token. Used in transfers.
     * @param sender Address whose tokens are being transferred.
     * @param tokenId Identifier number of a token.
     * @param owner Address of the current owner of a token.
     */
    error ERC721IncorrectOwner(address sender, uint256 tokenId, address owner);

    /**
     * @dev Indicates a failure with the token `sender`. Used in transfers.
     * @param sender Address whose tokens are being transferred.
     */
    error ERC721InvalidSender(address sender);

    /**
     * @dev Indicates a failure with the token `receiver`. Used in transfers.
     * @param receiver Address to which tokens are being transferred.
     */
    error ERC721InvalidReceiver(address receiver);

    /**
     * @dev Indicates a failure with the `operator`’s approval. Used in transfers.
     * @param operator Address that may be allowed to operate on tokens without being their owner.
     * @param tokenId Identifier number of a token.
     */
    error ERC721InsufficientApproval(address operator, uint256 tokenId);

    /**
     * @dev Indicates a failure with the `approver` of a token to be approved. Used in approvals.
     * @param approver Address initiating an approval operation.
     */
    error ERC721InvalidApprover(address approver);

    /**
     * @dev Indicates a failure with the `operator` to be approved. Used in approvals.
     * @param operator Address that may be allowed to operate on tokens without being their owner.
     */
    error ERC721InvalidOperator(address operator);
}

/**
 * @dev Standard ERC1155 Errors
 * Interface of the https://eips.ethereum.org/EIPS/eip-6093[ERC-6093] custom errors for ERC1155 tokens.
 */
interface IERC1155Errors {
    /**
     * @dev Indicates an error related to the current `balance` of a `sender`. Used in transfers.
     * @param sender Address whose tokens are being transferred.
     * @param balance Current balance for the interacting account.
     * @param needed Minimum amount required to perform a transfer.
     * @param tokenId Identifier number of a token.
     */
    error ERC1155InsufficientBalance(address sender, uint256 balance, uint256 needed, uint256 tokenId);

    /**
     * @dev Indicates a failure with the token `sender`. Used in transfers.
     * @param sender Address whose tokens are being transferred.
     */
    error ERC1155InvalidSender(address sender);

    /**
     * @dev Indicates a failure with the token `receiver`. Used in transfers.
     * @param receiver Address to which tokens are being transferred.
     */
    error ERC1155InvalidReceiver(address receiver);

    /**
     * @dev Indicates a failure with the `operator`’s approval. Used in transfers.
     * @param operator Address that may be allowed to operate on tokens without being their owner.
     * @param owner Address of the current owner of a token.
     */
    error ERC1155MissingApprovalForAll(address operator, address owner);

    /**
     * @dev Indicates a failure with the `approver` of a token to be approved. Used in approvals.
     * @param approver Address initiating an approval operation.
     */
    error ERC1155InvalidApprover(address approver);

    /**
     * @dev Indicates a failure with the `operator` to be approved. Used in approvals.
     * @param operator Address that may be allowed to operate on tokens without being their owner.
     */
    error ERC1155InvalidOperator(address operator);

    /**
     * @dev Indicates an array length mismatch between ids and values in a safeBatchTransferFrom operation.
     * Used in batch transfers.
     * @param idsLength Length of the array of token identifiers
     * @param valuesLength Length of the array of token amounts
     */
    error ERC1155InvalidArrayLength(uint256 idsLength, uint256 valuesLength);
}

// ============================================================
// FILE: lib/frax-standard-solidity/lib/openzeppelin-contracts/contracts/interfaces/IERC5267.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (interfaces/IERC5267.sol)

pragma solidity ^0.8.20;

interface IERC5267 {
    /**
     * @dev MAY be emitted to signal that the domain could have changed.
     */
    event EIP712DomainChanged();

    /**
     * @dev returns the fields and values that describe the domain separator used by this contract for EIP-712
     * signature.
     */
    function eip712Domain()
        external
        view
        returns (
            bytes1 fields,
            string memory name,
            string memory version,
            uint256 chainId,
            address verifyingContract,
            bytes32 salt,
            uint256[] memory extensions
        );
}

// ============================================================
// FILE: lib/frax-standard-solidity/lib/openzeppelin-contracts/contracts/token/ERC20/ERC20.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (token/ERC20/ERC20.sol)

pragma solidity ^0.8.20;

import {IERC20} from "./IERC20.sol";
import {IERC20Metadata} from "./extensions/IERC20Metadata.sol";
import {Context} from "../../utils/Context.sol";
import {IERC20Errors} from "../../interfaces/draft-IERC6093.sol";

/**
 * @dev Implementation of the {IERC20} interface.
 *
 * This implementation is agnostic to the way tokens are created. This means
 * that a supply mechanism has to be added in a derived contract using {_mint}.
 *
 * TIP: For a detailed writeup see our guide
 * https://forum.openzeppelin.com/t/how-to-implement-erc20-supply-mechanisms/226[How
 * to implement supply mechanisms].
 *
 * The default value of {decimals} is 18. To change this, you should override
 * this function so it returns a different value.
 *
 * We have followed general OpenZeppelin Contracts guidelines: functions revert
 * instead returning `false` on failure. This behavior is nonetheless
 * conventional and does not conflict with the expectations of ERC20
 * applications.
 *
 * Additionally, an {Approval} event is emitted on calls to {transferFrom}.
 * This allows applications to reconstruct the allowance for all accounts just
 * by listening to said events. Other implementations of the EIP may not emit
 * these events, as it isn't required by the specification.
 */
abstract contract ERC20 is Context, IERC20, IERC20Metadata, IERC20Errors {
    mapping(address account => uint256) private _balances;

    mapping(address account => mapping(address spender => uint256)) private _allowances;

    uint256 private _totalSupply;

    string private _name;
    string private _symbol;

    /**
     * @dev Sets the values for {name} and {symbol}.
     *
     * All two of these values are immutable: they can only be set once during
     * construction.
     */
    constructor(string memory name_, string memory symbol_) {
        _name = name_;
        _symbol = symbol_;
    }

    /**
     * @dev Returns the name of the token.
     */
    function name() public view virtual returns (string memory) {
        return _name;
    }

    /**
     * @dev Returns the symbol of the token, usually a shorter version of the
     * name.
     */
    function symbol() public view virtual returns (string memory) {
        return _symbol;
    }

    /**
     * @dev Returns the number of decimals used to get its user representation.
     * For example, if `decimals` equals `2`, a balance of `505` tokens should
     * be displayed to a user as `5.05` (`505 / 10 ** 2`).
     *
     * Tokens usually opt for a value of 18, imitating the relationship between
     * Ether and Wei. This is the default value returned by this function, unless
     * it's overridden.
     *
     * NOTE: This information is only used for _display_ purposes: it in
     * no way affects any of the arithmetic of the contract, including
     * {IERC20-balanceOf} and {IERC20-transfer}.
     */
    function decimals() public view virtual returns (uint8) {
        return 18;
    }

    /**
     * @dev See {IERC20-totalSupply}.
     */
    function totalSupply() public view virtual returns (uint256) {
        return _totalSupply;
    }

    /**
     * @dev See {IERC20-balanceOf}.
     */
    function balanceOf(address account) public view virtual returns (uint256) {
        return _balances[account];
    }

    /**
     * @dev See {IERC20-transfer}.
     *
     * Requirements:
     *
     * - `to` cannot be the zero address.
     * - the caller must have a balance of at least `value`.
     */
    function transfer(address to, uint256 value) public virtual returns (bool) {
        address owner = _msgSender();
        _transfer(owner, to, value);
        return true;
    }

    /**
     * @dev See {IERC20-allowance}.
     */
    function allowance(address owner, address spender) public view virtual returns (uint256) {
        return _allowances[owner][spender];
    }

    /**
     * @dev See {IERC20-approve}.
     *
     * NOTE: If `value` is the maximum `uint256`, the allowance is not updated on
     * `transferFrom`. This is semantically equivalent to an infinite approval.
     *
     * Requirements:
     *
     * - `spender` cannot be the zero address.
     */
    function approve(address spender, uint256 value) public virtual returns (bool) {
        address owner = _msgSender();
        _approve(owner, spender, value);
        return true;
    }

    /**
     * @dev See {IERC20-transferFrom}.
     *
     * Emits an {Approval} event indicating the updated allowance. This is not
     * required by the EIP. See the note at the beginning of {ERC20}.
     *
     * NOTE: Does not update the allowance if the current allowance
     * is the maximum `uint256`.
     *
     * Requirements:
     *
     * - `from` and `to` cannot be the zero address.
     * - `from` must have a balance of at least `value`.
     * - the caller must have allowance for ``from``'s tokens of at least
     * `value`.
     */
    function transferFrom(address from, address to, uint256 value) public virtual returns (bool) {
        address spender = _msgSender();
        _spendAllowance(from, spender, value);
        _transfer(from, to, value);
        return true;
    }

    /**
     * @dev Moves a `value` amount of tokens from `from` to `to`.
     *
     * This internal function is equivalent to {transfer}, and can be used to
     * e.g. implement automatic token fees, slashing mechanisms, etc.
     *
     * Emits a {Transfer} event.
     *
     * NOTE: This function is not virtual, {_update} should be overridden instead.
     */
    function _transfer(address from, address to, uint256 value) internal {
        if (from == address(0)) {
            revert ERC20InvalidSender(address(0));
        }
        if (to == address(0)) {
            revert ERC20InvalidReceiver(address(0));
        }
        _update(from, to, value);
    }

    /**
     * @dev Transfers a `value` amount of tokens from `from` to `to`, or alternatively mints (or burns) if `from`
     * (or `to`) is the zero address. All customizations to transfers, mints, and burns should be done by overriding
     * this function.
     *
     * Emits a {Transfer} event.
     */
    function _update(address from, address to, uint256 value) internal virtual {
        if (from == address(0)) {
            // Overflow check required: The rest of the code assumes that totalSupply never overflows
            _totalSupply += value;
        } else {
            uint256 fromBalance = _balances[from];
            if (fromBalance < value) {
                revert ERC20InsufficientBalance(from, fromBalance, value);
            }
            unchecked {
                // Overflow not possible: value <= fromBalance <= totalSupply.
                _balances[from] = fromBalance - value;
            }
        }

        if (to == address(0)) {
            unchecked {
                // Overflow not possible: value <= totalSupply or value <= fromBalance <= totalSupply.
                _totalSupply -= value;
            }
        } else {
            unchecked {
                // Overflow not possible: balance + value is at most totalSupply, which we know fits into a uint256.
                _balances[to] += value;
            }
        }

        emit Transfer(from, to, value);
    }

    /**
     * @dev Creates a `value` amount of tokens and assigns them to `account`, by transferring it from address(0).
     * Relies on the `_update` mechanism
     *
     * Emits a {Transfer} event with `from` set to the zero address.
     *
     * NOTE: This function is not virtual, {_update} should be overridden instead.
     */
    function _mint(address account, uint256 value) internal {
        if (account == address(0)) {
            revert ERC20InvalidReceiver(address(0));
        }
        _update(address(0), account, value);
    }

    /**
     * @dev Destroys a `value` amount of tokens from `account`, lowering the total supply.
     * Relies on the `_update` mechanism.
     *
     * Emits a {Transfer} event with `to` set to the zero address.
     *
     * NOTE: This function is not virtual, {_update} should be overridden instead
     */
    function _burn(address account, uint256 value) internal {
        if (account == address(0)) {
            revert ERC20InvalidSender(address(0));
        }
        _update(account, address(0), value);
    }

    /**
     * @dev Sets `value` as the allowance of `spender` over the `owner` s tokens.
     *
     * This internal function is equivalent to `approve`, and can be used to
     * e.g. set automatic allowances for certain subsystems, etc.
     *
     * Emits an {Approval} event.
     *
     * Requirements:
     *
     * - `owner` cannot be the zero address.
     * - `spender` cannot be the zero address.
     *
     * Overrides to this logic should be done to the variant with an additional `bool emitEvent` argument.
     */
    function _approve(address owner, address spender, uint256 value) internal {
        _approve(owner, spender, value, true);
    }

    /**
     * @dev Variant of {_approve} with an optional flag to enable or disable the {Approval} event.
     *
     * By default (when calling {_approve}) the flag is set to true. On the other hand, approval changes made by
     * `_spendAllowance` during the `transferFrom` operation set the flag to false. This saves gas by not emitting any
     * `Approval` event during `transferFrom` operations.
     *
     * Anyone who wishes to continue emitting `Approval` events on the`transferFrom` operation can force the flag to
     * true using the following override:
     * ```
     * function _approve(address owner, address spender, uint256 value, bool) internal virtual override {
     *     super._approve(owner, spender, value, true);
     * }
     * ```
     *
     * Requirements are the same as {_approve}.
     */
    function _approve(address owner, address spender, uint256 value, bool emitEvent) internal virtual {
        if (owner == address(0)) {
            revert ERC20InvalidApprover(address(0));
        }
        if (spender == address(0)) {
            revert ERC20InvalidSpender(address(0));
        }
        _allowances[owner][spender] = value;
        if (emitEvent) {
            emit Approval(owner, spender, value);
        }
    }

    /**
     * @dev Updates `owner` s allowance for `spender` based on spent `value`.
     *
     * Does not update the allowance value in case of infinite allowance.
     * Revert if not enough allowance is available.
     *
     * Does not emit an {Approval} event.
     */
    function _spendAllowance(address owner, address spender, uint256 value) internal virtual {
        uint256 currentAllowance = allowance(owner, spender);
        if (currentAllowance != type(uint256).max) {
            if (currentAllowance < value) {
                revert ERC20InsufficientAllowance(spender, currentAllowance, value);
            }
            unchecked {
                _approve(owner, spender, currentAllowance - value, false);
            }
        }
    }
}

// ============================================================
// FILE: lib/frax-standard-solidity/lib/openzeppelin-contracts/contracts/token/ERC20/extensions/ERC20Permit.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (token/ERC20/extensions/ERC20Permit.sol)

pragma solidity ^0.8.20;

import {IERC20Permit} from "./IERC20Permit.sol";
import {ERC20} from "../ERC20.sol";
import {ECDSA} from "../../../utils/cryptography/ECDSA.sol";
import {EIP712} from "../../../utils/cryptography/EIP712.sol";
import {Nonces} from "../../../utils/Nonces.sol";

/**
 * @dev Implementation of the ERC20 Permit extension allowing approvals to be made via signatures, as defined in
 * https://eips.ethereum.org/EIPS/eip-2612[EIP-2612].
 *
 * Adds the {permit} method, which can be used to change an account's ERC20 allowance (see {IERC20-allowance}) by
 * presenting a message signed by the account. By not relying on `{IERC20-approve}`, the token holder account doesn't
 * need to send a transaction, and thus is not required to hold Ether at all.
 */
abstract contract ERC20Permit is ERC20, IERC20Permit, EIP712, Nonces {
    bytes32 private constant PERMIT_TYPEHASH =
        keccak256("Permit(address owner,address spender,uint256 value,uint256 nonce,uint256 deadline)");

    /**
     * @dev Permit deadline has expired.
     */
    error ERC2612ExpiredSignature(uint256 deadline);

    /**
     * @dev Mismatched signature.
     */
    error ERC2612InvalidSigner(address signer, address owner);

    /**
     * @dev Initializes the {EIP712} domain separator using the `name` parameter, and setting `version` to `"1"`.
     *
     * It's a good idea to use the same `name` that is defined as the ERC20 token name.
     */
    constructor(string memory name) EIP712(name, "1") {}

    /**
     * @inheritdoc IERC20Permit
     */
    function permit(
        address owner,
        address spender,
        uint256 value,
        uint256 deadline,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) public virtual {
        if (block.timestamp > deadline) {
            revert ERC2612ExpiredSignature(deadline);
        }

        bytes32 structHash = keccak256(abi.encode(PERMIT_TYPEHASH, owner, spender, value, _useNonce(owner), deadline));

        bytes32 hash = _hashTypedDataV4(structHash);

        address signer = ECDSA.recover(hash, v, r, s);
        if (signer != owner) {
            revert ERC2612InvalidSigner(signer, owner);
        }

        _approve(owner, spender, value);
    }

    /**
     * @inheritdoc IERC20Permit
     */
    function nonces(address owner) public view virtual override(IERC20Permit, Nonces) returns (uint256) {
        return super.nonces(owner);
    }

    /**
     * @inheritdoc IERC20Permit
     */
    // solhint-disable-next-line func-name-mixedcase
    function DOMAIN_SEPARATOR() external view virtual returns (bytes32) {
        return _domainSeparatorV4();
    }
}

// ============================================================
// FILE: lib/frax-standard-solidity/lib/openzeppelin-contracts/contracts/token/ERC20/extensions/IERC20Metadata.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (token/ERC20/extensions/IERC20Metadata.sol)

pragma solidity ^0.8.20;

import {IERC20} from "../IERC20.sol";

/**
 * @dev Interface for the optional metadata functions from the ERC20 standard.
 */
interface IERC20Metadata is IERC20 {
    /**
     * @dev Returns the name of the token.
     */
    function name() external view returns (string memory);

    /**
     * @dev Returns the symbol of the token.
     */
    function symbol() external view returns (string memory);

    /**
     * @dev Returns the decimals places of the token.
     */
    function decimals() external view returns (uint8);
}

// ============================================================
// FILE: lib/frax-standard-solidity/lib/openzeppelin-contracts/contracts/token/ERC20/extensions/IERC20Permit.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (token/ERC20/extensions/IERC20Permit.sol)

pragma solidity ^0.8.20;

/**
 * @dev Interface of the ERC20 Permit extension allowing approvals to be made via signatures, as defined in
 * https://eips.ethereum.org/EIPS/eip-2612[EIP-2612].
 *
 * Adds the {permit} method, which can be used to change an account's ERC20 allowance (see {IERC20-allowance}) by
 * presenting a message signed by the account. By not relying on {IERC20-approve}, the token holder account doesn't
 * need to send a transaction, and thus is not required to hold Ether at all.
 *
 * ==== Security Considerations
 *
 * There are two important considerations concerning the use of `permit`. The first is that a valid permit signature
 * expresses an allowance, and it should not be assumed to convey additional meaning. In particular, it should not be
 * considered as an intention to spend the allowance in any specific way. The second is that because permits have
 * built-in replay protection and can be submitted by anyone, they can be frontrun. A protocol that uses permits should
 * take this into consideration and allow a `permit` call to fail. Combining these two aspects, a pattern that may be
 * generally recommended is:
 *
 * ```solidity
 * function doThingWithPermit(..., uint256 value, uint256 deadline, uint8 v, bytes32 r, bytes32 s) public {
 *     try token.permit(msg.sender, address(this), value, deadline, v, r, s) {} catch {}
 *     doThing(..., value);
 * }
 *
 * function doThing(..., uint256 value) public {
 *     token.safeTransferFrom(msg.sender, address(this), value);
 *     ...
 * }
 * ```
 *
 * Observe that: 1) `msg.sender` is used as the owner, leaving no ambiguity as to the signer intent, and 2) the use of
 * `try/catch` allows the permit to fail and makes the code tolerant to frontrunning. (See also
 * {SafeERC20-safeTransferFrom}).
 *
 * Additionally, note that smart contract wallets (such as Argent or Safe) are not able to produce permit signatures, so
 * contracts should have entry points that don't rely on permit.
 */
interface IERC20Permit {
    /**
     * @dev Sets `value` as the allowance of `spender` over ``owner``'s tokens,
     * given ``owner``'s signed approval.
     *
     * IMPORTANT: The same issues {IERC20-approve} has related to transaction
     * ordering also apply here.
     *
     * Emits an {Approval} event.
     *
     * Requirements:
     *
     * - `spender` cannot be the zero address.
     * - `deadline` must be a timestamp in the future.
     * - `v`, `r` and `s` must be a valid `secp256k1` signature from `owner`
     * over the EIP712-formatted function arguments.
     * - the signature must use ``owner``'s current nonce (see {nonces}).
     *
     * For more information on the signature format, see the
     * https://eips.ethereum.org/EIPS/eip-2612#specification[relevant EIP
     * section].
     *
     * CAUTION: See Security Considerations above.
     */
    function permit(
        address owner,
        address spender,
        uint256 value,
        uint256 deadline,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) external;

    /**
     * @dev Returns the current nonce for `owner`. This value must be
     * included whenever a signature is generated for {permit}.
     *
     * Every successful call to {permit} increases ``owner``'s nonce by one. This
     * prevents a signature from being used multiple times.
     */
    function nonces(address owner) external view returns (uint256);

    /**
     * @dev Returns the domain separator used in the encoding of the signature for {permit}, as defined by {EIP712}.
     */
    // solhint-disable-next-line func-name-mixedcase
    function DOMAIN_SEPARATOR() external view returns (bytes32);
}

// ============================================================
// FILE: lib/frax-standard-solidity/lib/openzeppelin-contracts/contracts/token/ERC20/IERC20.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (token/ERC20/IERC20.sol)

pragma solidity ^0.8.20;

/**
 * @dev Interface of the ERC20 standard as defined in the EIP.
 */
interface IERC20 {
    /**
     * @dev Emitted when `value` tokens are moved from one account (`from`) to
     * another (`to`).
     *
     * Note that `value` may be zero.
     */
    event Transfer(address indexed from, address indexed to, uint256 value);

    /**
     * @dev Emitted when the allowance of a `spender` for an `owner` is set by
     * a call to {approve}. `value` is the new allowance.
     */
    event Approval(address indexed owner, address indexed spender, uint256 value);

    /**
     * @dev Returns the value of tokens in existence.
     */
    function totalSupply() external view returns (uint256);

    /**
     * @dev Returns the value of tokens owned by `account`.
     */
    function balanceOf(address account) external view returns (uint256);

    /**
     * @dev Moves a `value` amount of tokens from the caller's account to `to`.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transfer(address to, uint256 value) external returns (bool);

    /**
     * @dev Returns the remaining number of tokens that `spender` will be
     * allowed to spend on behalf of `owner` through {transferFrom}. This is
     * zero by default.
     *
     * This value changes when {approve} or {transferFrom} are called.
     */
    function allowance(address owner, address spender) external view returns (uint256);

    /**
     * @dev Sets a `value` amount of tokens as the allowance of `spender` over the
     * caller's tokens.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * IMPORTANT: Beware that changing an allowance with this method brings the risk
     * that someone may use both the old and the new allowance by unfortunate
     * transaction ordering. One possible solution to mitigate this race
     * condition is to first reduce the spender's allowance to 0 and set the
     * desired value afterwards:
     * https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729
     *
     * Emits an {Approval} event.
     */
    function approve(address spender, uint256 value) external returns (bool);

    /**
     * @dev Moves a `value` amount of tokens from `from` to `to` using the
     * allowance mechanism. `value` is then deducted from the caller's
     * allowance.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transferFrom(address from, address to, uint256 value) external returns (bool);
}

// ============================================================
// FILE: lib/frax-standard-solidity/lib/openzeppelin-contracts/contracts/token/ERC20/utils/SafeERC20.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (token/ERC20/utils/SafeERC20.sol)

pragma solidity ^0.8.20;

import {IERC20} from "../IERC20.sol";
import {IERC20Permit} from "../extensions/IERC20Permit.sol";
import {Address} from "../../../utils/Address.sol";

/**
 * @title SafeERC20
 * @dev Wrappers around ERC20 operations that throw on failure (when the token
 * contract returns false). Tokens that return no value (and instead revert or
 * throw on failure) are also supported, non-reverting calls are assumed to be
 * successful.
 * To use this library you can add a `using SafeERC20 for IERC20;` statement to your contract,
 * which allows you to call the safe operations as `token.safeTransfer(...)`, etc.
 */
library SafeERC20 {
    using Address for address;

    /**
     * @dev An operation with an ERC20 token failed.
     */
    error SafeERC20FailedOperation(address token);

    /**
     * @dev Indicates a failed `decreaseAllowance` request.
     */
    error SafeERC20FailedDecreaseAllowance(address spender, uint256 currentAllowance, uint256 requestedDecrease);

    /**
     * @dev Transfer `value` amount of `token` from the calling contract to `to`. If `token` returns no value,
     * non-reverting calls are assumed to be successful.
     */
    function safeTransfer(IERC20 token, address to, uint256 value) internal {
        _callOptionalReturn(token, abi.encodeCall(token.transfer, (to, value)));
    }

    /**
     * @dev Transfer `value` amount of `token` from `from` to `to`, spending the approval given by `from` to the
     * calling contract. If `token` returns no value, non-reverting calls are assumed to be successful.
     */
    function safeTransferFrom(IERC20 token, address from, address to, uint256 value) internal {
        _callOptionalReturn(token, abi.encodeCall(token.transferFrom, (from, to, value)));
    }

    /**
     * @dev Increase the calling contract's allowance toward `spender` by `value`. If `token` returns no value,
     * non-reverting calls are assumed to be successful.
     */
    function safeIncreaseAllowance(IERC20 token, address spender, uint256 value) internal {
        uint256 oldAllowance = token.allowance(address(this), spender);
        forceApprove(token, spender, oldAllowance + value);
    }

    /**
     * @dev Decrease the calling contract's allowance toward `spender` by `requestedDecrease`. If `token` returns no
     * value, non-reverting calls are assumed to be successful.
     */
    function safeDecreaseAllowance(IERC20 token, address spender, uint256 requestedDecrease) internal {
        unchecked {
            uint256 currentAllowance = token.allowance(address(this), spender);
            if (currentAllowance < requestedDecrease) {
                revert SafeERC20FailedDecreaseAllowance(spender, currentAllowance, requestedDecrease);
            }
            forceApprove(token, spender, currentAllowance - requestedDecrease);
        }
    }

    /**
     * @dev Set the calling contract's allowance toward `spender` to `value`. If `token` returns no value,
     * non-reverting calls are assumed to be successful. Meant to be used with tokens that require the approval
     * to be set to zero before setting it to a non-zero value, such as USDT.
     */
    function forceApprove(IERC20 token, address spender, uint256 value) internal {
        bytes memory approvalCall = abi.encodeCall(token.approve, (spender, value));

        if (!_callOptionalReturnBool(token, approvalCall)) {
            _callOptionalReturn(token, abi.encodeCall(token.approve, (spender, 0)));
            _callOptionalReturn(token, approvalCall);
        }
    }

    /**
     * @dev Imitates a Solidity high-level call (i.e. a regular function call to a contract), relaxing the requirement
     * on the return value: the return value is optional (but if data is returned, it must not be false).
     * @param token The token targeted by the call.
     * @param data The call data (encoded using abi.encode or one of its variants).
     */
    function _callOptionalReturn(IERC20 token, bytes memory data) private {
        // We need to perform a low level call here, to bypass Solidity's return data size checking mechanism, since
        // we're implementing it ourselves. We use {Address-functionCall} to perform this call, which verifies that
        // the target address contains contract code and also asserts for success in the low-level call.

        bytes memory returndata = address(token).functionCall(data);
        if (returndata.length != 0 && !abi.decode(returndata, (bool))) {
            revert SafeERC20FailedOperation(address(token));
        }
    }

    /**
     * @dev Imitates a Solidity high-level call (i.e. a regular function call to a contract), relaxing the requirement
     * on the return value: the return value is optional (but if data is returned, it must not be false).
     * @param token The token targeted by the call.
     * @param data The call data (encoded using abi.encode or one of its variants).
     *
     * This is a variant of {_callOptionalReturn} that silents catches all reverts and returns a bool instead.
     */
    function _callOptionalReturnBool(IERC20 token, bytes memory data) private returns (bool) {
        // We need to perform a low level call here, to bypass Solidity's return data size checking mechanism, since
        // we're implementing it ourselves. We cannot use {Address-functionCall} here since this should return false
        // and not revert is the subcall reverts.

        (bool success, bytes memory returndata) = address(token).call(data);
        return success && (returndata.length == 0 || abi.decode(returndata, (bool))) && address(token).code.length > 0;
    }
}

// ============================================================
// FILE: lib/frax-standard-solidity/lib/openzeppelin-contracts/contracts/utils/Address.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (utils/Address.sol)

pragma solidity ^0.8.20;

/**
 * @dev Collection of functions related to the address type
 */
library Address {
    /**
     * @dev The ETH balance of the account is not enough to perform the operation.
     */
    error AddressInsufficientBalance(address account);

    /**
     * @dev There's no code at `target` (it is not a contract).
     */
    error AddressEmptyCode(address target);

    /**
     * @dev A call to an address target failed. The target may have reverted.
     */
    error FailedInnerCall();

    /**
     * @dev Replacement for Solidity's `transfer`: sends `amount` wei to
     * `recipient`, forwarding all available gas and reverting on errors.
     *
     * https://eips.ethereum.org/EIPS/eip-1884[EIP1884] increases the gas cost
     * of certain opcodes, possibly making contracts go over the 2300 gas limit
     * imposed by `transfer`, making them unable to receive funds via
     * `transfer`. {sendValue} removes this limitation.
     *
     * https://consensys.net/diligence/blog/2019/09/stop-using-soliditys-transfer-now/[Learn more].
     *
     * IMPORTANT: because control is transferred to `recipient`, care must be
     * taken to not create reentrancy vulnerabilities. Consider using
     * {ReentrancyGuard} or the
     * https://solidity.readthedocs.io/en/v0.8.20/security-considerations.html#use-the-checks-effects-interactions-pattern[checks-effects-interactions pattern].
     */
    function sendValue(address payable recipient, uint256 amount) internal {
        if (address(this).balance < amount) {
            revert AddressInsufficientBalance(address(this));
        }

        (bool success, ) = recipient.call{value: amount}("");
        if (!success) {
            revert FailedInnerCall();
        }
    }

    /**
     * @dev Performs a Solidity function call using a low level `call`. A
     * plain `call` is an unsafe replacement for a function call: use this
     * function instead.
     *
     * If `target` reverts with a revert reason or custom error, it is bubbled
     * up by this function (like regular Solidity function calls). However, if
     * the call reverted with no returned reason, this function reverts with a
     * {FailedInnerCall} error.
     *
     * Returns the raw returned data. To convert to the expected return value,
     * use https://solidity.readthedocs.io/en/latest/units-and-global-variables.html?highlight=abi.decode#abi-encoding-and-decoding-functions[`abi.decode`].
     *
     * Requirements:
     *
     * - `target` must be a contract.
     * - calling `target` with `data` must not revert.
     */
    function functionCall(address target, bytes memory data) internal returns (bytes memory) {
        return functionCallWithValue(target, data, 0);
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`],
     * but also transferring `value` wei to `target`.
     *
     * Requirements:
     *
     * - the calling contract must have an ETH balance of at least `value`.
     * - the called Solidity function must be `payable`.
     */
    function functionCallWithValue(address target, bytes memory data, uint256 value) internal returns (bytes memory) {
        if (address(this).balance < value) {
            revert AddressInsufficientBalance(address(this));
        }
        (bool success, bytes memory returndata) = target.call{value: value}(data);
        return verifyCallResultFromTarget(target, success, returndata);
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`],
     * but performing a static call.
     */
    function functionStaticCall(address target, bytes memory data) internal view returns (bytes memory) {
        (bool success, bytes memory returndata) = target.staticcall(data);
        return verifyCallResultFromTarget(target, success, returndata);
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`],
     * but performing a delegate call.
     */
    function functionDelegateCall(address target, bytes memory data) internal returns (bytes memory) {
        (bool success, bytes memory returndata) = target.delegatecall(data);
        return verifyCallResultFromTarget(target, success, returndata);
    }

    /**
     * @dev Tool to verify that a low level call to smart-contract was successful, and reverts if the target
     * was not a contract or bubbling up the revert reason (falling back to {FailedInnerCall}) in case of an
     * unsuccessful call.
     */
    function verifyCallResultFromTarget(
        address target,
        bool success,
        bytes memory returndata
    ) internal view returns (bytes memory) {
        if (!success) {
            _revert(returndata);
        } else {
            // only check if target is a contract if the call was successful and the return data is empty
            // otherwise we already know that it was a contract
            if (returndata.length == 0 && target.code.length == 0) {
                revert AddressEmptyCode(target);
            }
            return returndata;
        }
    }

    /**
     * @dev Tool to verify that a low level call was successful, and reverts if it wasn't, either by bubbling the
     * revert reason or with a default {FailedInnerCall} error.
     */
    function verifyCallResult(bool success, bytes memory returndata) internal pure returns (bytes memory) {
        if (!success) {
            _revert(returndata);
        } else {
            return returndata;
        }
    }

    /**
     * @dev Reverts with returndata if present. Otherwise reverts with {FailedInnerCall}.
     */
    function _revert(bytes memory returndata) private pure {
        // Look for revert reason and bubble it up if present
        if (returndata.length > 0) {
            // The easiest way to bubble the revert reason is using memory via assembly
            /// @solidity memory-safe-assembly
            assembly {
                let returndata_size := mload(returndata)
                revert(add(32, returndata), returndata_size)
            }
        } else {
            revert FailedInnerCall();
        }
    }
}

// ============================================================
// FILE: lib/frax-standard-solidity/lib/openzeppelin-contracts/contracts/utils/Context.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (utils/Context.sol)

pragma solidity ^0.8.20;

/**
 * @dev Provides information about the current execution context, including the
 * sender of the transaction and its data. While these are generally available
 * via msg.sender and msg.data, they should not be accessed in such a direct
 * manner, since when dealing with meta-transactions the account sending and
 * paying for execution may not be the actual sender (as far as an application
 * is concerned).
 *
 * This contract is only required for intermediate, library-like contracts.
 */
abstract contract Context {
    function _msgSender() internal view virtual returns (address) {
        return msg.sender;
    }

    function _msgData() internal view virtual returns (bytes calldata) {
        return msg.data;
    }
}

// ============================================================
// FILE: lib/frax-standard-solidity/lib/openzeppelin-contracts/contracts/utils/cryptography/ECDSA.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (utils/cryptography/ECDSA.sol)

pragma solidity ^0.8.20;

/**
 * @dev Elliptic Curve Digital Signature Algorithm (ECDSA) operations.
 *
 * These functions can be used to verify that a message was signed by the holder
 * of the private keys of a given address.
 */
library ECDSA {
    enum RecoverError {
        NoError,
        InvalidSignature,
        InvalidSignatureLength,
        InvalidSignatureS
    }

    /**
     * @dev The signature derives the `address(0)`.
     */
    error ECDSAInvalidSignature();

    /**
     * @dev The signature has an invalid length.
     */
    error ECDSAInvalidSignatureLength(uint256 length);

    /**
     * @dev The signature has an S value that is in the upper half order.
     */
    error ECDSAInvalidSignatureS(bytes32 s);

    /**
     * @dev Returns the address that signed a hashed message (`hash`) with `signature` or an error. This will not
     * return address(0) without also returning an error description. Errors are documented using an enum (error type)
     * and a bytes32 providing additional information about the error.
     *
     * If no error is returned, then the address can be used for verification purposes.
     *
     * The `ecrecover` EVM precompile allows for malleable (non-unique) signatures:
     * this function rejects them by requiring the `s` value to be in the lower
     * half order, and the `v` value to be either 27 or 28.
     *
     * IMPORTANT: `hash` _must_ be the result of a hash operation for the
     * verification to be secure: it is possible to craft signatures that
     * recover to arbitrary addresses for non-hashed data. A safe way to ensure
     * this is by receiving a hash of the original message (which may otherwise
     * be too long), and then calling {MessageHashUtils-toEthSignedMessageHash} on it.
     *
     * Documentation for signature generation:
     * - with https://web3js.readthedocs.io/en/v1.3.4/web3-eth-accounts.html#sign[Web3.js]
     * - with https://docs.ethers.io/v5/api/signer/#Signer-signMessage[ethers]
     */
    function tryRecover(bytes32 hash, bytes memory signature) internal pure returns (address, RecoverError, bytes32) {
        if (signature.length == 65) {
            bytes32 r;
            bytes32 s;
            uint8 v;
            // ecrecover takes the signature parameters, and the only way to get them
            // currently is to use assembly.
            /// @solidity memory-safe-assembly
            assembly {
                r := mload(add(signature, 0x20))
                s := mload(add(signature, 0x40))
                v := byte(0, mload(add(signature, 0x60)))
            }
            return tryRecover(hash, v, r, s);
        } else {
            return (address(0), RecoverError.InvalidSignatureLength, bytes32(signature.length));
        }
    }

    /**
     * @dev Returns the address that signed a hashed message (`hash`) with
     * `signature`. This address can then be used for verification purposes.
     *
     * The `ecrecover` EVM precompile allows for malleable (non-unique) signatures:
     * this function rejects them by requiring the `s` value to be in the lower
     * half order, and the `v` value to be either 27 or 28.
     *
     * IMPORTANT: `hash` _must_ be the result of a hash operation for the
     * verification to be secure: it is possible to craft signatures that
     * recover to arbitrary addresses for non-hashed data. A safe way to ensure
     * this is by receiving a hash of the original message (which may otherwise
     * be too long), and then calling {MessageHashUtils-toEthSignedMessageHash} on it.
     */
    function recover(bytes32 hash, bytes memory signature) internal pure returns (address) {
        (address recovered, RecoverError error, bytes32 errorArg) = tryRecover(hash, signature);
        _throwError(error, errorArg);
        return recovered;
    }

    /**
     * @dev Overload of {ECDSA-tryRecover} that receives the `r` and `vs` short-signature fields separately.
     *
     * See https://eips.ethereum.org/EIPS/eip-2098[EIP-2098 short signatures]
     */
    function tryRecover(bytes32 hash, bytes32 r, bytes32 vs) internal pure returns (address, RecoverError, bytes32) {
        unchecked {
            bytes32 s = vs & bytes32(0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff);
            // We do not check for an overflow here since the shift operation results in 0 or 1.
            uint8 v = uint8((uint256(vs) >> 255) + 27);
            return tryRecover(hash, v, r, s);
        }
    }

    /**
     * @dev Overload of {ECDSA-recover} that receives the `r and `vs` short-signature fields separately.
     */
    function recover(bytes32 hash, bytes32 r, bytes32 vs) internal pure returns (address) {
        (address recovered, RecoverError error, bytes32 errorArg) = tryRecover(hash, r, vs);
        _throwError(error, errorArg);
        return recovered;
    }

    /**
     * @dev Overload of {ECDSA-tryRecover} that receives the `v`,
     * `r` and `s` signature fields separately.
     */
    function tryRecover(
        bytes32 hash,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) internal pure returns (address, RecoverError, bytes32) {
        // EIP-2 still allows signature malleability for ecrecover(). Remove this possibility and make the signature
        // unique. Appendix F in the Ethereum Yellow paper (https://ethereum.github.io/yellowpaper/paper.pdf), defines
        // the valid range for s in (301): 0 < s < secp256k1n ÷ 2 + 1, and for v in (302): v ∈ {27, 28}. Most
        // signatures from current libraries generate a unique signature with an s-value in the lower half order.
        //
        // If your library generates malleable signatures, such as s-values in the upper range, calculate a new s-value
        // with 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBAAEDCE6AF48A03BBFD25E8CD0364141 - s1 and flip v from 27 to 28 or
        // vice versa. If your library also generates signatures with 0/1 for v instead 27/28, add 27 to v to accept
        // these malleable signatures as well.
        if (uint256(s) > 0x7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5D576E7357A4501DDFE92F46681B20A0) {
            return (address(0), RecoverError.InvalidSignatureS, s);
        }

        // If the signature is valid (and not malleable), return the signer address
        address signer = ecrecover(hash, v, r, s);
        if (signer == address(0)) {
            return (address(0), RecoverError.InvalidSignature, bytes32(0));
        }

        return (signer, RecoverError.NoError, bytes32(0));
    }

    /**
     * @dev Overload of {ECDSA-recover} that receives the `v`,
     * `r` and `s` signature fields separately.
     */
    function recover(bytes32 hash, uint8 v, bytes32 r, bytes32 s) internal pure returns (address) {
        (address recovered, RecoverError error, bytes32 errorArg) = tryRecover(hash, v, r, s);
        _throwError(error, errorArg);
        return recovered;
    }

    /**
     * @dev Optionally reverts with the corresponding custom error according to the `error` argument provided.
     */
    function _throwError(RecoverError error, bytes32 errorArg) private pure {
        if (error == RecoverError.NoError) {
            return; // no error: do nothing
        } else if (error == RecoverError.InvalidSignature) {
            revert ECDSAInvalidSignature();
        } else if (error == RecoverError.InvalidSignatureLength) {
            revert ECDSAInvalidSignatureLength(uint256(errorArg));
        } else if (error == RecoverError.InvalidSignatureS) {
            revert ECDSAInvalidSignatureS(errorArg);
        }
    }
}

// ============================================================
// FILE: lib/frax-standard-solidity/lib/openzeppelin-contracts/contracts/utils/cryptography/EIP712.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (utils/cryptography/EIP712.sol)

pragma solidity ^0.8.20;

import {MessageHashUtils} from "./MessageHashUtils.sol";
import {ShortStrings, ShortString} from "../ShortStrings.sol";
import {IERC5267} from "../../interfaces/IERC5267.sol";

/**
 * @dev https://eips.ethereum.org/EIPS/eip-712[EIP 712] is a standard for hashing and signing of typed structured data.
 *
 * The encoding scheme specified in the EIP requires a domain separator and a hash of the typed structured data, whose
 * encoding is very generic and therefore its implementation in Solidity is not feasible, thus this contract
 * does not implement the encoding itself. Protocols need to implement the type-specific encoding they need in order to
 * produce the hash of their typed data using a combination of `abi.encode` and `keccak256`.
 *
 * This contract implements the EIP 712 domain separator ({_domainSeparatorV4}) that is used as part of the encoding
 * scheme, and the final step of the encoding to obtain the message digest that is then signed via ECDSA
 * ({_hashTypedDataV4}).
 *
 * The implementation of the domain separator was designed to be as efficient as possible while still properly updating
 * the chain id to protect against replay attacks on an eventual fork of the chain.
 *
 * NOTE: This contract implements the version of the encoding known as "v4", as implemented by the JSON RPC method
 * https://docs.metamask.io/guide/signing-data.html[`eth_signTypedDataV4` in MetaMask].
 *
 * NOTE: In the upgradeable version of this contract, the cached values will correspond to the address, and the domain
 * separator of the implementation contract. This will cause the {_domainSeparatorV4} function to always rebuild the
 * separator from the immutable values, which is cheaper than accessing a cached version in cold storage.
 *
 * @custom:oz-upgrades-unsafe-allow state-variable-immutable
 */
abstract contract EIP712 is IERC5267 {
    using ShortStrings for *;

    bytes32 private constant TYPE_HASH =
        keccak256("EIP712Domain(string name,string version,uint256 chainId,address verifyingContract)");

    // Cache the domain separator as an immutable value, but also store the chain id that it corresponds to, in order to
    // invalidate the cached domain separator if the chain id changes.
    bytes32 private immutable _cachedDomainSeparator;
    uint256 private immutable _cachedChainId;
    address private immutable _cachedThis;

    bytes32 private immutable _hashedName;
    bytes32 private immutable _hashedVersion;

    ShortString private immutable _name;
    ShortString private immutable _version;
    string private _nameFallback;
    string private _versionFallback;

    /**
     * @dev Initializes the domain separator and parameter caches.
     *
     * The meaning of `name` and `version` is specified in
     * https://eips.ethereum.org/EIPS/eip-712#definition-of-domainseparator[EIP 712]:
     *
     * - `name`: the user readable name of the signing domain, i.e. the name of the DApp or the protocol.
     * - `version`: the current major version of the signing domain.
     *
     * NOTE: These parameters cannot be changed except through a xref:learn::upgrading-smart-contracts.adoc[smart
     * contract upgrade].
     */
    constructor(string memory name, string memory version) {
        _name = name.toShortStringWithFallback(_nameFallback);
        _version = version.toShortStringWithFallback(_versionFallback);
        _hashedName = keccak256(bytes(name));
        _hashedVersion = keccak256(bytes(version));

        _cachedChainId = block.chainid;
        _cachedDomainSeparator = _buildDomainSeparator();
        _cachedThis = address(this);
    }

    /**
     * @dev Returns the domain separator for the current chain.
     */
    function _domainSeparatorV4() internal view returns (bytes32) {
        if (address(this) == _cachedThis && block.chainid == _cachedChainId) {
            return _cachedDomainSeparator;
        } else {
            return _buildDomainSeparator();
        }
    }

    function _buildDomainSeparator() private view returns (bytes32) {
        return keccak256(abi.encode(TYPE_HASH, _hashedName, _hashedVersion, block.chainid, address(this)));
    }

    /**
     * @dev Given an already https://eips.ethereum.org/EIPS/eip-712#definition-of-hashstruct[hashed struct], this
     * function returns the hash of the fully encoded EIP712 message for this domain.
     *
     * This hash can be used together with {ECDSA-recover} to obtain the signer of a message. For example:
     *
     * ```solidity
     * bytes32 digest = _hashTypedDataV4(keccak256(abi.encode(
     *     keccak256("Mail(address to,string contents)"),
     *     mailTo,
     *     keccak256(bytes(mailContents))
     * )));
     * address signer = ECDSA.recover(digest, signature);
     * ```
     */
    function _hashTypedDataV4(bytes32 structHash) internal view virtual returns (bytes32) {
        return MessageHashUtils.toTypedDataHash(_domainSeparatorV4(), structHash);
    }

    /**
     * @dev See {IERC-5267}.
     */
    function eip712Domain()
        public
        view
        virtual
        returns (
            bytes1 fields,
            string memory name,
            string memory version,
            uint256 chainId,
            address verifyingContract,
            bytes32 salt,
            uint256[] memory extensions
        )
    {
        return (
            hex"0f", // 01111
            _EIP712Name(),
            _EIP712Version(),
            block.chainid,
            address(this),
            bytes32(0),
            new uint256[](0)
        );
    }

    /**
     * @dev The name parameter for the EIP712 domain.
     *
     * NOTE: By default this function reads _name which is an immutable value.
     * It only reads from storage if necessary (in case the value is too large to fit in a ShortString).
     */
    // solhint-disable-next-line func-name-mixedcase
    function _EIP712Name() internal view returns (string memory) {
        return _name.toStringWithFallback(_nameFallback);
    }

    /**
     * @dev The version parameter for the EIP712 domain.
     *
     * NOTE: By default this function reads _version which is an immutable value.
     * It only reads from storage if necessary (in case the value is too large to fit in a ShortString).
     */
    // solhint-disable-next-line func-name-mixedcase
    function _EIP712Version() internal view returns (string memory) {
        return _version.toStringWithFallback(_versionFallback);
    }
}

// ============================================================
// FILE: lib/frax-standard-solidity/lib/openzeppelin-contracts/contracts/utils/cryptography/MessageHashUtils.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (utils/cryptography/MessageHashUtils.sol)

pragma solidity ^0.8.20;

import {Strings} from "../Strings.sol";

/**
 * @dev Signature message hash utilities for producing digests to be consumed by {ECDSA} recovery or signing.
 *
 * The library provides methods for generating a hash of a message that conforms to the
 * https://eips.ethereum.org/EIPS/eip-191[EIP 191] and https://eips.ethereum.org/EIPS/eip-712[EIP 712]
 * specifications.
 */
library MessageHashUtils {
    /**
     * @dev Returns the keccak256 digest of an EIP-191 signed data with version
     * `0x45` (`personal_sign` messages).
     *
     * The digest is calculated by prefixing a bytes32 `messageHash` with
     * `"\x19Ethereum Signed Message:\n32"` and hashing the result. It corresponds with the
     * hash signed when using the https://eth.wiki/json-rpc/API#eth_sign[`eth_sign`] JSON-RPC method.
     *
     * NOTE: The `messageHash` parameter is intended to be the result of hashing a raw message with
     * keccak256, although any bytes32 value can be safely used because the final digest will
     * be re-hashed.
     *
     * See {ECDSA-recover}.
     */
    function toEthSignedMessageHash(bytes32 messageHash) internal pure returns (bytes32 digest) {
        /// @solidity memory-safe-assembly
        assembly {
            mstore(0x00, "\x19Ethereum Signed Message:\n32") // 32 is the bytes-length of messageHash
            mstore(0x1c, messageHash) // 0x1c (28) is the length of the prefix
            digest := keccak256(0x00, 0x3c) // 0x3c is the length of the prefix (0x1c) + messageHash (0x20)
        }
    }

    /**
     * @dev Returns the keccak256 digest of an EIP-191 signed data with version
     * `0x45` (`personal_sign` messages).
     *
     * The digest is calculated by prefixing an arbitrary `message` with
     * `"\x19Ethereum Signed Message:\n" + len(message)` and hashing the result. It corresponds with the
     * hash signed when using the https://eth.wiki/json-rpc/API#eth_sign[`eth_sign`] JSON-RPC method.
     *
     * See {ECDSA-recover}.
     */
    function toEthSignedMessageHash(bytes memory message) internal pure returns (bytes32) {
        return
            keccak256(bytes.concat("\x19Ethereum Signed Message:\n", bytes(Strings.toString(message.length)), message));
    }

    /**
     * @dev Returns the keccak256 digest of an EIP-191 signed data with version
     * `0x00` (data with intended validator).
     *
     * The digest is calculated by prefixing an arbitrary `data` with `"\x19\x00"` and the intended
     * `validator` address. Then hashing the result.
     *
     * See {ECDSA-recover}.
     */
    function toDataWithIntendedValidatorHash(address validator, bytes memory data) internal pure returns (bytes32) {
        return keccak256(abi.encodePacked(hex"19_00", validator, data));
    }

    /**
     * @dev Returns the keccak256 digest of an EIP-712 typed data (EIP-191 version `0x01`).
     *
     * The digest is calculated from a `domainSeparator` and a `structHash`, by prefixing them with
     * `\x19\x01` and hashing the result. It corresponds to the hash signed by the
     * https://eips.ethereum.org/EIPS/eip-712[`eth_signTypedData`] JSON-RPC method as part of EIP-712.
     *
     * See {ECDSA-recover}.
     */
    function toTypedDataHash(bytes32 domainSeparator, bytes32 structHash) internal pure returns (bytes32 digest) {
        /// @solidity memory-safe-assembly
        assembly {
            let ptr := mload(0x40)
            mstore(ptr, hex"19_01")
            mstore(add(ptr, 0x02), domainSeparator)
            mstore(add(ptr, 0x22), structHash)
            digest := keccak256(ptr, 0x42)
        }
    }
}

// ============================================================
// FILE: lib/frax-standard-solidity/lib/openzeppelin-contracts/contracts/utils/math/Math.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (utils/math/Math.sol)

pragma solidity ^0.8.20;

/**
 * @dev Standard math utilities missing in the Solidity language.
 */
library Math {
    /**
     * @dev Muldiv operation overflow.
     */
    error MathOverflowedMulDiv();

    enum Rounding {
        Floor, // Toward negative infinity
        Ceil, // Toward positive infinity
        Trunc, // Toward zero
        Expand // Away from zero
    }

    /**
     * @dev Returns the addition of two unsigned integers, with an overflow flag.
     */
    function tryAdd(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        unchecked {
            uint256 c = a + b;
            if (c < a) return (false, 0);
            return (true, c);
        }
    }

    /**
     * @dev Returns the subtraction of two unsigned integers, with an overflow flag.
     */
    function trySub(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        unchecked {
            if (b > a) return (false, 0);
            return (true, a - b);
        }
    }

    /**
     * @dev Returns the multiplication of two unsigned integers, with an overflow flag.
     */
    function tryMul(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        unchecked {
            // Gas optimization: this is cheaper than requiring 'a' not being zero, but the
            // benefit is lost if 'b' is also tested.
            // See: https://github.com/OpenZeppelin/openzeppelin-contracts/pull/522
            if (a == 0) return (true, 0);
            uint256 c = a * b;
            if (c / a != b) return (false, 0);
            return (true, c);
        }
    }

    /**
     * @dev Returns the division of two unsigned integers, with a division by zero flag.
     */
    function tryDiv(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        unchecked {
            if (b == 0) return (false, 0);
            return (true, a / b);
        }
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers, with a division by zero flag.
     */
    function tryMod(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        unchecked {
            if (b == 0) return (false, 0);
            return (true, a % b);
        }
    }

    /**
     * @dev Returns the largest of two numbers.
     */
    function max(uint256 a, uint256 b) internal pure returns (uint256) {
        return a > b ? a : b;
    }

    /**
     * @dev Returns the smallest of two numbers.
     */
    function min(uint256 a, uint256 b) internal pure returns (uint256) {
        return a < b ? a : b;
    }

    /**
     * @dev Returns the average of two numbers. The result is rounded towards
     * zero.
     */
    function average(uint256 a, uint256 b) internal pure returns (uint256) {
        // (a + b) / 2 can overflow.
        return (a & b) + (a ^ b) / 2;
    }

    /**
     * @dev Returns the ceiling of the division of two numbers.
     *
     * This differs from standard division with `/` in that it rounds towards infinity instead
     * of rounding towards zero.
     */
    function ceilDiv(uint256 a, uint256 b) internal pure returns (uint256) {
        if (b == 0) {
            // Guarantee the same behavior as in a regular Solidity division.
            return a / b;
        }

        // (a + b - 1) / b can overflow on addition, so we distribute.
        return a == 0 ? 0 : (a - 1) / b + 1;
    }

    /**
     * @notice Calculates floor(x * y / denominator) with full precision. Throws if result overflows a uint256 or
     * denominator == 0.
     * @dev Original credit to Remco Bloemen under MIT license (https://xn--2-umb.com/21/muldiv) with further edits by
     * Uniswap Labs also under MIT license.
     */
    function mulDiv(uint256 x, uint256 y, uint256 denominator) internal pure returns (uint256 result) {
        unchecked {
            // 512-bit multiply [prod1 prod0] = x * y. Compute the product mod 2^256 and mod 2^256 - 1, then use
            // use the Chinese Remainder Theorem to reconstruct the 512 bit result. The result is stored in two 256
            // variables such that product = prod1 * 2^256 + prod0.
            uint256 prod0 = x * y; // Least significant 256 bits of the product
            uint256 prod1; // Most significant 256 bits of the product
            assembly {
                let mm := mulmod(x, y, not(0))
                prod1 := sub(sub(mm, prod0), lt(mm, prod0))
            }

            // Handle non-overflow cases, 256 by 256 division.
            if (prod1 == 0) {
                // Solidity will revert if denominator == 0, unlike the div opcode on its own.
                // The surrounding unchecked block does not change this fact.
                // See https://docs.soliditylang.org/en/latest/control-structures.html#checked-or-unchecked-arithmetic.
                return prod0 / denominator;
            }

            // Make sure the result is less than 2^256. Also prevents denominator == 0.
            if (denominator <= prod1) {
                revert MathOverflowedMulDiv();
            }

            ///////////////////////////////////////////////
            // 512 by 256 division.
            ///////////////////////////////////////////////

            // Make division exact by subtracting the remainder from [prod1 prod0].
            uint256 remainder;
            assembly {
                // Compute remainder using mulmod.
                remainder := mulmod(x, y, denominator)

                // Subtract 256 bit number from 512 bit number.
                prod1 := sub(prod1, gt(remainder, prod0))
                prod0 := sub(prod0, remainder)
            }

            // Factor powers of two out of denominator and compute largest power of two divisor of denominator.
            // Always >= 1. See https://cs.stackexchange.com/q/138556/92363.

            uint256 twos = denominator & (0 - denominator);
            assembly {
                // Divide denominator by twos.
                denominator := div(denominator, twos)

                // Divide [prod1 prod0] by twos.
                prod0 := div(prod0, twos)

                // Flip twos such that it is 2^256 / twos. If twos is zero, then it becomes one.
                twos := add(div(sub(0, twos), twos), 1)
            }

            // Shift in bits from prod1 into prod0.
            prod0 |= prod1 * twos;

            // Invert denominator mod 2^256. Now that denominator is an odd number, it has an inverse modulo 2^256 such
            // that denominator * inv = 1 mod 2^256. Compute the inverse by starting with a seed that is correct for
            // four bits. That is, denominator * inv = 1 mod 2^4.
            uint256 inverse = (3 * denominator) ^ 2;

            // Use the Newton-Raphson iteration to improve the precision. Thanks to Hensel's lifting lemma, this also
            // works in modular arithmetic, doubling the correct bits in each step.
            inverse *= 2 - denominator * inverse; // inverse mod 2^8
            inverse *= 2 - denominator * inverse; // inverse mod 2^16
            inverse *= 2 - denominator * inverse; // inverse mod 2^32
            inverse *= 2 - denominator * inverse; // inverse mod 2^64
            inverse *= 2 - denominator * inverse; // inverse mod 2^128
            inverse *= 2 - denominator * inverse; // inverse mod 2^256

            // Because the division is now exact we can divide by multiplying with the modular inverse of denominator.
            // This will give us the correct result modulo 2^256. Since the preconditions guarantee that the outcome is
            // less than 2^256, this is the final result. We don't need to compute the high bits of the result and prod1
            // is no longer required.
            result = prod0 * inverse;
            return result;
        }
    }

    /**
     * @notice Calculates x * y / denominator with full precision, following the selected rounding direction.
     */
    function mulDiv(uint256 x, uint256 y, uint256 denominator, Rounding rounding) internal pure returns (uint256) {
        uint256 result = mulDiv(x, y, denominator);
        if (unsignedRoundsUp(rounding) && mulmod(x, y, denominator) > 0) {
            result += 1;
        }
        return result;
    }

    /**
     * @dev Returns the square root of a number. If the number is not a perfect square, the value is rounded
     * towards zero.
     *
     * Inspired by Henry S. Warren, Jr.'s "Hacker's Delight" (Chapter 11).
     */
    function sqrt(uint256 a) internal pure returns (uint256) {
        if (a == 0) {
            return 0;
        }

        // For our first guess, we get the biggest power of 2 which is smaller than the square root of the target.
        //
        // We know that the "msb" (most significant bit) of our target number `a` is a power of 2 such that we have
        // `msb(a) <= a < 2*msb(a)`. This value can be written `msb(a)=2**k` with `k=log2(a)`.
        //
        // This can be rewritten `2**log2(a) <= a < 2**(log2(a) + 1)`
        // → `sqrt(2**k) <= sqrt(a) < sqrt(2**(k+1))`
        // → `2**(k/2) <= sqrt(a) < 2**((k+1)/2) <= 2**(k/2 + 1)`
        //
        // Consequently, `2**(log2(a) / 2)` is a good first approximation of `sqrt(a)` with at least 1 correct bit.
        uint256 result = 1 << (log2(a) >> 1);

        // At this point `result` is an estimation with one bit of precision. We know the true value is a uint128,
        // since it is the square root of a uint256. Newton's method converges quadratically (precision doubles at
        // every iteration). We thus need at most 7 iteration to turn our partial result with one bit of precision
        // into the expected uint128 result.
        unchecked {
            result = (result + a / result) >> 1;
            result = (result + a / result) >> 1;
            result = (result + a / result) >> 1;
            result = (result + a / result) >> 1;
            result = (result + a / result) >> 1;
            result = (result + a / result) >> 1;
            result = (result + a / result) >> 1;
            return min(result, a / result);
        }
    }

    /**
     * @notice Calculates sqrt(a), following the selected rounding direction.
     */
    function sqrt(uint256 a, Rounding rounding) internal pure returns (uint256) {
        unchecked {
            uint256 result = sqrt(a);
            return result + (unsignedRoundsUp(rounding) && result * result < a ? 1 : 0);
        }
    }

    /**
     * @dev Return the log in base 2 of a positive value rounded towards zero.
     * Returns 0 if given 0.
     */
    function log2(uint256 value) internal pure returns (uint256) {
        uint256 result = 0;
        unchecked {
            if (value >> 128 > 0) {
                value >>= 128;
                result += 128;
            }
            if (value >> 64 > 0) {
                value >>= 64;
                result += 64;
            }
            if (value >> 32 > 0) {
                value >>= 32;
                result += 32;
            }
            if (value >> 16 > 0) {
                value >>= 16;
                result += 16;
            }
            if (value >> 8 > 0) {
                value >>= 8;
                result += 8;
            }
            if (value >> 4 > 0) {
                value >>= 4;
                result += 4;
            }
            if (value >> 2 > 0) {
                value >>= 2;
                result += 2;
            }
            if (value >> 1 > 0) {
                result += 1;
            }
        }
        return result;
    }

    /**
     * @dev Return the log in base 2, following the selected rounding direction, of a positive value.
     * Returns 0 if given 0.
     */
    function log2(uint256 value, Rounding rounding) internal pure returns (uint256) {
        unchecked {
            uint256 result = log2(value);
            return result + (unsignedRoundsUp(rounding) && 1 << result < value ? 1 : 0);
        }
    }

    /**
     * @dev Return the log in base 10 of a positive value rounded towards zero.
     * Returns 0 if given 0.
     */
    function log10(uint256 value) internal pure returns (uint256) {
        uint256 result = 0;
        unchecked {
            if (value >= 10 ** 64) {
                value /= 10 ** 64;
                result += 64;
            }
            if (value >= 10 ** 32) {
                value /= 10 ** 32;
                result += 32;
            }
            if (value >= 10 ** 16) {
                value /= 10 ** 16;
                result += 16;
            }
            if (value >= 10 ** 8) {
                value /= 10 ** 8;
                result += 8;
            }
            if (value >= 10 ** 4) {
                value /= 10 ** 4;
                result += 4;
            }
            if (value >= 10 ** 2) {
                value /= 10 ** 2;
                result += 2;
            }
            if (value >= 10 ** 1) {
                result += 1;
            }
        }
        return result;
    }

    /**
     * @dev Return the log in base 10, following the selected rounding direction, of a positive value.
     * Returns 0 if given 0.
     */
    function log10(uint256 value, Rounding rounding) internal pure returns (uint256) {
        unchecked {
            uint256 result = log10(value);
            return result + (unsignedRoundsUp(rounding) && 10 ** result < value ? 1 : 0);
        }
    }

    /**
     * @dev Return the log in base 256 of a positive value rounded towards zero.
     * Returns 0 if given 0.
     *
     * Adding one to the result gives the number of pairs of hex symbols needed to represent `value` as a hex string.
     */
    function log256(uint256 value) internal pure returns (uint256) {
        uint256 result = 0;
        unchecked {
            if (value >> 128 > 0) {
                value >>= 128;
                result += 16;
            }
            if (value >> 64 > 0) {
                value >>= 64;
                result += 8;
            }
            if (value >> 32 > 0) {
                value >>= 32;
                result += 4;
            }
            if (value >> 16 > 0) {
                value >>= 16;
                result += 2;
            }
            if (value >> 8 > 0) {
                result += 1;
            }
        }
        return result;
    }

    /**
     * @dev Return the log in base 256, following the selected rounding direction, of a positive value.
     * Returns 0 if given 0.
     */
    function log256(uint256 value, Rounding rounding) internal pure returns (uint256) {
        unchecked {
            uint256 result = log256(value);
            return result + (unsignedRoundsUp(rounding) && 1 << (result << 3) < value ? 1 : 0);
        }
    }

    /**
     * @dev Returns whether a provided rounding mode is considered rounding up for unsigned integers.
     */
    function unsignedRoundsUp(Rounding rounding) internal pure returns (bool) {
        return uint8(rounding) % 2 == 1;
    }
}

// ============================================================
// FILE: lib/frax-standard-solidity/lib/openzeppelin-contracts/contracts/utils/math/SignedMath.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (utils/math/SignedMath.sol)

pragma solidity ^0.8.20;

/**
 * @dev Standard signed math utilities missing in the Solidity language.
 */
library SignedMath {
    /**
     * @dev Returns the largest of two signed numbers.
     */
    function max(int256 a, int256 b) internal pure returns (int256) {
        return a > b ? a : b;
    }

    /**
     * @dev Returns the smallest of two signed numbers.
     */
    function min(int256 a, int256 b) internal pure returns (int256) {
        return a < b ? a : b;
    }

    /**
     * @dev Returns the average of two signed numbers without overflow.
     * The result is rounded towards zero.
     */
    function average(int256 a, int256 b) internal pure returns (int256) {
        // Formula from the book "Hacker's Delight"
        int256 x = (a & b) + ((a ^ b) >> 1);
        return x + (int256(uint256(x) >> 255) & (a ^ b));
    }

    /**
     * @dev Returns the absolute unsigned value of a signed value.
     */
    function abs(int256 n) internal pure returns (uint256) {
        unchecked {
            // must be unchecked in order to support `n = type(int256).min`
            return uint256(n >= 0 ? n : -n);
        }
    }
}

// ============================================================
// FILE: lib/frax-standard-solidity/lib/openzeppelin-contracts/contracts/utils/Nonces.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (utils/Nonces.sol)
pragma solidity ^0.8.20;

/**
 * @dev Provides tracking nonces for addresses. Nonces will only increment.
 */
abstract contract Nonces {
    /**
     * @dev The nonce used for an `account` is not the expected current nonce.
     */
    error InvalidAccountNonce(address account, uint256 currentNonce);

    mapping(address account => uint256) private _nonces;

    /**
     * @dev Returns the next unused nonce for an address.
     */
    function nonces(address owner) public view virtual returns (uint256) {
        return _nonces[owner];
    }

    /**
     * @dev Consumes a nonce.
     *
     * Returns the current value and increments nonce.
     */
    function _useNonce(address owner) internal virtual returns (uint256) {
        // For each account, the nonce has an initial value of 0, can only be incremented by one, and cannot be
        // decremented or reset. This guarantees that the nonce never overflows.
        unchecked {
            // It is important to do x++ and not ++x here.
            return _nonces[owner]++;
        }
    }

    /**
     * @dev Same as {_useNonce} but checking that `nonce` is the next valid for `owner`.
     */
    function _useCheckedNonce(address owner, uint256 nonce) internal virtual {
        uint256 current = _useNonce(owner);
        if (nonce != current) {
            revert InvalidAccountNonce(owner, current);
        }
    }
}

// ============================================================
// FILE: lib/frax-standard-solidity/lib/openzeppelin-contracts/contracts/utils/ReentrancyGuard.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (utils/ReentrancyGuard.sol)

pragma solidity ^0.8.20;

/**
 * @dev Contract module that helps prevent reentrant calls to a function.
 *
 * Inheriting from `ReentrancyGuard` will make the {nonReentrant} modifier
 * available, which can be applied to functions to make sure there are no nested
 * (reentrant) calls to them.
 *
 * Note that because there is a single `nonReentrant` guard, functions marked as
 * `nonReentrant` may not call one another. This can be worked around by making
 * those functions `private`, and then adding `external` `nonReentrant` entry
 * points to them.
 *
 * TIP: If you would like to learn more about reentrancy and alternative ways
 * to protect against it, check out our blog post
 * https://blog.openzeppelin.com/reentrancy-after-istanbul/[Reentrancy After Istanbul].
 */
abstract contract ReentrancyGuard {
    // Booleans are more expensive than uint256 or any type that takes up a full
    // word because each write operation emits an extra SLOAD to first read the
    // slot's contents, replace the bits taken up by the boolean, and then write
    // back. This is the compiler's defense against contract upgrades and
    // pointer aliasing, and it cannot be disabled.

    // The values being non-zero value makes deployment a bit more expensive,
    // but in exchange the refund on every call to nonReentrant will be lower in
    // amount. Since refunds are capped to a percentage of the total
    // transaction's gas, it is best to keep them low in cases like this one, to
    // increase the likelihood of the full refund coming into effect.
    uint256 private constant NOT_ENTERED = 1;
    uint256 private constant ENTERED = 2;

    uint256 private _status;

    /**
     * @dev Unauthorized reentrant call.
     */
    error ReentrancyGuardReentrantCall();

    constructor() {
        _status = NOT_ENTERED;
    }

    /**
     * @dev Prevents a contract from calling itself, directly or indirectly.
     * Calling a `nonReentrant` function from another `nonReentrant`
     * function is not supported. It is possible to prevent this from happening
     * by making the `nonReentrant` function external, and making it call a
     * `private` function that does the actual work.
     */
    modifier nonReentrant() {
        _nonReentrantBefore();
        _;
        _nonReentrantAfter();
    }

    function _nonReentrantBefore() private {
        // On the first call to nonReentrant, _status will be NOT_ENTERED
        if (_status == ENTERED) {
            revert ReentrancyGuardReentrantCall();
        }

        // Any calls to nonReentrant after this point will fail
        _status = ENTERED;
    }

    function _nonReentrantAfter() private {
        // By storing the original value once again, a refund is triggered (see
        // https://eips.ethereum.org/EIPS/eip-2200)
        _status = NOT_ENTERED;
    }

    /**
     * @dev Returns true if the reentrancy guard is currently set to "entered", which indicates there is a
     * `nonReentrant` function in the call stack.
     */
    function _reentrancyGuardEntered() internal view returns (bool) {
        return _status == ENTERED;
    }
}

// ============================================================
// FILE: lib/frax-standard-solidity/lib/openzeppelin-contracts/contracts/utils/ShortStrings.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (utils/ShortStrings.sol)

pragma solidity ^0.8.20;

import {StorageSlot} from "./StorageSlot.sol";

// | string  | 0xAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA   |
// | length  | 0x                                                              BB |
type ShortString is bytes32;

/**
 * @dev This library provides functions to convert short memory strings
 * into a `ShortString` type that can be used as an immutable variable.
 *
 * Strings of arbitrary length can be optimized using this library if
 * they are short enough (up to 31 bytes) by packing them with their
 * length (1 byte) in a single EVM word (32 bytes). Additionally, a
 * fallback mechanism can be used for every other case.
 *
 * Usage example:
 *
 * ```solidity
 * contract Named {
 *     using ShortStrings for *;
 *
 *     ShortString private immutable _name;
 *     string private _nameFallback;
 *
 *     constructor(string memory contractName) {
 *         _name = contractName.toShortStringWithFallback(_nameFallback);
 *     }
 *
 *     function name() external view returns (string memory) {
 *         return _name.toStringWithFallback(_nameFallback);
 *     }
 * }
 * ```
 */
library ShortStrings {
    // Used as an identifier for strings longer than 31 bytes.
    bytes32 private constant FALLBACK_SENTINEL = 0x00000000000000000000000000000000000000000000000000000000000000FF;

    error StringTooLong(string str);
    error InvalidShortString();

    /**
     * @dev Encode a string of at most 31 chars into a `ShortString`.
     *
     * This will trigger a `StringTooLong` error is the input string is too long.
     */
    function toShortString(string memory str) internal pure returns (ShortString) {
        bytes memory bstr = bytes(str);
        if (bstr.length > 31) {
            revert StringTooLong(str);
        }
        return ShortString.wrap(bytes32(uint256(bytes32(bstr)) | bstr.length));
    }

    /**
     * @dev Decode a `ShortString` back to a "normal" string.
     */
    function toString(ShortString sstr) internal pure returns (string memory) {
        uint256 len = byteLength(sstr);
        // using `new string(len)` would work locally but is not memory safe.
        string memory str = new string(32);
        /// @solidity memory-safe-assembly
        assembly {
            mstore(str, len)
            mstore(add(str, 0x20), sstr)
        }
        return str;
    }

    /**
     * @dev Return the length of a `ShortString`.
     */
    function byteLength(ShortString sstr) internal pure returns (uint256) {
        uint256 result = uint256(ShortString.unwrap(sstr)) & 0xFF;
        if (result > 31) {
            revert InvalidShortString();
        }
        return result;
    }

    /**
     * @dev Encode a string into a `ShortString`, or write it to storage if it is too long.
     */
    function toShortStringWithFallback(string memory value, string storage store) internal returns (ShortString) {
        if (bytes(value).length < 32) {
            return toShortString(value);
        } else {
            StorageSlot.getStringSlot(store).value = value;
            return ShortString.wrap(FALLBACK_SENTINEL);
        }
    }

    /**
     * @dev Decode a string that was encoded to `ShortString` or written to storage using {setWithFallback}.
     */
    function toStringWithFallback(ShortString value, string storage store) internal pure returns (string memory) {
        if (ShortString.unwrap(value) != FALLBACK_SENTINEL) {
            return toString(value);
        } else {
            return store;
        }
    }

    /**
     * @dev Return the length of a string that was encoded to `ShortString` or written to storage using
     * {setWithFallback}.
     *
     * WARNING: This will return the "byte length" of the string. This may not reflect the actual length in terms of
     * actual characters as the UTF-8 encoding of a single character can span over multiple bytes.
     */
    function byteLengthWithFallback(ShortString value, string storage store) internal view returns (uint256) {
        if (ShortString.unwrap(value) != FALLBACK_SENTINEL) {
            return byteLength(value);
        } else {
            return bytes(store).length;
        }
    }
}

// ============================================================
// FILE: lib/frax-standard-solidity/lib/openzeppelin-contracts/contracts/utils/StorageSlot.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (utils/StorageSlot.sol)
// This file was procedurally generated from scripts/generate/templates/StorageSlot.js.

pragma solidity ^0.8.20;

/**
 * @dev Library for reading and writing primitive types to specific storage slots.
 *
 * Storage slots are often used to avoid storage conflict when dealing with upgradeable contracts.
 * This library helps with reading and writing to such slots without the need for inline assembly.
 *
 * The functions in this library return Slot structs that contain a `value` member that can be used to read or write.
 *
 * Example usage to set ERC1967 implementation slot:
 * ```solidity
 * contract ERC1967 {
 *     bytes32 internal constant _IMPLEMENTATION_SLOT = 0x360894a13ba1a3210667c828492db98dca3e2076cc3735a920a3ca505d382bbc;
 *
 *     function _getImplementation() internal view returns (address) {
 *         return StorageSlot.getAddressSlot(_IMPLEMENTATION_SLOT).value;
 *     }
 *
 *     function _setImplementation(address newImplementation) internal {
 *         require(newImplementation.code.length > 0);
 *         StorageSlot.getAddressSlot(_IMPLEMENTATION_SLOT).value = newImplementation;
 *     }
 * }
 * ```
 */
library StorageSlot {
    struct AddressSlot {
        address value;
    }

    struct BooleanSlot {
        bool value;
    }

    struct Bytes32Slot {
        bytes32 value;
    }

    struct Uint256Slot {
        uint256 value;
    }

    struct StringSlot {
        string value;
    }

    struct BytesSlot {
        bytes value;
    }

    /**
     * @dev Returns an `AddressSlot` with member `value` located at `slot`.
     */
    function getAddressSlot(bytes32 slot) internal pure returns (AddressSlot storage r) {
        /// @solidity memory-safe-assembly
        assembly {
            r.slot := slot
        }
    }

    /**
     * @dev Returns an `BooleanSlot` with member `value` located at `slot`.
     */
    function getBooleanSlot(bytes32 slot) internal pure returns (BooleanSlot storage r) {
        /// @solidity memory-safe-assembly
        assembly {
            r.slot := slot
        }
    }

    /**
     * @dev Returns an `Bytes32Slot` with member `value` located at `slot`.
     */
    function getBytes32Slot(bytes32 slot) internal pure returns (Bytes32Slot storage r) {
        /// @solidity memory-safe-assembly
        assembly {
            r.slot := slot
        }
    }

    /**
     * @dev Returns an `Uint256Slot` with member `value` located at `slot`.
     */
    function getUint256Slot(bytes32 slot) internal pure returns (Uint256Slot storage r) {
        /// @solidity memory-safe-assembly
        assembly {
            r.slot := slot
        }
    }

    /**
     * @dev Returns an `StringSlot` with member `value` located at `slot`.
     */
    function getStringSlot(bytes32 slot) internal pure returns (StringSlot storage r) {
        /// @solidity memory-safe-assembly
        assembly {
            r.slot := slot
        }
    }

    /**
     * @dev Returns an `StringSlot` representation of the string storage pointer `store`.
     */
    function getStringSlot(string storage store) internal pure returns (StringSlot storage r) {
        /// @solidity memory-safe-assembly
        assembly {
            r.slot := store.slot
        }
    }

    /**
     * @dev Returns an `BytesSlot` with member `value` located at `slot`.
     */
    function getBytesSlot(bytes32 slot) internal pure returns (BytesSlot storage r) {
        /// @solidity memory-safe-assembly
        assembly {
            r.slot := slot
        }
    }

    /**
     * @dev Returns an `BytesSlot` representation of the bytes storage pointer `store`.
     */
    function getBytesSlot(bytes storage store) internal pure returns (BytesSlot storage r) {
        /// @solidity memory-safe-assembly
        assembly {
            r.slot := store.slot
        }
    }
}

// ============================================================
// FILE: lib/frax-standard-solidity/lib/openzeppelin-contracts/contracts/utils/Strings.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (utils/Strings.sol)

pragma solidity ^0.8.20;

import {Math} from "./math/Math.sol";
import {SignedMath} from "./math/SignedMath.sol";

/**
 * @dev String operations.
 */
library Strings {
    bytes16 private constant HEX_DIGITS = "0123456789abcdef";
    uint8 private constant ADDRESS_LENGTH = 20;

    /**
     * @dev The `value` string doesn't fit in the specified `length`.
     */
    error StringsInsufficientHexLength(uint256 value, uint256 length);

    /**
     * @dev Converts a `uint256` to its ASCII `string` decimal representation.
     */
    function toString(uint256 value) internal pure returns (string memory) {
        unchecked {
            uint256 length = Math.log10(value) + 1;
            string memory buffer = new string(length);
            uint256 ptr;
            /// @solidity memory-safe-assembly
            assembly {
                ptr := add(buffer, add(32, length))
            }
            while (true) {
                ptr--;
                /// @solidity memory-safe-assembly
                assembly {
                    mstore8(ptr, byte(mod(value, 10), HEX_DIGITS))
                }
                value /= 10;
                if (value == 0) break;
            }
            return buffer;
        }
    }

    /**
     * @dev Converts a `int256` to its ASCII `string` decimal representation.
     */
    function toStringSigned(int256 value) internal pure returns (string memory) {
        return string.concat(value < 0 ? "-" : "", toString(SignedMath.abs(value)));
    }

    /**
     * @dev Converts a `uint256` to its ASCII `string` hexadecimal representation.
     */
    function toHexString(uint256 value) internal pure returns (string memory) {
        unchecked {
            return toHexString(value, Math.log256(value) + 1);
        }
    }

    /**
     * @dev Converts a `uint256` to its ASCII `string` hexadecimal representation with fixed length.
     */
    function toHexString(uint256 value, uint256 length) internal pure returns (string memory) {
        uint256 localValue = value;
        bytes memory buffer = new bytes(2 * length + 2);
        buffer[0] = "0";
        buffer[1] = "x";
        for (uint256 i = 2 * length + 1; i > 1; --i) {
            buffer[i] = HEX_DIGITS[localValue & 0xf];
            localValue >>= 4;
        }
        if (localValue != 0) {
            revert StringsInsufficientHexLength(value, length);
        }
        return string(buffer);
    }

    /**
     * @dev Converts an `address` with fixed length of 20 bytes to its not checksummed ASCII `string` hexadecimal
     * representation.
     */
    function toHexString(address addr) internal pure returns (string memory) {
        return toHexString(uint256(uint160(addr)), ADDRESS_LENGTH);
    }

    /**
     * @dev Returns true if the two strings are equal.
     */
    function equal(string memory a, string memory b) internal pure returns (bool) {
        return bytes(a).length == bytes(b).length && keccak256(bytes(a)) == keccak256(bytes(b));
    }
}

// ============================================================
// FILE: lib/frax-standard-solidity/src/access-control/v2/Operator2Step.sol
// ============================================================

// SPDX-License-Identifier: ISC
pragma solidity >=0.8.0;

// ====================================================================
// |     ______                   _______                             |
// |    / _____________ __  __   / ____(_____  ____ _____  ________   |
// |   / /_  / ___/ __ `| |/_/  / /_  / / __ \/ __ `/ __ \/ ___/ _ \  |
// |  / __/ / /  / /_/ _>  <   / __/ / / / / / /_/ / / / / /__/  __/  |
// | /_/   /_/   \__,_/_/|_|  /_/   /_/_/ /_/\__,_/_/ /_/\___/\___/   |
// |                                                                  |
// ====================================================================
// ========================== Operator2Step ===========================
// ====================================================================
// Frax Finance: https://github.com/FraxFinance

// Primary Author
// Drake Evans: https://github.com/DrakeEvans

// Reviewers
// Dennis: https://github.com/denett

// ====================================================================

import { OperatorRole } from "./OperatorRole.sol";

/// @title Operator2Step
/// @author Drake Evans (Frax Finance) https://github.com/drakeevans
/// @dev Inspired by OpenZeppelin's Ownable2Step contract
/// @notice  An abstract contract which contains 2-step transfer and renounce logic for a operator address
abstract contract OperatorRole2Step is OperatorRole {
    /// @notice The pending operator address
    address public pendingOperatorAddress;

    constructor(address _operatorAddress) OperatorRole(_operatorAddress) {}

    // ============================================================================================
    // Functions: External Functions
    // ============================================================================================

    /// @notice The ```transferOperator``` function initiates the operator transfer
    /// @dev Must be called by the current operator
    /// @param _newOperator The address of the nominated (pending) operator
    function transferOperator(address _newOperator) external virtual {
        _requireSenderIsOperator();
        _transferOperator(_newOperator);
    }

    /// @notice The ```acceptTransferOperator``` function completes the operator transfer
    /// @dev Must be called by the pending operator
    function acceptTransferOperator() external virtual {
        _requireSenderIsPendingOperator();
        _acceptTransferOperator();
    }

    /// @notice The ```renounceOperator``` function renounces the operator after setting pending operator to current operator
    /// @dev Pending operator must be set to current operator before renouncing, creating a 2-step renounce process
    function renounceOperator() external virtual {
        _requireSenderIsOperator();
        _requireSenderIsPendingOperator();
        _transferOperator(address(0));
        _setOperator(address(0));
    }

    // ============================================================================================
    // Functions: Internal Actions
    // ============================================================================================

    /// @notice The ```OperatorTransferStarted``` event is emitted when the operator transfer is initiated
    /// @param previousOperator The address of the previous operator
    /// @param newOperator The address of the new operator
    event OperatorTransferStarted(address indexed previousOperator, address indexed newOperator);

    /// @notice The ```_transferOperator``` function initiates the operator transfer
    /// @dev This function is to be implemented by a public function
    /// @param _newOperator The address of the nominated (pending) operator
    function _transferOperator(address _newOperator) internal {
        pendingOperatorAddress = _newOperator;
        emit OperatorTransferStarted(operatorAddress, _newOperator);
    }

    /// @notice The ```_acceptTransferOperator``` function completes the operator transfer
    /// @dev This function is to be implemented by a public function
    function _acceptTransferOperator() internal {
        pendingOperatorAddress = address(0);
        _setOperator(msg.sender);
    }

    // ============================================================================================
    // Functions: Internal Checks
    // ============================================================================================

    /// @notice The ```_isPendingOperator``` function checks if the _address is pending operator address
    /// @dev This function is to be implemented by a public function
    /// @param _address The address to check against the pending operator
    /// @return Whether or not _address is pending operator address
    function _isPendingOperator(address _address) internal view returns (bool) {
        return _address == pendingOperatorAddress;
    }

    /// @notice The ```_requireIsPendingOperator``` function reverts if the _address is not pending operator address
    /// @dev This function is to be implemented by a public function
    /// @param _address The address to check against the pending operator
    function _requireIsPendingOperator(address _address) internal view {
        if (!_isPendingOperator(_address)) revert SenderIsNotPendingOperator();
    }

    /// @notice The ```_requirePendingOperator``` function reverts if msg.sender is not pending operator address
    /// @dev This function is to be implemented by a public function
    function _requireSenderIsPendingOperator() internal view {
        _requireIsPendingOperator(msg.sender);
    }

    // ============================================================================================
    // Functions: Errors
    // ============================================================================================

    /// @notice Emitted when operator is transferred
    error SenderIsNotOperator();

    /// @notice Emitted when pending operator is transferred
    error SenderIsNotPendingOperator();
}

// ============================================================
// FILE: lib/frax-standard-solidity/src/access-control/v2/OperatorRole.sol
// ============================================================

// SPDX-License-Identifier: ISC
pragma solidity >=0.8.0;

// ====================================================================
// |     ______                   _______                             |
// |    / _____________ __  __   / ____(_____  ____ _____  ________   |
// |   / /_  / ___/ __ `| |/_/  / /_  / / __ \/ __ `/ __ \/ ___/ _ \  |
// |  / __/ / /  / /_/ _>  <   / __/ / / / / / /_/ / / / / /__/  __/  |
// | /_/   /_/   \__,_/_/|_|  /_/   /_/_/ /_/\__,_/_/ /_/\___/\___/   |
// |                                                                  |
// ====================================================================
// =========================== OperatorRole ===========================
// ====================================================================
// Frax Finance: https://github.com/FraxFinance

// Primary Author
// Drake Evans: https://github.com/DrakeEvans

// Reviewers
// Dennis: https://github.com/denett
// Travis Moore: https://github.com/FortisFortuna

// ====================================================================

abstract contract OperatorRole {
    // ============================================================================================
    // Storage & Constructor
    // ============================================================================================

    /// @notice The current operator address
    address public operatorAddress;

    constructor(address _operatorAddress) {
        operatorAddress = _operatorAddress;
    }

    // ============================================================================================
    // Functions: Internal Actions
    // ============================================================================================

    /// @notice The ```OperatorTransferred``` event is emitted when the operator transfer is completed
    /// @param previousOperator The address of the previous operator
    /// @param newOperator The address of the new operator
    event OperatorTransferred(address indexed previousOperator, address indexed newOperator);

    /// @notice The ```_setOperator``` function sets the operator address
    /// @dev This function is to be implemented by a public function
    /// @param _newOperator The address of the new operator
    function _setOperator(address _newOperator) internal {
        emit OperatorTransferred(operatorAddress, _newOperator);
        operatorAddress = _newOperator;
    }

    // ============================================================================================
    // Functions: Internal Checks
    // ============================================================================================

    /// @notice The ```_isOperator``` function checks if _address is current operator address
    /// @param _address The address to check against the operator
    /// @return Whether or not msg.sender is current operator address
    function _isOperator(address _address) internal view returns (bool) {
        return _address == operatorAddress;
    }

    /// @notice The ```AddressIsNotOperator``` error is used for validation of the operatorAddress
    /// @param operatorAddress The expected operatorAddress
    /// @param actualAddress The actual operatorAddress
    error AddressIsNotOperator(address operatorAddress, address actualAddress);

    /// @notice The ```_requireIsOperator``` function reverts if _address is not current operator address
    /// @param _address The address to check against the operator
    function _requireIsOperator(address _address) internal view {
        if (!_isOperator(_address)) revert AddressIsNotOperator(operatorAddress, _address);
    }

    /// @notice The ```_requireSenderIsOperator``` function reverts if msg.sender is not current operator address
    /// @dev This function is to be implemented by a public function
    function _requireSenderIsOperator() internal view {
        _requireIsOperator(msg.sender);
    }
}

// ============================================================
// FILE: lib/frax-standard-solidity/src/access-control/v2/Timelock2Step.sol
// ============================================================

// SPDX-License-Identifier: ISC
pragma solidity >=0.8.0;

// ====================================================================
// |     ______                   _______                             |
// |    / _____________ __  __   / ____(_____  ____ _____  ________   |
// |   / /_  / ___/ __ `| |/_/  / /_  / / __ \/ __ `/ __ \/ ___/ _ \  |
// |  / __/ / /  / /_/ _>  <   / __/ / / / / / /_/ / / / / /__/  __/  |
// | /_/   /_/   \__,_/_/|_|  /_/   /_/_/ /_/\__,_/_/ /_/\___/\___/   |
// |                                                                  |
// ====================================================================
// ========================== Timelock2Step ===========================
// ====================================================================
// Frax Finance: https://github.com/FraxFinance

// Primary Author
// Drake Evans: https://github.com/DrakeEvans

// Reviewers
// Dennis: https://github.com/denett

// ====================================================================

/// @title Timelock2Step
/// @author Drake Evans (Frax Finance) https://github.com/drakeevans
/// @dev Inspired by OpenZeppelin's Ownable2Step contract
/// @notice  An abstract contract which contains 2-step transfer and renounce logic for a timelock address
abstract contract Timelock2Step {
    /// @notice The pending timelock address
    address public pendingTimelockAddress;

    /// @notice The current timelock address
    address public timelockAddress;

    constructor(address _timelockAddress) {
        timelockAddress = _timelockAddress;
    }

    // ============================================================================================
    // Functions: External Functions
    // ============================================================================================

    /// @notice The ```transferTimelock``` function initiates the timelock transfer
    /// @dev Must be called by the current timelock
    /// @param _newTimelock The address of the nominated (pending) timelock
    function transferTimelock(address _newTimelock) external virtual {
        _requireSenderIsTimelock();
        _transferTimelock(_newTimelock);
    }

    /// @notice The ```acceptTransferTimelock``` function completes the timelock transfer
    /// @dev Must be called by the pending timelock
    function acceptTransferTimelock() external virtual {
        _requireSenderIsPendingTimelock();
        _acceptTransferTimelock();
    }

    /// @notice The ```renounceTimelock``` function renounces the timelock after setting pending timelock to current timelock
    /// @dev Pending timelock must be set to current timelock before renouncing, creating a 2-step renounce process
    function renounceTimelock() external virtual {
        _requireSenderIsTimelock();
        _requireSenderIsPendingTimelock();
        _transferTimelock(address(0));
        _setTimelock(address(0));
    }

    // ============================================================================================
    // Functions: Internal Actions
    // ============================================================================================

    /// @notice The ```_transferTimelock``` function initiates the timelock transfer
    /// @dev This function is to be implemented by a public function
    /// @param _newTimelock The address of the nominated (pending) timelock
    function _transferTimelock(address _newTimelock) internal {
        pendingTimelockAddress = _newTimelock;
        emit TimelockTransferStarted(timelockAddress, _newTimelock);
    }

    /// @notice The ```_acceptTransferTimelock``` function completes the timelock transfer
    /// @dev This function is to be implemented by a public function
    function _acceptTransferTimelock() internal {
        pendingTimelockAddress = address(0);
        _setTimelock(msg.sender);
    }

    /// @notice The ```_setTimelock``` function sets the timelock address
    /// @dev This function is to be implemented by a public function
    /// @param _newTimelock The address of the new timelock
    function _setTimelock(address _newTimelock) internal {
        emit TimelockTransferred(timelockAddress, _newTimelock);
        timelockAddress = _newTimelock;
    }

    // ============================================================================================
    // Functions: Internal Checks
    // ============================================================================================

    /// @notice The ```_isTimelock``` function checks if _address is current timelock address
    /// @param _address The address to check against the timelock
    /// @return Whether or not msg.sender is current timelock address
    function _isTimelock(address _address) internal view returns (bool) {
        return _address == timelockAddress;
    }

    /// @notice The ```_requireIsTimelock``` function reverts if _address is not current timelock address
    /// @param _address The address to check against the timelock
    function _requireIsTimelock(address _address) internal view {
        if (!_isTimelock(_address)) revert AddressIsNotTimelock(timelockAddress, _address);
    }

    /// @notice The ```_requireSenderIsTimelock``` function reverts if msg.sender is not current timelock address
    /// @dev This function is to be implemented by a public function
    function _requireSenderIsTimelock() internal view {
        _requireIsTimelock(msg.sender);
    }

    /// @notice The ```_isPendingTimelock``` function checks if the _address is pending timelock address
    /// @dev This function is to be implemented by a public function
    /// @param _address The address to check against the pending timelock
    /// @return Whether or not _address is pending timelock address
    function _isPendingTimelock(address _address) internal view returns (bool) {
        return _address == pendingTimelockAddress;
    }

    /// @notice The ```_requireIsPendingTimelock``` function reverts if the _address is not pending timelock address
    /// @dev This function is to be implemented by a public function
    /// @param _address The address to check against the pending timelock
    function _requireIsPendingTimelock(address _address) internal view {
        if (!_isPendingTimelock(_address)) revert AddressIsNotPendingTimelock(pendingTimelockAddress, _address);
    }

    /// @notice The ```_requirePendingTimelock``` function reverts if msg.sender is not pending timelock address
    /// @dev This function is to be implemented by a public function
    function _requireSenderIsPendingTimelock() internal view {
        _requireIsPendingTimelock(msg.sender);
    }

    // ============================================================================================
    // Functions: Events
    // ============================================================================================

    /// @notice The ```TimelockTransferStarted``` event is emitted when the timelock transfer is initiated
    /// @param previousTimelock The address of the previous timelock
    /// @param newTimelock The address of the new timelock
    event TimelockTransferStarted(address indexed previousTimelock, address indexed newTimelock);

    /// @notice The ```TimelockTransferred``` event is emitted when the timelock transfer is completed
    /// @param previousTimelock The address of the previous timelock
    /// @param newTimelock The address of the new timelock
    event TimelockTransferred(address indexed previousTimelock, address indexed newTimelock);

    // ============================================================================================
    // Functions: Errors
    // ============================================================================================

    /// @notice Emitted when timelock is transferred
    error AddressIsNotTimelock(address timelockAddress, address actualAddress);

    /// @notice Emitted when pending timelock is transferred
    error AddressIsNotPendingTimelock(address pendingTimelockAddress, address actualAddress);
}

// ============================================================
// FILE: src/contracts/FxbAMO.sol
// ============================================================

// SPDX-License-Identifier: ISC
pragma solidity ^0.8.23;

// ====================================================================
// |     ______                   _______                             |
// |    / _____________ __  __   / ____(_____  ____ _____  ________   |
// |   / /_  / ___/ __ `| |/_/  / /_  / / __ \/ __ `/ __ \/ ___/ _ \  |
// |  / __/ / /  / /_/ _>  <   / __/ / / / / / /_/ / / / / /__/  __/  |
// | /_/   /_/   \__,_/_/|_|  /_/   /_/_/ /_/\__,_/_/ /_/\___/\___/   |
// |                                                                  |
// ====================================================================
// ============================== FxbAMO ==============================
// ====================================================================
// Frax Finance: https://github.com/FraxFinance

import { IERC20 } from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import { Timelock2Step } from "frax-std/access-control/v2/Timelock2Step.sol";
import { OperatorRole2Step } from "frax-std/access-control/v2/Operator2Step.sol";
import { FXB } from "frax-bonds/contracts/FXB.sol";
import { FXBFactory } from "frax-bonds/contracts/FXBFactory.sol";
import { SlippageAuction } from "frax-bonds/contracts/SlippageAuction.sol";
import { SlippageAuctionFactory } from "frax-bonds/contracts/SlippageAuctionFactory.sol";

/// @title FXB AMO
/// @notice Contract to manage auctions started by the Frax team of Frax bonds
/// @dev "Bond" and "FXB" are used interchangeably
/// @dev https://github.com/FraxFinance/frax-bonds-amo
contract FxbAMO is Timelock2Step, OperatorRole2Step {
    // ==============================================================================
    // Storage
    // ==============================================================================

    /// @notice The lowest priceMin allowed when calling `startAuction()`
    uint128 public globalMinPriceMin;

    /// @notice Cumulative amount of FXB listed for auction via `startAuction()`
    uint256 public totalFxbAuctioned;

    /// @notice Cumulative amount of FXB pending in outstanding auctions
    uint256 public totalFxbPending;

    /// @notice Cumulative amount of FRAX received via `stopAuction()`
    uint256 public totalFraxReceived;

    /// @notice Cumulative amount of excess FRAX received from non-swap transfers to auctions via `stopAuction()`
    uint256 public totalFraxExcess;

    /// @notice Cumulative amount of FRAX withdrawn via `withdrawFrax()`
    uint256 public totalFraxWithdrawn;

    /// @notice Cumulative amount of FXB sold after auction close via `stopAuction()`
    uint256 public totalFxbSold;

    /// @notice Cumulative amount of FXB not sold after auction close via `stopAuction()`
    uint256 public totalFxbUnsold;

    /// @notice Cumulative amount of excess bonds received from non-swap transfers to auctions via `stopAuction()`
    uint256 public totalFxbExcess;

    /// @notice Cumulative amount of FXB minted either through `startAuction()` or `mintBonds()`
    uint256 public totalFxbMinted;

    /// @notice Cumulative amoount of FXB redeemed for FRAX
    uint256 public totalFxbRedeemed;

    /// @notice Cumulative amount of FXB withdrawn by timelock
    uint256 public totalFxbWithdrawn;

    /// @notice Interface address of the FXBFactory
    FXBFactory public immutable iFxbFactory;

    /// @notice Interface Address of the SlippageAuctionFactory
    SlippageAuctionFactory public immutable iAuctionFactory;

    /// @notice Interface address of FRAX
    IERC20 public immutable iFrax;

    /// @notice The longest duration a bond will take to expire, ie. 5 weeks rounds down to 1 month
    enum TimeToMaturity {
        NOW, // 0 seconds
        ONE_MONTH, // 30 days
        THREE_MONTHS, // 90 days
        SIX_MONTHS, // 180 days
        ONE_YEAR, // 365 days
        TWO_YEARS, // 365 * 2 days
        THREE_YEARS, // 365 * 3 days
        FIVE_YEARS, // 365 * 5 days
        SEVEN_YEARS, // 365 * 7 days
        TEN_YEARS, // 365 * 10 days
        TWENTY_YEARS, // 365 * 20 days
        THIRTY_YEARS, // 365 * 30 days
        FIFTY_YEARS, // 365 * 50 days
        SEVENTYFIVE_YEARS, // 365 * 75 days
        ONEHUNDRED_YEARS // 365 * 100 days
    }

    /// @notice Details behind each `TimeToMaturity`
    /// @param minPriceMin  The lowest priceMin for the `TimeToMaturity` allowed via `startAuction()`
    /// @param duration     The duration in seconds for the maturity to be redeemable
    struct TimeToMaturityDetail {
        uint128 minPriceMin;
        uint128 duration;
    }

    /// @notice Mapping of all TimeToMaturity periods to their associated `TimeToMaturityDetail`
    mapping(TimeToMaturity => TimeToMaturityDetail) public timeToMaturityDetails;

    /// @notice Details behind each FXB auction
    /// @dev There is a 1:1 relationship between auction and FXB
    /// @param fxb Address of bond
    /// @param fxbAllowedToAuction Cumulative amount of bonds allowed to auction as set by timelock
    /// @param fxbAuctioned Cumulative amount of bonds auctioned via `startAuction()`
    /// @param fxbPending Current amount of FXB pending in current auction
    /// @param fxbUnsold Cumulative amount of bonds not sold via `stopAuction()`
    /// @param fxbSold Cumulative amount of bonds sold via `stopAuction()`
    /// @param fxbExcess Cumulative amount of excess bonds returned from non-swap transfers via `stopAuction()`
    /// @param fraxReceived Cumulative amount of FRAX received in auction sales via `stopAuction()`
    /// @param fraxExcess Cumulative amount of excess FRAX received from non-swap transfers via `stopAuction()`
    /// @param fxbMinted Cumulative amount of bonds minted by the AMO
    /// @param fxbRedeemed Cumulative amount of bonds redeemed by the AMO
    /// @param fxbWithdrawn Cumulative amount of bonds withdrawn from the AMO
    struct AuctionDetail {
        address fxb;
        uint256 fxbAllowedToAuction;
        uint256 fxbAuctioned;
        uint256 fxbPending;
        uint256 fxbUnsold;
        uint256 fxbSold;
        uint256 fxbExcess;
        uint256 fraxReceived;
        uint256 fraxExcess;
        uint256 fxbMinted;
        uint256 fxbRedeemed;
        uint256 fxbWithdrawn;
    }

    /// @notice mapping of all auction contracts to their associated `AuctionDetail`
    mapping(address auction => AuctionDetail) public auctionDetails;

    /// @notice reverse-lookup of bond address to auction address
    mapping(address fxb => address auction) public fxbToAuction;

    /// @notice Array of AMO-created auction contract addresses
    address[] public auctions;

    /// @param _timelock Address of timelock/owner
    /// @param _operator Address of approved operator
    /// @param _fxbFactory Address of deployed FXBFactory
    /// @param _auctionFactory Address of deployed SlippageAuctionFactory
    /// @param _frax Address of deployed FRAX
    constructor(
        address _timelock,
        address _operator,
        address _fxbFactory,
        address _auctionFactory,
        address _frax
    ) Timelock2Step(_timelock) OperatorRole2Step(_operator) {
        iFxbFactory = FXBFactory(_fxbFactory);
        iAuctionFactory = SlippageAuctionFactory(_auctionFactory);
        iFrax = IERC20(_frax);

        // Fill out timeToMaturity duration for interpolation
        timeToMaturityDetails[TimeToMaturity.ONE_MONTH].duration = 30 days;
        timeToMaturityDetails[TimeToMaturity.THREE_MONTHS].duration = 90 days;
        timeToMaturityDetails[TimeToMaturity.SIX_MONTHS].duration = 180 days;
        timeToMaturityDetails[TimeToMaturity.ONE_YEAR].duration = 365 days;
        timeToMaturityDetails[TimeToMaturity.TWO_YEARS].duration = 365 * 2 days;
        timeToMaturityDetails[TimeToMaturity.THREE_YEARS].duration = 365 * 3 days;
        timeToMaturityDetails[TimeToMaturity.FIVE_YEARS].duration = 365 * 5 days;
        timeToMaturityDetails[TimeToMaturity.SEVEN_YEARS].duration = 365 * 7 days;
        timeToMaturityDetails[TimeToMaturity.TEN_YEARS].duration = 365 * 10 days;
        timeToMaturityDetails[TimeToMaturity.TWENTY_YEARS].duration = 365 * 20 days;
        timeToMaturityDetails[TimeToMaturity.THIRTY_YEARS].duration = 365 * 30 days;
        timeToMaturityDetails[TimeToMaturity.FIFTY_YEARS].duration = 365 * 50 days;
        timeToMaturityDetails[TimeToMaturity.SEVENTYFIVE_YEARS].duration = 365 * 75 days;
        timeToMaturityDetails[TimeToMaturity.ONEHUNDRED_YEARS].duration = 365 * 100 days;
    }

    /// @notice Semantic version of this contract
    /// @return _major The major version
    /// @return _minor The minor version
    /// @return _patch The patch version
    function version() external pure returns (uint256 _major, uint256 _minor, uint256 _patch) {
        return (1, 0, 2);
    }

    //==============================================================================
    // Acccess Control Functions
    //==============================================================================

    /// @dev Requirements for all functions that are callable by both the timelock and operator
    function _requireTimelockOrOperator(address _fxb) internal view {
        if (!(_isTimelock(msg.sender) || _isOperator(msg.sender))) {
            revert NotOperatorOrTimelock();
        }

        if (!isFxbApproved(_fxb)) {
            revert BondNotApproved();
        }
    }

    /// @notice Initiates the two-step operator transfer.
    /// @dev For role acceptance/renouncing documentation, see github.com/frax-standard-solidity/src/access-control/Operator2Step.sol
    /// @param _newOperator Address of the nominated (pending) operator
    function transferOperator(address _newOperator) external override {
        _requireSenderIsTimelock();
        _transferOperator(_newOperator);
    }

    //==============================================================================
    // Main Functions
    //==============================================================================

    /// @notice Create an auction contract for a bond created by the FXBFactory
    /// @dev Callable by timelock
    /// @param _fxb Address of bond
    /// @return auction Address of newly created auction contract
    function createAuctionContract(address _fxb) external returns (address auction) {
        _requireSenderIsTimelock();

        // Ensure fxb is legitimate from fxbFactory
        if (!iFxbFactory.isFxb(_fxb)) {
            revert NotLegitimateBond();
        }

        if (fxbToAuction[_fxb] != address(0)) {
            revert AuctionAlreadyCreated();
        }

        // Create the auction
        auction = iAuctionFactory.createAuctionContract({
            _timelock: address(this),
            _tokenBuy: address(iFrax),
            _tokenSell: _fxb
        });

        // bookkeeping

        AuctionDetail storage auctionDetail = auctionDetails[auction];

        // Set bond address to auction and reverse-lookup
        auctionDetail.fxb = _fxb;
        fxbToAuction[_fxb] = auction;

        // Push to auctions array
        auctions.push(auction);

        emit CreateAuctionContract({ fxb: _fxb, auction: auction });
    }

    /// @notice Start an auction for a bond
    /// @dev Callable by operator/timelock
    /// @dev Mints additional bonds to auction if needed.
    /// @dev Reverts on invalid auction address or parameters
    /// @dev Reverts if selling more bonds than set by `auctionDetail.fxbAllowedToAuction`
    /// @dev Reverts if the auction ends before bond maturity
    /// @dev Reverts if auction minPrice is lower than the value of `calculateTimeWeightedMinPriceMin()`
    /// @param _auction Address of auction contract to call `startAuction()`
    /// @param _params Parameters of the auction as defined by `SlippageAuction.StartAuctionParams` struct
    function startAuction(address _auction, SlippageAuction.StartAuctionParams calldata _params) external {
        AuctionDetail storage auctionDetail = auctionDetails[_auction];
        address fxb = auctionDetail.fxb;
        FXB iFxb = FXB(fxb);

        _requireTimelockOrOperator(fxb);

        // revert if selling too much of bond
        /// @dev no check of 0 amountListed needed as `SlippageAuction.startAuction()` will revert
        if (_params.amountListed + auctionDetail.fxbAuctioned > auctionDetail.fxbAllowedToAuction) {
            revert TooManyBondsAuctioned();
        }

        // revert if bond has expired
        FXB.BondInfo memory bondInfo = iFxb.bondInfo();
        if (block.timestamp > bondInfo.maturityTimestamp) {
            revert BondAlreadyRedeemable();
        }

        // revert if auction end time is after bond expiry
        if (_params.expiry > bondInfo.maturityTimestamp) {
            revert BondExpiresBeforeAuctionEnd();
        }

        // calculate timeToMaturity
        uint128 delta = uint128(bondInfo.maturityTimestamp - block.timestamp);
        TimeToMaturity timeToMaturity = calculateTimeToMaturity(delta);

        // revert if the priceMin is below the acceptable value
        if (_params.priceMin < _calculateTimeWeightedMinPriceMin({ _delta: delta, _timeToMaturity: timeToMaturity })) {
            revert PriceMinTooLow();
        }

        // Effects

        // bookkeeping
        totalFxbAuctioned += _params.amountListed;
        auctionDetail.fxbAuctioned += _params.amountListed;

        totalFxbPending += _params.amountListed;
        auctionDetail.fxbPending += _params.amountListed;

        // Interactions

        // mint bonds if needed
        uint256 balance = iFxb.balanceOf(address(this));
        uint256 fxbMinted;
        if (balance < _params.amountListed) {
            fxbMinted = _params.amountListed - balance;
            _mintBonds({ _fxb: fxb, _amount: fxbMinted });
        }

        // Start the auction
        iFxb.approve(_auction, _params.amountListed);
        SlippageAuction(_auction).startAuction(_params);

        emit StartAuction({
            from: msg.sender,
            auction: _auction,
            fxbMinted: fxbMinted,
            fxbAuctioned: auctionDetail.fxbAuctioned,
            totalFxbAuctioned_: totalFxbAuctioned
        });
    }

    /// @notice Stop an auction for a bond
    /// @dev Callable by operator/timelock
    /// @dev Reverts on invalid auction address
    /// @param _auction Address of auction contract to call `stopAuction()`
    function stopAuction(address _auction) external {
        AuctionDetail storage auctionDetail = auctionDetails[_auction];
        address fxb = auctionDetail.fxb; // gas

        _requireTimelockOrOperator(fxb);

        // Stop the auction
        (uint256 fraxReceived, uint256 fxbUnsold) = SlippageAuction(_auction).stopAuction();

        // Bookkeeping
        SlippageAuction.Detail memory detail = SlippageAuction(_auction).getLatestAuction();
        uint256 fxbListed = detail.amountListed; // gas
        uint256 fraxExcess = detail.amountExcessBuy;
        uint256 fxbExcess = detail.amountExcessSell;

        totalFraxReceived += fraxReceived;
        auctionDetail.fraxReceived += fraxReceived;

        totalFraxExcess += fraxExcess;
        auctionDetail.fraxExcess += fraxExcess;

        totalFxbExcess += fxbExcess;
        auctionDetail.fxbExcess += fxbExcess;

        totalFxbUnsold += fxbUnsold;
        auctionDetail.fxbUnsold += fxbUnsold;
        // Allow re-use of unsold FXB
        auctionDetail.fxbAuctioned -= fxbUnsold;

        totalFxbSold += (fxbListed - fxbUnsold);
        auctionDetail.fxbSold += (fxbListed - fxbUnsold);

        totalFxbPending -= fxbListed;
        auctionDetail.fxbPending -= fxbListed;

        // NOTE: no event needed as the auction contract emits all necessary data
    }

    /// @notice Mint bonds to the AMO
    /// @dev Callable by timelock
    /// @param _fxb Address of bond to mint
    /// @param _amount Amount of bond to mint
    function mintBonds(address _fxb, uint256 _amount) external {
        _requireSenderIsTimelock();

        if (!isFxbApproved(_fxb)) {
            revert BondNotApproved();
        }

        _mintBonds({ _fxb: _fxb, _amount: _amount });
    }

    /// @dev no check on approved bond as this is method is also called within startAuction(), where
    ///         a check for the bond being approved already exists
    function _mintBonds(address _fxb, uint256 _amount) private {
        // bookkeeping
        totalFxbMinted += _amount;
        auctionDetails[fxbToAuction[_fxb]].fxbMinted += _amount;

        // Handle approvals
        iFrax.approve(_fxb, _amount);

        // Mint bond to this contract
        /// @dev reverts if _amount == 0
        FXB(_fxb).mint(address(this), _amount);
    }

    /// @notice Redeem bonds to a recipient by converting the FXB into FRAX
    /// @dev Callable by timelock
    /// @param _fxb Address of bond to redeem
    /// @param _recipient Address to received the received FRAX
    /// @param _amount Amount of bonds to redeem
    function redeemBonds(address _fxb, address _recipient, uint256 _amount) external {
        _requireSenderIsTimelock();

        if (!isFxbApproved(_fxb)) {
            revert BondNotApproved();
        }

        // bookkeeping
        totalFxbRedeemed += _amount;
        auctionDetails[fxbToAuction[_fxb]].fxbRedeemed += _amount;

        // Burn bond from this contract and send redeemed FRAX to recipient
        /// @dev reverts if _amount == 0
        FXB(_fxb).burn(_recipient, _amount);
    }

    /// @notice Withdraw FRAX held by this contract to a recipient
    /// @dev Callable by timelock
    /// @param _recipient Address to receive the withdrawn FRAX
    /// @param _amount Amount of FRAX to withdraw
    function withdrawFrax(address _recipient, uint256 _amount) external {
        _requireSenderIsTimelock();

        // bookkeeping
        totalFraxWithdrawn += _amount;

        iFrax.transfer(_recipient, _amount);
    }

    /// @notice Withdraw bonds held by this contract to a recipient
    /// @dev Reverts on withdrawing any bonds that don't have an auction contract created by this AMO.
    /// @dev Callable by timelock
    /// @param _fxb Address of bond to withdraw
    /// @param _recipient Address to receive the withdrawn bonds
    /// @param _amount Amount of bonds to withdraw
    function withdrawBonds(address _fxb, address _recipient, uint256 _amount) external {
        _requireSenderIsTimelock();

        if (!isFxbApproved(_fxb)) {
            revert BondNotApproved();
        }

        // bookkeeping
        totalFxbWithdrawn += _amount;
        auctionDetails[fxbToAuction[_fxb]].fxbWithdrawn += _amount;

        IERC20(_fxb).transfer(_recipient, _amount);
    }

    //==============================================================================
    // Setter Functions
    //==============================================================================

    /// @notice Set the `minPriceMin` for a given `TimeToMaturity` within the `timeToMaturityDetails`
    /// @dev Callable by timelock
    /// @dev Reverts if setting a `minPriceMin` less than `globalMinPriceMin`
    /// @param _timeToMaturity `TimeToMaturity` enum
    /// @param _minPriceMin The minimum priceMin to set the for the `TimeToMaturity`
    function setMinPriceMin(TimeToMaturity _timeToMaturity, uint128 _minPriceMin) external {
        _requireSenderIsTimelock();

        // revert if setting a minPriceMin below the global value
        if (_minPriceMin < globalMinPriceMin) {
            revert MinPriceMinBelowGlobalMinPriceMin();
        }

        uint128 oldMinPriceMin = timeToMaturityDetails[_timeToMaturity].minPriceMin;

        // NOTE: cannot pass in a `TimeToMaturity` enum with an index that does not exist
        timeToMaturityDetails[_timeToMaturity].minPriceMin = _minPriceMin;

        emit SetMinPriceMin({
            timeToMaturity: _timeToMaturity,
            oldMinPriceMin: oldMinPriceMin,
            newMinPriceMin: _minPriceMin
        });
    }

    /// @notice Set the `globalMinPriceMin`
    /// @dev Callable by timelock
    /// @param _globalMinPriceMin New value of the `globalMinPriceMin`
    function setGlobalMinPriceMin(uint128 _globalMinPriceMin) external {
        _requireSenderIsTimelock();

        uint128 oldGlobalMinPriceMin = globalMinPriceMin;
        globalMinPriceMin = _globalMinPriceMin;

        emit SetGlobalMinPriceMin({
            oldGlobalMinPriceMin: oldGlobalMinPriceMin,
            newGlobalMinPriceMin: _globalMinPriceMin
        });
    }

    /// @notice Set the cumulative bonds allowed to auction for a given auction contract
    /// @dev Callable by timelock
    /// @dev Reverts on auction contracts not created by the AMO
    /// @param _auction Address of auction contract
    /// @param _fxbAllowedToAuction Cumulative amount of bonds allowed to auction
    function setFxbAllowedToAuction(address _auction, uint256 _fxbAllowedToAuction) public {
        _requireSenderIsTimelock();

        AuctionDetail storage auctionDetail = auctionDetails[_auction];

        if (!isFxbApproved(auctionDetail.fxb)) {
            revert BondNotApproved();
        }

        // bookkeeping
        uint256 oldFxbAllowedToAuction = auctionDetail.fxbAllowedToAuction;
        auctionDetail.fxbAllowedToAuction = _fxbAllowedToAuction;

        emit SetFxbAllowedToAuction({
            auction: _auction,
            oldFxbAllowedToAuction: oldFxbAllowedToAuction,
            newFxbAllowedToAuction: _fxbAllowedToAuction
        });
    }

    //==============================================================================
    // Helpers
    //==============================================================================

    /// @notice Multicall to trigger multiple actions in one contract call
    function multicall(bytes[] calldata _calls) external {
        for (uint256 i = 0; i < _calls.length; i++) {
            (bool s, ) = address(this).delegatecall(_calls[i]);
            if (!s) revert MulticallFailed();
        }
    }

    //==============================================================================
    // Views
    //==============================================================================

    /// @notice View to see if an auction address was created by the AMO
    /// @param _auction Address of auction to check
    /// @return True if created by the AMO, else false
    function isAuction(address _auction) public view returns (bool) {
        return auctionDetails[_auction].fxb != address(0);
    }

    /// @notice View to see if a FXB is approved by timelock for the AMO to auction
    /// @dev Switches to true within `createAuctionContract()`
    /// @param _fxb Address of FXB to check
    /// @return True if FXB is approved by timelock, else false
    function isFxbApproved(address _fxb) public view returns (bool) {
        return (_fxb != address(0) && fxbToAuction[_fxb] != address(0));
    }

    /// @notice View to return the length of the `auctions` array
    /// @return Length of `auctions` array
    function auctionsLength() external view returns (uint256) {
        return auctions.length;
    }

    /// @notice View to return the associated `AuctionDetail` for a given auction
    /// @dev Enables calling `auctionDetails` to return a struct instead of a tuple
    /// @param _auction Address of auction to lookup
    /// @return auctionDetail `AuctionDetail` of the requested auction
    function getAuctionDetails(address _auction) external view returns (AuctionDetail memory auctionDetail) {
        auctionDetail = auctionDetails[_auction];
    }

    /// @notice View to determine the `TimeToMaturity` enum value given a duration `_delta`
    /// @dev Values align to the `timeToMaturityDetails.duration` as defined in the constructor
    /// @param _delta Duration in seconds to calculate the `TimeToMaturity`
    /// @return timeToMaturity `TimeToMaturity` enum for the given `_delta`
    function calculateTimeToMaturity(uint256 _delta) public pure returns (TimeToMaturity timeToMaturity) {
        if (_delta < 30 days) {
            timeToMaturity = TimeToMaturity.NOW;
        } else if (_delta < 90 days) {
            timeToMaturity = TimeToMaturity.ONE_MONTH;
        } else if (_delta < 180 days) {
            timeToMaturity = TimeToMaturity.THREE_MONTHS;
        } else if (_delta < 365 days) {
            timeToMaturity = TimeToMaturity.SIX_MONTHS;
        } else if (_delta < 365 * 2 days) {
            timeToMaturity = TimeToMaturity.ONE_YEAR;
        } else if (_delta < 365 * 3 days) {
            timeToMaturity = TimeToMaturity.TWO_YEARS;
        } else if (_delta < 365 * 5 days) {
            timeToMaturity = TimeToMaturity.THREE_YEARS;
        } else if (_delta < 365 * 7 days) {
            timeToMaturity = TimeToMaturity.FIVE_YEARS;
        } else if (_delta < 365 * 10 days) {
            timeToMaturity = TimeToMaturity.SEVEN_YEARS;
        } else if (_delta < 365 * 20 days) {
            timeToMaturity = TimeToMaturity.TEN_YEARS;
        } else if (_delta < 365 * 30 days) {
            timeToMaturity = TimeToMaturity.TWENTY_YEARS;
        } else if (_delta < 365 * 50 days) {
            timeToMaturity = TimeToMaturity.THIRTY_YEARS;
        } else if (_delta < 365 * 75 days) {
            timeToMaturity = TimeToMaturity.FIFTY_YEARS;
        } else if (_delta < 365 * 100 days) {
            timeToMaturity = TimeToMaturity.SEVENTYFIVE_YEARS;
        } else {
            timeToMaturity = TimeToMaturity.ONEHUNDRED_YEARS;
        }
    }

    /// @notice Returns the time-weighted average of minPriceMin of a `_delta` which lies between the two nearest `TimeToMaturity`s
    /// @dev If both `minPriceMin < globalMinPriceMin`, return `globalMinPriceMin`
    /// @dev If only one `minPriceMin > globalMinPriceMin`, return the value
    /// @dev If both `minPriceMin > globalMinPriceMin`, calculate the weighted average
    /// @param _delta Duration in seconds to locate the two nearest `TimeToMaturity`s
    /// @return Calculated `minPriceMin`
    function calculateTimeWeightedMinPriceMin(uint128 _delta) external view returns (uint128) {
        TimeToMaturity timeToMaturity = calculateTimeToMaturity(_delta);
        return _calculateTimeWeightedMinPriceMin({ _delta: _delta, _timeToMaturity: timeToMaturity });
    }

    function _calculateTimeWeightedMinPriceMin(
        uint128 _delta,
        TimeToMaturity _timeToMaturity
    ) internal view returns (uint128) {
        // Get the TimeToMaturity details of the current TimeToMaturity and the closest TimeToMaturity ...
        //   greater than ```_delta``` as ``` _delta > _timeToMaturity ```, therefore _delta is between the two TimeToMaturitys
        TimeToMaturityDetail memory lower = timeToMaturityDetails[_timeToMaturity];
        TimeToMaturityDetail memory upper;
        if (_timeToMaturity != TimeToMaturity.ONEHUNDRED_YEARS) {
            // keep upper set to 0 if ten years as there is no additional TimeToMaturity
            upper = timeToMaturityDetails[TimeToMaturity(uint8(_timeToMaturity) + 1)];
        }

        // gas
        uint128 globalMinPriceMin_ = globalMinPriceMin;

        // return global minPriceMin if both minPriceMins are less or equal to global
        if (lower.minPriceMin <= globalMinPriceMin_ && upper.minPriceMin <= globalMinPriceMin_) {
            return globalMinPriceMin_;
        }

        // If only one minPriceMin >= globalMinPriceMin, do not average and take the greater-than value
        if (upper.minPriceMin < globalMinPriceMin_ && lower.minPriceMin >= globalMinPriceMin_) {
            return lower.minPriceMin;
        } else if (lower.minPriceMin < globalMinPriceMin_ && upper.minPriceMin >= globalMinPriceMin_) {
            return upper.minPriceMin;
        }

        // THEN: both lower.minPriceMin && upper.minPriceMin > globalMinPriceMin, calculate time weighted average

        // Calculate how much percent have we moved from the bottom duration to the top, with 10**18 precision
        // ie: lower = 10 days, upper = 40 days, delta = 20 days, pct = 33% [ (20 - 10) / (40 - 10) ]
        uint256 pct = (1e18 * (_delta - lower.duration)) / (upper.duration - lower.duration);

        // Now apply that weighting to the lower and upper minPriceMin
        // ie. lower gets 66% of the weight, upper gets 33%
        uint256 minPriceMinLowerWeighted = (1e18 - pct) * lower.minPriceMin;
        uint256 minPriceMinUpperWeighted = pct * upper.minPriceMin;

        // Now that we have both weights, we add them up for the result and remove the precision
        return uint128((minPriceMinLowerWeighted + minPriceMinUpperWeighted) / 1e18);
    }

    //==============================================================================
    // Errors
    //==============================================================================
    /// @notice Revert in `createAuctionContract()` when attempting to create a second auction contract with the same bond address
    error AuctionAlreadyCreated();

    /// @notice Revert in `startAuction()` if the bond listed for auction has already reached maturity
    error BondAlreadyRedeemable();

    /// @notice Revert in all timelock/operator methods if the bond does not have an associated auction contract created by the AMO
    error BondNotApproved();

    /// @notice Revert in `startAuction()` if the auction end time is before the bond maturity
    error BondExpiresBeforeAuctionEnd();

    /// @notice Revert in `startAuction()` if `_params.minPriceMin` is below the time-weighted minPriceMin
    error PriceMinTooLow();

    /// @notice Revert in `setMinPriceMin()` if `_minPriceMin < globalMinPriceMin`
    error MinPriceMinBelowGlobalMinPriceMin();

    /// @notice Revert in `multicall()` if one of the calls does not succeed
    error MulticallFailed();

    /// @notice Revert in `createAuctionContract()` if the address of bond to create an auction for was not created by `iFxbFactory`
    error NotLegitimateBond();

    /// @notice Revert in all methods only callable by the timelock/operator
    error NotOperatorOrTimelock();

    /// @notice Revert in `startAuction()` if the cumulative amount of bonds listed for auction exceeds `auctionDetail.fxbAllowedToAuction`
    error TooManyBondsAuctioned();

    /// @notice Revert in `mintBonds()` if the cumulative amount of bonds minted exceeds `auctionDetail.fxbAllowedToAuction`
    error TooManyBondsMinted();

    //==============================================================================
    // Events
    //==============================================================================

    /// @notice Emitted in `createAuctionContract()`
    /// @param fxb Address of bond to create the auction contract
    /// @param auction Address of newly created auction contract
    event CreateAuctionContract(address indexed fxb, address indexed auction);

    /// @notice Emitted in `setFxbAllowedToAuction()`
    /// @param auction Address of auction to set `auctiondetail.fxbAllowedToAuction`
    /// @param oldFxbAllowedToAuction Previous value of `auctionDetail.fxbAllowedToAuction`
    /// @param newFxbAllowedToAuction New value of `auctionDetail.fxbAllowedToAuction`
    event SetFxbAllowedToAuction(
        address indexed auction,
        uint256 oldFxbAllowedToAuction,
        uint256 newFxbAllowedToAuction
    );

    /// @notice Emitted in `setGlobalMinPriceMin()`
    /// @param oldGlobalMinPriceMin Previous value of `globalMinPriceMin`
    /// @param newGlobalMinPriceMin New value of `globalMinPriceMin`
    event SetGlobalMinPriceMin(uint128 oldGlobalMinPriceMin, uint128 newGlobalMinPriceMin);

    /// @notice Emitted in `setMinPriceMin()`
    /// @param timeToMaturity A chosen `TimeToMaturity` enum value
    /// @param oldMinPriceMin Previous value of `timeToMaturityDetails.minPriceMin`
    /// @param newMinPriceMin new value of `timeToMaturityDetails.minPriceMin`
    event SetMinPriceMin(TimeToMaturity timeToMaturity, uint128 oldMinPriceMin, uint128 newMinPriceMin);

    /// @notice Emitted in `startAuction()`
    /// @param from Address to call `startAuction()`
    /// @param auction Address of auction contract
    /// @param fxbMinted Amount of bonds minted for the auction to start
    /// @param fxbAuctioned Amount of bonds listed for auction
    /// @param totalFxbAuctioned_ Cumulative amount of all bonds listed for auction
    event StartAuction(
        address indexed from,
        address indexed auction,
        uint256 fxbMinted,
        uint256 fxbAuctioned,
        uint256 totalFxbAuctioned_
    );
}
