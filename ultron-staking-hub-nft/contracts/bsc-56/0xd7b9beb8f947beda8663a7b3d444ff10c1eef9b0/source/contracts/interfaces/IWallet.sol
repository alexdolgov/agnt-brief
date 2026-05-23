// SPDX-License-Identifier: MIT

pragma solidity >0.8.0 <0.9.0;

import "../libs/utils/LUtil.sol";

interface IWallet {
    function balance() external view returns (uint256);

    function approve(address approver, uint256 amount) external;

    function transferTo(address recipient, uint256 amount) external;
}
