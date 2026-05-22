// SPDX-License-Identifier: MIT
pragma solidity 0.8.27;

import {
    IERC20,
    ILegacyDelegationProxy,
    IPolygonMigration,
    IStakeManager,
    IStakingNFT,
    IValidatorShare
} from "./Interfaces.sol";

contract DelegationMigration {
    address public delegation;
    address public gsafe;
    ILegacyDelegationProxy public legacyDelegationProxy;

    modifier onlyOwner() {
        require(msg.sender == gsafe, "Migrate: Only owner can call this function");
        _;
    }

    constructor(address _delegation, address _gsafe, address _legacyDp) {
        delegation = _delegation;
        gsafe = _gsafe;
        legacyDelegationProxy = ILegacyDelegationProxy(_legacyDp);
    }

    /// @notice Migrate the shares and rewards from the legacy delegation contract to the new delegation contract
    /// @dev This function is is meant to be called only once during the migration process
    function run() external onlyOwner {
        IStakeManager stakeManager = legacyDelegationProxy.stakeManager();
        IStakingNFT nft = stakeManager.NFTContract();
        IERC20 pol = stakeManager.token();
        IERC20 matic = stakeManager.tokenMatic();
        uint256 validatorCount = stakeManager.NFTCounter();
        IPolygonMigration polygonMigration = stakeManager.migration();

        // transfer validator shares to the new delegation proxy
        for (uint256 validatorId = 1; validatorId < validatorCount + 1; validatorId++) {
            address validatorShare = stakeManager.getValidatorContract(validatorId);
            if (validatorShare == address(0)) continue;

            IValidatorShare vs = IValidatorShare(validatorShare);
            uint256 shares = vs.balanceOf(address(legacyDelegationProxy));
            if (shares == 0) continue;

            uint256 liquidRewards = vs.getLiquidRewards(address(legacyDelegationProxy));

            /// @dev: `transferPOL` function first withdraws the liquid rewards in POL to the caller (legacyDelegationProxy) and then transfers the shares
            legacyDelegationProxy.callAny(address(vs), abi.encodeCall(vs.transferPOL, (delegation, shares)));

            // transfer the withdrawn pol to the appropriate validators
            address transferTo;
            try nft.ownerOf(validatorId) returns (address validator) {
                transferTo = validator;
            } catch {
                transferTo = gsafe; // transfer to gsafe if the validator is not found
            }
            legacyDelegationProxy.callAny(
                address(pol), abi.encodeWithSelector(pol.transfer.selector, transferTo, liquidRewards)
            );
        }

        // extract the remaining matic to this contract
        uint256 originalBalance = matic.balanceOf(address(legacyDelegationProxy));
        legacyDelegationProxy.callAny(
            address(matic), abi.encodeWithSelector(matic.transfer.selector, address(this), originalBalance)
        );

        // migrate matic to pol
        matic.approve(address(polygonMigration), originalBalance);
        polygonMigration.migrate(originalBalance);

        // transfer the pol to the new delegation contract
        pol.transfer(delegation, pol.balanceOf(address(this)));

        // sanity check
        assert(
            matic.balanceOf(address(legacyDelegationProxy)) == 0
                && pol.balanceOf(address(delegation)) >= originalBalance
        );

        // reset the owner to gsafe
        legacyDelegationProxy.transferOwnership(gsafe);
    }

    /**
     * @notice Call any function on any contract
     * @param target Target address
     * @param data Data to call
     */
    function callAny(address target, bytes memory data) external onlyOwner {
        (bool ok, bytes memory ret) = target.call(data);
        assembly ("memory-safe") {
            if iszero(ok) { revert(add(32, ret), ret) }
        }
    }

    /// @notice Transfer ownership of the legacy delegation proxy
    /// @param newOwner Address of the new owner
    function transferOwnership(address newOwner) external onlyOwner {
        legacyDelegationProxy.transferOwnership(newOwner);
    }
}
