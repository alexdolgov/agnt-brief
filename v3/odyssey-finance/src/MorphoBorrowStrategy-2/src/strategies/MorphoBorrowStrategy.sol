// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {IBorrowStrategy} from "src/interfaces/IBorrowStrategy.sol";
import {Strategy, IMasterOracle, SwapAggregator} from "./Strategy.sol";
import {Morpho, MorphoDelegateCalls} from "src/components/Morpho.sol";
import {Id} from "src/interfaces/external/IMorpho.sol";

contract MorphoBorrowStrategy is IBorrowStrategy, Strategy {
    using SafeERC20 for IERC20;
    using MorphoDelegateCalls for Morpho;

    Morpho public immutable morpho;

    error MarketIdIsNull();
    error InvalidMarketId();

    /*//////////////////////////////////////////////////////////////
                                STORAGE
    //////////////////////////////////////////////////////////////*/

    /// @custom:storage-location erc7201:odyssey.storage.MorphoBorrowStrategy
    struct MorphoBorrowStrategyStorage {
        Id _marketId;
        IERC20 _borrowToken;
    }

    bytes32 private constant MorphoBorrowStrategyStorageLocation =
        keccak256(abi.encode(uint256(keccak256("odyssey.storage.MorphoBorrowStrategy")) - 1)) & ~bytes32(uint256(0xff));

    function _getMorphoBorrowStrategyStorage() private pure returns (MorphoBorrowStrategyStorage storage $) {
        bytes32 location = MorphoBorrowStrategyStorageLocation;
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
        Morpho morpho_
    ) Strategy(oracle_, swapAggregator_) {
        if (address(morpho_) == address(0)) revert AddressIsNull();

        morpho = morpho_;
    }

    /*//////////////////////////////////////////////////////////////
                                 PARAMS
    //////////////////////////////////////////////////////////////*/

    function _setCustomParams(bytes memory _customParams) internal override {
        Id _marketId = Id.wrap(abi.decode(_customParams, (bytes32)));

        if (Id.unwrap(_marketId) == bytes32(0)) revert MarketIdIsNull();

        (address _collateralToken, address _borrowToken) = morpho.getTokens(_marketId);

        if (_collateralToken == address(0) || _borrowToken == address(0) || _collateralToken != address(asset()))
            revert InvalidMarketId();

        MorphoBorrowStrategyStorage storage $ = _getMorphoBorrowStrategyStorage();
        $._marketId = _marketId;
        $._borrowToken = IERC20(_borrowToken);
    }

    function _unsetCustomParams() internal override {
        MorphoBorrowStrategyStorage storage $ = _getMorphoBorrowStrategyStorage();
        $._marketId = Id.wrap(bytes32(0)); // Note: delete doesn't work for user defined types
        delete $._borrowToken;
    }

    /*//////////////////////////////////////////////////////////////
                               OVERRIDES
    //////////////////////////////////////////////////////////////*/

    /// @inheritdoc IBorrowStrategy
    function previewBorrowParams(
        bytes memory positionParams_
    ) external view returns (uint256 _collateralFactor, uint256 _interestRate) {
        (, bytes memory _customParams) = abi.decode(positionParams_, (bytes, bytes));
        Id _marketId = Id.wrap(abi.decode(_customParams, (bytes32)));

        _collateralFactor = morpho.collateralFactorOf(_marketId);
        _interestRate = morpho.interestRateOf(_marketId);
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
        morpho.delegateDeposit(marketId(), amount_);
    }

    function _withdrawAsset(uint256 amount_) internal virtual override returns (uint256 _withdrawn) {
        return morpho.delegateWithdraw(marketId(), amount_);
    }

    /// @inheritdoc IBorrowStrategy
    function ltv() external view override returns (uint256 _ltv) {
        if (!isOpen()) return 0;

        Id _marketId = marketId();
        uint256 _deposit = morpho.depositedAmount(_marketId, address(this));
        uint256 _debt = morpho.borrowedAmount(_marketId, address(this));

        return (oracle.quote(address(borrowToken()), address(asset()), _debt) * 1e18) / _deposit;
    }

    /// @inheritdoc IBorrowStrategy
    function collateralFactor() external view override returns (uint256) {
        return morpho.collateralFactorOf(marketId());
    }

    /// @inheritdoc IBorrowStrategy
    function interestRate() external view override returns (uint256) {
        return morpho.interestRateOf(marketId());
    }

    /// @inheritdoc IBorrowStrategy
    function healthFactor() external view override returns (uint256) {
        return morpho.healthFactorOf(marketId(), address(this));
    }

    /*//////////////////////////////////////////////////////////////
                                FEATURES
    //////////////////////////////////////////////////////////////*/

    function _push(bytes memory params_) internal override {
        (uint256 _amountIn, uint256 _borrowAmount) = abi.decode(params_, (uint256, uint256));

        Id _id = marketId();
        morpho.delegateDeposit(_id, _amountIn);
        morpho.delegateBorrow(_id, _borrowAmount);
    }

    function _pull(bytes memory params_) internal override {
        (uint256 _repayAmount, uint256 _withdrawAmount) = abi.decode(params_, (uint256, uint256));

        // User may want to withdraw some asset without repay
        if (_repayAmount > 0) {
            morpho.delegateRepay(marketId(), _repayAmount);
        }
        _withdrawAsset(_withdrawAmount);
    }

    /// @inheritdoc IBorrowStrategy
    function depositAndBorrow(bytes memory params_) external isFeature {
        (uint256 _depositAmount, uint256 _borrowAmount) = abi.decode(params_, (uint256, uint256));

        Id _id = marketId();
        if (_depositAmount > 0) morpho.delegateDeposit(_id, _depositAmount);
        if (_borrowAmount > 0) morpho.delegateBorrow(_id, _borrowAmount);
    }

    /// @inheritdoc IBorrowStrategy
    function repayAndWithdraw(bytes memory params_) external isFeature {
        (uint256 _repayAmount, uint256 _withdrawAmount) = abi.decode(params_, (uint256, uint256));

        if (_repayAmount > 0) morpho.delegateRepay(marketId(), _repayAmount);
        if (_withdrawAmount > 0) _withdrawAsset(_withdrawAmount);
    }

    /// @inheritdoc IBorrowStrategy
    function deposit(bytes memory params_) external isFeature {
        _depositAsset({amount_: abi.decode(params_, (uint256))});
    }

    /// @inheritdoc IBorrowStrategy
    function borrow(bytes memory params_) external isFeature {
        morpho.delegateBorrow({marketId_: marketId(), amount_: abi.decode(params_, (uint256))});
    }

    /// @inheritdoc IBorrowStrategy
    function repay(bytes memory params_) external isFeature {
        morpho.delegateRepay({marketId_: marketId(), amount_: abi.decode(params_, (uint256))});
    }

    /// @inheritdoc IBorrowStrategy
    function withdraw(bytes memory params_) external isFeature {
        _withdrawAsset({amount_: abi.decode(params_, (uint256))});
    }

    /*//////////////////////////////////////////////////////////////
                                GETTERS
    //////////////////////////////////////////////////////////////*/

    function marketId() public view returns (Id) {
        MorphoBorrowStrategyStorage storage $ = _getMorphoBorrowStrategyStorage();
        return $._marketId;
    }

    function borrowToken() public view returns (IERC20) {
        MorphoBorrowStrategyStorage storage $ = _getMorphoBorrowStrategyStorage();
        return $._borrowToken;
    }

    function depositedAmount() public view returns (uint256) {
        if (!isOpen()) return 0;
        return morpho.depositedAmount(marketId(), address(this));
    }

    function borrowedAmount() public view returns (uint256) {
        if (!isOpen()) return 0;
        return morpho.borrowedAmount(marketId(), address(this));
    }
}
