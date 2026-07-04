// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

/**
 * @title Term Structure Flash Loan Facet Interface
 * @author Term Structure Labs
 */
interface IFlashLoanFacet {
    /// @notice Flash loan
    /// @param receiver The address of the receiver
    /// @param assets The assets of the flash loan
    /// @param amounts The amounts of the assets
    /// @param data The data that will be passed to the receiver
    function flashLoan(
        address payable receiver,
        IERC20[] calldata assets,
        uint256[] calldata amounts,
        bytes calldata data
    ) external;

    /// @notice Set the flash loan premium
    /// @dev The flash loan premium is the percentage of the flash loan amount,
    ///      the max value is 1e4 and the base is 1e4,
    ///      i.e. 3 = 0.03%
    function setFlashLoanPremium(uint16 flashLoanPremium) external;

    /// @notice Get the flash loan premium
    /// @dev The flash loan premium is the percentage of the flash loan amount
    ///      the base is 1e4, i.e. 3 = 0.03%
    /// @return flashLoanPremium The premium of flash loan
    function getFlashLoanPremium() external view returns (uint16 flashLoanPremium);
}
