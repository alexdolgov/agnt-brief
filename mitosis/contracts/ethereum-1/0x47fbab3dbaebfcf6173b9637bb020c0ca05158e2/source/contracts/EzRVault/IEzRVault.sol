// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.27;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

interface IEzRVault {
    function underlying() external view returns (IERC20);

    function scaleFactor() external view returns (uint256);

    function getRate() external view returns (uint256);

    function burnByInstantWithdrawal(address _user, uint256 _amount) external;
}
