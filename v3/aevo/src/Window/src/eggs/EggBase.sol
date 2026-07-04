// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.13;

import "../interfaces/IEgg.sol";
import "../libraries/RescueFundsLib.sol";
import "openzeppelin-contracts/contracts/access/Ownable2Step.sol";

abstract contract EggBase is IEgg, Ownable2Step {
    function rescueFunds(
        address token_,
        address userAddress_,
        uint256 amount_
    ) external onlyOwner {
        RescueFundsLib.rescueFunds(token_, userAddress_, amount_);
    }
}
