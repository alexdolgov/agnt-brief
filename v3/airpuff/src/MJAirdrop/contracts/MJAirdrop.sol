// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

import "@openzeppelin/contracts/interfaces/IERC20.sol";
import 'solmate/src/utils/MerkleProofLib.sol';
import '@openzeppelin/contracts/access/Ownable.sol';

contract MJAirdrop is Ownable {
    address[] public tokens;
    bool public canClaim; // claim flag
    bytes32[] public merkleRoots;
    mapping(address => mapping(address => uint)) public claimed;

    event MerkleRootChanged(bytes32[] merkleRoots);
    event TokenChanged(address[] tokens);
    event CanClaimChanged(bool canClaim);
    event Claim(address indexed claimant, uint256 amount);

    receive() external payable{}
    fallback() external payable{}

    function getBalance() public view returns (uint) {
      return address(this).balance;
    }

    constructor(address[] memory _tokens, bytes32[] memory _merkleRoots) {
      tokens = _tokens;
      merkleRoots = _merkleRoots;
    }

    function setCanClaim(bool _canClaim) external onlyOwner {
      canClaim = _canClaim;
      emit CanClaimChanged(_canClaim);
    }

    function setMerkleRoots(bytes32[] memory _merkleRoots) external onlyOwner {
      merkleRoots = _merkleRoots;
      emit MerkleRootChanged(_merkleRoots);
    }

    function setTokens(address[] memory _tokens) external onlyOwner {
      tokens = _tokens;
      emit TokenChanged(_tokens);
    }

    function claimRemainingTokens(address recevicer) external onlyOwner {
      for (uint256 i = 0; i < tokens.length; i++) {
        address tokenAddress = tokens[i];
        if (tokenAddress == address(0)) {
          uint256 mntBalance = address(this).balance;
          if (mntBalance > 0) {
            (bool success, ) = payable(recevicer).call{value: mntBalance}("");
            require(success, "MJ: airdrop MNT call failed.");
          }
        } else {
          uint256 tokenBalance = IERC20(tokenAddress).balanceOf(address(this));
          if (tokenBalance > 0) {
            IERC20(tokenAddress).transfer(recevicer, tokenBalance);
          }
        }
      }
    }
    function claimTokenByAddress(address tokenAddress, address recevicer) external onlyOwner {
      uint256 tokenBalance = IERC20(tokenAddress).balanceOf(address(this));
      if (tokenBalance > 0) {
        IERC20(tokenAddress).transfer(recevicer, tokenBalance);
      }
    }
    function claimMNT(address recevicer) external onlyOwner {
      uint256 mntBalance = address(this).balance;
      if (mntBalance > 0) {
        (bool success, ) = payable(recevicer).call{value: mntBalance}("");
        require(success, "MJ: airdrop MNT call failed.");
      }
    }

    function claim(
      bytes32[] calldata proof,
      uint256 index,
      uint256 amount
    ) public {
      require(canClaim, "MJ: Cannot claim.");
      address tokenAddress = tokens[index];
      require(claimed[msg.sender][tokenAddress] == 0, "MJ: Tokens already claimed.");
      bytes32 leaf = keccak256(bytes.concat(keccak256(abi.encode(msg.sender, amount))));
      bool valid = MerkleProofLib.verify(proof, merkleRoots[index], leaf);
      require(valid, "MJ: Valid proof required.");

      claimed[msg.sender][tokenAddress] = 1;
      if (tokenAddress == address(0)) {
        (bool success, ) = payable(msg.sender).call{value: amount}("");
        require(success, "MJ: airdrop MNT call failed.");
      } else {
        IERC20(tokenAddress).transfer(msg.sender, amount);
      }
    }

    function verify(
      bytes32[] calldata proof,
      address addr,
      uint256 index,
      uint256 amount
    ) public view returns (bool) {
      bytes32 leaf = keccak256(bytes.concat(keccak256(abi.encode(addr, amount))));
      return MerkleProofLib.verify(
        proof,
        merkleRoots[index],
        leaf
      );
    }
}