//SPDX-License-Identifier: UNLICENSED
pragma solidity =0.8.23;

import {IBlast, YieldMode, GasMode} from "../interfaces/IBlast.sol";

library BlastClaimer {
    IBlast constant BLAST = IBlast(0x4300000000000000000000000000000000000002);

    function configure(address governor_) internal {
        BLAST.configure(
            YieldMode.CLAIMABLE,
            GasMode.CLAIMABLE,
            governor_
        );
    }

    function configureGovernor(address governor_) external {
        BLAST.configureGovernor(governor_);
    }

    function configureContract(address contract_, address governor_) external {
        BLAST.configureContract(
            contract_,
            YieldMode.CLAIMABLE,
            GasMode.CLAIMABLE,
            governor_
        );
    }
}
