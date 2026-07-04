// SPDX-License-Identifier: MIT

pragma solidity >0.8.0 <0.9.0;

import "./IGame.sol";
import "./IPrizePool.sol";

interface ILottery is IGame, IPrizePool {
    function getMinRoundTimeDuration() external view returns (uint256);

    function setMinRoundTimeDuration(uint256 minRoundTimeDuration) external;

    function getTicketPrice() external view returns (uint256);

    function buyTicketsWithBeneficiar(
        uint8[][] calldata numbersArray,
        uint256 amount,
        address beneficiar
    ) external;
}
