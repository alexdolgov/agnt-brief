//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";

import "./ITransmolgrifier.sol";
import "../../shared/UtilitiesV3Upgradable.sol";

abstract contract TransmolgrifierState is Initializable, ITransmolgrifier, UtilitiesV3Upgradeable {

    address public smolsAddress;
    address public smolsStateAddress;
    address public schoolAddress;
	address public smolTreasuresAddress;
	address public smolverseTransmolgrifierClaimAddress;



	mapping(uint256 => mapping(uint256 => SmolData)) public seasonIdToSmolRecipeIdToSmolData;
	mapping(uint256 => uint256) public seasonIdToCurrentSmolRecipeId;
	mapping(uint256 => bool) public seasonIdToTransmolgActive;
	mapping(uint256 => string) public seasonIdToSeasonText;

    function __TransmolgrifierState_init() internal initializer {
        UtilitiesV3Upgradeable.__Utilities_init();
    }

	function setTransmolgSeasonText(uint _seasonId, string calldata _seasonText) external requiresEitherRole(ADMIN_ROLE, OWNER_ROLE) {
		seasonIdToSeasonText[_seasonId] = _seasonText;

		emit SeasonTextUpdated(_seasonId, _seasonText);
	}

	function setTransmolgActiveForSeaon(uint _seasonId, bool _transmolgActive) external requiresEitherRole(ADMIN_ROLE, OWNER_ROLE) {
		seasonIdToTransmolgActive[_seasonId] = _transmolgActive;

		emit SeasonStateUpdated(_seasonId, _transmolgActive);
	}

	function deleteSmolRecipes(uint _seasonId, uint256[] calldata _smolRecipeIds) external requiresEitherRole(ADMIN_ROLE, OWNER_ROLE) {
		for(uint256 i = 0;  i < _smolRecipeIds.length;i++){
			delete seasonIdToSmolRecipeIdToSmolData[_seasonId][_smolRecipeIds[i]];
			
			emit SmolRecipeDeleted(_seasonId, _smolRecipeIds[i]);
		}
	}

	function addSmolRecipes(uint _seasonId, SmolData[] calldata _smolsData) external requiresEitherRole(ADMIN_ROLE, OWNER_ROLE) {
		for(uint256 i = 0; i <_smolsData.length; i++){
			//Create this smol recipe ID.
			uint256 _thisSmolRecipeId = seasonIdToCurrentSmolRecipeId[_seasonId] + i;

			//Initialize and set the SmolData struct in storage.
			SmolData storage _smolData = seasonIdToSmolRecipeIdToSmolData[_seasonId][_thisSmolRecipeId];

			_smolData.smol = _smolsData[i].smol;
			_smolData.exists = true;
			_smolData.smolInputAmount = _smolsData[i].smolInputAmount;
			_smolData.treasureId = _smolsData[i].treasureId;
			_smolData.treasureAmount = _smolsData[i].treasureAmount;

			emit SmolRecipeAdded(_seasonId, _thisSmolRecipeId, _smolData);
		}

		//Add as many smols as we created to currentSmolRecipeId
		seasonIdToCurrentSmolRecipeId[_seasonId] += _smolsData.length;
	}

	function adjustSmolRecipe(uint _seasonId, uint256[] calldata _smolRecipeIds, SmolData[] calldata _newSmolsData) external requiresEitherRole(ADMIN_ROLE, OWNER_ROLE) {
		for(uint256 i = 0; i <_smolRecipeIds.length; i++){
			//Initialize and set the SmolData struct in storage.
			SmolData storage _smolData = seasonIdToSmolRecipeIdToSmolData[_seasonId][_smolRecipeIds[i]];

			require(_smolData.exists, "Smol recipe does not exist!");

			_smolData.smol = _newSmolsData[i].smol;
			_smolData.smolInputAmount = _newSmolsData[i].smolInputAmount;
			_smolData.treasureId = _newSmolsData[i].treasureId;
			_smolData.treasureAmount = _newSmolsData[i].treasureAmount;

			emit SmolRecipeAdjusted(_seasonId, _smolRecipeIds[i], _smolData);
		}
	}
}