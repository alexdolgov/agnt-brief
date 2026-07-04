// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "../dependencies/INative.sol";
import "@openzeppelin/contracts/utils/Address.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

library TransferHelper {

    using Address for address payable;
    using SafeERC20 for IERC20;

    uint constant public BASE_CHAIN = 8453;
    address constant public BASE_CHAIN_WRAPPED = 0x4200000000000000000000000000000000000006;

    uint constant public BASE_SEPOLIA_CHAIN = 84532;
    address constant public BASE_SEPOLIA_CHAIN_WRAPPED = 0x4200000000000000000000000000000000000006;

    function transfer(address token, address to, uint256 amount) internal {
        if (token != nativeWrapped() || _isContract(to)) {
            IERC20(token).safeTransfer(to, amount);
        } else {
            INative(token).withdraw(amount);
            payable(to).sendValue(amount);
        }
    }

    function transferFrom(address token, address from, uint256 amount) internal {
        if (token != nativeWrapped()) {
            IERC20(token).safeTransferFrom(from, address(this), amount);
        } else {
            require(msg.value >= amount, "insufficient transfers");
            INative(token).deposit{value: amount}();
        }
    }

    function nativeWrapped() internal view returns (address) {
        uint256 chainId = block.chainid;
        if (chainId == BASE_CHAIN) {
            return BASE_CHAIN_WRAPPED;
        } else if (chainId == BASE_SEPOLIA_CHAIN) {
            return BASE_SEPOLIA_CHAIN_WRAPPED;
        } else {
            revert("unsupported chain id");
        }
    }

    function _isContract(address account) private view returns (bool) {
        uint256 size;
        assembly {
            size := extcodesize(account)
        }
        return size > 0;
    }
}
