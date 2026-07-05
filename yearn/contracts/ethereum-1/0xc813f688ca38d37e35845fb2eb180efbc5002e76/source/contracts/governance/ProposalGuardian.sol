pragma solidity ^0.8.22;

contract ProposalGuardian {
    mapping(bytes32 => bool) public nullifiedProposal;
    address public constant GUARDIAN =
        0xFEB4acf3df3cDEA7399794D0869ef76A6EfAff52;

    function nullifyProposal(bytes32 _proposal) external {
        require(msg.sender == GUARDIAN, "!guardian");
        nullifiedProposal[_proposal] = true;
    }
}
