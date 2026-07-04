// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {DecimalsLib} from "../../libraries/DecimalsLib.sol";
import {IPyth} from "../../interfaces/IPyth.sol";
import {IPriceFeed} from "../../interfaces/IPriceFeed.sol";

contract PythOracle is IPriceFeed, Ownable {
    using DecimalsLib for uint256;

    IPyth public immutable PYTH;
    bytes32 public immutable PYTH_ID;

    uint256 pythHeartBeat = 1 hours;

    constructor(address _pythAddress, bytes32 _pythId) Ownable(msg.sender) {
        PYTH = IPyth(_pythAddress);
        PYTH_ID = _pythId;
    }

    function setPythHeartBeat(uint256 _newPythHeartBeat) external onlyOwner {
        pythHeartBeat = _newPythHeartBeat;
    }

    function fetchPrice() external view returns (uint256) {
        IPyth.Price memory token0Feed = PYTH.getPriceNoOlderThan(PYTH_ID, pythHeartBeat);

        return uint256(uint64(token0Feed.price)).to18Decimals(uint8(uint32(-token0Feed.expo)));
    }
}
