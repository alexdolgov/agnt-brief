// SPDX-License-Identifier: MIT

pragma solidity 0.8.23;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {IAjnaPool} from "../interfaces/external/ajna/erc20/IAjnaPool.sol";
import {IPoolInfoUtils} from "../interfaces/external/ajna/commons/IPoolInfoUtils.sol";
import {Helpers} from "src/libraries/Helpers.sol";
import {Address} from "@openzeppelin/contracts/utils/Address.sol";
import {IMasterOracle} from "../interfaces/external/IMasterOracle.sol";

IPoolInfoUtils constant POOL_INFO_UTILS = IPoolInfoUtils(0x30c5eF2997d6a882DE52c4ec01B6D0a5e5B4fAAE);

library AjnaDelegateCalls {
    using Address for address;

    function delegateDrawDebt(
        Ajna ajna_,
        IAjnaPool ajnaPool_,
        address borrowerAddress_,
        uint256 amountToBorrow_,
        uint256 limitIndex_,
        uint256 collateralToPledge_
    ) internal {
        address(ajna_).functionDelegateCall(
            abi.encodeWithSelector(
                ajna_.drawDebt.selector,
                ajnaPool_,
                borrowerAddress_,
                amountToBorrow_,
                limitIndex_,
                collateralToPledge_
            )
        );
    }

    function delegateRepayDebt(
        Ajna ajna_,
        IAjnaPool ajnaPool_,
        address borrowerAddress_,
        uint256 amountToRepay_,
        uint256 collateralAmountToPull_,
        address collateralReceiver_,
        uint256 limitIndex_
    ) internal {
        address(ajna_).functionDelegateCall(
            abi.encodeWithSelector(
                ajna_.repayDebt.selector,
                ajnaPool_,
                borrowerAddress_,
                amountToRepay_,
                collateralAmountToPull_,
                collateralReceiver_,
                limitIndex_
            )
        );
    }
}

library AjnaMaths {
    uint256 internal constant WAD = 1e18;

    function ceilDiv(uint256 x, uint256 y) internal pure returns (uint256) {
        return (x + y - 1) / y;
    }
}

/// @title Ajna protocol
contract Ajna {
    using SafeERC20 for IERC20;

    error AmountIsZero();
    error CouldNotRedeem();
    error CouldNotDeposit();
    error CouldNotRepay();
    error CouldNotBorrow();

    /**
     *  @notice Retrieves info of a given borrower in a given `Ajna` pool.
     *  @param  ajnaPool_         Address of `Ajna` pool.
     *  @param  borrowerAddress_         Borrower's address.
     *  @return debt_             Current debt owed by borrower (token decimal).
     *  @return collateral_       Pledged collateral, including encumbered (token decimal).
     *  @return t0Np_             `Neutral price` (18 decimal).
     *  @return thresholdPrice_   Borrower's `Threshold Price` (18 decimal).
     */
    function borrowerInfo(
        IAjnaPool ajnaPool_,
        address borrowerAddress_
    ) public view returns (uint256 debt_, uint256 collateral_, uint256 t0Np_, uint256 thresholdPrice_) {
        (debt_, collateral_, t0Np_, thresholdPrice_) = POOL_INFO_UTILS.borrowerInfo(
            address(ajnaPool_),
            borrowerAddress_
        );
        debt_ = AjnaMaths.ceilDiv(debt_, ajnaPool_.quoteTokenScale());
        collateral_ = AjnaMaths.ceilDiv(collateral_, ajnaPool_.collateralScale());
    }

    function drawDebt(
        IAjnaPool ajnaPool_,
        address borrowerAddress_,
        uint256 amountToBorrow_,
        uint256 limitIndex_,
        uint256 collateralToPledge_
    ) external {
        IERC20 _collateralToken = IERC20(ajnaPool_.collateralAddress());
        collateralToPledge_ = Helpers.amountOrAllBalanceIfMax(_collateralToken, collateralToPledge_);
        _collateralToken.forceApprove(address(ajnaPool_), 0);
        _collateralToken.forceApprove(address(ajnaPool_), collateralToPledge_);
        collateralToPledge_ *= ajnaPool_.collateralScale();
        amountToBorrow_ *= ajnaPool_.quoteTokenScale();
        ajnaPool_.drawDebt(borrowerAddress_, amountToBorrow_, limitIndex_, collateralToPledge_);
    }

    function repayDebt(
        IAjnaPool ajnaPool_,
        address borrowerAddress_,
        uint256 amountToRepay_,
        uint256 collateralAmountToPull_,
        address collateralReceiver_,
        uint256 limitIndex_
    ) external {
        if (collateralAmountToPull_ != type(uint256).max) {
            collateralAmountToPull_ *= ajnaPool_.collateralScale();
        } else {
            (, collateralAmountToPull_, , ) = POOL_INFO_UTILS.borrowerInfo(address(ajnaPool_), borrowerAddress_);
        }

        if (amountToRepay_ != type(uint256).max) {
            amountToRepay_ *= ajnaPool_.quoteTokenScale();
        }

        IERC20 _quoteToken = IERC20(ajnaPool_.quoteTokenAddress());
        _quoteToken.forceApprove(address(ajnaPool_), type(uint256).max);
        ajnaPool_.repayDebt(
            borrowerAddress_,
            amountToRepay_,
            collateralAmountToPull_,
            collateralReceiver_,
            limitIndex_
        );
        _quoteToken.forceApprove(address(ajnaPool_), 0);
    }

    function interestRateOf(IAjnaPool ajnaPool_) external view returns (uint256 _interestRate) {
        (_interestRate, ) = ajnaPool_.interestRateInfo();
    }

    function dynamicMaxLTV(IAjnaPool ajnaPool_, IMasterOracle oracle_) external view returns (uint256) {
        uint256 _marketPrice = oracle_.quote(
            ajnaPool_.collateralAddress(),
            ajnaPool_.quoteTokenAddress(),
            1e18 / ajnaPool_.collateralScale()
        ) * ajnaPool_.quoteTokenScale();

        uint256 _lup = POOL_INFO_UTILS.lup(address(ajnaPool_));

        return (_lup * 1e18) / _marketPrice;
    }

    function healthFactorOf(IAjnaPool ajnaPool_, address user_) external view returns (uint256 _healthFactor) {
        uint256 _lup = POOL_INFO_UTILS.lup(address(ajnaPool_));
        (, , , uint256 _tp) = POOL_INFO_UTILS.borrowerInfo(address(ajnaPool_), user_);
        return (_lup * 1e18) / _tp;
    }
}
