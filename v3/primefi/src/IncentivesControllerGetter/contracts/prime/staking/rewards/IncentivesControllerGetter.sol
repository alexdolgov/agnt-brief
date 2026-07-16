//SPDX-License-Identifier: MIT
pragma solidity 0.8.27;

import "@solidstate/contracts/security/reentrancy_guard/ReentrancyGuard.sol";
import "@solidstate/contracts/security/pausable/Pausable.sol";
import "@solidstate/contracts/security/initializable/Initializable.sol";
import "@openzeppelin/contracts/utils/Context.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";
import "@layerzerolabs/lz-evm-oapp-v2/contracts/oft/interfaces/IOFT.sol";
import "./IncentivesControllerStorage.sol";
import "../../../dependencies/layerzero/upgradeable/oapp/oapp/OApp.sol";
import "../../../dependencies/layerzero/upgradeable/oapp/oapp/libs/OAppCoreStorage.sol";
import {OptionsBuilder} from "../../../dependencies/layerzero/upgradeable/oapp/oapp/libs/OptionsBuilder.sol";
import {MessagingParams} from "@layerzerolabs/lz-evm-protocol-v2/contracts/interfaces/ILayerZeroEndpointV2.sol";
import "../../../interfaces/IChainlinkAggregator.sol";
import "../../../interfaces/IIncentivesController.sol";
import "../../../interfaces/IMiddleFeeDistribution.sol";
import "../../../interfaces/IEligibilityDataProvider.sol";
import "../../../interfaces/IMultiFeeDistribution.sol";
import "../../../interfaces/IOnwardIncentivesController.sol";
import "../../../lending/libraries/math/MathOperations.sol";

contract IncentivesControllerGetter {
	error InvalidToken();
	error InvalidChain();

	using IncentivesControllerStorage for IncentivesControllerStorage.Layout;
	using MathOperations for uint256;

	function totalSupplyByChain(uint32 _chainEid, Token _token) external view returns (uint256) {
		IncentivesControllerStorage.Layout storage $ = IncentivesControllerStorage.layout();
		return $.totalSupplyByChain[_chainEid][_token];
	}

	function userRewardPerTokenPaid(uint32 _chainEid, address _user) external view returns (uint256) {
		IncentivesControllerStorage.Layout storage $ = IncentivesControllerStorage.layout();
		return $.userRewardPerTokenPaid[_chainEid][_user];
	}

	function rewards(uint32 _chainEid, address _user) external view returns (uint256) {
		IncentivesControllerStorage.Layout storage $ = IncentivesControllerStorage.layout();
		return $.rewards[_chainEid][_user];
	}

	function totalSupply(Token _token) external view returns (uint256) {
		IncentivesControllerStorage.Layout storage $ = IncentivesControllerStorage.layout();
		return $.totalSupply[_token];
	}

	function tokenAggregators(address _token) external view returns (IChainlinkAggregator) {
		IncentivesControllerStorage.Layout storage $ = IncentivesControllerStorage.layout();
		Token token = $.tokenAddresses[_token];
		require(token != Token.INVALID_TOKEN, InvalidToken());
		return $.tokenAggregators[token];
	}

	function tokenAggregators(Token token) external view returns (IChainlinkAggregator aggregator) {
		IncentivesControllerStorage.Layout storage $ = IncentivesControllerStorage.layout();
		require(token != Token.INVALID_TOKEN, InvalidChain());
		aggregator = $.tokenAggregators[token];
	}

	function validToken(address _token) external view returns (bool) {
		IncentivesControllerStorage.Layout storage $ = IncentivesControllerStorage.layout();
		return $.validToken[_token];
	}

	function userPrepaidGas(address _user) external view returns (uint256) {
		IncentivesControllerStorage.Layout storage $ = IncentivesControllerStorage.layout();
		return $.userPrepaidGas[_user];
	}

	function protocolValueByChain(uint32 _chainEid) external view returns (uint256) {
		IncentivesControllerStorage.Layout storage $ = IncentivesControllerStorage.layout();
		return $.protocolValueByChain[_chainEid];
	}

	function poolConfigurator() external view returns (address) {
		IncentivesControllerStorage.Layout storage $ = IncentivesControllerStorage.layout();
		return $.poolConfigurator;
	}

	function mfd() external view returns (address) {
		IncentivesControllerStorage.Layout storage $ = IncentivesControllerStorage.layout();
		return $.mfd;
	}

	function rewardMinter() external view returns (address) {
		IncentivesControllerStorage.Layout storage $ = IncentivesControllerStorage.layout();
		return address($.rewardMinter);
	}

	function bountyManager() external view returns (address) {
		IncentivesControllerStorage.Layout storage $ = IncentivesControllerStorage.layout();
		return $.bountyManager;
	}

	function prfiPerSecond() external view returns (uint256) {
		IncentivesControllerStorage.Layout storage $ = IncentivesControllerStorage.layout();
		return $.prfiPerSecond;
	}

	function totalAllocPoint() external view returns (uint256) {
		IncentivesControllerStorage.Layout storage $ = IncentivesControllerStorage.layout();
		return $.totalAllocPoint;
	}

	function periodFinish() external view returns (uint256) {
		IncentivesControllerStorage.Layout storage $ = IncentivesControllerStorage.layout();
		return $.periodFinish;
	}

	function rewardsDuration() external view returns (uint256) {
		IncentivesControllerStorage.Layout storage $ = IncentivesControllerStorage.layout();
		return $.rewardsDuration;
	}

	function lastUpdateTime() external view returns (uint256) {
		IncentivesControllerStorage.Layout storage $ = IncentivesControllerStorage.layout();
		return $.lastUpdateTime;
	}

	function rewardPerTokenStored() external view returns (uint256) {
		IncentivesControllerStorage.Layout storage $ = IncentivesControllerStorage.layout();
		return $.rewardPerTokenStored;
	}

	function totalProtocolValue() external view returns (uint256) {
		IncentivesControllerStorage.Layout storage $ = IncentivesControllerStorage.layout();
		return $.totalProtocolValue;
	}

	function registeredTokens(uint256 index) external view returns (address) {
		IncentivesControllerStorage.Layout storage $ = IncentivesControllerStorage.layout();
		return $.registeredTokens[index];
	}

	function poolInfo(address _token) external view returns (PoolInfo memory) {
		IncentivesControllerStorage.Layout storage $ = IncentivesControllerStorage.layout();
		return $.poolInfo[_token];
	}

	function userInfo(address token, address user) external view returns (UserInfo memory) {
		IncentivesControllerStorage.Layout storage $ = IncentivesControllerStorage.layout();
		return $.userInfo[token][user];
	}
}
