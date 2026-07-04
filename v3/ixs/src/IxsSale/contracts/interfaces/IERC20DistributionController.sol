// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

interface IERC20DistributionController {
    event Distribute(address to, uint256 amount);

    function token() external view returns (address);

    function transferController(address _to, uint256 _amount) external;
}
