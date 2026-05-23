// SPDX-License-Identifier: MIT

pragma solidity >0.8.0 <0.9.0;

import "../libs/utils/LUtil.sol";

interface IGame {
    function getStatus() external view returns (LUtil.GameStatus);

    function getCurrentRoundNumber() external view returns (uint256);

    function getCurrentRoundAddress() external view returns (address);

    function getRounds(
        uint256 page,
        uint16 resultsPerPage,
        bool isReversed
    ) external view returns (address[] memory);

    function getRoundsFromIndex(
        uint256 index,
        uint16 resultsPerPage,
        bool isReversed
    ) external view returns (address[] memory);

    function isRoundExist(address roundAddress)
        external
        view
        returns (bool, uint256);

    function approvePay(LUtil.Wallets wallet, uint256 amount) external;

    function resetJackpot(uint256 roundIndex) external;
}
