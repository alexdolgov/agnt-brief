// SPDX-License-Identifier: AGPL-3.0.
pragma solidity ^0.8.0;

import "./IInterestToken.sol";

interface IDebtToken is IInterestToken {
    // Debt token Errors
    error DT_APPROVAL_NOT_SUPPORTED();

    function burnUnbacked(address account, uint256 amount) external;

    function mintUnbacked(address account, uint256 amount) external;

    function balanceOfDetails(
        address account
    ) external view returns (uint256, uint256, uint256);
}
