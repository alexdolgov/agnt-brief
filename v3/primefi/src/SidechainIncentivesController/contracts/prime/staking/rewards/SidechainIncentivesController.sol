//SPDX-License-Identifier: MIT
pragma solidity 0.8.27;

import "@solidstate/contracts/security/reentrancy_guard/ReentrancyGuard.sol";
import "@solidstate/contracts/security/pausable/Pausable.sol";
import "@solidstate/contracts/security/initializable/Initializable.sol";
import "@openzeppelin/contracts/utils/Context.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
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

contract SidechainIncentivesController is
	OApp,
	IIncentivesController,
	ReentrancyGuard,
	Pausable,
	Initializable,
	Context
{
	using MathOperations for uint256;

	using SafeERC20 for IERC20;

	using OptionsBuilder for bytes;

	using IncentivesControllerStorage for IncentivesControllerStorage.Layout;

	using OAppCoreStorage for OAppCoreStorage.Layout;

	uint128 public constant MAX_GAS_LIMIT = 1_000_000;

	uint8 public constant PROTOCOL_VALUE_DECIMALS = 18;

	function initialize(
		address endpoint_,
		address delegate_,
		address prfiToken_,
		uint32 mainChain_
	) external initializer {
		__OApp_init(endpoint_, delegate_);
		__SidechainIncentivesController_init(prfiToken_, mainChain_);
	}

	function __SidechainIncentivesController_init(address prfiToken_, uint32 mainChain_) internal {
		IncentivesControllerStorage.Layout storage $ = IncentivesControllerStorage.layout();

		$.isMainChain = false;
		$.prfiToken = prfiToken_;
		$.mainChain = mainChain_;
		$.periodFinish = block.timestamp;
		$.startTime = block.timestamp;
	}

	function userBalance(address _user, uint32 chainEid, Token token) public view returns (uint256) {
		IncentivesControllerStorage.Layout storage $ = IncentivesControllerStorage.layout();
		return $.balancesByChain[chainEid][_user][token];
	}

	/**
	 * @notice Checks if the current chain is the main chain
	 * @return True if the current chain is the main chain, false otherwise
	 */
	function isMainChain() public view returns (bool) {
		IncentivesControllerStorage.Layout storage $ = IncentivesControllerStorage.layout();
		return $.isMainChain;
	}

	/**
	 * @notice Sets the pool configurator address
	 * @param _poolConfigurator The address of the pool configurator
	 */
	function setPoolConfigurator(address _poolConfigurator) external onlyOwner {
		require(_poolConfigurator != address(0), ZeroAddress());
		IncentivesControllerStorage.Layout storage $ = IncentivesControllerStorage.layout();
		$.poolConfigurator = _poolConfigurator;
	}

	/**
	 * @notice Sets the MFD address
	 * @param mfd_ The address of the MFD
	 */
	function setMfd(address mfd_) external onlyOwner {
		require(mfd_ != address(0), ZeroAddress());
		IncentivesControllerStorage.Layout storage $ = IncentivesControllerStorage.layout();
		$.mfd = mfd_;
	}

	/**
	 * @notice Sets the reward minter address
	 * @param rewardMinter_ The address of the reward minter
	 */
	function setRewardMinter(address rewardMinter_) external onlyOwner {
		require(rewardMinter_ != address(0), ZeroAddress());
		IncentivesControllerStorage.Layout storage $ = IncentivesControllerStorage.layout();
		$.rewardMinter = IMiddleFeeDistribution(rewardMinter_);
	}

	/**
	 * @notice Sets the token addresses
	 * @param tokenEnums The array of token enums
	 * @param tokens The array of token addresses
	 */
	function setTokenAddresses(Token[] memory tokenEnums, address[] memory tokens) external onlyOwner {
		require(tokens.length == tokenEnums.length, InvalidLength());
		IncentivesControllerStorage.Layout storage $ = IncentivesControllerStorage.layout();
		for (uint256 i; i < tokenEnums.length; i++) {
			Token token = tokenEnums[i];
			$.tokenAddresses[tokens[i]] = token;
		}
	}

	/**
	 * @notice Sets the PRFI token
	 * @param prfiToken_ The address of the PRFI token
	 */
	function setPrfiToken(address prfiToken_) external onlyOwner {
		require(prfiToken_ != address(0), ZeroAddress());
		IncentivesControllerStorage.Layout storage $ = IncentivesControllerStorage.layout();
		$.prfiToken = prfiToken_;
	}

	/**
	 * @notice Sets the main chain
	 * @param mainChain_ The main chain layer zero ID
	 */
	function setMainChain(uint32 mainChain_) external onlyOwner {
		require(mainChain_ != 0, InvalidChain());
		IncentivesControllerStorage.Layout storage $ = IncentivesControllerStorage.layout();
		$.mainChain = mainChain_;
	}

	/**
	 * @notice Quotes the fee for sending a message
	 * @param _data The message to send
	 * @return nativeFee The native fee
	 * @return lzTokenFee The LZ token fee
	 */
	function quote(
		bytes memory _data // The message to send.
	) public view returns (uint256 nativeFee, uint256 lzTokenFee) {
		bytes memory options = OptionsBuilder.newOptions().addExecutorLzReceiveOption(MAX_GAS_LIMIT, 0);
		IncentivesControllerStorage.Layout storage $ = IncentivesControllerStorage.layout();
		MessagingFee memory fee = _quote($.mainChain, _data, options, false);
		return (fee.nativeFee, fee.lzTokenFee);
	}

	/**
	 * @notice Sends a message from the source to destination chain.
	 * @param _dstEid Destination chain's endpoint ID.
	 * @param _data The message to send.
	 * @param _options Message execution options (e.g., for sending gas to destination).
	 */
	function _send(
		uint32 _dstEid,
		bytes memory _data,
		bytes memory _options,
		MessagingFee memory _fee,
		address payable _refundAddress
	) internal {
		_lzSend(
			_dstEid, // Destination chain's endpoint ID.
			_data, // Encoded message payload being sent.
			_options, // Message execution options (e.g., gas to use on destination).
			_fee, // Fee struct containing native gas and ZRO token.
			_refundAddress // The refund address in case the send call reverts.
		);
	}

	/**
	 * @dev Internal function to interact with the LayerZero EndpointV2.send() for sending a message.
	 * @param _dstEid The destination endpoint ID.
	 * @param _message The message payload.
	 * @param _options Additional options for the message.
	 * @param _fee The calculated LayerZero fee for the message.
	 *      - nativeFee: The native fee.
	 *      - lzTokenFee: The lzToken fee.
	 * @param _refundAddress The address to receive any excess fee values sent to the endpoint.
	 * @return receipt The receipt for the sent message.
	 *      - guid: The unique identifier for the sent message.
	 *      - nonce: The nonce of the sent message.
	 *      - fee: The LayerZero fee incurred for the message.
	 */
	function _lzSend(
		uint32 _dstEid,
		bytes memory _message,
		bytes memory _options,
		MessagingFee memory _fee,
		address _refundAddress
	) internal override returns (MessagingReceipt memory receipt) {
		// @dev Push corresponding fees to the endpoint, any excess is sent back to the _refundAddress from the endpoint.
		require(address(this).balance >= _fee.nativeFee, InsufficientFee());
		if (_fee.lzTokenFee > 0) _payLzToken(_fee.lzTokenFee);

		OAppCoreStorage.Layout storage $ = OAppCoreStorage.layout();

		return
			// solhint-disable-next-line check-send-result
			$.endpoint.send{value: _fee.nativeFee}(
				MessagingParams(_dstEid, _getPeerOrRevert(_dstEid), _message, _options, _fee.lzTokenFee > 0),
				_refundAddress
			);
	}

	/**
	 * @dev Called when data is received from the protocol. It overrides the equivalent function in the parent contract.
	 * Protocol messages are defined as packets, comprised of the following parameters.
	 * @param _origin A struct containing information about where the packet came from.
	 * @param _guid A global unique identifier for tracking the packet.
	 * @param payload Encoded message.
	 */
	function _lzReceive(
		Origin calldata _origin,
		bytes32 _guid,
		bytes calldata payload,
		address, // Executor address as specified by the OApp.
		bytes calldata // Any extra data or options to trigger on receipt.
	) internal override {}

	/**
	 * @dev Returns address of MFD.
	 * @return mfd contract address
	 */
	function _getMfd() internal view returns (IMultiFeeDistribution) {
		IncentivesControllerStorage.Layout storage $ = IncentivesControllerStorage.layout();
		return IMultiFeeDistribution($.mfd);
	}

	/**
	 * @dev Updates bounty manager contract.
	 * @param _bountyManager Bounty Manager contract.
	 */
	function setBountyManager(address _bountyManager) external onlyOwner {
		require(_bountyManager != address(0), ZeroAddress());
		IncentivesControllerStorage.Layout storage $ = IncentivesControllerStorage.layout();
		$.bountyManager = _bountyManager;
		emit BountyManagerUpdated(_bountyManager);
	}

	function setEligibilityDataProvider(IEligibilityDataProvider eligibilityDataProvider) external onlyOwner {
		require(address(eligibilityDataProvider) != address(0), ZeroAddress());
		IncentivesControllerStorage.Layout storage $ = IncentivesControllerStorage.layout();
		$.eligibilityDataProvider = eligibilityDataProvider;
		emit EligibilityDataProviderSet(address(eligibilityDataProvider));
	}

	/********************** Pool Setup + Admin ***********************/

	/**
	 * @dev Add a new lp to the pool. Can only be called by the poolConfigurator.
	 * @param _token for reward pool
	 * @param _allocPoint allocation point of the pool
	 */
	function addPool(address _token, uint256 _allocPoint) external {
		IncentivesControllerStorage.Layout storage $ = IncentivesControllerStorage.layout();
		require(msg.sender == $.poolConfigurator, NotAllowed());
		require($.validToken[_token] == false, PoolAlreadyExists());
		$.validToken[_token] = true;
		$.totalAllocPoint = $.totalAllocPoint.add(_allocPoint);
		$.registeredTokens.push(_token);
		PoolInfo storage pool = $.poolInfo[_token];
		pool.allocPoint = _allocPoint;
		pool.lastRewardTime = block.timestamp;
		pool.onwardIncentives = IOnwardIncentivesController(address(0));
	}

	function poolLength() external view returns (uint256) {
		IncentivesControllerStorage.Layout storage $ = IncentivesControllerStorage.layout();
		return $.registeredTokens.length;
	}

	/**
	 * @notice Claim rewards. They are vested into MFD.
	 * @param _user address for claim
	 */
	function claim(address _user, address[] memory /*_tokens*/) public {
		claimAll(_user);
	}

	/**
	 * @notice Claim rewards. They are vested into MFD.
	 * @param _user address to receive the rewards
	 */
	function claimAll(address _user) public payable whenNotPaused {
		// Prepare the LZ OAPP to send a Claim message to the main chain
		// The message will contain the user's address
		// The message will be sent to the main chain
		IncentivesControllerStorage.Layout storage $ = IncentivesControllerStorage.layout();

		bool isEligible = $.eligibilityDataProvider.isEligibleForRewards(_user);

		ActionType action = ActionType.Claim;

		UserData memory userData = UserData({user: _user, amount: 0});

		Token token = Token.PRFI;

		uint256 totalSupply_ = $.totalSupply[token];

		bytes memory actionData = abi.encode(token, userData, isEligible);

		bytes memory payload = abi.encode(action, actionData, totalSupply_);

		bytes memory options = OptionsBuilder.newOptions().addExecutorLzReceiveOption(MAX_GAS_LIMIT, 0);

		MessagingFee memory fee = _quote($.mainChain, payload, options, false);

		require($.userPrepaidGas[_user] >= fee.nativeFee, InsufficientFee());

		_send($.mainChain, payload, options, fee, payable(address(this)));
	}

	/********************** Eligibility + Disqualification ***********************/
	/**
	 * @notice `after` Hook for deposit and borrow update.
	 * @dev important! eligible status can be updated here
	 * @param _user address
	 * @param _balance balance of token
	 * @param _totalSupply total supply of the token
	 */
	function handleActionAfter(address _user, uint256 _balance, uint256 _totalSupply) external {
		IncentivesControllerStorage.Layout storage $ = IncentivesControllerStorage.layout();
		Token token = $.tokenAddresses[msg.sender];
		require((token != Token(0) && $.validToken[msg.sender]) || msg.sender == address(_getMfd()), NotRTokenOrMfd());

		if (_user == address($.rewardMinter) || _user == address(_getMfd())) {
			return;
		}

		uint256 userBalanceNormalized = _balance;
		uint256 totalSupplyNormalized = _totalSupply;

		uint8 tokenDecimals = IERC20Metadata(msg.sender).decimals();

		if (tokenDecimals < PROTOCOL_VALUE_DECIMALS) {
			// Handle case where token decimals are less than protocol value decimals
			userBalanceNormalized = _balance.mul(10 ** (PROTOCOL_VALUE_DECIMALS - tokenDecimals));
			totalSupplyNormalized = _totalSupply.mul(10 ** (PROTOCOL_VALUE_DECIMALS - tokenDecimals));
		} else if (tokenDecimals > PROTOCOL_VALUE_DECIMALS) {
			// Handle case where token decimals are more than protocol value decimals
			userBalanceNormalized = _balance.div(10 ** (tokenDecimals - PROTOCOL_VALUE_DECIMALS));
			totalSupplyNormalized = _totalSupply.div(10 ** (tokenDecimals - PROTOCOL_VALUE_DECIMALS));
		}

		UserData memory userData = UserData({user: _user, amount: userBalanceNormalized});

		address feePayer = tx.origin;

		_updateChainBalance(token, _user, userBalanceNormalized, totalSupplyNormalized);

		ActionType action = ActionType.UpdateBalance;

		bool lastEligibleStatus = $.eligibilityDataProvider.lastEligibleStatus(_user);
		bool isCurrentlyEligible = $.eligibilityDataProvider.refresh(_user);

		if (!isCurrentlyEligible && lastEligibleStatus != isCurrentlyEligible) {
			_processEligibility(_user, isCurrentlyEligible, true);
		}

		bytes memory actionData = abi.encode(token, userData, isCurrentlyEligible);

		bytes memory payload = abi.encode(action, actionData, totalSupplyNormalized);

		bytes memory options = OptionsBuilder.newOptions().addExecutorLzReceiveOption(MAX_GAS_LIMIT, 0);

		MessagingFee memory fee = _quote($.mainChain, payload, options, false);

		require($.userPrepaidGas[feePayer] >= fee.nativeFee, InsufficientFee());

		$.userPrepaidGas[feePayer] = $.userPrepaidGas[feePayer].sub(fee.nativeFee);

		_send($.mainChain, payload, options, fee, payable(address(this)));
	}

	/**
	 * @notice `before` Hook for deposit and borrow update.
	 * @param _user address
	 */
	function handleActionBefore(address _user) external {}

	/**
	 * @notice Hook for lock update.
	 * @dev Called by the locking contracts before locking or unlocking happens
	 * @param _user address
	 */
	function beforeLockUpdate(address _user) external {}

	/**
	 * @notice Hook for lock update.
	 * @dev Called by the locking contracts after locking or unlocking happens
	 * @param _user address
	 */
	function afterLockUpdate(address _user) external {
		require(msg.sender == address(_getMfd()), NotMFD());

		IncentivesControllerStorage.Layout storage $ = IncentivesControllerStorage.layout();

		bool lastEligibleStatus = $.eligibilityDataProvider.lastEligibleStatus(_user);
		bool isCurrentlyEligible = $.eligibilityDataProvider.refresh(_user);

		if (isCurrentlyEligible) {
			ActionType action = ActionType.UpdateEligibility;

			UserData memory userData = UserData({user: _user, amount: 0});

			bytes memory actionData = abi.encode(Token(0), userData, isCurrentlyEligible);

			uint256 emptyTotalSupply = 0;

			bytes memory payload = abi.encode(action, actionData, emptyTotalSupply);

			bytes memory options = OptionsBuilder.newOptions().addExecutorLzReceiveOption(MAX_GAS_LIMIT, 0);

			MessagingFee memory fee = _quote($.mainChain, payload, options, false);

			require($.userPrepaidGas[_user] >= fee.nativeFee, InsufficientFee());

			$.userPrepaidGas[_user] = $.userPrepaidGas[_user].sub(fee.nativeFee);

			_send($.mainChain, payload, options, fee, payable(address(this)));
		} else {
			if (lastEligibleStatus != isCurrentlyEligible) {
				_processEligibility(_user, isCurrentlyEligible, true);
			}
		}
	}

	/**
	 * @dev Stop emissions if there's any new DQ.
	 * @param _user address of recipient
	 * @param _isEligible user's eligible status
	 * @param _execute true if it's actual execution
	 * @return issueBaseBounty true for base bounty
	 */
	function _processEligibility(
		address _user,
		bool _isEligible,
		bool _execute
	) internal returns (bool issueBaseBounty) {
		IncentivesControllerStorage.Layout storage $ = IncentivesControllerStorage.layout();
		IEligibilityDataProvider eligibleDataProvider = $.eligibilityDataProvider;
		uint256 lastDqTime = eligibleDataProvider.getDqTime(_user);
		bool alreadyDqd = lastDqTime != 0;

		if (!_isEligible && !alreadyDqd) {
			issueBaseBounty = true;
		}
		if (_execute && issueBaseBounty) {
			stopEmissionsFor(_user);
			emit Disqualified(_user);
		}
	}

	function _updateChainBalance(Token _token, address _user, uint256 _balance, uint256 _totalSupply) internal {
		IncentivesControllerStorage.Layout storage $ = IncentivesControllerStorage.layout();
		OAppCoreStorage.Layout storage oApp$ = OAppCoreStorage.layout();
		uint32 eid = oApp$.endpoint.eid();
		$.balancesByChain[eid][_user][_token] = _balance;
		$.totalSupply[_token] = _totalSupply;
	}

	function stopEmissionsFor(address _user) internal {
		IncentivesControllerStorage.Layout storage $ = IncentivesControllerStorage.layout();
		$.eligibilityDataProvider.setDqTime(_user, block.timestamp);
	}

	/**
	 * @notice Prepay gas for actions execution on sidechains
	 */
	function prepayActionsExecution() external payable {
		IncentivesControllerStorage.Layout storage $ = IncentivesControllerStorage.layout();
		address _user = _msgSender();
		uint256 _amount = msg.value;
		$.userPrepaidGas[_user] = $.userPrepaidGas[_user].add(_amount);
	}

	/**
	 * @notice Withdraw prepaid gas
	 * @dev User can withdraw prepaid gas if they have any
	 */
	function withdrawPrepaidGas() external {
		IncentivesControllerStorage.Layout storage $ = IncentivesControllerStorage.layout();
		address _user = _msgSender();
		uint256 _amount = $.userPrepaidGas[_user];
		require(_amount > 0, InsufficientFee());
		delete $.userPrepaidGas[_user];
		payable(_user).transfer(_amount);
	}

	/**
	 * @dev Send PRFI rewards to user.
	 * @param _user address of recipient
	 * @param _amount of PRFI
	 */
	function _sendPrime(address _user, uint256 _amount) internal {
		if (_amount == 0) {
			return;
		}

		IncentivesControllerStorage.Layout storage $ = IncentivesControllerStorage.layout();
		uint256 chefReserve = IERC20($.prfiToken).balanceOf(address(this));
		require(_amount <= chefReserve, OutOfRewards());
		IERC20($.prfiToken).safeTransfer(_user, _amount);
	}

	/**
	 * @notice Pause the claim operations.
	 */
	function pause() external onlyOwner {
		_pause();
	}

	/**
	 * @notice Unpause the claim operations.
	 */
	function unpause() external onlyOwner {
		_unpause();
	}

	/**
	 * @dev Update the given pool's allocation point. Can only be called by the owner.
	 * @param _tokens for reward pools
	 * @param _allocPoints allocation points of the pools
	 */
	function batchUpdateAllocPoint(address[] calldata _tokens, uint256[] calldata _allocPoints) external onlyOwner {
		require(_tokens.length == _allocPoints.length, InvalidLength());
		IncentivesControllerStorage.Layout storage $ = IncentivesControllerStorage.layout();
		uint256 _totalAllocPoint = $.totalAllocPoint;
		uint256 length = _tokens.length;

		mapping(address => PoolInfo) storage _poolInfo = $.poolInfo;
		/// @dev Update alloc points for each pool
		for (uint256 i; i < length; ) {
			PoolInfo storage pool = _poolInfo[_tokens[i]];
			require(pool.lastRewardTime != 0, UnknownPool());
			_totalAllocPoint = _totalAllocPoint.sub(pool.allocPoint).add(_allocPoints[i]);
			pool.allocPoint = _allocPoints[i];
			unchecked {
				i++;
			}
		}
		$.totalAllocPoint = _totalAllocPoint;
		emit BatchAllocPointsUpdated(_tokens, _allocPoints);
	}

	/**
	 * @notice Sets the peer address (OApp instance) for a corresponding endpoint.
	 * @param _eid The endpoint ID.
	 * @param _peer The address of the peer to be associated with the corresponding endpoint.
	 *
	 * @dev Only the owner/admin of the OApp can call this function.
	 * @dev Indicates that the peer is trusted to send LayerZero messages to this OApp.
	 * @dev Set this to bytes32(0) to remove the peer address.
	 * @dev Peer is a bytes32 to accommodate non-evm chains.
	 */
	function setPeer(uint32 _eid, bytes32 _peer) public override onlyOwner {
		IncentivesControllerStorage.Layout storage $ = IncentivesControllerStorage.layout();
		require(_eid == $.mainChain, InvalidChain());

		_setPeer(_eid, _peer);
	}
}
