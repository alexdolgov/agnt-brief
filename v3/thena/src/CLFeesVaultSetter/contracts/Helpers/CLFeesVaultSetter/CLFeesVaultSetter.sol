// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;


import "@openzeppelin/contracts/access/Ownable.sol";

interface IFeeVault {
    function setNftStaking(address converter) external;
}

/// @title Simple setter of theNFT staking converter
/// @notice helper to set on mulitiple CLFeesVault a new theNFT fee convert

contract CLFeesVaultSetter is Ownable {

    mapping(address => bool) public canSet;

    
    constructor() {
        canSet[0x993Ae2b514677c7AC52bAeCd8871d2b362A9D693] = true; //thena deployer
        canSet[0x7d70ee3774325C51e021Af1f7987C214d2CAA184] = true; //msig
    }

    /// @notice set the new thenft staking fee converter
    /// @param target       feeVault address
    /// @param _converter   new converter
    function setStakingNFTHandler(address[] calldata target, address _converter) external {
        require(canSet[msg.sender]);
        for(uint i = 0; i < target.length; i++){
            IFeeVault(target[i]).setNftStaking(_converter);
        }
    }

    function setWhoCanSet(address who, bool status) external onlyOwner {
        canSet[who] = status;
    }



}