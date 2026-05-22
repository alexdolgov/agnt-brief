// SPDX-License-Identifier: MIT

pragma solidity 0.8.24;

import {BlastNativeYield} from "./BlastNativeYield.sol";
import {IERC20Rebasing, YieldMode} from "./interfaces/IERC20Rebasing.sol";
import {IAddressFinder} from "./interfaces/IAddressFinder.sol";

/**
 * @title BlastERC20RebasingYield
 * @notice This contract is a base contract for inheriting functions to claim Blast WETH or USDB yield
 */
contract BlastERC20RebasingYield is BlastNativeYield {
    address public immutable WETH;
    address public immutable USDB;

    /**
     * @param addressFinder Blast address finder
     */
    constructor(address addressFinder) BlastNativeYield(addressFinder) {
        WETH = IAddressFinder(addressFinder).getImplementationAddress("WETH");
        USDB = IAddressFinder(addressFinder).getImplementationAddress("USDB");

        IERC20Rebasing(WETH).configure(YieldMode.CLAIMABLE);
        IERC20Rebasing(USDB).configure(YieldMode.CLAIMABLE);
    }

    /**
     * @notice Claim Blast yield. Guarding of the function is dependent on the inherited contract.
     *         Inheriting does not allow claiming by default.
     *         A public or external function is required in the child contract to access the _claim function.
     * @param wethReceiver The receiver of WETH.
     * @param usdbReceiver The receiver of USDB.
     */
    function _claimERC20RebasingYield(address wethReceiver, address usdbReceiver) internal {
        uint256 claimableWETH = IERC20Rebasing(WETH).getClaimableAmount(address(this));
        if (claimableWETH != 0) {
            IERC20Rebasing(WETH).claim(wethReceiver, claimableWETH);
        }

        uint256 claimableUSDB = IERC20Rebasing(USDB).getClaimableAmount(address(this));
        if (claimableUSDB != 0) {
            IERC20Rebasing(USDB).claim(usdbReceiver, claimableUSDB);
        }
    }
}
