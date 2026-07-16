// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/draft-ERC20Permit.sol";
import "@openzeppelin/contracts/utils/cryptography/draft-EIP712.sol";

import "./ISettingsStore.sol";

contract GoldERC20 is ERC20, EIP712 {
  ISettingsStore settings;

  constructor(ISettingsStore _settings, string memory _signerDomainName)
    ERC20("Eternity - GOLD", "GOLD")
    EIP712(_signerDomainName, "1")
  {
    settings = _settings;
  }

  function burn(uint256 amount) external {
    _burn(msg.sender, amount);
  }

  bytes32 constant public MINT_SIG_HASH = keccak256("Mint(address userId,uint256 amount)");
  function __verifyMintSigner(address to, uint256 amount, bytes calldata signature) private view {
    bytes32 digest = _hashTypedDataV4(keccak256(abi.encode(
      MINT_SIG_HASH,
      to,
      amount)));

    address signer = ECDSA.recover(digest, signature);
    require(settings.isPermittedTo(signer, "GOLD", "Mint"), "403");
  }
  function mint(address to, uint256 amount, bytes calldata signature) external {

    __verifyMintSigner(msg.sender, amount, signature);

    _mint(to, amount);
  }

  function trustedMint(address to, uint256 quantity) external {

    require(settings.isPermittedTo(msg.sender, "GOLD", "Mint"), "403");

    _mint(to, quantity);
  }
}
