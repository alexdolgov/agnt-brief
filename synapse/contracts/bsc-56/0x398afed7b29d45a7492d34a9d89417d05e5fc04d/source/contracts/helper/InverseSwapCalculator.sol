// SPDX-License-Identifier: MIT

pragma solidity 0.6.12;

import "hardhat/console.sol";
import "../interfaces/ISwap.sol";
import "../interfaces/IMetaSwap.sol";
import "../SwapUtils.sol";

contract InverseSwapCalculator {
    // Constant value used as max loop limit
    uint256 private constant MAX_LOOP_LIMIT = 256;
    uint256 private constant ERROR_THRESHOLD = 1000000;
    using SwapUtils for SwapUtils.Swap;
    SwapUtils.Swap public swapStorage;

    function calculateInverseSwap(
        address swapcontract,
        uint256[] memory tokenPrecisionMultipliers,
        uint8 tokenIndexFrom,
        uint8 tokenIndexTo,
        uint256 dy,
        bool isMetapool
    ) external view returns (uint256) {
        uint256 newDx;
        uint256 newDy;
        uint256 errorDiff;
        uint256 error;

        if (isMetapool == true) {
            IMetaSwap swapContract = IMetaSwap(swapcontract);
            uint256 indexToMultiplier = tokenPrecisionMultipliers[tokenIndexTo];
            newDx = dy * (indexToMultiplier);
            console.log("newDx ", newDx);
            newDy = dy;
            newDy = swapContract.calculateSwapUnderlying(
                tokenIndexFrom,
                tokenIndexTo,
                newDx
            );
            console.log("newDx after calculation", newDx);
            console.log("newDy after calculation", newDy);

            for (uint256 i = 0; i < MAX_LOOP_LIMIT; i++) {
                console.log(i);
                console.log("InitialDY ", dy);
                if (((newDy / (dy)) * 10**10) > ERROR_THRESHOLD) {
                    return (newDx);
                } else {
                    uint256 toAdd = (dy - newDy);
                    newDx = newDx + ((toAdd * indexToMultiplier) / 2);
                    newDy = swapContract.calculateSwapUnderlying(
                        tokenIndexFrom,
                        tokenIndexTo,
                        newDx
                    );
                    console.log("newDx after calculation", newDx);
                    console.log("newDy after calculation", newDy);
                }
            }
            revert("Approximation did not converge");
        } else {
            ISwap swapContract = ISwap(swapcontract);

            uint256 indexToMultiplier = tokenPrecisionMultipliers[tokenIndexTo];
            newDx = dy * (indexToMultiplier);
            console.log("newDx ", newDx);
            newDy = dy;
            newDy = swapContract.calculateSwap(
                tokenIndexFrom,
                tokenIndexTo,
                newDx
            );
            console.log("newDx after calculation", newDx);
            console.log("newDy after calculation", newDy);

            for (uint256 i = 0; i < MAX_LOOP_LIMIT; i++) {
                console.log(i);
                console.log("InitialDY ", dy);
                if (((newDy / (dy)) * 10**10) > ERROR_THRESHOLD) {
                    return (newDx);
                } else {
                    uint256 toAdd = (dy - newDy);
                    newDx = newDx + ((toAdd * indexToMultiplier) / 2);
                    newDy = swapContract.calculateSwap(
                        tokenIndexFrom,
                        tokenIndexTo,
                        newDx
                    );
                    console.log("newDx after calculation", newDx);
                    console.log("newDy after calculation", newDy);
                }
            }
            revert("Approximation did not converge");
        }
    }
}
