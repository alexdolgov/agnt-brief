// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

import { SafeTransferLib } from "solmate/utils/SafeTransferLib.sol";
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

import "../Sickle.sol";
import "../SickleRegistry.sol";

library FeesLibEvents {
    event FeeCharged(bytes32 feesHash, uint256 amount, address token);
}

contract FeesLib {
    /// @notice Fees library version
    uint256 public constant VERSION = 1;

    /// @notice Sickle registry address
    SickleRegistry public immutable registry;

    constructor(SickleRegistry registry_) {
        registry = registry_;
    }

    /**
     * @notice Strategy contract charges fee to user depending on the type of
     * action and sends funds to the collector address
     * @param feeHash Fee hash (address of the strategy and function selector)
     * @param tokenToCharge Address of the token from which an amount will be
     * charged (zero address if native token)
     * @param baseAmount Amount of the transaction serving as a base for fee
     * calculation
     */
    function chargeFees(
        bytes32 feeHash,
        address tokenToCharge,
        uint256 baseAmount
    ) public payable returns (uint256) {
        uint256 amountToCharge =
            baseAmount * registry.feeRegistry(feeHash) / 10_000;

        if (
            tokenToCharge == address(0)
                || tokenToCharge == 0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE
        ) {
            SafeTransferLib.safeTransferETH(
                registry.collector(), amountToCharge
            );
        } else {
            SafeTransferLib.safeTransfer(
                tokenToCharge, registry.collector(), amountToCharge
            );
        }

        emit FeesLibEvents.FeeCharged(feeHash, amountToCharge, tokenToCharge);
        return baseAmount - amountToCharge;
    }
}
