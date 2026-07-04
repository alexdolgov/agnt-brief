// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {Helpers} from "src/libraries/Helpers.sol";
import {Id, Market, Position, MarketParams, IMorpho, IIrm, IOracle} from "src/interfaces/external/IMorpho.sol";
import {Address} from "@openzeppelin/contracts/utils/Address.sol";

library MorphoMathLib {
    /// @dev Returns (`x` * `y`) / `d` rounded up.
    function mulDivUp(uint256 x, uint256 y, uint256 d) internal pure returns (uint256) {
        return (x * y + (d - 1)) / d;
    }
}

library MorphoSharesMathLib {
    using MorphoMathLib for uint256;

    /// @dev The number of virtual shares has been chosen low enough to prevent overflows, and high enough to ensure
    /// high precision computations.
    /// @dev Virtual shares can never be redeemed for the assets they are entitled to, but it is assumed the share price
    /// stays low enough not to inflate these assets to a significant value.
    /// @dev Warning: The assets to which virtual borrow shares are entitled behave like unrealizable bad debt.
    uint256 internal constant VIRTUAL_SHARES = 1e6;

    /// @dev A number of virtual assets of 1 enforces a conversion rate between shares and assets when a market is
    /// empty.
    uint256 internal constant VIRTUAL_ASSETS = 1;

    /// @dev Calculates the value of `shares` quoted in assets, rounding up.
    function toAssetsUp(uint256 shares, uint256 totalAssets, uint256 totalShares) internal pure returns (uint256) {
        return shares.mulDivUp(totalAssets + VIRTUAL_ASSETS, totalShares + VIRTUAL_SHARES);
    }
}

/// @title Component delegate calls wrapper
library MorphoDelegateCalls {
    using Address for address;

    function delegateDeposit(Morpho morpho_, Id marketId_, uint256 amount_) internal {
        address(morpho_).functionDelegateCall(abi.encodeCall(Morpho.deposit, (marketId_, amount_)));
    }

    function delegateBorrow(Morpho morpho_, Id marketId_, uint256 amount_) internal {
        address(morpho_).functionDelegateCall(abi.encodeCall(Morpho.borrow, (marketId_, amount_)));
    }

    function delegateRepay(Morpho morpho_, Id marketId_, uint256 amount_) internal {
        address(morpho_).functionDelegateCall(abi.encodeCall(Morpho.repay, (marketId_, amount_)));
    }

    function delegateWithdraw(Morpho morpho_, Id marketId_, uint256 amount_) internal returns (uint256 _withdrawn) {
        bytes memory _ret = address(morpho_).functionDelegateCall(
            abi.encodeCall(Morpho.withdraw, (marketId_, amount_))
        );
        return abi.decode(_ret, (uint256));
    }
}

/// @title Morpho component
contract Morpho {
    using SafeERC20 for IERC20;
    using MorphoSharesMathLib for uint256;

    uint256 constant ORACLE_PRICE_SCALE = 1e36;
    IMorpho public immutable MORPHO;

    error AmountIsZero();
    error AddressIsNull();

    constructor(IMorpho morpho_) {
        if (address(morpho_) == address(0)) revert AddressIsNull();

        MORPHO = morpho_;
    }

    /// @notice Get market tokens
    /// @param marketId_ The market id
    function getTokens(Id marketId_) external view returns (address _collateralToken, address _borrowToken) {
        MarketParams memory _params = MORPHO.idToMarketParams(marketId_);
        return (_params.collateralToken, _params.loanToken);
    }

    /// @notice Deposit
    /// @param amount_ The deposit amount  (Use `MAX_UINT256` to deposit all balance)
    function deposit(Id marketId_, uint256 amount_) external {
        MarketParams memory _params = MORPHO.idToMarketParams(marketId_);
        IERC20 _asset = IERC20(_params.collateralToken);

        amount_ = Helpers.amountOrAllBalanceIfMax(_asset, amount_);

        if (amount_ == 0) revert AmountIsZero();

        _asset.forceApprove(address(MORPHO), amount_);
        MORPHO.supplyCollateral({marketParams: _params, assets: amount_, onBehalf: address(this), data: ""});
        _asset.forceApprove(address(MORPHO), 0);
    }

    /// @notice Borrow
    /// @param marketId_ The market id
    /// @param amount_ The amount to borrow
    function borrow(Id marketId_, uint256 amount_) external {
        if (amount_ == 0) revert AmountIsZero();

        MORPHO.borrow({
            marketParams: MORPHO.idToMarketParams(marketId_),
            assets: amount_,
            shares: 0,
            onBehalf: address(this),
            receiver: address(this)
        });
    }

    /// @notice Repay
    /// @param marketId_ The market id
    /// @param amount_ The amount to repay (Use `MAX_UINT256` to repay all debt or all balance - which is lower)
    function repay(Id marketId_, uint256 amount_) external {
        uint256 _shares;

        uint256 _borrowedAmount = borrowedAmount(marketId_, address(this));

        MarketParams memory _params = MORPHO.idToMarketParams(marketId_);
        IERC20 _asset = IERC20(_params.loanToken);

        // Note: Due to how Morpho rounds shares, if we repay all borrowed assets, it end-up if 1 wei share debt.
        // Which doesn't allow user to withdraw all collateral. To workaround that, if user wants to repay all, we repay shares instead.
        if (amount_ == type(uint256).max || amount_ == _borrowedAmount) {
            amount_ = 0;
            _shares = MORPHO.position(marketId_, address(this)).borrowShares;
            _asset.forceApprove(address(MORPHO), _borrowedAmount);
        } else {
            _asset.forceApprove(address(MORPHO), amount_);
        }

        if (amount_ == 0 && _shares == 0) revert AmountIsZero();

        MORPHO.repay({marketParams: _params, assets: amount_, shares: _shares, onBehalf: address(this), data: ""});
        _asset.forceApprove(address(MORPHO), 0);
    }

    /// @notice Withdraw
    /// @param marketId_ The market id
    /// @param amount_ The amount to withdraw (Use `MAX_UINT256` to withdraw all)
    /// @return _withdrawn The withdrawn amount
    function withdraw(Id marketId_, uint256 amount_) external returns (uint256 _withdrawn) {
        if (amount_ == type(uint256).max) {
            amount_ = MORPHO.position(marketId_, address(this)).collateral;
        }

        if (amount_ == 0) revert AmountIsZero();

        MORPHO.withdrawCollateral({
            marketParams: MORPHO.idToMarketParams(marketId_),
            assets: amount_,
            onBehalf: address(this),
            receiver: address(this)
        });

        return amount_;
    }

    function interestRateOf(Id marketId_) external view returns (uint256) {
        MarketParams memory _marketParams = MORPHO.idToMarketParams(marketId_);

        uint256 _irPerSecond = IIrm(_marketParams.irm).borrowRateView({
            marketParams: _marketParams,
            market: MORPHO.market(marketId_)
        });
        return _irPerSecond * 365.25 days;
    }

    function collateralFactorOf(Id marketId_) external view returns (uint256 _cf) {
        return MORPHO.idToMarketParams(marketId_).lltv;
    }

    function healthFactorOf(Id marketId_, address user_) external view returns (uint256 _healthFactor) {
        MarketParams memory _marketParams = MORPHO.idToMarketParams(marketId_);

        Market memory _market = MORPHO.market(marketId_);

        Position memory _position = MORPHO.position(marketId_, user_);

        uint256 _collateralPrice = IOracle(_marketParams.oracle).price(); // denominated in borrow token

        uint256 _borrowed = (uint256(_position.borrowShares) * _market.totalBorrowAssets) / _market.totalBorrowShares;

        uint256 _collateralInBorrowToken = (uint256(_position.collateral) * _collateralPrice) / ORACLE_PRICE_SCALE;

        return (_collateralInBorrowToken * _marketParams.lltv) / _borrowed;
    }

    function depositedAmount(Id marketId_, address user_) external view returns (uint256) {
        return MORPHO.position(marketId_, user_).collateral;
    }

    function borrowedAmount(Id marketId_, address user_) public view returns (uint256 _borrowed) {
        Position memory _position = MORPHO.position(marketId_, user_);
        Market memory _market = MORPHO.market(marketId_);
        _borrowed = uint256(_position.borrowShares).toAssetsUp(_market.totalBorrowAssets, _market.totalBorrowShares);
    }
}
