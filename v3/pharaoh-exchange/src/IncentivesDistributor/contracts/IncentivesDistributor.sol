// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;
import {IERC20} from "@openzeppelin/contracts/interfaces/IERC20.sol";

interface IUniversalIncentivizer {
    function incentivize(address token, uint256 amount) external;

    function notifyRewardAmount(address token, uint256 amount) external;
}

interface IVoter {
    function gauges(address) external view returns (address);

    function feeDistributors(address) external view returns (address);
}

interface ICompatability {
    function fix() external;
}

contract IncentivesDistributor {
    address public incentivesTreasury;
    address public authorizedOperator;

    IVoter public constant voter =
        IVoter(0xAAAf3D9CDD3602d117c67D80eEC37a160C8d9869);
    IERC20 public constant SAVAX =
        IERC20(0x2b2C81e08f1Af8835a78Bb2A90AE924ACE0eA4bE);
    IERC20 public constant GGAVAX =
        IERC20(0xA25EaF2906FA1a3a13EdAc9B9657108Af7B703e3);

    ICompatability public constant compatability =
        ICompatability(0xDB2FcC04838D1b5F3905e8B267b620f5F65b6F30);

    modifier onlyTreasuryOrAuthorized() {
        require(
            msg.sender == incentivesTreasury ||
                msg.sender == authorizedOperator,
            "!auth"
        );
        _;
    }

    constructor(address _incentivesTreasury) {
        incentivesTreasury = _incentivesTreasury;
        authorizedOperator = msg.sender;
    }

    function submitIncentives(
        address[] calldata pools,
        uint256[] calldata ggAvaxAmountsLP,
        uint256[] calldata sAvaxAmountsLP,
        uint256[] calldata ggAvaxAmountsVoter,
        uint256[] calldata sAvaxAmountsVoter
    ) external onlyTreasuryOrAuthorized {
        require(
            pools.length == sAvaxAmountsLP.length &&
                pools.length == ggAvaxAmountsLP.length &&
                pools.length == sAvaxAmountsVoter.length &&
                pools.length == ggAvaxAmountsVoter.length,
            "Array length mismatch"
        );

        for (uint256 i = 0; i < pools.length; ++i) {
            address pool = pools[i];
            address gauge = voter.gauges(pool);
            address feeDistributor = voter.feeDistributors(gauge);
            uint256 sAvaxAmountLP = sAvaxAmountsLP[i];
            uint256 ggAvaxAmountLP = ggAvaxAmountsLP[i];
            uint256 sAvaxAmountVoter = sAvaxAmountsVoter[i];
            uint256 ggAvaxAmountVoter = ggAvaxAmountsVoter[i];

            // Handle voter incentives (feeDistributor)
            IUniversalIncentivizer tempIncentivizer = IUniversalIncentivizer(
                feeDistributor
            );
            if (sAvaxAmountVoter > 0) {
                SAVAX.approve(address(tempIncentivizer), sAvaxAmountVoter);
                tempIncentivizer.incentivize(address(SAVAX), sAvaxAmountVoter);
            }
            if (ggAvaxAmountVoter > 0) {
                GGAVAX.approve(address(tempIncentivizer), ggAvaxAmountVoter);
                tempIncentivizer.incentivize(
                    address(GGAVAX),
                    ggAvaxAmountVoter
                );
            }
            /// @dev hook into the compatability module for sAVAX
            compatability.fix();

            // Handle LP incentives (gauge)
            tempIncentivizer = IUniversalIncentivizer(gauge);
            if (sAvaxAmountLP > 0) {
                SAVAX.approve(address(tempIncentivizer), sAvaxAmountLP);
                tempIncentivizer.notifyRewardAmount(
                    address(SAVAX),
                    sAvaxAmountLP
                );
            }
            /// @dev another
            compatability.fix();

            if (ggAvaxAmountLP > 0) {
                GGAVAX.approve(address(tempIncentivizer), ggAvaxAmountLP);
                tempIncentivizer.notifyRewardAmount(
                    address(GGAVAX),
                    ggAvaxAmountLP
                );
            }
        }
    }

    function rescue(IERC20 token) external onlyTreasuryOrAuthorized {
        token.transfer(incentivesTreasury, token.balanceOf(address(this)));
    }

    function execute(address x, bytes calldata _data) external {
        require(msg.sender == incentivesTreasury, "!treasury");
        (bool success, ) = x.call(_data);
        require(success, "call failed");
    }
}
