// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {Strategy, IMasterOracle, SwapAggregator} from "./Strategy.sol";
import {IDepositToken, ISyntheticToken, IDebtToken, IPool} from "src/interfaces/external/ISynth.sol";
import {IBorrowStrategy} from "src/interfaces/IBorrowStrategy.sol";
import {Synth} from "src/components/Synth.sol";
import {Synth, SynthDelegateCalls} from "src/components/Synth.sol";

contract SynthStrategy is IBorrowStrategy, Strategy {
    using SafeERC20 for IERC20;
    using SynthDelegateCalls for Synth;

    Synth immutable synth;

    error AssetNotSupported();
    error InvalidSyntheticToken();

    /*//////////////////////////////////////////////////////////////
                                STORAGE
    //////////////////////////////////////////////////////////////*/

    /// @custom:storage-location erc7201:odyssey.storage.SynthStrategy
    struct SynthStrategyStorage {
        IDepositToken _depositToken;
        ISyntheticToken _syntheticToken;
        IDebtToken _debtToken;
    }

    bytes32 private constant SynthStrategyStorageLocation =
        keccak256(abi.encode(uint256(keccak256("odyssey.storage.SynthStrategy")) - 1)) & ~bytes32(uint256(0xff));

    function _getSynthStrategyStorage() private pure returns (SynthStrategyStorage storage $) {
        bytes32 location = SynthStrategyStorageLocation;
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
        Synth synth_
    ) Strategy(oracle_, swapAggregator_) {
        if (address(synth_) == address(0)) revert AddressIsNull();

        synth = synth_;
    }

    /*//////////////////////////////////////////////////////////////
                                 PARAMS
    //////////////////////////////////////////////////////////////*/

    function _setCustomParams(bytes memory _customParams) internal override {
        ISyntheticToken _syntheticToken = abi.decode(_customParams, (ISyntheticToken));

        if (address(_syntheticToken) == address(0)) revert AddressIsNull();

        IPool _pool = synth.pool();

        IDepositToken _depositToken = _pool.depositTokenOf(asset());
        if (address(_depositToken) == address(0)) revert AssetNotSupported();

        IDebtToken _debtToken = _pool.debtTokenOf(_syntheticToken);
        if (address(_debtToken) == address(0)) revert InvalidSyntheticToken();

        SynthStrategyStorage storage $ = _getSynthStrategyStorage();
        $._syntheticToken = _syntheticToken;
        $._depositToken = _depositToken;
        $._debtToken = _debtToken;
    }

    function _unsetCustomParams() internal override {
        SynthStrategyStorage storage $ = _getSynthStrategyStorage();
        delete $._depositToken;
        delete $._syntheticToken;
        delete $._debtToken;
    }

    /*//////////////////////////////////////////////////////////////
                               OVERRIDES
    //////////////////////////////////////////////////////////////*/

    /// @inheritdoc IBorrowStrategy
    function previewBorrowParams(
        bytes memory positionParams_
    ) external view returns (uint256 _collateralFactor, uint256 _interestRate) {
        (bytes memory _genericParams, bytes memory _customParams) = abi.decode(positionParams_, (bytes, bytes));
        IERC20 _asset = abi.decode(_genericParams, (IERC20));
        ISyntheticToken _syntheticToken = abi.decode(_customParams, (ISyntheticToken));
        IPool _pool = synth.pool();

        IDepositToken _depositToken = _pool.depositTokenOf(_asset);
        IDebtToken _debtToken = _pool.debtTokenOf(_syntheticToken);

        _collateralFactor = _depositToken.collateralFactor();
        _interestRate = _debtToken.interestRate();
    }

    function _canTransferOut(IERC20 tokenOut_) internal view override returns (bool) {
        return tokenOut_ == borrowToken();
    }

    function _totalAllocated() internal view override returns (uint256 _assets) {
        uint256 _debtInAssets = oracle.quote(address(syntheticToken()), address(asset()), borrowedAmount());

        _assets = depositedAmount() - _debtInAssets;
    }

    function _depositAsset(uint256 amount_) internal override {
        synth.delegateDeposit(depositToken(), amount_);
    }

    function _withdrawAsset(uint256 amount_) internal override returns (uint256 _withdrawn) {
        if (amount_ > 0) {
            return synth.delegateWithdraw(depositToken(), amount_);
        }
    }

    /// @inheritdoc IBorrowStrategy
    function ltv() external view override returns (uint256 _ltv) {
        if (!isOpen()) return 0;

        uint256 _debtInAssets = oracle.quote(address(syntheticToken()), address(asset()), borrowedAmount());
        return (_debtInAssets * 1e18) / depositedAmount();
    }

    /// @inheritdoc IBorrowStrategy
    function collateralFactor() public view override returns (uint256) {
        return depositToken().collateralFactor();
    }

    /// @inheritdoc IBorrowStrategy
    function interestRate() external view override returns (uint256) {
        return debtToken().interestRate();
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
        (uint256 _amountIn, uint256 _leverageX, uint256 _depositAmountMin) = abi.decode(
            params_,
            (uint256, uint256, uint256)
        );

        synth.delegateLeverage(depositToken(), syntheticToken(), _amountIn, _leverageX, _depositAmountMin);
    }

    function _pull(bytes memory params_) internal override {
        (uint256 _withdrawAmountForRepayment, uint256 _withdrawAmount, uint256 _repayAmountMin) = abi.decode(
            params_,
            (uint256, uint256, uint256)
        );

        synth.delegateFlashRepay(syntheticToken(), depositToken(), _withdrawAmountForRepayment, _repayAmountMin);

        _withdrawAsset(_withdrawAmount);
    }

    /// @inheritdoc IBorrowStrategy
    function depositAndBorrow(bytes memory params_) external isFeature {
        (uint256 _depositAmount, uint256 _borrowAmount) = abi.decode(params_, (uint256, uint256));

        if (_depositAmount > 0) _depositAsset(_depositAmount);
        if (_borrowAmount > 0) synth.delegateIssue(debtToken(), _borrowAmount);
    }

    /// @inheritdoc IBorrowStrategy
    function repayAndWithdraw(bytes memory params_) external isFeature {
        (uint256 _repayAmount, uint256 _withdrawAmount) = abi.decode(params_, (uint256, uint256));

        if (_repayAmount > 0) synth.delegateRepay(debtToken(), _repayAmount);
        if (_withdrawAmount > 0) _withdrawAsset(_withdrawAmount);
    }

    /// @inheritdoc IBorrowStrategy
    function deposit(bytes memory params_) external isFeature {
        _depositAsset({amount_: abi.decode(params_, (uint256))});
    }

    /// @inheritdoc IBorrowStrategy
    function borrow(bytes memory params_) external isFeature {
        synth.delegateIssue({debtToken_: debtToken(), amount_: abi.decode(params_, (uint256))});
    }

    /// @inheritdoc IBorrowStrategy
    function repay(bytes memory params_) external isFeature {
        synth.delegateRepay({debtToken_: debtToken(), amount_: abi.decode(params_, (uint256))});
    }

    /// @inheritdoc IBorrowStrategy
    function withdraw(bytes memory params_) external isFeature {
        _withdrawAsset({amount_: abi.decode(params_, (uint256))});
    }

    /*//////////////////////////////////////////////////////////////
                                GETTERS
    //////////////////////////////////////////////////////////////*/

    function depositToken() public view returns (IDepositToken) {
        SynthStrategyStorage storage $ = _getSynthStrategyStorage();
        return $._depositToken;
    }

    function syntheticToken() public view returns (ISyntheticToken) {
        SynthStrategyStorage storage $ = _getSynthStrategyStorage();
        return $._syntheticToken;
    }

    function debtToken() public view returns (IDebtToken) {
        SynthStrategyStorage storage $ = _getSynthStrategyStorage();
        return $._debtToken;
    }

    /// @inheritdoc IBorrowStrategy
    function borrowToken() public view returns (IERC20) {
        return IERC20(syntheticToken());
    }

    /// @inheritdoc IBorrowStrategy
    function depositedAmount() public view returns (uint256) {
        if (!isOpen()) return 0;
        return depositToken().balanceOf(address(this));
    }

    /// @inheritdoc IBorrowStrategy
    function borrowedAmount() public view returns (uint256) {
        if (!isOpen()) return 0;
        return debtToken().balanceOf(address(this));
    }
}
