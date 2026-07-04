// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {IERC20} from "../lib/openzeppelin-contracts/contracts/interfaces/IERC20.sol";
import {IERC4626} from "../lib/openzeppelin-contracts/contracts/interfaces/IERC4626.sol";
import "../lib/openzeppelin-contracts/contracts/access/AccessControl.sol";
import {IOracle} from "../lib/morpho-blue/src/interfaces/IOracle.sol";
import {IMorpho, Market, Position, MarketParams, Id} from "../lib/morpho-blue/src/interfaces/IMorpho.sol";
import {IMorphoFlashLoanCallback} from "../lib/morpho-blue/src/interfaces/IMorphoCallbacks.sol";
import {MathLib} from "../lib/morpho-blue/src/libraries/MathLib.sol";
import {MorphoBalancesLib} from "../lib/morpho-blue/src/libraries/periphery/MorphoBalancesLib.sol";

import {IChainlinkOracle} from "../src/interfaces/IChainlinkOracle.sol";
import {ISwapper} from "../src/interfaces/ISwapper.sol";
import {IMorphoReader, MarketDataExt, PositionExt} from "../src/interfaces/IMorphoReader.sol";
import {IWsteth} from "../src/interfaces/IWsteth.sol";

/**
 * @title Bot that leverage borrows WETH against WSTETH
 * @notice The underlying market should use a fixed price oracle.
 * @notice The contract will use up to 20x leverage (95% ltv)
 */
contract WstethBot is AccessControl, IMorphoFlashLoanCallback {
    event Wind(uint256 equity, uint256 exposure, uint256 toBorrow);
    event Unwind(
        uint256 borrowShares,
        uint256 borrowAmount,
        uint256 collateral
    );

    // Create a new role identifier for the minter role
    bytes32 public constant OPERATOR_ROLE = keccak256("OPERATOR_ROLE");
    bytes32 public constant CALLBACK_ROLE = keccak256("CALLBACK_ROLE");

    IERC20 public immutable weth =
        IERC20(0xC02aaA39b223FE8D0A0e5C4F27eAD9083C756Cc2);
    IWsteth public immutable wsteth =
        IWsteth(0x7f39C581F595B53c5cb19bD0b3f8dA6c935E2Ca0);
    IMorpho public immutable morpho =
        IMorpho(0xBBBBBbbBBb9cC5e90e3b3Af64bdAF62C37EEFFCb);
    IMorphoReader public immutable morphoReader;
    ISwapper public immutable swapper;

    address private immutable STEAKHOUSE_FUND =
        0x44Ac1031d245D965fe5F016da9Ba643CD79F95f3;
    address private immutable STEAKHOUSE_SIGNER_1 =
        0x0D61C8b6CA9669A36F351De3AE335e9689dd9C5b;
    address private immutable STEAKHOUSE_BOT =
        0xfeed46c11F57B7126a773EeC6ae9cA7aE1C03C9a;
    address private immutable STEAKHOUSE_MORPHO =
        0x255c7705e8BB334DfCae438197f7C4297988085a;

    Id public immutable MARKET_ID;

    uint256 public immutable WEI_FACTOR = 10 ** 18;
    uint256 public maxSlippage = 0.0005 ether; // in pct, so 5bps
    uint256 public minExpected = 0 ether; // MEV protection where sender can say how much min after swaps
    uint256 public constant DUST = 10 ** 12;
    bytes public constant NULL_DATA = "";
    bool internal _wind = true;

    MarketParams public marketParams;

    constructor(ISwapper swapper_, Id marketId, IMorphoReader reader_) {
        MARKET_ID = marketId;
        swapper = swapper_;
        morphoReader = reader_;

        _grantRole(DEFAULT_ADMIN_ROLE, STEAKHOUSE_FUND);
        _grantRole(DEFAULT_ADMIN_ROLE, STEAKHOUSE_SIGNER_1);

        _grantRole(OPERATOR_ROLE, STEAKHOUSE_FUND);
        _grantRole(OPERATOR_ROLE, STEAKHOUSE_SIGNER_1);
        _grantRole(OPERATOR_ROLE, STEAKHOUSE_MORPHO);
        _grantRole(OPERATOR_ROLE, STEAKHOUSE_BOT);
        _grantRole(OPERATOR_ROLE, msg.sender);

        // Only Morpho and DssFlashLoan can call the callback
        _grantRole(CALLBACK_ROLE, address(morpho));

        // Grant admin to change permissions
        _setRoleAdmin(OPERATOR_ROLE, DEFAULT_ADMIN_ROLE);
        _setRoleAdmin(CALLBACK_ROLE, DEFAULT_ADMIN_ROLE);

        // Allow the Steakhouse fund multisig to manage exposure in case it's needed.
        marketParams = morpho.idToMarketParams(MARKET_ID);
    }

    /******************************************
     * EXPOSE HIGH LEVEL FUNCTIONS
     ******************************************/

    /// @notice borrow assets ETH, swap in wstETH and use it as collateral
    function wind(uint256 assets) external onlyRole(OPERATOR_ROLE) {
        _wind = true;
        morpho.flashLoan(address(weth), assets, NULL_DATA);
    }

    /// @notice remove wstETH collateral, swap to ETH, repay the loan
    function unwind(uint256 collateral) external onlyRole(OPERATOR_ROLE) {
        _wind = false;
        morpho.flashLoan(address(wsteth), collateral, NULL_DATA);
    }

    /// @notice borrow assets ETH, swap in wstETH and use it as collateral
    /// @param minCollateral_ Revert if we don't get at least minCollateral_
    function wind(
        uint256 assets,
        uint256 minCollateral_
    ) external onlyRole(OPERATOR_ROLE) {
        _wind = true;
        minExpected = minCollateral_; // Revert if we don't get at least minCollateral_
        morpho.flashLoan(address(weth), assets, NULL_DATA);
        minExpected = 0;
    }

    /// @notice remove wstETH collateral, swap to ETH, repay the loan
    /// @param minAssets_ Revert if we don't get at least minAssets_
    function unwind(
        uint256 collateral,
        uint256 minAssets_
    ) external onlyRole(OPERATOR_ROLE) {
        _wind = false;
        minExpected = minAssets_; // Revert if we don't get at least minAssets_
        morpho.flashLoan(address(wsteth), collateral, NULL_DATA);
        minExpected = 0;
    }

    function onMorphoFlashLoan(
        uint256 amount,
        bytes calldata
    ) external onlyRole(CALLBACK_ROLE) {
        if (_wind) {
            // Floashloaned WETH
            uint256 collateral = _swapToCollateral(amount);
            _supplyCollateral(collateral);
            _borrow(amount);
            weth.approve(address(morpho), amount);
        } else {
            // Unwind, we flashloaded wstEth
            uint256 assets = _swapToAssets(amount);
            _repayAssetsFallbackShares(assets);
            _withdrawCollaral(amount);
            wsteth.approve(address(morpho), amount);
        }
    }

    /// @notice change the max slippage allowed with 1 ether = 100% sippage
    function setMaxSlippage(
        uint256 maxSlippage_
    ) external onlyRole(OPERATOR_ROLE) {
        require(
            maxSlippage_ < 0.0005 ether,
            "Max slippage should be at max 0.05%"
        );
        maxSlippage = maxSlippage_;
    }

    /// @notice change the max slippage allowed with 1 ether = 100% sippage
    function setMaxSlippageForce(
        uint256 maxSlippage_
    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
        require(maxSlippage_ <= 1 ether, "Max slippage should be at max 100%");
        maxSlippage = maxSlippage_;
    }

    /******************************************
     * VIEW FUNCTIONS
     ******************************************/

    /**
     * @notice Return the equity in morpho blue (collateral - debt) in ETH unit
     */
    function equity() public view returns (uint256) {
        PositionExt memory p = morphoReader.getPosition(
            MARKET_ID,
            address(this)
        );
        return p.collateralValue - p.borrowedAssets;
    }

    /**
     * @notice Return the equity in morpho blue (collateral - debt) in wstETH unit
     */
    function equityInWsteth() public view returns (uint256) {
        PositionExt memory p = morphoReader.getPosition(
            MARKET_ID,
            address(this)
        );
        return p.collateral - wsteth.getWstETHByStETH(p.borrowedAssets);
    }

    /**
     * @notice Returns the amount of collateral (wstETH) to be used to repay a loan
     *         include the worth case allowed slippage
     */
    function collateralNeeded(uint256 assets) public view returns (uint256) {
        return
            (wsteth.getWstETHByStETH(assets) * 1 ether) /
            (1 ether - maxSlippage);
    }

    /// @notice Returns the minimul collateral expected from the swap of assets
    function minCollateral(uint256 assets) public view returns (uint256) {
        return
            (minExpected > 0)
                ? minExpected
                : (wsteth.getWstETHByStETH(assets) * (1 ether - maxSlippage)) /
                    1 ether;
    }

    /// @notice Returns the minimul assets expected from the swap of collateral
    function minAssets(uint256 collateral) public view returns (uint256) {
        return
            (minExpected > 0)
                ? minExpected
                : (wsteth.getStETHByWstETH(collateral) *
                    (1 ether - maxSlippage)) / 1 ether;
    }

    /// @notice Returns true if a call to wind is possible
    function canWind() public view returns (bool) {
        return availableLiqudidity() > 0;
    }

    /// @notice Returns the available market liquidity
    function availableLiqudidity() public view returns (uint256) {
        MarketDataExt memory m = morphoReader.getMarketData(MARKET_ID);
        return m.totalSupplyAssets - m.totalBorrowAssets;
    }

    /// @notice Returns how much would be winded
    function availableToBorrow() public view returns (uint256) {
        uint256 _liquidity = availableLiqudidity();
        PositionExt memory p = morphoReader.getPosition(
            MARKET_ID,
            address(this)
        );

        // We assume we can borrow up to 95% LTV
        uint256 _equity = p.collateralValue - p.borrowedAssets;
        uint256 maxExposure = 19 * _equity;

        if (maxExposure < p.borrowedAssets) return 0;

        return _min(_liquidity, maxExposure - p.borrowedAssets);
    }

    function isUnwinded() public view returns (bool) {
        Position memory position = morpho.position(MARKET_ID, address(this));
        return position.borrowShares == 0;
    }

    function sharesBorrowed() public view returns (uint256) {
        Position memory position = morpho.position(MARKET_ID, address(this));
        return position.borrowShares;
    }

    /******************************************
     * EXPOSE LOW LEVEL FUNCTIONS
     ******************************************/

    function borrow(uint256 amount) external onlyRole(OPERATOR_ROLE) {
        _borrow(amount);
    }

    function repayAssets(uint256 amount) external onlyRole(OPERATOR_ROLE) {
        _repayAssets(amount);
    }

    function repayShares(uint256 amount) external onlyRole(OPERATOR_ROLE) {
        _repayShares(amount);
    }

    function supplyCollateral(uint256 amount) external onlyRole(OPERATOR_ROLE) {
        _supplyCollateral(amount);
    }

    function withdrawCollateral(
        uint256 amount
    ) external onlyRole(OPERATOR_ROLE) {
        _withdrawCollaral(amount);
    }

    function withdrawAllCollateral(
        uint256 amount
    ) external onlyRole(OPERATOR_ROLE) {
        _withdrawCollaral(amount);
    }

    /// @notice Allows a slippage-checked swap from wstETH to WETH
    /// @param collateral Collateral to swap, if 0 use balance of wstETH in the contract
    function swapToAssets(uint256 collateral) external onlyRole(OPERATOR_ROLE) {
        if (collateral == 0) collateral = wsteth.balanceOf(address(this));
        _swapToAssets(collateral);
    }

    /// @notice Allows a slippage-checked from WETH to wstETH
    /// @param assets Asset (WETH) to swap, if 0 use balance of WETH in the contract
    function swapToCollateral(uint256 assets) external onlyRole(OPERATOR_ROLE) {
        if (assets == 0) assets = weth.balanceOf(address(this));
        _swapToCollateral(assets);
    }

    /******************************************
     * LOW LEVEL FUNCTIONS
     ******************************************
    /**
     * @param amount WETH so 18 decimals
     */
    function _borrow(uint256 amount) internal {
        morpho.borrow(marketParams, amount, 0, address(this), address(this));
    }

    /**
     * @param amount WETH so 18 decimals
     */
    function _repayAssets(uint256 amount) internal {
        weth.approve(address(morpho), amount);
        morpho.repay(marketParams, amount, 0, address(this), NULL_DATA);
    }

    /**
     * @param amount 18 decimals
     */
    function _repayShares(uint256 amount) internal {
        weth.approve(address(morpho), type(uint256).max);
        morpho.repay(marketParams, 0, amount, address(this), NULL_DATA);
        weth.approve(address(morpho), 0);
    }

    /**
     * @notice will repay amount as asset of it doesn't work will repay all the borrow shares
     * @param assets 18 decimals
     */
    function _repayAssetsFallbackShares(uint256 assets) internal {
        weth.approve(address(morpho), assets);
        try
            morpho.repay(marketParams, assets, 0, address(this), NULL_DATA)
        returns (uint256, uint256) {} catch {
            Position memory p = morpho.position(MARKET_ID, address(this));
            if (p.borrowShares > 0)
                morpho.repay(
                    marketParams,
                    0,
                    p.borrowShares,
                    address(this),
                    NULL_DATA
                );
            // If there is some remain we put it back as collateral
            uint256 dust = weth.balanceOf(address(this));
            minExpected = 0; // Disable expectation and fallback on maxSlippage
            uint256 dustCollateral = _swapToCollateral(dust);
            _supplyCollateral(dustCollateral);
        }
    }

    /**
     * @param amount in wstETH term so 18 decimals
     */
    function _supplyCollateral(uint256 amount) internal {
        wsteth.approve(address(morpho), amount);
        morpho.supplyCollateral(marketParams, amount, address(this), NULL_DATA);
    }

    /**
     * @param amount in wstETH term so 18 decimals
     */
    function _withdrawCollaral(uint256 amount) internal {
        morpho.withdrawCollateral(
            marketParams,
            amount,
            address(this),
            address(this)
        );
    }

    /// @notice Swap the wstETH in the contract to WETH. Check for slippage.
    function _swapToAssets(uint256 collateral) internal returns (uint256) {
        wsteth.approve(address(swapper), collateral);
        uint256 assets = swapper.sell(wsteth, weth, collateral);
        require(
            assets > minAssets(collateral),
            "Less assets generated than expected"
        );
        return assets;
    }

    /// @notice Swap the WETH in the contract to wstETH. Check for slippage.
    function _swapToCollateral(uint256 assets) internal returns (uint256) {
        weth.approve(address(swapper), assets);
        uint256 collateral = swapper.sell(weth, wsteth, assets);
        require(
            collateral > minCollateral(assets),
            "Less collateral generated than expected"
        );
        return collateral;
    }

    function _max(uint256 a, uint256 b) internal pure returns (uint256) {
        return a >= b ? a : b;
    }

    function _min(uint256 a, uint256 b) internal pure returns (uint256) {
        return a <= b ? a : b;
    }

    /******************************************
     * RECOVER AND UNSTUCK FUNCTION
     ******************************************/
    function recoverLost(
        IERC20 token,
        address where,
        uint256 amount
    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
        token.transfer(where, amount);
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
