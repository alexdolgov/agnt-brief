// SPDX-License-Identifier: MIT

pragma solidity ^0.8.16;

import "./ReserveGuardian.sol";
import "../Liquidator/IWeswapRouter.sol";

contract WemixGuardian is ReserveGuardian {
    IWeswapRouter public router = IWeswapRouter(0x80a5A916FB355A8758f0a3e47891dc288DAC2665);
    address public weth = 0x7D72b22a74A216Af4a002a1095C8C707d6eC1C5f;

    function _swapToSBL(address _token, uint256 _amount) internal override {
        // Router.swapexactTokens

        if (_token == address(0)) {
            // Router.swapExactETHForTokens
            address[] memory path = new address[](2);
            path[0] = weth;
            path[1] = sbl;
            router.swapExactWEMIXForTokens{value: _amount}(1, path, govSBL, block.timestamp + 100);
        } else {
            //TODO approve
            address[] memory path = new address[](2);
            path[0] = _token;
            path[1] = sbl;
            router.swapExactTokensForTokens(_amount, 1, path, govSBL, block.timestamp + 100);
        }
    }
}
