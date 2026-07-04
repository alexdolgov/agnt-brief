// SPDX-License-Identifier: MIT
pragma solidity 0.8.27;

import {IERC20, ILegacyDelegationProxy, IPolygonMigration, IStakingNFT} from "./Interfaces.sol";

contract RewardExtractor {
    ILegacyDelegationProxy public delegationProxy;
    IERC20 public matic;
    IPolygonMigration public polygonMigration;
    address public gsafe;

    struct Validator {
        uint256 id;
        uint256 balance;
    }

    modifier onlyOwner() {
        require(msg.sender == gsafe, "RewardExtractor: Only owner can call this function");
        _;
    }

    constructor(address _delegationProxy, address _matic, address _polygonMigration, address _gsafe) {
        delegationProxy = ILegacyDelegationProxy(_delegationProxy);
        matic = IERC20(_matic);
        polygonMigration = IPolygonMigration(_polygonMigration);
        gsafe = _gsafe;
    }

    function executeOneShot(uint256[] calldata validators) external onlyOwner {
        uint256 delegationProxyBalanceBefore = matic.balanceOf(address(delegationProxy));

        Validator[] memory validatorList = new Validator[](validators.length);
        uint256 validatorRewardTotal;
        for (uint256 i; i < validators.length; ++i) {
            uint256 validatorReward = delegationProxy.getLiquidRewards(validators[i]);
            validatorRewardTotal += validatorReward;
            validatorList[i] = Validator({id: validators[i], balance: validatorReward});
        }

        // collect the rewards from individual validators
        delegationProxy.collectRewards(validators);

        uint256 delegationProxyBalanceAfter = matic.balanceOf(address(delegationProxy));
        uint256 withdrawnMaticAmount = delegationProxyBalanceAfter - delegationProxyBalanceBefore;

        // withdraw the matic token to this contract
        delegationProxy.withdrawTokens(address(matic), withdrawnMaticAmount);

        // sanity check
        assert(matic.balanceOf(address(delegationProxy)) == delegationProxyBalanceBefore);
        assert(validatorRewardTotal == matic.balanceOf(address(this)));

        // migrate the matic to pol manually
        matic.approve(address(polygonMigration), withdrawnMaticAmount);
        polygonMigration.migrate(withdrawnMaticAmount);

        // sanity check
        IERC20 pol = IERC20(address(delegationProxy.stakeManager().token()));
        assert(validatorRewardTotal == pol.balanceOf(address(this)));

        // redistribute the pol to validators
        IStakingNFT nft = delegationProxy.stakeManager().NFTContract();
        for (uint256 i; i < validatorList.length; ++i) {
            address transferTo;
            try nft.ownerOf(validatorList[i].id) returns (address validator) {
                transferTo = validator;
            } catch {
                transferTo = gsafe; // transfer to gsafe if the validator is not found
            }
            pol.transfer(transferTo, validatorList[i].balance);
        }

        // sanity check
        assert(pol.balanceOf(address(this)) == 0);

        // reset the owner to gsafe
        delegationProxy.transferOwnership(gsafe);
    }

    function withdrawTokens(IERC20 token, address transferTo, uint256 amount) external onlyOwner {
        token.transfer(transferTo, amount);
    }

    function transferOwnership(address newOwner) external onlyOwner {
        delegationProxy.transferOwnership(newOwner);
    }
}
