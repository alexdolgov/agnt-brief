// SPDX-License-Identifier: MIT

pragma solidity >0.8.0 <0.9.0;

import "../libs/utils/LUtil.sol";
import "./IPlatformAdmin.sol";

interface IPrizePool is IPlatformAdmin {
    function getJackpotRequireMin() external view returns (uint256);

    function getWalletAddress(LUtil.Wallets walletIndex)
        external
        view
        returns (address);
}
