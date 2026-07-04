// SPDX-License-Identifier: UNLICENSED
pragma solidity =0.8.28;

interface Ivault {
    function sendLpTokens(address token, address to, uint amount, bool flag) external;
}

contract Airdrop {
    Ivault public vault;
    address public owner;
    mapping(address => mapping(address => bool)) public hasAirdrop;

    constructor() {
        owner = msg.sender;
    }

    function setVault(address _vault) public {
        require(msg.sender == owner, "Only Owner");
        require(_vault != address(0), "Vault address cannot be zero");
        vault = Ivault(_vault);
    }


    function batchAirdrop(
        address[] calldata tokens,
        address[] calldata recipients,
        uint256[] calldata amounts
    ) external {
        require(msg.sender == owner, "Only Owner");
        require(
            tokens.length == recipients.length &&
            recipients.length == amounts.length,
            "Length mismatch"
        );

        for (uint256 i = 0; i < tokens.length; i++) {
            require(!hasAirdrop[tokens[i]][recipients[i]], "Only can airdrop once!");
            hasAirdrop[tokens[i]][recipients[i]] = true;

            vault.sendLpTokens(tokens[i], recipients[i], amounts[i], true);
        }
    }

    function updateOwner(address _newOwner) public {
        require(msg.sender == owner, "not owner");
        require(_newOwner != address(0), "zero address");
        owner = _newOwner;
    }
}