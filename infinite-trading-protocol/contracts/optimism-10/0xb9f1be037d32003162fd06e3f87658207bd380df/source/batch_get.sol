pragma solidity ^0.8.13;
import "IVotingEscrow.sol";

contract BatchGet {
    address votingEs;

    constructor(address _votingEs) {
        votingEs = _votingEs;
    }

    function get_bal(uint256 from, uint256 len) external view returns (uint256[] memory bals) {
        IVotingEscrow ve = IVotingEscrow(votingEs);
        bals = new uint256[](len);
        for (uint256 i = from; i < from + len; i++){
            bals[i] = ve.balanceOfNFT(i);
        }
    }

    function get_owner(uint256 from, uint256 len) external view returns (address[] memory owners) {
        IVotingEscrow ve = IVotingEscrow(votingEs);
        owners = new address[](len);
        for (uint256 i = from; i < from + len; i++){
            owners[i] = ve.ownerOf(i);
        }
    }

}