// SPDX-License-Identifier: UNLICENSED

// Copyright (c) 2023 Jones DAO - All rights reserved
// Jones DAO: https://www.jonesdao.io/

pragma solidity ^0.8.10;

import {IERC20} from "openzeppelin-contracts/contracts/token/ERC20/IERC20.sol";
import {JonesGlpVault} from "./vaults/JonesGlpVault.sol";
import {JonesGlpStableVault} from "./vaults/JonesGlpStableVault.sol";
import {Governable} from "../common/Governable.sol";
import {IJonesGlpRewardTracker} from "../interfaces/IJonesGlpRewardTracker.sol";
import {JonesGlpLeverageStrategy} from "src/glp/strategies/JonesGlpLeverageStrategy.sol";
import {JonesGlpVaultRouter} from "src/glp/JonesGlpVaultRouter.sol";
import {MerkleProof} from "openzeppelin-contracts/contracts/utils/cryptography/MerkleProof.sol";

contract WithdrawUVRT is Governable {
    JonesGlpVault vault = JonesGlpVault(0x17fF154A329E37282eb9a76C3ae848FC277F24C7);
    JonesGlpVaultRouter router = JonesGlpVaultRouter(0x01aD96292cdc627307817c428562226fd905AEc2);
    JonesGlpStableVault glpStableVault = JonesGlpStableVault(0xa485a0bc44988B95245D5F20497CCaFF58a73E99);
    IERC20 stable = IERC20(0xFF970A61A04b1cA14834A43f5dE4533eBDDB5CC8); 
    JonesGlpLeverageStrategy strategy = JonesGlpLeverageStrategy(0x8e53d1B71bf7c6487cFF5156257a687c8704cd31);
    IJonesGlpRewardTracker public stableRewardTracker = IJonesGlpRewardTracker(0xEB23C7e19DB72F9a728fD64E1CAA459E457cfaca);

    mapping(address => bool) public redeemed;
    
    bytes32 private root;

    bool private paused;

    constructor() Governable(msg.sender) {
        paused = false;
    }

    function _borrowStables(uint256 _amount) private returns (uint256) {
        JonesGlpStableVault _stableVault = glpStableVault;

        uint256 balance = stable.balanceOf(address(_stableVault));
        if (balance == 0) {
            return 0;
        }

        uint256 amountToBorrow = balance < _amount ? balance : _amount;

        return _stableVault.borrow(amountToBorrow);
    }

    function redeemUVRT(uint256 _amount, bytes32[] memory _proof, uint256 _index) external returns (uint256) {
        _verify(_proof, _amount, _index);
        
        require(!paused, "Paused");
        require(redeemed[msg.sender] == false, "User has already redeemed");

        redeemed[msg.sender] = true;

        uint256 stableAmount = glpStableVault.previewRedeem(_amount);

        uint256 stablesFromVault = _borrowStables(stableAmount);

        uint256 gmxIncentive;

        // Only redeem from strategy if there is not enough on the vault
        if (stablesFromVault < stableAmount) {
            uint256 difference = stableAmount - stablesFromVault;
            gmxIncentive = (difference * strategy.getRedeemStableGMXIncentive(difference) * 1e8) / 1e12;
            strategy.onStableRedeem(difference, difference - gmxIncentive);
        }

        uint256 remainderStables = stableAmount - gmxIncentive;

        IERC20 stableToken = stable;

        if (stableToken.balanceOf(address(this)) < remainderStables) {
            revert();
        }

        glpStableVault.burn(address(router), _amount);

        uint256 retention = ((stableAmount * 97e8) / 1e12);

        uint256 realRetention = gmxIncentive < retention ? retention - gmxIncentive : 0;

        uint256 amountAfterRetention = remainderStables - realRetention;

        if (amountAfterRetention > 0) {
            stableToken.transfer(msg.sender, amountAfterRetention);
        }

        if (realRetention > 0) {
            stableToken.approve(address(stableRewardTracker), realRetention);
            stableRewardTracker.depositRewards(realRetention);
        }

        return amountAfterRetention;
    }

    function _verify(bytes32[] memory _proof, uint256 _amount, uint256 _index) private view {
        bytes32 leaf = keccak256(abi.encodePacked(_index, msg.sender, _amount));

        bool verified = MerkleProof.verify(_proof, root, leaf);

        if (!verified) {
            revert WrongRoot();
        }
    }
    
    function pause(bool _status) external onlyGovernor {
        paused = _status;
    }

    function setRoot(bytes32 _root) external onlyGovernor {
        root = _root;
    }



    error WrongRoot();
}