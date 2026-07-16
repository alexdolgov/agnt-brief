pragma solidity ^0.8.22;

import { IIntegration } from "../Interfaces.sol";
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";


interface IPendleOracle {
    function getYtToAssetRate(address market, uint32 duration) external view returns (uint256);
    function getLpToAssetRate(address market, uint32 duration) external view returns (uint256);
}

contract PendleIntegration is IIntegration {

    string public name = "Pendle Integration";

    IPendleOracle public constant ORACLE = IPendleOracle(0x9a9Fa8338dd5E5B2188006f1Cd2Ef26d921650C2);

    IERC20 public constant LP = IERC20(0xf4C449d6a2D1840625211769779ADA42857d04dD);
    IERC20 public constant YT = IERC20(0xE49462fFd604D35061fb6937626f675873314C93);


    constructor () {

    }

    function balanceOf(address owner) external view returns (uint256) {
        uint lpBalance = LP.balanceOf(owner);
        uint ytBalance = YT.balanceOf(owner);

        uint lpPrice = ORACLE.getLpToAssetRate(address(LP), 10);
        uint ytPrice = ORACLE.getYtToAssetRate(address(LP), 10);

        return lpBalance * lpPrice / 1 ether + ytBalance * ytPrice / 1 ether;
    }
}
