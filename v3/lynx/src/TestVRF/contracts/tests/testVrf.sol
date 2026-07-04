// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import {GelatoVRFConsumerBase} from "contracts/Integrations/Gelato/VRF/GelatoVRFConsumerBase.sol";

import "@openzeppelin/contracts/access/Ownable.sol";

struct RandomnessRequest {
	bool requestSent;
	bool fulfilled;
	uint256 pendingRequestId;
	uint256 latestRandomness;
	uint256 latestRequestId;
}

contract TestVRF is GelatoVRFConsumerBase, Ownable {
	RandomnessRequest public randomnessRequest;

    address private immutable _operatorAddr;

    constructor(address operator) Ownable(msg.sender) {
        _operatorAddr = operator;
    }

    function _fulfillRandomness(
        uint256 randomness,
        uint256 requestId,
        bytes memory
    ) internal override {
		require(randomnessRequest.pendingRequestId == requestId, "requestId not valid");
        randomnessRequest.latestRandomness = randomness;
        randomnessRequest.latestRequestId = requestId;
		randomnessRequest.fulfilled = true;
    }

	function _operator() internal view override returns (address) {
        return _operatorAddr;
    }

    // Simulate

	bool testEnded;
    function testSync() public onlyOwner {
		if (!randomnessRequest.requestSent)
		{
			require(!randomnessRequest.requestSent, "Request already sent");
			randomnessRequest.pendingRequestId = _requestRandomness(abi.encode(0));
			randomnessRequest.requestSent = true;
			testEnded = true;
		}
		else if (testEnded)
		{
			clearRequest();
			testEnded = false;
		}
    }
	
	bool testActive = true;
	function testSetActive(bool active) public onlyOwner {
		testActive = active;
	}

	function checkExecuteGiveaway() public view returns (bool) {
		return ((testActive && randomnessRequest.fulfilled) || !testActive);
	}

	uint256 public checkReturn;
	function testExecute(uint256 lenght) public onlyOwner {
		checkReturn = 667;
		require (checkExecuteGiveaway(), "Can't execute giveaway");

		uint256 randomIndex = 669;
		if (testActive && randomnessRequest.fulfilled) {
			randomIndex = getRandomIndex(lenght);
			testEnded = false;
			clearRequest();
		}

		if (randomnessRequest.fulfilled)
			return;
		else if (!testEnded)
			checkReturn = randomIndex;
		else
			checkReturn = 0;
	}

    function getRandomIndex(
        uint256 lenght
    ) public view returns (uint256 index) {
        uint256 res = (uint256(keccak256(abi.encodePacked(randomnessRequest.latestRandomness))) %
            lenght);
        return (res);
    }

	function clearRequest() private {
		randomnessRequest.requestSent = false;
		randomnessRequest.fulfilled = false;
		randomnessRequest.pendingRequestId = 0;
		randomnessRequest.latestRandomness = 0;
		randomnessRequest.latestRequestId = 0;
	}

    function getRandomnessRequest() public view returns (RandomnessRequest memory) {
		return randomnessRequest;
	}
}