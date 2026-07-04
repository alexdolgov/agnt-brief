// SPDX-License-Identifier: MIT

pragma solidity 0.8.4;

import "@openzeppelin/contracts/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "hardhat-deploy/solc_0.8/proxy/Proxied.sol";

contract FeeDistributor is Initializable, Proxied {
    using SafeERC20 for IERC20;
    address public operator;

    modifier onlyOperator() {
        require(operator == msg.sender);
        _;
    }

    function initialize(address _operator) external initializer {
        require(_operator != address(0));
        operator = _operator;
    }

    function transfer(IERC20 token, address to) external onlyProxyAdmin {
        token.safeTransfer(to, token.balanceOf(address(this)));
    }
}
