// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import {LightOwnable} from "../Utilities/abstract/LightOwnable.sol";
import {IIRCalculator} from "../../interfaces/internals/USG/IIRCalculator.sol";
import {
    IRewardAccumulator,
    IERC20
} from "../../interfaces/internals/USG/IRewardAccumulator.sol";

/// @title FeeHarvester
/// @author Tangent Finance
/// @notice Claim accumulated fees
contract FeeHarvester is LightOwnable {
    /// @notice IR Calculator
    IIRCalculator public immutable irCalculator =
        IIRCalculator(0xB4e1d3bBd2843263d58B4D648C599512cea6e88b);
    /// @notice RewardAccumulator
    IRewardAccumulator public immutable rewardAcc =
        IRewardAccumulator(0x1461D76aA1C9c523398301D9174098c6D53ce639);
    /// @notice All ERC20 claimed from reward cut
    IERC20[] public feeTokens;

    constructor() {
        feeTokens.push(IERC20(0xD533a949740bb3306d119CC777fa900bA034cd52)); // CRV
        feeTokens.push(IERC20(0x365AccFCa291e7D3914637ABf1F7635dB165Bb09)); // FXN
        feeTokens.push(IERC20(0x6440f144b7e50D6a8439336510312d2F54beB01D)); // BOLD
        feeTokens.push(IERC20(0x8292Bb45bf1Ee4d140127049757C2E0fF06317eD)); // RLUSD
        feeTokens.push(IERC20(0x6c3ea9036406852006290770BEdFcAbA0e23A0e8)); // PYUSD
        _transferOwnership(0x461B62CB3A7e9Df8f800aE058AE92F855F2c27Ca); // ADMIN
    }

    function claimAll() external {
        irCalculator.mintIR();
        rewardAcc.claimCutFees(feeTokens);
    }

    /* =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=--=-=-=-=
                        OWNER ACTIONS 
    =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=--=-=-=-= */

    function addReward(IERC20 newToken) external onlyOwner {
        feeTokens.push(newToken);
    }

    function removeReward(IERC20 toDelete) external onlyOwner {
        uint256 len = feeTokens.length;
        for (uint256 i = 0; i < len; i++) {
            if (address(feeTokens[i]) == address(toDelete)) {
                feeTokens[i] = feeTokens[len - 1];
                feeTokens.pop();
                return;
            }
        }
        revert();
    }
}
