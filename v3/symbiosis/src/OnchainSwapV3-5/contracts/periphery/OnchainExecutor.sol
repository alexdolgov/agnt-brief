// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/utils/Context.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

/**
 * @title OnchainExecutor
 * @notice During the `onswap` transaction `OnchainSwapV3` sends user's tokens
 * to `OnchainExecutor` contract which then operates with them and performs the dex call.
 */
contract OnchainExecutor is Context {
    address public onchainSwap;

    modifier onlyOnchainSwap() {
        require(onchainSwap == msg.sender, "OnchainExecutor: caller is not the onchainSwap");
        _;
    }

    constructor() {
        onchainSwap = msg.sender;
    }

    function onswap(
        address token,
        uint256 amount,
        address dex,
        address dexgateway,
        bytes memory calldata_
    ) external payable onlyOnchainSwap {
        if (token != address(0)) {
            if (dexgateway == address(0)) {
                forceApprove(token, dex, amount);
            } else {
                forceApprove(token, dexgateway, amount);
            }
        }

        require(dex != onchainSwap && dex != address(this), "OnchainExecutor: call to onchain swap");

        {
            uint256 size;
            address toCheck = dex;

            assembly {
                size := extcodesize(toCheck)
            }

            require(size != 0, "OnchainExecutor: call for a non-contract account");
        }

        (bool swapPassed, ) = dex.call{value: msg.value}(calldata_);

        require(swapPassed, "OnchainExecutor: Fail to call");
    }

    function forceApprove(address _token, address _recipient, uint256 _value) internal {
        IERC20 erc20token = IERC20(_token);
        if (erc20token.allowance(address(this), _recipient) < _value) {
            SafeERC20.safeApprove(erc20token, _recipient, 0);
            SafeERC20.safeApprove(erc20token, _recipient, type(uint256).max);
        }
    }
}
