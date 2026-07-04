// SPDX-License-Identifier: MIT
// Tommy Genesis Flywheelie

pragma solidity ^0.8.13;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "Ownable.sol";
import "IConvexDeposit.sol";
import "ICurveFactoryPool.sol";


contract Flywheelie is Ownable {
    using SafeERC20 for IERC20;

    struct Dirtbike {
        address nativeToken;
        address convexToken;
        address pool;
        address deposit;
        int128 nativeIndex;
        int128 convexIndex;
    }
    
    Dirtbike[] public dirtbikes;

    //ICurveFactoryPool swap = ICurveFactoryPool(CURVE_CVXCRV_CRV_POOL);

    constructor() {
    }

    function newDirtbike(Dirtbike memory dirtbike) public onlyOwner {
        dirtbikes.push(dirtbike);
        IERC20(dirtbike.nativeToken).safeApprove(dirtbike.deposit, type(uint256).max);
        IERC20(dirtbike.convexToken).safeApprove(dirtbike.pool, type(uint256).max);
    }

    function _cvxToNative(address pool, int128 nativeIndex, int128 convexIndex, uint256 amount, address recipient, uint256 minAmountOut) internal returns (uint256) {
        try ICurveFactoryPool(pool).exchange(
                convexIndex,
                nativeIndex,
                amount,
                minAmountOut,
                recipient) returns (uint256 _out) {
            return _out;
        } catch Error(string memory) {
            return 0;
        } catch (bytes memory) {
            return 0;
        }
    }

    function _toCvx(address nativeToken, address deposit) internal returns (uint256) {
        uint256 _nativeBalance = IERC20(nativeToken).balanceOf(address(this));
        IConvexDeposit(deposit).deposit(_nativeBalance, false);
        return _nativeBalance;
    }

    function wheelie(uint256 dirtbike, address tokenIn, uint256 amountIn, uint256 minOut) public {
        Dirtbike memory bike = dirtbikes[dirtbike];
        require(tokenIn == bike.nativeToken || tokenIn == bike.convexToken, "can only supply native or convex token");
        require(amountIn > minOut, "Can't receive more than you put in");

        IERC20(tokenIn).safeTransferFrom(msg.sender, address(this), amountIn);

        uint256 onhand;
        if(tokenIn == bike.convexToken) {
            onhand = _cvxToNative(bike.pool, bike.nativeIndex, bike.convexIndex, amountIn, address(this), minOut);
        } else {
            onhand = amountIn;
        }

        while(true) { // should always end on cvx token after breaking for failed swap
            if(onhand == 0) { break; }
            _toCvx(bike.nativeToken, bike.deposit);
            onhand = _cvxToNative(bike.pool, bike.nativeIndex, bike.convexIndex, onhand, address(this), minOut);
        }
        onhand = IERC20(bike.convexToken).balanceOf(address(this));
        IERC20(bike.convexToken).safeTransfer(msg.sender, onhand);
    }

    // safety function incase tokens or eth get stuck, potential airdrop claims, etc.
    function execute(address _to, uint256 _value, bytes calldata _data) external onlyOwner returns (bool, bytes memory) {
        (bool success, bytes memory result) = _to.call{value:_value}(_data);
        return (success, result);
    }

}