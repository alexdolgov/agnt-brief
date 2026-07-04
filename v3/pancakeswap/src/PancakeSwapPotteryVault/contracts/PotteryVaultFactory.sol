pragma solidity ^0.8.4;

import {IERC20} from "@openzeppelin-4.6.0/contracts/token/ERC20/IERC20.sol";
import {PancakeSwapPotteryVault} from "./PancakeSwapPotteryVault.sol";
import {ICakePool} from "./interfaces/ICakePool.sol";
import {IPancakeSwapPotteryDraw} from "./interfaces/IPancakeSwapPotteryDraw.sol";
import {IPotteryVaultFactory} from "./interfaces/IPotteryVaultFactory.sol";

contract PotteryVaultFactory is IPotteryVaultFactory {
    function generateVault(
        IERC20 _cake,
        ICakePool _cakePool,
        IPancakeSwapPotteryDraw _potteryDraw,
        address _admin,
        address _keeper,
        uint256 _lockTime,
        uint256 _maxDeposit
    ) external override returns (address) {
        PancakeSwapPotteryVault vault = new PancakeSwapPotteryVault(
            _cake,
            _cakePool,
            _potteryDraw,
            _admin,
            _keeper,
            _lockTime,
            _maxDeposit
        );
        return address(vault);
    }
}
