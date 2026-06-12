// SPDX-License-Identifier: AGPL-3.0
pragma solidity 0.8.12;

// ███████╗███████╗██████╗  ██████╗
// ╚══███╔╝██╔════╝██╔══██╗██╔═══██╗
//   ███╔╝ █████╗  ██████╔╝██║   ██║
//  ███╔╝  ██╔══╝  ██╔══██╗██║   ██║
// ███████╗███████╗██║  ██║╚██████╔╝
// ╚══════╝╚══════╝╚═╝  ╚═╝ ╚═════╝

// Website: https://zerolend.xyz
// Discord: https://discord.gg/zerolend
// Twitter: https://twitter.com/zerolendxyz

import {Ownable} from "@zerolendxyz/core-v3/contracts/dependencies/openzeppelin/contracts/Ownable.sol";
import {ITransferStrategyBase} from "@zerolendxyz/periphery-v3/contracts/rewards/interfaces/ITransferStrategyBase.sol";
import {IERC20} from "@zerolendxyz/core-v3/contracts/dependencies/openzeppelin/contracts/IERC20.sol";

contract TransferStrategyMultipleSimple is Ownable, ITransferStrategyBase {
    mapping(address => bool) public incentiveControllers;

    /**
     * @dev Modifier for incentives controller only functions
     */
    modifier onlyIncentivesController() {
        require(
            incentiveControllers[msg.sender],
            "CALLER_NOT_INCENTIVES_CONTROLLER"
        );
        _;
    }

    function setIncentiveController(
        address _incentiveController,
        bool what
    ) public onlyOwner {
        incentiveControllers[_incentiveController] = what;
    }

    /// @inheritdoc ITransferStrategyBase
    function performTransfer(
        address to,
        address reward,
        uint256 amount
    )
        external
        override(ITransferStrategyBase)
        onlyIncentivesController
        returns (bool)
    {
        return IERC20(reward).transfer(to, amount);
    }

    /// @inheritdoc ITransferStrategyBase
    function getIncentivesController()
        external
        pure
        override
        returns (address)
    {
        return address(0);
    }

    /// @inheritdoc ITransferStrategyBase
    function getRewardsAdmin() external view override returns (address) {
        return owner();
    }

    /// @inheritdoc ITransferStrategyBase
    function emergencyWithdrawal(
        address token,
        address to,
        uint256 amount
    ) external onlyOwner {
        IERC20(token).transfer(to, amount);
        emit EmergencyWithdrawal(msg.sender, token, to, amount);
    }
}
