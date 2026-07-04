// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../../BaseStrategyV2.sol";
import "../../interfaces/gmx/IGMXRouter.sol";
import "../../interfaces/gmx/IGMXTracker.sol";

contract StratX2_GLP is BaseStrategyV2 {
    using SafeERC20 for IERC20;

    address public router;
    address public fGLP;
    address public sbfGMX;
    address public glpManager;

    function initialize(
        address[] memory _addresses,
        address _router,
        bool _isAutoComp
    ) public virtual {
        super.__initialize(_addresses, 0, false, _isAutoComp);

        router = _router;
        fGLP = IGMXRouter(_router).feeGlpTracker();
        sbfGMX = IGMXRouter(_router).feeGmxTracker();
        glpManager = IGMXRouter(_router).glpManager();
    }

    function _vaultHarvest() public override
    {
        IGMXRouter(router).compound();   // Claim and restake esGMX and multiplier points
        IGMXRouter(router).claimFees();
    }

    function _vaultPending() public override view returns (uint256[] memory pending)
    {
        uint256 rewardGLP = IGMXTracker(fGLP).claimable(address(this));
        uint256 rewardGMX = IGMXTracker(sbfGMX).claimable(address(this));

		pending = new uint256[](1);
        pending[0] = rewardGLP + rewardGMX;
    }

    function _earnLp(uint256 earnedAmt)
        internal override
        virtual
    {
        address minter = 0xB95DB5B167D75e6d04227CfFFA61069348d271F5;
        address glpManager = IGMXRouter(minter).glpManager();
        IERC20(earnedAddress).safeIncreaseAllowance(glpManager, earnedAmt);

        if (earnedAmt > 0) {
            IGMXRouter(minter).mintAndStakeGlp(earnedAddress, earnedAmt, 0, 0);
        }
    }
}
