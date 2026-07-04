//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/IERC721.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "../../shared/ISchool.sol";
import "../../shared/ISmolsState.sol";
import "../treasures/ISmolTreasures.sol";
import "./ISmolverseTransmolgrifierClaim.sol";
import "./TransmolgrifierContracts.sol";

contract Transmolgrifier is Initializable, TransmolgrifierContracts {

    function initialize() external initializer {
        TransmolgrifierContracts.__TransmolgrifierContracts_init();
    }

	function transmolgrify(TransmolgrifyRequest[] calldata _transmolgrifyRequests) external {


		for(uint256 i = 0;i<_transmolgrifyRequests.length;i++){
			TransmolgrifyRequest calldata _transmolgrifyRequest = _transmolgrifyRequests[i]; 

			uint256 _seasonId = _transmolgrifyRequest.seasonId;

			require(seasonIdToTransmolgActive[_seasonId], "Transmolg isn't currently active for this season!");

			uint256 _smolRecipeId = _transmolgrifyRequest.smolRecipeId;
			uint256 _smolIdToTransmolgrify = _transmolgrifyRequest.smolIdToTransmolgrify;

			uint256[] calldata _smolIdsToBurn = _transmolgrifyRequest.smolIdsToBurn;

			//Load this recipe tier into storage
			SmolData storage smolData = seasonIdToSmolRecipeIdToSmolData[_seasonId][_smolRecipeId];

			//Require they sent the correct amount of smols to correlate with this recipe tier
			require(_smolIdsToBurn.length == smolData.smolInputAmount, "Supplied smols not equal to cost!");

			require(smolData.exists, "Recipe does not exist!");

			smolData.exists = false;


			if (smolData.treasureAmount > 0) {
				ISmolTreasures(smolTreasuresAddress).burn(msg.sender, smolData.treasureId, smolData.treasureAmount);
			}

			//Loop through the array of ids to burn
			for(uint256 j = 0; j < smolData.smolInputAmount; j++){
				require(ISmolsState(smolsStateAddress).getInitialSmol(_smolIdsToBurn[j]).gender == 2, "Not a female burn smol!");

				//Pull the iq of the to-be-burned smol from the school
				uint128 _iqOfBurnSmol = ISchool(schoolAddress).tokenDetails(smolsAddress, 0, _smolIdsToBurn[j]).statAccrued;

				//Remove all the iq of the smol
				ISchool(schoolAddress).removeStatAsAllowedAdjuster(smolsAddress, 0, _smolIdsToBurn[j], _iqOfBurnSmol);

				//Burn the smol
				IERC721(smolsAddress).transferFrom(msg.sender, 0x000000000000000000000000000000000000dEaD, _smolIdsToBurn[j]);
			}

			//Pull the iq of the to-be-mogged smol from the school
			uint128 _iqOfMogSmol = ISchool(schoolAddress).tokenDetails(smolsAddress, 0, _smolIdToTransmolgrify).statAccrued;

			//Give the aggregate IQ to the to-be-adjusted smol
			ISchool(schoolAddress).removeStatAsAllowedAdjuster(smolsAddress, 0, _smolIdToTransmolgrify, _iqOfMogSmol);
			
			//Require transmol is female
			require(ISmolsState(smolsStateAddress).getInitialSmol(_smolIdToTransmolgrify).gender == 2, "Not a female transmol!");

			//Ensure they own the to-be-adjusted smol
			require(IERC721(smolsAddress).ownerOf(_smolIdToTransmolgrify) == msg.sender, "You don't own the subject smol!");

			//Set the initial smol to the recipe chosen
			ISmolsState(smolsStateAddress).setInitialSmol(_smolIdToTransmolgrify, smolData.smol);
			
			emit SmolTransmolgrified(_seasonId, _smolIdToTransmolgrify, _smolRecipeId, _smolIdsToBurn);

			if(smolverseTransmolgrifierClaimAddress != address(0)) ISmolverseTransmolgrifierClaim(smolverseTransmolgrifierClaimAddress).incrementTotalNumberOfSmolsTransmolged();
		}

	}

	/*

	View func for frontend

	*/

	struct RecipeStatus {
		bool exists;
		uint256 recipeId;
	}

	function getStatusOfRecipes(uint256[] calldata _seasonIds, uint256[] calldata _recipeIds) external view returns(RecipeStatus[] memory) {
		RecipeStatus[] memory recipeStatusReturn = new RecipeStatus[](_recipeIds.length);

		for(uint256 i =0;i<_recipeIds.length;i++){
			SmolData storage _smolData = seasonIdToSmolRecipeIdToSmolData[_seasonIds[i]][_recipeIds[i]];

			recipeStatusReturn[i] = RecipeStatus(
				_smolData.exists,
				_recipeIds[i]
			);
		}

		return recipeStatusReturn;
	}
}