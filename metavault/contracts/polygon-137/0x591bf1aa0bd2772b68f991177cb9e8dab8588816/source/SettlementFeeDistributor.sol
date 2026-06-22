// SPDX-License-Identifier: BUSL-1.1

pragma solidity 0.8.4;

import "SafeERC20.sol";
import "Interfaces.sol";

/**
 * @author Heisenberg
 * @title Buffer SettlementFeeDistributor
 * @notice Distributes the SettlementFee Collected by the Buffer Protocol
 */

contract SettlementFeeDistributor {
    using SafeERC20 for ERC20;

    address public shareHolder1;
    address public shareHolder2;
    ERC20 public tokenX;

    constructor(
        ERC20 _tokenX,
        address _shareHolder1,
        address _shareHolder2
    ) {
        tokenX = _tokenX;
        shareHolder1 = _shareHolder1;
        shareHolder2 = _shareHolder2;
    }

    function distribute() external {
        uint256 contractBalance = tokenX.balanceOf(address(this));

        if (contractBalance > 10 * (10**tokenX.decimals())) {
            uint256 amount1 = (contractBalance * 5000) / 10000;
            uint256 amount2 = contractBalance - amount1;
            tokenX.safeTransfer(shareHolder1, amount1);
            tokenX.safeTransfer(shareHolder2, amount2);
        }
    }
}
