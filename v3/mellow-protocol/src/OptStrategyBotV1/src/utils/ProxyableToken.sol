// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "../interfaces/utils/IProxyableToken.sol";

import "./ProxyToken.sol";

abstract contract ProxyableToken is IProxyableToken {
    using SafeERC20 for IERC20;
    address internal _admin;

    function admin() public view returns (address) {
        return _admin;
    }
}
