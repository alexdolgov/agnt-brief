//** Decubate Logo Store */
//** Author Aceson */

//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.10;
import "@openzeppelin/contracts/access/Ownable.sol";

contract Logostore is Ownable {
  mapping(address => string) public logoSource;
  mapping(address => bool) public isWhitelisted;
  address[] public listedTokens;

  constructor() {
    isWhitelisted[msg.sender] = true;
  }

  function setWhitelist(address _addr, bool _status) external onlyOwner {
    isWhitelisted[_addr] = _status;
  }

  function setLogo(address _tokenAddress, string calldata _logoSource) external {
    require(isWhitelisted[msg.sender], "No access");
    if (
      keccak256(abi.encodePacked((logoSource[_tokenAddress]))) == keccak256(abi.encodePacked(("")))
    ) {
      listedTokens.push(_tokenAddress);
    }
    logoSource[_tokenAddress] = _logoSource;
  }
}
