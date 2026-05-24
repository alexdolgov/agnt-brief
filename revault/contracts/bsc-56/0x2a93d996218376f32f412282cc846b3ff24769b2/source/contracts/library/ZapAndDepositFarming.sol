// SPDX-License-Identifier: MIT
pragma solidity ^0.6.12;

import "@pancakeswap/pancake-swap-lib/contracts/token/BEP20/IBEP20.sol";
import "@pancakeswap/pancake-swap-lib/contracts/token/BEP20/SafeBEP20.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "./interfaces/IZap.sol";
import "./interfaces/IRevaLpStakingPool.sol";
import "../reva/interfaces/IReVault.sol";

contract ZapAndDepositFarming is OwnableUpgradeable {
    using SafeBEP20 for IBEP20;

    /* ========== STATE VARIABLES ========== */

    mapping (address => bool) public haveApprovedTokenToZap;

    IZap public zap;
    IRevaLpStakingPool public revaLpStakingPool;
    IBEP20 public revaWbnb;

    /* ========== INITIALIZER ========== */

    function initialize(
        address _zap,
        address _revaLpStakingPool,
        address _revaWbnb
    ) external initializer {
        __Ownable_init();
        zap = IZap(_zap);
        revaLpStakingPool = IRevaLpStakingPool(_revaLpStakingPool);
        revaWbnb = IBEP20(_revaWbnb);

        revaWbnb.safeApprove(_revaLpStakingPool, uint(~0));
    }

    /* ========== External Functions ========== */

    function zapInTokenAndDeposit(
        address _from,
        uint _amount,
        uint _minAmount
    ) public {
        IBEP20(_from).safeTransferFrom(msg.sender, address(this), _amount);
        approveToZap(_from);
        zap.zapInTokenTo(_from, _amount, address(revaWbnb), address(this));
        uint balance = revaWbnb.balanceOf(address(this));
        require(balance >= _minAmount, "minAmount");
        revaLpStakingPool.depositFor(msg.sender, 0, balance);
    }

    function zapBNBAndDeposit(uint _minAmount) external payable {
        zap.zapIn{ value : msg.value }(address(revaWbnb));
        uint balance = revaWbnb.balanceOf(address(this));
        require(balance >= _minAmount, "minAmount");
        revaLpStakingPool.depositFor(msg.sender, 0, balance);
    }

    /* ========== RESTRICTED FUNCTIONS ========== */

    function approveToZap(address token) private {
        if (!haveApprovedTokenToZap[token]) {
            IBEP20(token).safeApprove(address(zap), uint(~0));
            haveApprovedTokenToZap[token] = true;
        }
    }

}
