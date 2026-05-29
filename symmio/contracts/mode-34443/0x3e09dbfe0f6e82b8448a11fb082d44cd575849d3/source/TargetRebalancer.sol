// SPDX-License-Identifier: MIT
pragma solidity >=0.8.18;

import '@openzeppelin/contracts/access/Ownable2Step.sol';

interface SymmCore {
  function setDeallocateCooldown(uint256 deallocateCooldown) external;
  function coolDownsOfMA() external view returns (uint256 deallocateCooldown, uint256, uint256, uint256);
}

interface PartyB {
  function withdrawTo(address _to, uint256 _amount) external;
}

contract TargetRebalancer is Ownable2Step {
  SymmCore immutable symmio;

  // Mapping from partyB to targetAddress to amount
  mapping(address => mapping(address => uint256)) public withdrawalRequests;
  mapping(address => bool) public allowedPartyBs;

  constructor(address symmioAddress) {
    symmio = SymmCore(symmioAddress);

    allowedPartyBs[0xD5A075C88A4188d666FA1e4051913BE6782982DA] = true;
    allowedPartyBs[0xdfeD11fE4af63B059EDBBDf53e9C633B331ed432] = true;
    allowedPartyBs[0xdF077F5f52bc41A9072F9d0e5fB281770bCD1142] = true;
    allowedPartyBs[0x00c069d68bc7420740460DBC3cc3fFF9b3742421] = true;
    allowedPartyBs[0x7D387771f6E23f353a4afCE21af521875C0825D0] = true;
    allowedPartyBs[0xdB91D232E93969130272De309d3d914547604426] = true;
    allowedPartyBs[0x614bB1F3e0Ae5A393979468ED89088F05277312c] = true;
    allowedPartyBs[0x12De0352dd4187AF5797F5147c4179F9624346E2] = true;
    allowedPartyBs[0xF9e39B4B30E26c18d2a725c0397Ed5A925efE46B] = true;
    allowedPartyBs[0x78E76Ac7fEc050cA785c19fFADDF57137b890543] = true;
    allowedPartyBs[0x3f1913e75A892310EF0C8D519F427ADbCA4373e0] = true;
    allowedPartyBs[0x87FC464fa528260F1eeaB94FA20F73FeD8536Eb7] = true;
  }

  // Anyone can request a rebalance action
  function rebalance(address targetAddress, uint256 amount) external {
    require(allowedPartyBs[msg.sender], 'Not allowed to request rebalance!');

    withdrawalRequests[msg.sender][targetAddress] = amount;
  }

  // Only owner can execute a rebalance action
  // 1. First the action to be executed is verified against the request
  // 2. Then the cooldown is set to 0 on symmio contracts which requires a controller ROLE to be given to this contract
  // 3. Then the partyB contract is called to execute the withdrawal. The owner verified the code of this partyB
  // contract and can see that it does nothing malicious. Therefore the owner can trust that the symm system is not
  // hurt in any way. At the same time, the partyB contract can also reject the request if they wish to do so.
  // 4. Then the cooldown is set back to the original value.
  function executeInstantRebalance(address partyB, address targetAddress, uint256 amount) external onlyOwner {
    require(withdrawalRequests[partyB][targetAddress] == amount, 'Invalid request!');

    withdrawalRequests[partyB][targetAddress] = 0;

    (uint256 currentCooldown, , , ) = symmio.coolDownsOfMA();
    symmio.setDeallocateCooldown(0);
    PartyB(partyB).withdrawTo(targetAddress, amount);
    symmio.setDeallocateCooldown(currentCooldown);
  }
}
