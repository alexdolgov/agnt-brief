// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {IERC20} from "../lib/openzeppelin-contracts/contracts/interfaces/IERC20.sol";
import {IERC20Metadata} from "../lib/openzeppelin-contracts/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import {IERC4626} from "../lib/openzeppelin-contracts/contracts/interfaces/IERC4626.sol";
import "../lib/openzeppelin-contracts/contracts/access/AccessControl.sol";
import {IOracle} from "../lib/morpho-blue/src/interfaces/IOracle.sol";
import {IMorpho, Market, Position, MarketParams, Id} from "../lib/morpho-blue/src/interfaces/IMorpho.sol";
import {IMorphoFlashLoanCallback, IMorphoSupplyCollateralCallback} from "../lib/morpho-blue/src/interfaces/IMorphoCallbacks.sol";
import {MathLib} from "../lib/morpho-blue/src/libraries/MathLib.sol";
import {MorphoBalancesLib} from "../lib/morpho-blue/src/libraries/periphery/MorphoBalancesLib.sol";

import {IChainlinkOracle} from "../src/interfaces/IChainlinkOracle.sol";
import {ISwapper} from "../src/interfaces/ISwapper.sol";
import {IMorphoReader, MarketDataExt, PositionExt} from "../src/interfaces/IMorphoReader.sol";
import {IWsteth} from "../src/interfaces/IWsteth.sol";

/**
 * @title Bot that leverage borrows cash (of type currency) against assets (of type collateral)
 */
contract DualBot is
    AccessControl,
    IMorphoFlashLoanCallback,
    IMorphoSupplyCollateralCallback
{
    event Wind(uint256 equity, uint256 exposure, uint256 toBorrow);
    event Unwind(
        uint256 borrowShares,
        uint256 borrowAmount,
        uint256 collateral
    );

    // Create a new role identifier for the minter role
    bytes32 public constant OPERATOR_ROLE = keccak256("OPERATOR_ROLE");
    bytes32 public constant CALLBACK_ROLE = keccak256("CALLBACK_ROLE");

    IERC20 public immutable currency;
    IERC20 public immutable collateral;
    IOracle public immutable oracle;
    IMorpho public immutable morpho =
        IMorpho(0xBBBBBbbBBb9cC5e90e3b3Af64bdAF62C37EEFFCb);
    IMorphoReader public immutable morphoReader;
    ISwapper public immutable swapper;

    Id[] public markets;
    mapping(Id => bool) internal marketsMap;

    uint256 internal immutable WEI_FACTOR = 10 ** 18;
    /// @notice Max allowed slippage in bps
    uint256 public maxSlippage = 5; // in bps
    uint256 internal constant SLIPPAGE_FACTOR = 10000; // in bps so 100%
    uint256 internal minExpected = 0 ether; // MEV protection where sender can say how much min after swaps
    uint256 internal constant DUST = 10 ** 12;
    bytes internal constant NULL_DATA = "";
    uint256 internal immutable ORACLE_FACTOR = 10 ** 36;

    bool internal constant WIND = true;
    bool internal constant UNWIND = false;

    MarketParams public marketParams;

    constructor(
        address owner,
        IERC20 currency_,
        IERC20 collateral_,
        IOracle oracle_,
        ISwapper swapper_,
        IMorphoReader reader_
    ) {
        currency = currency_;
        collateral = collateral_;
        oracle = oracle_;
        swapper = swapper_;
        morphoReader = reader_;

        _grantRole(DEFAULT_ADMIN_ROLE, owner);
        _grantRole(OPERATOR_ROLE, msg.sender);

        // Only Morpho and DssFlashLoan can call the callback
        _grantRole(CALLBACK_ROLE, address(morpho));

        // Grant admin to change permissions
        _setRoleAdmin(OPERATOR_ROLE, DEFAULT_ADMIN_ROLE);
        _setRoleAdmin(CALLBACK_ROLE, DEFAULT_ADMIN_ROLE);
    }

    /// @notice Borrow cash currency, swap in collateral in market id and use it as collateral
    /// @param marketId Market Id to use
    /// @param cash currency amount to be borrowed
    function wind(Id marketId, uint256 cash) external onlyRole(OPERATOR_ROLE) {
        // Check that the market is already added
        _checkMarket(marketId);

        morpho.flashLoan(address(currency), cash, abi.encode(marketId, WIND));
    }

    /// @notice remove collateral on market id, swap to currency, repay the loan
    /// @param marketId Market Id to use
    /// @param assets Amount of collateral to sell to repay the loan
    function unwind(
        Id marketId,
        uint256 assets
    ) external onlyRole(OPERATOR_ROLE) {
        // Check that the market is already added
        _checkMarket(marketId);

        morpho.flashLoan(
            address(collateral),
            assets,
            abi.encode(marketId, UNWIND)
        );
    }

    /// @notice Borrow cash currency, swap in collateral in market id and use it as collateral
    /// @param marketId Market Id to use
    /// @param cash currency amount to be borrowed
    /// @param minAssets_ Revert if we don't get at least minAssets_ collateral from the sale
    function wind(
        Id marketId,
        uint256 cash,
        uint256 minAssets_
    ) external onlyRole(OPERATOR_ROLE) {
        // Check that the market is already added
        _checkMarket(marketId);

        minExpected = minAssets_; // Revert if we don't get at least minCollateral_
        morpho.flashLoan(address(currency), cash, abi.encode(marketId, WIND));
        minExpected = 0;
    }

    /// @notice remove collateral on market id, swap to currency, repay the loan
    /// @param marketId Market Id to use
    /// @param minCash_ Revert if we don't get at least minCash_ currency from the sale
    function unwind(
        Id marketId,
        uint256 assets,
        uint256 minCash_
    ) external onlyRole(OPERATOR_ROLE) {
        // Check that the market is already added
        _checkMarket(marketId);

        minExpected = minCash_; // Revert if we don't get at least minAssets_
        morpho.flashLoan(
            address(collateral),
            assets,
            abi.encode(marketId, UNWIND)
        );
        minExpected = 0;
    }

    /// @notice Moves collateral from marketFrom to marketTo
    /// @param marketFrom From which market
    /// @param marketTo To which market
    /// @param assets Amount of collateral to move
    function shiftCollateral(
        Id marketFrom,
        Id marketTo,
        uint256 assets
    ) external onlyRole(OPERATOR_ROLE) {
        // Check that the market is already added
        _checkMarket(marketFrom);
        _checkMarket(marketTo);

        _withdrawCollateral(marketFrom, assets);
        _supplyCollateral(marketTo, assets);
    }

    /// @notice Borrow cash on marketFrom to repay a loan on marketTo
    /// @param marketFrom From which market
    /// @param marketTo To which market
    /// @param cash Amount of currency to move (will be borrowed)
    function shiftCurrency(
        Id marketFrom,
        Id marketTo,
        uint256 cash
    ) external onlyRole(OPERATOR_ROLE) {
        // Check that the market is already added
        _checkMarket(marketFrom);
        _checkMarket(marketTo);

        _borrow(marketFrom, cash);
        _repay(marketTo, cash);
    }

    /// @notice Moves collateral from marketFrom to marketTo, borrow cash from marketTo to repay marketFrom
    function shiftPosition(
        Id marketFrom,
        Id marketTo,
        uint256 assets,
        uint256 cash
    ) external onlyRole(OPERATOR_ROLE) {
        // Check that the market is already added
        _checkMarket(marketFrom);
        _checkMarket(marketTo);

        morpho.supplyCollateral(
            morpho.idToMarketParams(marketTo),
            assets,
            address(this),
            abi.encode(marketFrom, marketTo, cash)
        );
    }

    function onMorphoFlashLoan(
        uint256 amount,
        bytes calldata data
    ) external onlyRole(CALLBACK_ROLE) {
        (Id marketId, bool wind) = abi.decode(data, (Id, bool));
        if (wind) {
            // Floashloaned currency
            uint256 collateral = _swapToCollateral(amount);
            _supplyCollateral(marketId, collateral);
            _borrow(marketId, amount);
            currency.approve(address(morpho), amount);
        } else {
            // Unwind, we flashloaded collateral
            uint256 cash = _swapToCurrency(amount);
            _repayCurrencyFallbackShares(marketId, cash);
            _withdrawCollateral(marketId, amount);
            collateral.approve(address(morpho), amount);
        }
    }

    /// @notice Callback called when we shift a position
    function onMorphoSupplyCollateral(
        uint256 assets,
        bytes calldata data
    ) external onlyRole(CALLBACK_ROLE) {
        (Id marketFrom, Id marketTo, uint256 cash) = abi.decode(
            data,
            (Id, Id, uint256)
        );
        _borrow(marketTo, cash);
        _repay(marketFrom, cash);
        _withdrawCollateral(marketFrom, assets);
        collateral.approve(address(morpho), assets);
    }

    /// @notice change the max slippage allowed with 1 ether = 100% sippage
    function setMaxSlippage(
        uint256 maxSlippage_
    ) external onlyRole(OPERATOR_ROLE) {
        require(maxSlippage_ <= 5, "Max slippage should be at max 0.05%");
        maxSlippage = maxSlippage_;
    }

    /// @notice change the max slippage allowed with 1 ether = 100% sippage
    function setMaxSlippageForce(
        uint256 maxSlippage_
    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
        require(maxSlippage_ <= 10000, "Max slippage should be at max 100%");
        maxSlippage = maxSlippage_;
    }

    function addMarket(Id marketId) external onlyRole(DEFAULT_ADMIN_ROLE) {
        require(marketsMap[marketId] == false, "Market already added");
        markets.push(marketId);
        marketsMap[marketId] = true;
    }

    function deleteMarket(Id marketId) external onlyRole(DEFAULT_ADMIN_ROLE) {
        require(marketsMap[marketId] == true, "Market isn't added yet");
        uint i = 0;
        for (; Id.unwrap(markets[i]) != Id.unwrap(marketId); i++) {}
        markets[i] = markets[markets.length - 1];
        markets.pop();
        delete marketsMap[marketId];
    }

    ////////////////////////////////
    // VIEW FUNCTIONS
    ////////////////////////////////

    /// @notice Returns the equity (collateral - debt) for a market
    function equity() public view returns (uint256) {
        uint256 _equity = 0;
        for (uint i = 0; i < markets.length; i++) {
            _equity += equity(markets[i]);
        }
        return _equity;
    }

    /// @notice Returns the equity (collateral - debt) for a market
    function equityAsCollateral() public view returns (uint256) {
        uint256 _equity = 0;
        for (uint i = 0; i < markets.length; i++) {
            _equity += equity(markets[i]);
        }
        return (_equity * ORACLE_FACTOR) / oracle.price();
    }

    /// @notice Returns the equity (collateral - debt) for a market
    function equity(Id marketId) public view returns (uint256) {
        PositionExt memory p = morphoReader.getPosition(
            marketId,
            address(this)
        );
        return p.collateralValue - p.borrowedAssets;
    }

    /// @notice Returns the equity expressed in collateral units
    function equityAsCollateral(Id marketId) public view returns (uint256) {
        return (equity(marketId) * ORACLE_FACTOR) / oracle.price();
    }

    /// @notice Returns the amount of collateral to be sale to repay a loan
    ///        include the worth case allowed slippage
    function collateralNeeded(uint256 cash) public view returns (uint256) {
        return
            (cash * ORACLE_FACTOR * SLIPPAGE_FACTOR) /
            (oracle.price() * (SLIPPAGE_FACTOR - maxSlippage));
    }

    /// @notice returen the price of cash collateral in the currency
    function priceCollateralInCurrency(
        uint256 assets
    ) public view returns (uint256 cash) {
        return (assets * oracle.price()) / ORACLE_FACTOR;
    }

    /// @notice Returns the minimal collateral expected from the swap of cash currency
    function minCollateral(uint256 cash) public view returns (uint256) {
        return
            (minExpected > 0)
                ? minExpected
                : (cash * ORACLE_FACTOR * (SLIPPAGE_FACTOR - maxSlippage)) /
                    (oracle.price() * SLIPPAGE_FACTOR);
    }

    /// @notice Returns the minimal cash expected from the swap of collateral
    function minCurrency(uint256 assets) public view returns (uint256) {
        return
            (minExpected > 0)
                ? minExpected
                : (assets * oracle.price() * (SLIPPAGE_FACTOR - maxSlippage)) /
                    (ORACLE_FACTOR * SLIPPAGE_FACTOR);
    }

    function isUnwinded(Id marketId) public view returns (bool) {
        Position memory position = morpho.position(marketId, address(this));
        return position.borrowShares == 0;
    }

    function sharesBorrowed(Id marketId) public view returns (uint256) {
        Position memory position = morpho.position(marketId, address(this));
        return position.borrowShares;
    }

    /// @notice Returns the available market liquidity
    function availableLiqudidity(Id marketId) public view returns (uint256) {
        MarketDataExt memory m = morphoReader.getMarketData(marketId);
        return m.totalSupplyAssets - m.totalBorrowAssets;
    }

    /// @notice Returns how much would be winded
    function availableToBorrow(Id marketId) public view returns (uint256) {
        uint256 _liquidity = availableLiqudidity(marketId);
        PositionExt memory p = morphoReader.getPosition(
            marketId,
            address(this)
        );

        // We assume we can borrow up to 95% LTV
        MarketParams memory params = morpho.idToMarketParams(marketId);
        uint256 _equity = p.collateralValue - p.borrowedAssets;
        uint256 maxExposure = _equity +
            ((_equity * (1 ether)) / (1 ether - params.lltv));

        if (maxExposure < p.borrowedAssets) return 0;

        return _min(_liquidity, maxExposure - p.borrowedAssets);
    }

    ///////////////////////////////////////////
    // EXPOSE LOW LEVEL FUNCTIONS
    ///////////////////////////////////////////

    function borrow(
        Id marketId,
        uint256 cash
    ) external onlyRole(OPERATOR_ROLE) {
        // Check that the market is already added
        _checkMarket(marketId);

        _borrow(marketId, cash);
    }

    function repay(Id marketId, uint256 cash) external onlyRole(OPERATOR_ROLE) {
        // Check that the market is already added
        _checkMarket(marketId);

        _repay(marketId, cash);
    }

    function repayShares(
        Id marketId,
        uint256 shares
    ) external onlyRole(OPERATOR_ROLE) {
        // Check that the market is already added
        _checkMarket(marketId);

        _repayShares(marketId, shares);
    }

    function supplyCollateral(
        Id marketId,
        uint256 assets
    ) external onlyRole(OPERATOR_ROLE) {
        // Check that the market is already added
        _checkMarket(marketId);

        _supplyCollateral(marketId, assets);
    }

    function withdrawCollateral(
        Id marketId,
        uint256 assets
    ) external onlyRole(OPERATOR_ROLE) {
        // Check that the market is already added
        _checkMarket(marketId);

        _withdrawCollateral(marketId, assets);
    }

    function withdrawAllCollateral(
        Id marketId
    ) external onlyRole(OPERATOR_ROLE) {
        // Check that the market is already added
        _checkMarket(marketId);

        Position memory pos = morpho.position(marketId, address(this));
        _withdrawCollateral(marketId, pos.collateral);
    }

    /// @notice Allows a slippage-checked swap from wstETH to WETH
    /// @param assets Collateral to swap, if 0 use balance of wstETH in the contract
    function swapToCurrency(uint256 assets) external onlyRole(OPERATOR_ROLE) {
        if (assets == 0) assets = collateral.balanceOf(address(this));
        _swapToCurrency(assets);
    }

    /// @notice Allows a slippage-checked from currency to collateral
    /// @param cash Amount of currency to swap, if 0 use balance of currency in the contract
    function swapToCollateral(uint256 cash) external onlyRole(OPERATOR_ROLE) {
        if (cash == 0) cash = currency.balanceOf(address(this));
        _swapToCollateral(cash);
    }

    ///////////////////////////////////////////
    // LOW LEVEL FUNCTIONS
    ///////////////////////////////////////////
    function _checkMarket(Id marketId) internal {
        require(marketsMap[marketId] == true, "Market is not allowed");
    }

    /// @param cash Amount of currency to borrow
    function _borrow(Id marketId, uint256 cash) internal {
        morpho.borrow(
            morpho.idToMarketParams(marketId),
            cash,
            0,
            address(this),
            address(this)
        );
    }

    /// @param cash Amount of currency to repay
    function _repay(Id marketId, uint256 cash) internal {
        currency.approve(address(morpho), cash);
        morpho.repay(
            morpho.idToMarketParams(marketId),
            cash,
            0,
            address(this),
            NULL_DATA
        );
    }

    /// @param shares 18 decimals
    function _repayShares(Id marketId, uint256 shares) internal {
        currency.approve(address(morpho), type(uint256).max);
        morpho.repay(
            morpho.idToMarketParams(marketId),
            0,
            shares,
            address(this),
            NULL_DATA
        );
        currency.approve(address(morpho), 0);
    }

    /// @notice will repay amount as asset of it doesn't work will repay all the borrow shares
    /// @param cash 18 decimals
    function _repayCurrencyFallbackShares(Id marketId, uint256 cash) internal {
        MarketParams memory marketParams = morpho.idToMarketParams(marketId);
        currency.approve(address(morpho), cash);
        try
            morpho.repay(marketParams, cash, 0, address(this), NULL_DATA)
        returns (uint256, uint256) {} catch {
            Position memory p = morpho.position(marketId, address(this));
            if (p.borrowShares > 0)
                morpho.repay(
                    marketParams,
                    0,
                    p.borrowShares,
                    address(this),
                    NULL_DATA
                );
            // If there is some remain we put it back as collateral
            uint256 dust = currency.balanceOf(address(this));
            minExpected = 0; // Disable expectation and fallback on maxSlippage
            uint256 dustCollateral = _swapToCollateral(dust);
            _supplyCollateral(marketId, dustCollateral);
        }
    }

    /// @param marketId market to use
    /// @param assets in collateral term
    function _supplyCollateral(Id marketId, uint256 assets) internal {
        collateral.approve(address(morpho), assets);
        morpho.supplyCollateral(
            morpho.idToMarketParams(marketId),
            assets,
            address(this),
            NULL_DATA
        );
    }

    /// @param marketId market to use
    /// @param assets in collateral term
    function _withdrawCollateral(Id marketId, uint256 assets) internal {
        morpho.withdrawCollateral(
            morpho.idToMarketParams(marketId),
            assets,
            address(this),
            address(this)
        );
    }

    /// @notice Swap assets collateral in the contract for currency. Check for slippage.
    /// @param assets Quantity of collateral to sell
    /// @return cash Quantity of currency obtained
    function _swapToCurrency(uint256 assets) internal returns (uint256 cash) {
        collateral.approve(address(swapper), assets);
        cash = swapper.sell(collateral, currency, assets);
        require(
            cash > minCurrency(assets),
            "Less assets generated than expected"
        );
        return cash;
    }

    /// @notice Swap the WETH in the contract to wstETH. Check for slippage.
    function _swapToCollateral(uint256 cash) internal returns (uint256 assets) {
        currency.approve(address(swapper), cash);
        assets = swapper.sell(currency, collateral, cash);
        require(
            assets > minCollateral(cash),
            "Less collateral generated than expected"
        );
        return assets;
    }

    function _max(uint256 a, uint256 b) internal pure returns (uint256) {
        return a >= b ? a : b;
    }

    function _min(uint256 a, uint256 b) internal pure returns (uint256) {
        return a <= b ? a : b;
    }

    ///////////////////////////////////////////
    // RECOVER AND UNSTUCK FUNCTION
    ///////////////////////////////////////////
    function recoverLost(
        IERC20 token,
        address where,
        uint256 amount
    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
        token.transfer(where, amount);
    }

    function recover(
        IERC20 token,
        address where
    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
        token.transfer(where, token.balanceOf(address(this)));
    }

    function recoverETH() external payable onlyRole(DEFAULT_ADMIN_ROLE) {
        (bool os, ) = payable(msg.sender).call{value: address(this).balance}(
            ""
        );
        require(os);
    }

    function approve(
        IERC20 token,
        address where,
        uint256 amount
    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
        token.approve(where, amount);
    }
}
