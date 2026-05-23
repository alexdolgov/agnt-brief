// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.23;

import "../../interfaces/IAVotingController.sol";
import "../../LiquidityMining/libraries/WeekMath.sol";
import "../../core/libraries/BoringOwnableUpgradeable.sol";
import "../../core/libraries/TokenHelper.sol";
import "../../core/libraries/Errors.sol";

import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts/proxy/Proxy.sol";
import "@openzeppelin/contracts/proxy/transparent/TransparentUpgradeableProxy.sol";
import "@openzeppelin/contracts/proxy/transparent/ProxyAdmin.sol";

contract VotingResultBroadcaster is BoringOwnableUpgradeable, TokenHelper {
    IAVotingController internal immutable votingController;
    uint256 public lastBroadcastedWeek;

    constructor(address _votingController) initializer {
        votingController = IAVotingController(_votingController);
        __BoringOwnable_init();
    }

    function finalizeAndBroadcast(uint64[] calldata chainIds) external {
        uint256 currentWeek = WeekMath.getCurrentWeekStart();
        if (lastBroadcastedWeek >= currentWeek) revert Errors.VCAlreadyBroadcasted();
        lastBroadcastedWeek = currentWeek;

        votingController.finalizeEpoch();
        for (uint256 i = 0; i < chainIds.length; ) {
            uint64 chainId = chainIds[i];
            uint256 fee = votingController.getBroadcastResultFee(chainId);
            votingController.broadcastResults{ value: fee }(chainId);
            unchecked {
                i++;
            }
        }
    }

    function withdrawETH() external onlyOwner {
        _transferOut(NATIVE, owner, address(this).balance);
    }

    receive() external payable {}
}