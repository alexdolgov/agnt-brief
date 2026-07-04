// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {IBorrowStrategy, IBorrowToYieldStrategy} from "src/interfaces/IBorrowToYieldStrategy.sol";
import {IVPool} from "../interfaces/external/IVPool.sol";
import {ICToken} from "src/interfaces/external/ICompoundV2.sol";
import {Strategy, IMasterOracle, SwapAggregator} from "./Strategy.sol";
import {CompoundV2, CompoundV2DelegateCalls} from "src/components/CompoundV2.sol";
import {Vesper, VesperDelegateCalls} from "src/components/Vesper.sol";

contract CompoundV2VesperStrategy is IBorrowToYieldStrategy, Strategy {
    using SafeERC20 for IERC20;
    using CompoundV2DelegateCalls for CompoundV2;
    using VesperDelegateCalls for Vesper;

    CompoundV2 public immutable compoundV2;
    Vesper public immutable vesper;

    error InvalidCompoundToken();
    error InvalidVesperPool();

    /*////////////////////////////////////////////////////////////// 
                                STORAGE
    //////////////////////////////////////////////////////////////*/

    /// @custom:storage-location erc7201:odyssey.storage.CompoundV2VesperStrategy
    struct CompoundV2VesperStrategyStorage {
        ICToken _cTokenDeposit;
        ICToken _cTokenBorrow;
        IVPool _vPool;
    }

    bytes32 private constant CompoundV2VesperStrategyStorageLocation =
        keccak256(abi.encode(uint256(keccak256("odyssey.storage.CompoundV2VesperStrategy")) - 1)) &
            ~bytes32(uint256(0xff));

    function _getCompoundV2VesperStrategyStorage() private pure returns (CompoundV2VesperStrategyStorage storage $) {
        bytes32 location = CompoundV2VesperStrategyStorageLocation;
        assembly {
            $.slot := location
        }
    }

    /*//////////////////////////////////////////////////////////////
                              CONSTRUCTOR
    //////////////////////////////////////////////////////////////*/

    constructor(
        IMasterOracle oracle_,
        SwapAggregator swapAggregator_,
        CompoundV2 compoundV2_,
        Vesper vesper_
    ) Strategy(oracle_, swapAggregator_) {
        if (address(compoundV2_) == address(0)) revert AddressIsNull();
        if (address(vesper_) == address(0)) revert AddressIsNull();

        compoundV2 = compoundV2_;
        vesper = vesper_;
    }

    /*//////////////////////////////////////////////////////////////
                                 PARAMS
    //////////////////////////////////////////////////////////////*/

    function _setCustomParams(bytes memory _customParams) internal override {
        (ICToken _cTokenDeposit, ICToken _cTokenBorrow, IVPool _vPool) = abi.decode(
            _customParams,
            (ICToken, ICToken, IVPool)
        );

        if (address(_cTokenDeposit) == address(0)) revert AddressIsNull();
        if (address(_cTokenBorrow) == address(0)) revert AddressIsNull();
        if (address(_vPool) == address(0)) revert AddressIsNull();
        if (address(compoundV2.getUnderlying(_cTokenBorrow)) != _vPool.token()) revert InvalidVesperPool();
        if (compoundV2.getUnderlying(_cTokenDeposit) != asset()) revert InvalidCompoundToken();

        compoundV2.delegateEnterMarkets(_cTokenDeposit, _cTokenBorrow);

        CompoundV2VesperStrategyStorage storage $ = _getCompoundV2VesperStrategyStorage();
        $._cTokenDeposit = _cTokenDeposit;
        $._cTokenBorrow = _cTokenBorrow;
        $._vPool = _vPool;
    }

    function _unsetCustomParams() internal override {
        CompoundV2VesperStrategyStorage storage $ = _getCompoundV2VesperStrategyStorage();
        delete $._cTokenBorrow;
        delete $._vPool;
        delete $._cTokenDeposit;
    }

    /*//////////////////////////////////////////////////////////////
                               OVERRIDES
    //////////////////////////////////////////////////////////////*/

    /// @inheritdoc IBorrowStrategy
    function previewBorrowParams(
        bytes memory positionParams_
    ) external view returns (uint256 _collateralFactor, uint256 _interestRate) {
        (, bytes memory _customParams) = abi.decode(positionParams_, (bytes, bytes));
        (ICToken _cTokenDeposit, ICToken _cTokenBorrow) = abi.decode(_customParams, (ICToken, ICToken));

        _collateralFactor = compoundV2.collateralFactorOf(_cTokenDeposit);
        _interestRate = compoundV2.getInterestRateOf(_cTokenBorrow);
    }

    function _totalAllocated() internal view override returns (uint256 _assets) {
        _assets = depositedAmount();

        uint256 _borrowDebt = borrowedAmount();
        uint256 _borrowDeposit = vesper.underlyingBalance(vPool(), address(this));

        if (_borrowDebt > _borrowDeposit) {
            _assets -= oracle.quote(address(borrowToken()), address(asset()), _borrowDebt - _borrowDeposit);
        } else if (_borrowDebt < _borrowDeposit) {
            _assets += oracle.quote(address(borrowToken()), address(asset()), _borrowDeposit - _borrowDebt);
        }
    }

    function _depositAsset(uint256 amount_) internal override {
        compoundV2.delegateDeposit(cTokenDeposit(), amount_);
    }

    function _withdrawAsset(uint256 amount_) internal virtual override returns (uint256 _withdrawn) {
        return compoundV2.delegateWithdraw(cTokenDeposit(), amount_);
    }

    /// @inheritdoc IBorrowStrategy
    function ltv() external view override returns (uint256 _ltv) {
        if (!isOpen()) return 0;

        uint256 _debtInAssets = oracle.quote(address(borrowToken()), address(asset()), borrowedAmount());
        return (_debtInAssets * 1e18) / depositedAmount();
    }

    /// @inheritdoc IBorrowStrategy
    function collateralFactor() public view override returns (uint256) {
        return compoundV2.collateralFactorOf(cTokenDeposit());
    }

    /// @inheritdoc IBorrowStrategy
    function interestRate() external view override returns (uint256) {
        return compoundV2.getInterestRateOf(cTokenBorrow());
    }

    /// @inheritdoc IBorrowStrategy
    function healthFactor() external view override returns (uint256) {
        uint256 _debtInAssets = oracle.quote(address(borrowToken()), address(asset()), borrowedAmount());
        return (depositedAmount() * collateralFactor()) / _debtInAssets;
    }

    /*//////////////////////////////////////////////////////////////
                                FEATURES
    //////////////////////////////////////////////////////////////*/

    function _push(bytes memory params_) internal override {
        (uint256 _amountIn, uint256 _borrowAmount) = abi.decode(params_, (uint256, uint256));

        _depositAsset(_amountIn);
        compoundV2.delegateBorrow(cTokenBorrow(), _borrowAmount);
        vesper.delegateDeposit(vPool(), _borrowAmount);
    }

    function _pull(bytes memory params_) internal override {
        (uint256 _vPoolShares, uint256 _withdrawAmount) = abi.decode(params_, (uint256, uint256));

        uint256 _withdrawn = vesper.delegateWithdraw(vPool(), _vPoolShares);
        compoundV2.delegateRepay(cTokenBorrow(), _withdrawn);
        compoundV2.delegateWithdraw(cTokenDeposit(), _withdrawAmount);
    }

    /// @inheritdoc IBorrowStrategy
    function depositAndBorrow(bytes memory params_) external isFeature {
        (uint256 _depositAmount, uint256 _borrowAmount) = abi.decode(params_, (uint256, uint256));

        if (_depositAmount > 0) _depositAsset(_depositAmount);
        if (_borrowAmount > 0) compoundV2.delegateBorrow(cTokenBorrow(), _borrowAmount);
    }

    /// @inheritdoc IBorrowStrategy
    function repayAndWithdraw(bytes memory params_) external isFeature {
        (uint256 _repayAmount, uint256 _withdrawAmount) = abi.decode(params_, (uint256, uint256));

        if (_repayAmount > 0) compoundV2.delegateRepay(cTokenBorrow(), _repayAmount);
        if (_withdrawAmount > 0) _withdrawAsset(_withdrawAmount);
    }

    /// @inheritdoc IBorrowStrategy
    function deposit(bytes memory params_) external isFeature {
        _depositAsset({amount_: abi.decode(params_, (uint256))});
    }

    /// @inheritdoc IBorrowStrategy
    function borrow(bytes memory params_) external isFeature {
        compoundV2.delegateBorrow({cToken_: cTokenBorrow(), amount_: abi.decode(params_, (uint256))});
    }

    /// @inheritdoc IBorrowStrategy
    function repay(bytes memory params_) external isFeature {
        compoundV2.delegateRepay({cToken_: cTokenBorrow(), amount_: abi.decode(params_, (uint256))});
    }

    /// @inheritdoc IBorrowStrategy
    function withdraw(bytes memory params_) external isFeature {
        _withdrawAsset({amount_: abi.decode(params_, (uint256))});
    }

    /// @inheritdoc IBorrowToYieldStrategy
    function withdrawFromYield(bytes memory params_) external isFeature {
        vesper.delegateWithdraw({vPool_: vPool(), shares_: abi.decode(params_, (uint256))});
    }

    /// @inheritdoc IBorrowToYieldStrategy
    function depositToYield(bytes memory params_) external isFeature {
        vesper.delegateDeposit({vPool_: vPool(), amount_: abi.decode(params_, (uint256))});
    }

    /*//////////////////////////////////////////////////////////////
                                GETTERS
    //////////////////////////////////////////////////////////////*/

    function cTokenDeposit() public view returns (ICToken) {
        CompoundV2VesperStrategyStorage storage $ = _getCompoundV2VesperStrategyStorage();
        return $._cTokenDeposit;
    }

    function cTokenBorrow() public view returns (ICToken) {
        CompoundV2VesperStrategyStorage storage $ = _getCompoundV2VesperStrategyStorage();
        return $._cTokenBorrow;
    }

    /// @inheritdoc IBorrowStrategy
    function borrowToken() public view returns (IERC20) {
        return IERC20(vPool().token());
    }

    function vPool() public view returns (IVPool) {
        CompoundV2VesperStrategyStorage storage $ = _getCompoundV2VesperStrategyStorage();
        return $._vPool;
    }

    /// @inheritdoc IBorrowStrategy
    function depositedAmount() public view returns (uint256) {
        if (!isOpen()) return 0;
        ICToken _cTokenDeposit = cTokenDeposit();
        return ((_cTokenDeposit.balanceOf(address(this)) * _cTokenDeposit.exchangeRateStored()) / 1e18);
    }

    /// @inheritdoc IBorrowStrategy
    function borrowedAmount() public view returns (uint256) {
        if (!isOpen()) return 0;
        return cTokenBorrow().borrowBalanceStored(address(this));
    }

    receive() external payable {}
}
