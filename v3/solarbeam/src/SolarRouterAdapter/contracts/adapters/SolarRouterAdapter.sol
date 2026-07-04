// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "../../interfaces/ISolarFactory.sol";
import "../../interfaces/ISolarPair.sol";
import "../SmartRouterAdapter.sol";

contract SolarRouterAdapter is SmartRouterAdapter {
    using SafeERC20 for IERC20;

    bytes32 public constant ID = keccak256("SolarRouterAdapter");
    uint internal constant FEE_DENOMINATOR = 1e4;
    uint public immutable feeCompliment;
    address public immutable factory;

    constructor(
        string memory _name, 
        address _factory, 
        uint _fee,
        uint _swapGasEstimate,
        address _wwative
    ) {
        require(FEE_DENOMINATOR > _fee, "Fee greater than the denominator");
        factory = _factory;
        name = _name;
        feeCompliment = FEE_DENOMINATOR - _fee;
        wnative = _wwative;
        setSwapGasEstimate(_swapGasEstimate);
        setAllowances();
    }

    function setAllowances() public override onlyOwner {
        IERC20(wnative).safeApprove(wnative, UINT_MAX);
    }

    function _approveIfNeeded(address tokenIn, uint amount) internal override {}

    function _getAmountOut(
        uint _amountIn, 
        uint _reserveIn, 
        uint _reserveOut
    ) internal view returns (uint amountOut) {
        uint amountInWithFee = _amountIn * feeCompliment;
        uint numerator = amountInWithFee * _reserveOut;
        uint denominator = _reserveIn * FEE_DENOMINATOR + amountInWithFee;
        amountOut = numerator / denominator;
    }

    function _query(
        uint _amountIn, 
        address _tokenIn, 
        address _tokenOut
    ) internal override view returns (uint) {
        if (_tokenIn == _tokenOut || _amountIn==0) { return 0; }
        address pair = ISolarFactory(factory).getPair(_tokenIn, _tokenOut);
        if (pair == address(0)) { return 0; }
        (uint r0, uint r1, ) = ISolarPair(pair).getReserves();
        (uint reserveIn, uint reserveOut) = _tokenIn < _tokenOut ? (r0, r1) : (r1, r0);
        if (reserveIn > 0 && reserveOut > 0) {
            return _getAmountOut(_amountIn, reserveIn, reserveOut);
        } else {
            return 0;
        }
    }

    function _swap(
        uint _amountIn, 
        uint _amountOut, 
        address _tokenIn, 
        address _tokenOut, 
        address to
    ) internal override {
        address pair = ISolarFactory(factory).getPair(_tokenIn, _tokenOut);
        (uint amount0Out, uint amount1Out) = (_tokenIn < _tokenOut) ? (uint(0), _amountOut) : (_amountOut, uint(0));
        IERC20(_tokenIn).safeTransfer(pair, _amountIn);
        ISolarPair(pair).swap(
            amount0Out, 
            amount1Out,
            to, 
            new bytes(0)
        );
    }
}