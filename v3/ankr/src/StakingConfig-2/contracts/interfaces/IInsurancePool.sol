// SPDX-License-Identifier: MIT
pragma solidity ^0.8.14;

interface IInsurancePool {

    event ContributionConfirmed(address indexed contributor, address indexed provider, uint128 amount, uint256 shares, uint128 totalContributed);

    // @dev contribute eth to ethereum (native) insurance pool
    function contribute(address provider) external payable;

    // @dev contribute mGNO to erc20 insurance pool
    function contributeGNO(address provider, uint128 amount) external;

    function getInsuranceRate(address provider) external view returns (uint256);

    function getContributed(address provider, address contributor) external view returns (uint128);

    function getTotalContributed(address provider) external view returns (uint128);

    function getTotalContributions(address[] calldata providers) external view returns (uint128[] memory);
}
