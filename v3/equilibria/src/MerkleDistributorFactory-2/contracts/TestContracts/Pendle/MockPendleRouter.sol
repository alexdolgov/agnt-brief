// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import "@shared/lib-contracts-v0.8/contracts/TestContracts/ERC20Mock.sol";
import "../../Interfaces/Pendle/IPendleRouter.sol";
import "./Errors.sol";

contract MockPendleRouter is IPendleRouter {
    using SafeERC20 for IERC20;

    address internal constant NATIVE = address(0);

    function addLiquiditySingleToken(
        address receiver,
        address market,
        uint256 minLpOut,
        ApproxParams calldata,
        TokenInput calldata input
    ) external payable override returns (uint256 netLpOut, uint256 netSyFee) {
        _transferIn(input.tokenIn, msg.sender, input.netTokenIn);
        netLpOut = input.netTokenIn;
        if (netLpOut < minLpOut) {
            revert Errors.RouterInsufficientLpOut(netLpOut, minLpOut);
        }
        netSyFee = 0;
        ERC20Mock(market).mint(receiver, netLpOut);
    }

    function removeLiquiditySingleToken(
        address receiver,
        address market,
        uint256 netLpToRemove,
        TokenOutput calldata output
    ) external override returns (uint256 netTokenOut, uint256 netSyFee) {
        ERC20Mock(market).burn(msg.sender, netLpToRemove);
        netTokenOut = netLpToRemove;
        if (netTokenOut < output.minTokenOut) {
            revert Errors.RouterInsufficientTokenOut(
                netTokenOut,
                output.minTokenOut
            );
        }
        netSyFee = 0;
        _transferOut(output.tokenOut, receiver, netTokenOut);
    }

    function _transferIn(
        address _token,
        address _from,
        uint256 _amount
    ) internal {
        if (_token == NATIVE) {
            require(msg.value == _amount, "eth mismatch");
        } else if (_amount != 0) {
            IERC20(_token).safeTransferFrom(_from, address(this), _amount);
        }
    }

    function _transferOut(
        address _token,
        address _to,
        uint256 _amount
    ) internal {
        if (_amount == 0) return;
        if (_token == NATIVE) {
            (bool success, ) = _to.call{value: _amount}("");
            require(success, "eth send failed");
        } else {
            ERC20Mock(_token).mint(_to, _amount);
        }
    }
}
