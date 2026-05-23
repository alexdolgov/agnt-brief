// SPDX-License-Identifier: MIT

pragma solidity >0.8.0 <0.9.0;

import "../../interfaces/IRound.sol";
import "../../interfaces/IGame.sol";

library LLottery {
    function getTicketLength() public pure returns (uint8) {
        return 0x6;
    }

    function getMinNumber() public pure returns (uint8) {
        return 0x1;
    }

    function getMaxNumber() public pure returns (uint8) {
        return 0x2d;
    }

    function validateTickets(
        uint8[][] calldata numbersArray,
        address beneficiar
    ) external {
        IRound round = IRound(IGame(address(this)).getCurrentRoundAddress());
        for (uint256 index = 0; index < numbersArray.length; index++) {
            require(
                numbersArray[index].length == getTicketLength(),
                "LLottery: invalid ticket length"
            );

            for (
                uint256 numIndex = 0;
                numIndex < getTicketLength();
                numIndex++
            ) {
                require(
                    numbersArray[index][numIndex] > getMinNumber() - 1 &&
                        numbersArray[index][numIndex] < getMaxNumber() + 1,
                    "LLottery: invalid numbers range"
                );
                for (
                    uint256 idx = numIndex + 1;
                    idx < getTicketLength();
                    idx++
                ) {
                    require(
                        numbersArray[index][numIndex] !=
                            numbersArray[index][idx],
                        "LLottery: dublicated number error"
                    );
                }
            }

            round.setTicket(numbersArray[index], beneficiar);
        }
    }
}
