// ============================================================
// FILE: @openzeppelin/contracts-upgradeable/math/SafeMathUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity >=0.6.0 <0.8.0;

/**
 * @dev Wrappers over Solidity's arithmetic operations with added overflow
 * checks.
 *
 * Arithmetic operations in Solidity wrap on overflow. This can easily result
 * in bugs, because programmers usually assume that an overflow raises an
 * error, which is the standard behavior in high level programming languages.
 * `SafeMath` restores this intuition by reverting the transaction when an
 * operation overflows.
 *
 * Using this library instead of the unchecked operations eliminates an entire
 * class of bugs, so it's recommended to use it always.
 */
library SafeMathUpgradeable {
    /**
     * @dev Returns the addition of two unsigned integers, reverting on
     * overflow.
     *
     * Counterpart to Solidity's `+` operator.
     *
     * Requirements:
     *
     * - Addition cannot overflow.
     */
    function add(uint256 a, uint256 b) internal pure returns (uint256) {
        uint256 c = a + b;
        require(c >= a, "SafeMath: addition overflow");

        return c;
    }

    /**
     * @dev Returns the subtraction of two unsigned integers, reverting on
     * overflow (when the result is negative).
     *
     * Counterpart to Solidity's `-` operator.
     *
     * Requirements:
     *
     * - Subtraction cannot overflow.
     */
    function sub(uint256 a, uint256 b) internal pure returns (uint256) {
        return sub(a, b, "SafeMath: subtraction overflow");
    }

    /**
     * @dev Returns the subtraction of two unsigned integers, reverting with custom message on
     * overflow (when the result is negative).
     *
     * Counterpart to Solidity's `-` operator.
     *
     * Requirements:
     *
     * - Subtraction cannot overflow.
     */
    function sub(uint256 a, uint256 b, string memory errorMessage) internal pure returns (uint256) {
        require(b <= a, errorMessage);
        uint256 c = a - b;

        return c;
    }

    /**
     * @dev Returns the multiplication of two unsigned integers, reverting on
     * overflow.
     *
     * Counterpart to Solidity's `*` operator.
     *
     * Requirements:
     *
     * - Multiplication cannot overflow.
     */
    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
        // Gas optimization: this is cheaper than requiring 'a' not being zero, but the
        // benefit is lost if 'b' is also tested.
        // See: https://github.com/OpenZeppelin/openzeppelin-contracts/pull/522
        if (a == 0) {
            return 0;
        }

        uint256 c = a * b;
        require(c / a == b, "SafeMath: multiplication overflow");

        return c;
    }

    /**
     * @dev Returns the integer division of two unsigned integers. Reverts on
     * division by zero. The result is rounded towards zero.
     *
     * Counterpart to Solidity's `/` operator. Note: this function uses a
     * `revert` opcode (which leaves remaining gas untouched) while Solidity
     * uses an invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function div(uint256 a, uint256 b) internal pure returns (uint256) {
        return div(a, b, "SafeMath: division by zero");
    }

    /**
     * @dev Returns the integer division of two unsigned integers. Reverts with custom message on
     * division by zero. The result is rounded towards zero.
     *
     * Counterpart to Solidity's `/` operator. Note: this function uses a
     * `revert` opcode (which leaves remaining gas untouched) while Solidity
     * uses an invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function div(uint256 a, uint256 b, string memory errorMessage) internal pure returns (uint256) {
        require(b > 0, errorMessage);
        uint256 c = a / b;
        // assert(a == b * c + a % b); // There is no case in which this doesn't hold

        return c;
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers. (unsigned integer modulo),
     * Reverts when dividing by zero.
     *
     * Counterpart to Solidity's `%` operator. This function uses a `revert`
     * opcode (which leaves remaining gas untouched) while Solidity uses an
     * invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function mod(uint256 a, uint256 b) internal pure returns (uint256) {
        return mod(a, b, "SafeMath: modulo by zero");
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers. (unsigned integer modulo),
     * Reverts with custom message when dividing by zero.
     *
     * Counterpart to Solidity's `%` operator. This function uses a `revert`
     * opcode (which leaves remaining gas untouched) while Solidity uses an
     * invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function mod(uint256 a, uint256 b, string memory errorMessage) internal pure returns (uint256) {
        require(b != 0, errorMessage);
        return a % b;
    }
}

// ============================================================
// FILE: @openzeppelin/contracts-upgradeable/token/ERC20/IERC20Upgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity >=0.6.0 <0.8.0;

/**
 * @dev Interface of the ERC20 standard as defined in the EIP.
 */
interface IERC20Upgradeable {
    /**
     * @dev Returns the amount of tokens in existence.
     */
    function totalSupply() external view returns (uint256);

    /**
     * @dev Returns the amount of tokens owned by `account`.
     */
    function balanceOf(address account) external view returns (uint256);

    /**
     * @dev Moves `amount` tokens from the caller's account to `recipient`.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transfer(address recipient, uint256 amount) external returns (bool);

    /**
     * @dev Returns the remaining number of tokens that `spender` will be
     * allowed to spend on behalf of `owner` through {transferFrom}. This is
     * zero by default.
     *
     * This value changes when {approve} or {transferFrom} are called.
     */
    function allowance(address owner, address spender) external view returns (uint256);

    /**
     * @dev Sets `amount` as the allowance of `spender` over the caller's tokens.
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
    function approve(address spender, uint256 amount) external returns (bool);

    /**
     * @dev Moves `amount` tokens from `sender` to `recipient` using the
     * allowance mechanism. `amount` is then deducted from the caller's
     * allowance.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transferFrom(address sender, address recipient, uint256 amount) external returns (bool);

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
}

// ============================================================
// FILE: contracts/helper/interface/IDForceLending.sol
// ============================================================

//SPDX-License-Identifier: MIT
pragma solidity 0.6.12;

import "@openzeppelin/contracts-upgradeable/token/ERC20/IERC20Upgradeable.sol";

import "../../interface/IInterestRateModelInterface.sol";

interface IInterestRateModelHelper is IInterestRateModelInterface {
    function blocksPerYear() external view returns (uint256);

    function base() external view returns (uint256);

    function optimal() external view returns (uint256);

    function slope_1() external view returns (uint256);

    function slope_2() external view returns (uint256);
}

interface IControllerHelper {
    function getAlliTokens() external view returns (IiTokenHelper[] memory);

    function getEnteredMarkets(address _account)
        external
        view
        returns (IiTokenHelper[] memory);

    function getBorrowedAssets(address _account)
        external
        view
        returns (IiTokenHelper[] memory);

    function hasEnteredMarket(address _account, IiTokenHelper _iToken)
        external
        view
        returns (bool);

    function hasBorrowed(address _account, IiTokenHelper _iToken)
        external
        view
        returns (bool);

    function priceOracle() external view returns (IPriceOracleHelper);

    function markets(IiTokenHelper _asset)
        external
        view
        returns (
            uint256,
            uint256,
            uint256,
            uint256,
            bool,
            bool,
            bool
        );

    function calcAccountEquity(address _account)
        external
        view
        returns (
            uint256,
            uint256,
            uint256,
            uint256
        );

    function closeFactorMantissa() external view returns (uint256);

    function liquidationIncentiveMantissa() external view returns (uint256);

    function rewardDistributor()
        external
        view
        returns (IRewardDistributorHelper);
}

interface IiTokenHelper {
    function decimals() external view returns (uint8);

    function balanceOf(address _account) external view returns (uint256);

    function totalSupply() external view returns (uint256);

    function isSupported() external view returns (bool);

    function isiToken() external view returns (bool);

    function underlying() external view returns (IERC20Upgradeable);

    function getCash() external view returns (uint256);

    function supplyRatePerBlock() external view returns (uint256);

    function borrowRatePerBlock() external view returns (uint256);

    function balanceOfUnderlying(address _account) external returns (uint256);

    function borrowBalanceStored(address _account)
        external
        view
        returns (uint256);

    function borrowBalanceCurrent(address _account) external returns (uint256);

    function totalBorrowsCurrent() external returns (uint256);

    function totalBorrows() external view returns (uint256);

    function totalReserves() external view returns (uint256);

    function exchangeRateStored() external view returns (uint256);

    function exchangeRateCurrent() external returns (uint256);

    function updateInterest() external returns (bool);

    function controller() external view returns (IControllerHelper);

    function interestRateModel()
        external
        view
        returns (IInterestRateModelHelper);

    function reserveRatio() external view returns (uint256);

    function originationFeeRatio() external view returns (uint256);

    function collateral() external view returns (IiTokenHelper);
}

interface IRewardDistributorHelper {
    function updateDistributionState(IiTokenHelper _iToken, bool _isBorrow)
        external;

    function updateReward(
        IiTokenHelper _iToken,
        address _account,
        bool _isBorrow
    ) external;

    function updateRewardBatch(
        address[] memory _holders,
        IiTokenHelper[] memory _iTokens
    ) external;

    function distributionSpeed(IiTokenHelper _iToken)
        external
        view
        returns (uint256);

    function distributionSupplySpeed(IiTokenHelper _iToken)
        external
        view
        returns (uint256);

    function reward(address _account) external view returns (uint256);

    function rewardToken() external view returns (IiTokenHelper);
}

interface IPriceOracleHelper {
    /**
     * @notice Get the underlying price of a iToken asset
     * @param _iToken The iToken to get the underlying price of
     * @return The underlying asset price mantissa (scaled by 1e18).
     *  Zero means the price is unavailable.
     */
    function getUnderlyingPrice(IiTokenHelper _iToken)
        external
        returns (uint256);

    /**
     * @notice Get the price of a underlying asset
     * @param _iToken The iToken to get the underlying price of
     * @return The underlying asset price mantissa (scaled by 1e18).
     *  Zero means the price is unavailable and whether the price is valid.
     */
    function getUnderlyingPriceAndStatus(IiTokenHelper _iToken)
        external
        returns (uint256, bool);

    function getAssetPriceStatus(IiTokenHelper _iToken)
        external
        view
        returns (bool);
}

// ============================================================
// FILE: contracts/helper/LendingHelper.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity 0.6.12;

import "../library/SafeRatioMath.sol";

import "./interface/IDForceLending.sol";

/**
 * @notice The contract provides asset and user data in the lending market
 * @author dForce
 */
contract LendingHelper {
    using SafeMathUpgradeable for uint256;
    using SafeRatioMath for uint256;

    uint256 public constant USDPrice = 1 ether;

    function getAccountBorrowStatus(
        IControllerHelper controller,
        address _account
    ) public view returns (bool) {
        IiTokenHelper[] memory _iTokens = controller.getAlliTokens();
        for (uint256 i = 0; i < _iTokens.length; i++)
            if (_iTokens[i].borrowBalanceStored(_account) > 0) return true;

        return false;
    }

    struct AccountEquityLocalVars {
        IiTokenHelper[] collateralITokens;
        IiTokenHelper[] borrowedITokens;
        uint256 collateralFactor;
        uint256 borrowFactor;
        uint256 sumCollateral;
        uint256 sumBorrowed;
    }

    function calcAccountEquity(IControllerHelper _controller, address _account)
        public
        returns (
            uint256,
            uint256,
            uint256,
            uint256
        )
    {
        AccountEquityLocalVars memory _var;
        _var.collateralITokens = _controller.getEnteredMarkets(_account);
        for (uint256 i = 0; i < _var.collateralITokens.length; i++) {
            (_var.collateralFactor, , , , , , ) = _controller.markets(
                _var.collateralITokens[i]
            );
            _var.sumCollateral = _var.sumCollateral.add(
                _var.collateralITokens[i]
                    .balanceOf(_account)
                    .mul(
                    _controller.priceOracle().getUnderlyingPrice(
                        _var.collateralITokens[i]
                    )
                )
                    .rmul(_var.collateralITokens[i].exchangeRateStored())
                    .rmul(_var.collateralFactor)
            );
        }
        _var.borrowedITokens = _controller.getBorrowedAssets(_account);
        for (uint256 i = 0; i < _var.borrowedITokens.length; i++) {
            (, _var.borrowFactor, , , , , ) = _controller.markets(
                _var.borrowedITokens[i]
            );
            _var.sumBorrowed = _var.sumBorrowed.add(
                _var.borrowedITokens[i]
                    .borrowBalanceStored(_account)
                    .mul(
                    _controller.priceOracle().getUnderlyingPrice(
                        _var.borrowedITokens[i]
                    )
                )
                    .rdiv(_var.borrowFactor)
            );
        }
        return
            _var.sumCollateral > _var.sumBorrowed
                ? (
                    _var.sumCollateral - _var.sumBorrowed,
                    uint256(0),
                    _var.sumCollateral,
                    _var.sumBorrowed
                )
                : (
                    uint256(0),
                    _var.sumBorrowed - _var.sumCollateral,
                    _var.sumCollateral,
                    _var.sumBorrowed
                );
    }

    struct AccountEquityVars {
        uint256 USDPrice;
        uint256 euqity;
        uint256 shortfall;
        uint256 sumCollateral;
        uint256 sumBorrowed;
    }

    function getAccountEquity(IControllerHelper _controller, address _account)
        public
        returns (
            uint256,
            uint256,
            uint256,
            uint256
        )
    {
        AccountEquityVars memory _var;
        (
            _var.euqity,
            _var.shortfall,
            _var.sumCollateral,
            _var.sumBorrowed
        ) = calcAccountEquity(_controller, _account);
        return (
            _var.euqity,
            _var.shortfall,
            _var.sumCollateral.div(USDPrice),
            _var.sumBorrowed.div(USDPrice)
        );
    }

    function getAccountCurrentEquity(IiTokenHelper _asset, address _account)
        public
        returns (
            uint256,
            uint256,
            uint256,
            uint256
        )
    {
        _asset.updateInterest();
        return getAccountEquity(_asset.controller(), _account);
    }

    struct AvailableBalanceLocalVars {
        IControllerHelper controller;
        uint256 collateralFactor;
        uint256 assetPrice;
        uint256 accountEquity;
        uint256 sumCollateral;
        uint256 sumBorrowed;
        uint256 availableAmount;
        uint256 balance;
    }

    function getAvailableBalance(
        IiTokenHelper _iToken,
        address _account,
        uint256 _safeMaxFactor
    ) public returns (uint256) {
        AvailableBalanceLocalVars memory _var;
        _var.balance = _iToken.balanceOf(_account);
        _var.controller = _iToken.controller();
        (_var.collateralFactor, , , , , , ) = _var.controller.markets(_iToken);
        if (
            _var.controller.hasEnteredMarket(_account, _iToken) &&
            getAccountBorrowStatus(_var.controller, _account)
        ) {
            (
                _var.accountEquity,
                ,
                _var.sumCollateral,
                _var.sumBorrowed
            ) = calcAccountEquity(_var.controller, _account);
            if (_var.collateralFactor == 0 && _var.accountEquity > 0)
                return _var.balance;

            _var.assetPrice = _var.controller.priceOracle().getUnderlyingPrice(
                _iToken
            );
            if (
                _var.assetPrice == 0 ||
                _var.collateralFactor == 0 ||
                _var.accountEquity == 0
            ) return 0;

            _var.availableAmount = _var.sumCollateral >
                _var.sumBorrowed.rdiv(_safeMaxFactor)
                ? _var.sumCollateral.sub(_var.sumBorrowed.rdiv(_safeMaxFactor))
                : 0;

            _var.availableAmount = _var
                .availableAmount
                .div(_var.assetPrice)
                .rdiv(_var.collateralFactor)
                .rdiv(_iToken.exchangeRateStored());
            return
                _var.balance > _var.availableAmount
                    ? _var.availableAmount
                    : _var.balance;
        }

        return _var.balance;
    }

    struct interestDataVars {
        IInterestRateModelHelper interestRateModel;
        uint256 assetPrice;
        uint256 totalBorrows;
        uint256 totalReserves;
        uint256 cash;
        uint256 base;
        uint256 optimal;
        uint256 slope_1;
        uint256 slope_2;
    }

    function getAssetInterestData(IiTokenHelper _asset)
        public
        returns (
            uint256,
            uint256,
            uint256,
            uint256,
            uint256,
            uint256,
            uint256,
            uint256
        )
    {
        interestDataVars memory _var;

        _var.assetPrice = _asset.controller().priceOracle().getUnderlyingPrice(
            _asset
        );
        _var.totalBorrows = _asset
            .totalBorrowsCurrent()
            .mul(_var.assetPrice)
            .div(USDPrice);
        _var.totalReserves = _asset.totalReserves().mul(_var.assetPrice).div(
            USDPrice
        );
        _var.cash = _asset.getCash().mul(_var.assetPrice).div(USDPrice);

        if (_asset.isiToken()) {
            _var.interestRateModel = _asset.interestRateModel();
            _var.base = _var.interestRateModel.base();
            _var.optimal = _var.interestRateModel.optimal();
            _var.slope_1 = _var.interestRateModel.slope_1();
            _var.slope_2 = _var.interestRateModel.slope_2();
        }
        return (
            _var.totalBorrows,
            _var.totalReserves,
            _var.cash,
            _asset.reserveRatio(),
            _var.base,
            _var.optimal,
            _var.slope_1,
            _var.slope_2
        );
    }
}

// ============================================================
// FILE: contracts/interface/IInterestRateModelInterface.sol
// ============================================================

//SPDX-License-Identifier: MIT
pragma solidity 0.6.12;

/**
 * @title dForce Lending Protocol's InterestRateModel Interface.
 * @author dForce Team.
 */
interface IInterestRateModelInterface {
    function isInterestRateModel() external view returns (bool);

    /**
     * @dev Calculates the current borrow interest rate per block.
     * @param cash The total amount of cash the market has.
     * @param borrows The total amount of borrows the market has.
     * @param reserves The total amnount of reserves the market has.
     * @return The borrow rate per block (as a percentage, and scaled by 1e18).
     */
    function getBorrowRate(
        uint256 cash,
        uint256 borrows,
        uint256 reserves
    ) external view returns (uint256);

    /**
     * @dev Calculates the current supply interest rate per block.
     * @param cash The total amount of cash the market has.
     * @param borrows The total amount of borrows the market has.
     * @param reserves The total amnount of reserves the market has.
     * @param reserveRatio The current reserve factor the market has.
     * @return The supply rate per block (as a percentage, and scaled by 1e18).
     */
    function getSupplyRate(
        uint256 cash,
        uint256 borrows,
        uint256 reserves,
        uint256 reserveRatio
    ) external view returns (uint256);
}

// ============================================================
// FILE: contracts/library/SafeRatioMath.sol
// ============================================================

//SPDX-License-Identifier: MIT
pragma solidity 0.6.12;

import "@openzeppelin/contracts-upgradeable/math/SafeMathUpgradeable.sol";

library SafeRatioMath {
    using SafeMathUpgradeable for uint256;

    uint256 private constant BASE = 10**18;
    uint256 private constant DOUBLE = 10**36;

    function divup(uint256 x, uint256 y) internal pure returns (uint256 z) {
        z = x.add(y.sub(1)).div(y);
    }

    function rmul(uint256 x, uint256 y) internal pure returns (uint256 z) {
        z = x.mul(y).div(BASE);
    }

    function rdiv(uint256 x, uint256 y) internal pure returns (uint256 z) {
        z = x.mul(BASE).div(y);
    }

    function rdivup(uint256 x, uint256 y) internal pure returns (uint256 z) {
        z = x.mul(BASE).add(y.sub(1)).div(y);
    }

    function tmul(
        uint256 x,
        uint256 y,
        uint256 z
    ) internal pure returns (uint256 result) {
        result = x.mul(y).mul(z).div(DOUBLE);
    }

    function rpow(
        uint256 x,
        uint256 n,
        uint256 base
    ) internal pure returns (uint256 z) {
        assembly {
            switch x
                case 0 {
                    switch n
                        case 0 {
                            z := base
                        }
                        default {
                            z := 0
                        }
                }
                default {
                    switch mod(n, 2)
                        case 0 {
                            z := base
                        }
                        default {
                            z := x
                        }
                    let half := div(base, 2) // for rounding.

                    for {
                        n := div(n, 2)
                    } n {
                        n := div(n, 2)
                    } {
                        let xx := mul(x, x)
                        if iszero(eq(div(xx, x), x)) {
                            revert(0, 0)
                        }
                        let xxRound := add(xx, half)
                        if lt(xxRound, xx) {
                            revert(0, 0)
                        }
                        x := div(xxRound, base)
                        if mod(n, 2) {
                            let zx := mul(z, x)
                            if and(
                                iszero(iszero(x)),
                                iszero(eq(div(zx, x), z))
                            ) {
                                revert(0, 0)
                            }
                            let zxRound := add(zx, half)
                            if lt(zxRound, zx) {
                                revert(0, 0)
                            }
                            z := div(zxRound, base)
                        }
                    }
                }
        }
    }
}
