//SPDX-License-Identifier: GPL-3.0-only
pragma solidity 0.8.27;

import { IBundleStorage } from "./IBundleStorage.sol";

/**
 * @title IBaseBundleTokenAnnualFees
 * @notice This abstract contract extends the BaseBundleToken functionality by implementing an annual fee mechanism.
 * @dev Tracks the time since the last operation and calculates fees to be minted periodically based on the annual fee rate.
 * Fees are minted to the fee receiver as defined in the BundleStorage contract.
 * @author Swarm
 */
interface IBaseBundleTokenAnnualFees is IBundleStorage {
    /**
     * @notice Retrieves the current annual percentage fee.
     * @return The annual percentage fee.
     */
    function annualFeePercent() external view returns (uint256);
}
