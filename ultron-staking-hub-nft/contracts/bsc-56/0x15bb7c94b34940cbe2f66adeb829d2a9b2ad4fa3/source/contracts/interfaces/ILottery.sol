//SPDX-License-Identifier: UNLICENSED

pragma solidity >0.8.0 <0.9.0;

import "./IGame.sol";
import "./IPrizePool.sol";

interface ILottery is IGame, IPrizePool {
    function getTicketPrice() external view returns (uint256);
}
