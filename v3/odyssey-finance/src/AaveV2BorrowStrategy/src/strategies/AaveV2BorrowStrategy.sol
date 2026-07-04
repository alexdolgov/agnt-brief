// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {IAToken, IVariableDebtToken} from "src/interfaces/external/IAaveV2.sol";
import {Strategy, IMasterOracle, SwapAggregator, SwapParams} from "./Strategy.sol";
import {IBorrowStrategy} from "src/interfaces/IBorrowStrategy.sol";
import {AaveV2, AaveV2DelegateCalls} from "src/components/AaveV2.sol";

contract AaveV2BorrowStrategy is IBorrowStrategy, Strategy {
    using SafeERC20 for IERC20;
    using AaveV2DelegateCalls for AaveV2;

    AaveV2 public immutable aaveV2;

    /*//////////////////////////////////////////////////////////////
                                STORAGE
    //////////////////////////////////////////////////////////////*/

    /// @custom:storage-location erc7201:odyssey.storage.AaveV2BorrowStrategy
    struct AaveV2BorrowStrategyStorage {
        IAToken _aTokenDeposit;
        IERC20 _borrowToken;
        IVariableDebtToken _vdTokenBorrow;
    }

    bytes32 private constant AaveV2BorrowStrategyStorageLocation =
        keccak256(abi.encode(uint256(keccak256("odyssey.storage.AaveV2BorrowStrategy")) - 1)) & ~bytes32(uint256(0xff));

    function _getAaveV2BorrowStrategyStorage() private pure returns (AaveV2BorrowStrategyStorage storage $) {
        bytes32 location = AaveV2BorrowStrategyStorageLocation;
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
        AaveV2 aaveV2_
    ) Strategy(oracle_, swapAggregator_) {
        if (address(aaveV2_) == address(0)) revert AddressIsNull();

        aaveV2 = aaveV2_;
    }

    /*//////////////////////////////////////////////////////////////
                                 PARAMS
    //////////////////////////////////////////////////////////////*/

    function _setCustomParams(bytes memory _customParams) internal override {
        IERC20 _borrowToken = abi.decode(_customParams, (IERC20));

        if (address(_borrowToken) == address(0)) revert AddressIsNull();

        (address _aTokenDeposit, , address _vdTokenBorrow) = aaveV2.getReserveTokens(asset(), _borrowToken);

        if (_aTokenDeposit == address(0)) revert AddressIsNull();
        if (_vdTokenBorrow == address(0)) revert AddressIsNull();

        AaveV2BorrowStrategyStorage storage $ = _getAaveV2BorrowStrategyStorage();
        $._aTokenDeposit = IAToken(_aTokenDeposit);
        $._borrowToken = _borrowToken;
        $._vdTokenBorrow = IVariableDebtToken(_vdTokenBorrow);
    }

    function _unsetCustomParams() internal override {
        AaveV2BorrowStrategyStorage storage $ = _getAaveV2BorrowStrategyStorage();
        delete $._aTokenDeposit;
        delete $._borrowToken;
        delete $._vdTokenBorrow;
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
        IERC20 _borrowToken = abi.decode(_customParams, (IERC20));
        (address _aTokenDeposit, , address _vdTokenBorrow) = aaveV2.getReserveTokens(_asset, _borrowToken);

        _collateralFactor = aaveV2.collateralFactorOf(IAToken(_aTokenDeposit));
        _interestRate = aaveV2.interestRateOf(IVariableDebtToken(_vdTokenBorrow));
    }

    function _canTransferOut(IERC20 tokenOut_) internal view override returns (bool) {
        return tokenOut_ == borrowToken();
    }

    function _totalAllocated() internal view override returns (uint256 _assets) {
        _assets = depositedAmount();
        uint256 _debt = borrowedAmount();

        if (_debt > 0) {
            uint256 _debtInAssets = oracle.quote(address(borrowToken()), address(asset()), _debt);
            if (_debtInAssets >= _assets) {
                return 0;
            }

            _assets -= _debtInAssets;
        }
    }

    function _depositAsset(uint256 amount_) internal override {
        aaveV2.delegateDeposit(aTokenDeposit(), amount_);
    }

    function _withdrawAsset(uint256 amount_) internal virtual override returns (uint256 _withdrawn) {
        return aaveV2.delegateWithdraw(aTokenDeposit(), amount_);
    }

    function _claimAllAndAllocate(
        SwapParams[] memory swapParams_,
        bytes memory /*extraParams_*/
    ) internal override returns (uint256 _claimedInAssets) {
        // 1. Claim
        IAToken _aTokenDeposit = aTokenDeposit();
        IERC20 _rewardToken = aaveV2.AAVE();
        uint256 _before = _rewardToken.balanceOf(address(this));
        address[] memory _tokens = new address[](2);
        _tokens[0] = address(_aTokenDeposit);
        _tokens[1] = address(vdTokenBorrow());
        aaveV2.delegateClaimRewards(_tokens);
        uint256 _claimed = _rewardToken.balanceOf(address(this)) - _before;

        if (_claimed == 0) return 0;

        // 2. Swap for `assets`
        _claimedInAssets = _swapRewardsForAssets(swapParams_, _rewardToken, _claimed);

        // 3. Allocate
        if (_claimedInAssets > 0) {
            aaveV2.delegateDeposit(_aTokenDeposit, _claimedInAssets);
        }
    }

    /// @inheritdoc IBorrowStrategy
    function ltv() external view override returns (uint256 _ltv) {
        if (!isOpen()) return 0;

        uint256 _debt = vdTokenBorrow().balanceOf(address(this));

        return
            (oracle.quote(address(borrowToken()), address(asset()), _debt) * 1e18) /
            aTokenDeposit().balanceOf(address(this));
    }

    /// @inheritdoc IBorrowStrategy
    function collateralFactor() external view override returns (uint256) {
        return aaveV2.collateralFactorOf(aTokenDeposit());
    }

    /// @inheritdoc IBorrowStrategy
    function interestRate() external view override returns (uint256) {
        return aaveV2.interestRateOf(vdTokenBorrow());
    }

    /// @inheritdoc IBorrowStrategy
    function healthFactor() external view override returns (uint256) {
        return aaveV2.healthFactorOf(address(this));
    }

    /*//////////////////////////////////////////////////////////////
                                FEATURES
    //////////////////////////////////////////////////////////////*/

    function _push(bytes memory params_) internal override {
        (uint256 _amountIn, uint256 _borrowAmount) = abi.decode(params_, (uint256, uint256));

        aaveV2.delegateDeposit(aTokenDeposit(), _amountIn);
        aaveV2.delegateBorrow(vdTokenBorrow(), _borrowAmount);
    }

    function _pull(bytes memory params_) internal override {
        (uint256 _repayAmount, uint256 _withdrawAmount) = abi.decode(params_, (uint256, uint256));

        // User may want to withdraw some asset without repay
        if (_repayAmount > 0) {
            aaveV2.delegateRepay(vdTokenBorrow(), _repayAmount);
        }

        // 2. Withdraw collateral
        _withdrawAsset(_withdrawAmount);
    }

    /// @inheritdoc IBorrowStrategy
    function depositAndBorrow(bytes memory params_) external isFeature {
        (uint256 _depositAmount, uint256 _borrowAmount) = abi.decode(params_, (uint256, uint256));

        if (_depositAmount > 0) _depositAsset(_depositAmount);
        if (_borrowAmount > 0) aaveV2.delegateBorrow(vdTokenBorrow(), _borrowAmount);
    }

    /// @inheritdoc IBorrowStrategy
    function repayAndWithdraw(bytes memory params_) external isFeature {
        (uint256 _repayAmount, uint256 _withdrawAmount) = abi.decode(params_, (uint256, uint256));

        if (_repayAmount > 0) aaveV2.delegateRepay(vdTokenBorrow(), _repayAmount);
        if (_withdrawAmount > 0) aaveV2.delegateWithdraw(aTokenDeposit(), _withdrawAmount);
    }

    /// @inheritdoc IBorrowStrategy
    function deposit(bytes memory params_) external isFeature {
        _depositAsset({amount_: abi.decode(params_, (uint256))});
    }

    /// @inheritdoc IBorrowStrategy
    function borrow(bytes memory params_) external isFeature {
        aaveV2.delegateBorrow({vdToken_: vdTokenBorrow(), amount_: abi.decode(params_, (uint256))});
    }

    /// @inheritdoc IBorrowStrategy
    function repay(bytes memory params_) external isFeature {
        aaveV2.delegateRepay({vdToken_: vdTokenBorrow(), amount_: abi.decode(params_, (uint256))});
    }

    /// @inheritdoc IBorrowStrategy
    function withdraw(bytes memory params_) external isFeature {
        aaveV2.delegateWithdraw({aToken_: aTokenDeposit(), amount_: abi.decode(params_, (uint256))});
    }

    /*//////////////////////////////////////////////////////////////
                                GETTERS
    //////////////////////////////////////////////////////////////*/

    function aTokenDeposit() public view returns (IAToken) {
        AaveV2BorrowStrategyStorage storage $ = _getAaveV2BorrowStrategyStorage();
        return $._aTokenDeposit;
    }

    /// @inheritdoc IBorrowStrategy
    function borrowToken() public view returns (IERC20) {
        AaveV2BorrowStrategyStorage storage $ = _getAaveV2BorrowStrategyStorage();
        return $._borrowToken;
    }

    function vdTokenBorrow() public view returns (IVariableDebtToken) {
        AaveV2BorrowStrategyStorage storage $ = _getAaveV2BorrowStrategyStorage();
        return $._vdTokenBorrow;
    }

    /// @inheritdoc IBorrowStrategy
    function depositedAmount() public view returns (uint256) {
        if (!isOpen()) return 0;
        return aTokenDeposit().balanceOf(address(this));
    }

    /// @inheritdoc IBorrowStrategy
    function borrowedAmount() public view returns (uint256) {
        if (!isOpen()) return 0;
        return vdTokenBorrow().balanceOf(address(this));
    }
}
