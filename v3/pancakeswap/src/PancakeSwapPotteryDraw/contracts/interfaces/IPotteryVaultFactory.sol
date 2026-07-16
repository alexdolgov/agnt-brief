pragma solidity ^0.8.0;

import {IERC20} from "@openzeppelin-4.6.0/contracts/token/ERC20/utils/SafeERC20.sol";
import {ICakePool} from "./ICakePool.sol";
import {IPancakeSwapPotteryDraw} from "./IPancakeSwapPotteryDraw.sol";

interface IPotteryVaultFactory {
    function generateVault(
        IERC20 _cake,
        ICakePool _cakePool,
        IPancakeSwapPotteryDraw _potteryDraw,
        address _admin,
        address _keeper,
        uint256 _lockTime,
        uint256 _maxTotalDeposit
    ) external returns (address);
}
