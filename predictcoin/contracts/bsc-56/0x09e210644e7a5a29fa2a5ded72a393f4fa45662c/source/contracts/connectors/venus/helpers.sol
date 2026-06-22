pragma solidity ^0.7.0;

import {DSMath} from "../../common/math.sol";
import {Basic} from "../../common/basic.sol";
import {UniTrollerInterface, VenusMappingInterface} from "./interface.sol";

abstract contract Helpers is DSMath, Basic {
    /**
     * @dev Venus Comptroller
     */
    UniTrollerInterface internal constant troller =
        UniTrollerInterface(0xfD36E2c2a6789Db23113685031d7F16329158384);

    /**
     * @dev Venus mapping
     */
    VenusMappingInterface internal constant venusMapping =
        VenusMappingInterface(0x06D82665B7f6f5838C70c38497f40feD5E85F362);

    /**
     * @dev enter Venus market
     */
    function enterMarket(address vToken) internal {
        address[] memory markets = troller.getAssetsIn(address(this));
        bool isEntered = false;
        for (uint256 i = 0; i < markets.length; i++) {
            if (markets[i] == vToken) {
                isEntered = true;
            }
        }
        if (!isEntered) {
            address[] memory toEnter = new address[](1);
            toEnter[0] = vToken;
            troller.enterMarkets(toEnter);
        }
    }
}
