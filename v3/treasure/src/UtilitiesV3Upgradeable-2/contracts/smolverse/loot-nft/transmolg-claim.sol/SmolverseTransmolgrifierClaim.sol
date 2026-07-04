//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import {IERC721} from "@openzeppelin/contracts/token/ERC721/IERC721.sol";
import {MerkleProof} from "@openzeppelin/contracts/utils/cryptography/MerkleProof.sol";
import {ISmolverseLoot} from "../ISmolverseLoot.sol";
import {ISmolTreasures} from "../../treasures/ISmolTreasures.sol";
import {SmolverseTransmolgrifierClaimAdmin} from "./SmolverseTransmolgrifierClaimAdmin.sol";
import {ISchool, TokenDetails} from "../../../shared/ISchool.sol";
import {Initializable} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";

contract SmolverseTransmolgrifierClaim is Initializable, SmolverseTransmolgrifierClaimAdmin{

    function initialize() external initializer {
        SmolverseTransmolgrifierClaimAdmin.__SmolverseTransmolgrifierClaimAdmin_init();
    }

    function claim(uint256[] calldata _smolIds, uint256[] calldata _smolTiers, bytes32[][] calldata _merkleProofs) public whenNotPaused {
        uint256 runningLootTotal = 0;

        for(uint256 i = 0; i < _smolIds.length; i++){
            //Require they own this smol
            require(IERC721(smolsAddress).ownerOf(_smolIds[i]) == msg.sender, "You don't own this smol!");

            //Require it's a male smol
            require(_smolIds[i] < 6711, "Must be a male smol");
            
            //Make sure supplied info (address and tier) is correct.
            if(!MerkleProof.verify(
                _merkleProofs[i], 
                smolTierMerkleRoot,  
                keccak256(abi.encodePacked(_smolIds[i], _smolTiers[i]))
            )) revert SmolIsNotInMerkleTree(_smolIds[i], _smolTiers[i]);

            //Pull last transmolg number this smol was claimed at
            uint256 _previousTransmolgCountClaimed = smolIdToLastTransmolgCountClaimed[_smolIds[i]];
            
            //Set the last transmolg number claimed at to the current number 
            smolIdToLastTransmolgCountClaimed[_smolIds[i]] = totalNumberOfSmolsTransmolged;

            //Find how many have been mogged since then
            uint256 _claimIterationsOwed = totalNumberOfSmolsTransmolged - _previousTransmolgCountClaimed;

            //Multiply their tier multiplier by how many claim iterations have passed.
            runningLootTotal += (_claimIterationsOwed * tierIdToTierMultiplier[_smolTiers[i]]);
        }

        //Rounding down, find how many rainbow loots to mint
        uint256 _totalRainbowLootToMint = runningLootTotal / 15 ether;

        //Using mod, find how many loots to mint
        uint256 _totalLootToMint = ((runningLootTotal / 1 ether) % (15 ether / 1 ether));

        //If they would be minted 0 loots, revert so as not to reset their claim data without minting.
        if(_totalLootToMint == 0 && _totalRainbowLootToMint == 0) revert("Not enough loots to claim!");

        //Mint them as many rainbow loots as they are owed
        if(_totalRainbowLootToMint > 0) ISmolTreasures(treasuresAddress).mint(msg.sender, RAINBOW_TREASURE_ID, _totalRainbowLootToMint);

        //Mint them as many loots as they are owed
        if(_totalLootToMint > 0) ISmolverseLoot(smolverseLootAddress).mintLootsAsAdmin(msg.sender, _totalLootToMint);
    }

    function getNumberToMintForSmols(uint256[] calldata _smolIds, uint256[] calldata _smolTiers) external view returns(uint _totalRainbowLootToMint, uint _totalLootToMint){

        uint256 runningLootTotal = 0;

        for(uint256 i = 0; i < _smolIds.length; i++){
            uint256 _previousTransmolgCountClaimed = smolIdToLastTransmolgCountClaimed[_smolIds[i]];
            
            uint256 _claimIterationsOwed = totalNumberOfSmolsTransmolged - _previousTransmolgCountClaimed;

            //Multiply their tier multiplier by how many claim iterations have passed.
            runningLootTotal += (_claimIterationsOwed * tierIdToTierMultiplier[_smolTiers[i]]);
        }

        //Rounding down, find how many rainbow loots to mint
        _totalRainbowLootToMint = runningLootTotal / 15 ether;

        //Using mod, find how many loots to mint
        _totalLootToMint = ((runningLootTotal / 1 ether) % (15 ether / 1 ether));

        return (_totalRainbowLootToMint, _totalLootToMint);
    }
}