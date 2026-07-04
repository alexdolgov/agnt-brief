// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "./interfaces/IJoe.sol";

contract JuicyTokenSale is Ownable, ReentrancyGuard {

  address public receiver;
  address public juicyTokenAddress;
  uint256 public saleQuantity;
  uint256 public lpReserve;
  uint256 public amountReceived;
  uint256 public maxFunds;
  uint256 public saleStart;
  uint256 public saleEnd;
  address public routerAddress;
  address public pairAddress;
  IJoeRouter public router;
  bool public lpGenerated;

  mapping (address => uint256) public amountsSpent;
  mapping (address => bool) public hasClaimed;

  constructor(address _receiver, address _juicyTokenAddress, uint256 _maxFunds, uint256 _saleStart) {
    receiver = _receiver;
    maxFunds = _maxFunds;
    saleStart = _saleStart;
    saleEnd = _saleStart + 259200; // 3 days
    juicyTokenAddress = _juicyTokenAddress;
    saleQuantity = 200000000 ether;
    lpReserve = 40000000 ether;
    routerAddress = 0x60aE616a2155Ee3d9A68541Ba4544862310933d4;
    router = IJoeRouter(routerAddress);
    pairAddress = IJoeFactory(router.factory()).createPair(_juicyTokenAddress, router.WAVAX());
  }

  function generateAndBurnLP() public {
    require(saleEnded(), "Sale has not ended");
    require(!lpGenerated);

    lpGenerated = true;

    IERC20(juicyTokenAddress).approve(routerAddress, type(uint256).max);

    router.addLiquidityAVAX{value: address(this).balance}(
      juicyTokenAddress,
      lpReserve,
      0,
      0,
      0x000000000000000000000000000000000000dEaD,
      block.timestamp + 60
    );
  }

  function purchaseTokens() public payable nonReentrant {
    require(block.timestamp >= saleStart && block.timestamp <= saleEnd, "Sale is not active");
    require(msg.value + amountReceived <= maxFunds, "Exceeds max funds");

    amountReceived += msg.value;
    amountsSpent[msg.sender] += msg.value;

    (bool success, ) = receiver.call{value: (msg.value * 80) / 100}("");
    require(success, "Token transfer failed");   
  }

  function claim() public nonReentrant {
    require(saleEnded(), "Token sale has not ended");
    require(!hasClaimed[msg.sender], "You have already claimed");

    if (!lpGenerated) {
      generateAndBurnLP();
    }

    hasClaimed[msg.sender] = true;
    IERC20(juicyTokenAddress).transfer(msg.sender, claimableAmount(msg.sender));
  }

  function claimableAmount(address buyer) public view returns (uint256) {
    return (amountsSpent[buyer] * saleQuantity) / amountReceived;
  }

  function saleEnded() public view returns (bool) {
    return amountReceived == maxFunds || block.timestamp > saleEnd;
  }

}