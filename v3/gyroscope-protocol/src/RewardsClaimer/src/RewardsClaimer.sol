// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.24;

import {AccessControlDefaultAdminRulesUpgradeable} from
    "ozu/access/extensions/AccessControlDefaultAdminRulesUpgradeable.sol";
import {UUPSUpgradeable} from "ozu/proxy/utils/UUPSUpgradeable.sol";
import {IStaticATokenLM} from "lib/static-a-token-v3/IStaticATokenLM.sol";

/** @title Claims rewards accruing from static aTokens on behalf of another address.
*/
contract RewardsClaimer is AccessControlDefaultAdminRulesUpgradeable, UUPSUpgradeable {
    bytes32 internal constant _CLAIMER_ROLE = "CLAIMER_ROLE";

    modifier onlyClaimer() {
        _checkRole(_CLAIMER_ROLE, msg.sender);
        _;
    }

    constructor() {
        _disableInitializers();
    }

    function initialize(address owner_, address claimer) external initializer {
        __UUPSUpgradeable_init();
        __AccessControlDefaultAdminRules_init(0, owner_);
        _grantRole(_CLAIMER_ROLE, claimer);
    }

    /// @notice Can only be upgraded by the owner
    function _authorizeUpgrade(address v) internal override onlyRole(DEFAULT_ADMIN_ROLE) {}

    /** @notice Claim all rewards from `staticAToken` that accrued to `onBehalfOf` and transfer
     * them to `msg.sender`. This contract needs to be authorized within Aave to claim on behalf of
     * `onBehalfOf`, otherwise this reverts. Only callable by the claimer authorized by this
     * contract.
     *
     * @param onBehalfOf The address on behalf of which we should claim.
     * @param staticAToken The static aToken for which we should claim rewards.
    */
    function claimAndTransferRewards(address onBehalfOf, address staticAToken) public onlyClaimer {
        IStaticATokenLM sat = IStaticATokenLM(staticAToken);
        address[] memory rewardTokens = sat.rewardTokens();
        sat.claimRewardsOnBehalf(onBehalfOf, msg.sender, rewardTokens);
    }

    /// @notice Like `claimAndTransferRewards()` but allows claiming for several static aTokens at
    /// a time.
    /// @param staticATokens The static aTokens for which we should claim rewards.
    function batchClaimAndTransferRewards(address onBehalfOf, address[] memory staticATokens)
        external onlyClaimer {
        for (uint256 i = 0; i < staticATokens.length; ++i) {
            claimAndTransferRewards(onBehalfOf, staticATokens[i]);
        }
    }
}

