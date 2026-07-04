// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.17;

import "@openzeppelin/contracts-upgradeable/token/ERC20/utils/SafeERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/IERC20Upgradeable.sol";

library TokenLib {
    using SafeERC20Upgradeable for IERC20Upgradeable;
    error EthTransferFailed();

    address private constant USDT_ON_TRON = address(0xa614f803B6FD780986A42c78Ec9c7f77e6DeD13C);

    function safeTransfer(
        address token,
        address to,
        uint256 value
    ) internal {
        if (value > 0) {
            if (token == address(0)) {
                _safeTransferETH(to, value);
            }
            else if (address(token) == USDT_ON_TRON) {
                // The return value of transfer is intentionally ignored here because USDT's implementation
                // is known to deviate from the standard ERC20 pattern. This is a temporary workaround.
                // TODO: Replace this hack with a proper SafeERC20 alternative once integrated.
                IERC20Upgradeable(token).transfer(to, value); // special case for USDT
            } else {
                IERC20Upgradeable(token).safeTransfer(to, value);
            }
        }
    }

    function _safeTransferETH(address to, uint256 value) internal {
        (bool success, ) = to.call{value: value}(new bytes(0));
        if (!success) revert EthTransferFailed();
    }
}