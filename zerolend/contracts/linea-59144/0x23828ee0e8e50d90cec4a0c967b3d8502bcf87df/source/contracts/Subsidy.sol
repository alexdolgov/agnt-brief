// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

import "./Interfaces/IVesselManager.sol";

import "@openzeppelin/contracts/security/ReentrancyGuard.sol";


contract Subsidy is ReentrancyGuard {

	IVesselManager public vesselManager;

	address public owner ;

    IERC20 public LYU ;

    mapping(address => mapping(address => bool)) public claimed;

	constructor(address _lyu,address _vesselManager) {
		owner = msg.sender;
		LYU = IERC20(_lyu);
		vesselManager = IVesselManager(_vesselManager);
	}

	function claim(address _asset) external nonReentrant{

	  bool isActive = vesselManager.isVesselActive(_asset,msg.sender);
	  require(isActive,"trove not active");
      bool isClaimed = claimed[msg.sender][_asset];
      require(!isClaimed,"is claimed");
       claimed[msg.sender][_asset] = true;
      require(LYU.transferFrom(address(this),msg.sender, 40000000000000000), "transfer failed");

	}

	function transferOut(uint256 amount) external {
      require(msg.sender == owner ,"only owner");
      require(LYU.transferFrom(address(this),msg.sender, amount), "transfer failed");
	}
	
}
