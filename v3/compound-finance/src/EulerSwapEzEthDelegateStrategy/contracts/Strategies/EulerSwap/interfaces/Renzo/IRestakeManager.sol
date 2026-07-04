// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.27;

interface IRestakeManager {
    function depositQueue() external view returns (address);

    function calculateTVLs() external view returns (uint256[][] memory, uint256[] memory, uint256);

    function depositETH() external payable;
    function deposit(address _collateralToken, uint256 _amount) external;

    function getCollateralTokenIndex(address _collateralToken) external view returns (uint256);

    function getCollateralTokensLength() external view returns (uint256);

    function collateralTokens(uint256 index) external view returns (address);
}
