// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {IAToken, IVariableDebtToken} from "src/interfaces/external/IAaveV3.sol";
import {IBorrowStrategy} from "src/interfaces/IBorrowStrategy.sol";
import {Strategy, IMasterOracle, SwapAggregator, SwapParams} from "./Strategy.sol";
import {AaveV3, AaveV3DelegateCalls} from "src/components/AaveV3.sol";

contract AaveV3BorrowStrategy is IBorrowStrategy, Strategy {
    using SafeERC20 for IERC20;
    using AaveV3DelegateCalls for AaveV3;

    AaveV3 public immutable aaveV3;

    /*//////////////////////////////////////////////////////////////
                                STORAGE
    //////////////////////////////////////////////////////////////*/

    /// @custom:storage-location erc7201:odyssey.storage.AaveV3BorrowStrategy
    struct AaveV3BorrowStrategyStorage {
        IAToken _aTokenDeposit;
        IERC20 _borrowToken;
        IVariableDebtToken _vdTokenBorrow;
    }

    bytes32 private constant AaveV3BorrowStrategyStorageLocation =
        keccak256(abi.encode(uint256(keccak256("odyssey.storage.AaveV3BorrowStrategy")) - 1)) & ~bytes32(uint256(0xff));

    function _getAaveV3BorrowStrategyStorage() private pure returns (AaveV3BorrowStrategyStorage storage $) {
        bytes32 location = AaveV3BorrowStrategyStorageLocation;
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
        AaveV3 aaveV3_
    ) Strategy(oracle_, swapAggregator_) {
        if (address(aaveV3_) == address(0)) revert AddressIsNull();

        aaveV3 = aaveV3_;
    }

    /*//////////////////////////////////////////////////////////////
                                 PARAMS
    //////////////////////////////////////////////////////////////*/

    function _setCustomParams(bytes memory _customParams) internal override {
        IERC20 _borrowToken = abi.decode(_customParams, (IERC20));

        if (address(_borrowToken) == address(0)) revert AddressIsNull();

        (address _aTokenDeposit, , address _vdTokenBorrow) = aaveV3.getReserveTokens(asset(), _borrowToken);

        if (_aTokenDeposit == address(0)) revert AddressIsNull();
        if (_vdTokenBorrow == address(0)) revert AddressIsNull();

        AaveV3BorrowStrategyStorage storage $ = _getAaveV3BorrowStrategyStorage();
        $._aTokenDeposit = IAToken(_aTokenDeposit);
        $._borrowToken = _borrowToken;
        $._vdTokenBorrow = IVariableDebtToken(_vdTokenBorrow);
    }

    function _unsetCustomParams() internal override {
        AaveV3BorrowStrategyStorage storage $ = _getAaveV3BorrowStrategyStorage();
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
        (address _aTokenDeposit, , address _vdTokenBorrow) = aaveV3.getReserveTokens(_asset, _borrowToken);

        _collateralFactor = aaveV3.collateralFactorOf(IAToken(_aTokenDeposit));
        _interestRate = aaveV3.interestRateOf(IVariableDebtToken(_vdTokenBorrow));
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
        aaveV3.delegateSupply(aTokenDeposit(), amount_);
    }

    function _withdrawAsset(uint256 amount_) internal virtual override returns (uint256 _withdrawn) {
        return aaveV3.delegateWithdraw(aTokenDeposit(), amount_);
    }

    function _claimAllAndAllocate(
        SwapParams[] memory swapParams_,
        bytes memory /*extraParams_*/
    ) internal override returns (uint256 _claimedInAssets) {
        // 1. Claim
        IAToken _aTokenDeposit = aTokenDeposit();

        address[] memory _tokens = new address[](2);
        _tokens[0] = address(_aTokenDeposit);
        _tokens[1] = address(vdTokenBorrow());

        (IERC20[] memory _rewardTokens, uint256[] memory _claimed) = aaveV3.delegateClaimRewards(_tokens);

        // 2. Swap for `assets`
        _claimedInAssets = _swapRewardsForAssets(swapParams_, _rewardTokens, _claimed);

        // 3. Allocate
        if (_claimedInAssets > 0) {
            aaveV3.delegateSupply(_aTokenDeposit, _claimedInAssets);
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
        return aaveV3.collateralFactorOf(aTokenDeposit());
    }

    /// @inheritdoc IBorrowStrategy
    function interestRate() external view override returns (uint256) {
        return aaveV3.interestRateOf(vdTokenBorrow());
    }

    /// @inheritdoc IBorrowStrategy
    function healthFactor() external view override returns (uint256) {
        return aaveV3.healthFactorOf(address(this));
    }

    /*//////////////////////////////////////////////////////////////
                                FEATURES
    //////////////////////////////////////////////////////////////*/

    function _push(bytes memory params_) internal override {
        (uint256 _amountIn, uint256 _borrowAmount) = abi.decode(params_, (uint256, uint256));

        _depositAsset(_amountIn);
        aaveV3.delegateBorrow(vdTokenBorrow(), _borrowAmount);
    }

    function _pull(bytes memory params_) internal override {
        (uint256 _repayAmount, uint256 _withdrawAmount) = abi.decode(params_, (uint256, uint256));

        // User may want to withdraw some asset without repay
        if (_repayAmount > 0) {
            aaveV3.delegateRepay(vdTokenBorrow(), _repayAmount);
        }
        _withdrawAsset(_withdrawAmount);
    }

    /// @inheritdoc IBorrowStrategy
    function depositAndBorrow(bytes memory params_) external isFeature {
        (uint256 _depositAmount, uint256 _borrowAmount) = abi.decode(params_, (uint256, uint256));

        if (_depositAmount > 0) _depositAsset(_depositAmount);
        if (_borrowAmount > 0) aaveV3.delegateBorrow(vdTokenBorrow(), _borrowAmount);
    }

    /// @inheritdoc IBorrowStrategy
    function repayAndWithdraw(bytes memory params_) external isFeature {
        (uint256 _repayAmount, uint256 _withdrawAmount) = abi.decode(params_, (uint256, uint256));

        if (_repayAmount > 0) aaveV3.delegateRepay(vdTokenBorrow(), _repayAmount);
        if (_withdrawAmount > 0) _withdrawAsset(_withdrawAmount);
    }

    /// @inheritdoc IBorrowStrategy
    function deposit(bytes memory params_) external isFeature {
        _depositAsset({amount_: abi.decode(params_, (uint256))});
    }

    /// @inheritdoc IBorrowStrategy
    function borrow(bytes memory params_) external isFeature {
        aaveV3.delegateBorrow({vdToken_: vdTokenBorrow(), amount_: abi.decode(params_, (uint256))});
    }

    /// @inheritdoc IBorrowStrategy
    function repay(bytes memory params_) external isFeature {
        aaveV3.delegateRepay({vdToken_: vdTokenBorrow(), amount_: abi.decode(params_, (uint256))});
    }

    /// @inheritdoc IBorrowStrategy
    function withdraw(bytes memory params_) external isFeature {
        _withdrawAsset({amount_: abi.decode(params_, (uint256))});
    }

    /*//////////////////////////////////////////////////////////////
                                GETTERS
    //////////////////////////////////////////////////////////////*/

    function claimableRewards()
        external
        view
        returns (IERC20[] memory _rewardTokens, uint256[] memory _unclaimedAmounts)
    {
        address[] memory _tokens = new address[](2);
        _tokens[0] = address(aTokenDeposit());
        _tokens[1] = address(vdTokenBorrow());

        (_rewardTokens, _unclaimedAmounts) = aaveV3.claimableRewards(_tokens, address(this));
    }

    function aTokenDeposit() public view returns (IAToken) {
        AaveV3BorrowStrategyStorage storage $ = _getAaveV3BorrowStrategyStorage();
        return $._aTokenDeposit;
    }

    /// @inheritdoc IBorrowStrategy
    function borrowToken() public view returns (IERC20) {
        AaveV3BorrowStrategyStorage storage $ = _getAaveV3BorrowStrategyStorage();
        return $._borrowToken;
    }

    function vdTokenBorrow() public view returns (IVariableDebtToken) {
        AaveV3BorrowStrategyStorage storage $ = _getAaveV3BorrowStrategyStorage();
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
