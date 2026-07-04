// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {IAjnaPool} from "../interfaces/external/ajna/erc20/IAjnaPool.sol";
import {Strategy, IMasterOracle, SwapAggregator} from "./Strategy.sol";
import {Ajna, AjnaDelegateCalls} from "src/components/Ajna.sol";
import {IBorrowStrategy} from "src/interfaces/IBorrowStrategy.sol";
import {Strategy} from "./Strategy.sol";

/**
 * @title Deposit and borrow strategy for Ajna protocol.
 * Leverage it by swapping borrowed token to collateral and deposit again.
 */
contract AjnaBorrowStrategy is IBorrowStrategy, Strategy {
    using SafeERC20 for IERC20;
    using AjnaDelegateCalls for Ajna;

    Ajna public immutable ajna;

    error CollateralTokenIsNotValid();
    error CouldNotBorrow();
    error CouldNotRepay();

    /*//////////////////////////////////////////////////////////////
                                STORAGE
    //////////////////////////////////////////////////////////////*/

    /// @custom:storage-location erc7201:odyssey.storage.AjnaBorrowStrategy
    struct AjnaBorrowStrategyStorage {
        IAjnaPool _ajnaPool;
    }

    bytes32 private constant AjnaBorrowStrategyStorageLocation =
        keccak256(abi.encode(uint256(keccak256("odyssey.storage.AjnaBorrowStrategy")) - 1)) & ~bytes32(uint256(0xff));

    function _getAjnaBorrowStrategyStorage() private pure returns (AjnaBorrowStrategyStorage storage $) {
        bytes32 location = AjnaBorrowStrategyStorageLocation;
        assembly {
            $.slot := location
        }
    }

    /*//////////////////////////////////////////////////////////////
                              CONSTRUCTOR
    //////////////////////////////////////////////////////////////*/

    constructor(IMasterOracle oracle_, SwapAggregator swapAggregator_, Ajna ajna_) Strategy(oracle_, swapAggregator_) {
        if (address(ajna_) == address(0)) revert AddressIsNull();

        ajna = ajna_;
    }

    /*//////////////////////////////////////////////////////////////
                                 PARAMS
    //////////////////////////////////////////////////////////////*/

    function _setCustomParams(bytes memory customParams_) internal override {
        IAjnaPool _ajnaPool = abi.decode(customParams_, (IAjnaPool));
        if (address(_ajnaPool) == address(0)) revert AddressIsNull();

        if (_ajnaPool.collateralAddress() != address(asset())) {
            revert CollateralTokenIsNotValid();
        }
        AjnaBorrowStrategyStorage storage $ = _getAjnaBorrowStrategyStorage();
        $._ajnaPool = _ajnaPool;
    }

    function _unsetCustomParams() internal override {
        AjnaBorrowStrategyStorage storage $ = _getAjnaBorrowStrategyStorage();
        delete $._ajnaPool;
    }

    /*//////////////////////////////////////////////////////////////
                              OVERWRITTEN
    //////////////////////////////////////////////////////////////*/

    /// @inheritdoc IBorrowStrategy
    function previewBorrowParams(
        bytes memory positionParams_
    ) external view returns (uint256 _collateralFactor, uint256 _interestRate) {
        (, bytes memory _customParams) = abi.decode(positionParams_, (bytes, bytes));
        IAjnaPool _ajnaPool = abi.decode(_customParams, (IAjnaPool));

        _collateralFactor = ajna.dynamicMaxLTV(_ajnaPool, oracle);
        _interestRate = ajna.interestRateOf(_ajnaPool);
    }

    function _totalAllocated() internal view override returns (uint256 _assets) {
        IAjnaPool _ajnaPool = ajnaPool();
        uint256 _debt;
        (_debt, _assets, , ) = ajna.borrowerInfo(_ajnaPool, address(this));
        if (_debt > 0) {
            uint256 _debtInAssets = oracle.quote(_ajnaPool.quoteTokenAddress(), address(asset()), _debt);
            if (_debtInAssets >= _assets) {
                return 0;
            }

            _assets -= _debtInAssets;
        }
    }

    /// @inheritdoc IBorrowStrategy
    function ltv() public view override returns (uint256 _ltv) {
        if (!isOpen()) return 0;

        IAjnaPool _ajnaPool = ajnaPool();

        (uint256 _debt, uint256 _collateral, , ) = ajna.borrowerInfo(_ajnaPool, address(this));

        return (oracle.quote(_ajnaPool.quoteTokenAddress(), address(asset()), _debt) * 1e18) / _collateral;
    }

    /// @inheritdoc IBorrowStrategy
    function collateralFactor() public view override returns (uint256) {
        return ajna.dynamicMaxLTV(ajnaPool(), oracle);
    }

    /// @inheritdoc IBorrowStrategy
    function interestRate() public view override returns (uint256) {
        return ajna.interestRateOf(ajnaPool());
    }

    /// @inheritdoc IBorrowStrategy
    function healthFactor() external view override returns (uint256) {
        return ajna.healthFactorOf(ajnaPool(), address(this));
    }

    /*//////////////////////////////////////////////////////////////
                                FEATURES
    //////////////////////////////////////////////////////////////*/

    function _push(bytes memory params_) internal override {
        (uint256 _amountIn, uint256 _amountToBorrow, uint256 _limitIndex) = abi.decode(
            params_,
            (uint256, uint256, uint256)
        );

        ajna.delegateDrawDebt(ajnaPool(), address(this), _amountToBorrow, _limitIndex, _amountIn);
    }

    function _pull(bytes memory params_) internal virtual override {
        (uint256 _repayAmount, uint256 collateralAmountToPull_, uint256 _limitIndex) = abi.decode(
            params_,
            (uint256, uint256, uint256)
        );

        _repayAndWithdraw({
            repayAmount_: _repayAmount,
            withdrawAmount_: collateralAmountToPull_,
            limitIndex_: _limitIndex
        });
    }

    /// @inheritdoc IBorrowStrategy
    function depositAndBorrow(bytes memory params_) external isFeature {
        (uint256 _depositAmount, uint256 _borrowAmount, uint256 _limitIndex) = abi.decode(
            params_,
            (uint256, uint256, uint256)
        );

        _depositAndBorrow({depositAmount_: _depositAmount, borrowAmount_: _borrowAmount, limitIndex_: _limitIndex});
    }

    /// @inheritdoc IBorrowStrategy
    function repayAndWithdraw(bytes memory params_) external isFeature {
        (uint256 _repayAmount, uint256 _withdrawAmount, uint256 _limitIndex) = abi.decode(
            params_,
            (uint256, uint256, uint256)
        );

        _repayAndWithdraw({repayAmount_: _repayAmount, withdrawAmount_: _withdrawAmount, limitIndex_: _limitIndex});
    }

    /// @inheritdoc IBorrowStrategy
    function deposit(bytes memory params_) external isFeature {
        (uint256 _depositAmount, uint256 _limitIndex) = abi.decode(params_, (uint256, uint256));

        _depositAndBorrow({depositAmount_: _depositAmount, borrowAmount_: 0, limitIndex_: _limitIndex});
    }

    /// @inheritdoc IBorrowStrategy
    function borrow(bytes memory params_) external isFeature {
        (uint256 _borrowAmount, uint256 _limitIndex) = abi.decode(params_, (uint256, uint256));

        _depositAndBorrow({depositAmount_: 0, borrowAmount_: _borrowAmount, limitIndex_: _limitIndex});
    }

    /// @inheritdoc IBorrowStrategy
    function repay(bytes memory params_) external isFeature {
        (uint256 _repayAmount, uint256 _limitIndex) = abi.decode(params_, (uint256, uint256));

        _repayAndWithdraw({repayAmount_: _repayAmount, withdrawAmount_: 0, limitIndex_: _limitIndex});
    }

    /// @inheritdoc IBorrowStrategy
    function withdraw(bytes memory params_) external isFeature {
        (uint256 _withdrawAmount, uint256 _limitIndex) = abi.decode(params_, (uint256, uint256));

        _repayAndWithdraw({repayAmount_: 0, withdrawAmount_: _withdrawAmount, limitIndex_: _limitIndex});
    }

    /*//////////////////////////////////////////////////////////////
                                GETTERS
    //////////////////////////////////////////////////////////////*/

    function ajnaPool() public view returns (IAjnaPool) {
        AjnaBorrowStrategyStorage storage $ = _getAjnaBorrowStrategyStorage();
        return $._ajnaPool;
    }

    function _depositAsset(uint256 amount_, bytes memory extraParams_) internal override {
        uint256 _limitIndex = abi.decode(extraParams_, (uint256));

        _depositAndBorrow({depositAmount_: amount_, borrowAmount_: 0, limitIndex_: _limitIndex});
    }

    function _depositAsset(uint256) internal pure override {
        revert("not-supported");
    }

    function _withdrawAsset(uint256 amount_, bytes memory extraParams_) internal override returns (uint256 _withdrawn) {
        uint256 _limitIndex = abi.decode(extraParams_, (uint256));
        IERC20 _asset = asset();
        uint256 _balance = _asset.balanceOf(address(this));
        ajna.delegateRepayDebt(ajnaPool(), address(this), 0, amount_, address(this), _limitIndex);
        _withdrawn = _asset.balanceOf(address(this)) - _balance;
    }

    function _withdrawAsset(uint256) internal pure override returns (uint256) {
        revert("not-supported");
    }

    function _canTransferOut(IERC20 tokenOut_) internal view override returns (bool) {
        return address(tokenOut_) == ajnaPool().quoteTokenAddress();
    }

    function _repayAndWithdraw(uint256 repayAmount_, uint256 withdrawAmount_, uint256 limitIndex_) private {
        ajna.delegateRepayDebt({
            ajnaPool_: ajnaPool(),
            borrowerAddress_: address(this),
            amountToRepay_: repayAmount_,
            collateralAmountToPull_: withdrawAmount_,
            collateralReceiver_: address(this),
            limitIndex_: limitIndex_
        });
    }

    function _depositAndBorrow(uint256 depositAmount_, uint256 borrowAmount_, uint256 limitIndex_) private {
        ajna.delegateDrawDebt({
            ajnaPool_: ajnaPool(),
            borrowerAddress_: address(this),
            amountToBorrow_: borrowAmount_,
            limitIndex_: limitIndex_,
            collateralToPledge_: depositAmount_
        });
    }

    /// @inheritdoc IBorrowStrategy
    function borrowToken() public view returns (IERC20) {
        return IERC20(ajnaPool().quoteTokenAddress());
    }

    /// @inheritdoc IBorrowStrategy
    function depositedAmount() public view returns (uint256 _depositedAmount) {
        if (!isOpen()) return 0;
        (, _depositedAmount, , ) = ajna.borrowerInfo(ajnaPool(), address(this));
    }

    /// @inheritdoc IBorrowStrategy
    function borrowedAmount() public view returns (uint256 _borrowedAmount) {
        if (!isOpen()) return 0;
        (_borrowedAmount, , , ) = ajna.borrowerInfo(ajnaPool(), address(this));
    }

    receive() external payable {}
}
