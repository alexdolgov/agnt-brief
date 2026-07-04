// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../../shared/libraries/SmolsLibrary.sol";

interface ITransmolgrifier {

	struct SmolData {
		Smol smol;
		bool exists;
		uint8 smolInputAmount;
		uint16 treasureId;
		uint8 treasureAmount;
	}

	struct TransmolgrifyRequest {
		uint256 seasonId;
		uint256 smolRecipeId;
		uint256 smolIdToTransmolgrify;
		uint256[] smolIdsToBurn;
	}


	event SmolTransmolgrified(uint256 seasonId,uint256 smolIdToTransmolgrify, uint256 smolRecipeId, uint256[] smolIdsToBurn);
	event SmolRecipeDeleted(uint256 seasonId,uint256 smolRecipeId);
	event SmolRecipeAdded(uint256 seasonId,uint256 smolRecipeId, SmolData smolData);
	event SmolRecipeAdjusted(uint256 seasonId,uint256 smolRecipeId, SmolData smolData);
	event SeasonStateUpdated(uint256 seasonId,bool isActive);
	event SeasonTextUpdated(uint256 seasonId,string seasonText);
}