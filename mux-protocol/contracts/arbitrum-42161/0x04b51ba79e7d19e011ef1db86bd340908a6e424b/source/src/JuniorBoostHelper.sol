// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity 0.8.28;

import {Initializable} from "../lib/openzeppelin-contracts-upgradeable/contracts/proxy/utils/Initializable.sol";
import {IERC20} from "../lib/openzeppelin-contracts/contracts/token/ERC20/IERC20.sol";
import {ReentrancyGuardUpgradeable} from "../lib/openzeppelin-contracts-upgradeable/contracts/security/ReentrancyGuardUpgradeable.sol";

import {SharesMathLib} from "./libraries/SharesMathLib.sol";
import {MarketParamsLib} from "./libraries/MarketParamsLib.sol";
import {IMuxOrderBook, LiquidityOrderParams} from "./interfaces/IMuxOrderBook.sol";
import {IMorpho, MarketParams, Id, Position, Market} from "./interfaces/IMorpho.sol";
import {ImplementationGuard} from "./ImplementationGuard.sol";

import {IJuniorBoostHelper, ExecutionPlan} from "./interfaces/IJuniorBoostHelper.sol";
import {IWETH9} from "./interfaces/IWETH9.sol";

import {LibEthUnwrapper} from "./libraries/LibEthUnwrapper.sol";

contract JuniorBoostHelper is
    Initializable,
    ReentrancyGuardUpgradeable,
    ImplementationGuard,
    IJuniorBoostHelper
{
    using SharesMathLib for uint256;
    using MarketParamsLib for MarketParams;

    bytes32 public constant MCO_ORDER_GAS_FEE_GWEI =
        keccak256("MCO_ORDER_GAS_FEE_GWEI");

    IWETH9 public immutable weth;

    IMorpho public morpho;
    IMuxOrderBook public orderBook;

    address public owner;
    address public factory;

    uint64 public orderId;
    uint256 public step;

    ExecutionPlan internal _plan;

    bool public isAdding;

    constructor(address weth_) {
        weth = IWETH9(weth_);
    }

    receive() external payable {
        require(msg.sender == address(weth), "Invalid ether sender");
    }

    modifier onlyAuth() {
        require(
            msg.sender == owner || msg.sender == address(factory),
            "Invalid sender"
        );
        _;
    }

    function initialize(
        address owner_,
        address morpho_,
        address orderBook_
    ) external initializer onlyDelegateCall {
        require(morpho_ != address(0), "Morpho address is required");
        require(orderBook_ != address(0), "OrderBook address is required");

        morpho = IMorpho(morpho_);
        orderBook = IMuxOrderBook(orderBook_);
        owner = owner_;
        factory = msg.sender;
    }

    function plan() external view returns (ExecutionPlan memory) {
        return _plan;
    }

    function rescue(address token, uint256 amount) external onlyAuth {
        require(step == 0, "Another plan is ongoing");
        if (token == address(0)) {
            LibEthUnwrapper.send(weth, payable(owner), amount);
        } else {
            IERC20(token).transfer(owner, amount);
        }
        emit Rescue(token, amount);
    }

    function zapIn(
        MarketParams memory marketParams,
        address mepPool,
        uint256 depositingCollaterals,
        uint256[] memory borrowingSteps
    ) external payable nonReentrant onlyAuth {
        require(mepPool != address(0), "MepPool is required");
        require(step == 0, "Another plan is ongoing");
        require(
            depositingCollaterals != 0 || borrowingSteps.length > 0,
            "depositingCollaterals or borrowing steps are required"
        );
        uint256 gasFeePerOrder = _getGasFeePerOrder();
        _prepareGasFee(borrowingSteps.length, gasFeePerOrder);

        _plan = ExecutionPlan({
            marketParams: marketParams,
            mepPool: mepPool,
            collaterals: depositingCollaterals,
            steps: borrowingSteps
        });
        isAdding = true;
        IERC20(marketParams.collateralToken).transferFrom(
            owner,
            address(this),
            depositingCollaterals
        );
        _proceedZapIn(depositingCollaterals, gasFeePerOrder);

        emit ZapIn(
            owner,
            marketParams,
            mepPool,
            depositingCollaterals,
            borrowingSteps
        );
    }

    function zapOut(
        MarketParams memory marketParams,
        address mepPool,
        uint256 withdrawingCollaterals,
        uint256[] memory repayingSteps
    ) external payable nonReentrant onlyAuth {
        require(mepPool != address(0), "MepPool is required");
        require(step == 0, "Another plan is ongoing");
        require(
            withdrawingCollaterals != 0 || repayingSteps.length > 0,
            "withdrawingCollaterals or repayingSteps are required"
        );
        uint256 gasFeePerOrder = _getGasFeePerOrder();
        _prepareGasFee(repayingSteps.length, gasFeePerOrder);

        _plan = ExecutionPlan({
            marketParams: marketParams,
            mepPool: mepPool,
            collaterals: withdrawingCollaterals,
            steps: repayingSteps
        });
        isAdding = false;
        _proceedZapOut(0, gasFeePerOrder);
        emit ZapOut(
            owner,
            marketParams,
            mepPool,
            withdrawingCollaterals,
            repayingSteps
        );
    }

    function cancel() external nonReentrant onlyAuth {
        require(step != 0 || orderId != 0, "No plan is ongoing");
        if (orderId > 0) {
            (, bool isOrderExist) = orderBook.getOrder(orderId);
            if (isOrderExist) {
                orderBook.cancelOrder(orderId);
            }
        }
        _refundToken(_plan.marketParams.loanToken);
        _refundToken(_plan.marketParams.collateralToken);
        _cleanup();
    }

    function afterLiquidityOrderFilled(
        uint64, // orderId
        uint256 assets,
        uint256 lpShares,
        uint256 assetPrice,
        uint256 mlpPrice
    ) external {
        require(msg.sender == address(orderBook), "Invalid callback sender");
        uint256 gasFeePerOrder = _getGasFeePerOrder();
        if (isAdding) {
            _proceedZapIn(lpShares, gasFeePerOrder);
        } else {
            _proceedZapOut(assets, gasFeePerOrder);
        }
    }

    function _refundToken(address token) internal {
        uint256 balance = IERC20(token).balanceOf(address(this));
        if (balance == 0) {
            return;
        }
        IERC20(token).transfer(owner, balance);
    }

    function _prepareGasFee(
        uint256 stepCount,
        uint256 gasFeePerOrder
    ) internal {
        require(
            msg.value >= gasFeePerOrder * stepCount,
            "Insufficient gas fee"
        );
        IWETH9(weth).deposit{value: msg.value}(); // prepare gas fee
    }

    function _cleanup() internal {
        orderId = 0;
        step = 0;

        uint256 wethBalance = weth.balanceOf(address(this));
        if (wethBalance > 0) {
            IWETH9(weth).withdraw(wethBalance);
        }
        uint256 ethBalance = address(this).balance;
        if (ethBalance > 0) {
            LibEthUnwrapper.send(weth, payable(owner), ethBalance);
        }
    }

    function _proceedZapIn(
        uint256 depositingCollaterals,
        uint256 gasFeePerOrder
    ) internal {
        if (depositingCollaterals > 0) {
            IERC20(_plan.marketParams.collateralToken).approve(
                address(morpho),
                depositingCollaterals
            );
            morpho.supplyCollateral(
                _plan.marketParams,
                depositingCollaterals,
                owner,
                ""
            );
        }

        if (step < _plan.steps.length) {
            uint256 borrowingAssets = _plan.steps[step];
            // borrow and place liquidity order
            (uint256 borrowedAssets, ) = morpho.borrow(
                _plan.marketParams,
                borrowingAssets,
                0,
                owner,
                address(this)
            );
            require(borrowedAssets >= borrowingAssets, "Borrow failed");
            require(
                IERC20(_plan.marketParams.loanToken).balanceOf(address(this)) >=
                    borrowedAssets,
                "Transfer failed"
            );

            weth.transfer(address(orderBook), gasFeePerOrder);
            orderBook.depositGas(address(this), gasFeePerOrder);

            orderId = orderBook.nextOrderId();
            IERC20(_plan.marketParams.loanToken).transfer(
                address(orderBook),
                borrowedAssets
            );
            orderBook.placeLiquidityOrder(
                LiquidityOrderParams({
                    poolAddress: _plan.mepPool,
                    token: _plan.marketParams.loanToken,
                    rawAmount: borrowedAssets,
                    isAdding: true,
                    isUnwrapWeth: false
                })
            );
            step += 1;
        } else {
            _cleanup();
        }
    }

    function _proceedZapOut(uint256 assets, uint256 gasFeePerOrder) internal {
        if (assets > 0) {
            IERC20(_plan.marketParams.loanToken).approve(
                address(morpho),
                assets
            );
            morpho.repay(_plan.marketParams, assets, 0, owner, "");
        }

        if (step < _plan.steps.length) {
            uint256 repayingLpTokens = _plan.steps[step];
            morpho.withdrawCollateral(
                _plan.marketParams,
                repayingLpTokens,
                owner,
                address(this)
            );
            require(
                IERC20(_plan.marketParams.collateralToken).balanceOf(
                    address(this)
                ) >= repayingLpTokens,
                "Transfer failed"
            );
            orderId = orderBook.nextOrderId();
            IERC20(_plan.marketParams.collateralToken).transfer(
                address(orderBook),
                repayingLpTokens
            );
            weth.transfer(address(orderBook), gasFeePerOrder);
            orderBook.depositGas(address(this), gasFeePerOrder);
            orderBook.placeLiquidityOrder(
                LiquidityOrderParams({
                    poolAddress: _plan.mepPool,
                    token: address(_plan.marketParams.loanToken),
                    rawAmount: repayingLpTokens,
                    isAdding: false,
                    isUnwrapWeth: false
                })
            );
            step += 1;
        } else {
            // do something
            morpho.withdrawCollateral(
                _plan.marketParams,
                _plan.collaterals,
                owner,
                owner
            );
            _cleanup();
        }
    }

    function _getGasFeePerOrder() internal view returns (uint256 gasFee) {
        gasFee = uint256(orderBook.configValue(MCO_ORDER_GAS_FEE_GWEI));
        gasFee *= 1e9;
    }
}
