// SPDX-License-Identifier: MIT

pragma solidity =0.8.4;

interface IDataStorage {
    function getSampleSpace() external pure returns(uint256);
    function getPandoBoxCreatingProbability() external view returns (uint256[] memory);
    function getDroidBotCreatingProbability(uint256) external view returns (uint256[] memory);
    function getDroidBotUpgradingProbability(uint256, uint256) external view returns(uint256[] memory);
    function getDroidBotPower(uint256, uint256) external pure returns(uint256);
    function getNumberOfTicket(uint256) view external returns(uint256);
    function getNewPowerLevel(uint256 _rand, uint256 _mainPower, uint256 _materialPower, uint256 _mainLevel) external view returns (uint256 , uint256);
}