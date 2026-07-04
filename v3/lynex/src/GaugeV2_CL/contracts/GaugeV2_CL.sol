// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

import {ReentrancyGuard} from "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import {Ownable2Step} from "@openzeppelin/contracts/access/Ownable2Step.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IPairInfo} from "./interfaces/IPairInfo.sol";
import {IBribe} from "./interfaces/IBribe.sol";
import {IFeeVault} from "./interfaces/IFeeVault.sol";
import {IRewarder} from "./interfaces/IRewarder.sol";
import {Math} from "./libraries/Math.sol";
import {Constants} from "./Constants.sol";
import {GaugeV2} from "./GaugeV2.sol";

contract GaugeV2_CL is ReentrancyGuard, Ownable2Step, GaugeV2 {
    address public feeVault;

    constructor(
        address _rewardToken,
        address _ve,
        address _stakeToken,
        address _distribution,
        address _internal_bribe,
        address _external_bribe,
        address _feeVault
    ) GaugeV2(_rewardToken, _ve, _stakeToken, _distribution, _internal_bribe, _external_bribe, true) {
        feeVault = _feeVault; // fee vault concentrated liquidity position
    }

    ///@notice set feeVault address
    function setFeeVault(address _feeVault) external onlyOwner {
        require(_feeVault != address(0), "zero addr");
        require(_feeVault != feeVault, "same addr");
        feeVault = _feeVault;
    }

    function _claimFees() internal override returns (uint256 claimed0, uint256 claimed1) {
        address _stakeToken = address(stakeToken);
        (claimed0, claimed1) = IFeeVault(feeVault).claimFees();

        if (claimed0 > 0 || claimed1 > 0) {
            uint256 _fees0 = claimed0;
            uint256 _fees1 = claimed1;

            address _token0 = IPairInfo(_stakeToken).token0();
            address _token1 = IPairInfo(_stakeToken).token1();
            if (_fees0 > 0) {
                IERC20(_token0).approve(internal_bribe, 0);
                IERC20(_token0).approve(internal_bribe, _fees0);
                IBribe(internal_bribe).notifyRewardAmount(_token0, _fees0);
            }

            if (_fees1 > 0) {
                IERC20(_token1).approve(internal_bribe, 0);
                IERC20(_token1).approve(internal_bribe, _fees1);
                IBribe(internal_bribe).notifyRewardAmount(_token1, _fees1);
            }
            emit ClaimFees(msg.sender, claimed0, claimed1);
        }
    }
}
