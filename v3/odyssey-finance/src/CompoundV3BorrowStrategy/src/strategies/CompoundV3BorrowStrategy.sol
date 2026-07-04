// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {IBorrowStrategy} from "src/interfaces/IBorrowStrategy.sol";
import {IComet} from "../interfaces/external/ICompoundV3.sol";
import {Strategy, IMasterOracle, SwapAggregator, SwapParams} from "./Strategy.sol";
import {CompoundV3, CompoundV3DelegateCalls} from "src/components/CompoundV3.sol";

contract CompoundV3BorrowStrategy is IBorrowStrategy, Strategy {
    using SafeERC20 for IERC20;
    using CompoundV3DelegateCalls for CompoundV3;

    CompoundV3 public immutable compoundV3;

    error InvalidCompoundDepositToken();
    error CouldNotBorrow();
    error CouldNotRepay();

    /*//////////////////////////////////////////////////////////////
                                STORAGE
    //////////////////////////////////////////////////////////////*/

    /// @custom:storage-location erc7201:odyssey.storage.CompoundV3BorrowStrategy
    struct CompoundV3BorrowStrategyStorage {
        IComet _comet;
        IERC20 _borrowToken;
    }

    bytes32 private constant CompoundV3BorrowStrategyStorageLocation =
        keccak256(abi.encode(uint256(keccak256("odyssey.storage.CompoundV3BorrowStrategy")) - 1)) &
            ~bytes32(uint256(0xff));

    function _getCompoundV3BorrowStrategyStorage() private pure returns (CompoundV3BorrowStrategyStorage storage $) {
        bytes32 location = CompoundV3BorrowStrategyStorageLocation;
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
        CompoundV3 compoundV3_
    ) Strategy(oracle_, swapAggregator_) {
        if (address(compoundV3_) == address(0)) revert AddressIsNull();

        compoundV3 = compoundV3_;
    }

    /*//////////////////////////////////////////////////////////////
                                 PARAMS
    //////////////////////////////////////////////////////////////*/

    function _setCustomParams(bytes memory customParams_) internal override {
        (IComet _comet, IERC20 _borrowToken) = abi.decode(customParams_, (IComet, IERC20));

        if (address(_comet) == address(0)) revert AddressIsNull();
        if (address(_borrowToken) == address(0)) revert AddressIsNull();

        CompoundV3BorrowStrategyStorage storage $ = _getCompoundV3BorrowStrategyStorage();
        $._comet = _comet;
        $._borrowToken = _borrowToken;
    }

    function _unsetCustomParams() internal override {
        CompoundV3BorrowStrategyStorage storage $ = _getCompoundV3BorrowStrategyStorage();
        delete $._comet;
        delete $._borrowToken;
    }

    function _canTransferOut(IERC20 tokenOut_) internal view override returns (bool) {
        return tokenOut_ == borrowToken();
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
        (IComet _comet, ) = abi.decode(_customParams, (IComet, IERC20));

        _collateralFactor = compoundV3.collateralFactorOf(_comet, _asset);
        _interestRate = compoundV3.interestRateOf(_comet);
    }

    function _totalAllocated() internal view override returns (uint256 _assets) {
        IERC20 _asset = asset();
        IComet _comet = comet();

        _assets = _comet.collateralBalanceOf(address(this), address(_asset));

        uint256 _debt = _comet.borrowBalanceOf(address(this));

        if (_debt > 0) {
            uint256 _debtInAssets = oracle.quote(address(borrowToken()), address(_asset), _debt);
            if (_debtInAssets >= _assets) {
                return 0;
            }

            _assets -= _debtInAssets;
        }
    }

    function _depositAsset(uint256 amount_) internal override {
        compoundV3.delegateDeposit(comet(), asset(), amount_);
    }

    function _withdrawAsset(uint256 amount_) internal virtual override returns (uint256 _withdrawn) {
        return compoundV3.delegateWithdraw(comet(), asset(), amount_);
    }

    function _claimAllAndAllocate(
        SwapParams[] memory swapParams_,
        bytes memory /*extraParams_*/
    ) internal override returns (uint256 _claimedInAssets) {
        IComet _comet = comet();

        // 1. Claim
        (address _rewardToken, uint256 _claimed) = compoundV3.delegateClaimAllRewards(_comet);

        if (_claimed == 0) return 0;

        // 2. Swap for `assets`
        _claimedInAssets = _swapRewardsForAssets(swapParams_, IERC20(_rewardToken), _claimed);

        // 3. Allocate
        if (_claimedInAssets > 0) {
            compoundV3.delegateDeposit(_comet, asset(), _claimedInAssets);
        }
    }

    /// @inheritdoc IBorrowStrategy
    function ltv() external view override returns (uint256 _ltv) {
        if (!isOpen()) return 0;

        IComet _comet = comet();
        IERC20 _asset = asset();

        uint256 _debt = _comet.borrowBalanceOf(address(this));

        return
            (oracle.quote(address(borrowToken()), address(_asset), _debt) * 1e18) /
            _comet.collateralBalanceOf(address(this), address(_asset));
    }

    /// @inheritdoc IBorrowStrategy
    function collateralFactor() public view override returns (uint256) {
        return compoundV3.collateralFactorOf(comet(), asset());
    }

    /// @inheritdoc IBorrowStrategy
    function interestRate() external view override returns (uint256) {
        return compoundV3.interestRateOf(comet());
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

        IComet _comet = comet();
        compoundV3.delegateDeposit(_comet, asset(), _amountIn);
        compoundV3.delegateBorrow(_comet, borrowToken(), _borrowAmount);
    }

    function _pull(bytes memory params_) internal override {
        (uint256 _repayAmount, uint256 _withdrawAmount) = abi.decode(params_, (uint256, uint256));

        IComet _comet = comet();

        if (_repayAmount > 0) {
            compoundV3.delegateRepay(_comet, borrowToken(), _repayAmount);
        }

        compoundV3.delegateWithdraw(_comet, asset(), _withdrawAmount);
    }

    /// @inheritdoc IBorrowStrategy
    function depositAndBorrow(bytes memory params_) external isFeature {
        (uint256 _depositAmount, uint256 _borrowAmount) = abi.decode(params_, (uint256, uint256));

        IComet _comet = comet();
        if (_depositAmount > 0) compoundV3.delegateDeposit(_comet, asset(), _depositAmount);
        if (_borrowAmount > 0) compoundV3.delegateBorrow(_comet, borrowToken(), _borrowAmount);
    }

    /// @inheritdoc IBorrowStrategy
    function repayAndWithdraw(bytes memory params_) external isFeature {
        (uint256 _repayAmount, uint256 _withdrawAmount) = abi.decode(params_, (uint256, uint256));

        IComet _comet = comet();
        if (_repayAmount > 0) compoundV3.delegateRepay(_comet, borrowToken(), _repayAmount);
        if (_withdrawAmount > 0) compoundV3.delegateWithdraw(_comet, asset(), _withdrawAmount);
    }

    /// @inheritdoc IBorrowStrategy
    function deposit(bytes memory params_) external isFeature {
        compoundV3.delegateDeposit({comet_: comet(), tokenIn_: asset(), amount_: abi.decode(params_, (uint256))});
    }

    /// @inheritdoc IBorrowStrategy
    function borrow(bytes memory params_) external isFeature {
        compoundV3.delegateBorrow({
            comet_: comet(),
            borrowToken_: borrowToken(),
            amount_: abi.decode(params_, (uint256))
        });
    }

    /// @inheritdoc IBorrowStrategy
    function repay(bytes memory params_) external isFeature {
        compoundV3.delegateRepay({
            comet_: comet(),
            borrowToken_: borrowToken(),
            amount_: abi.decode(params_, (uint256))
        });
    }

    /// @inheritdoc IBorrowStrategy
    function withdraw(bytes memory params_) external isFeature {
        _withdrawAsset({amount_: abi.decode(params_, (uint256))});
    }

    /*//////////////////////////////////////////////////////////////
                                GETTERS
    //////////////////////////////////////////////////////////////*/

    function claimableRewards() external returns (address _rewardToken, uint256 _claimableRewards) {
        (_rewardToken, _claimableRewards) = compoundV3.claimableRewards(comet(), address(this));
    }

    /// @inheritdoc IBorrowStrategy
    function borrowToken() public view returns (IERC20) {
        CompoundV3BorrowStrategyStorage storage $ = _getCompoundV3BorrowStrategyStorage();
        return $._borrowToken;
    }

    function comet() public view returns (IComet) {
        CompoundV3BorrowStrategyStorage storage $ = _getCompoundV3BorrowStrategyStorage();
        return $._comet;
    }

    /// @inheritdoc IBorrowStrategy
    function depositedAmount() public view returns (uint256) {
        if (!isOpen()) return 0;
        return comet().collateralBalanceOf(address(this), address(asset()));
    }

    /// @inheritdoc IBorrowStrategy
    function borrowedAmount() public view returns (uint256) {
        if (!isOpen()) return 0;
        return comet().borrowBalanceOf(address(this));
    }

    receive() external payable {}
}
