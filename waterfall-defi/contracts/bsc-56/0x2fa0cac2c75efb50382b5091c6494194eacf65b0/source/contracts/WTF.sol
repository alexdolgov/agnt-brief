// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract WTF is ERC20, Ownable {
    constructor(
        uint256 communitySupply,
        uint256 treasurySupply,
        uint256 publicsaleSupply,
        uint256 partnerSupply,
        uint256 investorSupply,
        uint256 teamSupply,
        address communityMultisig,
        address treasuryMultisig,
        address publicsaleMultisig,
        address partnerMultisig,
        address investorMultisig,
        address teamMultisig
    ) public ERC20("Waterfall Governance Token", "WTF") {
        _mint(communityMultisig, communitySupply);

        _mint(treasuryMultisig, treasurySupply);

        _mint(publicsaleMultisig, publicsaleSupply);

        _mint(partnerMultisig, partnerSupply);

        _mint(investorMultisig, investorSupply);

        _mint(teamMultisig, teamSupply);

        transferOwnership(teamMultisig);
    }
}
